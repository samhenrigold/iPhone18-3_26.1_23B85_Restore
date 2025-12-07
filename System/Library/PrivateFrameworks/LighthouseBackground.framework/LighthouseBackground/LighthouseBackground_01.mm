BOOL sub_1DF16E528(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a2;
  v21[1] = a3;
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v21 - v13);
  v15 = *a1;
  v16 = a1[1];
  *v14 = v15;
  v14[1] = v16;
  sub_1DF17A6A8(v21[0], v21 + *(v9 + 56) - v13, &qword_1ECE0CBA8, &qword_1DF22CF80);
  sub_1DF17A6A8(v14, v12, &qword_1ECE0CBC0, &qword_1DF22CF98);

  v17 = &v12[*(v9 + 56)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  sub_1DF1657C8(*(v17 + *(v18 + 48)), *(v17 + *(v18 + 48) + 8));
  v19 = type metadata accessor for KVDatastore.MetadataType(0);
  (*(v5 + 16))(v7, v17 + *(v19 + 20), v4);
  sub_1DF169620(v17);
  sub_1DF1792F4(&qword_1ECE0C720, MEMORY[0x1E6969548]);
  LOBYTE(v17) = sub_1DF22AC50();
  (*(v5 + 8))(v7, v4);
  sub_1DF16184C(v14, &qword_1ECE0CBC0, &qword_1DF22CF98);
  return (v17 & 1) == 0;
}

BOOL sub_1DF16E790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a2;
  v20[1] = a3;
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v20 - v13);
  v15 = *a1;
  v16 = a1[1];
  *v14 = v15;
  v14[1] = v16;
  sub_1DF17A6A8(v20[0], v20 + *(v9 + 56) - v13, &qword_1ECE0CBB0, &qword_1DF22CF88);
  sub_1DF17A6A8(v14, v12, &qword_1ECE0CBB8, &qword_1DF22CF90);

  v17 = &v12[*(v9 + 56)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);

  v18 = type metadata accessor for KVDatastore.MetadataType(0);
  (*(v5 + 16))(v7, v17 + *(v18 + 20), v4);
  sub_1DF169620(v17);
  sub_1DF1792F4(&qword_1ECE0C720, MEMORY[0x1E6969548]);
  LOBYTE(v17) = sub_1DF22AC50();
  (*(v5 + 8))(v7, v4);
  sub_1DF16184C(v14, &qword_1ECE0CBB8, &qword_1DF22CF90);
  return (v17 & 1) == 0;
}

uint64_t sub_1DF16E9F4()
{
  swift_beginAccess();
  if (!*(*(v0 + 112) + 16))
  {
    swift_beginAccess();
    if (!*(*(v0 + 120) + 16))
    {
      return 0;
    }
  }

  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 112) = MEMORY[0x1E69E7CC8];

  v2 = 1;
  swift_beginAccess();
  *(v0 + 120) = v1;

  return v2;
}

uint64_t sub_1DF16EAA4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v82 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v82 - v10;
  swift_beginAccess();
  v12 = *(v3 + 112);
  if (!*(v12 + 16))
  {
    swift_beginAccess();
    if (!*(*(v3 + 120) + 16))
    {
      return 0;
    }
  }

  v13 = HIBYTE(a2) & 0xF;
  v83 = a1;
  v84 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    return 0;
  }

  v86 = v8;
  v87 = v11;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  v88 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v20 = v19;
    if (!v16)
    {
      break;
    }

LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = (*(v12 + 48) + ((v19 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];

    if (sub_1DF16F300(v83, v84, v24, v23))
    {
      v25 = v88;
      result = swift_isUniquelyReferenced_nonNull_native();
      v92 = v25;
      if ((result & 1) == 0)
      {
        result = sub_1DF160D10(0, *(v25 + 16) + 1, 1);
        v25 = v92;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v88 = v27 + 1;
        result = sub_1DF160D10((v26 > 1), v27 + 1, 1);
        v28 = v88;
        v25 = v92;
      }

      *(v25 + 16) = v28;
      v88 = v25;
      v29 = v25 + 16 * v27;
      *(v29 + 32) = v24;
      *(v29 + 40) = v23;
    }

    else
    {
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v12 + 64 + 8 * v19);
    ++v20;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  v31 = v87;
  v30 = v88;
  v32 = *(v88 + 16);
  v89 = v3;
  if (!v32)
  {
LABEL_29:

    swift_beginAccess();
    v47 = *(v3 + 120);
    v48 = 1 << *(v47 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v47 + 64);
    v51 = (v48 + 63) >> 6;

    v52 = 0;
    v88 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v53 = v52;
    v55 = v83;
    v54 = v84;
    if (!v50)
    {
      goto LABEL_34;
    }

    do
    {
      v52 = v53;
LABEL_37:
      v56 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v57 = (*(v47 + 48) + ((v52 << 10) | (16 * v56)));
      v59 = *v57;
      v58 = v57[1];

      if (sub_1DF16F300(v55, v54, v59, v58))
      {
        v60 = v88;
        result = swift_isUniquelyReferenced_nonNull_native();
        v91 = v60;
        if ((result & 1) == 0)
        {
          result = sub_1DF160D10(0, *(v60 + 16) + 1, 1);
          v60 = v91;
        }

        v62 = *(v60 + 16);
        v61 = *(v60 + 24);
        v63 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v88 = v62 + 1;
          result = sub_1DF160D10((v61 > 1), v62 + 1, 1);
          v63 = v88;
          v60 = v91;
        }

        *(v60 + 16) = v63;
        v88 = v60;
        v64 = v60 + 16 * v62;
        *(v64 + 32) = v59;
        *(v64 + 40) = v58;
        goto LABEL_32;
      }

      v53 = v52;
    }

    while (v50);
LABEL_34:
    while (1)
    {
      v52 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_57;
      }

      if (v52 >= v51)
      {

        v65 = v88;
        v66 = *(v88 + 16);
        v67 = v86;
        if (!v66)
        {
LABEL_54:

          return 1;
        }

        v68 = 0;
        v69 = (v88 + 40);
        v87 = *(v88 + 16);
        while (v68 < *(v65 + 16))
        {
          v72 = *(v69 - 1);
          v71 = *v69;
          swift_beginAccess();

          v73 = sub_1DF175254(v72, v71);
          if (v74)
          {
            v75 = v73;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = *(v3 + 120);
            v90 = v77;
            *(v3 + 120) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1DF175E10(&qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
              v77 = v90;
            }

            v78 = *(v77 + 56);
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
            v80 = *(v79 - 8);
            v81 = v78 + *(v80 + 72) * v75;
            v67 = v86;
            sub_1DF17A710(v81, v86, &qword_1ECE0CBB0, &qword_1DF22CF88);
            sub_1DF175BCC(v75, v77, &qword_1ECE0CBB0, &qword_1DF22CF88);
            v3 = v89;
            *(v89 + 120) = v77;

            (*(v80 + 56))(v67, 0, 1, v79);
            v66 = v87;
            v65 = v88;
          }

          else
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
            (*(*(v70 - 8) + 56))(v67, 1, 1, v70);
          }

          ++v68;
          sub_1DF16184C(v67, &qword_1ECE0CBE8, &qword_1DF22CFC0);
          swift_endAccess();

          v69 += 2;
          if (v66 == v68)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_59;
      }

      v50 = *(v47 + 64 + 8 * v52);
      ++v53;
      if (v50)
      {
        goto LABEL_37;
      }
    }
  }

  v33 = 0;
  v34 = (v88 + 40);
  v85 = v32;
  while (v33 < *(v30 + 16))
  {
    v37 = *(v34 - 1);
    v36 = *v34;
    swift_beginAccess();

    v38 = sub_1DF175254(v37, v36);
    if (v39)
    {
      v40 = v38;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v3 + 112);
      v91 = v42;
      *(v3 + 112) = 0x8000000000000000;
      if (!v41)
      {
        sub_1DF175E10(&qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
        v42 = v91;
      }

      v43 = *(v42 + 56);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      v45 = *(v44 - 8);
      v46 = v43 + *(v45 + 72) * v40;
      v31 = v87;
      sub_1DF17A710(v46, v87, &qword_1ECE0CBA8, &qword_1DF22CF80);
      sub_1DF175BCC(v40, v42, &qword_1ECE0CBA8, &qword_1DF22CF80);
      v3 = v89;
      *(v89 + 112) = v42;

      (*(v45 + 56))(v31, 0, 1, v44);
      v30 = v88;
      v32 = v85;
    }

    else
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
    }

    ++v33;
    sub_1DF16184C(v31, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    swift_endAccess();

    v34 += 2;
    if (v32 == v33)
    {
      goto LABEL_29;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1DF16F300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1DF22AD60();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1DF22AD60();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1DF22B620();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1DF22AD60();
      v7 = v9;
    }

    while (v9);
  }

  sub_1DF22AD60();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1DF16F45C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - v13 + 16;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v26 - v16 + 16;
  swift_beginAccess();
  if (*(*(v5 + 112) + 16) || (swift_beginAccess(), *(*(v5 + 120) + 16)))
  {
    v18 = sub_1DF16C5DC(a1, a2, a3, a4, v26);
    if (v6)
    {
      *a5 = v26[0];
    }

    else
    {
      v20 = v18;
      v21 = v19;
      swift_beginAccess();
      sub_1DF175524(v20, v21, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v17);
      swift_endAccess();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      if ((*(*(v22 - 8) + 48))(v17, 1, v22) == 1)
      {
        sub_1DF16184C(v17, &qword_1ECE0CBE0, &qword_1DF22CFB8);
        swift_beginAccess();
        sub_1DF175524(v20, v21, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v14);
        swift_endAccess();

        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
        LOBYTE(v5) = (*(*(v23 - 8) + 48))(v14, 1, v23) != 1;
        sub_1DF16184C(v14, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      }

      else
      {

        sub_1DF16184C(v17, &qword_1ECE0CBE0, &qword_1DF22CFB8);
        LOBYTE(v5) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DF16F788@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, char *a6@<X8>)
{
  v42 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v41 - v14 + 16;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v41 - v17 + 16;
  swift_beginAccess();
  if (!*(*(v6 + 112) + 16))
  {
    result = swift_beginAccess();
    if (!*(*(v6 + 120) + 16))
    {
      v30 = 2;
      goto LABEL_14;
    }
  }

  result = sub_1DF16C5DC(a1, a2, a3, a4, v41);
  if (v7)
  {
    *a5 = v41[0];
    return result;
  }

  v21 = result;
  v22 = v20;
  v23 = *(v6 + 112);
  if (!*(v23 + 16))
  {
LABEL_10:
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
    sub_1DF16184C(v18, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    swift_beginAccess();
    v32 = *(v6 + 120);
    if (*(v32 + 16) && (, v33 = sub_1DF175254(v21, v22), v35 = v34, , (v35 & 1) != 0))
    {
      v36 = *(v32 + 56);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      v38 = *(v37 - 8);
      sub_1DF17A6A8(v36 + *(v38 + 72) * v33, v15, &qword_1ECE0CBB0, &qword_1DF22CF88);

      v30 = 1;
      (*(v38 + 56))(v15, 0, 1, v37);
      result = sub_1DF16184C(v15, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    }

    else
    {

      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
      result = sub_1DF16184C(v15, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      v30 = 2;
    }

    goto LABEL_14;
  }

  v24 = sub_1DF175254(v21, v22);
  if ((v25 & 1) == 0)
  {

    goto LABEL_10;
  }

  v26 = v24;

  v27 = *(v23 + 56);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v29 = *(v28 - 8);
  sub_1DF17A6A8(v27 + *(v29 + 72) * v26, v18, &qword_1ECE0CBA8, &qword_1DF22CF80);

  (*(v29 + 56))(v18, 0, 1, v28);
  result = sub_1DF16184C(v18, &qword_1ECE0CBE0, &qword_1DF22CFB8);
  v30 = 0;
LABEL_14:
  *v42 = v30;
  return result;
}

uint64_t sub_1DF16FC04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  v17 = type metadata accessor for KVDatastore.MetadataType(0);
  v64 = *(v17 - 8);
  v65 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v62 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v61 = &v58 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  swift_beginAccess();
  if (*(*(v6 + 112) + 16) || (swift_beginAccess(), *(*(v6 + 120) + 16)))
  {
    v27 = v68;
    result = sub_1DF16C5DC(a1, a2, a3, a4, v67);
    if (v27)
    {
      *a5 = v67[0];
      return result;
    }

    v30 = result;
    v31 = v29;
    v68 = 0;
    v32 = *(v6 + 112);
    if (*(v32 + 16))
    {
      v60 = v6;

      v33 = sub_1DF175254(v30, v31);
      if (v34)
      {
        v35 = v33;
        v59 = *(v32 + 56);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
        v37 = *(v36 - 8);
        sub_1DF17A6A8(v59 + *(v37 + 72) * v35, v16, &qword_1ECE0CBA8, &qword_1DF22CF80);

        (*(v37 + 56))(v16, 0, 1, v36);
      }

      else
      {

        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
        (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
      }

      v6 = v60;
    }

    else
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      (*(*(v40 - 8) + 56))(v16, 1, 1, v40);
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    if ((*(*(v42 - 8) + 48))(v16, 1, v42))
    {
      sub_1DF16184C(v16, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      swift_beginAccess();
      v43 = *(v6 + 120);
      if (*(v43 + 16) && (, v44 = sub_1DF175254(v30, v31), v46 = v45, , (v46 & 1) != 0))
      {
        v47 = *(v43 + 56);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
        v49 = *(v48 - 8);
        v50 = v47 + *(v49 + 72) * v44;
        v51 = v63;
        sub_1DF17A6A8(v50, v63, &qword_1ECE0CBB0, &qword_1DF22CF88);

        (*(v49 + 56))(v51, 0, 1, v48);
      }

      else
      {

        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
        v51 = v63;
        (*(*(v53 - 8) + 56))(v63, 1, 1, v53);
      }

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      v55 = (*(*(v54 - 8) + 48))(v51, 1, v54);
      v39 = v66;
      if (v55)
      {
        sub_1DF16184C(v51, &qword_1ECE0CBE8, &qword_1DF22CFC0);
        v38 = 1;
        return (*(v64 + 56))(v39, v38, 1, v65);
      }

      v56 = v62;
      sub_1DF17A5D8(v51, v62, type metadata accessor for KVDatastore.MetadataType);
      sub_1DF16184C(v51, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      v57 = v61;
      sub_1DF17A640(v56, v61, type metadata accessor for KVDatastore.MetadataType);
      v52 = v57;
    }

    else
    {

      sub_1DF17A5D8(v16, v24, type metadata accessor for KVDatastore.MetadataType);
      sub_1DF16184C(v16, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      sub_1DF17A640(v24, v26, type metadata accessor for KVDatastore.MetadataType);
      v52 = v26;
      v39 = v66;
    }

    sub_1DF17A640(v52, v39, type metadata accessor for KVDatastore.MetadataType);
    v38 = 0;
    return (*(v64 + 56))(v39, v38, 1, v65);
  }

  v38 = 1;
  v39 = v66;
  return (*(v64 + 56))(v39, v38, 1, v65);
}

uint64_t sub_1DF1702FC(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  swift_beginAccess();
  if (!*(*(v3 + 112) + 16))
  {
    swift_beginAccess();
    if (!*(*(v3 + 120) + 16))
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  if (!a2)
  {
    return sub_1DF169E7C();
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return sub_1DF169E7C();
  }

  sub_1DF17924C();
  if (sub_1DF22B1D0())
  {
    *a3 = 1;
    sub_1DF1792A0();
    return swift_willThrowTypedImpl();
  }

  else
  {
    result = sub_1DF169E7C();
    v9 = result;
    v10 = *(result + 16);
    if (v10)
    {
      v11 = 0;
      v12 = result + 40;
      v25 = MEMORY[0x1E69E7CC0];
      v23 = result + 40;
      do
      {
        v13 = (v12 + 16 * v11);
        v14 = v11;
        while (1)
        {
          if (v14 >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          v16 = *(v13 - 1);
          v15 = *v13;
          v11 = v14 + 1;

          if (sub_1DF16F300(a1, a2, v16, v15))
          {
            break;
          }

          v13 += 2;
          ++v14;
          if (v10 == v11)
          {
            goto LABEL_25;
          }
        }

        v17 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v25;
        if ((result & 1) == 0)
        {
          result = sub_1DF160D10(0, *(v25 + 16) + 1, 1);
          v17 = v25;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v26 = v19 + 1;
          v22 = *(v17 + 16);
          result = sub_1DF160D10((v18 > 1), v19 + 1, 1);
          v19 = v22;
          v20 = v26;
          v17 = v24;
        }

        *(v17 + 16) = v20;
        v25 = v17;
        v21 = v17 + 16 * v19;
        *(v21 + 32) = v16;
        *(v21 + 40) = v15;
        v12 = v23;
      }

      while (v10 - 1 != v14);
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

LABEL_25:

    return v25;
  }
}

char *sub_1DF170564(char *a1, unint64_t a2, char *a3, char *a4, int a5, _BYTE *a6)
{
  v65 = a6;
  v66 = a1;
  v63 = a5;
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v6 = sub_1DF22A800();
  v61 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v64 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v27 = v71;
  v28 = sub_1DF16C5DC(v66, v67, v68, v69, v70);
  if (!v27)
  {
    v65 = v29;
    v66 = v24;
    v67 = v21;
    v68 = v11;
    v69 = v9;
    v59 = v17;
    v60 = v15;
    v30 = v12;
    v31 = v61;
    v32 = v28;
    v71 = 0;
    v33 = v62;
    if (v63)
    {
      swift_beginAccess();
      v34 = v66;
      sub_1DF175524(v32, v65, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v66);
      swift_endAccess();

      v35 = v64;
    }

    else
    {
      swift_beginAccess();
      v36 = *(v33 + 112);
      v34 = v66;
      if (*(v36 + 16) && (, v37 = sub_1DF175254(v32, v65), v39 = v38, , (v39 & 1) != 0))
      {
        v35 = v64;
        sub_1DF17A6A8(*(v36 + 56) + *(v64 + 72) * v37, v34, &qword_1ECE0CBA8, &qword_1DF22CF80);

        (*(v35 + 56))(v34, 0, 1, v30);
      }

      else
      {

        v35 = v64;
        (*(v64 + 56))(v34, 1, 1, v30);
      }
    }

    v40 = v34;
    v41 = v26;
    sub_1DF17A710(v40, v26, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    v42 = v67;
    sub_1DF17A6A8(v26, v67, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    v43 = *(v35 + 48);
    v66 = v30;
    v44 = v43(v42, 1, v30);
    v45 = v6;
    v47 = v68;
    v46 = v69;
    if (v44 == 1)
    {
      sub_1DF16184C(v26, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      v48 = v42;
      v49 = &qword_1ECE0CBE0;
      v50 = &qword_1DF22CFB8;
    }

    else
    {
      v51 = v31;
      v52 = v42;
      v53 = v59;
      sub_1DF17A710(v52, v59, &qword_1ECE0CBA8, &qword_1DF22CF80);
      v54 = v60;
      sub_1DF17A6A8(v53, v60, &qword_1ECE0CBA8, &qword_1DF22CF80);
      sub_1DF1657C8(*(v54 + *(v66 + 12)), *(v54 + *(v66 + 12) + 8));
      v55 = type metadata accessor for KVDatastore.MetadataType(0);
      (*(v31 + 16))(v47, v54 + *(v55 + 20), v45);
      sub_1DF169620(v54);
      sub_1DF22A7D0();
      v56 = sub_1DF22A780();
      v57 = *(v51 + 8);
      v57(v46, v45);
      v57(v47, v45);
      sub_1DF16184C(v41, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      if (v56)
      {
        sub_1DF17A710(v53, v54, &qword_1ECE0CBA8, &qword_1DF22CF80);
        v9 = *(v54 + *(v66 + 12));
        sub_1DF169620(v54);
        return v9;
      }

      v49 = &qword_1ECE0CBA8;
      v50 = &qword_1DF22CF80;
      v48 = v53;
    }

    sub_1DF16184C(v48, v49, v50);
    return 0;
  }

  *v65 = v70[0];
  return v9;
}

uint64_t sub_1DF170AFC(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, char a9, char *a10)
{
  v12 = v10;
  v89 = a7;
  v90 = a8;
  v93 = a6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v84 - v19;
  result = sub_1DF16C5DC(a1, a2, a3, a4, v92);
  if (v11)
  {
    *a10 = v92[0];
    return result;
  }

  v23 = result;
  v24 = v22;
  v86 = a5;
  v87 = a3;
  v25 = a4;
  v84 = 0;
  v85 = v20;
  v26 = v93;
  v27 = v89;
  if (a9)
  {
    v27 = 0xC0DDD92E56000000;
  }

  v88 = a10;
  v89 = v27;
  v28 = 4683;
  if ((a9 & 1) == 0)
  {
    v28 = v90;
  }

  v90 = v28;
  swift_beginAccess();
  v29 = v12;
  if (*(*(v12 + 112) + 16) && (, sub_1DF175254(v23, v24), v31 = v30, , (v31 & 1) != 0) || (swift_beginAccess(), *(*(v12 + 120) + 16)) && (, sub_1DF175254(v23, v24), v33 = v32, , (v33 & 1) != 0))
  {
    if (!*(*(v12 + 112) + 16) || (, sub_1DF175254(v23, v24), v35 = v34, , (v35 & 1) == 0))
    {

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v46 = sub_1DF22A8C0();
      __swift_project_value_buffer(v46, qword_1ED8E92C0);
      v47 = v25;

      v48 = sub_1DF22A8A0();
      v49 = sub_1DF22B0F0();

      v50 = os_log_type_enabled(v48, v49);
      v51 = v87;
      if (v50)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v91[0] = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_1DF160728(v51, v47, v91);
        _os_log_impl(&dword_1DF15A000, v48, v49, "Key already exists but is not accessible due wrong type (key: %s).", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x1E12D0B40](v53, -1, -1);
        MEMORY[0x1E12D0B40](v52, -1, -1);
      }

      v45 = 2;
      goto LABEL_58;
    }
  }

  if (sub_1DF22B770() & 1) != 0 || (sub_1DF22B770())
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v36 = sub_1DF22A8C0();
    __swift_project_value_buffer(v36, qword_1ED8E92C0);
    v37 = sub_1DF22A8A0();
    v38 = sub_1DF22B0F0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v91[0] = v40;
      *v39 = 136315138;
      v41 = sub_1DF22B760();
      v43 = sub_1DF160728(v41, v42, v91);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1DF15A000, v37, v38, "Invalid time to live: %s.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1E12D0B40](v40, -1, -1);
      MEMORY[0x1E12D0B40](v39, -1, -1);
    }

    v44 = v88;
    v45 = 4;
    goto LABEL_59;
  }

  v54 = v26;
  v55 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    v56 = v85;
    v57 = v86;
    if (!v55)
    {
      v58 = BYTE6(v54);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v56 = v85;
  v57 = v86;
  if (v55 != 2)
  {
    v58 = 0;
    goto LABEL_35;
  }

  v60 = *(v86 + 16);
  v59 = *(v86 + 24);
  v61 = __OFSUB__(v59, v60);
  v58 = v59 - v60;
  if (v61)
  {
    __break(1u);
LABEL_32:
    LODWORD(v58) = HIDWORD(v57) - v57;
    if (__OFSUB__(HIDWORD(v57), v57))
    {
      __break(1u);
      goto LABEL_61;
    }

    v58 = v58;
  }

LABEL_35:
  if (v58 < *(v29 + 136))
  {
    if (sub_1DF16C738(v57, v54))
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      v87 = (v56 + *(v62 + 48));
      v88 = v62;
      v63 = (v56 + *(type metadata accessor for KVDatastore.MetadataType(0) + 24));
      sub_1DF22A7D0();
      v64 = v56;
      v65 = v89;
      v66 = v90;
      sub_1DF22B750();
      sub_1DF22A760();
      *v63 = v65;
      v63[1] = v66;
      v68 = v87;
      v67 = v88;
      v69 = v93;
      *v87 = v57;
      v68[1] = v69;
      (*(*(v67 - 1) + 56))(v64, 0, 1);
      swift_beginAccess();
      sub_1DF16573C(v57, v69);
      sub_1DF167238(v64, v23, v24);
      return swift_endAccess();
    }

    if (qword_1ED8E7530 == -1)
    {
LABEL_45:
      v74 = sub_1DF22A8C0();
      __swift_project_value_buffer(v74, qword_1ED8E92C0);
      v71 = sub_1DF22A8A0();
      v75 = sub_1DF22B110();
      if (os_log_type_enabled(v71, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        v77 = "Database reached max size.";
        v78 = v75;
        v79 = v71;
        v80 = v76;
        v81 = 2;
LABEL_56:
        _os_log_impl(&dword_1DF15A000, v79, v78, v77, v80, v81);
        MEMORY[0x1E12D0B40](v76, -1, -1);
      }

LABEL_57:

      v45 = 3;
LABEL_58:
      v44 = v88;
LABEL_59:
      *v44 = v45;
      LOBYTE(v91[0]) = v45;
      sub_1DF1792A0();
      return swift_willThrowTypedImpl();
    }

LABEL_61:
    swift_once();
    goto LABEL_45;
  }

  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v70 = sub_1DF22A8C0();
  __swift_project_value_buffer(v70, qword_1ED8E92C0);
  sub_1DF16573C(v57, v54);
  v71 = sub_1DF22A8A0();
  v72 = sub_1DF22B0F0();
  if (!os_log_type_enabled(v71, v72))
  {
    sub_1DF1657C8(v57, v54);
    goto LABEL_57;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (v55 > 1)
  {
    if (v55 != 2)
    {
      v73 = 0;
      goto LABEL_55;
    }

    v83 = *(v57 + 16);
    v82 = *(v57 + 24);
    v61 = __OFSUB__(v82, v83);
    v73 = v82 - v83;
    if (!v61)
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  else if (!v55)
  {
    v73 = BYTE6(v54);
LABEL_55:
    *(result + 4) = v73;
    v76 = result;
    sub_1DF1657C8(v57, v54);
    v77 = "Invalid value size: %ld.";
    v78 = v72;
    v79 = v71;
    v80 = v76;
    v81 = 12;
    goto LABEL_56;
  }

  LODWORD(v73) = HIDWORD(v57) - v57;
  if (!__OFSUB__(HIDWORD(v57), v57))
  {
    v73 = v73;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF1712C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v65 = a6;
  v63 = a5;
  v68 = a3;
  v69 = a4;
  v66 = a1;
  v67 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_1DF22A800();
  v62 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  v25 = v71;
  result = sub_1DF16C5DC(v66, v67, v68, v69, v70);
  if (v25)
  {
    *v65 = v70[0];
    return result;
  }

  v67 = v8;
  v68 = result;
  v71 = v27;
  v57 = v22;
  v58 = v16;
  v59 = v14;
  v60 = v19;
  v28 = v62;
  v65 = v24;
  v66 = v15;
  v69 = 0;
  v29 = v64;
  swift_beginAccess();
  if (!*(*(v29 + 120) + 16) || (, sub_1DF175254(v68, v71), v31 = v30, , (v31 & 1) == 0) || (v32 = *(v29 + 120), !*(v32 + 16)) || (, v33 = sub_1DF175254(v68, v71), v35 = v34, , (v35 & 1) == 0))
  {

    return 0;
  }

  v36 = *(v32 + 56) + *(v58 + 72) * v33;
  v37 = v57;
  sub_1DF17A6A8(v36, v57, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v38 = v37;
  v39 = v65;
  sub_1DF17A710(v38, v65, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v40 = v60;
  sub_1DF17A6A8(v39, v60, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v41 = type metadata accessor for KVDatastore.MetadataType(0);
  v42 = v59;
  (*(v28 + 16))(v59, v40 + *(v41 + 20), v9);
  sub_1DF169620(v40);
  sub_1DF22A7D0();
  LOBYTE(v40) = sub_1DF22A780();
  v43 = *(v28 + 8);
  v43(v12, v9);
  result = (v43)(v42, v9);
  if ((v40 & 1) == 0)
  {
    sub_1DF16184C(v39, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v44 = *&v39[*(v66 + 48)];
  v45 = v44[3];
  v46 = v61;
  if (!v45)
  {
LABEL_16:
    sub_1DF16184C(v65, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v47 = 0;
  while (1)
  {
    if (v47 >= v45)
    {
      __break(1u);
      goto LABEL_24;
    }

    v48 = v44[4];
    v49 = v47 + v48 >= v44[2] ? v44[2] : 0;
    v50 = v67;
    sub_1DF17A6A8(v44 + ((*(v46 + 80) + 40) & ~*(v46 + 80)) + (v47 + v48 - v49) * *(v46 + 72), v67, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    sub_1DF1792F4(&qword_1ECE0C720, MEMORY[0x1E6969548]);
    v51 = sub_1DF22AC50();
    result = sub_1DF16184C(v50, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    if ((v51 & 1) == 0)
    {
      break;
    }

    ++v47;
    v45 = v44[3];
    if (v47 == v45)
    {
      goto LABEL_16;
    }
  }

  v52 = v65;
  v53 = v60;
  sub_1DF17A6A8(v65, v60, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v54 = *(*(v53 + *(v66 + 48)) + 24);

  v55 = __OFSUB__(v54, v47);
  v56 = v54 - v47;
  if (!v55)
  {
    sub_1DF169620(v53);
    sub_1DF16184C(v52, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return v56;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DF17186C(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  v76 = a5;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  v81 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - v11;
  v13 = sub_1DF22A800();
  v77 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v69 - v27;
  v29 = v85;
  result = sub_1DF16C5DC(v80, v81, v82, v83, v84);
  if (v29)
  {
    *v79 = v84[0];
    return result;
  }

  v70 = v26;
  v79 = v20;
  v80 = v16;
  v82 = v23;
  v83 = result;
  v85 = v31;
  v81 = v18;
  v71 = v28;
  v32 = v78;
  swift_beginAccess();
  if (!*(*(v32 + 120) + 16))
  {
    goto LABEL_17;
  }

  v33 = v32;

  sub_1DF175254(v83, v85);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_17;
  }

  v36 = *(v33 + 120);
  if (!*(v36 + 16))
  {
    goto LABEL_17;
  }

  v37 = sub_1DF175254(v83, v85);
  if ((v38 & 1) == 0)
  {

LABEL_17:

    return 0;
  }

  v39 = v70;
  sub_1DF17A6A8(*(v36 + 56) + *(v79 + 72) * v37, v70, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v40 = v71;
  sub_1DF17A710(v39, v71, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v41 = v82;
  sub_1DF17A6A8(v40, v82, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v69 = v19;

  v79 = type metadata accessor for KVDatastore.MetadataType(0);
  v42 = v77;
  v43 = v81;
  v44 = v13;
  (*(v77 + 16))(v81, v41 + *(v79 + 20), v13);
  sub_1DF169620(v41);
  v45 = v80;
  sub_1DF22A7D0();
  v46 = sub_1DF22A780();
  v48 = *(v42 + 8);
  v47 = v42 + 8;
  v49 = v45;
  v50 = v48;
  v48(v49, v44);
  v80 = v44;
  v48(v43, v44);
  if ((v46 & 1) == 0)
  {
    sub_1DF16184C(v71, &qword_1ECE0CBB0, &qword_1DF22CF88);
    goto LABEL_17;
  }

  v51 = v71;
  sub_1DF17A6A8(v71, v41, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v52 = v69;
  v53 = *(*(v41 + *(v69 + 48)) + 24);

  sub_1DF169620(v41);
  if (!v53)
  {
    swift_beginAccess();
    v68 = v75;
    sub_1DF175524(v83, v85, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v75);
    sub_1DF16184C(v68, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    swift_endAccess();

    sub_1DF16184C(v51, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v77 = v47;

  sub_1DF17A6A8(v51, v41, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v54 = sub_1DF172030(*(v41 + *(v52 + 48)));
  sub_1DF169620(v41);
  v55 = *(v54 + 16);

  v56 = v76;
  if (v76 < 0 || v55 <= v76)
  {
    sub_1DF16184C(v51, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v57 = v82;
  sub_1DF17A6A8(v51, v82, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v58 = sub_1DF172030(*(v57 + *(v19 + 48)));
  result = sub_1DF169620(v57);
  if (*(v58 + 16) > v56)
  {
    v59 = v12;
    sub_1DF17A6A8(v58 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v56, v12, &qword_1ECE0CBC8, &qword_1DF22CFA0);

    v60 = v81;
    sub_1DF22A7D0();
    sub_1DF22A7F0();
    v62 = v61;
    v50(v60, v80);
    sub_1DF17A6A8(v51, v57, &qword_1ECE0CBB0, &qword_1DF22CF88);

    v63 = sub_1DF22B750();
    sub_1DF16184C(v51, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v64 = v63;
    sub_1DF169620(v57);
    v66 = v73;
    v65 = v74;
    if (v62 < v64)
    {
      sub_1DF17A710(v59, v74, &qword_1ECE0CBC8, &qword_1DF22CFA0);
      v67 = *(v65 + *(v66 + 48));
      v50(v65, v80);
      return v67;
    }

    sub_1DF16184C(v59, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF172030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v28 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *(a1 + 24);
  if (v8 < 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v9 = sub_1DF22AEE0();
    *(v9 + 16) = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v28 + 80);
  v11 = v9 + ((v10 + 32) & ~v10);
  v29[1] = v8;
  v30 = 0;
  v29[0] = v11;
  result = sub_1DF17903C((a1 + 16), a1 + ((v10 + 40) & ~v10), v29, &v30);
  if (v8 < v30)
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v30;

    v12 = *(v9 + 16);
    v13 = v9;
    if (v12 >= 2)
    {
      v14 = 0;
      v15 = v12 >> 1;
      v16 = v12 - 1;
      v26 = v13;
      do
      {
        if (v14 != v16)
        {
          v17 = *(v13 + 16);
          if (v14 >= v17)
          {
            goto LABEL_16;
          }

          v18 = *(v28 + 72);
          v19 = v11 + v18 * v14;
          result = sub_1DF17A6A8(v19, v7, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          if (v16 >= v17)
          {
            goto LABEL_17;
          }

          v20 = v11;
          v21 = v7;
          v22 = v20;
          v23 = v20 + v18 * v16;
          v24 = v27;
          sub_1DF17A6A8(v23, v27, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          result = sub_1DF17A778(v24, v19);
          v13 = v26;
          if (v16 >= *(v26 + 16))
          {
            __break(1u);
LABEL_16:
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v7 = v21;
          result = sub_1DF17A778(v21, v23);
          v11 = v22;
        }

        ++v14;
        --v16;
      }

      while (v15 != v14);
    }

    return v13;
  }

  return result;
}

uint64_t sub_1DF172294(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v189 = a7;
  v190 = a8;
  v185 = a6;
  v184 = a5;
  v192 = a10;
  v193 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v180 = &v164 - v15;
  v181 = sub_1DF22A800();
  v186 = *(v181 - 8);
  v16 = MEMORY[0x1EEE9AC00](v181);
  v178 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v176 = &v164 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v174 = &v164 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v175 = &v164 - v22;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v183 = *(v188 - 8);
  v23 = MEMORY[0x1EEE9AC00](v188);
  v179 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v177 = &v164 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v191 = &v164 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBF8, &qword_1DF22CFC8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v187 = &v164 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  *&v182 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v164 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v164 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v164 - v40;
  v42 = a1;
  v43 = a3;
  v44 = a3;
  v45 = a4;
  result = sub_1DF16C5DC(v42, v193, v44, a4, v197);
  if (v10)
  {
    *v192 = v197[0];
    return result;
  }

  v48 = result;
  v49 = v47;
  v167 = v39;
  v170 = v43;
  v171 = v45;
  v166 = v36;
  v165 = v33;
  v173 = v41;
  v169 = v30;
  v172 = 0;
  if (a9)
  {
    v50 = 0xC0DDD92E56000000;
  }

  else
  {
    v50 = v189;
  }

  v51 = 4683;
  if ((a9 & 1) == 0)
  {
    v51 = v190;
  }

  v168 = v51;
  v52 = v194;
  swift_beginAccess();
  v53 = *(v52 + 112);
  v54 = v49;
  v55 = v48;
  if (*(v53 + 16) && (, sub_1DF175254(v48, v49), v57 = v56, , (v57 & 1) != 0) || (v58 = v194, swift_beginAccess(), *(*(v58 + 120) + 16)) && (, sub_1DF175254(v48, v54), v60 = v59, , (v60 & 1) != 0))
  {
    v61 = v194;
    swift_beginAccess();
    if (!*(*(v61 + 120) + 16) || (, sub_1DF175254(v48, v54), v63 = v62, , (v63 & 1) == 0))
    {

      if (qword_1ED8E7530 != -1)
      {
        goto LABEL_90;
      }

      goto LABEL_18;
    }
  }

  v171 = v50;
  LODWORD(v170) = a9;
  v193 = v54;
  v64 = v185;
  v65 = v185 >> 62;
  if ((v185 >> 62) <= 1)
  {
    v66 = v194;
    v67 = v184;
    v68 = v186;
    if (!v65)
    {
      v69 = BYTE6(v185);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v66 = v194;
  v67 = v184;
  v68 = v186;
  if (v65 != 2)
  {
    v69 = 0;
    goto LABEL_28;
  }

  v81 = *(v184 + 16);
  v80 = *(v184 + 24);
  v82 = __OFSUB__(v80, v81);
  v69 = v80 - v81;
  if (v82)
  {
    __break(1u);
LABEL_25:
    LODWORD(v69) = HIDWORD(v67) - v67;
    if (__OFSUB__(HIDWORD(v67), v67))
    {
      __break(1u);
LABEL_92:
      swift_once();
LABEL_42:
      v94 = sub_1DF22A8C0();
      __swift_project_value_buffer(v94, qword_1ED8E92C0);
      v68 = sub_1DF22A8A0();
      v95 = sub_1DF22B110();
      if (os_log_type_enabled(v68, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        v97 = "Database reached max size.";
        v98 = v95;
        v99 = v68;
        v100 = v96;
        v101 = 2;
LABEL_59:
        _os_log_impl(&dword_1DF15A000, v99, v98, v97, v100, v101);
        MEMORY[0x1E12D0B40](v96, -1, -1);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

    v69 = v69;
  }

LABEL_28:
  if (v69 >= *(v66 + 136))
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v90 = sub_1DF22A8C0();
    __swift_project_value_buffer(v90, qword_1ED8E92C0);
    sub_1DF16573C(v67, v64);
    v68 = sub_1DF22A8A0();
    v91 = sub_1DF22B0F0();
    if (os_log_type_enabled(v68, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134217984;
      if (v65 > 1)
      {
        if (v65 == 2)
        {
          v103 = *(v67 + 16);
          v102 = *(v67 + 24);
          v82 = __OFSUB__(v102, v103);
          v93 = v102 - v103;
          if (v82)
          {
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          v93 = 0;
        }
      }

      else if (v65)
      {
        LODWORD(v93) = HIDWORD(v67) - v67;
        if (__OFSUB__(HIDWORD(v67), v67))
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v93 = v93;
      }

      else
      {
        v93 = BYTE6(v64);
      }

      *(v92 + 4) = v93;
      v96 = v92;
      sub_1DF1657C8(v67, v64);
      v97 = "Invalid value size: %ld.";
      v98 = v91;
      v99 = v68;
      v100 = v96;
      v101 = 12;
      goto LABEL_59;
    }

    sub_1DF1657C8(v67, v64);
LABEL_60:

    v79 = 3;
    v78 = v192;
    goto LABEL_61;
  }

  if ((sub_1DF16C738(v67, v64) & 1) == 0)
  {

    if (qword_1ED8E7530 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

  swift_beginAccess();
  v83 = *(v66 + 120);
  v65 = v188;
  if (!*(v83 + 16))
  {
LABEL_50:
    v104 = sub_1DF178760(16);
    v198 = v104;
    v105 = v178;
    sub_1DF22A7D0();
    v48 = v179;
    v106 = (v179 + *(v65 + 48));
    (*(v68 + 32))(v179, v105, v181);
    *v106 = v67;
    v106[1] = v64;
    v107 = v104[3];
    v108 = v107 + 1;
    if (!__OFADD__(v107, 1))
    {
      sub_1DF16573C(v67, v64);
      v109 = v198;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v183;
      if (v109[2] < v108 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF178290(isUniquelyReferenced_nonNull_native, v108, 0);
        v109 = v198;
      }

      v112 = v172;
      sub_1DF178848(v109 + 2, v109 + ((*(v111 + 80) + 40) & ~*(v111 + 80)), v48);
      v172 = v112;
      sub_1DF16184C(v48, &qword_1ECE0CBC8, &qword_1DF22CFA0);
      v113 = v169;
      v192 = *(v169 + 48);
      v114 = type metadata accessor for KVDatastore.MetadataType(0);
      v115 = v180;
      v116 = &v180[*(v114 + 24)];
      sub_1DF22A7D0();
      v117 = v171;
      v118 = v168;
      sub_1DF22B750();
      sub_1DF22A760();
      *v116 = v117;
      *(v116 + 1) = v118;
      *(v115 + v192) = v109;
      (*(v182 + 56))(v115, 0, 1, v113);
      swift_beginAccess();

      sub_1DF167040(v115, v55, v193);
      swift_endAccess();
    }

    __break(1u);
    goto LABEL_94;
  }

  v84 = sub_1DF175254(v48, v193);
  if ((v85 & 1) == 0)
  {
LABEL_49:

    goto LABEL_50;
  }

  v179 = v48;
  v86 = v167;
  sub_1DF17A6A8(*(v83 + 56) + *(v182 + 72) * v84, v167, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v87 = v173;
  sub_1DF17A710(v86, v173, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v66 = *(v169 + 48);
  v55 = *(v87 + v66);
  if (v55[3] < 16)
  {
LABEL_33:
    v88 = type metadata accessor for KVDatastore.MetadataType(0);
    v89 = &v173[*(v88 + 24)];
    if ((v170 & 1) == 0)
    {
      v138 = v190;
      *v89 = v189;
      v89[1] = v138;
    }

    v64 = v174;
    sub_1DF22A7D0();
    sub_1DF22B750();
    v139 = v181;
    v140 = v175;
    sub_1DF22A760();
    v141 = v186;
    (*(v186 + 8))(v64, v139);
    v142 = v173;
    (*(v141 + 40))(&v173[*(v88 + 20)], v140, v139);
    v48 = v176;
    sub_1DF22A7D0();
    v143 = (v177 + *(v188 + 48));
    (*(v141 + 32))();
    v144 = v184;
    v145 = v185;
    *v143 = v184;
    v143[1] = v145;
    v146 = v55[3];
    v147 = v146 + 1;
    if (!__OFADD__(v146, 1))
    {
      sub_1DF16573C(v144, v145);
      result = swift_isUniquelyReferenced_nonNull_native();
      v148 = *(v142 + v66);
      v64 = v179;
      v149 = v183;
      if (v148[2] < v147 || (result & 1) == 0)
      {
        v150 = v173;
        result = sub_1DF178290(result, v147, 0);
        v148 = *(v150 + v66);
      }

      v151 = *(v149 + 80);
      v152 = v148[4];
      v153 = v166;
      if (v152)
      {
        v154 = v152 - 1;
        v48 = v194;
        v66 = v180;
        if (!__OFSUB__(v152, 1))
        {
LABEL_86:
          v156 = v177;
          sub_1DF17A6A8(v177, v148 + ((v151 + 40) & ~v151) + v154 * *(v183 + 72), &qword_1ECE0CBC8, &qword_1DF22CFA0);
          v148[4] = v154;
          v157 = v148[3];
          v82 = __OFADD__(v157, 1);
          v158 = v157 + 1;
          if (!v82)
          {
            v148[3] = v158;
            sub_1DF16184C(v156, &qword_1ECE0CBC8, &qword_1DF22CFA0);
            v159 = v173;
            sub_1DF17A6A8(v173, v153, &qword_1ECE0CBB0, &qword_1DF22CF88);
            v160 = *(v169 + 48);
            v161 = *(v153 + v160);
            v162 = v153;
            v163 = v165;
            sub_1DF17A640(v162, v165, type metadata accessor for KVDatastore.MetadataType);
            *(v163 + v160) = v161;
            swift_beginAccess();
            sub_1DF17850C(v163, v64, v193, v66);
            sub_1DF16184C(v66, &qword_1ECE0CBE8, &qword_1DF22CFC0);
            swift_endAccess();

            return sub_1DF16184C(v159, &qword_1ECE0CBB0, &qword_1DF22CF88);
          }

          goto LABEL_95;
        }

        __break(1u);
      }

      v155 = v148[2];
      v154 = v155 - 1;
      v48 = v194;
      v66 = v180;
      if (__OFSUB__(v155, 1))
      {
        __break(1u);
        return result;
      }

      goto LABEL_86;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v64 = v193;
  v48 = v183;
  if (qword_1ED8E7530 != -1)
  {
LABEL_97:
    swift_once();
  }

  v192 = sub_1DF22A8C0();
  v119 = (v48 + 56);
  *&v120 = 136315138;
  v182 = v120;
  while (1)
  {
    __swift_project_value_buffer(v192, qword_1ED8E92C0);

    v123 = sub_1DF22A8A0();
    v124 = sub_1DF22B100();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v195 = v126;
      *v125 = v182;
      *(v125 + 4) = sub_1DF160728(v179, v64, &v195);
      _os_log_impl(&dword_1DF15A000, v123, v124, "List %s reached max element count. Dropping oldest element.", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      MEMORY[0x1E12D0B40](v126, -1, -1);
      v127 = v125;
      v48 = v183;
      MEMORY[0x1E12D0B40](v127, -1, -1);
    }

    v128 = v188;
    v129 = v191;
    if (!v55[3])
    {
      v121 = 1;
      v122 = v187;
      goto LABEL_65;
    }

    v130 = v173;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DF179338();
      v129 = v191;
    }

    v55 = *(v130 + v66);
    v131 = v55[3];
    v82 = __OFSUB__(v131, 1);
    v132 = v131 - 1;
    if (v82)
    {
      break;
    }

    v133 = v55[4] + v132;
    v134 = v55[2];
    if (v133 < v134)
    {
      v134 = 0;
    }

    sub_1DF17A710(v55 + ((*(v48 + 80) + 40) & ~*(v48 + 80)) + (v133 - v134) * *(v48 + 72), v129, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v135 = v55[3];
    v82 = __OFSUB__(v135, 1);
    v136 = v135 - 1;
    if (v82)
    {
      goto LABEL_89;
    }

    v55[3] = v136;
    v137 = v129;
    v122 = v187;
    sub_1DF17A710(v137, v187, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v121 = 0;
LABEL_65:
    (*v119)(v122, v121, 1, v128);
    sub_1DF16184C(v122, &qword_1ECE0CBF8, &qword_1DF22CFC8);
    if (v55[3] < 16)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  swift_once();
LABEL_18:
  v70 = sub_1DF22A8C0();
  __swift_project_value_buffer(v70, qword_1ED8E92C0);
  v71 = v171;

  v72 = sub_1DF22A8A0();
  v73 = sub_1DF22B0F0();

  v74 = os_log_type_enabled(v72, v73);
  v75 = v170;
  if (v74)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v196 = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_1DF160728(v75, v71, &v196);
    _os_log_impl(&dword_1DF15A000, v72, v73, "Key already exists but is not accessible due wrong type (key: %s).", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x1E12D0B40](v77, -1, -1);
    MEMORY[0x1E12D0B40](v76, -1, -1);
  }

  v78 = v192;
  v79 = 2;
LABEL_61:
  *v78 = v79;
  LOBYTE(v196) = v79;
  sub_1DF1792A0();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1DF173418(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v94 = a5;
  v97 = a3;
  v98 = a4;
  v95 = a1;
  v96 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBF8, &qword_1DF22CFC8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v80 - v17;
  v19 = sub_1DF22A800();
  v90 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v91 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v80 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v80 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v80 - v32;
  v34 = v100;
  result = sub_1DF16C5DC(v95, v96, v97, v98, v99);
  if (v34)
  {
    *v94 = v99[0];
    return result;
  }

  v84 = v31;
  v37 = v91;
  v83 = v28;
  v97 = result;
  v80 = v25;
  v100 = v36;
  v94 = v21;
  v81 = v16;
  v96 = v33;
  v82 = v18;
  v95 = v19;
  v98 = 0;
  v38 = v92;
  v39 = v93;
  swift_beginAccess();
  if (!*(*(v39 + 120) + 16))
  {
    goto LABEL_20;
  }

  sub_1DF175254(v97, v100);
  v41 = v40;

  if ((v41 & 1) == 0)
  {
    goto LABEL_20;
  }

  v42 = *(v39 + 120);
  if (!*(v42 + 16))
  {
    goto LABEL_20;
  }

  v43 = sub_1DF175254(v97, v100);
  if ((v44 & 1) == 0)
  {

LABEL_20:

    return 0;
  }

  v45 = v84;
  sub_1DF17A6A8(*(v42 + 56) + v37[9] * v43, v84, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v46 = v96;
  sub_1DF17A710(v45, v96, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v84 = type metadata accessor for KVDatastore.MetadataType(0);
  v47 = v94;
  sub_1DF22A7D0();
  v48 = sub_1DF22A780();
  v49 = v90 + 8;
  v91 = *(v90 + 8);
  (v91)(v47, v95);
  if ((v48 & 1) == 0 || (v50 = *(v22 + 48), !*(*(v46 + v50) + 24)))
  {
    swift_beginAccess();
    sub_1DF175524(v97, v100, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v38);
    sub_1DF16184C(v38, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    swift_endAccess();

    sub_1DF16184C(v46, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v90 = v49;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF179338();
  }

  v51 = *(v46 + v50);
  v52 = v51[3];
  v53 = __OFSUB__(v52, 1);
  v54 = v52 - 1;
  if (v53)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v55 = v87;
  v56 = v88;
  v57 = v51[4] + v54;
  v58 = v51[2];
  if (v57 < v58)
  {
    v58 = 0;
  }

  result = sub_1DF17A710(v51 + ((*(v88 + 80) + 40) & ~*(v88 + 80)) + (v57 - v58) * *(v88 + 72), v87, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  v59 = v51[3];
  v53 = __OFSUB__(v59, 1);
  v60 = v59 - 1;
  v61 = v83;
  if (v53)
  {
    goto LABEL_27;
  }

  v62 = v22;
  v51[3] = v60;
  v63 = v82;
  sub_1DF17A710(v55, v82, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  v64 = v89;
  (*(v56 + 56))(v63, 0, 1, v89);
  sub_1DF17A6A8(v96, v61, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v65 = *(v62 + 48);
  v66 = *(v61 + v65);
  v67 = v61;
  v68 = v80;
  sub_1DF17A640(v67, v80, type metadata accessor for KVDatastore.MetadataType);
  *(v68 + v65) = v66;
  swift_beginAccess();
  sub_1DF17850C(v68, v97, v100, v38);
  sub_1DF16184C(v38, &qword_1ECE0CBE8, &qword_1DF22CFC0);
  swift_endAccess();

  v69 = v81;
  sub_1DF17A6A8(v63, v81, &qword_1ECE0CBF8, &qword_1DF22CFC8);
  if ((*(v56 + 48))(v69, 1, v64) == 1)
  {
    sub_1DF16184C(v63, &qword_1ECE0CBF8, &qword_1DF22CFC8);
    sub_1DF16184C(v96, &qword_1ECE0CBB0, &qword_1DF22CF88);
    sub_1DF16184C(v69, &qword_1ECE0CBF8, &qword_1DF22CFC8);
    return 0;
  }

  v70 = v86;
  sub_1DF17A710(v69, v86, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  sub_1DF22A7D0();
  sub_1DF22A7F0();
  v72 = v71;
  v73 = v47;
  v74 = v95;
  v75 = v91;
  (v91)(v73, v95);
  v76 = v96;
  v77 = sub_1DF22B750();
  sub_1DF16184C(v63, &qword_1ECE0CBF8, &qword_1DF22CFC8);
  sub_1DF16184C(v76, &qword_1ECE0CBB0, &qword_1DF22CF88);
  if (v72 >= v77)
  {
    sub_1DF16184C(v70, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    return 0;
  }

  v78 = v85;
  sub_1DF17A710(v70, v85, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  v79 = *(v78 + *(v89 + 48));
  v75(v78, v74);
  return v79;
}

uint64_t sub_1DF173D00(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v46 = a5;
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v6 = sub_1DF22A800();
  v44 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  v22 = v51;
  result = sub_1DF16C5DC(a1, v47, v48, v49, v50);
  if (v22)
  {
    *v46 = v50[0];
    return result;
  }

  v47 = v11;
  v48 = result;
  v51 = v24;
  v46 = v19;
  v43 = v21;
  v49 = 0;
  v25 = v45;
  swift_beginAccess();
  if (*(*(v25 + 120) + 16) && (, sub_1DF175254(v48, v51), v27 = v26, , (v27 & 1) != 0) && (v28 = *(v25 + 120), *(v28 + 16)) && (, v29 = sub_1DF175254(v48, v51), v31 = v30, , (v31 & 1) != 0))
  {
    v32 = v46;
    sub_1DF17A6A8(*(v28 + 56) + *(v13 + 72) * v29, v46, &qword_1ECE0CBB0, &qword_1DF22CF88);

    v33 = v43;
    sub_1DF17A710(v32, v43, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v34 = v16;
    sub_1DF17A6A8(v33, v16, &qword_1ECE0CBB0, &qword_1DF22CF88);

    v35 = type metadata accessor for KVDatastore.MetadataType(0);
    v36 = v44;
    v37 = v47;
    v38 = v6;
    (*(v44 + 16))(v47, &v16[*(v35 + 20)], v6);
    sub_1DF169620(v16);
    sub_1DF22A7D0();
    v39 = sub_1DF22A780();
    v40 = *(v36 + 8);
    v40(v9, v38);
    v40(v37, v38);
    if (v39)
    {
      v41 = v43;
      sub_1DF17A6A8(v43, v34, &qword_1ECE0CBB0, &qword_1DF22CF88);
      v42 = *(*(v34 + *(v12 + 48)) + 24);
      sub_1DF16184C(v41, &qword_1ECE0CBB0, &qword_1DF22CF88);

      sub_1DF169620(v34);
      return v42;
    }

    sub_1DF16184C(v43, &qword_1ECE0CBB0, &qword_1DF22CF88);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DF17411C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[16];
  v3 = v1[17];
  swift_beginAccess();
  v5 = *(v1[14] + 16);
  result = swift_beginAccess();
  v7 = *(v1[15] + 16);
  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = sub_1DF16A784();
  v10 = *(v1[14] + 16);
  v11 = type metadata accessor for KVDatastore.MetadataType(0);
  v12 = *(v11 - 8);
  result = v11 - 8;
  v13 = *(v12 + 64);
  v14 = v10 * v13;
  if ((v10 * v13) >> 64 != (v10 * v13) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *(v1[15] + 16);
  v16 = v15 * v13;
  if ((v15 * v13) >> 64 != (v15 * v13) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFADD__(v14, v16);
  v18 = v14 + v16;
  if (v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = __OFADD__(v9, v18);
  v19 = v9 + v18;
  if (v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1DF16AA60();
  v20 = v19 + result;
  if (!__OFADD__(v19, result))
  {
    v21 = sub_1DF16A784();
    result = sub_1DF16AA60();
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = xmmword_1DF22CF30;
    *(a1 + 32) = v8;
    *(a1 + 40) = v20;
    *(a1 + 48) = v21;
    *(a1 + 56) = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t KVDatastore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t KVDatastore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF1742D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DF174610(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DF1743C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1DF174E54(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1ECE0CCE8, &qword_1DF22D6E8, type metadata accessor for TaskTelemetry);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TaskTelemetry(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DF174518(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1DF174B0C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DF174610(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D0, &qword_1DF22CA28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF174730(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C848, &unk_1DF22CA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF1748B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1DF17499C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD28, &qword_1DF22D728);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD30, &unk_1DF22D730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF174B0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCD8, &unk_1DF22D6D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF174C98(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1DF174E54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1DF17509C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1DF1751D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D0, &qword_1DF22CA28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1DF175254(uint64_t a1, uint64_t a2)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v4 = sub_1DF22B6F0();

  return sub_1DF17536C(a1, a2, v4);
}

unint64_t sub_1DF1752CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  v8 = sub_1DF22B6F0();

  return sub_1DF175424(a1, a2, a3, a4, v8);
}

unint64_t sub_1DF17536C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DF22B620())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DF175424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DF22B620() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DF22B620() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_1DF175524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1DF175254(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF175E10(a3, a4, a5, a6);
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v27 = *(v20 - 8);
    sub_1DF17A710(v19 + *(v27 + 72) * v16, a7, a3, a4);
    sub_1DF175BCC(v16, v18, a3, a4);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1DF1756BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DF175254(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF1764F8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1DF22AA80();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1DF1759E0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1DF22AA80();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1DF17582C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DF175254(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF176778();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1DF175BCC(v8, v10, &qword_1ECE0CD38, &unk_1DF2387C0);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_1DF1759E0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF22B230() + 1) & ~v5;
    while (1)
    {
      sub_1DF22B6C0();

      sub_1DF22AD20();
      v9 = sub_1DF22B6F0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1DF22AA80() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

unint64_t sub_1DF175BCC(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_1DF22B230() + 1) & ~v7;
    while (1)
    {
      sub_1DF22B6C0();

      sub_1DF22AD20();
      v13 = sub_1DF22B6F0();

      v14 = v13 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v5);
      v17 = (v15 + 16 * v8);
      if (v5 != v8 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v20 = v19 * v5;
      result = v18 + v19 * v5;
      v21 = v19 * v8;
      v22 = v18 + v19 * v8 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DF175E10(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v40 = a1;
  v41 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1DF22B3D0();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = (v10 + 64);
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, v37, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = (*(v10 + 48) + 16 * v25);
        v28 = *v27;
        v29 = v27[1];
        v30 = v38;
        v31 = *(v39 + 72) * v25;
        v33 = v40;
        v32 = v41;
        sub_1DF17A6A8(*(v10 + 56) + v31, v38, v40, v41);
        v34 = v42;
        v35 = (*(v42 + 48) + v26);
        *v35 = v28;
        v35[1] = v29;
        sub_1DF17A710(v30, *(v34 + 56) + v31, v33, v32);

        v20 = v43;
      }

      while (v43);
    }

    v23 = v16;
    v12 = v42;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        goto LABEL_21;
      }

      v24 = *(v37 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

id sub_1DF176080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA0, &qword_1DF22D7A0);
  v2 = *v0;
  v3 = sub_1DF22B3D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

        result = v20;
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

  return result;
}

void *sub_1DF176200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCD0, &qword_1DF22D6C8);
  v2 = *v0;
  v3 = sub_1DF22B3D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = *(v2 + 56) + v17;
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
        v26 = (*(v4 + 48) + v17);
        v27 = *v23;
        *v26 = v20;
        v26[1] = v19;
        v26[2] = v21;
        v26[3] = v22;
        v28 = *(v4 + 56) + v17;
        *v28 = v27;
        *(v28 + 16) = v24;
        *(v28 + 24) = v25;
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

  return result;
}

void *sub_1DF176390()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD78, &qword_1DF22D770);
  v2 = *v0;
  v3 = sub_1DF22B3D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

char *sub_1DF1764F8()
{
  v1 = v0;
  v35 = sub_1DF22AA80();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD58, &qword_1DF22FF90);
  v3 = *v0;
  v4 = sub_1DF22B3D0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

  return result;
}

char *sub_1DF176778()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD40, &unk_1DF22D740);
  v3 = *v0;
  v4 = sub_1DF22B3D0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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

  return result;
}

void sub_1DF176A28(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DF22B3D0();
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
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
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

void *sub_1DF176B98()
{
  v1 = v0;
  v2 = type metadata accessor for MLHostAnalytics(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF0, &unk_1DF22D6F0);
  v4 = *v0;
  v5 = sub_1DF22B3D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1DF17A5D8(v21 + v27, v32, type metadata accessor for MLHostAnalytics);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_1DF17A640(v26, *(v28 + 56) + v27, type metadata accessor for MLHostAnalytics);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

  return result;
}

void *sub_1DF176E30(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DF22B3D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

  return result;
}

void *sub_1DF176F90(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1DF177E18(v12, v7, v5, a3);
  result = MEMORY[0x1E12D0B40](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void *sub_1DF177100(uint64_t (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v24 = a6;
  v13 = a1;
  v25 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 32);
  v15 = ((1 << v14) + 63) >> 6;
  v16 = 8 * v15;
  if ((v14 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  v23 = (((1 << v14) + 63) >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v23;
LABEL_2:
    v22 = a5;
    v23 = &v22;
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v22 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
    result = sub_1DF177BCC((&v22 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0)), v15, a3, v13, a2, a4, v22, v24, a7);
    if (v7)
    {
      return swift_willThrow();
    }

    return result;
  }

  v18 = swift_slowAlloc();
  v19 = a3;
  v20 = v18;
  v21 = sub_1DF177EA0(v18, v23, v19, v13, a2, a4, a5, v24, a7);
  result = MEMORY[0x1E12D0B40](v20, -1, -1);
  if (!v7)
  {
    return v21;
  }

  return result;
}

uint64_t sub_1DF1772C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a1;
  v56 = sub_1DF22A800();
  v4 = *(v56 - 8);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v8 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v49 = *(v11 - 8);
  v50 = v11;
  result = MEMORY[0x1EEE9AC00](v11);
  v48 = &v39 - v13;
  v14 = 0;
  v57 = a3;
  v15 = *(a3 + 64);
  v42 = 0;
  v43 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v44 = (v16 + 63) >> 6;
  v46 = (v4 + 8);
  v47 = (v4 + 16);
  v19 = v51;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v59 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = v57[7];
    v25 = (v57[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v48;
    v29 = *(v49 + 72);
    v45 = v23;
    sub_1DF17A6A8(v24 + v29 * v23, v48, &qword_1ECE0CBB0, &qword_1DF22CF88);
    *v19 = v27;
    v19[1] = v26;
    v58 = v26;
    v30 = v53;
    sub_1DF17A6A8(v28, v19 + *(v53 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
    v31 = v52;
    sub_1DF17A6A8(v19, v52, &qword_1ECE0CBB8, &qword_1DF22CF90);
    swift_bridgeObjectRetain_n();

    v32 = v31 + *(v30 + 48);

    v33 = type metadata accessor for KVDatastore.MetadataType(0);
    v34 = v54;
    v35 = v56;
    (*v47)(v54, v32 + *(v33 + 20), v56);
    sub_1DF169620(v32);
    v36 = v55;
    sub_1DF22A7D0();
    LOBYTE(v32) = sub_1DF22A780();
    v37 = *v46;
    (*v46)(v36, v35);
    v37(v34, v35);
    sub_1DF16184C(v19, &qword_1ECE0CBB8, &qword_1DF22CF90);
    sub_1DF16184C(v28, &qword_1ECE0CBB0, &qword_1DF22CF88);

    v18 = v59;
    if (v32)
    {
      *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
        return sub_1DF177F68(v41, v40, v42, v57, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v44)
    {
      return sub_1DF177F68(v41, v40, v42, v57, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
    }

    v22 = *(v43 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v59 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF177748(unint64_t *a1, uint64_t a2, void *a3)
{
  v42 = a2;
  v43 = a1;
  v56 = sub_1DF22A800();
  v4 = *(v56 - 8);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v41 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v8 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v49 = *(v11 - 8);
  v50 = v11;
  result = MEMORY[0x1EEE9AC00](v11);
  v60 = &v41 - v13;
  v14 = 0;
  v57 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v44 = 0;
  v45 = (v18 + 63) >> 6;
  v47 = (v4 + 8);
  v48 = (v4 + 16);
  v21 = v51;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v59 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v14 << 6);
    v26 = v57[7];
    v27 = (v57[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v49 + 72);
    v46 = v25;
    v31 = v60;
    sub_1DF17A6A8(v26 + v30 * v25, v60, &qword_1ECE0CBA8, &qword_1DF22CF80);
    *v21 = v28;
    v21[1] = v29;
    v58 = v29;
    v32 = v53;
    sub_1DF17A6A8(v31, v21 + *(v53 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
    v33 = v52;
    sub_1DF17A6A8(v21, v52, &qword_1ECE0CBC0, &qword_1DF22CF98);
    swift_bridgeObjectRetain_n();

    v34 = v33 + *(v32 + 48);
    sub_1DF1657C8(*(v34 + *(v50 + 48)), *(v34 + *(v50 + 48) + 8));
    v35 = type metadata accessor for KVDatastore.MetadataType(0);
    v36 = v54;
    v37 = v56;
    (*v48)(v54, v34 + *(v35 + 20), v56);
    sub_1DF169620(v34);
    v38 = v55;
    sub_1DF22A7D0();
    LOBYTE(v34) = sub_1DF22A780();
    v39 = *v47;
    (*v47)(v38, v37);
    v39(v36, v37);
    sub_1DF16184C(v21, &qword_1ECE0CBC0, &qword_1DF22CF98);
    sub_1DF16184C(v60, &qword_1ECE0CBA8, &qword_1DF22CF80);

    v20 = v59;
    if (v34)
    {
      *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
        return sub_1DF177F68(v43, v42, v44, v57, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
      }
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v45)
    {
      return sub_1DF177F68(v43, v42, v44, v57, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
    }

    v24 = v16[v14];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v59 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF177BCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v35 = a8;
  v36 = a1;
  v42 = a4;
  v33 = a2;
  v34 = a9;
  v44 = a6;
  v45 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v41 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v33 - v12;
  v13 = 0;
  v43 = a3;
  v14 = *(a3 + 64);
  v37 = 0;
  v38 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v46 = (v17 - 1) & v17;
LABEL_11:
    v22 = v19 | (v13 << 6);
    v23 = v44;
    v24 = v43[7];
    v25 = (v43[6] + 16 * v22);
    v26 = v25[1];
    v47[0] = *v25;
    v47[1] = v26;
    v27 = v40;
    v28 = *(v41 + 72);
    v39 = v22;
    v29 = v45;
    sub_1DF17A6A8(v24 + v28 * v22, v40, v44, v45);

    v30 = v48;
    v31 = v42(v47, v27);
    sub_1DF16184C(v27, v23, v29);

    v48 = v30;
    if (v30)
    {
      return result;
    }

    v17 = v46;
    if (v31)
    {
      *(v36 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
        return sub_1DF177F68(v36, v33, v37, v43, v44, v45, v35, v34);
      }
    }
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
      return sub_1DF177F68(v36, v33, v37, v43, v44, v45, v35, v34);
    }

    v21 = *(v38 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v46 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DF177E18(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1DF177EA0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v10 = result;
      v17 = a2;
      v11 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      result = v10;
      a2 = v17;
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v11;
    }

    v16 = sub_1DF177BCC(result, a2, a3, a4, a5, a6, a7, a8, a9);

    return v16;
  }

  return result;
}

uint64_t sub_1DF177F68(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v53 = a5;
  v54 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v49 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v46 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  result = sub_1DF22B3F0();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v22 = result + 64;
  v46 = a4;
  v47 = result;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v50 = (v20 - 1) & v20;
LABEL_16:
    v26 = v23 | (v21 << 6);
    v27 = a4[7];
    v28 = (a4[6] + 16 * v26);
    v29 = *v28;
    v30 = v28[1];
    v31 = v48;
    v51 = *(v49 + 72);
    v33 = v53;
    v32 = v54;
    sub_1DF17A6A8(v27 + v51 * v26, v48, v53, v54);
    v34 = v33;
    v35 = v29;
    sub_1DF17A710(v31, v52, v34, v32);
    v19 = v47;
    sub_1DF22B6C0();

    sub_1DF22AD20();
    result = sub_1DF22B6F0();
    v36 = -1 << *(v19 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v22 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v22 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    v44 = (*(v19 + 48) + 16 * v39);
    *v44 = v35;
    v44[1] = v30;
    result = sub_1DF17A710(v52, *(v19 + 56) + v39 * v51, v53, v54);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46;
    v20 = v50;
    if (!a3)
    {
      return v19;
    }
  }

  v24 = v21;
  while (1)
  {
    v21 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v25 = a1[v21];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v50 = (v25 - 1) & v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

size_t sub_1DF178290(char a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v10 = v9;
  if (v8 >= a2)
  {
    v19 = *(*(v9 - 8) + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
    v16 = swift_allocObject();
    v20 = *(v6 + 24);
    *(v16 + 16) = v8;
    *(v16 + 24) = v20;
    if (v20 >= 1)
    {
      sub_1DF178D74(v16 + 16, v16 + ((v19 + 40) & ~v19), v7, v6 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1DF22A890();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if (a1)
  {
    v13 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
    v14 = *(v11 + 72);
    v15 = (v12 + 40) & ~v12;
    v16 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v16);
    if (v14)
    {
      if (result - v15 != 0x8000000000000000 || v14 != -1)
      {
        *(v16 + 16) = (result - v15) / v14;
        *(v16 + 24) = v13;
        *(v16 + 32) = 0;
        if (v13 >= 1)
        {
          sub_1DF178928(v16 + 16, v16 + v15, v7, v6 + v15);
          *(v6 + 24) = 0;
        }

LABEL_19:

        *v3 = v16;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
  v21 = *(v11 + 72);
  v22 = (v12 + 40) & ~v12;
  v16 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v16);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (result - v22 != 0x8000000000000000 || v21 != -1)
  {
    v24 = *(v6 + 24);
    *(v16 + 16) = (result - v22) / v21;
    *(v16 + 24) = v24;
    *(v16 + 32) = 0;
    if (v24 >= 1)
    {
      sub_1DF178C00(v16 + 16, v16 + v22, v7, v6 + v22);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1DF17850C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_1DF175254(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1DF1A5A80(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_1DF175254(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_1DF22B660();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v26 = v13;
    sub_1DF175E10(&qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
    v13 = v26;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DF1A84DC(v13, a2, a3, a1, v12);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    (*(*(v27 - 8) + 56))(a4, 1, 1, v27);

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v12[7];
  v21 = v13;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v23 = *(v22 - 8);
  v24 = *(v23 + 72) * v21;
  sub_1DF17A710(v20 + v24, a4, &qword_1ECE0CBB0, &qword_1DF22CF88);
  sub_1DF17A710(a1, v12[7] + v24, &qword_1ECE0CBB0, &qword_1DF22CF88);
  result = (*(v23 + 56))(a4, 0, 1, v22);
LABEL_11:
  *v6 = v12;
  return result;
}

void *sub_1DF178760(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v4 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v4);
  if (v2)
  {
    if ((result - v3) != 0x8000000000000000 || v2 != -1)
    {
      v4[3] = 0;
      v4[4] = 0;
      v4[2] = (result - v3) / v2;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DF178848(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
        result = sub_1DF17A6A8(a3, a2 + *(*(v10 - 8) + 72) * v5, &qword_1ECE0CBC8, &qword_1DF22CFA0);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1DF178928(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_1DF178B34@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1DF178C00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v8 < 1)
  {
    return;
  }

  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  swift_arrayInitWithCopy();
}

void sub_1DF178D74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  if (v5 < v7)
  {
    v8 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

void *sub_1DF178EE4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1DF17903C(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1DF178B34(a1, a2, &v13);
  v7 = v14;
  if (v14 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13)
  {
    v8 = v14 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    result = swift_arrayInitWithCopy();
  }

  v9 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_22;
  }

  *a4 = v9;
  if (v17)
  {
    return result;
  }

  v10 = v16;
  if (__OFADD__(v7, v16))
  {
    goto LABEL_23;
  }

  v11 = v16;
  if (v7 + v16 < v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v15;
  if (*a3)
  {
    result = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8);
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else if (!v15)
  {
    goto LABEL_18;
  }

  if (v10)
  {
    if (v11 < v10)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    result = swift_arrayInitWithCopy();
    v9 = *a4;
  }

LABEL_18:
  if (__OFADD__(v9, v10))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *a4 = v9 + v10;
  return result;
}

uint64_t sub_1DF1791A4()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

unint64_t sub_1DF17924C()
{
  result = qword_1ED8E7340;
  if (!qword_1ED8E7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E7340);
  }

  return result;
}

unint64_t sub_1DF1792A0()
{
  result = qword_1ECE0CBF0;
  if (!qword_1ECE0CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CBF0);
  }

  return result;
}

uint64_t sub_1DF1792F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DF22A800();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF179338()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v3 = *(v1 + 16);
  v4 = *(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
  v5 = swift_allocObject();
  v6 = *(v1 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  if (v6 >= 1)
  {
    sub_1DF178D74(v5 + 16, v5 + ((v4 + 40) & ~v4), (v1 + 16), v1 + ((v4 + 40) & ~v4));
  }

  *v0 = v5;
  return result;
}

unint64_t sub_1DF179440()
{
  result = qword_1ECE0CC00;
  if (!qword_1ECE0CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC00);
  }

  return result;
}

unint64_t sub_1DF1794C8()
{
  result = qword_1ECE0CC18;
  if (!qword_1ECE0CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC18);
  }

  return result;
}

uint64_t sub_1DF17954C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for KVDatastoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KVDatastoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF179704(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF179724(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1DF179DA8(uint64_t a1)
{
  result = sub_1DF22A800();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KVDatastoreInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KVDatastoreInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF179F98()
{
  result = qword_1ECE0CC30;
  if (!qword_1ECE0CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC30);
  }

  return result;
}

unint64_t sub_1DF179FF0()
{
  result = qword_1ECE0CC38;
  if (!qword_1ECE0CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC38);
  }

  return result;
}

unint64_t sub_1DF17A048()
{
  result = qword_1ECE0CC40;
  if (!qword_1ECE0CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC40);
  }

  return result;
}

unint64_t sub_1DF17A0A0()
{
  result = qword_1ECE0CC48;
  if (!qword_1ECE0CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC48);
  }

  return result;
}

unint64_t sub_1DF17A0F8()
{
  result = qword_1ECE0CC50;
  if (!qword_1ECE0CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC50);
  }

  return result;
}

unint64_t sub_1DF17A150()
{
  result = qword_1ECE0CC58;
  if (!qword_1ECE0CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC58);
  }

  return result;
}

uint64_t sub_1DF17A1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A695378616DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726970784578616DLL && a2 == 0xED00006E6F697461 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x43746E6572727563 && a2 == 0xEC000000746E756FLL || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xEB00000000657A69 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A69537379656BLL && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69537365756C6176 && a2 == 0xEA0000000000657ALL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DF17A404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF22B620();

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

unint64_t sub_1DF17A530()
{
  result = qword_1ECE0CC60;
  if (!qword_1ECE0CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC60);
  }

  return result;
}

unint64_t sub_1DF17A584()
{
  result = qword_1ECE0CC68;
  if (!qword_1ECE0CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC68);
  }

  return result;
}

uint64_t sub_1DF17A5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF17A640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF17A6A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF17A710(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF17A778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LedgerState.index.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LedgerState.index.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LedgerState.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LedgerState(0) + 20);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LedgerState(uint64_t a1)
{
  result = qword_1ECE0CE48;
  if (!qword_1ECE0CE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LedgerState.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LedgerState(0) + 20);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LedgerState.init(index:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LedgerState(0) + 20);
  v7 = sub_1DF22A800();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static LedgerState.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1DF22B620() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LedgerState(0);

  return sub_1DF22A7B0();
}

uint64_t sub_1DF17AB10()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1DF17AB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF17AC2C(uint64_t a1)
{
  v2 = sub_1DF17AE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF17AC68(uint64_t a1)
{
  v2 = sub_1DF17AE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC8, &qword_1DF22D7D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17AE5C();
  sub_1DF22B740();
  v8[15] = 0;
  sub_1DF22B580();
  if (!v1)
  {
    type metadata accessor for LedgerState(0);
    v8[14] = 1;
    sub_1DF22A800();
    sub_1DF17C310(&qword_1ECE0C728, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF22B5C0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF17AE5C()
{
  result = qword_1ECE0CDD0;
  if (!qword_1ECE0CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CDD0);
  }

  return result;
}

uint64_t LedgerState.hash(into:)(uint64_t a1)
{
  sub_1DF22AD20();
  type metadata accessor for LedgerState(0);
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DF22AC30();
}

uint64_t LedgerState.hashValue.getter()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  type metadata accessor for LedgerState(0);
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DF22AC30();
  return sub_1DF22B6F0();
}

uint64_t LedgerState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_1DF22A800();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDE0, &qword_1DF22D7D8);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for LedgerState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17AE5C();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_1DF22B4A0();
  v10[1] = v13;
  v21 = 1;
  sub_1DF17C310(&qword_1ED8E6BE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DF22B4E0();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_1DF17B4F4(v10, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DF17B558(v10);
}

uint64_t sub_1DF17B310@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DF17B31C()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DF22AC30();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17B3C4(uint64_t a1)
{
  sub_1DF22AD20();
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1DF22AC30();
}

uint64_t sub_1DF17B450(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DF22AC30();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17B4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LedgerState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF17B558(uint64_t a1)
{
  v2 = type metadata accessor for LedgerState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF17B5E4(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1DF22B620() & 1) == 0)
  {
    return 0;
  }

  return sub_1DF22A7B0();
}

uint64_t LedgerTransition.start.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LedgerTransition.start.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LedgerTransition.end.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LedgerTransition.end.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

LighthouseBackground::LedgerTransition __swiftcall LedgerTransition.init(start:end:)(Swift::String start, Swift::String end)
{
  *v2 = start;
  v2[1] = end;
  result.end = end;
  result.start = start;
  return result;
}

uint64_t LedgerTransition.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v1, v2);
  return v4;
}

uint64_t LedgerTransition.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  sub_1DF22B780();
  sub_1DF17924C();
  v7 = sub_1DF22B1C0();

  v9 = v7[2];
  if (v9)
  {
    if (v9 != 1)
    {
      v11 = v7[4];
      v10 = v7[5];
      v13 = v7[6];
      v12 = v7[7];

      result = (*(*(a2 - 8) + 8))(a1, a2);
      *a4 = v11;
      a4[1] = v10;
      a4[2] = v13;
      a4[3] = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LedgerTransition.codingKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v3, v4);
  a1[3] = &type metadata for LedgerTransitionCodingKey;
  a1[4] = sub_1DF17B9A4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v6;
  *(result + 24) = v7;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

unint64_t sub_1DF17B9A4()
{
  result = qword_1ECE0CDE8;
  if (!qword_1ECE0CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CDE8);
  }

  return result;
}

uint64_t static LedgerTransition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF22B620(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF22B620();
    }
  }

  return result;
}

uint64_t sub_1DF17BA9C()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1DF17BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF17BBA4(uint64_t a1)
{
  v2 = sub_1DF17BDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF17BBE0(uint64_t a1)
{
  v2 = sub_1DF17BDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerTransition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDF0, &qword_1DF22D7E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17BDB0();
  sub_1DF22B740();
  v12 = 0;
  v8 = v10[3];
  sub_1DF22B580();
  if (!v8)
  {
    v11 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF17BDB0()
{
  result = qword_1ECE0CDF8;
  if (!qword_1ECE0CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CDF8);
  }

  return result;
}

uint64_t LedgerTransition.hash(into:)(uint64_t a1)
{
  sub_1DF22AD20();

  return sub_1DF22AD20();
}

uint64_t LedgerTransition.hashValue.getter()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t LedgerTransition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CE00, &qword_1DF22D7E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17BDB0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v9 = sub_1DF22B4A0();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1DF22B4A0();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF17C0BC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *sub_1DF17C0C8@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t sub_1DF17C0DC()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17C144(uint64_t a1)
{
  sub_1DF22AD20();

  return sub_1DF22AD20();
}

uint64_t sub_1DF17C194(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17C21C(void *a1)
{
  a1[1] = sub_1DF17C310(&qword_1ECE0CE08, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
  a1[2] = sub_1DF17C310(&qword_1ECE0CE10, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
  result = sub_1DF17C310(&qword_1ECE0CE18, type metadata accessor for LedgerState, &protocol conformance descriptor for LedgerState);
  a1[3] = result;
  return result;
}

uint64_t sub_1DF17C310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DF17C358(void *a1)
{
  a1[1] = sub_1DF17C390();
  a1[2] = sub_1DF17C3E4();
  result = sub_1DF17C438();
  a1[3] = result;
  return result;
}

unint64_t sub_1DF17C390()
{
  result = qword_1ECE0CE28;
  if (!qword_1ECE0CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE28);
  }

  return result;
}

unint64_t sub_1DF17C3E4()
{
  result = qword_1ECE0CE30;
  if (!qword_1ECE0CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE30);
  }

  return result;
}

unint64_t sub_1DF17C438()
{
  result = qword_1ECE0CE38;
  if (!qword_1ECE0CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE38);
  }

  return result;
}

unint64_t sub_1DF17C490()
{
  result = qword_1ECE0CE40;
  if (!qword_1ECE0CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE40);
  }

  return result;
}

uint64_t sub_1DF17C514()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v1, v2);
  return v4;
}

uint64_t sub_1DF17C57C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v3, v4);
  a1[3] = &type metadata for LedgerTransitionCodingKey;
  a1[4] = sub_1DF17B9A4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v6;
  *(result + 24) = v7;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1DF17C624(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF22B620(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF22B620();
    }
  }

  return result;
}

uint64_t sub_1DF17C6F0(uint64_t a1)
{
  result = sub_1DF22A800();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF17C778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF17C7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DF17C834(uint64_t a1, int a2)
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

uint64_t sub_1DF17C87C(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF17C8E4()
{
  result = qword_1ECE0CE58;
  if (!qword_1ECE0CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE58);
  }

  return result;
}

uint64_t sub_1DF17C938@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_1DF17C954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DF22B600();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1DF17C9B0(uint64_t a1)
{
  v2 = sub_1DF17B9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF17C9EC(uint64_t a1)
{
  v2 = sub_1DF17B9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF17CA2C()
{
  result = qword_1ECE0CE60;
  if (!qword_1ECE0CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE60);
  }

  return result;
}

unint64_t sub_1DF17CA84()
{
  result = qword_1ECE0CE68;
  if (!qword_1ECE0CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE68);
  }

  return result;
}

unint64_t sub_1DF17CADC()
{
  result = qword_1ECE0CE70;
  if (!qword_1ECE0CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE70);
  }

  return result;
}

unint64_t sub_1DF17CB34()
{
  result = qword_1ECE0CE78;
  if (!qword_1ECE0CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE78);
  }

  return result;
}

unint64_t sub_1DF17CB8C()
{
  result = qword_1ECE0CE80;
  if (!qword_1ECE0CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE80);
  }

  return result;
}

unint64_t sub_1DF17CBE4()
{
  result = qword_1ECE0CE88;
  if (!qword_1ECE0CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE88);
  }

  return result;
}

unint64_t sub_1DF17CC3C()
{
  result = qword_1ECE0CE90;
  if (!qword_1ECE0CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE90);
  }

  return result;
}

uint64_t sub_1DF17CCA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x437373616C43;
  v6 = 0xE700000000000000;
  v7 = 0x58437373616C43;
  if (a1 != 4)
  {
    v7 = 0x447373616C43;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x417373616C43;
  if (a1 != 1)
  {
    v8 = 0x427373616C43;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 1701736270;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x437373616C43)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x58437373616C43)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x447373616C43)
      {
LABEL_34:
        v12 = sub_1DF22B620();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x417373616C43)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x427373616C43)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1701736270)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_1DF17CE5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x546E61656C6F6F42;
    }

    if (v2)
    {
      v4 = 0x80000001DF23D180;
    }

    else
    {
      v4 = 0xEB00000000657079;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x646574656B637542;
    v4 = 0xEC00000065707954;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x69726F6765746143;
    }

    else
    {
      v3 = 0x74616E69626D6F43;
    }

    if (v2 == 3)
    {
      v4 = 0xEF657079546C6163;
    }

    else
    {
      v4 = 0xEF657079546E6F69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0x546E61656C6F6F42;
    }

    if (a2)
    {
      v8 = 0x80000001DF23D180;
    }

    else
    {
      v8 = 0xEB00000000657079;
    }

    if (v3 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v8 = 0xEC00000065707954;
    if (v3 != 0x646574656B637542)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x69726F6765746143;
      v6 = 1416388963;
    }

    else
    {
      v5 = 0x74616E69626D6F43;
      v6 = 1416523625;
    }

    v8 = v6 | 0xEF65707900000000;
    if (v3 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v8)
  {
LABEL_34:
    v9 = sub_1DF22B620();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1DF17D034(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v8 = 0xD000000000000010;
    v9 = 0x80000001DF23D410;
    if (a1 != 6)
    {
      v8 = 0xD000000000000014;
      v9 = 0x80000001DF23D430;
    }

    v10 = 0xE700000000000000;
    v11 = 0x676E696C637943;
    if (a1 != 4)
    {
      v11 = 0x69746F6D6F747541;
      v10 = 0xEA00000000006576;
    }

    if (a1 <= 5u)
    {
      v6 = v11;
    }

    else
    {
      v6 = v8;
    }

    if (v2 <= 5)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x676E696B6C6157;
    if (a1 != 2)
    {
      v4 = 0x676E696E6E7552;
    }

    v5 = 0x616E6F6974617453;
    if (a1)
    {
      v3 = 0xEA00000000007972;
    }

    else
    {
      v5 = 1701736270;
    }

    if (a1 <= 1u)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v12 = 0xE400000000000000;
        if (v6 != 1701736270)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x616E6F6974617453;
      v15 = 31090;
LABEL_38:
      v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v6 != v14)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v12 = 0xE700000000000000;
    if (a2 == 2)
    {
      v13 = 1802264919;
    }

    else
    {
      v13 = 1852732754;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v14 = 0x69746F6D6F747541;
      v15 = 25974;
      goto LABEL_38;
    }

    v12 = 0xE700000000000000;
    v13 = 1818458435;
LABEL_41:
    if (v6 != (v13 | 0x676E6900000000))
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (a2 == 6)
  {
    v12 = 0x80000001DF23D410;
    if (v6 != 0xD000000000000010)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v12 = 0x80000001DF23D430;
    if (v6 != 0xD000000000000014)
    {
LABEL_46:
      v16 = sub_1DF22B620();
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v7 != v12)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_1DF17D294(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DF22B620();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DF17D404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x79726F6D656DLL;
    }

    else
    {
      v4 = 5591107;
    }

    if (v2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 4542017;
    if (a1 != 3)
    {
      v3 = 5591111;
    }

    if (a1 == 2)
    {
      v4 = 1802725732;
    }

    else
    {
      v4 = v3;
    }

    if (v2 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x79726F6D656DLL;
    }

    else
    {
      v9 = 5591107;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v6 = 5591111;
    if (a2 == 3)
    {
      v6 = 4542017;
    }

    if (a2 == 2)
    {
      v7 = 1802725732;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v5 != v8)
  {
LABEL_36:
    v10 = sub_1DF22B620();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_1DF17D548(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E64696C61766E69;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x4564696C61766E69;
    v12 = 0xEE0065746144646ELL;
    if (a1 != 6)
    {
      v11 = 0x4F64696C61766E69;
      v12 = 0xED00006570795453;
    }

    v13 = 0x80000001DF23D290;
    v14 = 0xD000000000000019;
    if (a1 != 4)
    {
      v14 = 0xD000000000000010;
      v13 = 0x80000001DF23D2B0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x80000001DF23D250;
    v6 = 0xD000000000000012;
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x80000001DF23D270;
    }

    v7 = 0x80000001DF23D230;
    v8 = 0xD000000000000017;
    if (!a1)
    {
      v8 = 0x4E64696C61766E69;
      v7 = 0xEB00000000656D61;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE0065746144646ELL;
        if (v9 != 0x4564696C61766E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xED00006570795453;
        if (v9 != 0x4F64696C61766E69)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x80000001DF23D290;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x80000001DF23D2B0;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001DF23D250;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v2 = 0x80000001DF23D270;
      v3 = 0xD000000000000012;
    }

    else if (a2)
    {
      v2 = 0x80000001DF23D230;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (v9 != v3)
    {
LABEL_45:
      v15 = sub_1DF22B620();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1DF17D7E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7974696C697455;
    }

    else
    {
      v4 = 0x74696E4972657355;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xED00006465746169;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x616E65746E69614DLL;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3)
    {
      v5 = 0xEB0000000065636ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x7974696C697455;
  if (a2 != 2)
  {
    v8 = 0x74696E4972657355;
    v7 = 0xED00006465746169;
  }

  if (a2)
  {
    v2 = 0x616E65746E69614DLL;
    v6 = 0xEB0000000065636ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF17D94C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ELL;
  v3 = "oad";
  if (a1 == 5)
  {
    v4 = 0xD000000000000025;
  }

  else
  {
    v4 = 0xD00000000000002BLL;
  }

  if (a1 == 5)
  {
    v5 = "ouseLedger.PushTaskTelemetry";
  }

  else
  {
    v5 = ".CloudWorkerTelemetry";
  }

  if (a1 == 3)
  {
    v6 = 0xD00000000000002ELL;
  }

  else
  {
    v6 = 0xD00000000000002CLL;
  }

  if (a1 == 3)
  {
    v7 = "ouseLedger.TaskErrorTelemetry";
  }

  else
  {
    v7 = "ouseLedger.TaskCustomTelemetry";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD00000000000002ELL;
  }

  else
  {
    v9 = 0xD00000000000002DLL;
  }

  if (a1 == 1)
  {
    v10 = "eStatusTelemetry";
  }

  else
  {
    v10 = "ouseLedger.TaskStatusTelemetry";
  }

  if (!a1)
  {
    v9 = 0xD000000000000030;
    v10 = "oad";
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v7 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "eStatusTelemetry";
      }

      else
      {
        v2 = 0xD00000000000002DLL;
        v3 = "ouseLedger.TaskStatusTelemetry";
      }
    }

    else
    {
      v2 = 0xD000000000000030;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000025;
      v3 = "ouseLedger.PushTaskTelemetry";
    }

    else
    {
      v2 = 0xD00000000000002BLL;
      v3 = ".CloudWorkerTelemetry";
    }
  }

  else if (a2 == 3)
  {
    v3 = "ouseLedger.TaskErrorTelemetry";
  }

  else
  {
    v2 = 0xD00000000000002CLL;
    v3 = "ouseLedger.TaskCustomTelemetry";
  }

  if (v12 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DF22B620();
  }

  return v13 & 1;
}

uint64_t sub_1DF17DAE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F6973726556;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x697078456B736154;
    }

    else
    {
      v4 = 0x6E6F6973726556;
    }

    if (v3)
    {
      v5 = 0xEE006E6F69746172;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001DF23D110;
  }

  else if (a1 == 3)
  {
    v4 = 0x68637461426E694DLL;
    v5 = 0xEC000000657A6953;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x7365727574616546;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x697078456B736154;
    v8 = 0xEE006E6F69746172;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v6 = 0x80000001DF23D110;
    v7 = 0x68637461426E694DLL;
    v8 = 0xEC000000657A6953;
    if (a2 != 3)
    {
      v7 = 0x7365727574616546;
      v8 = 0xE800000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DF22B620();
  }

  return v12 & 1;
}

uint64_t sub_1DF17DC94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4764696C61766E69;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x80000001DF23CED0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x4B64696C61766E69;
    v4 = 0xEA00000000007965;
  }

  else if (a1 == 3)
  {
    v3 = 0x5664696C61766E69;
    v4 = 0xEC00000065756C61;
  }

  else
  {
    v4 = 0x80000001DF23CF10;
    v3 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x4764696C61766E69;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0xEC00000070756F72;
    }

    else
    {
      v6 = 0x80000001DF23CED0;
    }

    if (v3 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEA00000000007965;
    if (v3 != 0x4B64696C61766E69)
    {
LABEL_34:
      v8 = sub_1DF22B620();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x5664696C61766E69;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 3)
    {
      v6 = 0xEC00000065756C61;
    }

    else
    {
      v6 = 0x80000001DF23CF10;
    }

    if (v3 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_1DF17DE5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6E6F6974656C70;
  v3 = 0x6D6F43656C637963;
  v4 = a1;
  v5 = 0x6974656C706D6F63;
  v6 = 0xEA00000000006E6FLL;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (a1 != 4)
  {
    v8 = 0x6C61727265666564;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x696146656C637963;
  v10 = 0xEC0000006572756CLL;
  if (a1 != 1)
  {
    v9 = 0x666544656C637963;
    v10 = 0xED00006C61727265;
  }

  if (!a1)
  {
    v9 = 0x6D6F43656C637963;
    v10 = 0xEF6E6F6974656C70;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA00000000006E6FLL;
      if (v11 != 0x6974656C706D6F63)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6572756C696166)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6C61727265666564)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC0000006572756CLL;
        if (v11 != 0x696146656C637963)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x666544656C637963;
      v2 = 0xED00006C61727265;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1DF22B620();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1DF17E090(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00747365757165;
  v3 = 0x5264696C61766E69;
  v4 = a1;
  v5 = 0xEB0000000064696CLL;
  v6 = 0x6E6E75526B736174;
  if (a1 != 4)
  {
    v6 = 0x646E65506B736174;
  }

  if (a1 == 3)
  {
    v6 = 0x61766E496B736174;
  }

  else
  {
    v5 = 0xEB00000000676E69;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001DF23D6C0;
  v9 = 0x696C756465686373;
  v10 = 0xEF726F727245676ELL;
  if (a1 == 1)
  {
    v9 = 0x5264696C61766E69;
    v10 = 0xEE00747365757165;
  }

  if (a1)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = 0x61766E496B736174;
      v13 = 6580588;
    }

    else
    {
      if (a2 == 4)
      {
        v3 = 0x6E6E75526B736174;
      }

      else
      {
        v3 = 0x646E65506B736174;
      }

      v13 = 6778473;
    }

    v2 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      v3 = 0x696C756465686373;
      v2 = 0xEF726F727245676ELL;
    }
  }

  else
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001DF23D6C0;
  }

  if (v11 == v3 && v12 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1DF22B620();
  }

  return v14 & 1;
}

uint64_t sub_1DF17E288(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6973;
  v3 = 0x726556646C697562;
  if (a1 <= 3u)
  {
    v4 = 0x6D754E6C65646F6DLL;
    v5 = 0xEB00000000726562;
    if (a1 != 2)
    {
      v4 = 0x4E746375646F7270;
      v5 = 0xEB00000000656D61;
    }

    v8 = 0x6C43656369766564;
    v9 = 0xEB00000000737361;
    if (!a1)
    {
      v8 = 0x726556646C697562;
      v9 = 0xEC0000006E6F6973;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x6F436E6F69676572;
    v5 = 0xEA00000000006564;
    v6 = 0x6E496E6F69676572;
    v7 = 0xEA00000000006F66;
    if (a1 != 7)
    {
      v6 = 0xD000000000000011;
      v7 = 0x80000001DF23CEB0;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x54746375646F7270;
    v9 = 0xEB00000000657079;
    if (a1 != 4)
    {
      v8 = 0x56746375646F7270;
      v9 = 0xEE006E6F69737265;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0x6D754E6C65646F6DLL;
        v14 = 7497058;
      }

      else
      {
        v13 = 0x4E746375646F7270;
        v14 = 6647137;
      }
    }

    else
    {
      if (!a2)
      {
        goto LABEL_40;
      }

      v13 = 0x6C43656369766564;
      v14 = 7566177;
    }

    v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v11 != v13)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v2 = 0xEB00000000657079;
      if (v11 != 0x54746375646F7270)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0xEE006E6F69737265;
      if (v11 != 0x56746375646F7270)
      {
        goto LABEL_44;
      }
    }

    goto LABEL_41;
  }

  if (a2 == 6)
  {
    v2 = 0xEA00000000006564;
    if (v11 != 0x6F436E6F69676572)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (a2 == 7)
  {
    v2 = 0xEA00000000006F66;
    if (v11 != 0x6E496E6F69676572)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v3 = 0xD000000000000011;
  v2 = 0x80000001DF23CEB0;
LABEL_40:
  if (v11 != v3)
  {
LABEL_44:
    v15 = sub_1DF22B620();
    goto LABEL_45;
  }

LABEL_41:
  if (v12 != v2)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_1DF17E59C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000029294E2A5DLL;
  v3 = 0x4E5E5B4E283D3F28;
  v4 = a1;
  v5 = 0x5B2A5D435E5B4428;
  v6 = 0xEC000000295D4643;
  if (a1 != 5)
  {
    v5 = 0x462A5D465E5B4628;
    v6 = 0xE900000000000029;
  }

  v7 = 692343336;
  v8 = 0xE400000000000000;
  if (a1 != 3)
  {
    v7 = 0x432A5D435E5B4428;
    v8 = 0xE900000000000029;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 692277800;
  if (a1 != 1)
  {
    v10 = 692474408;
    v9 = 0xE400000000000000;
  }

  if (!a1)
  {
    v10 = 0x4E5E5B4E283D3F28;
    v9 = 0xED000029294E2A5DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0x5B2A5D435E5B4428;
        v2 = 0xEC000000295D4643;
        goto LABEL_30;
      }

      v3 = 0x462A5D465E5B4628;
    }

    else
    {
      if (a2 == 3)
      {
        v3 = 692343336;
        v2 = 0xE400000000000000;
        goto LABEL_30;
      }

      v3 = 0x432A5D435E5B4428;
    }

    v2 = 0xE900000000000029;
    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xE400000000000000;
      v3 = 692277800;
    }

    else
    {
      v3 = 692474408;
      v2 = 0xE400000000000000;
    }
  }

LABEL_30:
  if (v11 == v3 && v12 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DF22B620();
  }

  return v13 & 1;
}