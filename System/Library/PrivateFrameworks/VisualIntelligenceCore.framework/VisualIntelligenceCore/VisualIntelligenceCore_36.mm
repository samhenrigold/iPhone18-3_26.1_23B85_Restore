unint64_t sub_1D8AB98C0()
{
  result = qword_1ECA68DD0;
  if (!qword_1ECA68DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DD0);
  }

  return result;
}

unint64_t sub_1D8AB9918()
{
  result = qword_1ECA68DD8;
  if (!qword_1ECA68DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DD8);
  }

  return result;
}

unint64_t sub_1D8AB9970()
{
  result = qword_1ECA68DE0;
  if (!qword_1ECA68DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DE0);
  }

  return result;
}

unint64_t sub_1D8AB99C8()
{
  result = qword_1ECA68DE8;
  if (!qword_1ECA68DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DE8);
  }

  return result;
}

unint64_t sub_1D8AB9A20()
{
  result = qword_1ECA68DF0;
  if (!qword_1ECA68DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DF0);
  }

  return result;
}

unint64_t sub_1D8AB9A78()
{
  result = qword_1ECA68DF8;
  if (!qword_1ECA68DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68DF8);
  }

  return result;
}

unint64_t sub_1D8AB9AD0()
{
  result = qword_1ECA68E00;
  if (!qword_1ECA68E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E00);
  }

  return result;
}

unint64_t sub_1D8AB9B28()
{
  result = qword_1ECA68E08;
  if (!qword_1ECA68E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E08);
  }

  return result;
}

unint64_t sub_1D8AB9B80()
{
  result = qword_1ECA68E10;
  if (!qword_1ECA68E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E10);
  }

  return result;
}

unint64_t sub_1D8AB9BD8()
{
  result = qword_1ECA68E18;
  if (!qword_1ECA68E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E18);
  }

  return result;
}

unint64_t sub_1D8AB9C30()
{
  result = qword_1ECA68E20;
  if (!qword_1ECA68E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E20);
  }

  return result;
}

unint64_t sub_1D8AB9C88()
{
  result = qword_1ECA68E28;
  if (!qword_1ECA68E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E28);
  }

  return result;
}

unint64_t sub_1D8AB9CE0()
{
  result = qword_1ECA68E30;
  if (!qword_1ECA68E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E30);
  }

  return result;
}

unint64_t sub_1D8AB9D38()
{
  result = qword_1ECA68E38;
  if (!qword_1ECA68E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E38);
  }

  return result;
}

unint64_t sub_1D8AB9D90()
{
  result = qword_1ECA68E40;
  if (!qword_1ECA68E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E40);
  }

  return result;
}

unint64_t sub_1D8AB9DE8()
{
  result = qword_1ECA68E48;
  if (!qword_1ECA68E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E48);
  }

  return result;
}

unint64_t sub_1D8AB9E40()
{
  result = qword_1ECA68E50;
  if (!qword_1ECA68E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E50);
  }

  return result;
}

unint64_t sub_1D8AB9E98()
{
  result = qword_1ECA68E58;
  if (!qword_1ECA68E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E58);
  }

  return result;
}

uint64_t sub_1D8AB9EEC(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest(0) - 8;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1D8ABD1B8(v11, v5, type metadata accessor for DetectionRequest);
      sub_1D87FB834(v9, v5);
      result = sub_1D8ABD158(v9, type metadata accessor for DetectionRequest);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_1D8ABA020(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v57 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v57 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v57 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - v19;
  v21 = *(a1 + 16);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v64 = v21;
  if (v21)
  {
    v21 = 0;
    v23 = *(v4 + 72);
    v24 = a1;
    do
    {
      sub_1D8ABD1B8(v24 + v22, v20, type metadata accessor for CVBundle);
      v25 = CVBundle.classifications.getter()[2];

      if (!v25 && (sub_1D8919304() & 1) == 0)
      {
        sub_1D8ABD158(v20, type metadata accessor for CVBundle);
        goto LABEL_8;
      }

      sub_1D8ABD158(v20, type metadata accessor for CVBundle);
      ++v21;
      v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v24 += v23;
    }

    while (v64 != v21);
    v21 = v64;
  }

LABEL_8:
  v26 = a1 + v22;
  swift_bridgeObjectRetain_n();
  v62 = a1;
  v63 = a1 + v22;
  v65 = v4;
  if (v21)
  {

    v27 = *(v4 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v21;
    do
    {
      sub_1D8ABD1B8(v26, v18, type metadata accessor for CVBundle);
      v30 = CVBundle.classifications.getter()[2];

      if (v30)
      {
        sub_1D8ABD1B8(v18, v15, type metadata accessor for CVBundle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D87C7E90(0, v28[2] + 1, 1, v28);
        }

        v32 = v28[2];
        v31 = v28[3];
        if (v32 >= v31 >> 1)
        {
          v28 = sub_1D87C7E90((v31 > 1), v32 + 1, 1, v28);
        }

        sub_1D8ABD158(v18, type metadata accessor for CVBundle);
        v28[2] = v32 + 1;
        sub_1D8ABD220(v15, v28 + v22 + v32 * v27, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8919304();
        sub_1D8ABD158(v18, type metadata accessor for CVBundle);
      }

      v26 += v27;
      --v29;
    }

    while (v29);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v33 = v64;
  v35 = v60;
  v34 = v61;
  v36 = v58;
  v37 = v59;
  if (v21 == v64 || (v38 = v28[2], v39 = v38 - v58, v38 >= v58))
  {
    swift_bridgeObjectRelease_n();
    v43 = sub_1D87E2580(v36, v28);
    v64 = v45;
    v47 = v46 >> 1;
    v48 = (v46 >> 1) - v44;
    if (!__OFSUB__(v46 >> 1, v44))
    {
      v49 = v43;
      if (!v48)
      {

        swift_unknownObjectRelease();
        return;
      }

      v50 = v44;
      v66 = MEMORY[0x1E69E7CC0];

      sub_1D87F4074(0, v48 & ~(v48 >> 63), 0);
      if (v48 < 0)
      {
        goto LABEL_47;
      }

      v63 = v49;
      v51 = v66;
      if (v50 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v50;
      }

      v53 = v57;
      while (v52 != v50)
      {
        v54 = *(v65 + 72);
        sub_1D8ABD1B8(v64 + v54 * v50, v53, type metadata accessor for CVBundle);
        v66 = v51;
        v56 = *(v51 + 16);
        v55 = *(v51 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1D87F4074((v55 > 1), v56 + 1, 1);
          v51 = v66;
        }

        *(v51 + 16) = v56 + 1;
        sub_1D8ABD220(v53, v51 + v22 + v56 * v54, type metadata accessor for CVBundle);
        if (v47 == ++v50)
        {

          swift_unknownObjectRelease();
          return;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v40 = v58 - v38;
  v66 = MEMORY[0x1E69E7CD0];

  if (v40 < 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

  if (v40)
  {
    do
    {
      if (v33 == v21)
      {
        break;
      }

      if (v21 >= v33)
      {
        goto LABEL_45;
      }

      sub_1D8ABD1B8(v63 + *(v65 + 72) * v21, v37, type metadata accessor for CVBundle);
      v42 = CVBundle.classifications.getter()[2];

      if (v42)
      {
        sub_1D8ABD1B8(v37, v34, type metadata accessor for CVBundle);
        sub_1D87F99C4(v35, v34);
        sub_1D8ABD158(v35, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8919304();
      }

      sub_1D8ABD158(v37, type metadata accessor for CVBundle);
      ++v21;
    }

    while (!__CFADD__(v39++, 1));
  }

  swift_bridgeObjectRelease_n();
}

void sub_1D8ABA690(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v75 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v75 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v79 = &v75 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v83 = (&v75 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v75 - v20;
  v22 = *(a1 + 16);
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v24 = v22;
  v78 = v7;
  v81 = v12;
  if (v22)
  {
    v22 = 0;
    v25 = *(v4 + 72);
    v26 = a1;
    do
    {
      v27 = v23;
      sub_1D8ABD1B8(v26 + v23, v21, type metadata accessor for CVBundle);
      v28 = CVBundle.classifications.getter()[2];

      if (v28)
      {
        sub_1D8AB40B8();
        if (!v29)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D8919304();
      }

      v30 = CVBundle.classifications.getter()[2];

      if (!v30 && (sub_1D8919304() & 1) == 0)
      {
LABEL_10:
        sub_1D8ABD158(v21, type metadata accessor for CVBundle);
        v12 = v81;
        v23 = v27;
        goto LABEL_12;
      }

      sub_1D8ABD158(v21, type metadata accessor for CVBundle);
      ++v22;
      v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v26 += v25;
    }

    while (v24 != v22);
    v22 = v24;
    v12 = v81;
  }

LABEL_12:
  v84 = v23;
  v31 = a1 + v23;
  v86 = MEMORY[0x1E69E7CD0];
  v80 = a1;
  if (!v22)
  {
    swift_bridgeObjectRetain_n();
    v83 = MEMORY[0x1E69E7CC0];
    if (!v24)
    {
      goto LABEL_37;
    }

LABEL_33:
    v45 = v83[2];
    v46 = v45 - v82;
    if (v45 >= v82)
    {
      goto LABEL_37;
    }

    v47 = v24;
    v48 = v82 - v45;
    v85[2] = MEMORY[0x1E69E7CD0];

    if (v48 < 0)
    {
      goto LABEL_71;
    }

    if (!v48)
    {
LABEL_36:
      swift_bridgeObjectRelease_n();

      return;
    }

    while (1)
    {
      if (v47 == v22)
      {
        goto LABEL_36;
      }

      if (v22 >= v47)
      {
        goto LABEL_68;
      }

      sub_1D8ABD1B8(v31 + *(v4 + 72) * v22, v12, type metadata accessor for CVBundle);
      v65 = CVBundle.classifications.getter()[2];

      if (v65)
      {
        sub_1D8AB40B8();
        if (!v66)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_1D8919304();
      }

      v67 = CVBundle.classifications.getter()[2];

      if (!v67)
      {
        sub_1D8919304();
LABEL_50:
        sub_1D8ABD158(v12, type metadata accessor for CVBundle);
        goto LABEL_51;
      }

      v68 = sub_1D8AB40B8();
      if (!v69)
      {
        v72 = v12;
LABEL_64:
        sub_1D8ABD158(v72, type metadata accessor for CVBundle);
        v47 = v24;
        goto LABEL_51;
      }

      v70 = v68;
      v71 = v69;
      if ((sub_1D89A4644(v68, v69, v86) & 1) == 0)
      {
        sub_1D87F88E8(v85, v70, v71);

        v73 = v78;
        sub_1D8ABD1B8(v12, v78, type metadata accessor for CVBundle);
        v74 = v77;
        sub_1D87F99C4(v77, v73);
        sub_1D8ABD158(v74, type metadata accessor for CVBundle);
        v72 = v12;
        goto LABEL_64;
      }

      sub_1D8ABD158(v12, type metadata accessor for CVBundle);

      v47 = v24;
LABEL_51:
      ++v22;
      if (__CFADD__(v46++, 1))
      {
        goto LABEL_36;
      }
    }
  }

  v76 = v4;
  v32 = *(v4 + 72);
  swift_bridgeObjectRetain_n();
  v33 = MEMORY[0x1E69E7CC0];
  v75 = v31;
  v34 = v31;
  v35 = v22;
  do
  {
    sub_1D8ABD1B8(v34, v19, type metadata accessor for CVBundle);
    v36 = CVBundle.classifications.getter()[2];

    if (v36)
    {
      sub_1D8AB40B8();
      if (!v37)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1D8919304();
    }

    v38 = CVBundle.classifications.getter()[2];

    if (!v38)
    {
      sub_1D8919304();
LABEL_15:
      sub_1D8ABD158(v19, type metadata accessor for CVBundle);
      goto LABEL_16;
    }

    v39 = sub_1D8AB40B8();
    if (!v40)
    {
      goto LABEL_15;
    }

    v41 = v39;
    v42 = v40;
    if (sub_1D89A4644(v39, v40, v86))
    {
      sub_1D8ABD158(v19, type metadata accessor for CVBundle);
    }

    else
    {
      sub_1D87F88E8(v85, v41, v42);

      sub_1D8ABD1B8(v19, v83, type metadata accessor for CVBundle);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D87C7E90(0, v33[2] + 1, 1, v33);
      }

      v44 = v33[2];
      v43 = v33[3];
      if (v44 >= v43 >> 1)
      {
        v33 = sub_1D87C7E90((v43 > 1), v44 + 1, 1, v33);
      }

      sub_1D8ABD158(v19, type metadata accessor for CVBundle);
      v33[2] = v44 + 1;
      sub_1D8ABD220(v83, v33 + v84 + v44 * v32, type metadata accessor for CVBundle);
    }

LABEL_16:
    v34 += v32;
    --v35;
  }

  while (v35);
  v83 = v33;

  v31 = v75;
  v4 = v76;
  v12 = v81;
  if (v22 != v24)
  {
    goto LABEL_33;
  }

LABEL_37:
  swift_bridgeObjectRelease_n();
  v49 = sub_1D87E2580(v82, v83);
  v53 = v52 >> 1;
  v54 = (v52 >> 1) - v51;
  if (__OFSUB__(v52 >> 1, v51))
  {
    goto LABEL_69;
  }

  v55 = v49;
  if (v54)
  {
    v56 = v50;
    v57 = v51;
    v85[0] = MEMORY[0x1E69E7CC0];

    sub_1D87F4074(0, v54 & ~(v54 >> 63), 0);
    if ((v54 & 0x8000000000000000) == 0)
    {
      v82 = v55;
      v58 = v85[0];
      if (v57 <= v53)
      {
        v59 = v53;
      }

      else
      {
        v59 = v57;
      }

      v60 = v79;
      while (v59 != v57)
      {
        v61 = *(v4 + 72);
        sub_1D8ABD1B8(v56 + v61 * v57, v60, type metadata accessor for CVBundle);
        v85[0] = v58;
        v63 = *(v58 + 16);
        v62 = *(v58 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_1D87F4074((v62 > 1), v63 + 1, 1);
          v60 = v79;
          v58 = v85[0];
        }

        *(v58 + 16) = v63 + 1;
        sub_1D8ABD220(v60, v58 + v84 + v63 * v61, type metadata accessor for CVBundle);
        if (v53 == ++v57)
        {

          swift_unknownObjectRelease();
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {

    swift_unknownObjectRelease();
LABEL_66:
  }
}

uint64_t sub_1D8ABAEBC(uint64_t a1, __int128 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v37 = a5;
  v36 = a4;
  v35 = type metadata accessor for CVBundle(0);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  v15 = a2[3];
  v44 = a2[2];
  v45 = v15;
  v46 = a2[4];
  v16 = a2[1];
  v42 = *a2;
  v43 = v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *a3;
    v39 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v19 = a1 + v39;
    v20 = *(v12 + 72);
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D8ABD1B8(v19, v14, type metadata accessor for CVBundle);
      if (!v18 || (v18 == 1 || (sub_1D8919304() & 1) != 0) && (v22 = CVBundle.classifications.getter()[2], , v22))
      {
        CVBundle.latestDetection.getter(&v41);
        if (v41 >> 60 != 11)
        {
          goto LABEL_12;
        }

        v23 = type metadata accessor for SyntheticDetectionResult(0);
        if (*(swift_projectBox() + *(v23 + 24)))
        {
          v24 = sub_1D8B16BA0();

          if ((v24 & 1) == 0)
          {
LABEL_12:

            sub_1D8ABD220(v14, v11, type metadata accessor for CVBundle);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v40[0] = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D87F4074(0, *(v21 + 16) + 1, 1);
              v21 = *&v40[0];
            }

            v27 = *(v21 + 16);
            v26 = *(v21 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_1D87F4074((v26 > 1), v27 + 1, 1);
              v21 = *&v40[0];
            }

            *(v21 + 16) = v27 + 1;
            sub_1D8ABD220(v11, v21 + v39 + v27 * v20, type metadata accessor for CVBundle);
            goto LABEL_4;
          }
        }

        else
        {
        }

        sub_1D8ABD158(v14, type metadata accessor for CVBundle);
      }

      else
      {
        sub_1D8ABD158(v14, type metadata accessor for CVBundle);
      }

LABEL_4:
      v19 += v20;
      if (!--v17)
      {
        goto LABEL_20;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v41 = v21;
  v40[2] = v44;
  v40[3] = v45;
  v40[4] = v46;
  v40[1] = v43;
  v40[0] = v42;
  v28 = v38;
  v29 = *(v38 + 24);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758, &qword_1D8B2ABD0);
  v31 = sub_1D881CF20(&qword_1ECA65B48, &qword_1ECA65758, &qword_1D8B2ABD0, MEMORY[0x1E69E6340]);
  v32 = v29(&v41, v40, v35, v30, &protocol witness table for CVBundle, v31, v37, v28);

  return v32;
}

uint64_t sub_1D8ABB2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A28, &unk_1D8B2D320);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30, &qword_1D8B26080);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABB3D0, 0, 0);
}

uint64_t sub_1D8ABB3D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABB4F0, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABB4F0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD46C(v4);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A28, &unk_1D8B2D320);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABB654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A58, &qword_1D8B2D330);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60, &qword_1D8B260B0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABB75C, 0, 0);
}

uint64_t sub_1D8ABB75C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABB87C, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABB87C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD474(v4);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A58, &qword_1D8B2D330);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABB9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A40, &unk_1D8B26090);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48, &qword_1D8B2D630);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABBAE8, 0, 0);
}

uint64_t sub_1D8ABBAE8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABBC08, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABBC08()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD478(v4);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A40, &unk_1D8B26090);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABBD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A10, &unk_1D8B26060);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18, &qword_1D8B2D610);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABBE74, 0, 0);
}

uint64_t sub_1D8ABBE74()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABBF94, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABBF94()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD47C(v4);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA64A10, &unk_1D8B26060);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABC0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F10, &unk_1D8B2D300);
  v3[14] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18, &qword_1D8B2D570);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8ABC200, 0, 0);
}

uint64_t sub_1D8ABC200()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1D8B15E00();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D8ABC320, v3, v5);
  }

  else
  {

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1D8ABC320()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_1D8AFD480(v4);
  swift_endAccess();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[14];

    sub_1D87A14E4(v5, &qword_1ECA65F10, &unk_1D8B2D300);
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    (*(v7 + 32))(v6, v0[14], v8);
    sub_1D8B15EF0();

    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[18] == 0;

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D8ABC484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x80000001D8B424F0 == a2;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B42510 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B48920 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B48940 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D8B48960 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8ABC638(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E90, &qword_1D8B3CF98);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68E98, &qword_1D8B3CFA0);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EA0, &qword_1D8B3CFA8);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ABCDC4();
  v11 = v26;
  sub_1D8B16DB0();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1D8B16A20();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1D881F7CC();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1D8B16770();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v19 = &type metadata for BundleSelector.Configuration.FullScreenBundleRankingPolicy;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1D8ABCE18();
    sub_1D8B16950();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1D8ABCE6C();
    sub_1D8B16950();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

uint64_t sub_1D8ABCAF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x80000001D8B48990 == a2;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B489B0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B489D0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B44410 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8B44430 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D8B489F0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000030 && 0x80000001D8B48A20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B48A60 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D8B48A80 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1D8ABCDC4()
{
  result = qword_1ECA68E78;
  if (!qword_1ECA68E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E78);
  }

  return result;
}

unint64_t sub_1D8ABCE18()
{
  result = qword_1ECA68E80;
  if (!qword_1ECA68E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E80);
  }

  return result;
}

unint64_t sub_1D8ABCE6C()
{
  result = qword_1ECA68E88;
  if (!qword_1ECA68E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68E88);
  }

  return result;
}

