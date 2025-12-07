void sub_1D1B70C9C(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57[0] = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v57 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(v76 - 8);
  v8 = MEMORY[0x1EEE9AC00](v76);
  v71 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v57 - v10;
  v69 = type metadata accessor for StaticService(0);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D1E66A7C();
  v12 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v57 - v17;
  v18 = *(a1 + 64);
  v60 = a1 + 64;
  v19 = -1 << *(a1 + 32);
  v79 = MEMORY[0x1E69E7CD0];
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v57[1] = v19;
  v22 = (63 - v19) >> 6;
  v61 = v12 + 32;
  v62 = v12 + 16;
  v72 = (v7 + 48);
  v73 = (v7 + 56);
  v66 = v12;
  v67 = a1;
  v68 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 - 1;
      v29 = v75;
      v28 = v76;
      v25 = v74;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {
          v21 = 0;
          v39 = 1;
          v23 = v27;
          goto LABEL_16;
        }

        v21 = *(v60 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_15;
        }
      }

      __break(1u);
      return;
    }

    v24 = v23;
    v25 = v74;
LABEL_15:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v24 << 6);
    v33 = v66;
    v32 = v67;
    v34 = v63;
    v35 = v77;
    (*(v66 + 16))(v63, *(v67 + 48) + *(v66 + 72) * v31, v77);
    v36 = v64;
    sub_1D1B733D4(*(v32 + 56) + *(v65 + 72) * v31, v64, type metadata accessor for StaticService);
    v28 = v76;
    v37 = *(v76 + 48);
    v38 = *(v33 + 32);
    v29 = v75;
    v38(v75, v34, v35);
    sub_1D1B7336C(v36, v29 + v37, type metadata accessor for StaticService);
    v39 = 0;
LABEL_16:
    (*v73)(v29, v39, 1, v28);
    sub_1D1741A90(v29, v25, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v72)(v25, 1, v28) == 1)
    {
      break;
    }

    v40 = v70;
    sub_1D1741A90(v25, v70, &qword_1EC642DB0, &unk_1D1E6F360);
    v41 = v71;
    sub_1D1741C08(v40, v71, &qword_1EC642DB0, &unk_1D1E6F360);
    v42 = v41 + *(v28 + 48);
    v43 = (v42 + *(v69 + 80));
    v44 = *v43;
    v45 = v43[1];

    sub_1D1B70478(v42, type metadata accessor for StaticService);
    (*v68)(v41, v77);
    sub_1D1741A30(v40, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v45)
    {
      sub_1D1762FC4(&v78, v44, v45);
    }
  }

  v46 = v67;

  sub_1D1716918(v46);
  v47 = v79;
  v48 = v59;
  v49 = v58;
  sub_1D1B733D4(v59, v58, type metadata accessor for StatusItemLocation);
  v50 = *(v66 + 48);
  LODWORD(v46) = v50(v49, 1, v77);
  sub_1D1B70478(v49, type metadata accessor for StatusItemLocation);
  if (v46 == 1 && *(v47 + 16) == 1)
  {
    sub_1D1772608(v47);
    if (v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v48;
  v53 = v57[0];
  sub_1D1B733D4(v52, v57[0], type metadata accessor for StatusItemLocation);
  if (v50(v53, 1, v77) == 1)
  {
    static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D1E739C0;
    v55 = *(v47 + 16);

    v56 = MEMORY[0x1E69E65A8];
    *(v54 + 56) = MEMORY[0x1E69E6530];
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    sub_1D1E6783C();

LABEL_25:

    return;
  }

  static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5C10);
  sub_1D1B70478(v53, type metadata accessor for StatusItemLocation);
}

void sub_1D1B7145C(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57[0] = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v57 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(v76 - 8);
  v8 = MEMORY[0x1EEE9AC00](v76);
  v71 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v57 - v10;
  v69 = type metadata accessor for StaticService(0);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D1E66A7C();
  v12 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v57 - v17;
  v18 = *(a1 + 64);
  v60 = a1 + 64;
  v19 = -1 << *(a1 + 32);
  v79 = MEMORY[0x1E69E7CD0];
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v57[1] = v19;
  v22 = (63 - v19) >> 6;
  v61 = v12 + 32;
  v62 = v12 + 16;
  v72 = (v7 + 48);
  v73 = (v7 + 56);
  v66 = v12;
  v67 = a1;
  v68 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 - 1;
      v29 = v75;
      v28 = v76;
      v25 = v74;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {
          v21 = 0;
          v39 = 1;
          v23 = v27;
          goto LABEL_16;
        }

        v21 = *(v60 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_15;
        }
      }

      __break(1u);
      return;
    }

    v24 = v23;
    v25 = v74;
LABEL_15:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v24 << 6);
    v33 = v66;
    v32 = v67;
    v34 = v63;
    v35 = v77;
    (*(v66 + 16))(v63, *(v67 + 48) + *(v66 + 72) * v31, v77);
    v36 = v64;
    sub_1D1B733D4(*(v32 + 56) + *(v65 + 72) * v31, v64, type metadata accessor for StaticService);
    v28 = v76;
    v37 = *(v76 + 48);
    v38 = *(v33 + 32);
    v29 = v75;
    v38(v75, v34, v35);
    sub_1D1B7336C(v36, v29 + v37, type metadata accessor for StaticService);
    v39 = 0;
LABEL_16:
    (*v73)(v29, v39, 1, v28);
    sub_1D1741A90(v29, v25, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v72)(v25, 1, v28) == 1)
    {
      break;
    }

    v40 = v70;
    sub_1D1741A90(v25, v70, &qword_1EC642DB0, &unk_1D1E6F360);
    v41 = v71;
    sub_1D1741C08(v40, v71, &qword_1EC642DB0, &unk_1D1E6F360);
    v42 = v41 + *(v28 + 48);
    v43 = (v42 + *(v69 + 80));
    v44 = *v43;
    v45 = v43[1];

    sub_1D1B70478(v42, type metadata accessor for StaticService);
    (*v68)(v41, v77);
    sub_1D1741A30(v40, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v45)
    {
      sub_1D1762FC4(&v78, v44, v45);
    }
  }

  v46 = v67;

  sub_1D1716918(v46);
  v47 = v79;
  v48 = v59;
  v49 = v58;
  sub_1D1B733D4(v59, v58, type metadata accessor for StatusItemLocation);
  v50 = *(v66 + 48);
  LODWORD(v46) = v50(v49, 1, v77);
  sub_1D1B70478(v49, type metadata accessor for StatusItemLocation);
  if (v46 == 1 && *(v47 + 16) == 1)
  {
    sub_1D1772608(v47);
    if (v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v48;
  v53 = v57[0];
  sub_1D1B733D4(v52, v57[0], type metadata accessor for StatusItemLocation);
  if (v50(v53, 1, v77) == 1)
  {
    static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D1E739C0;
    v55 = *(v47 + 16);

    v56 = MEMORY[0x1E69E65A8];
    *(v54 + 56) = MEMORY[0x1E69E6530];
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    sub_1D1E6783C();

LABEL_25:

    return;
  }

  static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC5D30);
  sub_1D1B70478(v53, type metadata accessor for StatusItemLocation);
}

void sub_1D1B71C20(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57[0] = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v57 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(v76 - 8);
  v8 = MEMORY[0x1EEE9AC00](v76);
  v71 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v57 - v10;
  v69 = type metadata accessor for StaticService(0);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D1E66A7C();
  v12 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v57 - v17;
  v18 = *(a1 + 64);
  v60 = a1 + 64;
  v19 = -1 << *(a1 + 32);
  v79 = MEMORY[0x1E69E7CD0];
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v57[1] = v19;
  v22 = (63 - v19) >> 6;
  v61 = v12 + 32;
  v62 = v12 + 16;
  v72 = (v7 + 48);
  v73 = (v7 + 56);
  v66 = v12;
  v67 = a1;
  v68 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 - 1;
      v29 = v75;
      v28 = v76;
      v25 = v74;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {
          v21 = 0;
          v39 = 1;
          v23 = v27;
          goto LABEL_16;
        }

        v21 = *(v60 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_15;
        }
      }

      __break(1u);
      return;
    }

    v24 = v23;
    v25 = v74;
LABEL_15:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v24 << 6);
    v33 = v66;
    v32 = v67;
    v34 = v63;
    v35 = v77;
    (*(v66 + 16))(v63, *(v67 + 48) + *(v66 + 72) * v31, v77);
    v36 = v64;
    sub_1D1B733D4(*(v32 + 56) + *(v65 + 72) * v31, v64, type metadata accessor for StaticService);
    v28 = v76;
    v37 = *(v76 + 48);
    v38 = *(v33 + 32);
    v29 = v75;
    v38(v75, v34, v35);
    sub_1D1B7336C(v36, v29 + v37, type metadata accessor for StaticService);
    v39 = 0;
LABEL_16:
    (*v73)(v29, v39, 1, v28);
    sub_1D1741A90(v29, v25, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v72)(v25, 1, v28) == 1)
    {
      break;
    }

    v40 = v70;
    sub_1D1741A90(v25, v70, &qword_1EC642DB0, &unk_1D1E6F360);
    v41 = v71;
    sub_1D1741C08(v40, v71, &qword_1EC642DB0, &unk_1D1E6F360);
    v42 = v41 + *(v28 + 48);
    v43 = (v42 + *(v69 + 80));
    v44 = *v43;
    v45 = v43[1];

    sub_1D1B70478(v42, type metadata accessor for StaticService);
    (*v68)(v41, v77);
    sub_1D1741A30(v40, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v45)
    {
      sub_1D1762FC4(&v78, v44, v45);
    }
  }

  v46 = v67;

  sub_1D1716918(v46);
  v47 = v79;
  v48 = v59;
  v49 = v58;
  sub_1D1B733D4(v59, v58, type metadata accessor for StatusItemLocation);
  v50 = *(v66 + 48);
  LODWORD(v46) = v50(v49, 1, v77);
  sub_1D1B70478(v49, type metadata accessor for StatusItemLocation);
  if (v46 == 1 && *(v47 + 16) == 1)
  {
    sub_1D1772608(v47);
    if (v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v48;
  v53 = v57[0];
  sub_1D1B733D4(v52, v57[0], type metadata accessor for StatusItemLocation);
  if (v50(v53, 1, v77) == 1)
  {
    static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D1E739C0;
    v55 = *(v47 + 16);

    v56 = MEMORY[0x1E69E65A8];
    *(v54 + 56) = MEMORY[0x1E69E6530];
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    sub_1D1E6783C();

LABEL_25:

    return;
  }

  static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC5CE0);
  sub_1D1B70478(v53, type metadata accessor for StatusItemLocation);
}

void sub_1D1B723E4(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57[0] = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v57 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(v76 - 8);
  v8 = MEMORY[0x1EEE9AC00](v76);
  v71 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v57 - v10;
  v69 = type metadata accessor for StaticService(0);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D1E66A7C();
  v12 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v57 - v17;
  v18 = *(a1 + 64);
  v60 = a1 + 64;
  v19 = -1 << *(a1 + 32);
  v79 = MEMORY[0x1E69E7CD0];
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v57[1] = v19;
  v22 = (63 - v19) >> 6;
  v61 = v12 + 32;
  v62 = v12 + 16;
  v72 = (v7 + 48);
  v73 = (v7 + 56);
  v66 = v12;
  v67 = a1;
  v68 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 - 1;
      v29 = v75;
      v28 = v76;
      v25 = v74;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {
          v21 = 0;
          v39 = 1;
          v23 = v27;
          goto LABEL_16;
        }

        v21 = *(v60 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_15;
        }
      }

      __break(1u);
      return;
    }

    v24 = v23;
    v25 = v74;
LABEL_15:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v24 << 6);
    v33 = v66;
    v32 = v67;
    v34 = v63;
    v35 = v77;
    (*(v66 + 16))(v63, *(v67 + 48) + *(v66 + 72) * v31, v77);
    v36 = v64;
    sub_1D1B733D4(*(v32 + 56) + *(v65 + 72) * v31, v64, type metadata accessor for StaticService);
    v28 = v76;
    v37 = *(v76 + 48);
    v38 = *(v33 + 32);
    v29 = v75;
    v38(v75, v34, v35);
    sub_1D1B7336C(v36, v29 + v37, type metadata accessor for StaticService);
    v39 = 0;
LABEL_16:
    (*v73)(v29, v39, 1, v28);
    sub_1D1741A90(v29, v25, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v72)(v25, 1, v28) == 1)
    {
      break;
    }

    v40 = v70;
    sub_1D1741A90(v25, v70, &qword_1EC642DB0, &unk_1D1E6F360);
    v41 = v71;
    sub_1D1741C08(v40, v71, &qword_1EC642DB0, &unk_1D1E6F360);
    v42 = v41 + *(v28 + 48);
    v43 = (v42 + *(v69 + 80));
    v44 = *v43;
    v45 = v43[1];

    sub_1D1B70478(v42, type metadata accessor for StaticService);
    (*v68)(v41, v77);
    sub_1D1741A30(v40, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v45)
    {
      sub_1D1762FC4(&v78, v44, v45);
    }
  }

  v46 = v67;

  sub_1D1716918(v46);
  v47 = v79;
  v48 = v59;
  v49 = v58;
  sub_1D1B733D4(v59, v58, type metadata accessor for StatusItemLocation);
  v50 = *(v66 + 48);
  LODWORD(v46) = v50(v49, 1, v77);
  sub_1D1B70478(v49, type metadata accessor for StatusItemLocation);
  if (v46 == 1 && *(v47 + 16) == 1)
  {
    sub_1D1772608(v47);
    if (v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v48;
  v53 = v57[0];
  sub_1D1B733D4(v52, v57[0], type metadata accessor for StatusItemLocation);
  if (v50(v53, 1, v77) == 1)
  {
    static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D1E739C0;
    v55 = *(v47 + 16);

    v56 = MEMORY[0x1E69E65A8];
    *(v54 + 56) = MEMORY[0x1E69E6530];
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    sub_1D1E6783C();

LABEL_25:

    return;
  }

  static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EC5C90);
  sub_1D1B70478(v53, type metadata accessor for StatusItemLocation);
}

void sub_1D1B72BA8(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57[0] = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = v57 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(v76 - 8);
  v8 = MEMORY[0x1EEE9AC00](v76);
  v71 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v57 - v10;
  v69 = type metadata accessor for StaticService(0);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D1E66A7C();
  v12 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v75 = v57 - v17;
  v18 = *(a1 + 64);
  v60 = a1 + 64;
  v19 = -1 << *(a1 + 32);
  v79 = MEMORY[0x1E69E7CD0];
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v57[1] = v19;
  v22 = (63 - v19) >> 6;
  v61 = v12 + 32;
  v62 = v12 + 16;
  v72 = (v7 + 48);
  v73 = (v7 + 56);
  v66 = v12;
  v67 = a1;
  v68 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v22;
      }

      v27 = v26 - 1;
      v29 = v75;
      v28 = v76;
      v25 = v74;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v22)
        {
          v21 = 0;
          v39 = 1;
          v23 = v27;
          goto LABEL_16;
        }

        v21 = *(v60 + 8 * v24);
        ++v23;
        if (v21)
        {
          v23 = v24;
          goto LABEL_15;
        }
      }

      __break(1u);
      return;
    }

    v24 = v23;
    v25 = v74;
LABEL_15:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v24 << 6);
    v33 = v66;
    v32 = v67;
    v34 = v63;
    v35 = v77;
    (*(v66 + 16))(v63, *(v67 + 48) + *(v66 + 72) * v31, v77);
    v36 = v64;
    sub_1D1B733D4(*(v32 + 56) + *(v65 + 72) * v31, v64, type metadata accessor for StaticService);
    v28 = v76;
    v37 = *(v76 + 48);
    v38 = *(v33 + 32);
    v29 = v75;
    v38(v75, v34, v35);
    sub_1D1B7336C(v36, v29 + v37, type metadata accessor for StaticService);
    v39 = 0;
LABEL_16:
    (*v73)(v29, v39, 1, v28);
    sub_1D1741A90(v29, v25, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v72)(v25, 1, v28) == 1)
    {
      break;
    }

    v40 = v70;
    sub_1D1741A90(v25, v70, &qword_1EC642DB0, &unk_1D1E6F360);
    v41 = v71;
    sub_1D1741C08(v40, v71, &qword_1EC642DB0, &unk_1D1E6F360);
    v42 = v41 + *(v28 + 48);
    v43 = (v42 + *(v69 + 80));
    v44 = *v43;
    v45 = v43[1];

    sub_1D1B70478(v42, type metadata accessor for StaticService);
    (*v68)(v41, v77);
    sub_1D1741A30(v40, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v45)
    {
      sub_1D1762FC4(&v78, v44, v45);
    }
  }

  v46 = v67;

  sub_1D1716918(v46);
  v47 = v79;
  v48 = v59;
  v49 = v58;
  sub_1D1B733D4(v59, v58, type metadata accessor for StatusItemLocation);
  v50 = *(v66 + 48);
  LODWORD(v46) = v50(v49, 1, v77);
  sub_1D1B70478(v49, type metadata accessor for StatusItemLocation);
  if (v46 == 1 && *(v47 + 16) == 1)
  {
    sub_1D1772608(v47);
    if (v51)
    {
      goto LABEL_25;
    }
  }

  v52 = v48;
  v53 = v57[0];
  sub_1D1B733D4(v52, v57[0], type metadata accessor for StatusItemLocation);
  if (v50(v53, 1, v77) == 1)
  {
    static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D1E739C0;
    v55 = *(v47 + 16);

    v56 = MEMORY[0x1E69E65A8];
    *(v54 + 56) = MEMORY[0x1E69E6530];
    *(v54 + 64) = v56;
    *(v54 + 32) = v55;
    sub_1D1E6783C();

LABEL_25:

    return;
  }

  static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC5B80);
  sub_1D1B70478(v53, type metadata accessor for StatusItemLocation);
}

uint64_t sub_1D1B7336C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B733D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t UmbrellaCategoryInformation.speakerStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8B0, &unk_1D1E9ADF0) - 8;
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B808, &qword_1D1E9AD08);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B800, &qword_1D1E9AD00);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for StateSnapshot(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v2 + 24);
  sub_1D1B75DE0(a1, v20, type metadata accessor for StateSnapshot);
  v21 = *(a1 + *(v18 + 56));
  v46 = v20;
  v22 = sub_1D1D1D6A8(sub_1D1B73C90, v45, v21);
  v23 = *&v20[*(v18 + 52)];
  v44 = a1;
  v24 = sub_1D1D1D744(sub_1D1B743FC, v43, v23);
  v35 = v16;
  sub_1D1B3C9B0(v22, v24, v16);
  v25 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v42 = a1;
  v26 = sub_1D190104C(v25, sub_1D1B744AC, v41, v37);
  v34 = v10;
  sub_1D1B3E58C(v26, v10);
  v36 = v14;
  sub_1D1741C08(v16, v14, &qword_1EC64B800, &qword_1D1E9AD00);
  v27 = v38;
  sub_1D1741C08(v10, v38, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741C08(v14, v5, &qword_1EC64B800, &qword_1D1E9AD00);
  v28 = v39;
  v29 = *(v39 + 56);
  v30 = v27;
  sub_1D1741C08(v27, &v5[v29], &qword_1EC64B808, &qword_1D1E9AD08);
  v31 = v40;
  sub_1D1741A90(v5, v40, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A90(&v5[v29], v31 + *(v28 + 56), &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v34, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v35, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A30(v30, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v36, &qword_1EC64B800, &qword_1D1E9AD00);
  return sub_1D1B75E68(v20, type metadata accessor for StateSnapshot);
}

uint64_t sub_1D1B73800(uint64_t a1, uint64_t a2)
{
  v9[1] = *(a2 + *(type metadata accessor for StaticService(0) + 104));
  ServiceKind.umbrellaCategory.getter(v9);
  v2 = "00-8000-0026BB765291";
  v3 = "17-A590-755E1AAC02AE";
  if (v9[0] != 6)
  {
    v3 = "73-8FBD-0E8978A33403";
  }

  v4 = "60-AD68-D91053B75F44";
  if (v9[0] != 4)
  {
    v4 = "7E-BE63-1D00B1500545";
  }

  if (v9[0] > 5u)
  {
    v4 = v3;
  }

  v5 = "73-A058-C5E64BC487B2";
  if (v9[0] != 2)
  {
    v5 = "CE-986D-63B28F62C9E3";
  }

  if (v9[0])
  {
    v2 = "13-AA62-01754F256DD5";
  }

  if (v9[0] > 1u)
  {
    v2 = v5;
  }

  if (v9[0] <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if ((v6 | 0x8000000000000000) == 0x80000001D1EB3730)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D1E6904C();
  }

  return v7 & 1;
}

uint64_t sub_1D1B73928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for StaticAccessory(0);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  v10 = v9 - 8;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *(v5 + 16);
  v16(&v26 - v14, a1, v4);
  sub_1D1B75DE0(v30, &v15[*(v10 + 56)], type metadata accessor for StaticMediaProfile);
  v17 = *(v31 + *(type metadata accessor for StateSnapshot(0) + 32));
  sub_1D1741C08(v15, v13, &qword_1EC645468, &unk_1D1E995E0);
  v18 = &v13[*(v10 + 56)];
  v19 = type metadata accessor for StaticMediaProfile(0);
  v16(v7, v18 + *(v19 + 56), v4);
  sub_1D1B75E68(v18, type metadata accessor for StaticMediaProfile);
  if (*(v17 + 16) && (v20 = sub_1D1742188(), (v21 & 1) != 0))
  {
    v22 = v28;
    sub_1D1B75DE0(*(v17 + 56) + *(v27 + 72) * v20, v28, type metadata accessor for StaticAccessory);
    v23 = *(v5 + 8);
    v23(v7, v4);
    sub_1D1741A30(v15, &qword_1EC645468, &unk_1D1E995E0);
    v24 = *(v22 + *(v29 + 72));
    sub_1D1B75E68(v22, type metadata accessor for StaticAccessory);
  }

  else
  {
    v23 = *(v5 + 8);
    v23(v7, v4);
    sub_1D1741A30(v15, &qword_1EC645468, &unk_1D1E995E0);
    v24 = 1;
  }

  v23(v13, v4);
  return v24;
}

uint64_t sub_1D1B73CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v36 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = sub_1D1E66A7C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  sub_1D1B75DE0(a2, &v17[*(v12 + 56)], type metadata accessor for StaticMediaSystem);
  v31 = v17;
  sub_1D1741C08(v17, v15, &qword_1EC645478, &qword_1D1E79A08);
  v20 = &v15[*(v12 + 56)];
  v21 = *(v20 + *(type metadata accessor for StaticMediaSystem(0) + 92));

  sub_1D1B75E68(v20, type metadata accessor for StaticMediaSystem);
  v22 = v33;
  v35 = v32;
  v23 = sub_1D1892E1C(sub_1D1B75E48, v34, v21);
  v33 = v22;

  result = (*(v19 + 8))(v15, v18);
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    while (v26 < *(v23 + 16))
    {
      sub_1D1741C08(v27 + *(v36 + 72) * v26, v10, &qword_1EC6436C8, &unk_1D1E97C40);
      sub_1D1741A90(v10, v8, &qword_1EC6436C8, &unk_1D1E97C40);
      v28 = type metadata accessor for StaticAccessory(0);
      if ((*(*(v28 - 8) + 48))(v8, 1, v28) == 1)
      {
        result = sub_1D1741A30(v8, &qword_1EC6436C8, &unk_1D1E97C40);
      }

      else
      {
        v29 = v8[*(v28 + 72)];
        result = sub_1D1B75E68(v8, type metadata accessor for StaticAccessory);
        if ((v29 & 1) == 0)
        {
          sub_1D1741A30(v31, &qword_1EC645478, &qword_1D1E79A08);

          return 0;
        }
      }

      if (v25 == ++v26)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_1D1741A30(v31, &qword_1EC645478, &qword_1D1E79A08);
    return 1;
  }

  return result;
}