uint64_t sub_1D8ABCEC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1634038369 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D8B48AA0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D8B48AC0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B48AF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8ABD030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C41776F6C6C61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B48B10 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616878456C6C7566 && a2 == 0xEE006E6F69747375)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8ABD158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8ABD1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8ABD220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8ABD308@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1D8AA5D60(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D8ABD378(uint64_t a1)
{
  v3 = *(sub_1D8B13240() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_1D8AA5AFC(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), &unk_1F5437888, &unk_1D8B3CFD0);
}

uint64_t sub_1D8ABD428(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB7DC0(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D8ABD568(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D8864FBC;

  return sub_1D8AB7BFC(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D8ABD6A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB79EC(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D8ABD7E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB7B4C(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_1D8B13240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D8ABDA08(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D8B13240() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8AB7A9C(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_1D8ABDB7C()
{
  result = qword_1ECA68EC0;
  if (!qword_1ECA68EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EC0);
  }

  return result;
}

unint64_t sub_1D8ABDBD4()
{
  result = qword_1ECA68EC8;
  if (!qword_1ECA68EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EC8);
  }

  return result;
}

unint64_t sub_1D8ABDC2C()
{
  result = qword_1ECA68ED0;
  if (!qword_1ECA68ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68ED0);
  }

  return result;
}

unint64_t sub_1D8ABDC84()
{
  result = qword_1ECA68ED8;
  if (!qword_1ECA68ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68ED8);
  }

  return result;
}

unint64_t sub_1D8ABDCDC()
{
  result = qword_1ECA68EE0;
  if (!qword_1ECA68EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EE0);
  }

  return result;
}

unint64_t sub_1D8ABDD34()
{
  result = qword_1ECA68EE8;
  if (!qword_1ECA68EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EE8);
  }

  return result;
}

unint64_t sub_1D8ABDD8C()
{
  result = qword_1ECA68EF0;
  if (!qword_1ECA68EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68EF0);
  }

  return result;
}

uint64_t sub_1D8ABDE3C(uint64_t a1)
{
  v2 = sub_1D8ABE51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABDE78(uint64_t a1)
{
  v2 = sub_1D8ABE51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABDEB4(uint64_t a1)
{
  v2 = sub_1D8ABE4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABDEF0(uint64_t a1)
{
  v2 = sub_1D8ABE4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABDF2C(uint64_t a1)
{
  v2 = sub_1D8ABE474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABDF68(uint64_t a1)
{
  v2 = sub_1D8ABE474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D8ABDFA4()
{
  v1 = 0x6F6E4B776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796E41776F6C6C61;
  }
}

uint64_t sub_1D8ABE008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8ABF08C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8ABE030(uint64_t a1)
{
  v2 = sub_1D8ABE420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABE06C(uint64_t a1)
{
  v2 = sub_1D8ABE420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PublicationPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EF8, &qword_1D8B3D2D0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68F00, &qword_1D8B3D2D8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68F08, &qword_1D8B3D2E0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68F10, &qword_1D8B3D2E8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ABE420();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8ABE4C8();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8ABE474();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8ABE51C();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1D8ABE420()
{
  result = qword_1ECA68F18;
  if (!qword_1ECA68F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F18);
  }

  return result;
}

unint64_t sub_1D8ABE474()
{
  result = qword_1ECA68F20;
  if (!qword_1ECA68F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F20);
  }

  return result;
}

unint64_t sub_1D8ABE4C8()
{
  result = qword_1ECA68F28;
  if (!qword_1ECA68F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F28);
  }

  return result;
}

unint64_t sub_1D8ABE51C()
{
  result = qword_1ECA68F30;
  if (!qword_1ECA68F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F30);
  }

  return result;
}

uint64_t PublicationPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t PublicationPolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68F38, &qword_1D8B3D2F0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68F40, &qword_1D8B3D2F8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68F48, &qword_1D8B3D300);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68F50, &unk_1D8B3D308);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8ABE420();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v24 = &type metadata for PublicationPolicy;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8ABE4C8();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8ABE474();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8ABE51C();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t PublicationPolicy.description.getter()
{
  v1 = 0x6E776F6E4BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7958081;
  }
}

unint64_t sub_1D8ABEBEC()
{
  result = qword_1ECA68F58;
  if (!qword_1ECA68F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F58);
  }

  return result;
}

unint64_t sub_1D8ABEC44()
{
  result = qword_1ECA68F60;
  if (!qword_1ECA68F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68F68, &qword_1D8B3D3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F60);
  }

  return result;
}

unint64_t sub_1D8ABECA8()
{
  v1 = 0x6E776F6E4BLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7958081;
  }
}

unint64_t sub_1D8ABED78()
{
  result = qword_1ECA68F70;
  if (!qword_1ECA68F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F70);
  }

  return result;
}

unint64_t sub_1D8ABEDD0()
{
  result = qword_1ECA68F78;
  if (!qword_1ECA68F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F78);
  }

  return result;
}

unint64_t sub_1D8ABEE28()
{
  result = qword_1ECA68F80;
  if (!qword_1ECA68F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F80);
  }

  return result;
}

unint64_t sub_1D8ABEE80()
{
  result = qword_1ECA68F88;
  if (!qword_1ECA68F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F88);
  }

  return result;
}

unint64_t sub_1D8ABEED8()
{
  result = qword_1ECA68F90;
  if (!qword_1ECA68F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F90);
  }

  return result;
}

unint64_t sub_1D8ABEF30()
{
  result = qword_1ECA68F98;
  if (!qword_1ECA68F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68F98);
  }

  return result;
}

unint64_t sub_1D8ABEF88()
{
  result = qword_1ECA68FA0;
  if (!qword_1ECA68FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68FA0);
  }

  return result;
}

unint64_t sub_1D8ABEFE0()
{
  result = qword_1ECA68FA8;
  if (!qword_1ECA68FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68FA8);
  }

  return result;
}

unint64_t sub_1D8ABF038()
{
  result = qword_1ECA68FB0;
  if (!qword_1ECA68FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68FB0);
  }

  return result;
}

uint64_t sub_1D8ABF08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796E41776F6C6C61 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6E4B776F6C6C61 && a2 == 0xEA00000000006E77 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B48C10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

void *sub_1D8ABF1B4(uint64_t a1)
{
  v2 = sub_1D893F714(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 32);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    if (v6 < 0)
    {
      goto LABEL_4;
    }

    if (v2[2])
    {
      v7 = sub_1D87EFF94(v5);
      if (v8)
      {
        v9 = *(v2[7] + 8 * v7);
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_33;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = sub_1D87EFF94(v5);
        v14 = v2[2];
        v15 = (v13 & 1) == 0;
        v16 = __OFADD__(v14, v15);
        v17 = v14 + v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v18 = v13;
        if (v2[3] < v17)
        {
          sub_1D897695C(v17, isUniquelyReferenced_nonNull_native);
          v12 = sub_1D87EFF94(v5);
          if ((v18 & 1) != (v19 & 1))
          {
            goto LABEL_36;
          }

          goto LABEL_23;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_23:
          if ((v18 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v31 = v12;
          sub_1D896C254();
          v12 = v31;
          if ((v18 & 1) == 0)
          {
LABEL_28:
            v2[(v12 >> 6) + 8] |= 1 << v12;
            *(v2[6] + 8 * v12) = v5;
            *(v2[7] + 8 * v12) = v10;
            v32 = v2[2];
            v16 = __OFADD__(v32, 1);
            v29 = v32 + 1;
            if (v16)
            {
              goto LABEL_35;
            }

LABEL_29:
            v2[2] = v29;
            goto LABEL_4;
          }
        }

        *(v2[7] + 8 * v12) = v10;
        goto LABEL_4;
      }
    }

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1D87EFF94(v5);
    v23 = v2[2];
    v24 = (v22 & 1) == 0;
    v16 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (v16)
    {
      break;
    }

    v26 = v22;
    if (v2[3] >= v25)
    {
      if ((v20 & 1) == 0)
      {
        v30 = v21;
        sub_1D896C254();
        v21 = v30;
        if ((v26 & 1) == 0)
        {
LABEL_19:
          v2[(v21 >> 6) + 8] |= 1 << v21;
          *(v2[6] + 8 * v21) = v5;
          *(v2[7] + 8 * v21) = 1;
          v28 = v2[2];
          v16 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v16)
          {
            goto LABEL_32;
          }

          goto LABEL_29;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1D897695C(v25, v20);
      v21 = sub_1D87EFF94(v5);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_36;
      }
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_3:
    *(v2[7] + 8 * v21) = 1;
LABEL_4:
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8ABF420(float a1)
{
  if (*(v1 + 48) != 1)
  {
    goto LABEL_9;
  }

  v2 = *(v1 + 56);
  v3 = ceilf(v2 * a1);
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
  }

  else if (v3 > -9.2234e18)
  {
    if (v3 < 9.2234e18)
    {
      return v3;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

float sub_1D8ABF4E8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  if ((v1 * v2) == 0.0)
  {
    if (v3 == 0.0)
    {
      v3 = fabsf(v0[11]);
      v1 = v0[9];
    }

    v4 = fabsf(v0[4]);
    v2 = v1;
  }

  else
  {
    v4 = v3 - v0[4];
    v3 = v3 - fabsf(v0[11]);
  }

  return ((v2 * v4) / v3) + (((v3 - v4) * (1.0 - v1)) / v3);
}

uint64_t SPRTTrigger.debugDescription.getter()
{
  sub_1D8B16720();
  v1 = 0xE800000000000000;
  MEMORY[0x1DA71EFA0](0x203A65746174533CLL, 0xE800000000000000);
  v2 = 0xE800000000000000;
  v3 = 0x657669746167656ELL;
  if (*(v0 + 64) != 1)
  {
    v3 = 0x657275736E75;
    v2 = 0xE600000000000000;
  }

  if (*(v0 + 64))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6576697469736F70;
  }

  if (*(v0 + 64))
  {
    v1 = v2;
  }

  MEMORY[0x1DA71EFA0](v4, v1);

  MEMORY[0x1DA71EFA0](0x203A66666944202CLL, 0xE800000000000000);
  sub_1D8B16030();
  MEMORY[0x1DA71EFA0](0x687365726854202CLL, 0xEC0000005B203A73);
  sub_1D8B16030();
  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  sub_1D8B16030();
  MEMORY[0x1DA71EFA0](0xD000000000000011, 0x80000001D8B48C30);
  sub_1D8ABF4E8();
  sub_1D8B16030();
  MEMORY[0x1DA71EFA0](0xD000000000000010, 0x80000001D8B48C50);
  sub_1D8B16020();
  return 0;
}

uint64_t SPRTTrigger.State.description.getter()
{
  v1 = 0x657669746167656ELL;
  if (*v0 != 1)
  {
    v1 = 0x657275736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t sub_1D8ABF7E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8AC094C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8ABF808(uint64_t a1)
{
  v2 = sub_1D8AC0368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABF844(uint64_t a1)
{
  v2 = sub_1D8AC0368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABF880(uint64_t a1)
{
  v2 = sub_1D8AC0410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABF8BC(uint64_t a1)
{
  v2 = sub_1D8AC0410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABF8F8(uint64_t a1)
{
  v2 = sub_1D8AC0464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABF934(uint64_t a1)
{
  v2 = sub_1D8AC0464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8ABF970(uint64_t a1)
{
  v2 = sub_1D8AC03BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8ABF9AC(uint64_t a1)
{
  v2 = sub_1D8AC03BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SPRTTrigger.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68FB8, &qword_1D8B3D860);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68FC0, &qword_1D8B3D868);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68FC8, &qword_1D8B3D870);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68FD0, &qword_1D8B3D878);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AC0368();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8AC0410();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8AC03BC();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8AC0464();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t SPRTTrigger.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t SPRTTrigger.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68FF8, &qword_1D8B3D880);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69000, &qword_1D8B3D888);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69008, &qword_1D8B3D890);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69010, &unk_1D8B3D898);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8AC0368();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v24 = &type metadata for SPRTTrigger.State;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8AC0410();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8AC03BC();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8AC0464();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D8AC0368()
{
  result = qword_1ECA68FD8;
  if (!qword_1ECA68FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68FD8);
  }

  return result;
}

unint64_t sub_1D8AC03BC()
{
  result = qword_1ECA68FE0;
  if (!qword_1ECA68FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68FE0);
  }

  return result;
}

unint64_t sub_1D8AC0410()
{
  result = qword_1ECA68FE8;
  if (!qword_1ECA68FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68FE8);
  }

  return result;
}

unint64_t sub_1D8AC0464()
{
  result = qword_1ECA68FF0;
  if (!qword_1ECA68FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68FF0);
  }

  return result;
}

unint64_t sub_1D8AC04BC()
{
  result = qword_1ECA69018;
  if (!qword_1ECA69018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69018);
  }

  return result;
}

uint64_t sub_1D8AC055C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D8AC05A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D8AC0638()
{
  result = qword_1ECA69020;
  if (!qword_1ECA69020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69020);
  }

  return result;
}

unint64_t sub_1D8AC0690()
{
  result = qword_1ECA69028;
  if (!qword_1ECA69028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69028);
  }

  return result;
}

unint64_t sub_1D8AC06E8()
{
  result = qword_1ECA69030;
  if (!qword_1ECA69030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69030);
  }

  return result;
}

unint64_t sub_1D8AC0740()
{
  result = qword_1ECA69038;
  if (!qword_1ECA69038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69038);
  }

  return result;
}

unint64_t sub_1D8AC0798()
{
  result = qword_1ECA69040;
  if (!qword_1ECA69040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69040);
  }

  return result;
}

unint64_t sub_1D8AC07F0()
{
  result = qword_1ECA69048;
  if (!qword_1ECA69048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69048);
  }

  return result;
}

unint64_t sub_1D8AC0848()
{
  result = qword_1ECA69050;
  if (!qword_1ECA69050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69050);
  }

  return result;
}

unint64_t sub_1D8AC08A0()
{
  result = qword_1ECA69058;
  if (!qword_1ECA69058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69058);
  }

  return result;
}

unint64_t sub_1D8AC08F8()
{
  result = qword_1ECA69060;
  if (!qword_1ECA69060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69060);
  }

  return result;
}

uint64_t sub_1D8AC094C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657275736E75 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

unint64_t sub_1D8AC0A74()
{
  result = qword_1ECA69068;
  if (!qword_1ECA69068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69068);
  }

  return result;
}

double sub_1D8AC0ACC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D8B13240();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  v15 = *(v2 + v6[5]);
  v14 = v4;

  CVDetection.modifyWithRotation(_:)(&v14, &v16);

  v7 = v16;
  v14 = *(v2 + v6[6]);
  v13 = v4;

  CVDetection.modifyWithRotation(_:)(&v13, &v15);

  result = *(v2 + v6[8]);
  v9 = *(v2 + v6[9]);
  v10 = v15;
  v11 = *(v2 + v6[7]);
  v12 = *(v2 + v6[10]);
  *(a2 + v6[5]) = v7;
  *(a2 + v6[6]) = v10;
  *(a2 + v6[7]) = v11;
  *(a2 + v6[8]) = result;
  *(a2 + v6[9]) = v9;
  *(a2 + v6[10]) = v12;
  return result;
}

int *CVTrackSnapshot.init(id:latestDetection:latestEstimate:lifeCycleState:originTimestamp:score:workState:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, float a8@<S1>)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = sub_1D8B13240();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  result = type metadata accessor for CVTrackSnapshot(0);
  *(a6 + result[5]) = v12;
  *(a6 + result[6]) = v13;
  *(a6 + result[7]) = v14;
  *(a6 + result[8]) = a7;
  *(a6 + result[9]) = a8;
  *(a6 + result[10]) = v15;
  return result;
}