uint64_t sub_1D1B74084@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v3 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for StaticAccessory(0);
    v9 = *(v8 - 8);
    sub_1D1B75DE0(v7 + *(v9 + 72) * v6, a2, type metadata accessor for StaticAccessory);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v11 = type metadata accessor for StaticAccessory(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_1D1B741C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v12 + 16) && (v13 = sub_1D1742188(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for StaticService(0);
    v18 = *(v17 - 8);
    sub_1D1B75DE0(v16 + *(v18 + 72) * v15, v7, type metadata accessor for StaticService);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for StaticService(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  return sub_1D1B0D124(v7, v10);
}

void *sub_1D1B7441C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D1D1ED00(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t _s13HomeDataModel27UmbrellaCategoryInformationV05mediaE18StaticAccessoryIds11accessoriesShy10Foundation4UUIDVGSDyAhA0hI0VG_tFZ_0(uint64_t a1)
{
  v115 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticService(0);
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v112 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v7 = MEMORY[0x1EEE9AC00](v111);
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v97 = &v84 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v103 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v84 - v13;
  v114 = MEMORY[0x1E69E7CD0];
  v15 = *(a1 + 64);
  v113 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v102 = v3 + 16;
  v104 = v3;
  v110 = v3 + 8;
  v87 = "CE-986D-63B28F62C9E3";
  v106 = 0x80000001D1EB3730;

  v20 = 0;
  v85 = 0;
  v105 = "00-8000-0026BB765291";
  v92 = "73-8FBD-0E8978A33403";
  v94 = "60-AD68-D91053B75F44";
  v88 = "17-A590-755E1AAC02AE";
  v86 = "73-A058-C5E64BC487B2";
  v99 = v19;
  v100 = a1;
  v101 = v2;
  v109 = v14;
  while (1)
  {
LABEL_5:
    if (v18)
    {
      goto LABEL_10;
    }

    do
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
      }

      if (v21 >= v19)
      {

        return v114;
      }

      v18 = *(v113 + 8 * v21);
      ++v20;
    }

    while (!v18);
    v20 = v21;
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v20 << 6);
    v24 = v104;
    (*(v104 + 16))(v14, *(a1 + 48) + *(v104 + 72) * v23, v2);
    v25 = v2;
    v26 = *(a1 + 56);
    v27 = type metadata accessor for StaticAccessory(0);
    v28 = v26 + *(*(v27 - 1) + 72) * v23;
    v29 = v111;
    sub_1D1B75DE0(v28, &v14[*(v111 + 48)], type metadata accessor for StaticAccessory);
    v30 = v14;
    v31 = v103;
    sub_1D1741C08(v30, v103, &qword_1EC644B30, &qword_1D1E77280);
    v32 = v31 + *(v29 + 48);
    v33 = v32 + v27[23];
    v34 = *v33;
    v35 = *(v33 + 8);
    sub_1D18EB144(*v33, *(v33 + 8));
    sub_1D1B75E68(v32, type metadata accessor for StaticAccessory);
    v36 = *(v24 + 8);
    v36(v31, v25);
    if (!v35)
    {
      sub_1D18EB2D8(v34, 0);
      v14 = v109;
      goto LABEL_43;
    }

    if (v35 == 255)
    {
      break;
    }

    v14 = v109;
    if (v35 != 2)
    {
      sub_1D18EB2D8(v34, v35);
      goto LABEL_45;
    }

    if ((v34 & 0x100) != 0)
    {
LABEL_45:
      v62 = v98;
      sub_1D1741C08(v14, v98, &qword_1EC644B30, &qword_1D1E77280);
      v63 = v14;
      v64 = v111;
      v65 = &v62[*(v111 + 48)];
      v66 = v36;
      v67 = *(v65 + v27[15]);
      sub_1D1B75E68(v65, type metadata accessor for StaticAccessory);
      v68 = v101;
      v66(v62, v101);
      if (v67)
      {
        sub_1D1741A30(v63, &qword_1EC644B30, &qword_1D1E77280);
        v14 = v63;
      }

      else
      {
        v77 = v63;
        sub_1D1741C08(v63, v62, &qword_1EC644B30, &qword_1D1E77280);
        v78 = *(v64 + 48);
        v79 = v95;
        sub_1D1762CB8(v95, v62);
        v66(v79, v68);
        sub_1D1741A30(v77, &qword_1EC644B30, &qword_1D1E77280);
        sub_1D1B75E68(&v62[v78], type metadata accessor for StaticAccessory);
        v14 = v77;
      }

      v19 = v99;
      a1 = v100;
      v2 = v68;
      continue;
    }

LABEL_43:
    sub_1D1741A30(v14, &qword_1EC644B30, &qword_1D1E77280);
    a1 = v100;
    v2 = v101;
  }

  v90 = v36;
  v14 = v109;
  v37 = v97;
  sub_1D1741C08(v109, v97, &qword_1EC644B30, &qword_1D1E77280);
  v38 = v37 + *(v111 + 48);
  v39 = *(v38 + v27[20]);

  v40 = v38;
  v41 = v39;
  v42 = sub_1D1B75E68(v40, type metadata accessor for StaticAccessory);
  v43 = *(v39 + 32);
  v91 = ((1 << v43) + 63) >> 6;
  if ((v43 & 0x3Fu) <= 0xD)
  {
LABEL_16:
    v89 = &v84;
    MEMORY[0x1EEE9AC00](v42);
    v93 = &v84 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v93, v44);
    v45 = 0;
    v46 = 0;
    v47 = v41 + 64;
    v48 = 1 << *(v41 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(v41 + 64);
    v51 = (v48 + 63) >> 6;
    while (1)
    {
      v96 = v45;
      while (2)
      {
        if (v50)
        {
          v52 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          goto LABEL_28;
        }

        v53 = v46;
        v14 = v109;
        do
        {
          v46 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v46 >= v51)
          {
            v69 = sub_1D188B1C8(v93, v91, v96, v41);
            v2 = v101;
            v19 = v99;
            goto LABEL_49;
          }

          v54 = *(v47 + 8 * v46);
          ++v53;
        }

        while (!v54);
        v52 = __clz(__rbit64(v54));
        v50 = (v54 - 1) & v54;
LABEL_28:
        v55 = v52 | (v46 << 6);
        v56 = v41;
        v57 = *(v41 + 56) + *(v107 + 72) * v55;
        v58 = v112;
        sub_1D1B75DE0(v57, v112, type metadata accessor for StaticService);
        v59 = v105;
        switch(*(v58 + *(v108 + 104)))
        {
          case 3:
          case 4:
          case 0x10:
          case 0x12:
          case 0x14:
          case 0x15:
          case 0x16:
          case 0x24:
          case 0x2D:
          case 0x2E:
          case 0x30:
          case 0x34:
            goto LABEL_35;
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xE:
          case 0xF:
          case 0x13:
          case 0x1D:
          case 0x1E:
          case 0x1F:
          case 0x20:
          case 0x21:
          case 0x23:
          case 0x25:
          case 0x33:
            v60 = &v120;
            goto LABEL_34;
          case 0x11:
          case 0x18:
          case 0x1A:
          case 0x2F:
            v60 = &v118;
            goto LABEL_34;
          case 0x1B:
          case 0x1C:
            v60 = &v116;
            goto LABEL_34;
          case 0x26:
          case 0x2C:
            v60 = &v117;
            goto LABEL_34;
          default:
            v60 = &v119;
LABEL_34:
            v59 = *(v60 - 32);
LABEL_35:
            if ((v59 | 0x8000000000000000) != v106)
            {
              v61 = sub_1D1E6904C();

              sub_1D1B75E68(v112, type metadata accessor for StaticService);
              v41 = v56;
              if (v61)
              {
                goto LABEL_39;
              }

              continue;
            }

            sub_1D1B75E68(v112, type metadata accessor for StaticService);
            v41 = v56;
LABEL_39:
            *&v93[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
            v45 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              goto LABEL_61;
            }

            break;
        }

        break;
      }
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    v41 = v39;
    goto LABEL_16;
  }

  v80 = swift_slowAlloc();

  v81 = v85;
  v82 = sub_1D1B7441C(v80, v91, v39, sub_1D1B73800, 0);
  v85 = v81;
  if (!v81)
  {
    v69 = v82;

    MEMORY[0x1D3893640](v80, -1, -1);
    v2 = v101;
LABEL_49:

    v70 = v90;
    v90(v97, v2);
    v71 = *(v69 + 16);

    if (v71)
    {
      v72 = v70;
      v73 = v98;
      sub_1D1741C08(v14, v98, &qword_1EC644B30, &qword_1D1E77280);
      v96 = *(v111 + 48);
      v74 = v2;
      v75 = v95;
      sub_1D1762CB8(v95, v73);
      v76 = v75;
      v2 = v74;
      v72(v76, v74);
      sub_1D1741A30(v14, &qword_1EC644B30, &qword_1D1E77280);
      sub_1D1B75E68(&v73[v96], type metadata accessor for StaticAccessory);
    }

    else
    {
      sub_1D1741A30(v14, &qword_1EC644B30, &qword_1D1E77280);
    }

    a1 = v100;
    goto LABEL_5;
  }

  result = MEMORY[0x1D3893640](v80, -1, -1);
  __break(1u);
  return result;
}

void sub_1D1B74F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v31 - v5;
  v7 = type metadata accessor for StateSnapshot(0);
  v8 = _s13HomeDataModel27UmbrellaCategoryInformationV05mediaE18StaticAccessoryIds11accessoriesShy10Foundation4UUIDVGSDyAhA0hI0VG_tFZ_0(*(a3 + *(v7 + 32)));
  v9 = sub_1D1719534(a2, v8);

  if ((v9 & 1) == 0)
  {
    return;
  }

  v10 = *(a2 + *(type metadata accessor for StaticAccessory(0) + 80));
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v31 = 0x80000001D1EB33D0;
  v32 = 0x80000001D1EB34F0;

  v15 = 0;
  while (v13)
  {
LABEL_10:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = v17 | (v15 << 6);
    v19 = *(v10 + 48);
    v20 = sub_1D1E66A7C();
    (*(*(v20 - 8) + 16))(v6, v19 + *(*(v20 - 8) + 72) * v18, v20);
    v21 = *(v10 + 56);
    v22 = (type metadata accessor for StaticService(0) - 8);
    v23 = v21 + *(*v22 + 72) * v18;
    v24 = &v6[*(v33 + 48)];
    sub_1D1B75DE0(v23, v24, type metadata accessor for StaticService);
    v25 = v22[28];
    v35 = *(v24 + v25);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v32 == v26)
    {
      goto LABEL_12;
    }

    v27 = sub_1D1E6904C();

    if (v27)
    {
      goto LABEL_14;
    }

    v34 = *(v24 + v25);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v31 == v29)
    {
LABEL_12:

LABEL_14:
      v28 = StaticService.isActivated.getter();
      sub_1D1741A30(v6, &qword_1EC642DB0, &unk_1D1E6F360);
      if (v28)
      {
LABEL_21:

        return;
      }
    }

    else
    {
      v30 = sub_1D1E6904C();

      if (v30)
      {
        goto LABEL_14;
      }

      sub_1D1741A30(v6, &qword_1EC642DB0, &unk_1D1E6F360);
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_21;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void _s13HomeDataModel27UmbrellaCategoryInformationV16activeMediaCount13stateSnapshotSiAA05StateK0V_tFZ_0(uint64_t a1)
{
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  MEMORY[0x1EEE9AC00](v117);
  v116 = v114 - v2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  MEMORY[0x1EEE9AC00](v118);
  v127 = v114 - v3;
  v128 = type metadata accessor for StatusStrings.Options(0);
  v4 = MEMORY[0x1EEE9AC00](v128);
  v122 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v114 - v6;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  MEMORY[0x1EEE9AC00](v120);
  v9 = v114 - v8;
  v115 = type metadata accessor for StateSnapshot(0);
  v10 = v115[12];
  v123 = a1;
  v11 = *(a1 + v10);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v114[6] = "CapitalizedPlural";
  v114[5] = "ionSpeaker_NotPlaying";
  v114[4] = "StateDescriptionLoading";
  v114[3] = "StateDescriptionInterrupted";
  v114[2] = "StateDescriptionStopped";
  v114[1] = "StateDescriptionPaused";
  v124 = v11;

  v17 = 0;
  v119 = v9;
  v129 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = __clz(__rbit64(v15)) | (v18 << 6);
      v20 = v124;
      v21 = *(v124 + 48);
      v22 = sub_1D1E66A7C();
      (*(*(v22 - 8) + 16))(v9, v21 + *(*(v22 - 8) + 72) * v19, v22);
      v23 = *(v20 + 56);
      v24 = type metadata accessor for StaticMediaProfile(0);
      v25 = v23 + *(*(v24 - 1) + 72) * v19;
      v26 = &v9[*(v120 + 48)];
      sub_1D1B75DE0(v25, v26, type metadata accessor for StaticMediaProfile);
      v27 = v128;
      v28 = *(v128 + 44);
      v29 = sub_1D1E669FC();
      (*(*(v29 - 8) + 56))(&v7[v28], 1, 1, v29);
      v30 = 0;
      *v7 = 257;
      v7[2] = 1;
      *(v7 + 3) = 0;
      v7[*(v27 + 48)] = 2;
      v31 = &v7[*(v27 + 52)];
      v31[4] = 0;
      *v31 = 2;
      v32 = *(v26 + v24[15]);
      if (*(v26 + v24[23] + 8) == 1 && v32 != 0)
      {
        v30 = *(v26 + v24[16]) ^ 1;
      }

      v34 = *(v26 + v24[26]);
      v35 = *(v26 + v24[19]);
      v121 = v24[19];
      v125 = v34;
      v126 = v30;
      if (v35 <= 2)
      {
        break;
      }

      if (v35 <= 4)
      {
        if (v35 == 3)
        {
          v36 = &v138;
          goto LABEL_22;
        }

        v38 = 0xD00000000000002BLL;
        v39 = &v139;
LABEL_26:
        v37 = *(v39 - 32) | 0x8000000000000000;
        goto LABEL_27;
      }

      if (v35 == 5)
      {
        v36 = &v140;
LABEL_22:
        v37 = *(v36 - 32) | 0x8000000000000000;
        v38 = 0xD000000000000027;
LABEL_27:
        v40 = static String.hfLocalized(_:)(v38, v37);
        v42 = v41;
        goto LABEL_28;
      }

      v40 = 0;
      v42 = 0;
LABEL_28:
      v43 = v24[25];
      LOBYTE(v133) = v7[4];
      v44 = sub_1D1D32844(v26 + v43, &v133);
      if (!v45)
      {
        v46 = *(v26 + v24[24]);
        LOBYTE(v133) = v7[4];
        v44 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v46, &v133);
      }

      LOBYTE(v130) = v32;
      BYTE1(v130) = v125;
      BYTE2(v130) = 2;
      BYTE3(v130) = v126 & 1;
      BYTE4(v130) = 2;
      *(&v130 + 1) = v40;
      *&v131 = v42;
      *(&v131 + 1) = v44;
      v132 = v45;
      StatusStrings.string(for:)(v7);
      v48 = v47;
      v133 = v130;
      v134 = v131;
      v135 = v132;
      sub_1D1A46590(&v133);
      sub_1D1B75E68(v7, type metadata accessor for StatusStrings.Options);
      if (v48)
      {

        v49 = 0;
      }

      else
      {
        v49 = *(v26 + v121) == 1;
      }

      v50 = v129;
      v9 = v119;
      sub_1D1741A30(v119, &qword_1EC645468, &unk_1D1E995E0);
      v51 = __OFADD__(v50, v49);
      v52 = v50 + v49;
      if (v51)
      {
        goto LABEL_85;
      }

      v15 &= v15 - 1;
      v17 = v18;
      v129 = v52;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    if (v35)
    {
      if (v35 == 1)
      {
        v36 = &v136;
        goto LABEL_22;
      }

      v38 = 0xD000000000000026;
      v39 = &v137;
    }

    else
    {
      v38 = 0xD000000000000025;
      v39 = &v141;
    }

    goto LABEL_26;
  }

  while (1)
  {
LABEL_5:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  v53 = *(v123 + v115[11]);
  v56 = *(v53 + 64);
  v55 = v53 + 64;
  v54 = v56;
  v57 = 1 << *(*(v123 + v115[11]) + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v54;
  v60 = (v57 + 63) >> 6;
  v121 = *(v123 + v115[11]);

  v61 = 0;
  v62 = 0;
  for (i = v122; v59; v62 = v64)
  {
    v64 = v62;
LABEL_44:
    v65 = __clz(__rbit64(v59)) | (v64 << 6);
    v66 = v121;
    v67 = *(v121 + 48);
    v68 = sub_1D1E66A7C();
    v69 = v127;
    (*(*(v68 - 8) + 16))(v127, v67 + *(*(v68 - 8) + 72) * v65, v68);
    v70 = *(v66 + 56);
    v71 = type metadata accessor for StaticMediaSystem(0);
    v72 = v70 + *(*(v71 - 1) + 72) * v65;
    v73 = v69 + *(v118 + 48);
    sub_1D1B75DE0(v72, v73, type metadata accessor for StaticMediaSystem);
    v74 = v128;
    v75 = *(v128 + 44);
    v76 = sub_1D1E669FC();
    (*(*(v76 - 8) + 56))(&i[v75], 1, 1, v76);
    *i = 257;
    i[2] = 1;
    *(i + 3) = 0;
    i[*(v74 + 48)] = 2;
    v77 = &i[*(v74 + 52)];
    v77[4] = 0;
    *v77 = 2;
    v78 = *(v73 + v71[13]);
    v79 = *(v73 + v71[19]);
    v80 = *(v73 + v71[14]);
    v81 = *(v73 + v71[15]);
    v120 = v71[15];
    v125 = v79;
    v126 = v78;
    LODWORD(v124) = v80;
    if (v81 <= 2)
    {
      if (!v81)
      {
        v86 = 0xD000000000000025;
        v87 = &v141;
LABEL_57:
        v85 = *(v87 - 32) | 0x8000000000000000;
        goto LABEL_58;
      }

      if (v81 != 1)
      {
        v86 = 0xD000000000000026;
        v87 = &v137;
        goto LABEL_57;
      }

      v82 = &v136;
    }

    else if (v81 > 4)
    {
      v83 = 0;
      v84 = 0;
      if (v81 != 5)
      {
        goto LABEL_59;
      }

      v82 = &v140;
    }

    else
    {
      if (v81 != 3)
      {
        v86 = 0xD00000000000002BLL;
        v87 = &v139;
        goto LABEL_57;
      }

      v82 = &v138;
    }

    v85 = *(v82 - 32) | 0x8000000000000000;
    v86 = 0xD000000000000027;
LABEL_58:
    v83 = static String.hfLocalized(_:)(v86, v85);
    v84 = v88;
LABEL_59:
    v89 = v71[18];
    v90 = v122;
    LOBYTE(v133) = v122[4];
    v91 = sub_1D1D32844(v73 + v89, &v133);
    if (!v92)
    {
      v93 = *(v73 + v71[17]);
      LOBYTE(v133) = v90[4];
      v91 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v93, &v133);
    }

    LOBYTE(v130) = v126;
    BYTE1(v130) = v125;
    BYTE2(v130) = 2;
    BYTE3(v130) = v124 ^ 1;
    BYTE4(v130) = 2;
    *(&v130 + 1) = v83;
    *&v131 = v84;
    *(&v131 + 1) = v91;
    v132 = v92;
    StatusStrings.string(for:)(v90);
    v95 = v94;
    v133 = v130;
    v134 = v131;
    v135 = v132;
    sub_1D1A46590(&v133);
    sub_1D1B75E68(v90, type metadata accessor for StatusStrings.Options);
    i = v90;
    if (v95)
    {

      v96 = 0;
    }

    else
    {
      v96 = *(v73 + v120) == 1;
    }

    sub_1D1741A30(v127, &qword_1EC645478, &qword_1D1E79A08);
    v51 = __OFADD__(v61, v96);
    v61 += v96;
    if (v51)
    {
      goto LABEL_86;
    }

    v59 &= v59 - 1;
  }

  while (1)
  {
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v64 >= v60)
    {

      if (__OFADD__(v129, v61))
      {
        goto LABEL_87;
      }

      v129 += v61;
      v97 = *(v123 + v115[8]);
      v98 = 1 << *(v97 + 32);
      v99 = -1;
      if (v98 < 64)
      {
        v99 = ~(-1 << v98);
      }

      v100 = v99 & *(v97 + 64);
      v101 = (v98 + 63) >> 6;

      v102 = 0;
      v103 = 0;
      do
      {
        if (!v100)
        {
          while (1)
          {
            v104 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              goto LABEL_84;
            }

            if (v104 >= v101)
            {
              goto LABEL_80;
            }

            v100 = *(v97 + 64 + 8 * v104);
            ++v103;
            if (v100)
            {
              v103 = v104;
              goto LABEL_77;
            }
          }
        }

        v104 = v103;
LABEL_77:
        v105 = __clz(__rbit64(v100));
        v100 &= v100 - 1;
        v106 = v105 | (v104 << 6);
        v107 = *(v97 + 48);
        v108 = sub_1D1E66A7C();
        v109 = v116;
        (*(*(v108 - 8) + 16))(v116, v107 + *(*(v108 - 8) + 72) * v106, v108);
        v110 = *(v97 + 56);
        v111 = v110 + *(*(type metadata accessor for StaticAccessory(0) - 8) + 72) * v106;
        v112 = *(v117 + 48);
        sub_1D1B75DE0(v111, v109 + v112, type metadata accessor for StaticAccessory);
        sub_1D1B74F90(v109, v109 + v112, v123);
        LOBYTE(v106) = v113;
        sub_1D1741A30(v109, &qword_1EC644B30, &qword_1D1E77280);
        v51 = __OFADD__(v102, v106 & 1);
        v102 += v106 & 1;
      }

      while (!v51);
      __break(1u);
LABEL_80:

      if (__OFADD__(v129, v102))
      {
        goto LABEL_88;
      }

      return;
    }

    v59 = *(v55 + 8 * v64);
    ++v62;
    if (v59)
    {
      goto LABEL_44;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_1D1B75DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B75E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UmbrellaCategoryInformation.waterStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B820, &qword_1D1E9AD20);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B818, &qword_1D1E9AD18);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = type metadata accessor for StatusItemLocation(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B810, &qword_1D1E9AD10);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v33 - v24;
  v26 = *(v3 + 24);
  v27 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v36 = a1;
  v28 = sub_1D190104C(v27, sub_1D1B76468, v35, v26);
  v29 = sub_1D1E66A7C();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);

  sub_1D1B6AAAC(v30, v19, v25);

  sub_1D1B4BDE4(v31, v16);
  sub_1D1B5A834(v28, v10);
  sub_1D1741C08(v25, v23, &qword_1EC64B810, &qword_1D1E9AD10);
  v37[0] = v23;
  sub_1D1741C08(v16, v14, &qword_1EC64B818, &qword_1D1E9AD18);
  v37[1] = v14;
  sub_1D1741C08(v10, v8, &qword_1EC64B820, &qword_1D1E9AD20);
  v37[2] = v8;
  sub_1D1B5C43C(v37, v34);
  sub_1D1741A30(v10, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v16, &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A30(v25, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A30(v8, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v14, &qword_1EC64B818, &qword_1D1E9AD18);
  return sub_1D1741A30(v23, &qword_1EC64B810, &qword_1D1E9AD10);
}

uint64_t sub_1D1B76244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v12 + 16) && (v13 = sub_1D1742188(), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for StaticService(0);
    v18 = *(v17 - 8);
    sub_1D18DC660(v16 + *(v18 + 72) * v15, v7);
    (*(v18 + 56))(v7, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for StaticService(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  return sub_1D1B0D124(v7, v10);
}

void __swiftcall CharacteristicFetchSpecification.init(loggingName:serviceKinds:associatedServiceKinds:characteristicKind:)(HomeDataModel::CharacteristicFetchSpecification *__return_ptr retstr, Swift::String loggingName, Swift::OpaquePointer serviceKinds, Swift::OpaquePointer associatedServiceKinds, HomeDataModel::CharacteristicKind characteristicKind)
{
  v5 = characteristicKind;
  object = loggingName._object;
  countAndFlagsBits = loggingName._countAndFlagsBits;

  LOBYTE(v5) = *v5;
  retstr->loggingName._countAndFlagsBits = countAndFlagsBits;
  retstr->loggingName._object = object;
  v10 = MEMORY[0x1E69E7CC0];
  retstr->serviceKinds = serviceKinds;
  retstr->associatedServiceKinds._rawValue = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8B8, &qword_1D1E9AE00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E739C0;
  *(v11 + 32) = v5;
  retstr->characteristicKinds._rawValue = v11;
}

void __swiftcall CharacteristicFetchSpecification.init(loggingName:serviceKinds:associatedServiceKinds:characteristicKinds:)(HomeDataModel::CharacteristicFetchSpecification *__return_ptr retstr, Swift::String loggingName, Swift::OpaquePointer serviceKinds, Swift::OpaquePointer associatedServiceKinds, Swift::OpaquePointer characteristicKinds)
{
  object = loggingName._object;
  countAndFlagsBits = loggingName._countAndFlagsBits;

  retstr->loggingName._countAndFlagsBits = countAndFlagsBits;
  retstr->loggingName._object = object;
  v10 = MEMORY[0x1E69E7CC0];
  retstr->serviceKinds = serviceKinds;
  retstr->associatedServiceKinds._rawValue = v10;
  retstr->characteristicKinds = characteristicKinds;
}

uint64_t CharacteristicFetchSpecification.loggingName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CharacteristicFetchSpecification.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1D1E678EC();
  sub_1D177015C(a1, v3);
  sub_1D177015C(a1, v4);

  return sub_1D1770144(a1, v5);
}

uint64_t CharacteristicFetchSpecification.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D177015C(v5, v1);
  sub_1D177015C(v5, v2);
  sub_1D1770144(v5, v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B766AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D177015C(v5, v1);
  sub_1D177015C(v5, v2);
  sub_1D1770144(v5, v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B76734(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1D1E678EC();
  sub_1D177015C(a1, v3);
  sub_1D177015C(a1, v4);

  return sub_1D1770144(a1, v5);
}

uint64_t sub_1D1B7679C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D177015C(v6, v2);
  sub_1D177015C(v6, v3);
  sub_1D1770144(v6, v4);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel32CharacteristicFetchSpecificationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D1E6904C() & 1) == 0 || (sub_1D17795A8(v2, v6) & 1) == 0 || (sub_1D17795A8(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1D17795C0(v3, v7);
}

unint64_t sub_1D1B768DC()
{
  result = qword_1EC64B8C0;
  if (!qword_1EC64B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B8C0);
  }

  return result;
}

uint64_t RoomSectionByUmbrellaCategory.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static RoomSectionByUmbrellaCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D179F48C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D17796E4(v4, v7);
}

uint64_t RoomSectionByUmbrellaCategory.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  sub_1D1E678EC();

  sub_1D1E678EC();
  result = MEMORY[0x1D3892850](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_1D17579AC();
      sub_1D1E676EC();
      result = (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t RoomSectionByUmbrellaCategory.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  sub_1D1E6920C();
  sub_1D1E678EC();

  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v11 = *(v7 + 56);
    do
    {
      v8(v4, v10, v1);
      sub_1D17579AC();
      sub_1D1E676EC();
      (*(v7 - 8))(v4, v1);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1B76E64(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  sub_1D1E6920C();
  sub_1D1E678EC();

  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v8(v5, v11, v2);
      sub_1D17579AC();
      sub_1D1E676EC();
      (*(v9 - 8))(v5, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1B7708C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D179F48C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D17796E4(v4, v7);
}

char *static RoomSectionByUmbrellaCategory.sections(for:staticRoom:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D18DB47C(MEMORY[0x1E69E7CC0]);
  v12 = v4;
  v5 = a1 + 32;
  v6 = *(a1 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 40;
    v4 = sub_1D1B77264(&v12, v5);
    v5 = v7;
  }

  v8 = v12;
  MEMORY[0x1EEE9AC00](v4);
  v11[2] = v8;
  v11[3] = a2;

  v9 = sub_1D18FC220(MEMORY[0x1E69E7CC0], sub_1D1B7A758, v11, v8);
  swift_bridgeObjectRelease_n();
  v12 = v9;

  sub_1D1B79D08(&v12);

  return v12;
}

uint64_t sub_1D1B77264(void *a1, uint64_t a2)
{
  v221 = a1;
  v210 = type metadata accessor for StaticEndpoint(0);
  v3 = MEMORY[0x1EEE9AC00](v210);
  v207 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v208 = &v207 - v5;
  v212 = type metadata accessor for StaticMatterDevice(0);
  v6 = MEMORY[0x1EEE9AC00](v212);
  v209 = &v207 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v211 = &v207 - v8;
  v213 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v213);
  v215 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for StaticService(0);
  v10 = MEMORY[0x1EEE9AC00](v216);
  v214 = &v207 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v217 = &v207 - v12;
  v13 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v13);
  v219 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StaticMediaProfile(0);
  MEMORY[0x1EEE9AC00](v15);
  isUniquelyReferenced_nonNull_native = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v207 - v19;
  v21 = type metadata accessor for StaticAccessory(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v218 = &v207 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v207 - v25;
  sub_1D17419CC(a2, v226);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v220 = v26;
  if (swift_dynamicCast())
  {
    sub_1D17419CC(a2, v223 + 1);
    v27 = swift_dynamicCast();
    v28 = *(v22 + 56);
    if ((v27 & 1) == 0)
    {
      v28(v20, 1, 1, v21);
      sub_1D1741A30(v20, &qword_1EC6436C8, &unk_1D1E97C40);
      goto LABEL_38;
    }

    v29 = a2;
    v28(v20, 0, 1, v21);
    v30 = v20;
    v31 = v218;
    sub_1D1B7A8A8(v30, v218, type metadata accessor for StaticAccessory);
    v32 = *(a2 + 24);
    v33 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v32);
    (*(v33 + 112))(v223 + 1, v32, v33);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2CB0 == v34)
    {

LABEL_18:
      v53 = (v31 + *(v21 + 96));
      v54 = v53[1];
      if (v54)
      {
        static RoomSectionByUmbrellaCategory.umbrellaCategory(for:)(*v53, v54, v223);
        v55 = LOBYTE(v223[0]);
        sub_1D17419CC(v29, v223 + 1);
        v13 = v221;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v227 = *v13;
        v36 = v227;
        v56 = sub_1D171D408(v55);
        v58 = v36[2];
        v59 = (v57 & 1) == 0;
        v41 = __OFADD__(v58, v59);
        v60 = v58 + v59;
        if (v41)
        {
          __break(1u);
          goto LABEL_127;
        }

        LOBYTE(v35) = v57;
        if (v36[3] >= v60)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v201 = v56;
            sub_1D173D008();
            v56 = v201;
            v36 = v227;
            *v13 = v227;
            if (v35)
            {
LABEL_59:
              v55 = v36[7] + 8 * v56;
              v33 = *v55;
              v115 = swift_isUniquelyReferenced_nonNull_native();
              *v55 = v33;
              if (v115)
              {
LABEL_60:
                v117 = *(v33 + 16);
                v116 = *(v33 + 24);
                if (v117 >= v116 >> 1)
                {
                  *v55 = sub_1D177F2B8((v116 > 1), v117 + 1, 1, v33);
                }

                v118 = v224;
                v119 = v225;
                v120 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
                MEMORY[0x1EEE9AC00](v120);
                v122 = &v207 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v123 + 16))(v122);
                sub_1D1D20B74(v117, v122, v55, v118, v119);
                __swift_destroy_boxed_opaque_existential_1((v223 + 1));
                sub_1D1B7A848(v31, type metadata accessor for StaticAccessory);
                v80 = 0;
                v81 = sub_1D1B7A910;
                goto LABEL_74;
              }

LABEL_127:
              v33 = sub_1D177F2B8(0, *(v33 + 16) + 1, 1, v33);
              *v55 = v33;
              goto LABEL_60;
            }

LABEL_58:
            v114 = v56;
            sub_1D19DD7E4();
            v56 = v114;
            goto LABEL_59;
          }
        }

        else
        {
          sub_1D172FE6C(v60, isUniquelyReferenced_nonNull_native);
          v36 = v227;
          v56 = sub_1D171D408(v55);
          if ((v35 & 1) != (v61 & 1))
          {
            goto LABEL_112;
          }
        }

        *v13 = v36;
        if (v35)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      sub_1D1B7A848(v31, type metadata accessor for StaticAccessory);
LABEL_38:
      v80 = 0;
      v81 = 0;
LABEL_74:
      sub_1D1B7A848(v220, type metadata accessor for StaticAccessory);
      v87 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      goto LABEL_75;
    }

    v52 = sub_1D1E6904C();

    if (v52)
    {
      goto LABEL_18;
    }

    v88 = v29[3];
    v89 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v88);
    (*(v89 + 112))(v223, v88, v89);
    ServiceKind.umbrellaCategory.getter(&v222);
    v50 = v222;
    sub_1D17419CC(v29, v223 + 1);
    v13 = v221;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v227 = *v13;
    v36 = v227;
    v37 = sub_1D171D408(v50);
    v91 = v36[2];
    v92 = (v90 & 1) == 0;
    v41 = __OFADD__(v91, v92);
    v93 = v91 + v92;
    if (!v41)
    {
      LOBYTE(v35) = v90;
      if (v36[3] < v93)
      {
        sub_1D172FE6C(v93, isUniquelyReferenced_nonNull_native);
        v36 = v227;
        v37 = sub_1D171D408(v50);
        if ((v35 & 1) != (v94 & 1))
        {
          goto LABEL_112;
        }

LABEL_67:
        *v13 = v36;
        if (v35)
        {
LABEL_69:
          v127 = (v36[7] + 8 * v37);
          v128 = *v127;
          v129 = swift_isUniquelyReferenced_nonNull_native();
          *v127 = v128;
          if ((v129 & 1) == 0)
          {
            v128 = sub_1D177F2B8(0, v128[2] + 1, 1, v128);
            *v127 = v128;
          }

          v131 = v128[2];
          v130 = v128[3];
          if (v131 >= v130 >> 1)
          {
            *v127 = sub_1D177F2B8((v130 > 1), v131 + 1, 1, v128);
          }

          v132 = v224;
          v133 = v225;
          v134 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
          MEMORY[0x1EEE9AC00](v134);
          v136 = &v207 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v137 + 16))(v136);
          sub_1D1D20B74(v131, v136, v127, v132, v133);
          __swift_destroy_boxed_opaque_existential_1((v223 + 1));
          sub_1D1B7A848(v31, type metadata accessor for StaticAccessory);
          v81 = 0;
          v80 = sub_1D1B7A910;
          goto LABEL_74;
        }

LABEL_68:
        v126 = v37;
        sub_1D19DD7E4();
        v37 = v126;
        goto LABEL_69;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_67;
      }

LABEL_135:
      v202 = v37;
      sub_1D173D008();
      v37 = v202;
      v36 = v227;
      *v13 = v227;
      if (v35)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_129;
  }

  v220 = a2;
  if (swift_dynamicCast())
  {
    v31 = isUniquelyReferenced_nonNull_native;
    sub_1D17419CC(v220, v223 + 1);
    isUniquelyReferenced_nonNull_native = v221;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v227 = *isUniquelyReferenced_nonNull_native;
    v36 = v227;
    v37 = sub_1D171D408(3);
    v39 = v36[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      __break(1u);
      goto LABEL_122;
    }

    LOBYTE(a2) = v38;
    if (v36[3] < v42)
    {
      sub_1D172FE6C(v42, v35);
      v36 = v227;
      v37 = sub_1D171D408(3);
      if ((a2 & 1) != (v43 & 1))
      {
        goto LABEL_112;
      }

LABEL_31:
      *isUniquelyReferenced_nonNull_native = v36;
      if (a2)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (v35)
    {
      goto LABEL_31;
    }

LABEL_124:
    v199 = v37;
    sub_1D173D008();
    v37 = v199;
    v36 = v227;
    *isUniquelyReferenced_nonNull_native = v227;
    if (a2)
    {
LABEL_33:
      a2 = v36[7] + 8 * v37;
      v35 = *a2;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v35;
      if (v71)
      {
LABEL_34:
        v73 = *(v35 + 16);
        v72 = *(v35 + 24);
        if (v73 >= v72 >> 1)
        {
          *a2 = sub_1D177F2B8((v72 > 1), v73 + 1, 1, v35);
        }

        v74 = v224;
        v75 = v225;
        v76 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
        MEMORY[0x1EEE9AC00](v76);
        v78 = &v207 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v79 + 16))(v78);
        sub_1D1D20B74(v73, v78, a2, v74, v75);
        __swift_destroy_boxed_opaque_existential_1((v223 + 1));
        sub_1D1B7A848(v31, type metadata accessor for StaticMediaProfile);
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v87 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_122:
      v35 = sub_1D177F2B8(0, *(v35 + 16) + 1, 1, v35);
      *a2 = v35;
      goto LABEL_34;
    }

LABEL_32:
    v70 = v37;
    sub_1D19DD7E4();
    v37 = v70;
    goto LABEL_33;
  }

  v31 = v219;
  v44 = swift_dynamicCast();
  v45 = v220;
  v13 = v221;
  if (v44)
  {
    sub_1D17419CC(v220, v223 + 1);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v227 = *v13;
    v36 = v227;
    v37 = sub_1D171D408(3);
    v47 = v36[2];
    v48 = (v46 & 1) == 0;
    v41 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (!v41)
    {
      LOBYTE(v50) = v46;
      if (v36[3] >= v49)
      {
        if ((v35 & 1) == 0)
        {
          goto LABEL_130;
        }
      }

      else
      {
        sub_1D172FE6C(v49, v35);
        v36 = v227;
        v37 = sub_1D171D408(3);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_112;
        }
      }

      *v13 = v36;
      if (v50)
      {
LABEL_51:
        v103 = (v36[7] + 8 * v37);
        v104 = *v103;
        v105 = swift_isUniquelyReferenced_nonNull_native();
        *v103 = v104;
        if ((v105 & 1) == 0)
        {
          v104 = sub_1D177F2B8(0, v104[2] + 1, 1, v104);
          *v103 = v104;
        }

        v107 = v104[2];
        v106 = v104[3];
        if (v107 >= v106 >> 1)
        {
          *v103 = sub_1D177F2B8((v106 > 1), v107 + 1, 1, v104);
        }

        v108 = v224;
        v109 = v225;
        v110 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
        MEMORY[0x1EEE9AC00](v110);
        v112 = &v207 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v113 + 16))(v112);
        sub_1D1D20B74(v107, v112, v103, v108, v109);
        __swift_destroy_boxed_opaque_existential_1((v223 + 1));
        sub_1D1B7A848(v31, type metadata accessor for StaticMediaSystem);
        v80 = 0;
        v81 = 0;
        v87 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v82 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_50:
      v102 = v37;
      sub_1D19DD7E4();
      v37 = v102;
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_124;
  }

  v62 = v216;
  v63 = v217;
  if (swift_dynamicCast())
  {
    sub_1D17419CC(v45, v223 + 1);
    v31 = v214;
    swift_dynamicCast();
    v64 = *(v31 + *(v62 + 112));
    if (v64 == 53)
    {
      LOBYTE(v64) = *(v31 + *(v62 + 104));
    }

    LOBYTE(v223[0]) = v64;
    ServiceKind.umbrellaCategory.getter(&v222);
    v50 = v222;
    sub_1D17419CC(v45, v223 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v227 = *v13;
    v36 = v227;
    v37 = sub_1D171D408(v50);
    v66 = v36[2];
    v67 = (v65 & 1) == 0;
    v41 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (v41)
    {
LABEL_129:
      __break(1u);
LABEL_130:
      v200 = v37;
      sub_1D173D008();
      v37 = v200;
      v36 = v227;
      *v13 = v227;
      if (v50)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    LOBYTE(v35) = v65;
    if (v36[3] >= v68)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v203 = v37;
        sub_1D173D008();
        v37 = v203;
        v36 = v227;
        *v13 = v227;
        if (v35)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    else
    {
      sub_1D172FE6C(v68, isUniquelyReferenced_nonNull_native);
      v36 = v227;
      v37 = sub_1D171D408(v50);
      if ((v35 & 1) != (v69 & 1))
      {
        goto LABEL_112;
      }
    }

    *v13 = v36;
    if (v35)
    {
LABEL_79:
      v140 = (v36[7] + 8 * v37);
      v141 = *v140;
      v142 = swift_isUniquelyReferenced_nonNull_native();
      *v140 = v141;
      if ((v142 & 1) == 0)
      {
        v141 = sub_1D177F2B8(0, v141[2] + 1, 1, v141);
        *v140 = v141;
      }

      v144 = v141[2];
      v143 = v141[3];
      if (v144 >= v143 >> 1)
      {
        *v140 = sub_1D177F2B8((v143 > 1), v144 + 1, 1, v141);
      }

      v145 = v224;
      v146 = v225;
      v147 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
      MEMORY[0x1EEE9AC00](v147);
      v149 = &v207 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v150 + 16))(v149);
      sub_1D1D20B74(v144, v149, v140, v145, v146);
      __swift_destroy_boxed_opaque_existential_1((v223 + 1));
      sub_1D1B7A848(v31, type metadata accessor for StaticService);
      sub_1D1B7A848(v63, type metadata accessor for StaticService);
      v80 = 0;
      v81 = 0;
      v87 = 0;
      v82 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v83 = sub_1D1B7A910;
      goto LABEL_75;
    }

LABEL_78:
    v139 = v37;
    sub_1D19DD7E4();
    v37 = v139;
    goto LABEL_79;
  }

  v31 = v215;
  if (swift_dynamicCast())
  {
    v95 = v45[3];
    v35 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v95);
    (*(v35 + 112))(v223, v95, v35);
    ServiceKind.umbrellaCategory.getter(&v222);
    v96 = v222;
    sub_1D17419CC(v45, v223 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v227 = *v13;
    v36 = v227;
    v37 = sub_1D171D408(v96);
    v98 = v36[2];
    v99 = (v97 & 1) == 0;
    v41 = __OFADD__(v98, v99);
    v100 = v98 + v99;
    if (v41)
    {
      __break(1u);
      goto LABEL_135;
    }

    LOBYTE(v35) = v97;
    if (v36[3] < v100)
    {
      sub_1D172FE6C(v100, isUniquelyReferenced_nonNull_native);
      v36 = v227;
      v37 = sub_1D171D408(v96);
      if ((v35 & 1) != (v101 & 1))
      {
        goto LABEL_112;
      }

LABEL_88:
      *v13 = v36;
      if (v35)
      {
LABEL_90:
        v154 = (v36[7] + 8 * v37);
        v155 = *v154;
        v156 = swift_isUniquelyReferenced_nonNull_native();
        *v154 = v155;
        if ((v156 & 1) == 0)
        {
          v155 = sub_1D177F2B8(0, v155[2] + 1, 1, v155);
          *v154 = v155;
        }

        v158 = v155[2];
        v157 = v155[3];
        if (v158 >= v157 >> 1)
        {
          *v154 = sub_1D177F2B8((v157 > 1), v158 + 1, 1, v155);
        }

        v159 = v224;
        v160 = v225;
        v161 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
        MEMORY[0x1EEE9AC00](v161);
        v163 = &v207 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v164 + 16))(v163);
        sub_1D1D20B74(v158, v163, v154, v159, v160);
        __swift_destroy_boxed_opaque_existential_1((v223 + 1));
        sub_1D1B7A848(v31, type metadata accessor for StaticServiceGroup);
        v80 = 0;
        v81 = 0;
        v87 = 0;
        v82 = 0;
        v83 = 0;
        v85 = 0;
        v86 = 0;
        v84 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_89:
      v153 = v37;
      sub_1D19DD7E4();
      v37 = v153;
      goto LABEL_90;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_88;
    }