uint64_t sub_1D8AC0D00@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v19 = *a1;
  v4 = v19;
  CVDetection.detection.getter(v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v7 + 48))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v8 = type metadata accessor for CVTrackSnapshot(0);
  *(a3 + v8[5]) = v4;
  *(a3 + v8[6]) = v4;
  *(a3 + v8[7]) = 2;
  v19 = v4;
  CVDetection.detection.getter(v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = *(v10 + 88);
  swift_retain_n();
  v12 = v11(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(a3 + v8[8]) = v12;
  v19 = v4;
  CVDetection.detection.getter(v16);
  v13 = v17;
  v14 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  LODWORD(v12) = (*(v14 + 56))(v13, v14);

  result = __swift_destroy_boxed_opaque_existential_1(v16);
  *(a3 + v8[9]) = LODWORD(v12);
  *(a3 + v8[10]) = v5;
  return result;
}

uint64_t sub_1D8AC0E90(void *a1)
{
  swift_beginAccess();
  v2 = *(a1[2] + 16);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D87F42A4(0, v2, 0);
  result = v31;
  if (!v2)
  {
LABEL_20:
    v18 = a1[2];
    v19 = *(v18 + 16);
    if (v2 == v19)
    {
      return result;
    }

    while (1)
    {
      v20 = a1[4];
      if (v19 == v20)
      {
        v21 = a1[3];
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_51;
        }

        if (!v19)
        {
          goto LABEL_52;
        }

        v23 = v22 % v19;
      }

      else
      {
        v23 = 0;
      }

      v9 = __OFADD__(v23, v2);
      v24 = v23 + v2;
      if (v9)
      {
        goto LABEL_45;
      }

      if (!v20)
      {
        goto LABEL_46;
      }

      if (v20 == -1 && v24 == 0x8000000000000000)
      {
        goto LABEL_53;
      }

      v26 = v24 % v20;
      if (v26 >= v19)
      {
        goto LABEL_47;
      }

      if (v2 >= v19)
      {
        goto LABEL_48;
      }

      v27 = *(v18 + 16 * v26 + 40);
      if (v27 >= 0x20)
      {
        v28 = 2;
      }

      else
      {
        v28 = 0x202020101020002uLL >> (8 * v27);
      }

      v33 = result;
      v30 = *(result + 16);
      v29 = *(result + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D87F42A4((v29 > 1), v30 + 1, 1);
        result = v33;
      }

      ++v2;
      *(result + 16) = v30 + 1;
      *(result + v30 + 32) = v28;
      v18 = a1[2];
      v19 = *(v18 + 16);
      if (v2 == v19)
      {
        return result;
      }
    }
  }

  v4 = a1[4];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = a1[2];
      v7 = *(v6 + 16);
      if (v5 == v7)
      {
        break;
      }

      if (v7 == v4)
      {
        v8 = a1[3];
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          goto LABEL_49;
        }

        v11 = v10 % v4;
      }

      else
      {
        v11 = 0;
      }

      v9 = __OFADD__(v11, v5);
      v12 = v11 + v5;
      if (v9)
      {
        goto LABEL_42;
      }

      if (v4 == -1 && v12 == 0x8000000000000000)
      {
        goto LABEL_50;
      }

      v13 = v12 % v4;
      if (v13 >= v7)
      {
        goto LABEL_43;
      }

      if (v5 >= v7)
      {
        goto LABEL_44;
      }

      v14 = *(v6 + 16 * v13 + 40);
      if (v14 >= 0x20)
      {
        v15 = 2;
      }

      else
      {
        v15 = 0x202020101020002uLL >> (8 * v14);
      }

      v32 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D87F42A4((v16 > 1), v17 + 1, 1);
        result = v32;
      }

      ++v5;
      *(result + 16) = v17 + 1;
      *(result + v17 + 32) = v15;
      if (v2 == v5)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D8AC1168(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = 0;
  v6 = v2[2];
  v7 = *(v6 + 16);
  v8 = v2[4];
  if (v7 != v8)
  {
LABEL_5:
    v10 = __OFADD__(v5, a1);
    v12 = v5 + a1;
    if (v10)
    {
      __break(1u);
    }

    else if (v8)
    {
      if (v8 == -1 && v12 == 0x8000000000000000)
      {
        goto LABEL_16;
      }

      v13 = v12 % v8;
      if (v13 < v7)
      {
        v14 = v6 + 16 * v13;
        v15 = *(v14 + 32);
        *a2 = v15;
        v16 = *(v14 + 40);
        *(a2 + 8) = v16;
        sub_1D881F4C0(v15, v16);
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v2[3];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7)
  {
    v5 = v11 % v7;
    goto LABEL_5;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1D8AC1240(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = 0;
  v6 = v2[2];
  v7 = *(v6 + 16);
  v8 = v2[4];
  if (v7 != v8)
  {
LABEL_5:
    v10 = __OFADD__(v5, a1);
    v12 = v5 + a1;
    if (v10)
    {
      __break(1u);
    }

    else if (v8)
    {
      if (v8 == -1 && v12 == 0x8000000000000000)
      {
        goto LABEL_16;
      }

      v13 = v12 % v8;
      if (v13 < v7)
      {
        v14 = v6 + 88 * v13;
        v15 = *(v14 + 80);
        *(a2 + 32) = *(v14 + 64);
        *(a2 + 48) = v15;
        *(a2 + 64) = *(v14 + 96);
        *(a2 + 80) = *(v14 + 112);
        v16 = *(v14 + 48);
        *a2 = *(v14 + 32);
        *(a2 + 16) = v16;
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v2[3];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7)
  {
    v5 = v11 % v7;
    goto LABEL_5;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void *sub_1D8AC1328(uint64_t a1, uint64_t a2, int64_t a3)
{
  v3[2] = a1;
  v3[3] = 0;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = a1;
  if (!isUniquelyReferenced_nonNull_native || (v8 = a1, a3 > *(a1 + 24) >> 1))
  {
    if (*(a1 + 16) <= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *(a1 + 16);
    }

    v8 = sub_1D87CA1C0(isUniquelyReferenced_nonNull_native, v9, 0, a1);
  }

  v3[2] = v8;
  swift_endAccess();
  v3[3] = a2;
  v10 = *(a1 + 16);

  if (v10 && !a2)
  {
    v3[3] = v10 - 1;
  }

  v3[4] = a3;
  return v3;
}

void *sub_1D8AC13F8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v3[2] = a1;
  v3[3] = 0;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = a1;
  if (!isUniquelyReferenced_nonNull_native || (v8 = a1, a3 > *(a1 + 24) >> 1))
  {
    if (*(a1 + 16) <= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *(a1 + 16);
    }

    v8 = sub_1D87CA2CC(isUniquelyReferenced_nonNull_native, v9, 0, a1);
  }

  v3[2] = v8;
  v3[3] = a2;
  v10 = *(a1 + 16);

  if (v10 && !a2)
  {
    v3[3] = v10 - 1;
  }

  v3[4] = a3;
  return v3;
}

uint64_t sub_1D8AC14BC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v14);
      result = sub_1D8B16D80();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8AC1628(void *a1, void *a2)
{
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a2[2];
  if (v12)
  {
    v13 = a1[2];
    if (v13)
    {
      if (v12 >= v13)
      {
        v14 = a1;
      }

      else
      {
        v14 = a2;
      }

      if (v12 < v13)
      {
        a2 = a1;
      }

      v15 = v14 + 7;
      v16 = 1 << *(v14 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & v14[7];
      v19 = (v16 + 63) >> 6;
      v42 = v5 + 16;
      v37 = v5 + 32;
      v38 = v14;
      v40 = a2 + 7;
      v20 = (v5 + 8);

      v43 = a2;

      v21 = 0;
      v34 = v19;
      v35 = v15;
      v36 = v5;
      while (v18)
      {
LABEL_18:
        v23 = v39;
        v24 = v38[6];
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v39, v24 + v41 * (__clz(__rbit64(v18)) | (v21 << 6)), v4);
        (*(v5 + 32))(v44, v23, v4);
        if (v43[2])
        {
          v26 = v43;
          sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v27 = sub_1D8B15790();
          v28 = -1 << *(v26 + 32);
          v29 = v27 & ~v28;
          if ((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v25(v8, v43[6] + v29 * v41, v4);
              sub_1D8ACE3B0(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v31 = sub_1D8B158C0();
              v32 = *v20;
              (*v20)(v8, v4);
              if (v31)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v32(v44, v4);
            return;
          }
        }

LABEL_12:
        v18 &= v18 - 1;
        (*v20)(v44, v4);
        v15 = v35;
        v5 = v36;
        v19 = v34;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v19)
        {

          return;
        }

        v18 = v15[v22];
        ++v21;
        if (v18)
        {
          v21 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
    }
  }
}

void sub_1D8AC19E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v76 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA673D8, &qword_1D8B32E80);
  MEMORY[0x1EEE9AC00](v80);
  v4 = (&v75 - v3);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v5 = *(v79 - 8);
  v6 = MEMORY[0x1EEE9AC00](v79);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v75 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v75 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v75 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v75 - v17;
  v87 = a1;
  v18 = *(a1 + 16);
  if (!v18)
  {
    __break(1u);

    sub_1D87A14E4(v4, &qword_1ECA673D8, &qword_1D8B32E80);

    __break(1u);

    __break(1u);
    return;
  }

  v81 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  sub_1D87A0E38(v81, v13, &qword_1ECA67750, &unk_1D8B1E0C0);
  v82 = v18;
  v19 = v79;
  if (v18 != 1)
  {
    v18 = 1;
    v21 = &qword_1ECA67750;
    do
    {
      v32 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_48;
      }

      sub_1D87A0E38(v81 + *(v5 + 72) * v18, v10, &qword_1ECA67750, &unk_1D8B1E0C0);
      if (*&v13[*(v19 + 56)] >= *&v10[*(v19 + 56)])
      {
        sub_1D87A14E4(v10, &qword_1ECA67750, &unk_1D8B1E0C0);
      }

      else
      {
        sub_1D87A14E4(v13, &qword_1ECA67750, &unk_1D8B1E0C0);
        sub_1D87C14D4(v10, v13);
      }

      ++v18;
    }

    while (v32 != v82);
  }

  sub_1D87C14D4(v13, v16);
  sub_1D87C14D4(v16, v78);
  v20 = 0;
  *&v83 = sub_1D893C8A0(MEMORY[0x1E69E7CC0]);
  v16 = &qword_1ECA67750;
  v21 = &unk_1D8B1E0C0;
  do
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v18 = *(v5 + 72);
    v22 = v81 + v18 * v20;
    v23 = *(v80 + 48);
    *v4 = v20;
    sub_1D87A0E38(v22, v4 + v23, &qword_1ECA67750, &unk_1D8B1E0C0);
    sub_1D8A08524(&v83, v4);
    sub_1D87A14E4(v4, &qword_1ECA673D8, &qword_1D8B32E80);
    ++v20;
  }

  while (v19 != v82);
  v24 = v83;
  v25 = 1 << *(v83 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v83 + 64);
  if (v27)
  {
    v28 = 0;
    v29 = __clz(__rbit64(v27));
    v30 = (v27 - 1) & v27;
    v31 = (v25 + 63) >> 6;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v31 = (v25 + 63) >> 6;
    do
    {
      if (v31 - 1 == v34)
      {
        goto LABEL_49;
      }

      v28 = v34 + 1;
      v35 = *(v83 + 72 + 8 * v34);
      v33 -= 64;
      ++v34;
    }

    while (!v35);
    v30 = (v35 - 1) & v35;
    v29 = __clz(__rbit64(v35)) - v33;
  }

  v36 = *(v83 + 56);
  v37 = v36 + 16 * v29;
  v38 = *v37;
  v39 = *(v37 + 8);
  v21 = v79;
  if (!v30)
  {
    goto LABEL_22;
  }

  do
  {
    v40 = v28;
LABEL_26:
    v41 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v42 = v36 + ((v40 << 10) | (16 * v41));
    v43 = *v42;
    v44 = *(v42 + 8);
    if (v38 < v43)
    {
      v38 = v43;
      v39 = v44;
    }
  }

  while (v30);
  while (1)
  {
LABEL_22:
    v40 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_47;
    }

    if (v40 >= v31)
    {
      break;
    }

    v30 = *(v83 + 64 + 8 * v40);
    ++v28;
    if (v30)
    {
      v28 = v40;
      goto LABEL_26;
    }
  }

  if (v39 >= v82)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1D87A0E38(v81 + v18 * v39, v77, &qword_1ECA67750, &unk_1D8B1E0C0);
  v45 = *(v24 + 16);
  if (v45)
  {
    v16 = sub_1D87F3BB4(*(v24 + 16), 0);
    v18 = sub_1D88181B8(&v83, (v16 + 4), v45, v24);
    v19 = v83;
    v21 = v85;

    sub_1D87977A0(v19);
    if (v18 != v45)
    {
      goto LABEL_52;
    }

    v21 = v79;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  *&v83 = v16;
  sub_1D8ACB47C(&v83);
  v16 = sub_1D87E2638(*(*(v78 + *(v21 + 11)) + 16), v83);
  if (v48)
  {
    v19 = v48;
    v21 = v47;
    v18 = v46;
    sub_1D8B16BE0();
    swift_unknownObjectRetain_n();
    v51 = swift_dynamicCastClass();
    if (!v51)
    {
      swift_unknownObjectRelease();
      v51 = MEMORY[0x1E69E7CC0];
    }

    v52 = *(v51 + 16);

    if (__OFSUB__(v19 >> 1, v21))
    {
      goto LABEL_53;
    }

    if (v52 != (v19 >> 1) - v21)
    {
      goto LABEL_54;
    }

    v50 = swift_dynamicCastClass();
    v53 = swift_unknownObjectRelease();
    if (v50)
    {
      goto LABEL_44;
    }

    v50 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  while (1)
  {
    sub_1D8AB5E14(v16, v46, v47, v48);
    v50 = v49;
LABEL_43:
    v53 = swift_unknownObjectRelease();
LABEL_44:
    v16 = &v75;
    MEMORY[0x1EEE9AC00](v53);
    *(&v75 - 2) = &v87;
    sub_1D8916FAC(sub_1D8ACF2E8, (&v75 - 4), v50);
    v19 = v54;
    v18 = v79;
    v55 = swift_allocBox();
    if (*(v50 + 16))
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v48 = v19;
    v47 = v21;
    v46 = v18;
  }

  v57 = v55;
  v58 = v56;
  v59 = *(v50 + 40);

  v60 = v59 / v82;
  v61 = v77;
  v62 = v78;
  v63 = (v78 + *(v18 + 40));
  v64 = v63[1];
  v83 = *v63;
  v84 = v64;
  v65 = v63[3];
  v85 = v63[2];
  v86 = v65;
  v66 = *(v77 + *(v18 + 48));

  sub_1D87A14E4(v61, &qword_1ECA67750, &unk_1D8B1E0C0);
  v67 = *(v62 + *(v18 + 52));
  v68 = *(v62 + *(v18 + 56));
  v69 = *(v62 + *(v18 + 60));
  v70 = sub_1D8B13240();
  (*(*(v70 - 8) + 16))(v58, v62, v70);
  *(v58 + *(v18 + 36)) = v60;
  v71 = (v58 + *(v18 + 40));
  v73 = v85;
  v72 = v86;
  v74 = v84;
  *v71 = v83;
  v71[1] = v74;
  v71[2] = v73;
  v71[3] = v72;
  *(v58 + *(v18 + 44)) = v19;
  *(v58 + *(v18 + 48)) = v66;
  *(v58 + *(v18 + 52)) = v67;
  *(v58 + *(v18 + 56)) = v68;
  *(v58 + *(v18 + 60)) = v69;

  sub_1D87A14E4(v62, &qword_1ECA67750, &unk_1D8B1E0C0);
  *v76 = v57;
}

void sub_1D8AC21B8(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a1;
  v5 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v6 = *(v5 - 1);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v44 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v44 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - v18;
  *&v48 = a2;

  sub_1D8ACB5F4(&v48, type metadata accessor for StreamingBarcodeDetectorResult, sub_1D885D40C, sub_1D8ACB860);
  v20 = v48;
  v21 = *(v48 + 16);
  if (v21)
  {
    v46 = a3;
    v22 = v48 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    sub_1D8ACE44C(v22, v19, type metadata accessor for StreamingBarcodeDetectorResult);
    sub_1D8ACE44C(v19, v17, type metadata accessor for StreamingBarcodeDetectorResult);
    v23 = 0;
    while (1)
    {
      if (v23 >= v20[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      sub_1D8ACE44C(v22 + *(v6 + 72) * v23, v9, type metadata accessor for StreamingBarcodeDetectorResult);
      if (*&v9[v5[10]] >= 2uLL)
      {
        break;
      }

      ++v23;
      sub_1D8ACF23C(v9, type metadata accessor for StreamingBarcodeDetectorResult);
      if (v21 == v23)
      {
        sub_1D8ACF23C(v19, type metadata accessor for StreamingBarcodeDetectorResult);

        goto LABEL_8;
      }
    }

    sub_1D8ACF23C(v17, type metadata accessor for StreamingBarcodeDetectorResult);

    sub_1D8ACF310(v9, v12, type metadata accessor for StreamingBarcodeDetectorResult);
    v24 = v45;
    sub_1D8ACF310(v12, v45, type metadata accessor for StreamingBarcodeDetectorResult);
    v25 = sub_1D8B13240();
    (*(*(v25 - 8) + 16))(v17, v19, v25);
    v26 = *&v19[v5[5]];
    v27 = &v19[v5[6]];
    v28 = *(v27 + 3);
    v50 = *(v27 + 2);
    v51 = v28;
    v29 = *(v27 + 1);
    v48 = *v27;
    v49 = v29;
    v30 = &v19[v5[7]];
    v32 = *v30;
    v31 = *(v30 + 1);
    v33 = *&v19[v5[8]];
    v34 = *&v19[v5[9]];

    sub_1D8ACF23C(v19, type metadata accessor for StreamingBarcodeDetectorResult);
    v35 = *(v24 + v5[10]);
    sub_1D88B7ED4(v35);
    sub_1D8ACF23C(v24, type metadata accessor for StreamingBarcodeDetectorResult);
    *&v17[v5[5]] = v26;
    v36 = &v17[v5[6]];
    v37 = v49;
    *v36 = v48;
    *(v36 + 1) = v37;
    v38 = v51;
    *(v36 + 2) = v50;
    *(v36 + 3) = v38;
    v39 = &v17[v5[7]];
    *v39 = v32;
    *(v39 + 1) = v31;
    *&v17[v5[8]] = v33;
    *&v17[v5[9]] = v34;
    *&v17[v5[10]] = v35;
LABEL_8:
    v40 = v47;
    v41 = swift_allocBox();
    sub_1D8ACF310(v17, v42, type metadata accessor for StreamingBarcodeDetectorResult);
    v43 = 0x6000000000000000;
    if (v40 == 7)
    {
      v43 = 0x7000000000000000;
    }

    *v46 = v43 | v41;
  }

  else
  {
LABEL_12:
    __break(1u);

    __break(1u);
  }
}

void sub_1D8AC2600(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AFMResult(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v82 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_59:
    __break(1u);
    return;
  }

  v12 = *(a1 + 32);
  v88 = a1 + 32;
  v13 = v12 >> 60;
  if ((v12 >> 60) <= 4)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        type metadata accessor for GroundedParseDetectorResult(0);
        v30 = swift_allocBox();
        v15 = a2;
        v32 = v31;

        v33 = sub_1D8AC3454(a1);
        v34 = sub_1D87BA7EC(v33);

        sub_1D8AC4A80(v34, v32);

        v20 = v30 | 0x1000000000000000;
        goto LABEL_16;
      }

      if (v13 == 4)
      {
        type metadata accessor for ParseDetectorResult(0);
        v14 = swift_allocBox();
        v15 = a2;
        v17 = v16;

        v18 = sub_1D8AC3454(a1);
        v19 = sub_1D87BA5F8(v18);

        sub_1D8AC41D4(v19, v17);

        v20 = v14 | 0x4000000000000000;
LABEL_16:
        *v15 = v20;
        return;
      }

      goto LABEL_13;
    }

    v25 = sub_1D8AC3454(a1);
    v26 = sub_1D87BA414(v25);

    sub_1D8AC19E8(v26, a2);
LABEL_19:

    return;
  }

  switch(v13)
  {
    case 5:

      v27 = sub_1D8AC3454(a1);
      v28 = sub_1D87BA5B8(v27);

      sub_1D8AC3ABC(v28, a2);
      goto LABEL_19;
    case 6:

      v35 = sub_1D8AC3454(a1);
      v22 = sub_1D87BA82C(v35);

      v23 = a2;
      v24 = 6;
      goto LABEL_18;
    case 7:

      v21 = sub_1D8AC3454(a1);
      v22 = sub_1D87BA82C(v21);

      v23 = a2;
      v24 = 7;
LABEL_18:
      sub_1D8AC21B8(v24, v22, v23);
      goto LABEL_19;
  }

LABEL_13:
  v29 = v8;

  if (v11 == 1)
  {
    *a2 = v12;
  }

  else
  {
    v84 = v10;
    v85 = v7;
    v86 = v29;
    v36 = 1;
    v83 = a2;
    while (2)
    {
      v87 = v12 >> 60;
      for (i = v36; ; ++i)
      {
        if (i >= v11)
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v36 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_58;
        }

        v38 = *(v88 + 8 * i);
        switch(v87)
        {
          case 1uLL:
            v53 = type metadata accessor for GroundedParseDetectorResult(0);
            v40 = swift_projectBox();
            v90 = v53;
            v91 = sub_1D8ACE3B0(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for GroundedParseDetectorResult;
            goto LABEL_38;
          case 2uLL:
            v48 = type metadata accessor for MetaDetectionResult(0);
            v40 = swift_projectBox();
            v90 = v48;
            v91 = sub_1D8ACE3B0(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for MetaDetectionResult;
            goto LABEL_38;
          case 3uLL:
          case 8uLL:
            v39 = type metadata accessor for ObjectDetectorResult(0);
            v40 = swift_projectBox();
            v90 = v39;
            v91 = sub_1D8ACE3B0(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_38;
          case 4uLL:
            v54 = type metadata accessor for ParseDetectorResult(0);
            v40 = swift_projectBox();
            v90 = v54;
            v91 = sub_1D8ACE3B0(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for ParseDetectorResult;
            goto LABEL_38;
          case 5uLL:
            v55 = type metadata accessor for TextDetectorResult(0);
            v40 = swift_projectBox();
            v90 = v55;
            v91 = sub_1D8ACE3B0(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for TextDetectorResult;
            goto LABEL_38;
          case 6uLL:
          case 7uLL:
            v43 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v40 = swift_projectBox();
            v90 = v43;
            v91 = sub_1D8ACE3B0(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_38;
          case 9uLL:
          case 0xAuLL:
            v44 = swift_projectBox();
            v45 = v84;
            sub_1D8ACE44C(v44, v84, type metadata accessor for AFMResult);
            v90 = v86;
            v91 = sub_1D8ACE3B0(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
            v46 = __swift_allocate_boxed_opaque_existential_1(v89);
            sub_1D8ACF310(v45, v46, type metadata accessor for AFMResult);
            break;
          case 0xBuLL:
            v47 = type metadata accessor for SyntheticDetectionResult(0);
            v40 = swift_projectBox();
            v90 = v47;
            v91 = sub_1D8ACE3B0(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_38;
          case 0xCuLL:
            v49 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v40 = swift_projectBox();
            v90 = v49;
            v91 = sub_1D8ACE3B0(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_38;
          case 0xDuLL:
            v56 = type metadata accessor for GroundedParseClassificationsResult(0);
            v40 = swift_projectBox();
            v90 = v56;
            v91 = sub_1D8ACE3B0(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
            v42 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_38:
            sub_1D8ACE44C(v40, boxed_opaque_existential_1, v42);
            break;
          default:
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
            v51 = swift_projectBox();
            v90 = v50;
            v91 = sub_1D8906184();
            v52 = __swift_allocate_boxed_opaque_existential_1(v89);
            sub_1D87A0E38(v51, v52, &qword_1ECA67750, &unk_1D8B1E0C0);
            break;
        }

        v58 = v90;
        v57 = v91;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        v59 = *(v57 + 88);

        v60 = v59(v58, v57);
        __swift_destroy_boxed_opaque_existential_1(v89);
        switch(v38 >> 60)
        {
          case 1uLL:
            v75 = type metadata accessor for GroundedParseDetectorResult(0);
            v62 = swift_projectBox();
            v90 = v75;
            v91 = sub_1D8ACE3B0(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for GroundedParseDetectorResult;
            goto LABEL_51;
          case 2uLL:
            v70 = type metadata accessor for MetaDetectionResult(0);
            v62 = swift_projectBox();
            v90 = v70;
            v91 = sub_1D8ACE3B0(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for MetaDetectionResult;
            goto LABEL_51;
          case 3uLL:
          case 8uLL:
            v61 = type metadata accessor for ObjectDetectorResult(0);
            v62 = swift_projectBox();
            v90 = v61;
            v91 = sub_1D8ACE3B0(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_51;
          case 4uLL:
            v76 = type metadata accessor for ParseDetectorResult(0);
            v62 = swift_projectBox();
            v90 = v76;
            v91 = sub_1D8ACE3B0(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for ParseDetectorResult;
            goto LABEL_51;
          case 5uLL:
            v77 = type metadata accessor for TextDetectorResult(0);
            v62 = swift_projectBox();
            v90 = v77;
            v91 = sub_1D8ACE3B0(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for TextDetectorResult;
            goto LABEL_51;
          case 6uLL:
          case 7uLL:
            v65 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v62 = swift_projectBox();
            v90 = v65;
            v91 = sub_1D8ACE3B0(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_51;
          case 9uLL:
          case 0xAuLL:
            v66 = swift_projectBox();
            v67 = v85;
            sub_1D8ACE44C(v66, v85, type metadata accessor for AFMResult);
            v90 = v86;
            v91 = sub_1D8ACE3B0(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
            v68 = __swift_allocate_boxed_opaque_existential_1(v89);
            sub_1D8ACF310(v67, v68, type metadata accessor for AFMResult);
            break;
          case 0xBuLL:
            v69 = type metadata accessor for SyntheticDetectionResult(0);
            v62 = swift_projectBox();
            v90 = v69;
            v91 = sub_1D8ACE3B0(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_51;
          case 0xCuLL:
            v71 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v62 = swift_projectBox();
            v90 = v71;
            v91 = sub_1D8ACE3B0(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_51;
          case 0xDuLL:
            v78 = type metadata accessor for GroundedParseClassificationsResult(0);
            v62 = swift_projectBox();
            v90 = v78;
            v91 = sub_1D8ACE3B0(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
            v63 = __swift_allocate_boxed_opaque_existential_1(v89);
            v64 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_51:
            sub_1D8ACE44C(v62, v63, v64);
            break;
          default:
            v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
            v73 = swift_projectBox();
            v90 = v72;
            v91 = sub_1D8906184();
            v74 = __swift_allocate_boxed_opaque_existential_1(v89);
            sub_1D87A0E38(v73, v74, &qword_1ECA67750, &unk_1D8B1E0C0);
            break;
        }

        v79 = v90;
        v80 = v91;
        __swift_project_boxed_opaque_existential_1(v89, v90);
        v81 = (*(v80 + 88))(v79, v80);
        __swift_destroy_boxed_opaque_existential_1(v89);
        if (v60 < v81)
        {
          break;
        }

        if (v36 == v11)
        {
          *v83 = v12;
          return;
        }
      }

      v12 = v38;
      if (v36 != v11)
      {
        continue;
      }

      break;
    }

    *v83 = v38;
  }
}

uint64_t sub_1D8AC3454(uint64_t a1)
{
  v29 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D87F4F50(0, v4, 0);
    v5 = v33;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      switch(v7 >> 60)
      {
        case 1uLL:
          v21 = type metadata accessor for GroundedParseDetectorResult(0);
          v9 = swift_projectBox();
          v31 = v21;
          v32 = sub_1D8ACE3B0(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_15;
        case 2uLL:
          v16 = type metadata accessor for MetaDetectionResult(0);
          v9 = swift_projectBox();
          v31 = v16;
          v32 = sub_1D8ACE3B0(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for MetaDetectionResult;
          goto LABEL_15;
        case 3uLL:
        case 8uLL:
          v8 = type metadata accessor for ObjectDetectorResult(0);
          v9 = swift_projectBox();
          v31 = v8;
          v32 = sub_1D8ACE3B0(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_15;
        case 4uLL:
          v22 = type metadata accessor for ParseDetectorResult(0);
          v9 = swift_projectBox();
          v31 = v22;
          v32 = sub_1D8ACE3B0(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for ParseDetectorResult;
          goto LABEL_15;
        case 5uLL:
          v23 = type metadata accessor for TextDetectorResult(0);
          v9 = swift_projectBox();
          v31 = v23;
          v32 = sub_1D8ACE3B0(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for TextDetectorResult;
          goto LABEL_15;
        case 6uLL:
        case 7uLL:
          v12 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v9 = swift_projectBox();
          v31 = v12;
          v32 = sub_1D8ACE3B0(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_15;
        case 9uLL:
        case 0xAuLL:
          v13 = swift_projectBox();
          sub_1D8ACE44C(v13, v3, type metadata accessor for AFMResult);
          v31 = v29;
          v32 = sub_1D8ACE3B0(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v14 = __swift_allocate_boxed_opaque_existential_1(&v30);
          sub_1D8ACF310(v3, v14, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v15 = type metadata accessor for SyntheticDetectionResult(0);
          v9 = swift_projectBox();
          v31 = v15;
          v32 = sub_1D8ACE3B0(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_15;
        case 0xCuLL:
          v17 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v9 = swift_projectBox();
          v31 = v17;
          v32 = sub_1D8ACE3B0(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_15;
        case 0xDuLL:
          v24 = type metadata accessor for GroundedParseClassificationsResult(0);
          v9 = swift_projectBox();
          v31 = v24;
          v32 = sub_1D8ACE3B0(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
          v11 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_15:
          sub_1D8ACE44C(v9, boxed_opaque_existential_1, v11);
          break;
        default:
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v19 = swift_projectBox();
          v31 = v18;
          v32 = sub_1D8906184();
          v20 = __swift_allocate_boxed_opaque_existential_1(&v30);
          sub_1D87A0E38(v19, v20, &qword_1ECA67750, &unk_1D8B1E0C0);
          break;
      }

      v33 = v5;
      v26 = *(v5 + 16);
      v25 = *(v5 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D87F4F50((v25 > 1), v26 + 1, 1);
        v5 = v33;
      }

      *(v5 + 16) = v26 + 1;
      sub_1D8788F40(&v30, v5 + 40 * v26 + 32);
      --v4;
    }

    while (v4);
  }

  return v5;
}

uint64_t sub_1D8AC3ABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D8B13240();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextDetectorResult(0);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v87 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v94 = &v87 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v87 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v87 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v93 = &v87 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v98 = &v87 - v27;
  v28 = *(a1 + 16);
  if (!v28)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v91 = v26;
  v92 = a2;
  v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v30 = a1 + v29;
  result = sub_1D8ACE44C(a1 + v29, v22, type metadata accessor for TextDetectorResult);
  if (v28 != 1)
  {
    v88 = v29;
    v89 = v13;
    v77 = v6;
    v78 = v7;
    v90 = a1;
    v79 = 1;
    do
    {
      v80 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      v81 = *(v78 + 72);
      sub_1D8ACE44C(v30 + v81 * v79, v19, type metadata accessor for TextDetectorResult);
      if (*&v22[v77[5]] < *&v19[v77[5]])
      {
        sub_1D8ACF23C(v22, type metadata accessor for TextDetectorResult);
        result = sub_1D8ACF310(v19, v22, type metadata accessor for TextDetectorResult);
      }

      else
      {
        result = sub_1D8ACF23C(v19, type metadata accessor for TextDetectorResult);
      }

      ++v79;
    }

    while (v80 != v28);
    v82 = v93;
    sub_1D8ACF310(v22, v93, type metadata accessor for TextDetectorResult);
    sub_1D8ACF310(v82, v98, type metadata accessor for TextDetectorResult);
    v83 = v89;
    result = sub_1D8ACE44C(v30, v89, type metadata accessor for TextDetectorResult);
    v84 = v90 + v88 + v81;
    v85 = 1;
    v6 = v77;
    v13 = v83;
    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      sub_1D8ACE44C(v84, v10, type metadata accessor for TextDetectorResult);
      if (*&v13[v6[9]] >= *&v10[v6[9]])
      {
        result = sub_1D8ACF23C(v10, type metadata accessor for TextDetectorResult);
      }

      else
      {
        sub_1D8ACF23C(v13, type metadata accessor for TextDetectorResult);
        result = sub_1D8ACF310(v10, v13, type metadata accessor for TextDetectorResult);
      }

      ++v85;
      v84 += v81;
      if (v86 == v28)
      {
        goto LABEL_4;
      }
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = v93;
  sub_1D8ACF310(v22, v93, type metadata accessor for TextDetectorResult);
  sub_1D8ACF310(v31, v98, type metadata accessor for TextDetectorResult);
  sub_1D8ACE44C(v30, v13, type metadata accessor for TextDetectorResult);
LABEL_4:
  v32 = v91;
  sub_1D8ACF310(v13, v91, type metadata accessor for TextDetectorResult);
  v33 = v32;
  v34 = v94;
  sub_1D8ACF310(v33, v94, type metadata accessor for TextDetectorResult);
  v93 = swift_allocBox();
  v36 = v35;
  v37 = v95;
  v38 = *(v96 + 16);
  v38(v95, v34, v97);
  v39 = v98;
  v40 = *(v98 + v6[5]);
  v41 = (v34 + v6[6]);
  v42 = v34;
  v43 = v41[3];
  v101 = v41[2];
  v102 = v43;
  v44 = v41[1];
  v99 = *v41;
  v100 = v44;
  v45 = v6[8];
  v46 = (v98 + v6[7]);
  v47 = v46[1];
  v89 = *v46;
  v48 = *(v98 + v45);
  v49 = *(v42 + v6[9]);
  v50 = *(v98 + v6[10]);
  v51 = *(v98 + v6[11]);
  v52 = v98 + v6[12];
  v53 = *v52;
  v91 = *(v52 + 8);
  v90 = *(v52 + 16);
  v54 = v37;
  v55 = v97;
  v38(v36, v54, v97);
  *&v36[v6[5]] = v40;
  v56 = &v36[v6[6]];
  v58 = v101;
  v57 = v102;
  v59 = v100;
  *v56 = v99;
  *(v56 + 1) = v59;
  *(v56 + 2) = v58;
  *(v56 + 3) = v57;
  v60 = &v36[v6[7]];
  *v60 = v89;
  *(v60 + 1) = v47;
  *&v36[v6[8]] = v48;
  *&v36[v6[9]] = v49;
  *&v36[v6[10]] = v50;
  *&v36[v6[11]] = v51;
  v61 = v53;

  v62 = sub_1D8A9FD8C(v51);
  v64 = sub_1D881BE2C(400, v62, v63);
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v71 = MEMORY[0x1DA71EF10](v64, v66, v68, v70);
  v73 = v72;

  (*(v96 + 8))(v95, v55);
  sub_1D8ACF23C(v94, type metadata accessor for TextDetectorResult);
  result = sub_1D8ACF23C(v39, type metadata accessor for TextDetectorResult);
  v74 = &v36[v6[13]];
  *v74 = v71;
  v74[1] = v73;
  v75 = &v36[v6[12]];
  v76 = v91;
  *v75 = v53;
  *(v75 + 1) = v76;
  *(v75 + 2) = v90;
  *v92 = v93 | 0x5000000000000000;
  return result;
}

uint64_t sub_1D8AC41D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v62 - v5;
  v69 = type metadata accessor for VisualUnderstandingContainer(0);
  v66 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ParseDetectorResult(0);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v62 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v62 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v74 = a1;

  sub_1D8ACB5F4(&v74, type metadata accessor for ParseDetectorResult, sub_1D885D434, sub_1D8ACBC48);
  v22 = v74;
  v23 = *(v74 + 16);
  if (!v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v63 = a2;
  v64 = v13;
  v70 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v24 = v74 + v70;
  v65 = v21;
  sub_1D8ACE44C(v74 + v70, v21, type metadata accessor for ParseDetectorResult);
  v21 = 0;
  a1 = MEMORY[0x1E69E7CC0];
  v71 = v16;
  do
  {
    if (v21 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v25 = *(v72 + 72);
    sub_1D8ACE44C(v24 + v25 * v21, v19, type metadata accessor for ParseDetectorResult);
    if (v19[v73[10]])
    {
      sub_1D8ACF310(v19, v10, type metadata accessor for ParseDetectorResult);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = a1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F4D84(0, *(a1 + 16) + 1, 1);
        a1 = v74;
      }

      a2 = *(a1 + 16);
      v27 = *(a1 + 24);
      if (a2 >= v27 >> 1)
      {
        sub_1D87F4D84((v27 > 1), a2 + 1, 1);
        a1 = v74;
      }

      *(a1 + 16) = a2 + 1;
      sub_1D8ACF310(v10, a1 + v70 + a2 * v25, type metadata accessor for ParseDetectorResult);
      v16 = v71;
    }

    else
    {
      sub_1D8ACF23C(v19, type metadata accessor for ParseDetectorResult);
    }

    ++v21;
  }

  while (v23 != v21);

  v28 = *(a1 + 16);
  if (v28)
  {
    v29 = &v16[v73[13]];
    v72 = *(v69 + 20);
    v30 = a1 + v70;
    v70 = v29 + 8;
    v31 = MEMORY[0x1E69E7CC0];
    v32 = v67;
    do
    {
      sub_1D8ACE44C(v30, v16, type metadata accessor for ParseDetectorResult);
      sub_1D87A0E38(v29 + v72, v32, &qword_1ECA635E8, &unk_1D8B1F5C0);
      v33 = sub_1D8B13830();
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        sub_1D8ACF23C(v16, type metadata accessor for ParseDetectorResult);
        sub_1D87A14E4(v32, &qword_1ECA635E8, &unk_1D8B1F5C0);
      }

      else
      {
        sub_1D87A14E4(v32, &qword_1ECA635E8, &unk_1D8B1F5C0);
        if (*(v70 + *(v69 + 24)) >> 60 == 15)
        {
          sub_1D8ACF23C(v16, type metadata accessor for ParseDetectorResult);
        }

        else
        {
          sub_1D8ACE44C(v29, v68, type metadata accessor for VisualUnderstandingContainer);
          sub_1D8ACF23C(v16, type metadata accessor for ParseDetectorResult);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1D87C9DEC(0, v31[2] + 1, 1, v31);
          }

          v35 = v31[2];
          v34 = v31[3];
          if (v35 >= v34 >> 1)
          {
            v31 = sub_1D87C9DEC((v34 > 1), v35 + 1, 1, v31);
          }

          v31[2] = v35 + 1;
          sub_1D8ACF310(v68, v31 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v35, type metadata accessor for VisualUnderstandingContainer);
          v32 = v67;
          v16 = v71;
        }
      }

      v30 += v25;
      --v28;
    }

    while (v28);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v21 = v64;
  v36 = v65;
  a1 = sub_1D87E2670(*(v65 + v73[15]), v31);
  a2 = v37;
  v22 = v38;
  v10 = v39;
  sub_1D8ACE44C(v36, v21, type metadata accessor for ParseDetectorResult);
  if ((v10 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1D8B16BE0();
  swift_unknownObjectRetain_n();
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    swift_unknownObjectRelease();
    v42 = MEMORY[0x1E69E7CC0];
  }

  v43 = *(v42 + 16);

  if (__OFSUB__(v10 >> 1, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    swift_unknownObjectRelease();
    v36 = v65;
LABEL_27:
    sub_1D8AB5EF8(a1, a2, v22, v10);
    v41 = v40;
    swift_unknownObjectRelease();
    sub_1D8ACF23C(v36, type metadata accessor for ParseDetectorResult);
    goto LABEL_35;
  }

  if (v43 != (v10 >> 1) - v22)
  {
    goto LABEL_39;
  }

  v41 = swift_dynamicCastClass();
  if (!v41)
  {
    swift_unknownObjectRelease();
    v41 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8ACF23C(v65, type metadata accessor for ParseDetectorResult);
  swift_unknownObjectRelease();
LABEL_35:
  v44 = v73;
  v45 = v73[14];
  v46 = v63;
  *(v63 + v73[15]) = 5;
  v47 = sub_1D8B13240();
  (*(*(v47 - 8) + 16))(v46, v21, v47);
  *(v46 + v44[5]) = *(v21 + v44[5]);
  v48 = v44[6];
  v49 = (v21 + v48);
  v50 = (v46 + v48);
  v51 = v49[3];
  v50[2] = v49[2];
  v50[3] = v51;
  v52 = v49[1];
  *v50 = *v49;
  v50[1] = v52;
  *(v46 + v44[7]) = *(v21 + v44[7]);
  *(v46 + v44[8]) = *(v21 + v44[8]);
  *(v46 + v44[9]) = *(v21 + v44[9]);
  *(v46 + v44[10]) = *(v21 + v44[10]);
  v53 = v44[11];
  v54 = *(v21 + v53);
  v55 = *(v21 + v53 + 8);
  v56 = (v46 + v53);
  *v56 = v54;
  v56[1] = v55;
  v57 = v44[12];
  v58 = *(v21 + v57);
  v59 = *(v21 + v57 + 8);
  v60 = (v46 + v57);
  *v60 = v58;
  v60[1] = v59;
  sub_1D8ACE44C(v21 + v44[13], v46 + v44[13], type metadata accessor for VisualUnderstandingContainer);

  result = sub_1D8ACF23C(v21, type metadata accessor for ParseDetectorResult);
  *(v46 + v45) = v41;
  return result;
}

uint64_t sub_1D8AC4A80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v96 = &v86 - v6;
  v99 = type metadata accessor for VisualUnderstandingContainer(0);
  v95 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v86 - v12;
  v93 = type metadata accessor for DetectionRequest.Originator(0);
  v104 = *(v93 - 8);
  v14 = MEMORY[0x1EEE9AC00](v93);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v103 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v92 = (&v86 - v19);
  v101 = type metadata accessor for GroundedParseDetectorResult(0);
  v106 = *(v101 - 8);
  v20 = MEMORY[0x1EEE9AC00](v101);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v86 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v102 = &v86 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v105 = &v86 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v86 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v94 = &v86 - v33;
  v107 = a1;
  v91 = a1;

  sub_1D8ACB5F4(&v107, type metadata accessor for GroundedParseDetectorResult, sub_1D885D420, sub_1D8ACBA54);
  v34 = v107;
  v35 = *(v107 + 16);
  if (v35)
  {
    v87 = v13;
    v88 = v11;
    v89 = v25;
    v86 = v16;
    v90 = a2;
    v100 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v36 = v107 + v100;
    sub_1D8ACE44C(v107 + v100, v94, type metadata accessor for GroundedParseDetectorResult);
    v11 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    v16 = v101;
    v13 = v105;
    do
    {
      if (v11 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v2 = *(v106 + 72);
      sub_1D8ACE44C(v36 + v2 * v11, v32, type metadata accessor for GroundedParseDetectorResult);
      if (v32[*(v16 + 40)])
      {
        sub_1D8ACF310(v32, v22, type metadata accessor for GroundedParseDetectorResult);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4DC8(0, *(v37 + 16) + 1, 1);
          v37 = v107;
        }

        v40 = *(v37 + 16);
        v39 = *(v37 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D87F4DC8((v39 > 1), v40 + 1, 1);
          v37 = v107;
        }

        *(v37 + 16) = v40 + 1;
        sub_1D8ACF310(v22, v37 + v100 + v40 * v2, type metadata accessor for GroundedParseDetectorResult);
        v16 = v101;
        v13 = v105;
      }

      else
      {
        sub_1D8ACF23C(v32, type metadata accessor for GroundedParseDetectorResult);
      }

      ++v11;
    }

    while (v35 != v11);

    v41 = *(v37 + 16);
    if (v41)
    {
      v42 = &v13[*(v16 + 52)];
      v106 = *(v99 + 20);
      v43 = v37 + v100;
      v97 = v42 + 8;
      v44 = MEMORY[0x1E69E7CC0];
      v45 = v96;
      do
      {
        sub_1D8ACE44C(v43, v13, type metadata accessor for GroundedParseDetectorResult);
        sub_1D87A0E38(v42 + v106, v45, &qword_1ECA635E8, &unk_1D8B1F5C0);
        v46 = sub_1D8B13830();
        if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
        {
          sub_1D8ACF23C(v13, type metadata accessor for GroundedParseDetectorResult);
          sub_1D87A14E4(v45, &qword_1ECA635E8, &unk_1D8B1F5C0);
        }

        else
        {
          sub_1D87A14E4(v45, &qword_1ECA635E8, &unk_1D8B1F5C0);
          if (*(v97 + *(v99 + 24)) >> 60 == 15)
          {
            sub_1D8ACF23C(v13, type metadata accessor for GroundedParseDetectorResult);
          }

          else
          {
            sub_1D8ACE44C(v42, v98, type metadata accessor for VisualUnderstandingContainer);
            sub_1D8ACF23C(v13, type metadata accessor for GroundedParseDetectorResult);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_1D87C9DEC(0, v44[2] + 1, 1, v44);
            }

            v48 = v44[2];
            v47 = v44[3];
            if (v48 >= v47 >> 1)
            {
              v44 = sub_1D87C9DEC((v47 > 1), v48 + 1, 1, v44);
            }

            v44[2] = v48 + 1;
            sub_1D8ACF310(v98, v44 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v48, type metadata accessor for VisualUnderstandingContainer);
            v45 = v96;
            v13 = v105;
          }
        }

        v43 += v2;
        --v41;
      }

      while (v41);

      v16 = v101;
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
    }

    v22 = sub_1D87E2670(*(v94 + *(v16 + 64)), v44);
    v106 = v49;
    v34 = v50;
    v51 = v16;
    v16 = v52;
    v53 = *(v91 + 16);
    v54 = v103;
    if (v53)
    {
      v55 = v51[14];
      v56 = v91 + v100;
      v57 = MEMORY[0x1E69E7CC0];
      do
      {
        v58 = v102;
        sub_1D8ACE44C(v56, v102, type metadata accessor for GroundedParseDetectorResult);
        sub_1D8ACE44C(v58 + v55, v54, type metadata accessor for DetectionRequest.Originator);
        sub_1D8ACF23C(v58, type metadata accessor for GroundedParseDetectorResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1D87C9BB0(0, v57[2] + 1, 1, v57);
        }

        v60 = v57[2];
        v59 = v57[3];
        if (v60 >= v59 >> 1)
        {
          v57 = sub_1D87C9BB0((v59 > 1), v60 + 1, 1, v57);
        }

        v57[2] = v60 + 1;
        v61 = v57 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v60;
        v54 = v103;
        sub_1D8ACF310(v103, v61, type metadata accessor for DetectionRequest.Originator);
        v56 += v2;
        --v53;
      }

      while (v53);
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    v62 = v92;
    sub_1D8A3167C(v57, v92);

    v35 = v89;
    sub_1D8ACE44C(v94, v89, type metadata accessor for GroundedParseDetectorResult);
    v2 = v87;
    sub_1D8ACE44C(v62, v87, type metadata accessor for DetectionRequest.Originator);
    (*(v104 + 56))(v2, 0, 1, v93);
    if ((v16 & 1) == 0)
    {
      swift_unknownObjectRetain();
      v11 = v90;
      v13 = v88;
      goto LABEL_37;
    }

    sub_1D8B16BE0();
    swift_unknownObjectRetain_n();
    v66 = swift_dynamicCastClass();
    v11 = v90;
    v13 = v88;
    if (!v66)
    {
      swift_unknownObjectRelease();
      v66 = MEMORY[0x1E69E7CC0];
    }

    v67 = *(v66 + 16);

    if (!__OFSUB__(v16 >> 1, v34))
    {
      if (v67 != (v16 >> 1) - v34)
      {
        goto LABEL_50;
      }

      v64 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v65 = v101;
      if (!v64)
      {
        v64 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  else
  {
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  swift_unknownObjectRelease();
LABEL_37:
  sub_1D8AB5EF8(v22, v106, v34, v16);
  v64 = v63;
  v65 = v101;
LABEL_44:
  swift_unknownObjectRelease();
LABEL_45:
  v106 = v64;
  *&v11[v65[16]] = 5;
  sub_1D87A0E38(v2, v13, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v104 + 48))(v13, 1, v93) == 1)
  {
    sub_1D87A14E4(v13, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    v68 = v65[15];
    sub_1D87A14E4(v2, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8ACF23C(v92, type metadata accessor for DetectionRequest.Originator);
    sub_1D8ACF23C(v94, type metadata accessor for GroundedParseDetectorResult);
    v69 = v13;
    v70 = v86;
    sub_1D8ACF310(v69, v86, type metadata accessor for DetectionRequest.Originator);
    v71 = sub_1D8B13240();
    (*(*(v71 - 8) + 16))(v11, v35, v71);
    *&v11[v65[5]] = *(v35 + v65[5]);
    v72 = v65[6];
    v73 = (v35 + v72);
    v74 = &v11[v72];
    v75 = v73[3];
    *(v74 + 2) = v73[2];
    *(v74 + 3) = v75;
    v76 = v73[1];
    *v74 = *v73;
    *(v74 + 1) = v76;
    *&v11[v65[7]] = *(v35 + v65[7]);
    *&v11[v65[8]] = *(v35 + v65[8]);
    *&v11[v65[9]] = *(v35 + v65[9]);
    v11[v65[10]] = *(v35 + v65[10]);
    v77 = v65[11];
    v78 = *(v35 + v77);
    v79 = *(v35 + v77 + 8);
    v80 = &v11[v77];
    *v80 = v78;
    *(v80 + 1) = v79;
    v81 = v65[12];
    v82 = *(v35 + v81);
    v83 = *(v35 + v81 + 8);
    v84 = &v11[v81];
    *v84 = v82;
    *(v84 + 1) = v83;
    sub_1D8ACE44C(v35 + v65[13], &v11[v65[13]], type metadata accessor for VisualUnderstandingContainer);

    sub_1D8ACF23C(v35, type metadata accessor for GroundedParseDetectorResult);
    *&v11[v68] = v106;
    return sub_1D8ACF310(v70, &v11[v65[14]], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

void sub_1D8AC5768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v14 = a2 + 56;
    v15 = 1 << *(a2 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a2 + 56);
    v37 = v5 + 32;
    v38 = (v15 + 63) >> 6;
    v41 = a1 + 56;
    v42 = v5 + 16;
    v43 = (v5 + 8);

    v18 = 0;
    v32 = a2 + 56;
    v33 = v13;
    v36 = a2;
    v34 = v5;
    v19 = v38;
    if (v17)
    {
      while (1)
      {
        v20 = v18;
LABEL_10:
        v21 = *(v5 + 72);
        v22 = *(a2 + 48) + v21 * (__clz(__rbit64(v17)) | (v20 << 6));
        v39 = *(v5 + 16);
        v40 = v21;
        v39(v13, v22, v4);
        (*(v5 + 32))(v11, v13, v4);
        v23 = *(a1 + 16);
        v35 = v43 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v24 = v11;
        if (!v23)
        {
          break;
        }

        sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v25 = sub_1D8B15790();
        v26 = -1 << *(a1 + 32);
        v27 = v25 & ~v26;
        if (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          break;
        }

        v28 = a1;
        v17 &= v17 - 1;
        v29 = ~v26;
        while (1)
        {
          v39(v8, *(v28 + 48) + v27 * v40, v4);
          sub_1D8ACE3B0(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v30 = sub_1D8B158C0();
          v31 = *v43;
          (*v43)(v8, v4);
          if (v30)
          {
            break;
          }

          v27 = (v27 + 1) & v29;
          if (((*(v41 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            v31(v24, v4);
            goto LABEL_18;
          }
        }

        v11 = v24;
        v31(v24, v4);
        v18 = v20;
        a2 = v36;
        a1 = v28;
        v13 = v33;
        v5 = v34;
        v14 = v32;
        v19 = v38;
        if (!v17)
        {
          goto LABEL_7;
        }
      }

      (*v43)(v11, v4);
LABEL_18:
    }

    else
    {
LABEL_7:
      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v19)
        {
          goto LABEL_18;
        }

        v17 = *(v14 + 8 * v20);
        ++v18;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

void sub_1D8AC5B38(uint64_t *a1, uint64_t a2)
{
  v118 = a2;
  v123 = a1;
  v2 = type metadata accessor for GroundedParseClassificationsResult(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v121 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v122 = &v116 - v5;
  v6 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v119 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v116 - v9;
  v10 = type metadata accessor for TextDetectorResult(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v117 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v116 - v13;
  v14 = type metadata accessor for ParseDetectorResult(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v116 - v18;
  v20 = type metadata accessor for GroundedParseDetectorResult(0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v116 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v116 - v30;
  v32 = type metadata accessor for AFMResult(0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v116 - v36;
  v38 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v116 - v42;
  v44 = *v123;
  v45 = *v124;
  v46 = *v124 >> 60;
  if (v46 <= 6)
  {
    if (v46 <= 3)
    {
      if (v46)
      {
        if (v46 == 1 && v44 >> 60 == 1)
        {
          v55 = swift_projectBox();
          v56 = swift_projectBox();
          sub_1D8ACE44C(v55, v25, type metadata accessor for GroundedParseDetectorResult);
          sub_1D8ACE44C(v56, v23, type metadata accessor for GroundedParseDetectorResult);

          v57 = sub_1D8AD2AC8();
          if (v57)
          {
            v58 = v57;
            v59 = sub_1D8AD2AC8();
            if (v59)
            {
              sub_1D8AC1628(v59, v58);

              sub_1D8ACF23C(v23, type metadata accessor for GroundedParseDetectorResult);
              sub_1D8ACF23C(v25, type metadata accessor for GroundedParseDetectorResult);

              return;
            }
          }

          sub_1D8ACF23C(v23, type metadata accessor for GroundedParseDetectorResult);
          sub_1D8ACF23C(v25, type metadata accessor for GroundedParseDetectorResult);

          goto LABEL_57;
        }

        goto LABEL_43;
      }

      if (v44 >> 60)
      {
        goto LABEL_43;
      }

      v60 = swift_projectBox();
      v61 = swift_projectBox();
      sub_1D87A0E38(v60, v31, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D87A0E38(v61, v29, &qword_1ECA67750, &unk_1D8B1E0C0);

      sub_1D8A100A4();
      sub_1D87A14E4(v29, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D87A14E4(v31, &qword_1ECA67750, &unk_1D8B1E0C0);
    }

    else
    {
      if (v46 != 4)
      {
        if (v46 != 5)
        {
          if (v44 >> 60 == 6)
          {
            goto LABEL_28;
          }

          goto LABEL_43;
        }

        if (v44 >> 60 == 5)
        {
          v71 = swift_projectBox();
          v72 = swift_projectBox();
          v73 = v116;
          sub_1D8ACE44C(v71, v116, type metadata accessor for TextDetectorResult);
          v74 = v117;
          sub_1D8ACE44C(v72, v117, type metadata accessor for TextDetectorResult);

          sub_1D8A9C000(v74, v118);
          sub_1D8ACF23C(v74, type metadata accessor for TextDetectorResult);
          sub_1D8ACF23C(v73, type metadata accessor for TextDetectorResult);

          goto LABEL_57;
        }

LABEL_43:
        v132[0] = *v124;
        v81 = v44;
        v82 = v45;
        CVDetection.detectionType.getter(v128);
        v83 = LOBYTE(v128[0]);
        v125[0] = v81;
        CVDetection.detectionType.getter(&v131);
        if (v83 == v131)
        {
          v84 = v82;
          v128[0] = v82;
          CVDetection.detection.getter(v125);
          v85 = v126;
          v86 = v127;
          __swift_project_boxed_opaque_existential_1(v125, v126);
          (*(v86 + 64))(v132, v85, v86);
          __swift_destroy_boxed_opaque_existential_1(v125);
          Corners.bounds.getter();
          v88 = v87;
          v90 = v89;
          v92 = v91;
          v94 = v93;
          v95 = v81;
          v131 = v81;
          CVDetection.detection.getter(v128);
          v96 = v129;
          v97 = v130;
          __swift_project_boxed_opaque_existential_1(v128, v129);
          (*(v97 + 64))(v125, v96, v97);
          __swift_destroy_boxed_opaque_existential_1(v128);
          Corners.bounds.getter();
          v137.origin.x = v98;
          v137.origin.y = v99;
          v101 = v100;
          v103 = v102;
          v135.origin.x = v88;
          v135.origin.y = v90;
          v135.size.width = v92;
          v135.size.height = v94;
          v137.size.width = v101;
          v137.size.height = v103;
          v136 = CGRectIntersection(v135, v137);
          CGRectIsNull(v136);
          v125[0] = v84;
          CVDetection.detection.getter(v132);
          v104 = v133;
          v105 = v134;
          __swift_project_boxed_opaque_existential_1(v132, v133);
          v106 = (*(v105 + 72))(v104, v105);
          v108 = v107;
          __swift_destroy_boxed_opaque_existential_1(v132);
          v125[0] = v95;
          CVDetection.detection.getter(v132);
          v109 = v133;
          v110 = v134;
          __swift_project_boxed_opaque_existential_1(v132, v133);
          v111 = (*(v110 + 72))(v109, v110);
          v113 = v112;
          __swift_destroy_boxed_opaque_existential_1(v132);
          if (v106 == v111 && v108 == v113)
          {
          }

          else
          {
            sub_1D8B16BA0();
          }
        }

        return;
      }

      if (v44 >> 60 != 4)
      {
        goto LABEL_43;
      }

      v64 = swift_projectBox();
      v65 = swift_projectBox();
      sub_1D8ACE44C(v64, v19, type metadata accessor for ParseDetectorResult);
      sub_1D8ACE44C(v65, v17, type metadata accessor for ParseDetectorResult);

      sub_1D8A95B18(v17);
      sub_1D8ACF23C(v17, type metadata accessor for ParseDetectorResult);
      sub_1D8ACF23C(v19, type metadata accessor for ParseDetectorResult);
    }

LABEL_57:

    return;
  }

  if (v46 <= 9)
  {
    if (v46 == 7)
    {
      if (v44 >> 60 == 7)
      {
LABEL_28:
        v62 = swift_projectBox();
        v63 = swift_projectBox();
        sub_1D8ACE44C(v62, v43, type metadata accessor for StreamingBarcodeDetectorResult);
        sub_1D8ACE44C(v63, v41, type metadata accessor for StreamingBarcodeDetectorResult);
        sub_1D8A28858(v41);
        sub_1D8ACF23C(v41, type metadata accessor for StreamingBarcodeDetectorResult);
        sub_1D8ACF23C(v43, type metadata accessor for StreamingBarcodeDetectorResult);
        return;
      }

      goto LABEL_43;
    }

    if (v46 != 9 || v44 >> 60 != 9)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (v46 != 10)
    {
      if (v46 == 12)
      {
        if (v44 >> 60 != 12)
        {
          goto LABEL_43;
        }

        v75 = swift_projectBox();
        v76 = swift_projectBox();
        v49 = v120;
        sub_1D8ACE44C(v75, v120, type metadata accessor for GroundedParseEmbeddingsResult);
        v50 = v119;
        sub_1D8ACE44C(v76, v119, type metadata accessor for GroundedParseEmbeddingsResult);

        v77 = sub_1D8AD2CD8();
        if (v77)
        {
          v78 = v77;
          v79 = sub_1D8AD2CD8();
          if (v79)
          {
            sub_1D8AC1628(v79, v78);

            v54 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_42;
          }
        }

        v114 = type metadata accessor for GroundedParseEmbeddingsResult;
      }

      else
      {
        if (v46 != 13 || v44 >> 60 != 13)
        {
          goto LABEL_43;
        }

        v47 = swift_projectBox();
        v48 = swift_projectBox();
        v49 = v122;
        sub_1D8ACE44C(v47, v122, type metadata accessor for GroundedParseClassificationsResult);
        v50 = v121;
        sub_1D8ACE44C(v48, v121, type metadata accessor for GroundedParseClassificationsResult);

        v51 = sub_1D8AD2D04();
        if (v51)
        {
          v52 = v51;
          v53 = sub_1D8AD2D04();
          if (v53)
          {
            sub_1D8AC1628(v53, v52);

            v54 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_42:
            v80 = v54;
            sub_1D8ACF23C(v50, v54);
            sub_1D8ACF23C(v49, v80);

            return;
          }
        }

        v114 = type metadata accessor for GroundedParseClassificationsResult;
      }

      v115 = v114;
      sub_1D8ACF23C(v50, v114);
      sub_1D8ACF23C(v49, v115);

      goto LABEL_57;
    }

    if (v44 >> 60 != 10)
    {
      goto LABEL_43;
    }
  }

  v66 = swift_projectBox();
  v67 = swift_projectBox();
  sub_1D8ACE44C(v66, v37, type metadata accessor for AFMResult);
  sub_1D8ACE44C(v67, v35, type metadata accessor for AFMResult);
  v68 = sub_1D8AD2CAC();
  if (v68)
  {
    v69 = v68;
    v70 = sub_1D8AD2CAC();
    if (v70)
    {
      sub_1D8AC1628(v70, v69);

      sub_1D8ACF23C(v35, type metadata accessor for AFMResult);
      sub_1D8ACF23C(v37, type metadata accessor for AFMResult);
      return;
    }
  }

  sub_1D8ACF23C(v35, type metadata accessor for AFMResult);
  sub_1D8ACF23C(v37, type metadata accessor for AFMResult);
}

uint64_t CVTrackProviding.shortLoggingDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1D8B16720();

  v44 = 0x206B636172743CLL;
  v45 = 0xE700000000000000;
  (*(*(a2 + 8) + 16))(a1);
  v8 = sub_1D8B131E0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = sub_1D881BE2C(8, v8, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = MEMORY[0x1DA71EF10](v11, v13, v15, v17);
  v20 = v19;

  MEMORY[0x1DA71EFA0](v18, v20);

  MEMORY[0x1DA71EFA0](23328, 0xE200000000000000);
  (*(a2 + 16))(v39, a1, a2);
  v43 = v39[0];
  CVDetection.detectionType.getter(&v42);

  v21 = CVDetection.DetectionType.description.getter();
  MEMORY[0x1DA71EFA0](v21);

  MEMORY[0x1DA71EFA0](2236509, 0xE300000000000000);
  (*(a2 + 24))(&v43, a1, a2);
  v42 = v43;
  CVDetection.detection.getter(v39);
  v22 = v40;
  v23 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v24 = (*(v23 + 72))(v22, v23);
  v26 = v25;

  __swift_destroy_boxed_opaque_existential_1(v39);
  v27 = sub_1D881BE2C(10, v24, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = MEMORY[0x1DA71EF10](v27, v29, v31, v33);
  v36 = v35;

  MEMORY[0x1DA71EFA0](v34, v36);

  MEMORY[0x1DA71EFA0](15906, 0xE200000000000000);
  return v44;
}

uint64_t CVTrackSnapshot.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double CVTrackSnapshot.latestDetection.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for CVTrackSnapshot(0) + 20));

  return result;
}

double CVTrackSnapshot.latestEstimate.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for CVTrackSnapshot(0) + 24));

  return result;
}

uint64_t CVTrackSnapshot.lifeCycleState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CVTrackSnapshot(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t CVTrackSnapshot.workState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CVTrackSnapshot(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_1D8AC6E50()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x65726F6373;
  if (v1 != 5)
  {
    v3 = 0x746174536B726F77;
  }

  v4 = 0x6C6379436566696CLL;
  if (v1 != 3)
  {
    v4 = 0x69546E696769726FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x654474736574616CLL;
  if (v1 != 1)
  {
    v5 = 0x734574736574616CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8AC6F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8ACEFD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8AC6F78(uint64_t a1)
{
  v2 = sub_1D8ACE308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AC6FB4(uint64_t a1)
{
  v2 = sub_1D8ACE308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVTrackSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69070, &qword_1D8B3DE40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ACE308();
  sub_1D8B16DD0();
  LOBYTE(v12) = 0;
  sub_1D8B13240();
  sub_1D8ACE3B0(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for CVTrackSnapshot(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    sub_1D8A29858();

    sub_1D8B16AE0();

    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;

    sub_1D8B16AE0();

    LOBYTE(v12) = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    sub_1D8ACE35C();
    sub_1D8B16AE0();
    LOBYTE(v12) = 4;
    sub_1D8B16AB0();
    LOBYTE(v12) = 5;
    sub_1D8B16AC0();
    LOBYTE(v12) = *(v3 + v9[10]);
    HIBYTE(v11) = 6;
    sub_1D8A6F234();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CVTrackSnapshot.hash(into:)(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for CVTrackSnapshot(0);
  CVDetection.hash(into:)(a1);
  CVDetection.hash(into:)(a1);
  MEMORY[0x1DA720210](*(v1 + v3[7]));
  v4 = *(v1 + v3[8]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  sub_1D8B16D60();
  return MEMORY[0x1DA720210](*(v1 + v3[10]));
}

uint64_t CVTrackSnapshot.hashValue.getter()
{
  sub_1D8B16D20();
  CVTrackSnapshot.hash(into:)(v1);
  return sub_1D8B16D80();
}

void CVTrackSnapshot.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D8B13240();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69088, &unk_1D8B3DE48);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8ACE308();
  v23 = v8;
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v19;
    LOBYTE(v25) = 0;
    sub_1D8ACE3B0(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v13 = v20;
    sub_1D8B16A10();
    (*(v12 + 32))(v11, v13, v4);
    v24 = 1;
    sub_1D8A51C54();
    sub_1D8B16A10();
    *&v11[v9[5]] = v25;
    v24 = 2;
    v20 = 0;
    sub_1D8B16A10();
    *&v11[v9[6]] = v25;
    v24 = 3;
    sub_1D8ACE3F8();
    sub_1D8B16A10();
    v14 = v21;
    v11[v9[7]] = v25;
    LOBYTE(v25) = 4;
    sub_1D8B169E0();
    *&v11[v9[8]] = v15;
    LOBYTE(v25) = 5;
    sub_1D8B169F0();
    *&v11[v9[9]] = v16;
    v24 = 6;
    sub_1D8A6F288();
    sub_1D8B16A10();
    (*(v14 + 8))(v23, v22);
    v11[v9[10]] = v25;
    sub_1D8ACE44C(v11, v18, type metadata accessor for CVTrackSnapshot);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D8ACF23C(v11, type metadata accessor for CVTrackSnapshot);
  }
}

uint64_t sub_1D8AC7990()
{
  sub_1D8B16D20();
  CVTrackSnapshot.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8AC79D4(uint64_t a1)
{
  sub_1D8B16D20();
  CVTrackSnapshot.hash(into:)(v2);
  return sub_1D8B16D80();
}

double sub_1D8AC7A40@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 20));

  return result;
}

double sub_1D8AC7A54@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 24));

  return result;
}

void CVTrackSnapshot.bounds.getter()
{
  v7 = *(v0 + *(type metadata accessor for CVTrackSnapshot(0) + 24));
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v3, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  Corners.bounds.getter();
}

void sub_1D8AC7B14(uint64_t a1)
{
  v8 = *(v1 + *(a1 + 24));
  CVDetection.detection.getter(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 64))(v4, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  Corners.bounds.getter();
}

uint64_t CVTrackedDetection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
  v4 = sub_1D8B13240();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double CVTrackedDetection.workState.getter@<D0>(_BYTE *a1@<X8>)
{
  v3 = sub_1D8AC0E90(*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
  sub_1D891FD78(v3, a1);

  return result;
}

uint64_t sub_1D8AC7CC4@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 8) & 0xE0) == 0x40)
  {
    v45[0] = *v1;
    v3 = v45[0];
    CVDetection.detection.getter(&v48);
    v4 = v49;
    v5 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    (*(v5 + 64))(v51, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v48);
    Corners.bounds.getter();
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    MidX = CGRectGetMidX(v52);
    v53.origin.x = x;
    v53.origin.y = y;
    v53.size.width = width;
    v53.size.height = height;
    MidY = CGRectGetMidY(v53);
    v42[0] = v45[0];
    CVDetection.detection.getter(v45);
    v10 = *(&v46 + 1);
    v11 = v47;
    __swift_project_boxed_opaque_existential_1(v45, *(&v46 + 1));
    (*(v11 + 64))(&v48, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v31 = v48;
    v38[0] = v42[0];
    CVDetection.detection.getter(v42);
    v12 = v43;
    v13 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v13 + 64))(v45, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v30 = v46;
    v34[0] = v3;
    CVDetection.detection.getter(v38);
    v14 = v39;
    v15 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v15 + 64))(v42, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v29 = v44;
    v37 = v3;
    CVDetection.detection.getter(v34);
    v16 = v35;
    v17 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v17 + 64))(v38, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v28 = v41;
    v45[0] = v3;
    CVDetection.detection.getter(&v48);
    v18 = v49;
    v19 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, v49);
    v20 = (*(v19 + 88))(v18, v19);
    result = __swift_destroy_boxed_opaque_existential_1(&v48);
    v23 = v28;
    v22 = v29;
    *&v25 = MidX;
    v24 = 0;
    LOBYTE(v51[0]) = 0;
    *(&v25 + 1) = MidY;
    v27 = v30;
    v26 = v31;
  }

  else
  {
    v24 = 1;
    v25 = 0uLL;
    v20 = 0.0;
    v26 = 0uLL;
    v27 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *a1 = v25;
  *(a1 + 16) = v26;
  *(a1 + 32) = v27;
  *(a1 + 48) = v22;
  *(a1 + 64) = v23;
  *(a1 + 80) = v20;
  *(a1 + 88) = v24;
  return result;
}

void __swiftcall CVTrackedDetection.Prediction.init(center:corners:timestamp:)(VisualIntelligenceCore::CVTrackedDetection::Prediction *__return_ptr retstr, CGPoint center, VisualIntelligenceCore::Corners *corners, Swift::Double timestamp)
{
  retstr->center.x = center.x;
  retstr->center.y = center.y;
  topRight = corners->topRight;
  retstr->corners.topLeft = corners->topLeft;
  retstr->corners.topRight = topRight;
  bottomRight = corners->bottomRight;
  retstr->corners.bottomLeft = corners->bottomLeft;
  retstr->corners.bottomRight = bottomRight;
  retstr->timestamp = timestamp;
}

uint64_t sub_1D8AC7FE4()
{
  if (*(v0 + 8) >> 5 == 2)
  {
    v7 = *v0;
    CVDetection.detection.getter(v4);
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v2 + 88))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  return result;
}

uint64_t CVTrackedDetection.Prediction.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[9];
  v11 = v0[8];
  v8 = v0[10];
  sub_1D8818B80(*v0, v0[1]);
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v11, v7);
  v9 = 0.0;
  if (v8 != 0.0)
  {
    v9 = v8;
  }

  return MEMORY[0x1DA720250](*&v9);
}

uint64_t CVTrackedDetection.Prediction.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v13 = v0[8];
  v11 = v0[6];
  v12 = v0[9];
  v8 = v0[10];
  sub_1D8B16D20();
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v11, v7);
  sub_1D8818B80(v13, v12);
  v9 = 0.0;
  if (v8 != 0.0)
  {
    v9 = v8;
  }

  MEMORY[0x1DA720250](*&v9);
  return sub_1D8B16D80();
}

uint64_t sub_1D8AC8254(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v14 = v1[8];
  v12 = v1[6];
  v13 = v1[9];
  v9 = v1[10];
  sub_1D8B16D20();
  sub_1D8818B80(v2, v3);
  sub_1D8818B80(v4, v5);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v12, v8);
  sub_1D8818B80(v14, v13);
  v10 = 0.0;
  if (v9 != 0.0)
  {
    v10 = v9;
  }

  MEMORY[0x1DA720250](*&v10);
  return sub_1D8B16D80();
}

void sub_1D8AC8338(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_predictions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650F8, &qword_1D8B3E570);
  swift_allocObject();
  *(v2 + v9) = sub_1D8AC13F8(MEMORY[0x1E69E7CC0], 0, 40);
  sub_1D8B13230();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id, v7, v4);
  v24 = v8;
  CVDetection.detection.getter(&v20);
  v10 = v22;
  v11 = v23;
  __swift_project_boxed_opaque_existential_1(&v20, v22);
  v12 = (*(v11 + 88))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v20);
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp) = v12;
  v20 = v8;
  CVDetection.maxSecondsDecay.getter();
  v14 = v13;
  type metadata accessor for SPRTTrigger();
  v15 = swift_allocObject();
  *(v15 + 24) = 0xFFF0000000000000;
  *(v15 + 32) = xmmword_1D8B3DE20;
  *(v15 + 48) = 1;
  *(v15 + 56) = v14;
  *(v15 + 64) = 2;
  *(v15 + 16) = -1088180685;
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) = v15;
  v20 = v8;

  CVDetection.maxDetectionFps.getter();
  v17 = sub_1D8ABF420(v16 * 1.1);

  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA690E0, &qword_1D8B3E578);
    swift_allocObject();
    *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer) = sub_1D8AC1328(MEMORY[0x1E69E7CC0], 0, v19);
    sub_1D8997948();

    sub_1D8997778(v20, v21);
  }
}

unint64_t CVTrackedDetection.latestDetection.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);
  result = swift_beginAccess();
  v6 = v3[2];
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_23:
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    sub_1D8997618(result, v5);
    goto LABEL_23;
  }

  v9 = v6 + 40;
  result = v7 - 1;
  while (1)
  {
    if (v7 == v8)
    {
      v10 = v3[3];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_19;
      }

      v13 = v12 % v7;
    }

    else
    {
      v13 = 0;
    }

    v11 = __OFADD__(v13, result);
    v14 = v13 + result;
    if (v11)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v8 == -1 && v14 == 0x8000000000000000)
    {
      goto LABEL_20;
    }

    v15 = v14 % v8;
    if (v15 >= v7)
    {
      goto LABEL_18;
    }

    if ((*(v9 + 16 * v15) & 0xE0) == 0x40)
    {
      break;
    }

    if (--result == -1)
    {
      goto LABEL_23;
    }
  }

  sub_1D8AC1168(result, &v16);
  result = v16;
  v5 = v17;
  if ((v17 & 0xE0) != 0x40)
  {
    goto LABEL_22;
  }

  *a1 = v16;
  return result;
}

void CVTrackedDetection.latestEstimate.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);
  swift_beginAccess();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = v3[2];
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  while (v7 != v4)
  {
    v9 = v3[4];
    if (v7 == v9)
    {
      v10 = v3[3];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_31;
      }

      if (!v7)
      {
        goto LABEL_32;
      }

      v13 = v12 % v7;
    }

    else
    {
      v13 = 0;
    }

    v11 = __OFADD__(v13, v4);
    v14 = v13 + v4;
    if (v11)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    if (!v9)
    {
      goto LABEL_27;
    }

    if (v9 == -1 && v14 == 0x8000000000000000)
    {
      goto LABEL_33;
    }

    v15 = v14 % v9;
    if (v15 >= v7)
    {
      goto LABEL_28;
    }

    if (v4 >= v7)
    {
      goto LABEL_29;
    }

    v16 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_30;
    }

    v17 = (v8 + 16 * v15);
    ++v4;
    if ((v17[1] & 0xE0) == 0x40)
    {
      v18 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D87C7F54(0, *(v5 + 2) + 1, 1, v5);
      }

      v20 = *(v5 + 2);
      v19 = *(v5 + 3);
      if (v20 >= v19 >> 1)
      {
        v5 = sub_1D87C7F54((v19 > 1), v20 + 1, 1, v5);
      }

      *(v5 + 2) = v20 + 1;
      *&v5[8 * v20 + 32] = v18;
      v4 = v16;
      goto LABEL_2;
    }
  }

  sub_1D8AC2600(v5, &v29);

  v21 = v29;
  v22 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_predictions);
  swift_beginAccess();
  v23 = *(*(v22 + 16) + 16);
  if (v23 && (sub_1D8AC1240(v23 - 1, &v29), v37 = v31, v38 = v32, v39 = v33, v35 = v29, v36 = v30, v24 = v34, CVTrackedDetection.latestDetection.getter(&v28), CVDetection.detection.getter(&v29), v25 = *(&v30 + 1), v26 = v31, __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1)), v27 = (*(v26 + 88))(v25, v26), , __swift_destroy_boxed_opaque_existential_1(&v29), v27 < v24))
  {
    v28 = v21;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v29 = v35;
    v30 = v36;
    v34 = v24;
    CVDetection.modifyWithPrediction(_:)(&v29, a1);
  }

  else
  {
    *a1 = v21;
  }
}

void sub_1D8AC8A0C(uint64_t a1@<X8>, double a2@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98, &unk_1D8B2CF80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v112 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_predictions);
  v14 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  if (!v16)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = v17;
    while (1)
    {
      v20 = v14[4];
      if (v16 == v20)
      {
        v21 = v14[3];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_58;
        }

        if (!v16)
        {
          goto LABEL_59;
        }

        v24 = v23 % v16;
      }

      else
      {
        v24 = 0;
      }

      v22 = __OFADD__(v24, v19);
      v25 = v24 + v19;
      if (v22)
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
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        sub_1D87F3F8C((v16 > 1), v13, 1);
        v88 = v129.f64[0];
        v16 = *(*&v129.f64[0] + 24);
        v89 = v16 >> 1;
        goto LABEL_44;
      }

      if (!v20)
      {
        goto LABEL_54;
      }

      if (v20 == -1 && v25 == 0x8000000000000000)
      {
        goto LABEL_60;
      }

      v27 = v25 % v20;
      if (v27 >= v16)
      {
        goto LABEL_55;
      }

      if (v19 >= v16)
      {
        goto LABEL_56;
      }

      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_57;
      }

      v28 = v15 + 16 * v27;
      v29 = *(v28 + 32);
      LOBYTE(v28) = *(v28 + 40);
      v124.f64[0] = v29;
      LOBYTE(v124.f64[1]) = v28;
      sub_1D8AC7CC4(&v129);
      if ((BYTE8(v133[1]) & 1) == 0)
      {
        break;
      }

      v15 = v14[2];
      v16 = *(v15 + 16);
      ++v19;
      if (v17 == v16)
      {
        goto LABEL_28;
      }
    }

    v126 = v131;
    v127 = v132;
    v128[0] = v133[0];
    *(v128 + 9) = *(v133 + 9);
    v124 = v129;
    v125 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1D87CA2CC(0, *(v18 + 2) + 1, 1, v18);
    }

    v31 = *(v18 + 2);
    v30 = *(v18 + 3);
    if (v31 >= v30 >> 1)
    {
      v18 = sub_1D87CA2CC((v30 > 1), v31 + 1, 1, v18);
    }

    v121 = v126;
    v122 = v127;
    v123[0] = v128[0];
    *(v123 + 9) = *(v128 + 9);
    v32 = v124;
    v119 = v124;
    v120 = v125;
    *(v18 + 2) = v31 + 1;
    v33 = &v18[88 * v31];
    *(v33 + 3) = v120;
    v34 = v121;
    v35 = v122;
    v36 = v123[0];
    *(v33 + 14) = *&v123[1];
    *(v33 + 5) = v35;
    *(v33 + 6) = v36;
    *(v33 + 4) = v34;
    *(v33 + 2) = v32;
    v15 = v14[2];
    v16 = *(v15 + 16);
  }

  while (v17 != v16);
LABEL_28:
  v37 = *(v18 + 2);
  swift_beginAccess();
  v38 = *(*(v13 + 16) + 16);
  v22 = __OFADD__(v37, v38);
  v39 = v37 + v38;
  if (v22)
  {
    goto LABEL_61;
  }

  *&v129.f64[0] = sub_1D87CA2CC(0, v39 & ~(v39 >> 63), 0, MEMORY[0x1E69E7CC0]);

  sub_1D88F653C(v40);
  sub_1D88F644C(v18);

  sub_1D8ACB6B8(&v129);

  v41 = *&v129.f64[0];
  v42 = sub_1D8B151E0();
  v43 = (*(*(v42 - 8) + 56))(v12, 1, 1, v42);
  *&v129.f64[0] = MEMORY[0x1E69E7CD0];
  MEMORY[0x1EEE9AC00](v43);
  *(&v112 - 4) = sub_1D8AC9230;
  *(&v112 - 3) = 0;
  *(&v112 - 2) = &v129;
  *(&v112 - 1) = v12;
  v44 = sub_1D8821974(sub_1D8ACF29C, (&v112 - 6), v41);

  sub_1D87A14E4(v12, &qword_1ECA65E98, &unk_1D8B2CF80);
  v45 = *(v44 + 2);
  v46 = v45 + 1;
  v47 = &v44[88 * v45 + 56];
  while (--v46)
  {
    v48 = v47 - 88;
    v49 = *(v47 - 32);
    v47 -= 88;
    if (v49 <= a2)
    {
      v50 = 0;
      v5 = *(v48 - 24);
      v6 = *(v48 - 16);
      v3 = *(v48 - 8);
      v51 = *(v48 + 8);
      v52 = *(v48 + 16);
      v113 = *v48;
      *&v114 = v51;
      v53 = *(v48 + 32);
      *&v117 = *(v48 + 24);
      *&v118 = v53;
      v55 = *(v48 + 40);
      v54 = *(v48 + 48);
      *(&v114 + 1) = v52;
      *&v115 = v55;
      *&v116 = v54;
      LOBYTE(v129.f64[0]) = 0;
      goto LABEL_34;
    }
  }

  v5 = 0.0;
  v50 = 1;
  v6 = 0.0;
  v3 = 0.0;
  v113 = 0.0;
  v114 = 0uLL;
  *&v115 = 0;
  *&v117 = 0;
  *&v118 = 0;
  *&v116 = 0;
  v49 = 0.0;
LABEL_34:
  v56 = v45 + 1;
  v57 = v44;
  while (2)
  {
    if (!--v56)
    {

      if ((v50 & 1) == 0)
      {
        LOBYTE(v129.f64[0]) = 0;
        *a1 = v5;
        *(a1 + 8) = v6;
        v82 = v113;
        v83 = v114;
        *(a1 + 16) = v3;
        *(a1 + 24) = v82;
        v84 = *(&v114 + 1);
        *(a1 + 32) = v83;
        *(a1 + 40) = v84;
        v85 = v118;
        *(a1 + 48) = v117;
        *(a1 + 56) = v85;
        v86 = v116;
        *(a1 + 64) = v115;
        *(a1 + 72) = v86;
        *(a1 + 80) = v49;
        goto LABEL_52;
      }

      goto LABEL_41;
    }

    v58 = (v57 + 88);
    v59 = *(v57 + 14);
    v57 += 88;
    if (v59 < a2)
    {
      continue;
    }

    break;
  }

  v61 = *(v58 - 7);
  v60 = *(v58 - 6);
  v62 = *(v58 - 4);
  v112 = *(v58 - 5);
  v63 = *(v58 - 3);
  v64 = *(v58 - 2);
  v66 = *(v58 - 1);
  v65 = *v58;
  v68 = *(v58 + 1);
  v67 = *(v58 + 2);

  if (v50)
  {
LABEL_41:
    *a1 = v5;
    *(a1 + 8) = v6;
    v77 = v113;
    v78 = v114;
    *(a1 + 16) = v3;
    *(a1 + 24) = v77;
    v79 = *(&v114 + 1);
    *(a1 + 32) = v78;
    *(a1 + 40) = v79;
    v80 = v118;
    *(a1 + 48) = v117;
    *(a1 + 56) = v80;
    v81 = v116;
    *(a1 + 64) = v115;
    *(a1 + 72) = v81;
    *(a1 + 80) = v49;
    *(a1 + 88) = v50;
    return;
  }

  v69 = v67;
  v70 = v68;
  v71 = v65;
  v72 = v66;
  v73 = v64;
  v74 = v63;
  v75 = v62;
  v76 = v112;
  v129.f64[0] = v61;
  v129.f64[1] = v60;
  *&v130 = v112;
  *(&v130 + 1) = v75;
  *&v131 = v74;
  *(&v131 + 1) = v73;
  *&v132 = v72;
  *(&v132 + 1) = v71;
  *&v133[0] = v70;
  *(&v133[0] + 1) = v69;
  *&v133[1] = v59;
  v124.f64[0] = v5;
  v124.f64[1] = v6;
  *&v125 = v3;
  *(&v125 + 1) = v113;
  v126 = v114;
  *&v127 = v117;
  *(&v127 + 1) = v118;
  *&v128[0] = v115;
  *(&v128[0] + 1) = v116;
  *&v128[1] = v49;
  if (_s22VisualIntelligenceCore18CVTrackedDetectionC10PredictionV2eeoiySbAE_AEtFZ_0(&v129, &v124))
  {
    LOBYTE(v129.f64[0]) = 0;
    *a1 = v61;
    *(a1 + 8) = v60;
    *(a1 + 16) = v76;
    *(a1 + 24) = v75;
    *(a1 + 32) = v74;
    *(a1 + 40) = v73;
    *(a1 + 48) = v72;
    *(a1 + 56) = v71;
    *(a1 + 64) = v70;
    *(a1 + 72) = v69;
    *(a1 + 80) = v59;
    goto LABEL_52;
  }

  v87 = (a2 - v49) / (v59 - v49);
  v7 = (v61 - v5) * v87;
  v4 = (v60 - v6) * v87;
  *&v129.f64[0] = MEMORY[0x1E69E7CC0];
  sub_1D87F3F8C(0, 4, 0);
  v88 = v129.f64[0];
  v12 = *(*&v129.f64[0] + 16);
  v16 = *(*&v129.f64[0] + 24);
  v89 = v16 >> 1;
  v13 = v12 + 1;
  if (v16 >> 1 <= v12)
  {
    goto LABEL_62;
  }

LABEL_44:
  v90 = v113 + v4;
  *(*&v88 + 16) = v13;
  v91 = *&v88 + 16 * v12;
  *(v91 + 32) = v3 + v7;
  *(v91 + 40) = v90;
  v92 = v12 + 2;
  if (v89 <= v13)
  {
    sub_1D87F3F8C((v16 > 1), v92, 1);
    v88 = v129.f64[0];
  }

  v93 = *&v114 + v7;
  v94 = *(&v114 + 1) + v4;
  *(*&v88 + 16) = v92;
  v95 = *&v88 + 16 * v13;
  *(v95 + 32) = v93;
  *(v95 + 40) = v94;
  v97 = *(*&v88 + 16);
  v96 = *(*&v88 + 24);
  v98 = v97 + 1;
  if (v97 >= v96 >> 1)
  {
    sub_1D87F3F8C((v96 > 1), v97 + 1, 1);
  }

  v99 = *&v115 + v7;
  v100 = *&v116 + v4;
  v101 = v129.f64[0];
  *(*&v129.f64[0] + 16) = v98;
  v102 = *&v101 + 16 * v97;
  *(v102 + 32) = v99;
  *(v102 + 40) = v100;
  v103 = *(*&v101 + 24);
  if (v98 >= v103 >> 1)
  {
    sub_1D87F3F8C((v103 > 1), v97 + 2, 1);
    v101 = v129.f64[0];
  }

  v104 = *&v117 + v7;
  v105 = *&v118 + v4;
  *(*&v101 + 16) = v97 + 2;
  v106 = *&v101 + 16 * v98;
  *(v106 + 32) = v104;
  *(v106 + 40) = v105;
  if (v97 < 2)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v107 = *(*&v101 + 32);
    v108 = *(*&v101 + 48);
    v109 = *(*&v101 + 64);
    v117 = *(*&v101 + 80);
    v118 = v107;
    v115 = v109;
    v116 = v108;

    LOBYTE(v124.f64[0]) = 0;
    *a1 = v5 + v7;
    *(a1 + 8) = v6 + v4;
    v110 = v116;
    *(a1 + 16) = v118;
    *(a1 + 32) = v110;
    v111 = v115;
    *(a1 + 48) = v117;
    *(a1 + 64) = v111;
    *(a1 + 80) = a2;
LABEL_52:
    *(a1 + 88) = 0;
  }
}

double sub_1D8AC9230@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 80);
  *a2 = result;
  return result;
}

void CVTrackedDetection.estimate(atTime:)(uint64_t *a1@<X8>, double a2@<D0>)
{
  v54 = a1;
  v52 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);
  swift_beginAccess();
  v6 = v5[2];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      v9 = v5[4];
      if (v7 == v9)
      {
        v10 = v5[3];
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          goto LABEL_43;
        }

        if (!v7)
        {
          goto LABEL_44;
        }

        v13 = v12 % v7;
      }

      else
      {
        v13 = 0;
      }

      v11 = __OFADD__(v13, v8);
      v14 = v13 + v8;
      if (v11)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_40;
      }

      if (v9 == -1 && v14 == 0x8000000000000000)
      {
        goto LABEL_45;
      }

      v16 = v14 % v9;
      if (v16 >= v7)
      {
        goto LABEL_41;
      }

      if (v8 >= v7)
      {
        goto LABEL_42;
      }

      v17 = v6 + 16 * v16;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      if ((v19 & 0xE0) == 0x40)
      {
        switch(v18 >> 60)
        {
          case 1uLL:
            v34 = type metadata accessor for GroundedParseDetectorResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v34;
            *&v62 = sub_1D8ACE3B0(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for GroundedParseDetectorResult;
            goto LABEL_31;
          case 2uLL:
            v29 = type metadata accessor for MetaDetectionResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v29;
            *&v62 = sub_1D8ACE3B0(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for MetaDetectionResult;
            goto LABEL_31;
          case 3uLL:
          case 8uLL:
            v20 = type metadata accessor for ObjectDetectorResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v20;
            *&v62 = sub_1D8ACE3B0(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_31;
          case 4uLL:
            v35 = type metadata accessor for ParseDetectorResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v35;
            *&v62 = sub_1D8ACE3B0(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for ParseDetectorResult;
            goto LABEL_31;
          case 5uLL:
            v36 = type metadata accessor for TextDetectorResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v36;
            *&v62 = sub_1D8ACE3B0(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for TextDetectorResult;
            goto LABEL_31;
          case 6uLL:
          case 7uLL:
            v24 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v24;
            *&v62 = sub_1D8ACE3B0(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_31;
          case 9uLL:
          case 0xAuLL:
            v25 = swift_projectBox();
            v26 = v51;
            sub_1D8ACE44C(v25, v51, type metadata accessor for AFMResult);
            *(&v61 + 1) = v52;
            *&v62 = sub_1D8ACE3B0(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
            v27 = __swift_allocate_boxed_opaque_existential_1(&v60);
            sub_1D8ACF310(v26, v27, type metadata accessor for AFMResult);
            break;
          case 0xBuLL:
            v28 = type metadata accessor for SyntheticDetectionResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v28;
            *&v62 = sub_1D8ACE3B0(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_31;
          case 0xCuLL:
            v30 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v30;
            *&v62 = sub_1D8ACE3B0(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_31;
          case 0xDuLL:
            v37 = type metadata accessor for GroundedParseClassificationsResult(0);
            v21 = swift_projectBox();
            *(&v61 + 1) = v37;
            *&v62 = sub_1D8ACE3B0(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
            v23 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_31:
            sub_1D8ACE44C(v21, boxed_opaque_existential_1, v23);
            break;
          default:
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
            v32 = swift_projectBox();
            *(&v61 + 1) = v31;
            *&v62 = sub_1D8906184();
            v33 = __swift_allocate_boxed_opaque_existential_1(&v60);
            sub_1D87A0E38(v32, v33, &qword_1ECA67750, &unk_1D8B1E0C0);
            break;
        }

        v39 = *(&v61 + 1);
        v38 = v62;
        __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
        v40 = *(v38 + 88);

        v41 = v40(v39, v38);
        __swift_destroy_boxed_opaque_existential_1(&v60);
        if (v41 == a2)
        {
          CVTrackedDetection.latestEstimate.getter(&v59);
          v55[0] = v18;
          CVDetection.detection.getter(&v60);
          v42 = *(&v61 + 1);
          v43 = v62;
          __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
          (*(v43 + 64))(&v67, v42, v43);
          __swift_destroy_boxed_opaque_existential_1(&v60);
          v44 = Corners.center.getter();
          v46 = v45;
          v58 = v18;
          CVDetection.detection.getter(v55);
          v47 = v56;
          v48 = v57;
          __swift_project_boxed_opaque_existential_1(v55, v56);
          (*(v48 + 64))(&v61, v47, v48);
          __swift_destroy_boxed_opaque_existential_1(v55);
          *&v60 = v44;
          *(&v60 + 1) = v46;
          v65 = a2;
          CVDetection.modifyWithPrediction(_:)(&v60, &v67);
          sub_1D8997618(v18, v19);

          v49 = v67;
          goto LABEL_38;
        }
      }

      else if (*&v18 == a2)
      {
        sub_1D8997618(v18, v19);
        goto LABEL_35;
      }

      ++v8;
      sub_1D8997618(v18, v19);
      v6 = v5[2];
      v7 = *(v6 + 16);
      if (v8 == v7)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {
LABEL_35:
    sub_1D8AC8A0C(&v60, a2);
    v69 = v62;
    v70 = v63;
    v71 = v64;
    v72 = v65;
    v67 = v60;
    v68 = v61;
    if (v66)
    {
      v49 = 0xF000000000000007;
    }

    else
    {
      CVTrackedDetection.latestEstimate.getter(&v59);
      v62 = v69;
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v60 = v67;
      v61 = v68;
      CVDetection.modifyWithPrediction(_:)(&v60, v55);

      v49 = v55[0];
    }

LABEL_38:
    *v54 = v49;
  }
}

void sub_1D8AC9AF0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CameraSourceFrame.timestamp.getter(a3, a4);
  v6 = a1;
  sub_1D8AC9B48(&v5);
}

void sub_1D8AC9B48(NSObject **a1)
{
  v3 = v1;
  v4 = *a1;
  CVTrackedDetection.latestDetection.getter(&v70);
  v5 = v70;
  v6 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);
  sub_1D8997948();
  sub_1D8997778(v70, v71);
  sub_1D8ACA44C();
  swift_beginAccess();
  v7 = v6[2];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_14:
    v2 = v6;
    if (qword_1EE0E4348 != -1)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v18 = sub_1D8B151E0();
      __swift_project_value_buffer(v18, qword_1EE0E4350);

      swift_retain_n();
      v4 = sub_1D8B151C0();
      v19 = sub_1D8B16220();

      if (os_log_type_enabled(v4, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v67 = v21;
        *v20 = 136315906;
        v70 = v5;
        CVDetection.detectionType.getter(&v74);
        v22 = CVDetection.DetectionType.description.getter();
        v24 = sub_1D89AC714(v22, v23, &v67);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2048;
        v74 = v5;
        CVDetection.detection.getter(&v70);
        v25 = v72;
        v26 = v73;
        __swift_project_boxed_opaque_existential_1(&v70, v72);
        v27 = (*(v26 + 88))(v25, v26);
        __swift_destroy_boxed_opaque_existential_1(&v70);
        *(v20 + 14) = v27;
        *(v20 + 22) = 1024;
        LODWORD(v25) = *(*(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);

        *(v20 + 24) = v25 == 1;

        *(v20 + 28) = 2080;
        v28 = SPRTTrigger.debugDescription.getter();
        v30 = sub_1D89AC714(v28, v29, &v67);

        *(v20 + 30) = v30;
        _os_log_impl(&dword_1D8783000, v4, v19, "Wiped out the last detection. It used to be %s @ t=%f. isExpired: %{BOOL}d trigger: %s", v20, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v21, -1, -1);
        MEMORY[0x1DA721330](v20, -1, -1);
      }

      else
      {
LABEL_23:
      }

      v31 = *(v2 + 16);
      v32 = *(v31 + 16);
      if (v32)
      {
        v62 = sub_1D87F3CD4(*(v31 + 16), 0);
        v33 = sub_1D88187DC(&v70, (v62 + 4), v32);

        if (v33 != v32)
        {
          __break(1u);
LABEL_46:

          v74 = v5;
          CVDetection.detectionType.getter(&v69);
          v70 = 0;
          v71 = 0xE000000000000000;
          sub_1D8B16720();
          v67 = v70;
          v68 = v71;
          MEMORY[0x1DA71EFA0](0xD00000000000002CLL, 0x80000001D8B48E10);
          v70 = v5;
          CVDetection.detectionType.getter(&v66);
          v55 = CVDetection.DetectionType.description.getter();
          MEMORY[0x1DA71EFA0](v55);

          MEMORY[0x1DA71EFA0](0x3D74204020, 0xE500000000000000);
          v66 = v5;
          CVDetection.detection.getter(&v70);
          v56 = v72;
          v57 = v73;
          __swift_project_boxed_opaque_existential_1(&v70, v72);
          (*(v57 + 88))(v56, v57);
          __swift_destroy_boxed_opaque_existential_1(&v70);
          sub_1D8B16020();
          MEMORY[0x1DA71EFA0](0x697078457369202ELL, 0xED0000203A646572);
          v58 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger);
          if (*(v58 + 64) == 1)
          {
            v59 = 1702195828;
          }

          else
          {
            v59 = 0x65736C6166;
          }

          if (*(v58 + 64) == 1)
          {
            v60 = 0xE400000000000000;
          }

          else
          {
            v60 = 0xE500000000000000;
          }

          MEMORY[0x1DA71EFA0](v59, v60);

          MEMORY[0x1DA71EFA0](0x7265676769727420, 0xEA0000000000203ALL);
          v70 = v58;
          type metadata accessor for SPRTTrigger();
          sub_1D8B168A0();
          sub_1D8A5E980(v67, v68);
        }
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
      }

      v34 = v62;
      v35 = v62[2];
      if (!v35)
      {
        goto LABEL_46;
      }

      v36 = 0;
      v37 = (v62 + 5);
      v61 = v62[2];
      while (v36 < v34[2])
      {
        v38 = *(v37 - 1);
        v2 = *v37;
        sub_1D881F4C0(v38, *v37);
        sub_1D881F4C0(v38, v2);
        sub_1D881F4C0(v38, v2);
        sub_1D881F4C0(v38, v2);
        sub_1D881F4C0(v38, v2);
        v39 = sub_1D8B151C0();
        v40 = sub_1D8B16220();
        sub_1D8997618(v38, v2);
        sub_1D8997618(v38, v2);
        sub_1D8997618(v38, v2);
        sub_1D8997618(v38, v2);
        if (os_log_type_enabled(v39, v40))
        {
          v64 = v40;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v67 = v42;
          *v41 = 134219010;
          *(v41 + 4) = v36;
          *(v41 + 12) = 2048;
          log = v39;
          v63 = v42;
          if (v2 >> 5 == 2)
          {
            v74 = v38;
            CVDetection.detection.getter(&v70);
            v53 = v72;
            v54 = v73;
            __swift_project_boxed_opaque_existential_1(&v70, v72);
            v43 = (*(v54 + 88))(v53, v54);
            __swift_destroy_boxed_opaque_existential_1(&v70);
          }

          else
          {
            v43 = *&v38;
          }

          *(v41 + 14) = v43;
          *(v41 + 22) = 2080;
          if (v2 >= 0x20)
          {
            v44 = 89;
          }

          else
          {
            v44 = 78;
          }

          if (v2 >= 0x20)
          {
            v45 = 2;
          }

          else
          {
            v45 = 0x202020101020002uLL >> (8 * v2);
          }

          v46 = sub_1D89AC714(v44, 0xE100000000000000, &v67);

          *(v41 + 24) = v46;
          *(v41 + 32) = 2080;
          v70 = v38;
          LOBYTE(v71) = v2;
          sub_1D881F4C0(v38, v2);
          v47 = sub_1D8B159E0();
          v49 = sub_1D89AC714(v47, v48, &v67);

          *(v41 + 34) = v49;
          *(v41 + 42) = 2080;
          LOBYTE(v70) = v45;
          v50 = sub_1D8B159E0();
          v52 = sub_1D89AC714(v50, v51, &v67);

          *(v41 + 44) = v52;
          _os_log_impl(&dword_1D8783000, log, v64, "[%ld] t=%f %s %s %s", v41, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v63, -1, -1);
          MEMORY[0x1DA721330](v41, -1, -1);
          sub_1D8997618(v38, v2);

          v35 = v61;
          v34 = v62;
        }

        else
        {

          sub_1D8997618(v38, v2);
        }

        ++v36;
        v37 += 16;
        if (v35 == v36)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_44:
      swift_once();
    }
  }

  v9 = v6[4];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = v7 + 40;
  v11 = v8 - 1;
  while (1)
  {
    if (v8 == v9)
    {
      v12 = v6[3];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_20;
      }

      v15 = v14 % v8;
    }

    else
    {
      v15 = 0;
    }

    v13 = __OFADD__(v15, v11);
    v16 = v15 + v11;
    if (v13)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v9 == -1 && v16 == 0x8000000000000000)
    {
      goto LABEL_21;
    }

    v17 = v16 % v9;
    if (v17 >= v8)
    {
      goto LABEL_19;
    }

    if ((*(v10 + 16 * v17) & 0xE0) == 0x40)
    {
      break;
    }

    if (--v11 == -1)
    {
      goto LABEL_14;
    }
  }

  sub_1D8AC1168(v11, &v70);

  sub_1D8997618(v70, v71);
}

Swift::Void __swiftcall CVTrackedDetection.updateWith(prediction:)(VisualIntelligenceCore::CVTrackedDetection::Prediction *prediction)
{
  bottomLeft = prediction->corners.bottomLeft;
  v5[2] = prediction->corners.topRight;
  v5[3] = bottomLeft;
  v5[4] = prediction->corners.bottomRight;
  timestamp = prediction->timestamp;
  topLeft = prediction->corners.topLeft;
  v5[0] = prediction->center;
  v5[1] = topLeft;
  sub_1D899210C(v5, *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_predictions), &v4);
}

void sub_1D8ACA44C()
{
  v73 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger);
  v3 = *(v2 + 24);
  v4 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);

  swift_beginAccess();
  v5 = v4[2];
  v6 = *(v5 + 16);
  if (!v6)
  {
    v74 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v7 = 0;
  v74 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    ++v7;
    while (1)
    {
      v9 = v4[4];
      if (v6 == v9)
      {
        v10 = v4[3];
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          goto LABEL_82;
        }

        if (!v6)
        {
          goto LABEL_83;
        }

        v13 = v12 % v6;
      }

      else
      {
        v13 = 0;
      }

      v11 = __OFADD__(v13, v7 - 1);
      v14 = v13 + v7 - 1;
      if (v11)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        sub_1D8B168C0();
        __break(1u);
        return;
      }

      if (!v9)
      {
        goto LABEL_79;
      }

      v15 = v9 == -1 && v14 == 0x8000000000000000;
      if (v15)
      {
        goto LABEL_84;
      }

      v16 = v14 % v9;
      if (v16 >= v6)
      {
        goto LABEL_80;
      }

      if (v7 - 1 >= v6)
      {
        goto LABEL_81;
      }

      v17 = v5 + 16 * v16;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      if (v19 >> 5 <= 1)
      {
        v8 = *(v17 + 32);
        goto LABEL_5;
      }

      if (v19 >> 5 != 2)
      {
        v8 = *(v17 + 32);
LABEL_5:
        if (v3 < v8)
        {
          break;
        }

        goto LABEL_6;
      }

      switch(v18 >> 60)
      {
        case 1uLL:
          v34 = type metadata accessor for GroundedParseDetectorResult(0);
          v21 = swift_projectBox();
          v76 = v34;
          v77 = sub_1D8ACE3B0(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_35;
        case 2uLL:
          v29 = type metadata accessor for MetaDetectionResult(0);
          v21 = swift_projectBox();
          v76 = v29;
          v77 = sub_1D8ACE3B0(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for MetaDetectionResult;
          goto LABEL_35;
        case 3uLL:
        case 8uLL:
          v20 = type metadata accessor for ObjectDetectorResult(0);
          v21 = swift_projectBox();
          v76 = v20;
          v77 = sub_1D8ACE3B0(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_35;
        case 4uLL:
          v35 = type metadata accessor for ParseDetectorResult(0);
          v21 = swift_projectBox();
          v76 = v35;
          v77 = sub_1D8ACE3B0(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for ParseDetectorResult;
          goto LABEL_35;
        case 5uLL:
          v36 = type metadata accessor for TextDetectorResult(0);
          v21 = swift_projectBox();
          v76 = v36;
          v77 = sub_1D8ACE3B0(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for TextDetectorResult;
          goto LABEL_35;
        case 6uLL:
        case 7uLL:
          v24 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v21 = swift_projectBox();
          v76 = v24;
          v77 = sub_1D8ACE3B0(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_35;
        case 9uLL:
        case 0xAuLL:
          v25 = swift_projectBox();
          v26 = v72;
          sub_1D8ACE44C(v25, v72, type metadata accessor for AFMResult);
          v76 = v73;
          v77 = sub_1D8ACE3B0(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v27 = __swift_allocate_boxed_opaque_existential_1(v75);
          sub_1D8ACF310(v26, v27, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v28 = type metadata accessor for SyntheticDetectionResult(0);
          v21 = swift_projectBox();
          v76 = v28;
          v77 = sub_1D8ACE3B0(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_35;
        case 0xCuLL:
          v30 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v21 = swift_projectBox();
          v76 = v30;
          v77 = sub_1D8ACE3B0(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_35;
        case 0xDuLL:
          v37 = type metadata accessor for GroundedParseClassificationsResult(0);
          v21 = swift_projectBox();
          v76 = v37;
          v77 = sub_1D8ACE3B0(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
          v23 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_35:
          sub_1D8ACE44C(v21, boxed_opaque_existential_1, v23);
          break;
        default:
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v32 = swift_projectBox();
          v76 = v31;
          v77 = sub_1D8906184();
          v33 = __swift_allocate_boxed_opaque_existential_1(v75);
          sub_1D87A0E38(v32, v33, &qword_1ECA67750, &unk_1D8B1E0C0);
          break;
      }

      v39 = v76;
      v38 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      v40 = *(v38 + 88);

      v41 = v40(v39, v38);
      __swift_destroy_boxed_opaque_existential_1(v75);
      if (v3 < v41)
      {
        break;
      }

LABEL_6:
      sub_1D8997618(v18, v19);
      v5 = v4[2];
      v6 = *(v5 + 16);
      v15 = v7++ == v6;
      if (v15)
      {
        goto LABEL_44;
      }
    }

    v42 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D87F4F90(0, *(v42 + 16) + 1, 1);
      v42 = v78;
    }

    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1D87F4F90((v44 > 1), v45 + 1, 1);
      v42 = v78;
    }

    *(v42 + 16) = v45 + 1;
    v74 = v42;
    v46 = v42 + 16 * v45;
    *(v46 + 32) = v18;
    *(v46 + 40) = v19;
    v5 = v4[2];
    v6 = *(v5 + 16);
    if (v6 != v7)
    {
      continue;
    }

    break;
  }

LABEL_44:

  v47 = *(v74 + 16);
  v48 = (v74 + 40);
  if (v47)
  {
    v49 = 0;
    v50 = (v74 + 40);
    while (1)
    {
      v51 = *v50;
      v50 += 16;
      if (v51 < 0x20)
      {
        break;
      }

      if (v47 == ++v49)
      {
        goto LABEL_48;
      }
    }

    v47 = v49;
    if (v49)
    {
LABEL_55:
      while (2)
      {
        v53 = *(v48 - 1);
        v54 = *v48;
        v55 = v54 >> 5;
        if (v54 >> 5 <= 1)
        {
          if (v55)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v55 == 2)
          {
            v78 = *(v48 - 1);
            CVDetection.detection.getter(v75);
            v59 = v76;
            v60 = v77;
            __swift_project_boxed_opaque_existential_1(v75, v76);
            v61 = *(v60 + 88);

            v56 = v61(v59, v60);
            __swift_destroy_boxed_opaque_existential_1(v75);
            v57 = 1060320051;
LABEL_62:
            v58 = *&v57;
          }

          else
          {
            if (v55 != 3)
            {
              v56 = *(v48 - 1);
              v57 = 1051931443;
              goto LABEL_62;
            }

LABEL_60:
            v56 = *(v48 - 1);
            v58 = 0.5;
          }

          v62 = *(v2 + 24);
          if (v62 > v56)
          {
            goto LABEL_85;
          }

          v63 = log10f(v58 / (1.0 - v58));
          if (v62 == -INFINITY)
          {
            sub_1D8997618(v53, v54);
            v64 = 0.0;
          }

          else
          {
            if ((*(v2 + 48) & 1) == 0)
            {
              goto LABEL_85;
            }

            sub_1D8997618(v53, v54);
            v65 = *(v2 + 56);
            v66 = 0.0;
            if (v65 > 0.0)
            {
              v67 = v65;
              v66 = (*(v2 + 40) - *(v2 + 44)) / v67;
            }

            v68 = v56 - v62;
            v64 = v66 * v68;
          }

          *(v2 + 24) = v56;
          v69 = (v63 - v64) + *(v2 + 16);
          v71 = *(v2 + 40);
          v70 = *(v2 + 44);
          if (v69 >= v71)
          {
            v69 = *(v2 + 40);
          }

          if (v69 <= v70)
          {
            v69 = *(v2 + 44);
          }

          *(v2 + 16) = v69;
          if (v71 <= v69)
          {
            v52 = 0;
            goto LABEL_53;
          }

          if (v69 <= v70)
          {
            v52 = 1;
LABEL_53:
            *(v2 + 64) = v52;
          }
        }

        v48 += 16;
        if (!--v47)
        {
          break;
        }

        continue;
      }
    }
  }

  else
  {
LABEL_48:
    if (v47)
    {
      goto LABEL_55;
    }
  }
}

double CVTrackedDetection.hash(into:)(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  return result;
}

uint64_t CVTrackedDetection.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
  v2 = sub_1D8B13240();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CVTrackedDetection.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
  v2 = sub_1D8B13240();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t CVTrackedDetection.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D8ACB140()
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

double sub_1D8ACB1E0(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  return result;
}

uint64_t sub_1D8ACB268(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D8ACE3B0(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

double sub_1D8ACB37C@<D0>(_BYTE *a1@<X8>)
{
  v3 = sub_1D8AC0E90(*(*v1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
  sub_1D891FD78(v3, a1);

  return result;
}

uint64_t sub_1D8ACB400@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
  v5 = sub_1D8B13240();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1D8ACB47C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D3E4(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_1D8B16B30();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = v13[16];
          v15 = *(v13 + 7);
          v16 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 8) = v14;
          *v13 = v11;
          *(v13 + 1) = v15;
          *(v13 + 1) = v16;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA690E8, &unk_1D8B3E580);
      v7 = sub_1D8B15D60();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    sub_1D8ACC078(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

uint64_t sub_1D8ACB5F4(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

void sub_1D8ACB6B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D448(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  v4 = sub_1D8B16B30();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 112;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 11) >= *v12)
          {
            break;
          }

          v13 = v12 - 80;
          v14 = *(v12 + 24);
          v27 = *(v12 + 8);
          v28 = v14;
          v15 = *(v12 + 40);
          v16 = *(v12 + 56);
          v17 = *(v12 + 72);
          v32 = *(v12 + 11);
          v30 = v16;
          v31 = v17;
          v29 = v15;
          *(v12 + 11) = *v12;
          v18 = *(v12 - 2);
          *(v12 + 72) = *(v12 - 1);
          v19 = *(v12 - 4);
          v20 = *(v12 - 3);
          *(v12 + 56) = v18;
          *(v12 + 40) = v20;
          *(v12 + 8) = *(v12 - 5);
          *(v12 + 24) = v19;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v31;
          *v12 = v32;
          *(v13 + 3) = v23;
          *(v13 + 4) = v24;
          *(v13 + 2) = v22;
          v12 -= 88;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 88;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D8B15D60();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    sub_1D8ACCF9C(&v27, v26, v33, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D8ACB860(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
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
        type metadata accessor for StreamingBarcodeDetectorResult(0);
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StreamingBarcodeDetectorResult(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D8ACC650(v8, v9, a1, v4, type metadata accessor for StreamingBarcodeDetectorResult, type metadata accessor for StreamingBarcodeDetectorResult, type metadata accessor for StreamingBarcodeDetectorResult, type metadata accessor for StreamingBarcodeDetectorResult, type metadata accessor for StreamingBarcodeDetectorResult, sub_1D885CE9C);
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
    sub_1D8ACBE3C(0, v2, 1, a1, type metadata accessor for StreamingBarcodeDetectorResult, type metadata accessor for StreamingBarcodeDetectorResult, type metadata accessor for StreamingBarcodeDetectorResult, type metadata accessor for StreamingBarcodeDetectorResult);
  }
}

void sub_1D8ACBA54(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
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
        type metadata accessor for GroundedParseDetectorResult(0);
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for GroundedParseDetectorResult(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D8ACC650(v8, v9, a1, v4, type metadata accessor for GroundedParseDetectorResult, type metadata accessor for GroundedParseDetectorResult, type metadata accessor for GroundedParseDetectorResult, type metadata accessor for GroundedParseDetectorResult, type metadata accessor for GroundedParseDetectorResult, sub_1D885CEB4);
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
    sub_1D8ACBE3C(0, v2, 1, a1, type metadata accessor for GroundedParseDetectorResult, type metadata accessor for GroundedParseDetectorResult, type metadata accessor for GroundedParseDetectorResult, type metadata accessor for GroundedParseDetectorResult);
  }
}

void sub_1D8ACBC48(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
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
        type metadata accessor for ParseDetectorResult(0);
        v6 = sub_1D8B15D60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ParseDetectorResult(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D8ACC650(v8, v9, a1, v4, type metadata accessor for ParseDetectorResult, type metadata accessor for ParseDetectorResult, type metadata accessor for ParseDetectorResult, type metadata accessor for ParseDetectorResult, type metadata accessor for ParseDetectorResult, sub_1D885CECC);
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
    sub_1D8ACBE3C(0, v2, 1, a1, type metadata accessor for ParseDetectorResult, type metadata accessor for ParseDetectorResult, type metadata accessor for ParseDetectorResult, type metadata accessor for ParseDetectorResult);
  }
}

uint64_t sub_1D8ACBE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v45 = a8;
  v46 = a6;
  v47 = a7;
  v12 = a5(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v37 - v21;
  v39 = a2;
  if (a3 != a2)
  {
    v23 = *(v20 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v44 = *a4;
    v38 = v23;
    v27 = v44 + v23 * a3;
LABEL_5:
    v42 = v24;
    v43 = a3;
    v40 = v27;
    v41 = v26;
    v28 = v26;
    v29 = v24;
    while (1)
    {
      v30 = v46;
      sub_1D8ACE44C(v27, v22, v46);
      sub_1D8ACE44C(v29, v18, v30);
      v31 = *(v12 + 36);
      v32 = *&v18[v31];
      v33 = *&v22[v31];
      v34 = v47;
      sub_1D8ACF23C(v18, v47);
      result = sub_1D8ACF23C(v22, v34);
      if (v32 >= v33)
      {
LABEL_4:
        a3 = v43 + 1;
        v24 = v42 + v38;
        v26 = v41 - 1;
        v27 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v35 = v45;
      sub_1D8ACF310(v27, v15, v45);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D8ACF310(v15, v29, v35);
      v29 += v25;
      v27 += v25;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D8ACC078(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1D885CC68(v7);
    }

    v86 = v7 + 16;
    v87 = *(v7 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v7[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1D8ACD5CC((*a3 + 24 * *v88), (*a3 + 24 * *v90), *a3 + 24 * v91, v95);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v93 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 8);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 6;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *(v21 + 1);
            v26 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v26;
            *(v22 - 16) = v23;
            *(v22 - 1) = v25;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D87C7C5C(0, *(v7 + 2) + 1, 1, v7);
    }

    v39 = *(v7 + 2);
    v38 = *(v7 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v7 = sub_1D87C7C5C((v38 > 1), v39 + 1, 1, v7);
    }

    *(v7 + 2) = v40;
    v41 = v7 + 32;
    v42 = &v7[16 * v39 + 32];
    *v42 = v8;
    *(v42 + 1) = v6;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v7 + 4);
          v45 = *(v7 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v7[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v41[16 * v43];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v70 = &v7[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = &v41[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = &v41[16 * v43 - 16];
        v82 = *v81;
        v83 = &v41[16 * v43];
        v84 = *(v83 + 1);
        sub_1D8ACD5CC((*a3 + 24 * *v81), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v43 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *(v7 + 2);
        if (v43 >= v85)
        {
          goto LABEL_101;
        }

        v40 = v85 - 1;
        memmove(&v41[16 * v43], v83 + 16, 16 * (v85 - 1 - v43));
        *(v7 + 2) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v41[16 * v40];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v7[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v41[16 * v43];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v93;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 8);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 + 8) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *(v33 + 36);
    v36 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v34;
    *(v33 + 8) = v31;
    *(v33 + 12) = v35;
    *(v33 + 16) = v36;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_1D8ACC650(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void), uint64_t (*a9)(void), void (*a10)(unint64_t *, unint64_t *, unint64_t *))
{
  v142 = a8;
  v145 = a6;
  v146 = a7;
  v11 = v10;
  v128 = a1;
  v135 = a9;
  v136 = a10;
  v14 = (a5)(0, a2);
  v137 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v132 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v141 = &v124 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v143 = &v124 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v124 - v22;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_94:
    a4 = *v128;
    if (!*v128)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v26 = sub_1D885CC68(v26);
    }

    v147 = v26;
    v120 = *(v26 + 2);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *&v26[16 * v120];
        v122 = *&v26[16 * v120 + 24];
        sub_1D8ACD808(*a3 + *(v137 + 72) * v121, *a3 + *(v137 + 72) * *&v26[16 * v120 + 16], *a3 + *(v137 + 72) * v122, a4, v135, v145, v146, v136);
        if (v11)
        {
          goto LABEL_104;
        }

        if (v122 < v121)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1D885CC68(v26);
        }

        if (v120 - 2 >= *(v26 + 2))
        {
          goto LABEL_120;
        }

        v123 = &v26[16 * v120];
        *v123 = v121;
        *(v123 + 1) = v122;
        v147 = v26;
        sub_1D885CBDC(v120 - 1);
        v26 = v147;
        v120 = *(v147 + 2);
        if (v120 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v144 = v21;
  v126 = a4;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v134 = &v124 - v22;
  while (1)
  {
    v27 = v25;
    if (v25 + 1 >= v24)
    {
      v39 = v25 + 1;
    }

    else
    {
      v139 = *a3;
      v28 = v139;
      v140 = v24;
      v29 = *(v137 + 72);
      a4 = v139 + v29 * (v25 + 1);
      v30 = v145;
      sub_1D8ACE44C(a4, v23, v145);
      v31 = v28 + v29 * v25;
      v32 = v143;
      sub_1D8ACE44C(v31, v143, v30);
      v33 = *(v144 + 36);
      v34 = *(v32 + v33);
      v35 = *&v23[v33];
      v36 = v146;
      sub_1D8ACF23C(v32, v146);
      sub_1D8ACF23C(v23, v36);
      v127 = v25;
      v37 = v25 + 2;
      v138 = v29;
      v38 = v139 + v29 * (v25 + 2);
      while (1)
      {
        v39 = v140;
        if (v140 == v37)
        {
          break;
        }

        LODWORD(v139) = v34 < v35;
        v40 = v134;
        v41 = v11;
        v42 = a3;
        v43 = v26;
        v44 = v145;
        sub_1D8ACE44C(v38, v134, v145);
        v45 = v143;
        sub_1D8ACE44C(a4, v143, v44);
        v46 = *(v144 + 36);
        v47 = *(v45 + v46);
        v48 = *(v40 + v46);
        v49 = v146;
        sub_1D8ACF23C(v45, v146);
        v50 = v49;
        v26 = v43;
        a3 = v42;
        v11 = v41;
        sub_1D8ACF23C(v40, v50);
        ++v37;
        v38 += v138;
        a4 += v138;
        if (((v139 ^ (v47 >= v48)) & 1) == 0)
        {
          v39 = v37 - 1;
          break;
        }
      }

      v23 = v134;
      v27 = v127;
      if (v34 < v35)
      {
        if (v39 < v127)
        {
          goto LABEL_123;
        }

        if (v127 < v39)
        {
          v124 = v26;
          v125 = v11;
          v51 = v138 * (v39 - 1);
          v52 = v39 * v138;
          v53 = v39;
          v54 = v127;
          v55 = v127 * v138;
          v129 = a3;
          do
          {
            if (v54 != --v39)
            {
              v56 = *a3;
              if (!v56)
              {
                goto LABEL_129;
              }

              a4 = v56 + v55;
              sub_1D8ACF310(v56 + v55, v132, v142);
              if (v55 < v51 || a4 >= v56 + v52)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v51)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D8ACF310(v132, v56 + v51, v142);
              a3 = v129;
            }

            ++v54;
            v51 -= v138;
            v52 -= v138;
            v55 += v138;
          }

          while (v54 < v39);
          v11 = v125;
          v26 = v124;
          v27 = v127;
          v39 = v53;
        }
      }
    }

    v57 = a3[1];
    if (v39 < v57)
    {
      if (__OFSUB__(v39, v27))
      {
        goto LABEL_122;
      }

      if (v39 - v27 < v126)
      {
        if (__OFADD__(v27, v126))
        {
          goto LABEL_124;
        }

        if (v27 + v126 >= v57)
        {
          v58 = a3[1];
        }

        else
        {
          v58 = v27 + v126;
        }

        if (v58 < v27)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v39 != v58)
        {
          break;
        }
      }
    }

    v25 = v39;
    if (v39 < v27)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1D87C7C5C(0, *(v26 + 2) + 1, 1, v26);
    }

    a4 = *(v26 + 2);
    v59 = *(v26 + 3);
    v60 = a4 + 1;
    if (a4 >= v59 >> 1)
    {
      v26 = sub_1D87C7C5C((v59 > 1), a4 + 1, 1, v26);
    }

    *(v26 + 2) = v60;
    v61 = &v26[16 * a4];
    *(v61 + 4) = v27;
    *(v61 + 5) = v25;
    v140 = *v128;
    if (!v140)
    {
      goto LABEL_131;
    }

    if (a4)
    {
      while (1)
      {
        a4 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v62 = *(v26 + 4);
          v63 = *(v26 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_110;
          }

          v78 = &v26[16 * v60];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_113;
          }

          v84 = &v26[16 * a4 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_117;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              a4 = v60 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v26[16 * v60];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_112;
        }

        v91 = &v26[16 * a4];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        v99 = a4 - 1;
        if (a4 - 1 >= v60)
        {
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
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v100 = *&v26[16 * v99 + 32];
        v101 = *&v26[16 * a4 + 40];
        sub_1D8ACD808(*a3 + *(v137 + 72) * v100, *a3 + *(v137 + 72) * *&v26[16 * a4 + 32], *a3 + *(v137 + 72) * v101, v140, v135, v145, v146, v136);
        if (v11)
        {
          goto LABEL_104;
        }

        if (v101 < v100)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1D885CC68(v26);
        }

        if (v99 >= *(v26 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v26[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v147 = v26;
        sub_1D885CBDC(a4);
        v26 = v147;
        v60 = *(v147 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v26[16 * v60 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v26[16 * v60];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v26[16 * a4 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_118;
        }

        if (v64 < v98)
        {
          a4 = v60 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v24 = a3[1];
    if (v25 >= v24)
    {
      goto LABEL_94;
    }
  }

  v124 = v26;
  v125 = v11;
  v129 = a3;
  v103 = *a3;
  v104 = *(v137 + 72);
  v105 = v103 + v104 * (v39 - 1);
  v106 = v27;
  v107 = -v104;
  v127 = v106;
  v108 = v106 - v39;
  v130 = v104;
  v131 = v58;
  a4 = v103 + v39 * v104;
LABEL_85:
  v139 = v105;
  v140 = v39;
  v133 = a4;
  v138 = v108;
  v109 = v108;
  v110 = v144;
  while (1)
  {
    v111 = v145;
    sub_1D8ACE44C(a4, v23, v145);
    v112 = v143;
    sub_1D8ACE44C(v105, v143, v111);
    v113 = *(v110 + 36);
    v114 = *(v112 + v113);
    v115 = *&v23[v113];
    v116 = v146;
    sub_1D8ACF23C(v112, v146);
    sub_1D8ACF23C(v23, v116);
    if (v114 >= v115)
    {
LABEL_84:
      v39 = v140 + 1;
      v25 = v131;
      v105 = v139 + v130;
      v108 = v138 - 1;
      a4 = v133 + v130;
      if (v140 + 1 != v131)
      {
        goto LABEL_85;
      }

      v11 = v125;
      a3 = v129;
      v26 = v124;
      v27 = v127;
      if (v131 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v103)
    {
      break;
    }

    v118 = v141;
    v117 = v142;
    sub_1D8ACF310(a4, v141, v142);
    v110 = v144;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D8ACF310(v118, v105, v117);
    v105 += v107;
    a4 += v107;
    if (__CFADD__(v109++, 1))
    {
      goto LABEL_84;
    }
  }

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
}