LABEL_140:
    v204 = v37;
    sub_1D173D008();
    v37 = v204;
    v36 = v227;
    *v13 = v227;
    if (v35)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v35 = v211;
  v124 = v212;
  if (!swift_dynamicCast())
  {
    v151 = v208;
    v80 = 0;
    v81 = 0;
    v87 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    if (!swift_dynamicCast())
    {
      goto LABEL_75;
    }

    v31 = v207;
    sub_1D1B7A8A8(v151, v207, type metadata accessor for StaticEndpoint);
    static MatterDeviceType.primaryDeviceType(for:)(*(v31 + *(v210 + 32)), v223 + 1);
    v35 = v220;
    v13 = v221;
    if (BYTE1(v223[0]) == 28)
    {
      v152 = 7;
    }

    else
    {
      LOBYTE(v227) = BYTE1(v223[0]);
      MatterDeviceType.umbrellaCategory.getter(v223);
      v152 = LOBYTE(v223[0]);
    }

    sub_1D17419CC(v35, v223 + 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v227 = *v13;
    v36 = v227;
    v37 = sub_1D171D408(v152);
    v183 = v36[2];
    v184 = (v182 & 1) == 0;
    v41 = __OFADD__(v183, v184);
    v185 = v183 + v184;
    if (!v41)
    {
      LOBYTE(v35) = v182;
      if (v36[3] >= v185)
      {
        goto LABEL_113;
      }

      sub_1D172FE6C(v185, isUniquelyReferenced_nonNull_native);
      v36 = v227;
      v37 = sub_1D171D408(v152);
      if ((v35 & 1) == (v186 & 1))
      {
        goto LABEL_114;
      }

LABEL_112:
      v37 = sub_1D1E690FC();
      __break(1u);
LABEL_113:
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v206 = v37;
        sub_1D173D008();
        v37 = v206;
        v36 = v227;
        *v13 = v227;
        if (v35)
        {
          goto LABEL_116;
        }

        goto LABEL_115;
      }

LABEL_114:
      *v13 = v36;
      if (v35)
      {
LABEL_116:
        v188 = (v36[7] + 8 * v37);
        v189 = *v188;
        v190 = swift_isUniquelyReferenced_nonNull_native();
        *v188 = v189;
        if ((v190 & 1) == 0)
        {
          v189 = sub_1D177F2B8(0, v189[2] + 1, 1, v189);
          *v188 = v189;
        }

        v192 = v189[2];
        v191 = v189[3];
        if (v192 >= v191 >> 1)
        {
          *v188 = sub_1D177F2B8((v191 > 1), v192 + 1, 1, v189);
        }

        v193 = v224;
        v194 = v225;
        v195 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
        MEMORY[0x1EEE9AC00](v195);
        v197 = &v207 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v198 + 16))(v197);
        sub_1D1D20B74(v192, v197, v188, v193, v194);
        __swift_destroy_boxed_opaque_existential_1((v223 + 1));
        sub_1D1B7A848(v31, type metadata accessor for StaticEndpoint);
        v80 = 0;
        v81 = 0;
        v87 = 0;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_115:
      v187 = v37;
      sub_1D19DD7E4();
      v37 = v187;
      goto LABEL_116;
    }

    __break(1u);
    goto LABEL_143;
  }

  v31 = v209;
  sub_1D1B7A8A8(v35, v209, type metadata accessor for StaticMatterDevice);
  static MatterDeviceType.primaryDeviceType(for:)(*(v31 + *(v124 + 32)), v223 + 1);
  if (BYTE1(v223[0]) == 28)
  {
    v125 = 7;
  }

  else
  {
    LOBYTE(v227) = BYTE1(v223[0]);
    MatterDeviceType.umbrellaCategory.getter(v223);
    v125 = LOBYTE(v223[0]);
  }

  sub_1D17419CC(v45, v223 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v227 = *v13;
  v36 = v227;
  v37 = sub_1D171D408(v125);
  v166 = v36[2];
  v167 = (v165 & 1) == 0;
  v41 = __OFADD__(v166, v167);
  v168 = v166 + v167;
  if (v41)
  {
    __break(1u);
    goto LABEL_140;
  }

  LOBYTE(v35) = v165;
  if (v36[3] >= v168)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_101;
    }

LABEL_143:
    v205 = v37;
    sub_1D173D008();
    v37 = v205;
    v36 = v227;
    *v13 = v227;
    if (v35)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  sub_1D172FE6C(v168, isUniquelyReferenced_nonNull_native);
  v36 = v227;
  v37 = sub_1D171D408(v125);
  if ((v35 & 1) != (v169 & 1))
  {
    goto LABEL_112;
  }

LABEL_101:
  *v13 = v36;
  if ((v35 & 1) == 0)
  {
LABEL_102:
    v170 = v37;
    sub_1D19DD7E4();
    v37 = v170;
  }

LABEL_103:
  v171 = (v36[7] + 8 * v37);
  v172 = *v171;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  *v171 = v172;
  if ((v173 & 1) == 0)
  {
    v172 = sub_1D177F2B8(0, v172[2] + 1, 1, v172);
    *v171 = v172;
  }

  v175 = v172[2];
  v174 = v172[3];
  if (v175 >= v174 >> 1)
  {
    *v171 = sub_1D177F2B8((v174 > 1), v175 + 1, 1, v172);
  }

  v176 = v224;
  v177 = v225;
  v178 = __swift_mutable_project_boxed_opaque_existential_1(v223 + 1, v224);
  MEMORY[0x1EEE9AC00](v178);
  v180 = &v207 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v181 + 16))(v180);
  sub_1D1D20B74(v175, v180, v171, v176, v177);
  __swift_destroy_boxed_opaque_existential_1((v223 + 1));
  sub_1D1B7A848(v31, type metadata accessor for StaticMatterDevice);
  v80 = 0;
  v81 = 0;
  v87 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v86 = 0;
  v85 = sub_1D1B7A910;
LABEL_75:
  __swift_destroy_boxed_opaque_existential_1(v226);
  sub_1D17169C0(v80, 0);
  sub_1D17169C0(v81, 0);
  sub_1D17169C0(v87, 0);
  sub_1D17169C0(v82, 0);
  sub_1D17169C0(v83, 0);
  sub_1D17169C0(v84, 0);
  sub_1D17169C0(v85, 0);
  return sub_1D17169C0(v86, 0);
}

uint64_t static RoomSectionByUmbrellaCategory.umbrellaCategory(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1D1E6781C() == a1 && v6 == a2)
  {
    goto LABEL_18;
  }

  v8 = sub_1D1E6904C();

  if (v8)
  {
    goto LABEL_19;
  }

  if (sub_1D1E6781C() == a1 && v10 == a2)
  {
    goto LABEL_18;
  }

  v12 = sub_1D1E6904C();

  if (v12)
  {
    goto LABEL_19;
  }

  if (sub_1D1E6781C() == a1 && v13 == a2)
  {
    goto LABEL_18;
  }

  v15 = sub_1D1E6904C();

  if (v15)
  {
LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  if (sub_1D1E6781C() == a1 && v16 == a2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v18 = sub_1D1E6904C();

  if (v18)
  {
    goto LABEL_19;
  }

  if (sub_1D1E6781C() == a1 && v19 == a2)
  {
LABEL_24:

    v17 = 3;
    goto LABEL_20;
  }

  v20 = sub_1D1E6904C();

  if (v20)
  {
    goto LABEL_26;
  }

  if (sub_1D1E6781C() == a1 && v21 == a2)
  {
    goto LABEL_18;
  }

  v22 = sub_1D1E6904C();

  if (v22)
  {
    goto LABEL_19;
  }

  if (sub_1D1E6781C() == a1 && v23 == a2)
  {
    goto LABEL_24;
  }

  v24 = sub_1D1E6904C();

  if (v24)
  {
    goto LABEL_26;
  }

  if (sub_1D1E6781C() == a1 && v25 == a2)
  {
    goto LABEL_24;
  }

  v26 = sub_1D1E6904C();

  if (v26)
  {
    goto LABEL_26;
  }

  if (sub_1D1E6781C() == a1 && v27 == a2)
  {
    goto LABEL_38;
  }

  v28 = sub_1D1E6904C();

  if (v28)
  {
LABEL_40:
    v17 = 7;
    goto LABEL_20;
  }

  if (sub_1D1E6781C() == a1 && v29 == a2)
  {
LABEL_43:

    v17 = 4;
    goto LABEL_20;
  }

  v30 = sub_1D1E6904C();

  if (v30)
  {
    goto LABEL_45;
  }

  if (sub_1D1E6781C() == a1 && v31 == a2)
  {
    goto LABEL_43;
  }

  v32 = sub_1D1E6904C();

  if (v32)
  {
    goto LABEL_45;
  }

  if (sub_1D1E6781C() == a1 && v33 == a2)
  {
    goto LABEL_18;
  }

  v34 = sub_1D1E6904C();

  if (v34)
  {
    goto LABEL_19;
  }

  if (sub_1D1E6781C() == a1 && v35 == a2)
  {
    goto LABEL_55;
  }

  v36 = sub_1D1E6904C();

  if (v36)
  {
    goto LABEL_57;
  }

  if (sub_1D1E6781C() == a1 && v37 == a2)
  {
    goto LABEL_43;
  }

  v38 = sub_1D1E6904C();

  if (v38)
  {
    goto LABEL_45;
  }

  if (sub_1D1E6781C() == a1 && v39 == a2)
  {
    goto LABEL_24;
  }

  v40 = sub_1D1E6904C();

  if (v40)
  {
    goto LABEL_26;
  }

  if (sub_1D1E6781C() == a1 && v41 == a2)
  {
    goto LABEL_43;
  }

  v42 = sub_1D1E6904C();

  if (v42)
  {
    goto LABEL_45;
  }

  if (sub_1D1E6781C() == a1 && v43 == a2)
  {

    v17 = 2;
    goto LABEL_20;
  }

  v44 = sub_1D1E6904C();

  if (v44)
  {
    v17 = 2;
    goto LABEL_20;
  }

  if (sub_1D1E6781C() == a1 && v45 == a2)
  {
    goto LABEL_38;
  }

  v46 = sub_1D1E6904C();

  if (v46)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v47 == a2)
  {
    goto LABEL_38;
  }

  v48 = sub_1D1E6904C();

  if (v48)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v49 == a2)
  {
    goto LABEL_38;
  }

  v50 = sub_1D1E6904C();

  if (v50)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v51 == a2)
  {
    goto LABEL_38;
  }

  v52 = sub_1D1E6904C();

  if (v52)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v53 == a2)
  {
    goto LABEL_43;
  }

  v54 = sub_1D1E6904C();

  if (v54)
  {
LABEL_45:
    v17 = 4;
    goto LABEL_20;
  }

  if (sub_1D1E6781C() == a1 && v55 == a2)
  {
    goto LABEL_38;
  }

  v56 = sub_1D1E6904C();

  if (v56)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v57 == a2)
  {
LABEL_55:

    v17 = 6;
    goto LABEL_20;
  }

  v58 = sub_1D1E6904C();

  if (v58)
  {
LABEL_57:
    v17 = 6;
    goto LABEL_20;
  }

  if (sub_1D1E6781C() == a1 && v59 == a2)
  {
    goto LABEL_24;
  }

  v60 = sub_1D1E6904C();

  if (v60)
  {
    goto LABEL_26;
  }

  if (sub_1D1E6781C() == a1 && v61 == a2)
  {
    goto LABEL_55;
  }

  v62 = sub_1D1E6904C();

  if (v62)
  {
    goto LABEL_57;
  }

  if (sub_1D1E6781C() == a1 && v63 == a2)
  {
    goto LABEL_38;
  }

  v64 = sub_1D1E6904C();

  if (v64)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v65 == a2)
  {
    goto LABEL_38;
  }

  v66 = sub_1D1E6904C();

  if (v66)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v67 == a2)
  {
    goto LABEL_24;
  }

  v68 = sub_1D1E6904C();

  if (v68)
  {
    goto LABEL_26;
  }

  if (sub_1D1E6781C() == a1 && v69 == a2)
  {
    goto LABEL_24;
  }

  v70 = sub_1D1E6904C();

  if (v70)
  {
    goto LABEL_26;
  }

  if (sub_1D1E6781C() == a1 && v71 == a2)
  {
    goto LABEL_24;
  }

  v72 = sub_1D1E6904C();

  if (v72)
  {
LABEL_26:
    v17 = 3;
    goto LABEL_20;
  }

  if (sub_1D1E6781C() == a1 && v73 == a2)
  {
    goto LABEL_18;
  }

  v74 = sub_1D1E6904C();

  if (v74)
  {
    goto LABEL_19;
  }

  if (sub_1D1E6781C() == a1 && v75 == a2)
  {
    goto LABEL_43;
  }

  v76 = sub_1D1E6904C();

  if (v76)
  {
    goto LABEL_45;
  }

  if (sub_1D1E6781C() == a1 && v77 == a2)
  {
LABEL_38:

    v17 = 7;
    goto LABEL_20;
  }

  v78 = sub_1D1E6904C();

  if (v78)
  {
    goto LABEL_40;
  }

  if (sub_1D1E6781C() == a1 && v79 == a2)
  {
    goto LABEL_43;
  }

  v80 = sub_1D1E6904C();

  if (v80)
  {
    goto LABEL_45;
  }

  if (sub_1D1E6781C() == a1 && v81 == a2)
  {
    goto LABEL_43;
  }

  v82 = sub_1D1E6904C();

  if (v82)
  {
    v17 = 4;
  }

  else
  {
    v17 = 7;
  }

LABEL_20:
  *a3 = v17;
  return result;
}

uint64_t sub_1D1B797F0(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v44 = sub_1D1E66A7C();
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  result = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v39 - v14;
  if (!*(a3 + 16))
  {
    return result;
  }

  v16 = *a2;
  result = sub_1D171D408(v16);
  if ((v17 & 1) == 0)
  {
    return result;
  }

  v43 = a1;
  v18 = *(*(a3 + 56) + 8 * result);
  sub_1D1B7A7D8(a4, v15);
  v19 = type metadata accessor for StaticRoom(0);
  if ((*(*(v19 - 8) + 48))(v15, 1, v19) == 1)
  {

    sub_1D1741A30(v15, &qword_1EC643878, &qword_1D1E72030);
LABEL_9:
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v20 = *&v15[*(v19 + 76)];

  sub_1D1B7A848(v15, type metadata accessor for StaticRoom);
  if (!*(v20 + 16) || (v21 = sub_1D171D408(v16), (v22 & 1) == 0))
  {

    goto LABEL_9;
  }

  v23 = *(*(v20 + 56) + 8 * v21);

LABEL_10:
  v24 = sub_1D1D07DC4(v23, v18);

  v47 = v16;
  v48 = v16;
  v25 = UmbrellaCategory.localizedDescription.getter();
  v26 = v25;
  v42 = v27;
  v28 = v24[2];
  if (v28)
  {
    v40 = v25;
    v41 = v4;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v28, 0);
    v29 = v46;
    v39 = v24;
    v30 = (v24 + 4);
    do
    {
      sub_1D17419CC(v30, v45);
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      sub_1D1E6886C();
      __swift_destroy_boxed_opaque_existential_1(v45);
      v46 = v29;
      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D178CEFC((v31 > 1), v32 + 1, 1);
        v29 = v46;
      }

      *(v29 + 16) = v32 + 1;
      (*(v9 + 32))(v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v11, v44);
      v30 += 40;
      --v28;
    }

    while (v28);

    v26 = v40;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v33 = v43;
  v34 = *v43;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D177F858(0, *(v34 + 16) + 1, 1, v34);
    v34 = result;
  }

  v36 = *(v34 + 16);
  v35 = *(v34 + 24);
  if (v36 >= v35 >> 1)
  {
    result = sub_1D177F858((v35 > 1), v36 + 1, 1, v34);
    v34 = result;
  }

  *(v34 + 16) = v36 + 1;
  v37 = v34 + 32 * v36;
  *(v37 + 32) = v47;
  v38 = v42;
  *(v37 + 40) = v26;
  *(v37 + 48) = v38;
  *(v37 + 56) = v29;
  *v33 = v34;
  return result;
}

uint64_t static RoomSectionByUmbrellaCategory.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1B79C18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1B79C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1B79C90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1B79CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1B79D08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C0F8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D1B79D74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D1B79D74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D1B79F48(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D1B79E6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1B79E6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 32 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 8) && v10 == *(v12 + 16);
      if (v13 || (result = sub_1D1E6904C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      result = *(v12 + 40);
      v15 = *(v12 + 48);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = v14;
      *(v12 + 8) = result;
      *(v12 + 16) = v15;
      v10 = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B79F48(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v96;
    if (!*v96)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1D1E0BE44(v7);
      v7 = result;
    }

    v87 = v7 + 16;
    v88 = *(v7 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v7[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1D1B7A530((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v8);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_129;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_130;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_131;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + 32 * v6;
      result = *(v9 + 8);
      v10 = *a3 + 32 * v8;
      if (result == *(v10 + 8) && *(v9 + 16) == *(v10 + 16))
      {
        v12 = 0;
      }

      else
      {
        result = sub_1D1E6904C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 80);
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 5) && *v13 == *(v13 - 4))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D1E6904C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 4;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = 32 * v6 - 16;
          v16 = 32 * v8;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v25 + v16);
              v20 = (v25 + v15);
              v21 = *v19;
              v22 = *(v19 + 1);
              v23 = *(v19 + 1);
              v24 = *v20;
              *v19 = *(v20 - 1);
              *(v19 + 1) = v24;
              *(v20 - 16) = v21;
              *(v20 - 1) = v22;
              *v20 = v23;
            }

            ++v18;
            v15 -= 32;
            v16 += 32;
          }

          while (v18 < v17);
        }
      }
    }

    v26 = a3[1];
    if (v6 < v26)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = v8 + a4;
        }

        if (v27 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v27)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1D177D070((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v43;
    v44 = &v7[16 * v42];
    *(v44 + 4) = v8;
    *(v44 + 5) = v6;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v7[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v7[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v84 = *&v7[16 * v8 + 32];
        v85 = *&v7[16 * v46 + 40];
        sub_1D1B7A530((*a3 + 32 * v84), (*a3 + 32 * *&v7[16 * v46 + 32]), (*a3 + 32 * v85), v45);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D1E0BE44(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v86 = &v7[16 * v8];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1D1E0BDB8(v46);
        v43 = *(v7 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v7[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v7[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v6 - 32;
  v94 = v8;
  v30 = (v8 - v6);
LABEL_43:
  v31 = v28 + 32 * v6;
  v32 = *(v31 + 8);
  v33 = *(v31 + 16);
  v34 = v30;
  v35 = v29;
  while (1)
  {
    v36 = v32 == *(v35 + 8) && v33 == *(v35 + 16);
    if (v36 || (result = sub_1D1E6904C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v29 += 32;
      --v30;
      if (v6 != v27)
      {
        goto LABEL_43;
      }

      v6 = v27;
      v8 = v94;
      goto LABEL_54;
    }

    if (!v28)
    {
      break;
    }

    v37 = *(v35 + 32);
    v32 = *(v35 + 40);
    v38 = *(v35 + 48);
    v39 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v39;
    *v35 = v37;
    *(v35 + 8) = v32;
    *(v35 + 16) = v38;
    v33 = v38;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1D1B7A530(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v17 && (sub_1D1E6904C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v5 -= 32;
    do
    {
      v18 = *(v14 - 3) == *(v6 - 3) && *(v14 - 2) == *(v6 - 2);
      if (!v18 && (sub_1D1E6904C() & 1) != 0)
      {
        v21 = v6 - 32;
        if (v5 + 32 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v19 = v14 - 32;
      if (v5 + 32 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

unint64_t sub_1D1B7A774()
{
  result = qword_1EC64B8C8;
  if (!qword_1EC64B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B8C8);
  }

  return result;
}

uint64_t sub_1D1B7A7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B7A848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B7A8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B7A918(uint64_t a1)
{
  v3 = type metadata accessor for StaticAccessory(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v39 = MEMORY[0x1E69E7CC0];
  v30 = v4;
  sub_1D178CF40(0, v7, 0);
  v8 = v39;
  v9 = v30 + 64;
  result = sub_1D1E6869C();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v29 = v30 + 72;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v35 = *(v12 + 36);
    sub_1D1B89120(*(v12 + 56) + *(v33 + 72) * v11, v6, type metadata accessor for StaticAccessory);
    v39 = v8;
    v16 = v6;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D178CF40((v17 > 1), v18 + 1, 1);
      v8 = v39;
    }

    v37 = v34;
    v38 = sub_1D1B891E8(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_1D1B89120(v16, boxed_opaque_existential_1, type metadata accessor for StaticAccessory);
    *(v8 + 16) = v18 + 1;
    sub_1D16EEE20(&v36, v8 + 40 * v18 + 32);
    result = sub_1D1B89188(v16, type metadata accessor for StaticAccessory);
    v14 = 1 << *(v12 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v6 = v16;
    v9 = v32;
    v20 = *(v32 + 8 * v15);
    if ((v20 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v35 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v21 = v20 & (-2 << (v11 & 0x3F));
    if (v21)
    {
      v14 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v6;
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D1716920(v11, v35, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v11, v35, 0);
      v12 = v30;
LABEL_19:
      v6 = v22;
    }

    ++v13;
    v11 = v14;
    if (v13 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D1B7AC88(uint64_t a1)
{
  v3 = type metadata accessor for StaticService(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v39 = MEMORY[0x1E69E7CC0];
  v30 = v4;
  sub_1D178CF40(0, v7, 0);
  v8 = v39;
  v9 = v30 + 64;
  result = sub_1D1E6869C();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v29 = v30 + 72;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v35 = *(v12 + 36);
    sub_1D1B89120(*(v12 + 56) + *(v33 + 72) * v11, v6, type metadata accessor for StaticService);
    v39 = v8;
    v16 = v6;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D178CF40((v17 > 1), v18 + 1, 1);
      v8 = v39;
    }

    v37 = v34;
    v38 = sub_1D1B891E8(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_1D1B89120(v16, boxed_opaque_existential_1, type metadata accessor for StaticService);
    *(v8 + 16) = v18 + 1;
    sub_1D16EEE20(&v36, v8 + 40 * v18 + 32);
    result = sub_1D1B89188(v16, type metadata accessor for StaticService);
    v14 = 1 << *(v12 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v6 = v16;
    v9 = v32;
    v20 = *(v32 + 8 * v15);
    if ((v20 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v35 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v21 = v20 & (-2 << (v11 & 0x3F));
    if (v21)
    {
      v14 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v6;
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D1716920(v11, v35, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v11, v35, 0);
      v12 = v30;
LABEL_19:
      v6 = v22;
    }

    ++v13;
    v11 = v14;
    if (v13 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D1B7AFF8(uint64_t a1)
{
  v3 = type metadata accessor for StaticServiceGroup(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v39 = MEMORY[0x1E69E7CC0];
  v30 = v4;
  sub_1D178CF40(0, v7, 0);
  v8 = v39;
  v9 = v30 + 64;
  result = sub_1D1E6869C();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v29 = v30 + 72;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v35 = *(v12 + 36);
    sub_1D1B89120(*(v12 + 56) + *(v33 + 72) * v11, v6, type metadata accessor for StaticServiceGroup);
    v39 = v8;
    v16 = v6;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D178CF40((v17 > 1), v18 + 1, 1);
      v8 = v39;
    }

    v37 = v34;
    v38 = sub_1D1B891E8(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_1D1B89120(v16, boxed_opaque_existential_1, type metadata accessor for StaticServiceGroup);
    *(v8 + 16) = v18 + 1;
    sub_1D16EEE20(&v36, v8 + 40 * v18 + 32);
    result = sub_1D1B89188(v16, type metadata accessor for StaticServiceGroup);
    v14 = 1 << *(v12 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v6 = v16;
    v9 = v32;
    v20 = *(v32 + 8 * v15);
    if ((v20 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v35 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v21 = v20 & (-2 << (v11 & 0x3F));
    if (v21)
    {
      v14 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v6;
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D1716920(v11, v35, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v11, v35, 0);
      v12 = v30;
LABEL_19:
      v6 = v22;
    }

    ++v13;
    v11 = v14;
    if (v13 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D1B7B368(uint64_t a1)
{
  v3 = type metadata accessor for StaticMatterDevice(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v39 = MEMORY[0x1E69E7CC0];
  v30 = v4;
  sub_1D178CF40(0, v7, 0);
  v8 = v39;
  v9 = v30 + 64;
  result = sub_1D1E6869C();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v29 = v30 + 72;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v35 = *(v12 + 36);
    sub_1D1B89120(*(v12 + 56) + *(v33 + 72) * v11, v6, type metadata accessor for StaticMatterDevice);
    v39 = v8;
    v16 = v6;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D178CF40((v17 > 1), v18 + 1, 1);
      v8 = v39;
    }

    v37 = v34;
    v38 = sub_1D1B891E8(&qword_1EC649258, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_1D1B89120(v16, boxed_opaque_existential_1, type metadata accessor for StaticMatterDevice);
    *(v8 + 16) = v18 + 1;
    sub_1D16EEE20(&v36, v8 + 40 * v18 + 32);
    result = sub_1D1B89188(v16, type metadata accessor for StaticMatterDevice);
    v14 = 1 << *(v12 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v6 = v16;
    v9 = v32;
    v20 = *(v32 + 8 * v15);
    if ((v20 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v35 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v21 = v20 & (-2 << (v11 & 0x3F));
    if (v21)
    {
      v14 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v6;
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1D1716920(v11, v35, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v11, v35, 0);
      v12 = v30;
LABEL_19:
      v6 = v22;
    }

    ++v13;
    v11 = v14;
    if (v13 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t StaticCameraProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCameraProfile.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticCameraProfile(0) + 20));

  return v1;
}

uint64_t type metadata accessor for StaticCameraProfile(uint64_t a1)
{
  result = qword_1EE07D488;
  if (!qword_1EE07D488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double StaticCameraProfile.roomIds.getter()
{
  type metadata accessor for StaticCameraProfile(0);

  return result;
}

uint64_t StaticCameraProfile.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticCameraProfile(0) + 28));

  return v1;
}

uint64_t StaticCameraProfile.staticAccessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticCameraProfile(0) + 32);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double StaticCameraProfile.staticServiceIds.getter()
{
  type metadata accessor for StaticCameraProfile(0);

  return result;
}

uint64_t StaticCameraProfile.currentAccessMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticCameraProfile(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t StaticCameraProfile.shouldShowInDashboard.setter(char a1)
{
  result = type metadata accessor for StaticCameraProfile(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t StaticCameraProfile.isFavorite.setter(char a1)
{
  result = type metadata accessor for StaticCameraProfile(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

unint64_t sub_1D1B7BB80(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7364496D6F6F72;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6168636165527369;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x746F687370616E73;
      break;
    case 9:
      result = 0x6F436D6165727473;
      break;
    case 10:
    case 12:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x69726F7661467369;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1B7BD18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1B88B2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1B7BD4C(uint64_t a1)
{
  v2 = sub_1D1B8682C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B7BD88(uint64_t a1)
{
  v2 = sub_1D1B8682C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8F0, &qword_1D1E9B048);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8682C();
  sub_1D1E6930C();
  LOBYTE(v19) = 0;
  sub_1D1E66A7C();
  sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticCameraProfile(0);
    LOBYTE(v19) = 1;
    sub_1D1E68ECC();
    v16 = v3;
    v17 = v9;
    v19 = *(v3 + *(v9 + 24));
    v18 = 2;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    v11 = sub_1D1B868D4(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    v15[1] = v11;
    v15[2] = v10;
    v12 = v16;
    LOBYTE(v19) = 3;
    sub_1D1E68E0C();
    LOBYTE(v19) = 4;
    sub_1D1E68F1C();
    v19 = *(v12 + *(v17 + 36));
    v18 = 5;
    sub_1D1E68F1C();
    v13 = v17;
    LOBYTE(v19) = 6;
    sub_1D1E68EDC();
    LOBYTE(v19) = *(v12 + *(v13 + 44));
    v18 = 7;
    sub_1D1B86880();
    sub_1D1E68F1C();
    LOBYTE(v19) = 8;
    type metadata accessor for StaticCameraSnapshotControl(0);
    sub_1D1B891E8(&qword_1EC64B908, type metadata accessor for StaticCameraSnapshotControl, &protocol conformance descriptor for StaticCameraSnapshotControl);
    sub_1D1E68E5C();
    LOBYTE(v19) = 9;
    type metadata accessor for StaticCameraStreamControl(0);
    sub_1D1B891E8(&qword_1EC64B910, type metadata accessor for StaticCameraStreamControl, &protocol conformance descriptor for StaticCameraStreamControl);
    sub_1D1E68E5C();
    LOBYTE(v19) = 10;
    sub_1D1E68EDC();
    LOBYTE(v19) = 11;
    sub_1D1E68EDC();
    LOBYTE(v19) = 12;
    type metadata accessor for StaticCameraRecordingEventManager(0);
    sub_1D1B891E8(&qword_1EC64B918, type metadata accessor for StaticCameraRecordingEventManager, &protocol conformance descriptor for StaticCameraRecordingEventManager);
    sub_1D1E68E5C();
    LOBYTE(v19) = 13;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticCameraProfile.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v45 = type metadata accessor for StaticCameraRecordingEventManager(0);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v35 - v6;
  v48 = type metadata accessor for StaticCameraStreamControl(0);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E669FC();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v44 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = &v35 - v13;
  v42 = type metadata accessor for StaticCameraSnapshotControl(0);
  v14 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  v20 = sub_1D1E66A7C();
  v49 = sub_1D1B891E8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v50 = v20;
  sub_1D1E676EC();
  v21 = type metadata accessor for StaticCameraProfile(0);
  sub_1D1E678EC();
  sub_1D176D4E8(a1, *(v1 + v21[6]));
  if (*(v1 + v21[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v1 + v21[9]));
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v1 + v21[11]));
  sub_1D1741C08(v1 + v21[12], v19, &qword_1EC64B8D8, &qword_1D1E9B030);
  v22 = v42;
  if ((*(v14 + 48))(v19, 1, v42) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1B89F40(v19, v16, type metadata accessor for StaticCameraSnapshotControl);
    v23 = v22;
    sub_1D1E6922C();
    sub_1D1E676EC();
    v24 = v37;
    sub_1D1741C08(&v16[*(v23 + 20)], v37, &qword_1EC642570, &qword_1D1E6C6A0);
    v26 = v39;
    v25 = v40;
    if ((*(v39 + 48))(v24, 1, v40) == 1)
    {
      sub_1D1E6922C();
      v27 = v16;
    }

    else
    {
      v28 = v16;
      v29 = v36;
      (*(v26 + 32))(v36, v24, v25);
      sub_1D1E6922C();
      sub_1D1B891E8(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1D1E676EC();
      (*(v26 + 8))(v29, v25);
      v27 = v28;
    }

    sub_1D1B89188(v27, type metadata accessor for StaticCameraSnapshotControl);
  }

  v30 = v44;
  sub_1D1741C08(v2 + v21[13], v44, &qword_1EC64B8E0, &qword_1D1E9B038);
  if ((*(v46 + 48))(v30, 1, v48) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v31 = v41;
    sub_1D1B89F40(v30, v41, type metadata accessor for StaticCameraStreamControl);
    sub_1D1E6922C();
    sub_1D1E676EC();
    MEMORY[0x1D3892850](*(v31 + *(v48 + 20)));
    sub_1D1B89188(v31, type metadata accessor for StaticCameraStreamControl);
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  v32 = v47;
  sub_1D1741C08(v2 + v21[16], v47, &qword_1EC64B8E8, &qword_1D1E9B040);
  if ((*(v43 + 48))(v32, 1, v45) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v33 = v38;
    sub_1D1B89F40(v47, v38, type metadata accessor for StaticCameraRecordingEventManager);
    sub_1D1E6922C();
    sub_1D1E676EC();
    sub_1D1B89188(v33, type metadata accessor for StaticCameraRecordingEventManager);
  }

  return sub_1D1E6922C();
}

uint64_t StaticCameraProfile.hashValue.getter()
{
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v39 - v8;
  v9 = sub_1D1E66A7C();
  v47 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = (v39 - v13);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B920, &qword_1D1E9B050);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v15 = v39 - v14;
  v16 = type metadata accessor for StaticCameraProfile(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8682C();
  v51 = v15;
  v19 = v52;
  sub_1D1E692FC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v12;
  v41 = v16;
  v52 = a1;
  v42 = v18;
  LOBYTE(v54) = 0;
  sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v20 = v9;
  v21 = *(v47 + 32);
  v22 = v42;
  v21(v42, v49, v20);
  LOBYTE(v54) = 1;
  v23 = sub_1D1E68D2C();
  v39[3] = v20;
  v49 = v21;
  v24 = &v22[v41[5]];
  *v24 = v23;
  v24[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v53 = 2;
  v26 = sub_1D1B868D4(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  v39[2] = 0;
  sub_1D1E68D7C();
  v39[1] = v26;
  v27 = v41;
  *&v22[v41[6]] = v54;
  LOBYTE(v54) = 3;
  v28 = sub_1D1E68C6C();
  v29 = &v22[v27[7]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v54) = 4;
  v31 = v40;
  sub_1D1E68D7C();
  v49(&v42[v27[8]], v31, v20);
  v53 = 5;
  sub_1D1E68D7C();
  v32 = v42;
  *&v42[v27[9]] = v54;
  LOBYTE(v54) = 6;
  v32[v27[10]] = sub_1D1E68D3C() & 1;
  v53 = 7;
  sub_1D1B86970();
  sub_1D1E68D7C();
  v32[v27[11]] = v54;
  type metadata accessor for StaticCameraSnapshotControl(0);
  LOBYTE(v54) = 8;
  sub_1D1B891E8(&qword_1EC64B930, type metadata accessor for StaticCameraSnapshotControl, &protocol conformance descriptor for StaticCameraSnapshotControl);
  v33 = v46;
  sub_1D1E68CBC();
  sub_1D1741A90(v33, &v42[v41[12]], &qword_1EC64B8D8, &qword_1D1E9B030);
  type metadata accessor for StaticCameraStreamControl(0);
  LOBYTE(v54) = 9;
  sub_1D1B891E8(&qword_1EC64B938, type metadata accessor for StaticCameraStreamControl, &protocol conformance descriptor for StaticCameraStreamControl);
  sub_1D1E68CBC();
  sub_1D1741A90(v45, &v42[v41[13]], &qword_1EC64B8E0, &qword_1D1E9B038);
  LOBYTE(v54) = 10;
  v42[v41[14]] = sub_1D1E68D3C() & 1;
  LOBYTE(v54) = 11;
  v42[v41[15]] = sub_1D1E68D3C() & 1;
  type metadata accessor for StaticCameraRecordingEventManager(0);
  LOBYTE(v54) = 12;
  sub_1D1B891E8(&qword_1EC64B940, type metadata accessor for StaticCameraRecordingEventManager, &protocol conformance descriptor for StaticCameraRecordingEventManager);
  sub_1D1E68CBC();
  sub_1D1741A90(v44, &v42[v41[16]], &qword_1EC64B8E8, &qword_1D1E9B040);
  LOBYTE(v54) = 13;
  v34 = sub_1D1E68D3C();
  (*(v48 + 8))(v51, v50);
  v35 = v34 & 1;
  v37 = v42;
  v36 = v43;
  v42[v41[17]] = v35;
  sub_1D1B89120(v37, v36, type metadata accessor for StaticCameraProfile);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_1D1B89188(v37, type metadata accessor for StaticCameraProfile);
}

uint64_t sub_1D1B7D73C()
{
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B7D780(uint64_t a1)
{
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v2);
  return sub_1D1E6926C();
}

void StaticCameraProfile.tileIcon.getter(HomeDataModel::Icon *a1@<X8>)
{
  v1._countAndFlagsBits = 0x69662E6F65646976;
  v1._object = 0xEA00000000006C6CLL;
  Icon.init(customIconName:)(a1, v1);
}

uint64_t StaticCameraProfile.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL StaticCameraProfile.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for StaticCameraProfile(0);
  sub_1D1741C08(v0 + *(v4 + 52), v3, &qword_1EC64B8E0, &qword_1D1E9B038);
  v5 = type metadata accessor for StaticCameraStreamControl(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1D1741A30(v3, &qword_1EC64B8E0, &qword_1D1E9B038);
    return 0;
  }

  else
  {
    v7 = v3[*(v5 + 20)];
    sub_1D1B89188(v3, type metadata accessor for StaticCameraStreamControl);
    return v7 == 2;
  }
}

BOOL StaticCameraProfile.isTransitioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for StaticCameraProfile(0) + 52);
  sub_1D1741C08(v0 + v7, v6, &qword_1EC64B8E0, &qword_1D1E9B038);
  v8 = type metadata accessor for StaticCameraStreamControl(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC64B8E0, &qword_1D1E9B038);
  }

  else
  {
    v10 = v6[*(v8 + 20)];
    sub_1D1B89188(v6, type metadata accessor for StaticCameraStreamControl);
    if (v10 == 1)
    {
      return 1;
    }
  }

  sub_1D1741C08(v0 + v7, v4, &qword_1EC64B8E0, &qword_1D1E9B038);
  if (v9(v4, 1, v8) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC64B8E0, &qword_1D1E9B038);
    return 0;
  }

  else
  {
    v12 = v4[*(v8 + 20)];
    sub_1D1B89188(v4, type metadata accessor for StaticCameraStreamControl);
    return v12 == 3;
  }
}

void sub_1D1B7DC04(HomeDataModel::Icon *a1@<X8>)
{
  v1._countAndFlagsBits = 0x69662E6F65646976;
  v1._object = 0xEA00000000006C6CLL;
  Icon.init(customIconName:)(a1, v1);
}

uint64_t sub_1D1B7DC5C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1D1B7DCCC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643798, &qword_1D1E71EF0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA38, &qword_1D1E9B650);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v51 = type metadata accessor for StaticCameraProfile(0);
  v47 = *(v51 - 8);
  v11 = MEMORY[0x1EEE9AC00](v51);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v45 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v45 - v15;
  v52 = a1;
  v16 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v17 = sub_1D1E67C1C();

  if (v17 >> 62)
  {
    goto LABEL_42;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v18)
  {
    v19 = 0;
    v54 = v17 & 0xC000000000000001;
    v48 = (v47 + 48);
    v49 = v10;
    v53 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v54)
      {
        v20 = MEMORY[0x1D3891EF0](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v18 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v23 = [v20 cameraProfiles];
      if (v23)
      {
        v24 = v23;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v10 = sub_1D1E67C1C();

        if (v10 >> 62)
        {
          if (!sub_1D1E6873C())
          {
LABEL_26:

            goto LABEL_6;
          }
        }

        else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1D3891EF0](0, v10);
        }

        else
        {
          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v25 = *(v10 + 32);
        }

        v26 = v25;

        v27 = v52;
        v10 = v49;
        sub_1D1B7E394(v26, a3, v27, v49);

        if ((*v48)(v10, 1, v51) == 1)
        {
          sub_1D1741A30(v10, &qword_1EC64BA38, &qword_1D1E9B650);
        }

        else
        {
          v28 = v10;
          v29 = v46;
          sub_1D1B89F40(v28, v46, type metadata accessor for StaticCameraProfile);
          v30 = v29;
          v31 = v45;
          sub_1D1B89F40(v30, v45, type metadata accessor for StaticCameraProfile);
          sub_1D1B89F40(v31, v50, type metadata accessor for StaticCameraProfile);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1D177D77C(0, v53[2] + 1, 1, v53);
          }

          v10 = v53[2];
          v32 = v53[3];
          if (v10 >= v32 >> 1)
          {
            v53 = sub_1D177D77C((v32 > 1), v10 + 1, 1, v53);
          }

          v33 = v53;
          v53[2] = v10 + 1;
          sub_1D1B89F40(v50, v33 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v10, type metadata accessor for StaticCameraProfile);
        }
      }

      else
      {
      }

LABEL_6:
      ++v19;
      if (v22 == v18)
      {
        goto LABEL_29;
      }
    }
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v34 = v53;
  v35 = v53[2];
  if (v35)
  {
    v57 = MEMORY[0x1E69E7CC0];
    sub_1D178D114(0, v35, 0);
    v36 = v57;
    v37 = v34 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v38 = *(v47 + 72);
    do
    {
      v39 = *(v56 + 48);
      sub_1D1B89120(v37, &v7[v39], type metadata accessor for StaticCameraProfile);
      v40 = sub_1D1E66A7C();
      (*(*(v40 - 8) + 16))(v7, &v7[v39], v40);
      v57 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D178D114((v41 > 1), v42 + 1, 1);
        v36 = v57;
      }

      *(v36 + 16) = v42 + 1;
      sub_1D1741A90(v7, v36 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42, &qword_1EC643798, &qword_1D1E71EF0);
      v37 += v38;
      --v35;
    }

    while (v35);

    if (*(v36 + 16))
    {
      goto LABEL_35;
    }

LABEL_37:
    v43 = MEMORY[0x1E69E7CC8];
    goto LABEL_38;
  }

  v36 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_37;
  }

LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B30, &qword_1D1E6E878);
  v43 = sub_1D1E68BCC();
LABEL_38:
  v57 = v43;
  sub_1D1B8703C(v36, 1, &v57);

  return v57;
}

void *sub_1D1B7E394@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a4;
  v7 = type metadata accessor for StaticCameraRecordingEventManager(0);
  v136 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v135 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v134 = v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = v124 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v124 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v124 - v17;
  v19 = sub_1D1E66A7C();
  v143 = *(v19 - 8);
  v144 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v124 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v140 = v124 - v26;
  v27 = type metadata accessor for StaticCameraProfile(0);
  v138 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v142 = v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = a1;
  v29 = [v141 accessory];
  if (!v29)
  {
    goto LABEL_6;
  }

  v30 = v29;
  v31 = [v29 home];
  if (!v31)
  {

LABEL_6:

    v41 = v141;
    v42 = v139;
    v43 = *(v138 + 56);

    return v43(v42, 1, 1, v27);
  }

  v129 = a3;
  v130 = v31;
  v127 = v7;
  v32 = [v141 accessory];
  v33 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (v32)
  {
    v34 = v30;
    v35 = v32;
    v36 = [v32 uniqueIdentifier];

    sub_1D1E66A5C();
    v37 = v143;
    v38 = *(v143 + 32);
    v39 = v25;
    v40 = v144;
    v38(v18, v39, v144);
    (*(v37 + 56))(v18, 0, 1, v40);
    v38(v140, v18, v40);
    v30 = v34;
    v33 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  }

  else
  {
    v46 = v143;
    v45 = v144;
    (*(v143 + 56))(v18, 1, 1, v144);
    sub_1D1E66A6C();
    if ((*(v46 + 48))(v18, 1, v45) != 1)
    {
      sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    }
  }

  if (*(a2 + 16) && (v47 = sub_1D1742188(), (v48 & 1) != 0))
  {
    v49 = v47;
    v50 = *(a2 + 56);
    v51 = v30;
    v52 = type metadata accessor for StaticAccessory(0);
    v53 = *(v52 - 8);
    sub_1D1B89120(v50 + *(v53 + 72) * v49, v15, type metadata accessor for StaticAccessory);

    v54 = v52;
    v30 = v51;
    (*(v53 + 56))(v15, 0, 1, v54);
  }

  else
  {

    v55 = type metadata accessor for StaticAccessory(0);
    (*(*(v55 - 8) + 56))(v15, 1, 1, v55);
  }

  v56 = [v30 room];
  if (!v56)
  {
    v56 = [v130 roomForEntireHome];
  }

  v131 = v56;
  v128 = v30;
  v57 = [v30 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v58 = sub_1D1E67C1C();

  if (v58 >> 62)
  {
    v59 = sub_1D1E6873C();
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v132 = v27;
  v137 = v15;
  if (!v59)
  {

    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v145 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v59 & ~(v59 >> 63), 0);
  if ((v59 & 0x8000000000000000) == 0)
  {
    v60 = 0;
    v61 = v145;
    do
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1D3891EF0](v60, v58);
      }

      else
      {
        v62 = *(v58 + 8 * v60 + 32);
      }

      v63 = v62;
      v64 = [v62 uniqueIdentifier];
      sub_1D1E66A5C();

      v145 = v61;
      v66 = *(v61 + 16);
      v65 = *(v61 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1D178CEFC((v65 > 1), v66 + 1, 1);
        v61 = v145;
      }

      ++v60;
      *(v61 + 16) = v66 + 1;
      (*(v143 + 32))(v61 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v66, v22, v144);
    }

    while (v59 != v60);

    v15 = v137;
    v33 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_30:
    v67 = sub_1D17841EC(v61);

    v68 = [v141 v33[61]];
    v69 = v142;
    sub_1D1E66A5C();

    v70 = v133;
    sub_1D1741C08(v15, v133, &qword_1EC6436C8, &unk_1D1E97C40);
    v71 = type metadata accessor for StaticAccessory(0);
    v72 = *(v71 - 8);
    v73 = *(v72 + 48);
    v74 = v72 + 48;
    v75 = v73(v70, 1, v71);
    v125 = v73;
    v126 = v67;
    v124[1] = v74;
    if (v75 == 1)
    {
      sub_1D1741A30(v70, &qword_1EC6436C8, &unk_1D1E97C40);
      v76 = v131;
      v77 = [v131 name];
      v78 = sub_1D1E6781C();
      v80 = v79;
    }

    else
    {
      v81 = &v70[*(v71 + 28)];
      v78 = *v81;
      v80 = v81[1];

      sub_1D1B89188(v70, type metadata accessor for StaticAccessory);
      v76 = v131;
    }

    v82 = v132;
    v83 = &v69[v132[5]];
    *v83 = v78;
    v83[1] = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v84 = v143;
    v85 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1D1E739C0;
    v87 = [v76 v33[61]];
    sub_1D1E66A5C();

    v88 = sub_1D179BE14(v86);
    swift_setDeallocating();
    v89 = v144;
    v133 = *(v84 + 8);
    (v133)(v86 + v85, v144);
    swift_deallocClassInstance();
    *&v142[v82[6]] = v88;
    v90 = [v76 name];
    v91 = sub_1D1E6781C();
    v93 = v92;

    v94 = &v142[v82[7]];
    *v94 = v91;
    v94[1] = v93;
    v95 = v89;
    v96 = v142;
    (*(v84 + 16))(&v142[v82[8]], v140, v95);
    *(v96 + v82[9]) = v126;
    v97 = v134;
    sub_1D1741C08(v137, v134, &qword_1EC6436C8, &unk_1D1E97C40);
    if (v125(v97, 1, v71) == 1)
    {
      sub_1D1741A30(v97, &qword_1EC6436C8, &unk_1D1E97C40);
      v98 = 0;
    }

    else
    {
      v98 = *(v97 + *(v71 + 124));
      sub_1D1B89188(v97, type metadata accessor for StaticAccessory);
    }

    v100 = v135;
    v99 = v136;
    v101 = v132;
    *(v96 + v132[10]) = v98;
    v102 = v141;
    v103 = [v102 userSettings];
    v104 = v137;
    if (v103)
    {
      v105 = v103;
      v106 = [v103 currentAccessMode];

      v107 = v139;
      if (v106 > 3)
      {
        LOBYTE(v108) = 0;
      }

      else
      {
        v108 = 0x2040301u >> (8 * v106);
      }
    }

    else
    {

      LOBYTE(v108) = 0;
      v107 = v139;
    }

    *(v96 + v101[11]) = v108;
    v109 = v101[12];
    v110 = v102;
    sub_1D1B8CDB4(v110, v96 + v109);
    v111 = v101[13];
    v112 = v110;
    sub_1D1B8F078(v112, v96 + v111);
    v113 = [v112 accessory];
    if (v113)
    {
      v114 = v113;
      v115 = HMAccessory.shouldShowInDashboard.getter();
    }

    else
    {
      v115 = 0;
    }

    *(v96 + v101[14]) = v115 & 1;
    v116 = [v112 accessory];
    if (v116)
    {
      v117 = v116;
      v118 = HMAccessory.isFavorite.getter();
    }

    else
    {
      v118 = 0;
    }

    *(v96 + v101[15]) = v118 & 1;
    v119 = v101[16];
    v120 = [v112 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1B89F40(v100, v96 + v119, type metadata accessor for StaticCameraRecordingEventManager);
    (*(v99 + 56))(v96 + v119, 0, 1, v127);
    v121 = [v112 speakerControl];
    if (v121)
    {

      v122 = [v112 microphoneControl];
      sub_1D1741A30(v104, &qword_1EC6436C8, &unk_1D1E97C40);
      (v133)(v140, v144);
      if (v122)
      {

        v123 = 1;
LABEL_52:
        *(v96 + v101[17]) = v123;
        sub_1D1B89F40(v96, v107, type metadata accessor for StaticCameraProfile);
        return (*(v138 + 56))(v107, 0, 1, v101);
      }
    }

    else
    {

      sub_1D1741A30(v104, &qword_1EC6436C8, &unk_1D1E97C40);
      (v133)(v140, v144);
    }

    v123 = 0;
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t StaticCameraProfile.firstRoomID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticCameraProfile(0) + 24));

  return sub_1D17721A0(v3, a1);
}

uint64_t StaticCameraProfile.controller.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v19 - v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642150 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC644258;
  swift_getKeyPath();
  v19[3] = v7;
  sub_1D1B891E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v8 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D1741C08(v7 + v8, v2, &qword_1EC642590, qword_1D1E71260);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    swift_getKeyPath();
    v19[0] = v7;
    sub_1D1E66CAC();

    v9 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v10 = *(v7 + v9);
    if (*(v10 + 16))
    {

      v11 = sub_1D1742188();
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);

        if (*(v13 + 16))
        {
          v14 = sub_1D1742188();
          if (v15)
          {
            v16 = *(*(v13 + 56) + 8 * v14);
            v17 = *(v4 + 8);

            v17(v6, v3);

            return v16;
          }
        }
      }
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t Array<A>.controllers.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticCameraProfile(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v36 = (v6 + 48);
    v32 = (v6 + 32);
    v35 = *(v9 + 72);
    v30 = MEMORY[0x1E69E7CC0];
    v31 = (v6 + 8);
    v33 = v4;
    v37 = v5;
    while (1)
    {
      sub_1D1B89120(v13, v11, type metadata accessor for StaticCameraProfile);
      if (qword_1EC642150 != -1)
      {
        swift_once();
      }

      v14 = qword_1EC644258;
      swift_getKeyPath();
      v38 = v14;
      sub_1D1B891E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
      sub_1D1E66CAC();

      v15 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
      swift_beginAccess();
      sub_1D1741C08(v14 + v15, v4, &qword_1EC642590, qword_1D1E71260);
      v16 = v37;
      if ((*v36)(v4, 1, v37) != 1)
      {
        break;
      }

      sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
LABEL_17:
      sub_1D1B89188(v11, type metadata accessor for StaticCameraProfile);
LABEL_18:
      v13 += v35;
      if (!--v12)
      {
        return v30;
      }
    }

    v17 = v4;
    v18 = v11;
    v19 = v34;
    (*v32)(v34, v17, v16);
    swift_getKeyPath();
    v38 = v14;
    sub_1D1E66CAC();

    v20 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (*(v21 + 16))
    {

      v22 = sub_1D1742188();
      if (v23)
      {
        v24 = *(*(v21 + 56) + 8 * v22);

        if (*(v24 + 16))
        {
          v11 = v18;
          sub_1D1742188();
          v25 = v37;
          if (v26)
          {
            v27 = *v31;

            v27(v34, v25);
            v11 = v18;

            v28 = sub_1D1B89188(v18, type metadata accessor for StaticCameraProfile);
            MEMORY[0x1D3891220](v28);
            if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D1E67C5C();
            }

            sub_1D1E67CAC();
            v30 = v39;
            v4 = v33;
            goto LABEL_18;
          }

          (*v31)(v34, v25);
          goto LABEL_16;
        }
      }
    }

    (*v31)(v19, v37);
    v11 = v18;
LABEL_16:
    v4 = v33;
    goto LABEL_17;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t ArraySlice<A>.controllers.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  v44 = sub_1D1E66A7C();
  v10 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticCameraProfile(0) - 8;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  v17 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
    return v37;
  }

  if ((a4 >> 1) > a3)
  {
    v18 = (v10 + 48);
    v19 = *(v14 + 72);
    v39 = (v10 + 8);
    v40 = (v10 + 32);
    v37 = MEMORY[0x1E69E7CC0];
    v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = v19;
    v20 = a2 + v19 * a3;
    v41 = v9;
    while (1)
    {
      v45 = v17;
      v21 = v18;
      v22 = v16;
      sub_1D1B89120(v20, v16, type metadata accessor for StaticCameraProfile);
      if (qword_1EC642150 != -1)
      {
        swift_once();
      }

      v23 = qword_1EC644258;
      swift_getKeyPath();
      v46 = v23;
      sub_1D1B891E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
      sub_1D1E66CAC();

      v24 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
      swift_beginAccess();
      sub_1D1741C08(v23 + v24, v9, &qword_1EC642590, qword_1D1E71260);
      v25 = v44;
      if ((*v18)(v9, 1, v44) != 1)
      {
        break;
      }

      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      v16 = v22;
LABEL_19:
      sub_1D1B89188(v16, type metadata accessor for StaticCameraProfile);
LABEL_20:
      v20 += v43;
      v17 = v45 - 1;
      if (v45 == 1)
      {
        return v37;
      }
    }

    v26 = v42;
    (*v40)(v42, v9, v25);
    swift_getKeyPath();
    v46 = v23;
    sub_1D1E66CAC();
    v27 = v26;

    v28 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v29 = *(v23 + v28);
    if (*(v29 + 16))
    {

      v30 = sub_1D1742188();
      if (v31)
      {
        v32 = *(*(v29 + 56) + 8 * v30);

        if (*(v32 + 16))
        {
          v16 = v38;
          sub_1D1742188();
          v18 = v21;
          if (v33)
          {
            v34 = *v39;

            v34(v27, v44);

            v35 = sub_1D1B89188(v16, type metadata accessor for StaticCameraProfile);
            MEMORY[0x1D3891220](v35);
            v9 = v41;
            if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D1E67C5C();
            }

            sub_1D1E67CAC();
            v37 = v47;
            goto LABEL_20;
          }

          (*v39)(v27, v44);
          goto LABEL_18;
        }
      }
    }

    (*v39)(v26, v44);
    v18 = v21;
    v16 = v38;
LABEL_18:
    v9 = v41;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B7FF30()
{
  v1 = 0x726F737365636361;
  v2 = 0x4765636976726573;
  if (*v0 != 2)
  {
    v2 = 0x654472657474616DLL;
  }

  if (*v0)
  {
    v1 = 0x7365636976726573;
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

uint64_t sub_1D1B7FFCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1B88FA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1B7FFF4(uint64_t a1)
{
  v2 = sub_1D1B86A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B80030(uint64_t a1)
{
  v2 = sub_1D1B86A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraProfile.NearbyStaticItems.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B948, &qword_1D1E9B0C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v15 = v1[2];
  v16 = v8;
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B86A60();

  sub_1D1E6930C();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  sub_1D1B86AB4();
  sub_1D1E68F1C();

  if (!v2)
  {
    v11 = v14;
    v12 = v15;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    v18 = v12;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B86BA0();
    sub_1D1E68F1C();
    v18 = v11;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B978, &qword_1D1EA2E10);
    sub_1D1B86C8C();
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StaticCameraProfile.NearbyStaticItems.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1D1859F70(a1, v3);
  sub_1D18599F4(a1, v4);
  sub_1D1859478(a1, v6);

  return sub_1D1858EFC(a1, v5);
}

uint64_t StaticCameraProfile.NearbyStaticItems.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D1859F70(v6, v1);
  sub_1D18599F4(v6, v2);
  sub_1D1859478(v6, v4);
  sub_1D1858EFC(v6, v3);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.NearbyStaticItems.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B988, &unk_1D1E9B0F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B86A60();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  v17 = 0;
  sub_1D1B86D78();
  sub_1D1E68D7C();
  v9 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v17 = 1;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  v16 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
  v17 = 2;
  sub_1D1B86E64();
  sub_1D1E68D7C();
  v15 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B978, &qword_1D1EA2E10);
  v17 = 3;
  sub_1D1B86F50();
  sub_1D1E68D7C();
  (*(v6 + 8))(v8, v5);
  v11 = v18;
  v13 = v15;
  v12 = v16;
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1B8075C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D1859F70(v6, v1);
  sub_1D18599F4(v6, v2);
  sub_1D1859478(v6, v4);
  sub_1D1858EFC(v6, v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B807D4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1D1859F70(a1, v3);
  sub_1D18599F4(a1, v4);
  sub_1D1859478(a1, v6);

  return sub_1D1858EFC(a1, v5);
}

uint64_t sub_1D1B80838(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D1E6920C();
  sub_1D1859F70(v7, v2);
  sub_1D18599F4(v7, v3);
  sub_1D1859478(v7, v5);
  sub_1D1858EFC(v7, v4);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.nearbyItems(using:and:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v74 = a2;
  v78 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v70 - v7;
  v9 = sub_1D1E66A7C();
  v76 = *(v9 - 8);
  v77 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v70 - v14;
  v15 = type metadata accessor for StaticAccessory(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  v22 = type metadata accessor for StateSnapshot(0);
  v23 = *(v22 + 32);
  v73 = a1;
  v24 = *(a1 + v23);
  if (!*(v24 + 16))
  {
    goto LABEL_5;
  }

  v25 = v22;
  v26 = type metadata accessor for StaticCameraProfile(0);
  v27 = *(v26 + 32);
  v28 = sub_1D1742188();
  if ((v29 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1D1B89120(*(v24 + 56) + *(v16 + 72) * v28, v19, type metadata accessor for StaticAccessory);
  v30 = v19;
  v31 = v21;
  sub_1D1B89F40(v30, v21, type metadata accessor for StaticAccessory);
  v32 = &v21[*(v15 + 92)];
  if (v32[8])
  {
    sub_1D1B89188(v21, type metadata accessor for StaticAccessory);
LABEL_5:
    v33 = MEMORY[0x1E69E7CC0];
    v34 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
    v35 = sub_1D18D5D90(v33);
    v36 = sub_1D18D5B74(v33);
    result = sub_1D18D5FAC(v33);
    v38 = v78;
    *v78 = v34;
    v38[1] = v35;
    v38[2] = v36;
    v38[3] = result;
    return result;
  }

  v39 = *v32;
  v40 = *(v4 + *(v26 + 24));
  sub_1D1771B4C(*v32, 0);
  sub_1D17721A0(v40, v8);
  v41 = v76;
  v42 = v77;
  if ((*(v76 + 48))(v8, 1, v77) == 1)
  {
    sub_1D1B89188(v31, type metadata accessor for StaticAccessory);
    sub_1D18EB2D8(v39, 0);
    sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
    goto LABEL_5;
  }

  v43 = v39;
  v44 = v75;
  (*(v41 + 32))(v75, v8, v42);
  v70 = v43;
  if (v43)
  {
    v45 = v44;
    if (*(v70 + 16))
    {
      v46 = v31;
      v47 = *(v73 + *(v25 + 60));
      v48 = *(v73 + *(v25 + 56));
      v49 = v41;
      v50 = *(v74 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
      v51 = MEMORY[0x1E69E7CC0];
      v82 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
      v81 = sub_1D18D5D90(v51);
      v80 = sub_1D18D5B74(v51);
      v79 = sub_1D18D5FAC(v51);

      v52 = v70;
      sub_1D1B87440(v70, v24, v50, &v79, &v82, v47, &v81, v48, &v80);

      sub_1D18EB2D8(v52, 0);
      (*(v49 + 8))(v45, v42);
      result = sub_1D1B89188(v46, type metadata accessor for StaticAccessory);
      v53 = v81;
      v55 = v79;
      v54 = v80;
      v56 = v78;
      *v78 = v82;
      v56[1] = v53;
      v56[2] = v54;
      v56[3] = v55;
    }

    else
    {
      v64 = MEMORY[0x1E69E7CC0];
      v65 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
      v66 = sub_1D18D5D90(v64);
      v67 = sub_1D18D5B74(v64);
      v68 = sub_1D18D5FAC(v64);
      sub_1D18EB2D8(v70, 0);
      (*(v41 + 8))(v44, v42);
      result = sub_1D1B89188(v31, type metadata accessor for StaticAccessory);
      v69 = v78;
      *v78 = v65;
      v69[1] = v66;
      v69[2] = v67;
      v69[3] = v68;
    }
  }

  else
  {
    v57 = *(v41 + 16);
    v58 = v4 + v27;
    v59 = v71;
    v57(v71, v58, v42);
    v60 = v72;
    v57(v72, v44, v42);
    v61 = *(v73 + *(v25 + 60));
    v62 = *(v73 + *(v25 + 56));
    v63 = *(v74 + *(type metadata accessor for MatterStateSnapshot(0) + 24));

    sub_1D1B80F40(v59, v60, v24, v61, v62, v63, 0, v78);
    (*(v41 + 8))(v44, v42);
    return sub_1D1B89188(v31, type metadata accessor for StaticAccessory);
  }

  return result;
}

void sub_1D1B80F40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, unint64_t *a8@<X8>)
{
  v149 = a6;
  v150 = a7;
  v151 = a5;
  v134 = a4;
  v157 = a3;
  v139 = a2;
  v148 = a1;
  v135 = a8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v141 = v127 - v9;
  v10 = type metadata accessor for StaticAccessory(0);
  v155 = *(v10 - 8);
  v156 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v153 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v154 = v127 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v140 = v127 - v15;
  v16 = type metadata accessor for StaticMatterDevice(0);
  v145 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v128 = v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v152 = v127 - v19;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v20 = MEMORY[0x1EEE9AC00](v144);
  v142 = (v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v23 = v127 - v22;
  v24 = type metadata accessor for StaticService(0);
  v147 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v127 - v28;
  v30 = type metadata accessor for StaticServiceGroup(0);
  v143 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = v127 - v34;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v163 = v37;
  v38 = sub_1D18D5D90(v36);
  v162 = v38;
  v39 = sub_1D18D5B74(v36);
  v161 = v39;
  v40 = sub_1D18D5FAC(v36);
  v160 = v40;
  if (v150)
  {
    v41 = v150;
    v42 = v157;

    v43 = v149;

    v44 = v134;

    v45 = v151;

    sub_1D1B87440(v41, v42, v43, &v160, &v163, v44, &v162, v45, &v161);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v46 = sub_1D1E66A7C();
    (*(*(v46 - 8) + 8))(v148, v46);
    v47 = v161;
    v48 = v139;
LABEL_53:
    v123 = v162;
    v124 = v160;
    v125 = v135;
    *v135 = v163;
    v125[1] = v123;
    v125[2] = v47;
    v125[3] = v124;
    sub_1D1E66A7C();
    (*(*(v46 - 8) + 8))(v48, v46);
  }

  else
  {
    v146 = v33;
    v130 = v30;
    v127[1] = v40;
    v150 = v23;
    v136 = v37;
    v159 = MEMORY[0x1E69E7CD0];
    v49 = v151;
    v50 = *(v151 + 64);
    v138 = v151 + 64;
    v51 = 1 << *(v151 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & v50;
    v137 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v54 = 0;
    v55 = v157;
    v56 = v49;
    v127[3] = v39;
    v127[2] = v38;
    v129 = v35;
    while (1)
    {
      v57 = v149;
      if (!v53)
      {
        break;
      }

LABEL_12:
      sub_1D1B89120(*(v56 + 56) + *(v143 + 72) * (__clz(__rbit64(v53)) | (v54 << 6)), v35, type metadata accessor for StaticServiceGroup);
      v59 = v35;
      v60 = v146;
      sub_1D1B89120(v59, v146, type metadata accessor for StaticServiceGroup);
      v61 = *&v60[*(v130 + 56)];
      v62 = v61[2];
      if (v62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
        v63 = *(v147 + 72);
        v64 = (*(v147 + 80) + 32) & ~*(v147 + 80);
        v65 = swift_allocObject();
        v66 = _swift_stdlib_malloc_size(v65);
        if (!v63)
        {
          goto LABEL_57;
        }

        if (v66 - v64 == 0x8000000000000000 && v63 == -1)
        {
          goto LABEL_59;
        }

        v65[2] = v62;
        v65[3] = 2 * ((v66 - v64) / v63);
        v133 = sub_1D1804A58(v158, v65 + v64, v62, v61);
        v68 = v158[0];
        v132 = v158[1];
        v131 = v158[3];

        sub_1D1716918(v68);
        if (v133 != v62)
        {
          goto LABEL_58;
        }

        v55 = v157;
        v60 = v146;
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      sub_1D1B89188(v60, type metadata accessor for StaticServiceGroup);
      v69 = v65[2];
      if (v69)
      {
        v70 = v65 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
        v71 = *(v147 + 72);
        do
        {
          sub_1D1B89120(v70, v29, type metadata accessor for StaticService);
          sub_1D17625F8(v27, v29);
          sub_1D1B89188(v27, type metadata accessor for StaticService);
          v70 += v71;
          --v69;
        }

        while (v69);
      }

      v53 &= v53 - 1;
      v35 = v129;
      sub_1D1B89188(v129, type metadata accessor for StaticServiceGroup);

      v56 = v151;
    }

    while (1)
    {
      v58 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_55;
      }

      if (v58 >= v137)
      {
        break;
      }

      v53 = *(v138 + 8 * v58);
      ++v54;
      if (v53)
      {
        v54 = v58;
        goto LABEL_12;
      }
    }

    v138 = v159;
    v72 = sub_1D1B83638(v57, sub_1D1B85974, sub_1D1B85974);

    MEMORY[0x1EEE9AC00](v73);
    v126 = v139;
    v74 = sub_1D1D1DCD8(sub_1D1B89230, &v127[-4], v72);
    v137 = 0;

    v75 = v74 + 64;
    v76 = 1 << v74[32];
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & *(v74 + 8);
    v79 = (v76 + 63) >> 6;
    v80 = v55 + 64;
    v146 = (v155 + 56);
    v147 = v155 + 48;
    v149 = v74;

    v81 = 0;
    v143 = MEMORY[0x1E69E7CC8];
    v82 = v148;
    v83 = v154;
LABEL_29:
    v84 = v81;
    if (v78)
    {
      v85 = v150;
LABEL_35:
      v86 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v87 = v86 | (v81 << 6);
      v88 = *(*(v149 + 48) + 8 * v87);
      v89 = v144;
      v90 = v85;
      sub_1D1B89120(*(v149 + 56) + *(v145 + 72) * v87, v85 + *(v144 + 48), type metadata accessor for StaticMatterDevice);
      *v90 = v88;
      v91 = v90;
      v92 = v142;
      sub_1D1741C08(v91, v142, &qword_1EC645428, &qword_1D1E96C40);
      v93 = *v92;
      sub_1D1B89F40(v92 + *(v89 + 48), v152, type metadata accessor for StaticMatterDevice);
      v94 = 1 << *(v55 + 32);
      if (v94 < 64)
      {
        v95 = ~(-1 << v94);
      }

      else
      {
        v95 = -1;
      }

      v96 = v95 & *(v55 + 64);
      v97 = (v94 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v98 = 0;
      while (v96)
      {
LABEL_45:
        sub_1D1B89120(*(v157 + 56) + *(v155 + 72) * (__clz(__rbit64(v96)) | (v98 << 6)), v83, type metadata accessor for StaticAccessory);
        v100 = v83;
        v101 = v153;
        sub_1D1B89F40(v100, v153, type metadata accessor for StaticAccessory);
        v102 = v101 + *(v156 + 144);
        if ((*(v102 + 8) & 1) == 0 && *v102 == v93)
        {
          v55 = v157;

          v103 = v141;
          sub_1D1B89F40(v101, v141, type metadata accessor for StaticAccessory);
          v104 = v156;
          (*v146)(v103, 0, 1, v156);
          v83 = v154;
LABEL_49:

          v105 = (*v147)(v103, 1, v104);
          v82 = v148;
          v106 = v140;
          if (v105 == 1)
          {
            sub_1D1B89188(v152, type metadata accessor for StaticMatterDevice);
            sub_1D1741A30(v150, &qword_1EC645428, &qword_1D1E96C40);
            sub_1D1741A30(v103, &qword_1EC6436C8, &unk_1D1E97C40);
          }

          else
          {
            sub_1D1B89F40(v103, v140, type metadata accessor for StaticAccessory);
            sub_1D1B89120(v152, v128, type metadata accessor for StaticMatterDevice);
            v107 = v143;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v158[0] = v107;
            sub_1D1755F18(v128, v106, isUniquelyReferenced_nonNull_native);
            sub_1D1B89188(v106, type metadata accessor for StaticAccessory);
            sub_1D1B89188(v152, type metadata accessor for StaticMatterDevice);
            sub_1D1741A30(v150, &qword_1EC645428, &qword_1D1E96C40);
            v143 = v158[0];
          }

          goto LABEL_29;
        }

        v96 &= v96 - 1;
        sub_1D1B89188(v101, type metadata accessor for StaticAccessory);
        v83 = v154;
      }

      while (1)
      {
        v99 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          break;
        }

        if (v99 >= v97)
        {
          v55 = v157;

          v103 = v141;
          v104 = v156;
          (*v146)(v141, 1, 1, v156);
          goto LABEL_49;
        }

        v96 = *(v80 + 8 * v99);
        ++v98;
        if (v96)
        {
          v98 = v99;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v85 = v150;
    while (1)
    {
      v81 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v81 >= v79)
      {

        v160 = v143;

        v110 = sub_1D1B837A8(v109, &v160);

        v111 = sub_1D1B83638(v110, sub_1D1B848F8, sub_1D1B848F8);

        v112 = sub_1D1B83638(v111, sub_1D1B843CC, sub_1D1B843CC);

        MEMORY[0x1EEE9AC00](v113);
        v48 = v139;
        v114 = sub_1D1D1DA74(sub_1D1B89250, &v127[-4], v112);

        v163 = v114;
        v115 = sub_1D1B83638(v134, sub_1D1B83914, sub_1D1B83914);

        v116 = sub_1D1B89D30(v115, v55, sub_1D1B89270, sub_1D1B89270);

        swift_bridgeObjectRelease_n();
        v117 = v138;

        v118 = sub_1D1B89D30(v116, v117, sub_1D1B897EC, sub_1D1B897EC);

        v119 = swift_bridgeObjectRelease_n();
        MEMORY[0x1EEE9AC00](v119);
        v120 = sub_1D1D1D438(sub_1D1B89F00, &v127[-4], v118);

        v162 = v120;
        v121 = sub_1D1B83638(v151, sub_1D1B83F60, sub_1D1B83F60);

        MEMORY[0x1EEE9AC00](v122);
        v126 = v48;
        v47 = sub_1D1D1D60C(sub_1D1B89F20, &v127[-4], v121);

        v46 = sub_1D1E66A7C();
        (*(*(v46 - 8) + 8))(v82, v46);

        goto LABEL_53;
      }

      v78 = *&v75[8 * v81];
      ++v84;
      if (v78)
      {
        goto LABEL_35;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }
}

uint64_t sub_1D1B82064(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  *(&v21 - v11) = *a1;
  sub_1D1B89120(a2, &v21 + *(v7 + 56) - v11, type metadata accessor for StaticMatterDevice);
  sub_1D1741C08(v12, v10, &qword_1EC645428, &qword_1D1E96C40);
  v13 = &v10[*(v7 + 56)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D1E739C0;
  v18 = type metadata accessor for StaticMatterDevice(0);
  (*(v15 + 16))(v17 + v16, v13 + *(v18 + 40), v14);
  v19 = sub_1D179BE14(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  sub_1D1B89188(v13, type metadata accessor for StaticMatterDevice);
  LOBYTE(a3) = sub_1D1719534(a3, v19);

  sub_1D1741A30(v12, &qword_1EC645428, &qword_1D1E96C40);
  return a3 & 1;
}

uint64_t sub_1D1B822C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = sub_1D1E66A7C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  sub_1D1B89120(a2, &v16[*(v8 + 48)], type metadata accessor for StaticAccessory);
  sub_1D1741C08(v16, v14, &qword_1EC644B30, &qword_1D1E77280);
  v19 = &v14[*(v8 + 48)];
  v20 = *(v19 + *(type metadata accessor for StaticAccessory(0) + 52));

  sub_1D1B89188(v19, type metadata accessor for StaticAccessory);
  LOBYTE(v19) = sub_1D1719534(v29, v20);

  v21 = *(v18 + 8);
  v21(v14, v17);
  if (v19)
  {
    sub_1D1741A30(v16, &qword_1EC644B30, &qword_1D1E77280);
    v22 = 1;
  }

  else
  {
    v23 = v21;
    sub_1D1741C08(v16, v11, &qword_1EC644B30, &qword_1D1E77280);
    v24 = *(v8 + 48);
    StaticAccessory.primaryStaticService.getter(v7);
    v25 = type metadata accessor for StaticService(0);
    if ((*(*(v25 - 8) + 48))(v7, 1, v25) == 1)
    {
      sub_1D1741A30(v7, &qword_1EC6436F0, &qword_1D1E99BC0);
      v26 = 0;
    }

    else
    {
      v26 = v7[*(v25 + 104)];
      sub_1D1B89188(v7, type metadata accessor for StaticService);
    }

    sub_1D1B89188(&v11[v24], type metadata accessor for StaticAccessory);
    v30 = v26;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v27)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_1D1E6904C();
    }

    sub_1D1741A30(v16, &qword_1EC644B30, &qword_1D1E77280);
    v23(v11, v17);
  }

  return v22 & 1;
}

uint64_t sub_1D1B82688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  sub_1D1B89120(a2, &v13[*(v6 + 48)], type metadata accessor for StaticService);
  sub_1D1741C08(v13, v11, &qword_1EC642DB0, &unk_1D1E6F360);
  v16 = &v11[*(v6 + 48)];
  v17 = type metadata accessor for StaticService(0);
  v18 = *(v16 + *(v17 + 76));

  sub_1D1B89188(v16, type metadata accessor for StaticService);
  LOBYTE(a3) = sub_1D1719534(a3, v18);

  v19 = *(v15 + 8);
  v19(v11, v14);
  if (a3)
  {
    sub_1D1741A30(v13, &qword_1EC642DB0, &unk_1D1E6F360);
    v20 = 1;
  }

  else
  {
    v21 = v26;
    sub_1D1741C08(v13, v26, &qword_1EC642DB0, &unk_1D1E6F360);
    v22 = v21 + *(v6 + 48);
    v23 = *(v22 + *(v17 + 104));
    sub_1D1B89188(v22, type metadata accessor for StaticService);
    v27 = v23;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v24)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_1D1E6904C();
    }

    sub_1D1741A30(v13, &qword_1EC642DB0, &unk_1D1E6F360);
    v19(v21, v14);
  }

  return v20 & 1;
}

uint64_t sub_1D1B8297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
  v6 = v5 - 8;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  sub_1D1B89120(a2, &v11[*(v6 + 56)], type metadata accessor for StaticServiceGroup);
  sub_1D1741C08(v11, v9, &qword_1EC645458, &qword_1D1E799E8);
  v14 = &v9[*(v6 + 56)];
  v15 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 36));

  sub_1D1B89188(v14, type metadata accessor for StaticServiceGroup);
  LOBYTE(v14) = sub_1D1719534(v18, v15);

  sub_1D1741A30(v11, &qword_1EC645458, &qword_1D1E799E8);
  (*(v13 + 8))(v9, v12);
  return v14 & 1;
}

void *StaticCameraProfile.NearbyStaticItems.orderedVisibleTileInfos.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];

  v5 = sub_1D1B7A918(v4);

  v6 = sub_1D1B7AC88(v1);
  v7 = sub_1D1B7AFF8(v3);
  v8 = sub_1D1B7B368(v2);
  sub_1D17A53D0(v6);
  sub_1D17A53D0(v7);
  sub_1D17A53D0(v8);
  v9 = sub_1D1D07DC4(MEMORY[0x1E69E7CC0], v5);

  return v9;
}

double sub_1D1B82C24()
{
  if (qword_1EC6423A0 != -1)
  {
    swift_once();
  }

  off_1EC64B8D0 = qword_1EC6BE1B8;

  return result;
}

double static StaticCameraProfile.test(name:isReachable:currentAccessMode:snapshotControl:streamControl:shouldShowInDashboard:recordingEventManager:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = *a4;
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v14 = sub_1D179BE14(v13);
  swift_setDeallocating();
  v15 = *(v11 + 8);
  v15(v13 + v12, v10);
  swift_deallocClassInstance();
  v16 = type metadata accessor for StaticCameraProfile(0);
  sub_1D1E66A6C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v18 = sub_1D179BE14(v17);
  swift_setDeallocating();
  v15(v17 + v12, v10);
  swift_deallocClassInstance();
  sub_1D1741C08(a5, a9 + v16[12], &qword_1EC64B8D8, &qword_1D1E9B030);
  sub_1D1741C08(a6, a9 + v16[13], &qword_1EC64B8E0, &qword_1D1E9B038);
  sub_1D1741C08(a8, a9 + v16[16], &qword_1EC64B8E8, &qword_1D1E9B040);
  v19 = (a9 + v16[5]);
  *v19 = a1;
  v19[1] = a2;
  *(a9 + v16[6]) = v14;
  v20 = (a9 + v16[7]);
  *v20 = 0;
  v20[1] = 0;
  *(a9 + v16[9]) = v18;
  *(a9 + v16[10]) = a3;
  *(a9 + v16[11]) = v27;
  *(a9 + v16[14]) = a7;
  *(a9 + v16[15]) = 0;
  *(a9 + v16[17]) = 1;

  return result;
}

uint64_t static StaticCameraProfile.test(cameraProfile:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticCameraRecordingEventManager(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 accessory];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 name];

    v11 = sub_1D1E6781C();
    v40 = v12;
    v41 = v11;
  }

  else
  {
    v40 = 0xE000000000000000;
    v41 = 0;
  }

  v13 = [a1 accessory];
  if (v13)
  {
    v14 = v13;
    v39 = [v13 isReachable];
  }

  else
  {
    v39 = 0;
  }

  v15 = [a1 userSettings];
  if (v15 && (v16 = v15, v17 = [v15 currentAccessMode], v16, v17 <= 3))
  {
    v38 = 0x2040301u >> (8 * v17);
  }

  else
  {
    v38 = 0;
  }

  v18 = type metadata accessor for StaticCameraProfile(0);
  v19 = v18[12];
  v20 = a1;
  sub_1D1B8CDB4(v20, a2 + v19);
  v21 = v18[13];
  v22 = v20;
  sub_1D1B8F078(v22, a2 + v21);
  v23 = [v22 uniqueIdentifier];
  sub_1D1E66A5C();

  v24 = v18[16];
  sub_1D1B89F40(v7, a2 + v24, type metadata accessor for StaticCameraRecordingEventManager);
  (*(v5 + 56))(a2 + v24, 0, 1, v4);
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v25 = sub_1D1E66A7C();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v36 = xmmword_1D1E739C0;
  *(v28 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v37 = sub_1D179BE14(v28);
  swift_setDeallocating();
  v29 = *(v26 + 8);
  v29(v28 + v27, v25);
  swift_deallocClassInstance();
  sub_1D1E66A6C();
  v30 = swift_allocObject();
  *(v30 + 16) = v36;
  sub_1D1E66A6C();
  v31 = sub_1D179BE14(v30);
  swift_setDeallocating();
  v29(v30 + v27, v25);
  result = swift_deallocClassInstance();
  v33 = (a2 + v18[5]);
  v34 = v40;
  *v33 = v41;
  v33[1] = v34;
  *(a2 + v18[6]) = v37;
  v35 = (a2 + v18[7]);
  *v35 = 0;
  v35[1] = 0;
  *(a2 + v18[9]) = v31;
  LOBYTE(v34) = v38;
  *(a2 + v18[10]) = v39;
  *(a2 + v18[11]) = v34;
  *(a2 + v18[14]) = 1;
  *(a2 + v18[15]) = 0;
  *(a2 + v18[17]) = 1;
  return result;
}

uint64_t static StaticCameraProfile.demo()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticCameraProfile(0);
  v3 = v2[12];
  v4 = type metadata accessor for StaticCameraSnapshotControl(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + v2[13];
  sub_1D1E66A6C();
  v6 = type metadata accessor for StaticCameraStreamControl(0);
  *(v5 + *(v6 + 20)) = 2;
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = v2[16];
  v8 = type metadata accessor for StaticCameraRecordingEventManager(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v19 = sub_1D179BE14(v12);
  swift_setDeallocating();
  v13 = *(v10 + 8);
  v13(v12 + v11, v9);
  swift_deallocClassInstance();
  sub_1D1E66A6C();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v15 = sub_1D179BE14(v14);
  swift_setDeallocating();
  v13(v14 + v11, v9);
  result = swift_deallocClassInstance();
  v17 = (a1 + v2[5]);
  *v17 = 0x6D6143206F6D6544;
  v17[1] = 0xEB00000000617265;
  *(a1 + v2[6]) = v19;
  v18 = (a1 + v2[7]);
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v2[9]) = v15;
  *(a1 + v2[10]) = 1;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[14]) = 1;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[17]) = 1;
  return result;
}

uint64_t sub_1D1B83600(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

void *sub_1D1B83638(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
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
  v13 = sub_1D1B85D5C(v12, v7, v5, a3);
  result = MEMORY[0x1D3893640](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void *sub_1D1B837A8(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D1B85374(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1D1B85CD4(v10, v6, v4, a2);
  result = MEMORY[0x1D3893640](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1D1B83914(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v50 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v66 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - v6;
  v51 = type metadata accessor for StaticService(0);
  v55 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v10);
  v65 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v14 = 0;
  v63 = a3;
  v15 = *(a3 + 64);
  v49 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v53 = v12 + 16;
  v54 = v12;
  v57 = (v12 + 8);
  v58 = v19;
  v60 = v9;
  v61 = v7;
  v59 = result;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v64 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v14 << 6);
    v25 = v63;
    v26 = *(v54 + 16);
    v27 = v65;
    v26(v65, v63[6] + *(v54 + 72) * v24, v10);
    v28 = v25[7];
    v29 = *(v55 + 72);
    v62 = v24;
    sub_1D1B89120(v28 + v29 * v24, v9, type metadata accessor for StaticService);
    v26(v7, v27, v10);
    v30 = v56;
    sub_1D1B89120(v9, &v7[*(v56 + 48)], type metadata accessor for StaticService);
    v31 = v66;
    sub_1D1741C08(v7, v66, &qword_1EC642DB0, &unk_1D1E6F360);
    v32 = *(v30 + 48);
    if (qword_1EC642368 != -1)
    {
      swift_once();
    }

    v67 = v31 + v32;
    v33 = off_1EC64B8D0;
    if (*(off_1EC64B8D0 + 2) && (v34 = *(v67 + *(v51 + 104)), sub_1D1E6920C(), v69 = v34, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v35 = sub_1D1E6926C(), v36 = -1 << *(v33 + 32), v37 = v35 & ~v36, ((*(v33 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) != 0))
    {
      v38 = ~v36;
      while (1)
      {
        LOBYTE(v68[0]) = *(v33[6] + v37);
        v69 = v34;
        v39 = ServiceKind.rawValue.getter();
        v41 = v40;
        if (v39 == ServiceKind.rawValue.getter() && v41 == v42)
        {
          break;
        }

        v44 = sub_1D1E6904C();

        if (v44)
        {
          goto LABEL_26;
        }

        v37 = (v37 + 1) & v38;
        if (((*(v33 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_26:
      v7 = v61;
      sub_1D1741A30(v61, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B89188(v67, type metadata accessor for StaticService);
      v45 = *v57;
      v10 = v59;
      (*v57)(v66, v59);
      v9 = v60;
      sub_1D1B89188(v60, type metadata accessor for StaticService);
      result = (v45)(v65, v10);
      *(v50 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      v46 = __OFADD__(v52++, 1);
      v19 = v58;
      v18 = v64;
      if (v46)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_5:
      v7 = v61;
      sub_1D1741A30(v61, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B89188(v67, type metadata accessor for StaticService);
      v20 = *v57;
      v10 = v59;
      (*v57)(v66, v59);
      v9 = v60;
      sub_1D1B89188(v60, type metadata accessor for StaticService);
      result = (v20)(v65, v10);
      v19 = v58;
      v18 = v64;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_1D188B1C8(v50, v48, v52, v63);
    }

    v23 = *(v49 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v64 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D1B83F60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
  v4 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v41 - v6;
  v7 = type metadata accessor for StaticServiceGroup(0);
  v51 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v54 = a3;
  v16 = *(a3 + 64);
  v46 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v44 = 0;
  v45 = (v17 + 63) >> 6;
  v49 = v12 + 16;
  v50 = v12;
  v48 = (v12 + 8);
  v57 = v9;
  while (1)
  {
    v20 = v14;
    if (!v19)
    {
      break;
    }

    v56 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v15 << 6);
    v22 = v55;
LABEL_11:
    v25 = v54;
    v26 = *(v50 + 16);
    v27 = v21;
    v26(v14, v54[6] + *(v50 + 72) * v21, v10);
    v28 = v25[7];
    v29 = *(v51 + 72);
    v47 = v27;
    v30 = v28 + v29 * v27;
    v31 = v57;
    sub_1D1B89120(v30, v57, type metadata accessor for StaticServiceGroup);
    v26(v22, v20, v10);
    v32 = v53;
    sub_1D1B89120(v31, v22 + *(v53 + 48), type metadata accessor for StaticServiceGroup);
    v33 = v52;
    sub_1D1741C08(v22, v52, &qword_1EC645458, &qword_1D1E799E8);
    v34 = *(v32 + 48);
    v35 = v22;
    if (qword_1EC642368 != -1)
    {
      swift_once();
    }

    v36 = off_1EC64B8D0;
    v37 = v33;
    StaticServiceGroup.displayAsServiceKind.getter(&v58);
    v38 = sub_1D171951C(v58, v36);
    sub_1D1741A30(v35, &qword_1EC645458, &qword_1D1E799E8);
    sub_1D1B89188(v37 + v34, type metadata accessor for StaticServiceGroup);
    v39 = *v48;
    (*v48)(v37, v10);
    sub_1D1B89188(v57, type metadata accessor for StaticServiceGroup);
    result = v39(v20, v10);
    v14 = v20;
    v19 = v56;
    if (v38)
    {
      *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v44++, 1))
      {
        goto LABEL_19;
      }
    }
  }

  v23 = v15;
  v22 = v55;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v45)
    {
      return sub_1D188B630(v43, v42, v44, v54);
    }

    v24 = *(v46 + 8 * v15);
    ++v23;
    if (v24)
    {
      v56 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v15 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D1B843CC(unint64_t *a1, uint64_t a2, void *a3)
{
  v44 = a2;
  v45 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v4 = MEMORY[0x1EEE9AC00](v53);
  v61 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v44 - v6;
  v55 = type metadata accessor for StaticAccessory(0);
  v52 = *(v55 - 1);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v58);
  v57 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v11 = 0;
  v54 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v50 = v9 + 16;
  v51 = v9;
  v48 = (v9 + 8);
  v49 = v18;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v56 = (v17 - 1) & v17;
LABEL_12:
    v24 = v21 | (v11 << 6);
    v25 = v54;
    v26 = *(v51 + 16);
    v27 = v57;
    v28 = v58;
    v26(v57, v54[6] + *(v51 + 72) * v24, v58);
    v29 = v25[7];
    v30 = *(v52 + 72);
    v47 = v24;
    v31 = v29 + v30 * v24;
    v32 = v60;
    sub_1D1B89120(v31, v60, type metadata accessor for StaticAccessory);
    v33 = v59;
    v26(v59, v27, v28);
    v34 = v53;
    sub_1D1B89120(v32, v33 + *(v53 + 48), type metadata accessor for StaticAccessory);
    v35 = v61;
    sub_1D1741C08(v33, v61, &qword_1EC644B30, &qword_1D1E77280);
    v36 = v35 + *(v34 + 48);
    if ((*(v36 + v55[19]) & 1) != 0 || (*(v36 + v55[27]) & 1) == 0)
    {
      sub_1D1741A30(v59, &qword_1EC644B30, &qword_1D1E77280);
      sub_1D1B89188(v36, type metadata accessor for StaticAccessory);
      v19 = *v48;
      v20 = v58;
      (*v48)(v61, v58);
      sub_1D1B89188(v60, type metadata accessor for StaticAccessory);
      result = (v19)(v57, v20);
      v18 = v49;
      v17 = v56;
    }

    else
    {
      v37 = StaticAccessory.hasVisibleServices(minCount:)(2);
      sub_1D1741A30(v59, &qword_1EC644B30, &qword_1D1E77280);
      v18 = v49;
      if (v37)
      {
        sub_1D1B89188(v36, type metadata accessor for StaticAccessory);
        v41 = *v48;
        v42 = v58;
        (*v48)(v61, v58);
        sub_1D1B89188(v60, type metadata accessor for StaticAccessory);
        result = (v41)(v57, v42);
        v17 = v56;
LABEL_18:
        *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        if (__OFADD__(v46++, 1))
        {
          __break(1u);
          return sub_1D188CC38(v45, v44, v46, v54);
        }
      }

      else
      {
        v38 = *(v36 + v55[37]);
        sub_1D1B89188(v36, type metadata accessor for StaticAccessory);
        v39 = *v48;
        v40 = v58;
        (*v48)(v61, v58);
        sub_1D1B89188(v60, type metadata accessor for StaticAccessory);
        result = (v39)(v57, v40);
        v17 = v56;
        if (v38 == 1)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v22 = v11;
  while (1)
  {
    v11 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_1D188CC38(v45, v44, v46, v54);
    }

    v23 = v13[v11];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v56 = (v23 - 1) & v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B848F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v76[0] = a2;
  v80 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v76 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v76 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v10 = MEMORY[0x1EEE9AC00](v88);
  v101 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v76 - v12;
  v94 = type metadata accessor for StaticAccessory(0);
  v86 = *(v94 - 8);
  v14 = MEMORY[0x1EEE9AC00](v94);
  v100 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v99 = v76 - v16;
  v98 = sub_1D1E66A7C();
  v17 = MEMORY[0x1EEE9AC00](v98);
  v84 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v97 = v76 - v21;
  v81 = 0;
  v22 = 0;
  v92 = a3;
  v23 = *(a3 + 64);
  v78 = a3 + 64;
  v24 = 1 << *(a3 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v77 = (v24 + 63) >> 6;
  v83 = v20 + 16;
  v82 = (v20 + 48);
  v79 = (v20 + 32);
  v85 = v20;
  v93 = (v20 + 8);
  v89 = v6;
  v90 = v9;
  v87 = v13;
  while (v26)
  {
    v30 = __clz(__rbit64(v26));
    v96 = (v26 - 1) & v26;
LABEL_13:
    v33 = v30 | (v22 << 6);
    v34 = v92;
    v35 = *(v85 + 16);
    v37 = v97;
    v36 = v98;
    v35(v97, v92[6] + *(v85 + 72) * v33, v98);
    v38 = v34[7];
    v39 = *(v86 + 72);
    v91 = v33;
    v40 = v38 + v39 * v33;
    v41 = v99;
    sub_1D1B89120(v40, v99, type metadata accessor for StaticAccessory);
    v35(v13, v37, v36);
    v42 = v88;
    sub_1D1B89120(v41, &v13[*(v88 + 48)], type metadata accessor for StaticAccessory);
    v43 = v13;
    v44 = v101;
    sub_1D1741C08(v43, v101, &qword_1EC644B30, &qword_1D1E77280);
    v45 = v44 + *(v42 + 48);
    sub_1D1B89120(v45, v100, type metadata accessor for StaticAccessory);
    if (qword_1EC642368 != -1)
    {
      swift_once();
    }

    v102 = off_1EC64B8D0;
    v46 = v94;
    v47 = v89;
    sub_1D1741C08(v45 + *(v94 + 88), v89, &qword_1EC642590, qword_1D1E71260);
    v48 = (*v82)(v47, 1, v36);
    v49 = v84;
    v95 = v45;
    if (v48 == 1)
    {
      sub_1D1741A30(v47, &qword_1EC642590, qword_1D1E71260);
      v50 = type metadata accessor for StaticService(0);
      v51 = v90;
      (*(*(v50 - 8) + 56))(v90, 1, 1, v50);
      goto LABEL_23;
    }

    (*v79)(v84, v47, v36);
    v52 = *(v45 + *(v46 + 80));
    if (*(v52 + 16))
    {

      v53 = sub_1D1742188();
      if (v54)
      {
        v55 = v53;
        v56 = *(v52 + 56);
        v57 = type metadata accessor for StaticService(0);
        v58 = *(v57 - 8);
        v59 = v56 + *(v58 + 72) * v55;
        v51 = v90;
        sub_1D1B89120(v59, v90, type metadata accessor for StaticService);
        (*v93)(v49, v36);

        (*(v58 + 56))(v51, 0, 1, v57);
        goto LABEL_22;
      }
    }

    (*v93)(v49, v36);
    v57 = type metadata accessor for StaticService(0);
    v51 = v90;
    (*(*(v57 - 8) + 56))(v90, 1, 1, v57);
LABEL_22:
    type metadata accessor for StaticService(0);
    if ((*(*(v57 - 8) + 48))(v51, 1, v57) != 1)
    {
      v60 = *(v51 + *(v57 + 104));
      sub_1D1B89188(v51, type metadata accessor for StaticService);
      goto LABEL_25;
    }

LABEL_23:
    sub_1D1741A30(v51, &qword_1EC6436F0, &qword_1D1E99BC0);
    v60 = 0;
LABEL_25:
    if (v102[2])
    {
      v61 = v102;
      sub_1D1E6920C();
      v104 = v60;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v62 = sub_1D1E6926C();
      v63 = v61 + 7;
      v64 = -1 << *(v61 + 32);
      v65 = v62 & ~v64;
      if ((*(v61 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65))
      {
        v66 = ~v64;
        while (1)
        {
          LOBYTE(v103[0]) = *(v102[6] + v65);
          v104 = v60;
          v67 = ServiceKind.rawValue.getter();
          v69 = v68;
          if (v67 == ServiceKind.rawValue.getter() && v69 == v70)
          {
            break;
          }

          v72 = sub_1D1E6904C();

          if (v72)
          {
            goto LABEL_36;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v63 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_36:
        sub_1D1B89188(v100, type metadata accessor for StaticAccessory);
        v13 = v87;
        sub_1D1741A30(v87, &qword_1EC644B30, &qword_1D1E77280);
        sub_1D1B89188(v95, type metadata accessor for StaticAccessory);
        v73 = *v93;
        v74 = v98;
        (*v93)(v101, v98);
        sub_1D1B89188(v99, type metadata accessor for StaticAccessory);
        result = (v73)(v97, v74);
        v26 = v96;
        goto LABEL_37;
      }
    }

LABEL_5:
    v27 = *(v100 + *(v94 + 148));
    sub_1D1B89188(v100, type metadata accessor for StaticAccessory);
    v13 = v87;
    sub_1D1741A30(v87, &qword_1EC644B30, &qword_1D1E77280);
    sub_1D1B89188(v95, type metadata accessor for StaticAccessory);
    v28 = *v93;
    v29 = v98;
    (*v93)(v101, v98);
    sub_1D1B89188(v99, type metadata accessor for StaticAccessory);
    result = (v28)(v97, v29);
    v26 = v96;
    if (v27)
    {
LABEL_37:
      *(v80 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v91;
      if (__OFADD__(v81++, 1))
      {
        goto LABEL_42;
      }
    }
  }

  v31 = v22;
  while (1)
  {
    v22 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v22 >= v77)
    {
      return sub_1D188CC38(v80, v76[0], v81, v92);
    }

    v32 = *(v78 + 8 * v22);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v96 = (v32 - 1) & v32;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D1B85374(unint64_t *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v58 = a2;
  v65 = a4;
  v59 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v57 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v7 = MEMORY[0x1EEE9AC00](v73);
  v76 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v57 - v9;
  v10 = type metadata accessor for StaticAccessory(0);
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v72);
  v71 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v15 = 0;
  v69 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v62 = v13 + 16;
  v63 = v13;
  v66 = (v13 + 8);
  v67 = v22;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v70 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = v69;
    v28 = *(v63 + 16);
    v30 = v71;
    v29 = v72;
    v28(v71, v69[6] + *(v63 + 72) * v26, v72);
    v31 = v27[7];
    v32 = *(v64 + 72);
    v61 = v26;
    v33 = v74;
    sub_1D1B89120(v31 + v32 * v26, v74, type metadata accessor for StaticAccessory);
    v34 = v75;
    v28(v75, v30, v29);
    sub_1D1B89120(v33, v34 + *(v73 + 48), type metadata accessor for StaticAccessory);
    sub_1D1741C08(v34, v76, &qword_1EC644B30, &qword_1D1E77280);
    v35 = *v65;
    if (*(*v65 + 16) && (v36 = sub_1D1742188(), (v37 & 1) != 0))
    {
      v38 = v36;
      v39 = *(v35 + 56);
      v40 = type metadata accessor for StaticMatterDevice(0);
      v41 = *(v40 - 8);
      v42 = v39 + *(v41 + 72) * v38;
      v43 = v68;
      sub_1D1B89120(v42, v68, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v75, &qword_1EC644B30, &qword_1D1E77280);
      (*(v41 + 56))(v43, 0, 1, v40);
      v44 = v76;
      v45 = *(v73 + 48);
      sub_1D1741A30(v43, &qword_1EC643650, &qword_1D1E71D40);
      sub_1D1B89188(v44 + v45, type metadata accessor for StaticAccessory);
      v46 = *v66;
      v47 = v44;
      v48 = v72;
      (*v66)(v47, v72);
      sub_1D1B89188(v74, type metadata accessor for StaticAccessory);
      result = (v46)(v71, v48);
      v22 = v67;
      v21 = v70;
    }

    else
    {
      sub_1D1741A30(v75, &qword_1EC644B30, &qword_1D1E77280);
      v49 = type metadata accessor for StaticMatterDevice(0);
      v50 = v68;
      (*(*(v49 - 8) + 56))(v68, 1, 1, v49);
      v51 = *(v73 + 48);
      sub_1D1741A30(v50, &qword_1EC643650, &qword_1D1E71D40);
      v52 = v76;
      sub_1D1B89188(v76 + v51, type metadata accessor for StaticAccessory);
      v53 = *v66;
      v54 = v52;
      v55 = v72;
      (*v66)(v54, v72);
      sub_1D1B89188(v74, type metadata accessor for StaticAccessory);
      result = (v53)(v71, v55);
      *(v59 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v56 = __OFADD__(v60++, 1);
      v22 = v67;
      v21 = v70;
      if (v56)
      {
        __break(1u);
        return sub_1D188CC38(v59, v58, v60, v69);
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1D188CC38(v59, v58, v60, v69);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v70 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B85974(unint64_t *a1, uint64_t a2, void *a3)
{
  v30 = a2;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v4 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = (&v29 - v6);
  v7 = type metadata accessor for StaticMatterDevice(0);
  v32 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0;
  v37 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v38 = v10;
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = *(v37[6] + 8 * v22);
    v24 = v31;
    sub_1D1B89120(v37[7] + *(v32 + 72) * v22, v31, type metadata accessor for StaticMatterDevice);
    v25 = v33;
    *v33 = v23;
    v26 = v35;
    sub_1D1B89120(v24, v25 + *(v35 + 48), type metadata accessor for StaticMatterDevice);
    v27 = v25;
    v28 = v34;
    sub_1D1741A90(v27, v34, &qword_1EC645428, &qword_1D1E96C40);
    sub_1D1B89188(v28 + *(v26 + 48), type metadata accessor for StaticMatterDevice);
    result = sub_1D1B89188(v24, type metadata accessor for StaticMatterDevice);
    *(v36 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v10 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      return sub_1D188D804(v36, v30, v10, v37);
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_1D188D804(v36, v30, v10, v37);
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v38 = v10;
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B85C30(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1D1B85CD4(void *result, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D1B85374(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D1B85D5C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

uint64_t _s13HomeDataModel19StaticCameraProfileV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraRecordingEventManager(0);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v71 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA20, &qword_1D1E9B630);
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v71 - v8;
  v9 = type metadata accessor for StaticCameraStreamControl(0);
  v83 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v82 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA28, &qword_1D1E9B638);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v16 = type metadata accessor for StaticCameraSnapshotControl(0);
  v84 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA30, &unk_1D1E9B640);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - v23;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_37;
  }

  v74 = v9;
  v25 = type metadata accessor for StaticCameraProfile(0);
  v26 = v25[5];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((sub_1D17A6E98(*(a1 + v25[6]), *(a2 + v25[6])) & 1) == 0)
  {
    goto LABEL_37;
  }

  v30 = v25[7];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  v35 = v25;
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_37;
    }

    if (*v31 != *v33 || (v36 = v15, v32 != v34))
    {
      v37 = v35;
      v38 = sub_1D1E6904C();
      v35 = v37;
      v36 = v15;
      if ((v38 & 1) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v36 = v15;
    if (v34)
    {
      goto LABEL_37;
    }
  }

  v39 = v35;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_37;
  }

  if ((sub_1D17A6E98(*(a1 + v39[9]), *(a2 + v39[9])) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (*(a1 + v39[10]) != *(a2 + v39[10]))
  {
    goto LABEL_37;
  }

  v40 = v39;
  if (*(a1 + v39[11]) != *(a2 + v39[11]))
  {
    goto LABEL_37;
  }

  v72 = v39;
  v41 = v39[12];
  v42 = *(v22 + 48);
  v43 = v40[12];
  sub_1D1741C08(a1 + v41, v24, &qword_1EC64B8D8, &qword_1D1E9B030);
  v73 = v42;
  sub_1D1741C08(a2 + v43, &v24[v42], &qword_1EC64B8D8, &qword_1D1E9B030);
  v44 = *(v84 + 48);
  if (v44(v24, 1, v16) == 1)
  {
    if (v44(&v24[v73], 1, v16) == 1)
    {
      sub_1D1741A30(v24, &qword_1EC64B8D8, &qword_1D1E9B030);
      goto LABEL_24;
    }

LABEL_22:
    v45 = &qword_1EC64BA30;
    v46 = &unk_1D1E9B640;
    v47 = v24;
LABEL_36:
    sub_1D1741A30(v47, v45, v46);
    goto LABEL_37;
  }

  sub_1D1741C08(v24, v21, &qword_1EC64B8D8, &qword_1D1E9B030);
  if (v44(&v24[v73], 1, v16) == 1)
  {
    sub_1D1B89188(v21, type metadata accessor for StaticCameraSnapshotControl);
    goto LABEL_22;
  }

  sub_1D1B89F40(&v24[v73], v18, type metadata accessor for StaticCameraSnapshotControl);
  v48 = _s13HomeDataModel27StaticCameraSnapshotControlV2eeoiySbAC_ACtFZ_0(v21, v18);
  sub_1D1B89188(v18, type metadata accessor for StaticCameraSnapshotControl);
  sub_1D1B89188(v21, type metadata accessor for StaticCameraSnapshotControl);
  sub_1D1741A30(v24, &qword_1EC64B8D8, &qword_1D1E9B030);
  if (!v48)
  {
    goto LABEL_37;
  }

LABEL_24:
  v49 = v72[13];
  v50 = *(v13 + 48);
  sub_1D1741C08(a1 + v49, v36, &qword_1EC64B8E0, &qword_1D1E9B038);
  sub_1D1741C08(a2 + v49, v36 + v50, &qword_1EC64B8E0, &qword_1D1E9B038);
  v51 = *(v83 + 48);
  v52 = v74;
  if (v51(v36, 1, v74) != 1)
  {
    v60 = v82;
    sub_1D1741C08(v36, v82, &qword_1EC64B8E0, &qword_1D1E9B038);
    if (v51(v36 + v50, 1, v52) != 1)
    {
      v63 = v81;
      sub_1D1B89F40(v36 + v50, v81, type metadata accessor for StaticCameraStreamControl);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v64 = *(v74 + 20);
        v65 = *(v60 + v64);
        v66 = *(v63 + v64);
        sub_1D1B89188(v63, type metadata accessor for StaticCameraStreamControl);
        sub_1D1B89188(v60, type metadata accessor for StaticCameraStreamControl);
        sub_1D1741A30(v36, &qword_1EC64B8E0, &qword_1D1E9B038);
        if (v65 != v66)
        {
          goto LABEL_37;
        }

        goto LABEL_27;
      }

      sub_1D1B89188(v63, type metadata accessor for StaticCameraStreamControl);
      sub_1D1B89188(v60, type metadata accessor for StaticCameraStreamControl);
      v45 = &qword_1EC64B8E0;
      v46 = &qword_1D1E9B038;
      goto LABEL_35;
    }

    sub_1D1B89188(v60, type metadata accessor for StaticCameraStreamControl);
LABEL_34:
    v45 = &qword_1EC64BA28;
    v46 = &qword_1D1E9B638;
LABEL_35:
    v47 = v36;
    goto LABEL_36;
  }

  if (v51(v36 + v50, 1, v52) != 1)
  {
    goto LABEL_34;
  }

  sub_1D1741A30(v36, &qword_1EC64B8E0, &qword_1D1E9B038);
LABEL_27:
  if (*(a1 + v72[14]) != *(a2 + v72[14]) || *(a1 + v72[15]) != *(a2 + v72[15]))
  {
    goto LABEL_37;
  }

  v53 = v72[16];
  v54 = *(v77 + 48);
  v55 = v80;
  sub_1D1741C08(a1 + v53, v80, &qword_1EC64B8E8, &qword_1D1E9B040);
  v56 = a2 + v53;
  v57 = v55;
  sub_1D1741C08(v56, v55 + v54, &qword_1EC64B8E8, &qword_1D1E9B040);
  v58 = v79;
  v59 = *(v78 + 48);
  if (v59(v55, 1, v79) == 1)
  {
    if (v59(v55 + v54, 1, v58) == 1)
    {
      sub_1D1741A30(v55, &qword_1EC64B8E8, &qword_1D1E9B040);
LABEL_47:
      v61 = *(a1 + v72[17]) ^ *(a2 + v72[17]) ^ 1;
      return v61 & 1;
    }

    goto LABEL_45;
  }

  v67 = v76;
  sub_1D1741C08(v57, v76, &qword_1EC64B8E8, &qword_1D1E9B040);
  if (v59(v57 + v54, 1, v58) == 1)
  {
    sub_1D1B89188(v67, type metadata accessor for StaticCameraRecordingEventManager);
LABEL_45:
    v45 = &qword_1EC64BA20;
    v46 = &qword_1D1E9B630;
    v47 = v57;
    goto LABEL_36;
  }

  v68 = v57 + v54;
  v69 = v75;
  sub_1D1B89F40(v68, v75, type metadata accessor for StaticCameraRecordingEventManager);
  v70 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  sub_1D1B89188(v69, type metadata accessor for StaticCameraRecordingEventManager);
  sub_1D1B89188(v67, type metadata accessor for StaticCameraRecordingEventManager);
  sub_1D1741A30(v57, &qword_1EC64B8E8, &qword_1D1E9B040);
  if (v70)
  {
    goto LABEL_47;
  }

LABEL_37:
  v61 = 0;
  return v61 & 1;
}

unint64_t sub_1D1B8682C()
{
  result = qword_1EC64B8F8;
  if (!qword_1EC64B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B8F8);
  }

  return result;
}

unint64_t sub_1D1B86880()
{
  result = qword_1EC64B900;
  if (!qword_1EC64B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B900);
  }

  return result;
}

uint64_t sub_1D1B868D4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1B891E8(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B86970()
{
  result = qword_1EC64B928;
  if (!qword_1EC64B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B928);
  }

  return result;
}

uint64_t _s13HomeDataModel19StaticCameraProfileV06NearbyD5ItemsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1D1848AD4(*a1, *a2) & 1) == 0 || (sub_1D18490AC(v2, v5) & 1) == 0 || (sub_1D1849684(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1D1849C5C(v3, v6);
}

unint64_t sub_1D1B86A60()
{
  result = qword_1EC64B950;
  if (!qword_1EC64B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B950);
  }

  return result;
}

unint64_t sub_1D1B86AB4()
{
  result = qword_1EC64B960;
  if (!qword_1EC64B960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1B891E8(&qword_1EC644708, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B960);
  }

  return result;
}

unint64_t sub_1D1B86BA0()
{
  result = qword_1EC64B970;
  if (!qword_1EC64B970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1B891E8(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B970);
  }

  return result;
}

unint64_t sub_1D1B86C8C()
{
  result = qword_1EC64B980;
  if (!qword_1EC64B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B978, &qword_1D1EA2E10);
    sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1B891E8(&qword_1EC649210, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B980);
  }

  return result;
}

unint64_t sub_1D1B86D78()
{
  result = qword_1EC64B990;
  if (!qword_1EC64B990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1B891E8(&qword_1EC644758, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B990);
  }

  return result;
}

unint64_t sub_1D1B86E64()
{
  result = qword_1EC64B998;
  if (!qword_1EC64B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1B891E8(&qword_1EC644748, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B998);
  }

  return result;
}

unint64_t sub_1D1B86F50()
{
  result = qword_1EC64B9A0;
  if (!qword_1EC64B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B978, &qword_1D1EA2E10);
    sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1B891E8(&qword_1EC649240, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9A0);
  }

  return result;
}

uint64_t sub_1D1B8703C(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticCameraProfile(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643798, &qword_1D1E71EF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1741C08(v15, v41, &qword_1EC643798, &qword_1D1E71EF0);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1B89F40(v17 + v39, v7, type metadata accessor for StaticCameraProfile);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1734FB0();
        }
      }

      else
      {
        sub_1D17223B4(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1B89FA8(v20, v16, type metadata accessor for StaticCameraProfile);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1B89F40(v20, v31, type metadata accessor for StaticCameraProfile);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}