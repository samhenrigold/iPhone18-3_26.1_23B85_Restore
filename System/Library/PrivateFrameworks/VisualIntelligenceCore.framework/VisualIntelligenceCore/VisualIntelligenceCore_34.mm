uint64_t sub_1D8A8B034()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_1D8A8B264;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1D8A8B178;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8A8B178()
{
  v1 = v0[8];
  (*(v0[28] + 8))(v0[29], v0[27]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D8A8B264()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_1D8A8B370(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_1D8B13B50();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v75);
  v76 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1D8B13240();
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v79 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v82 = &v64 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v64 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v64 - v16;
  v17 = type metadata accessor for DetectionRequest.Annotation(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v64 - v22;
  v80 = type metadata accessor for DetectionRequest(0);
  v81 = a1;
  v24 = *(a1 + *(v80 + 24));
  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 56);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v29;
    if (!v27)
    {
      break;
    }

LABEL_8:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    sub_1D8A92F54(*(v24 + 48) + *(v18 + 72) * (v31 | (v29 << 6)), v23, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8A91FE8(v23, v21, type metadata accessor for DetectionRequest.Annotation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D881F6FC(v21, v72, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D881F6FC(v72, v71, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D881F6FC(v71, v70, &qword_1ECA67750, &unk_1D8B1E0C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1D87C8C58(0, v84[2] + 1, 1, v84);
      }

      v33 = v84[2];
      v32 = v84[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v66 = v33 + 1;
        v65 = v33;
        v36 = sub_1D87C8C58((v32 > 1), v33 + 1, 1, v84);
        v34 = v66;
        v33 = v65;
        v84 = v36;
      }

      v35 = v84;
      v84[2] = v34;
      sub_1D881F6FC(v70, v35 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v33, &qword_1ECA67750, &unk_1D8B1E0C0);
    }

    else
    {
      sub_1D8A93010(v21, type metadata accessor for DetectionRequest.Annotation);
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 56 + 8 * v29);
    ++v30;
    if (v27)
    {
      goto LABEL_8;
    }
  }

  if (v84[2] != 1)
  {

LABEL_32:
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
    (*(*(v56 - 8) + 56))(v83, 1, 1, v56);
    return;
  }

  v37 = v74;
  sub_1D87A0E38(v84 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v74, &qword_1ECA67750, &unk_1D8B1E0C0);

  v38 = v37;
  v39 = v82;
  sub_1D881F6FC(v38, v82, &qword_1ECA67750, &unk_1D8B1E0C0);
  v40 = v76;
  sub_1D8A92F54(v81 + *(v80 + 20), v76, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D87A14E4(v39, &qword_1ECA67750, &unk_1D8B1E0C0);
    sub_1D8A93010(v40, type metadata accessor for DetectionRequest.Originator);
    goto LABEL_32;
  }

  v41 = *(v73 + 32);
  v79 = v73 + 32;
  v76 = v41;
  (v41)(v77, v40, v78);
  v42 = sub_1D88F8978();
  v43 = v42[2];
  v84 = v42;
  if (v43)
  {
    v44 = v42 + 9;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v44 - 4) == 28)
      {
        v47 = *v44;
        v85 = 28;
        v48 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v50 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D87C8284(0, *(v46 + 2) + 1, 1, v46);
        }

        v52 = *(v46 + 2);
        v51 = *(v46 + 3);
        if (v52 >= v51 >> 1)
        {
          v46 = sub_1D87C8284((v51 > 1), v52 + 1, 1, v46);
        }

        *(v46 + 2) = v52 + 1;
        v53 = &v46[16 * v52];
        *(v53 + 4) = v48;
        *(v53 + 5) = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D87C892C(0, *(v45 + 2) + 1, 1, v45);
        }

        v55 = *(v45 + 2);
        v54 = *(v45 + 3);
        if (v55 >= v54 >> 1)
        {
          v45 = sub_1D87C892C((v54 > 1), v55 + 1, 1, v45);
        }

        *(v45 + 2) = v55 + 1;
        *&v45[4 * v55 + 32] = v47;
      }

      v44 += 2;
      --v43;
    }

    while (v43);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v57 = *(v46 + 2);

  if (v57)
  {
    v58 = v67;
    sub_1D8B13B30();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
    v60 = *(v59 + 48);
    v61 = *(v59 + 64);
    v62 = v83;
    (v76)(v83, v77, v78);
    (*(v68 + 32))(v62 + v60, v58, v69);
    sub_1D881F6FC(v82, v62 + v61, &qword_1ECA67750, &unk_1D8B1E0C0);
    (*(*(v59 - 8) + 56))(v62, 0, 1, v59);
  }

  else
  {
    (*(v73 + 8))(v77, v78);
    sub_1D87A14E4(v82, &qword_1ECA67750, &unk_1D8B1E0C0);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
  }
}

void sub_1D8A8BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a5;
  v27 = a6;
  v28 = a4;
  v32 = a3;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68898, &qword_1D8B3AF48);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v31 = a2;
  if (*(a2 + 112))
  {
    (*(v14 + 16))(v17, a1, v13);
    v18 = *(v11 + 16);
    v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18(v26, v27, a7);
    v19 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v20 = (v15 + *(v11 + 80) + v19) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v22 = v29;
    *(v21 + 2) = a7;
    *(v21 + 3) = v22;
    v29 = a7;
    v23 = v31;
    *(v21 + 4) = v30;
    *(v21 + 5) = v23;
    (*(v14 + 32))(&v21[v19], v17, v13);
    (*(v11 + 32))(&v21[v20], v26, v29);

    v24 = sub_1D8B13950();
  }
}

uint64_t sub_1D8A8BF54(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688A0, &unk_1D8B3AF50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - v13;
  v42 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v37 = *(v42 - 8);
  v15 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v35 - v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68888, &qword_1D8B3AF38);
  MEMORY[0x1EEE9AC00](v40);
  v19 = (&v35 - v18);
  if (a2)
  {
    v46 = a1;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68898, &qword_1D8B3AF48);
    return sub_1D8B15E10();
  }

  else
  {
    v22 = a1[2];
    if (v22 == *(a3 + 16))
    {
      v35 = a5;
      if (v22)
      {
        v38 = a3;
        v39 = a1;
        v23 = 0;
        v24 = (v37 + 48);
        v25 = MEMORY[0x1E69E7CC0];
        do
        {
          v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840) - 8);
          v27 = v38 + ((*(*v26 + 80) + 32) & ~*(*v26 + 80)) + *(*v26 + 72) * v23;
          v28 = v19 + *(v40 + 48);
          *v19 = v23;
          sub_1D87A0E38(v27, v28, &qword_1ECA63280, &qword_1D8B1E840);
          sub_1D8A8C430(v23, v28, v28 + v26[14], (v28 + v26[18]), v39, v43, v44, v45, v14);
          sub_1D87A14E4(v19, &qword_1ECA68888, &qword_1D8B3AF38);
          if ((*v24)(v14, 1, v42) == 1)
          {
            sub_1D87A14E4(v14, &qword_1ECA688A0, &unk_1D8B3AF50);
          }

          else
          {
            v29 = v36;
            sub_1D8A91FE8(v14, v36, type metadata accessor for GroundedParseEmbeddingsResult);
            sub_1D8A91FE8(v29, v41, type metadata accessor for GroundedParseEmbeddingsResult);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D87C9F6C(0, v25[2] + 1, 1, v25);
            }

            v31 = v25[2];
            v30 = v25[3];
            if (v31 >= v30 >> 1)
            {
              v25 = sub_1D87C9F6C((v30 > 1), v31 + 1, 1, v25);
            }

            v25[2] = v31 + 1;
            sub_1D8A91FE8(v41, v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, type metadata accessor for GroundedParseEmbeddingsResult);
          }

          ++v23;
        }

        while (v22 != v23);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

      v46 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68898, &qword_1D8B3AF48);
    }

    else
    {
      v32 = sub_1D8B151C0();
      v33 = sub_1D8B16210();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D8783000, v32, v33, "Mismatch between number of bounding boxes and number of image regions returned", v34, 2u);
        MEMORY[0x1DA721330](v34, -1, -1);
      }

      v46 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68898, &qword_1D8B3AF48);
    }

    return sub_1D8B15E20();
  }
}

uint64_t sub_1D8A8C430@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v104 = a8;
  v102 = a7;
  v103 = a6;
  v114 = a5;
  v121 = a4;
  v113 = a9;
  v109 = type metadata accessor for DetectionRequest.Originator(0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v110 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v106 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v105 = v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v118 = v94 - v19;
  v120 = sub_1D8B13830();
  v20 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v101 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v117 = v94 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v116 = v94 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v94 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = v94 - v32;
  v34 = sub_1D8B13240();
  v35 = *(v34 - 8);
  v36 = a2;
  v37 = v34;
  (*(v35 + 16))(v33, v36, v34);
  v38 = *(v22 + 48);
  v39 = sub_1D8B13B50();
  v40 = *(v39 - 8);
  v41 = &v33[v38];
  v42 = v39;
  (*(v40 + 16))(v41, a3, v39);
  v43 = v22;
  sub_1D87A0E38(v121, &v33[*(v22 + 64)], &qword_1ECA67750, &unk_1D8B1E0C0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v114 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v44 = v114 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * a1;
  v45 = v35;
  v46 = *(v20 + 16);
  v94[1] = v20 + 16;
  v95 = v46;
  v121 = v33;
  v46(v119, v44, v120);
  sub_1D87A0E38(v121, v31, &qword_1ECA63280, &qword_1D8B1E840);
  v47 = v22;
  v48 = *(v22 + 48);
  v115 = v37;
  v49 = *(v43 + 64);
  sub_1D8B13B40();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = *(v40 + 8);
  v114 = v42;
  v100 = v40 + 8;
  v99 = v58;
  v58(&v31[v48], v42);
  sub_1D87A14E4(&v31[v49], &qword_1ECA67750, &unk_1D8B1E0C0);
  v59 = *(v45 + 8);
  v98 = v45 + 8;
  v97 = v59;
  v59(v31, v37);
  sub_1D87A0E38(v121, v116, &qword_1ECA63280, &qword_1D8B1E840);
  v60 = v117;
  sub_1D87A0E38(v121, v117, &qword_1ECA63280, &qword_1D8B1E840);
  v96 = v47;
  v61 = v60 + *(v47 + 64);
  v62 = *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0) + 36));
  sub_1D87A14E4(v61, &qword_1ECA67750, &unk_1D8B1E0C0);
  type metadata accessor for CVCoordinator(0);
  memset(v123, 0, sizeof(v123));
  v124 = 1;
  v63 = v102;
  v64 = v104;
  sub_1D8A30194(v123, v104, v125, v51, 1.0 - v53 - v57, v55, v57);
  CameraSourceFrame.rotationAngle.getter(v64, &v122);
  v65 = v122;
  v66 = CameraSourceFrame.timestamp.getter(v63, v64);
  v67 = v118;
  v68 = v120;
  v95(v118, v119, v120);
  v103 = v20;
  v69 = v121;
  (*(v20 + 56))(v67, 0, 1, v68);
  v70 = v101;
  sub_1D87A0E38(v69, v101, &qword_1ECA63280, &qword_1D8B1E840);
  v71 = *(v45 + 32);
  v72 = v105;
  v104 = v45 + 32;
  v71(v105, v70, v115);
  v73 = v109;
  swift_storeEnumTagMultiPayload();
  v74 = v108;
  (*(v108 + 56))(v72, 0, 1, v73);
  v75 = v112;
  v76 = v106;
  v77 = &v106[*(v112 + 28)];
  *v77 = 0x6E69646465626D65;
  *(v77 + 1) = 0xEA00000000007367;
  v40 = v107;
  sub_1D87A0E38(v72, v107, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v74 + 48))(v40, 1, v73) != 1)
  {
    v109 = *(v96 + 48);
    v78 = *(v96 + 64);
    sub_1D87A14E4(v72, &qword_1ECA68598, &qword_1D8B3E590);
    (*(v103 + 8))(v119, v120);
    sub_1D87A14E4(v69, &qword_1ECA63280, &qword_1D8B1E840);
    v79 = v40;
    v80 = v110;
    sub_1D8A91FE8(v79, v110, type metadata accessor for DetectionRequest.Originator);
    v81 = v116;
    v82 = v115;
    v71(v76, v116, v115);
    *(v76 + v75[5]) = v62;
    v83 = (v76 + v75[6]);
    v84 = v125[1];
    *v83 = v125[0];
    v83[1] = v84;
    v85 = v125[3];
    v83[2] = v125[2];
    v83[3] = v85;
    *(v76 + v75[8]) = v65;
    *(v76 + v75[9]) = v66;
    sub_1D881F6FC(v118, v76 + v75[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    sub_1D8A91FE8(v80, v76 + v75[11], type metadata accessor for DetectionRequest.Originator);
    v86 = v113;
    sub_1D8A91FE8(v76, v113, type metadata accessor for GroundedParseEmbeddingsResult);
    v87 = v78;
    sub_1D87A14E4(v70 + v78, &qword_1ECA67750, &unk_1D8B1E0C0);
    v88 = v109;
    v89 = v70 + v109;
    v90 = v114;
    v91 = v99;
    v99(v89, v114);
    v92 = v117;
    v91(v117 + v88, v90);
    v97(v92, v82);
    sub_1D87A14E4(v81 + v87, &qword_1ECA67750, &unk_1D8B1E0C0);
    v91(v81 + v88, v90);
    return (*(v111 + 56))(v86, 0, 1, v75);
  }

LABEL_7:
  sub_1D87A14E4(v40, &qword_1ECA68598, &qword_1D8B3E590);
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D8A8CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_1D8B13B50();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68868, &unk_1D8B3AF10);
  v6[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = *(type metadata accessor for DetectionRequest(0) - 8);
  v6[26] = swift_task_alloc();
  v9 = sub_1D8B13AF0();
  v6[27] = v9;
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A8D1A0, v5, 0);
}

uint64_t sub_1D8A8D1A0()
{
  *(v0 + 56) = *(v0 + 72);
  *(v0 + 16) = 0u;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67590, &qword_1D8B33AE0);
  v6 = sub_1D881CF20(&unk_1EE0E39C0, &qword_1ECA67590, &qword_1D8B33AE0, MEMORY[0x1E69E6340]);
  v7 = sub_1D8A31004(v4, v0 + 16, v5, v2, v6, v1);
  v8 = v3;
  v9 = sub_1D8B13AE0();
  v17 = *(v7 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = 0;
    v60 = *(v0 + 160);
    v20 = (v60 + 48);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = *(v0 + 200);
    while (v19 < *(v7 + 16))
    {
      v23 = v21;
      v24 = *(v0 + 208);
      v25 = *(v0 + 144);
      sub_1D8A92F54(v7 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v24, type metadata accessor for DetectionRequest);
      sub_1D8A8D9C0(v24, v25);
      v27 = *(v0 + 144);
      v26 = *(v0 + 152);
      sub_1D8A93010(*(v0 + 208), type metadata accessor for DetectionRequest);
      if ((*v20)(v27, 1, v26) == 1)
      {
        v9 = sub_1D87A14E4(*(v0 + 144), &qword_1ECA68868, &unk_1D8B3AF10);
        v21 = v23;
      }

      else
      {
        v29 = *(v0 + 184);
        v28 = *(v0 + 192);
        sub_1D881F6FC(*(v0 + 144), v28, &qword_1ECA63280, &qword_1D8B1E840);
        sub_1D881F6FC(v28, v29, &qword_1ECA63280, &qword_1D8B1E840);
        v21 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D87C9C94(0, v23[2] + 1, 1, v23);
        }

        v31 = v21[2];
        v30 = v21[3];
        if (v31 >= v30 >> 1)
        {
          v21 = sub_1D87C9C94((v30 > 1), v31 + 1, 1, v21);
        }

        v32 = *(v0 + 184);
        v21[2] = v31 + 1;
        v9 = sub_1D881F6FC(v32, v21 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v31, &qword_1ECA63280, &qword_1D8B1E840);
        v20 = (v60 + 48);
      }

      if (v17 == ++v19)
      {
        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_14:
  *(v0 + 240) = v21;

  v61 = v21[2];
  if (v61)
  {
    v33 = *(v0 + 160);
    v59 = *(v0 + 152);
    v34 = *(v0 + 128);
    sub_1D87F4D20(0, v61, 0);
    v35 = v21 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v36 = (v34 + 32);
    v57 = v21;
    v58 = *(v33 + 72);
    do
    {
      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v39 = *(v0 + 136);
      v40 = *(v0 + 120);
      sub_1D87A0E38(v35, v37, &qword_1ECA63280, &qword_1D8B1E840);
      sub_1D881F6FC(v37, v38, &qword_1ECA63280, &qword_1D8B1E840);
      v41 = *(v59 + 64);
      v42 = *v36;
      (*v36)(v39, v38 + *(v59 + 48), v40);
      sub_1D87A14E4(v38 + v41, &qword_1ECA67750, &unk_1D8B1E0C0);
      v43 = sub_1D8B13240();
      (*(*(v43 - 8) + 8))(v38, v43);
      v45 = *(v18 + 16);
      v44 = *(v18 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D87F4D20((v44 > 1), v45 + 1, 1);
      }

      *(v0 + 272) = v18;
      v46 = *(v0 + 136);
      v47 = *(v0 + 120);
      *(v18 + 16) = v45 + 1;
      v42(v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v45, v46, v47);
      v35 += v58;
      --v61;
    }

    while (v61);
    v48 = *(v0 + 232);
    v49 = *(v0 + 112);
    v50 = *(v0 + 80);
    v51 = sub_1D8A92E28(&qword_1EE0E9818, type metadata accessor for StreamingVisualIntelligenceProcessor, &unk_1D8B3AB80);
    v52 = swift_task_alloc();
    *(v0 + 248) = v52;
    *(v52 + 16) = *(v0 + 96);
    *(v52 + 32) = v49;
    *(v52 + 40) = v48;
    *(v52 + 48) = v18;
    *(v52 + 56) = v57;
    *(v52 + 64) = v50;
    v53 = swift_task_alloc();
    *(v0 + 256) = v53;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68870, &qword_1D8B3AF20);
    *v53 = v0;
    v53[1] = sub_1D8A8D87C;
    v14 = sub_1D8A968D0;
    v9 = v0 + 64;
    v13 = 0x80000001D8B48460;
    v10 = v49;
    v11 = v51;
    v12 = 0xD00000000000003BLL;
    v15 = v52;

    return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  v54 = *(v0 + 8);
  v55 = MEMORY[0x1E69E7CC0];

  return v54(v55);
}

uint64_t sub_1D8A8D87C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_1D8A974B0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1D8A974E8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1D8A8D9C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_1D8B13B50();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v75);
  v76 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_1D8B13240();
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v79 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v82 = &v64 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v64 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v64 - v16;
  v17 = type metadata accessor for DetectionRequest.Annotation(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v64 - v22;
  v80 = type metadata accessor for DetectionRequest(0);
  v81 = a1;
  v24 = *(a1 + *(v80 + 24));
  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 56);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v30 = v29;
    if (!v27)
    {
      break;
    }

LABEL_8:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    sub_1D8A92F54(*(v24 + 48) + *(v18 + 72) * (v31 | (v29 << 6)), v23, type metadata accessor for DetectionRequest.Annotation);
    sub_1D8A91FE8(v23, v21, type metadata accessor for DetectionRequest.Annotation);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D881F6FC(v21, v72, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D881F6FC(v72, v71, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D881F6FC(v71, v70, &qword_1ECA67750, &unk_1D8B1E0C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1D87C8C58(0, v84[2] + 1, 1, v84);
      }

      v33 = v84[2];
      v32 = v84[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v66 = v33 + 1;
        v65 = v33;
        v36 = sub_1D87C8C58((v32 > 1), v33 + 1, 1, v84);
        v34 = v66;
        v33 = v65;
        v84 = v36;
      }

      v35 = v84;
      v84[2] = v34;
      sub_1D881F6FC(v70, v35 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v33, &qword_1ECA67750, &unk_1D8B1E0C0);
    }

    else
    {
      sub_1D8A93010(v21, type metadata accessor for DetectionRequest.Annotation);
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 56 + 8 * v29);
    ++v30;
    if (v27)
    {
      goto LABEL_8;
    }
  }

  if (v84[2] != 1)
  {

LABEL_32:
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
    (*(*(v56 - 8) + 56))(v83, 1, 1, v56);
    return;
  }

  v37 = v74;
  sub_1D87A0E38(v84 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v74, &qword_1ECA67750, &unk_1D8B1E0C0);

  v38 = v37;
  v39 = v82;
  sub_1D881F6FC(v38, v82, &qword_1ECA67750, &unk_1D8B1E0C0);
  v40 = v76;
  sub_1D8A92F54(v81 + *(v80 + 20), v76, type metadata accessor for DetectionRequest.Originator);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D87A14E4(v39, &qword_1ECA67750, &unk_1D8B1E0C0);
    sub_1D8A93010(v40, type metadata accessor for DetectionRequest.Originator);
    goto LABEL_32;
  }

  v41 = *(v73 + 32);
  v79 = v73 + 32;
  v76 = v41;
  (v41)(v77, v40, v78);
  v42 = sub_1D88F8978();
  v43 = v42[2];
  v84 = v42;
  if (v43)
  {
    v44 = v42 + 9;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v44 - 4) == 156)
      {
        v47 = *v44;
        v85 = -100;
        v48 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v50 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D87C8284(0, *(v46 + 2) + 1, 1, v46);
        }

        v52 = *(v46 + 2);
        v51 = *(v46 + 3);
        if (v52 >= v51 >> 1)
        {
          v46 = sub_1D87C8284((v51 > 1), v52 + 1, 1, v46);
        }

        *(v46 + 2) = v52 + 1;
        v53 = &v46[16 * v52];
        *(v53 + 4) = v48;
        *(v53 + 5) = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D87C892C(0, *(v45 + 2) + 1, 1, v45);
        }

        v55 = *(v45 + 2);
        v54 = *(v45 + 3);
        if (v55 >= v54 >> 1)
        {
          v45 = sub_1D87C892C((v54 > 1), v55 + 1, 1, v45);
        }

        *(v45 + 2) = v55 + 1;
        *&v45[4 * v55 + 32] = v47;
      }

      v44 += 2;
      --v43;
    }

    while (v43);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  v57 = *(v46 + 2);

  if (v57)
  {
    v58 = v67;
    sub_1D8B13B30();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
    v60 = *(v59 + 48);
    v61 = *(v59 + 64);
    v62 = v83;
    (v76)(v83, v77, v78);
    (*(v68 + 32))(v62 + v60, v58, v69);
    sub_1D881F6FC(v82, v62 + v61, &qword_1ECA67750, &unk_1D8B1E0C0);
    (*(*(v59 - 8) + 56))(v62, 0, 1, v59);
  }

  else
  {
    (*(v73 + 8))(v77, v78);
    sub_1D87A14E4(v82, &qword_1ECA67750, &unk_1D8B1E0C0);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
  }
}

void sub_1D8A8E328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a5;
  v27 = a6;
  v28 = a4;
  v32 = a3;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68878, &qword_1D8B3AF28);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v31 = a2;
  if (*(a2 + 112))
  {
    (*(v14 + 16))(v17, a1, v13);
    v18 = *(v11 + 16);
    v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18(v26, v27, a7);
    v19 = (*(v14 + 80) + 48) & ~*(v14 + 80);
    v20 = (v15 + *(v11 + 80) + v19) & ~*(v11 + 80);
    v21 = swift_allocObject();
    v22 = v29;
    *(v21 + 2) = a7;
    *(v21 + 3) = v22;
    v29 = a7;
    v23 = v31;
    *(v21 + 4) = v30;
    *(v21 + 5) = v23;
    (*(v14 + 32))(&v21[v19], v17, v13);
    (*(v11 + 32))(&v21[v20], v26, v29);

    v24 = sub_1D8B13940();
  }
}

uint64_t sub_1D8A8E5A4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a7;
  v45 = a8;
  v43 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68880, &qword_1D8B3AF30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - v13;
  v42 = type metadata accessor for GroundedParseClassificationsResult(0);
  v37 = *(v42 - 8);
  v15 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v35 - v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68888, &qword_1D8B3AF38);
  MEMORY[0x1EEE9AC00](v40);
  v19 = (&v35 - v18);
  if (a2)
  {
    v46 = a1;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68878, &qword_1D8B3AF28);
    return sub_1D8B15E10();
  }

  else
  {
    v22 = a1[2];
    if (v22 == *(a3 + 16))
    {
      v35 = a5;
      if (v22)
      {
        v38 = a3;
        v39 = a1;
        v23 = 0;
        v24 = (v37 + 48);
        v25 = MEMORY[0x1E69E7CC0];
        do
        {
          v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840) - 8);
          v27 = v38 + ((*(*v26 + 80) + 32) & ~*(*v26 + 80)) + *(*v26 + 72) * v23;
          v28 = v19 + *(v40 + 48);
          *v19 = v23;
          sub_1D87A0E38(v27, v28, &qword_1ECA63280, &qword_1D8B1E840);
          sub_1D8A8EA80(v23, v28, v28 + v26[14], (v28 + v26[18]), v39, v43, v44, v45, v14);
          sub_1D87A14E4(v19, &qword_1ECA68888, &qword_1D8B3AF38);
          if ((*v24)(v14, 1, v42) == 1)
          {
            sub_1D87A14E4(v14, &qword_1ECA68880, &qword_1D8B3AF30);
          }

          else
          {
            v29 = v36;
            sub_1D8A91FE8(v14, v36, type metadata accessor for GroundedParseClassificationsResult);
            sub_1D8A91FE8(v29, v41, type metadata accessor for GroundedParseClassificationsResult);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D87C9F94(0, v25[2] + 1, 1, v25);
            }

            v31 = v25[2];
            v30 = v25[3];
            if (v31 >= v30 >> 1)
            {
              v25 = sub_1D87C9F94((v30 > 1), v31 + 1, 1, v25);
            }

            v25[2] = v31 + 1;
            sub_1D8A91FE8(v41, v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, type metadata accessor for GroundedParseClassificationsResult);
          }

          ++v23;
        }

        while (v22 != v23);
      }

      else
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

      v46 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68878, &qword_1D8B3AF28);
    }

    else
    {
      v32 = sub_1D8B151C0();
      v33 = sub_1D8B16210();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1D8783000, v32, v33, "Mismatch between number of bounding boxes and number of image regions returned", v34, 2u);
        MEMORY[0x1DA721330](v34, -1, -1);
      }

      v46 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68878, &qword_1D8B3AF28);
    }

    return sub_1D8B15E20();
  }
}

uint64_t sub_1D8A8EA80@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v104 = a8;
  v102 = a7;
  v103 = a6;
  v114 = a5;
  v121 = a4;
  v113 = a9;
  v109 = type metadata accessor for DetectionRequest.Originator(0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v110 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for GroundedParseClassificationsResult(0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v106 = v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v105 = v94 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v118 = v94 - v19;
  v120 = sub_1D8B13830();
  v20 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v101 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v117 = v94 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v116 = v94 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = v94 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = v94 - v32;
  v34 = sub_1D8B13240();
  v35 = *(v34 - 8);
  v36 = a2;
  v37 = v34;
  (*(v35 + 16))(v33, v36, v34);
  v38 = *(v22 + 48);
  v39 = sub_1D8B13B50();
  v40 = *(v39 - 8);
  v41 = &v33[v38];
  v42 = v39;
  (*(v40 + 16))(v41, a3, v39);
  v43 = v22;
  sub_1D87A0E38(v121, &v33[*(v22 + 64)], &qword_1ECA67750, &unk_1D8B1E0C0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v114 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v44 = v114 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * a1;
  v45 = v35;
  v46 = *(v20 + 16);
  v94[1] = v20 + 16;
  v95 = v46;
  v121 = v33;
  v46(v119, v44, v120);
  sub_1D87A0E38(v121, v31, &qword_1ECA63280, &qword_1D8B1E840);
  v47 = v22;
  v48 = *(v22 + 48);
  v115 = v37;
  v49 = *(v43 + 64);
  sub_1D8B13B40();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = *(v40 + 8);
  v114 = v42;
  v100 = v40 + 8;
  v99 = v58;
  v58(&v31[v48], v42);
  sub_1D87A14E4(&v31[v49], &qword_1ECA67750, &unk_1D8B1E0C0);
  v59 = *(v45 + 8);
  v98 = v45 + 8;
  v97 = v59;
  v59(v31, v37);
  sub_1D87A0E38(v121, v116, &qword_1ECA63280, &qword_1D8B1E840);
  v60 = v117;
  sub_1D87A0E38(v121, v117, &qword_1ECA63280, &qword_1D8B1E840);
  v96 = v47;
  v61 = v60 + *(v47 + 64);
  v62 = *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0) + 36));
  sub_1D87A14E4(v61, &qword_1ECA67750, &unk_1D8B1E0C0);
  type metadata accessor for CVCoordinator(0);
  memset(v123, 0, sizeof(v123));
  v124 = 1;
  v63 = v102;
  v64 = v104;
  sub_1D8A30194(v123, v104, v125, v51, 1.0 - v53 - v57, v55, v57);
  CameraSourceFrame.rotationAngle.getter(v64, &v122);
  v65 = v122;
  v66 = CameraSourceFrame.timestamp.getter(v63, v64);
  v67 = v118;
  v68 = v120;
  v95(v118, v119, v120);
  v103 = v20;
  v69 = v121;
  (*(v20 + 56))(v67, 0, 1, v68);
  v70 = v101;
  sub_1D87A0E38(v69, v101, &qword_1ECA63280, &qword_1D8B1E840);
  v71 = *(v45 + 32);
  v72 = v105;
  v104 = v45 + 32;
  v71(v105, v70, v115);
  v73 = v109;
  swift_storeEnumTagMultiPayload();
  v74 = v108;
  (*(v108 + 56))(v72, 0, 1, v73);
  v75 = v112;
  v76 = v106;
  v77 = &v106[*(v112 + 28)];
  *v77 = 0x6966697373616C63;
  *(v77 + 1) = 0xEF736E6F69746163;
  v40 = v107;
  sub_1D87A0E38(v72, v107, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v74 + 48))(v40, 1, v73) != 1)
  {
    v109 = *(v96 + 48);
    v78 = *(v96 + 64);
    sub_1D87A14E4(v72, &qword_1ECA68598, &qword_1D8B3E590);
    (*(v103 + 8))(v119, v120);
    sub_1D87A14E4(v69, &qword_1ECA63280, &qword_1D8B1E840);
    v79 = v40;
    v80 = v110;
    sub_1D8A91FE8(v79, v110, type metadata accessor for DetectionRequest.Originator);
    v81 = v116;
    v82 = v115;
    v71(v76, v116, v115);
    *(v76 + v75[5]) = v62;
    v83 = (v76 + v75[6]);
    v84 = v125[1];
    *v83 = v125[0];
    v83[1] = v84;
    v85 = v125[3];
    v83[2] = v125[2];
    v83[3] = v85;
    *(v76 + v75[8]) = v65;
    *(v76 + v75[9]) = v66;
    sub_1D881F6FC(v118, v76 + v75[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    sub_1D8A91FE8(v80, v76 + v75[11], type metadata accessor for DetectionRequest.Originator);
    v86 = v113;
    sub_1D8A91FE8(v76, v113, type metadata accessor for GroundedParseClassificationsResult);
    v87 = v78;
    sub_1D87A14E4(v70 + v78, &qword_1ECA67750, &unk_1D8B1E0C0);
    v88 = v109;
    v89 = v70 + v109;
    v90 = v114;
    v91 = v99;
    v99(v89, v114);
    v92 = v117;
    v91(v117 + v88, v90);
    v97(v92, v82);
    sub_1D87A14E4(v81 + v87, &qword_1ECA67750, &unk_1D8B1E0C0);
    v91(v81 + v88, v90);
    return (*(v111 + 56))(v86, 0, 1, v75);
  }

LABEL_7:
  sub_1D87A14E4(v40, &qword_1ECA68598, &qword_1D8B3E590);
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D8A8F5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v7 = sub_1D8B13AF0();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A8F680, v5, 0);
}

uint64_t sub_1D8A8F680()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);

    v6 = v4;
    v14 = *(v0 + 40);
    sub_1D8B13AE0();
    v7 = sub_1D8A92E28(&qword_1EE0E9818, type metadata accessor for StreamingVisualIntelligenceProcessor, &unk_1D8B3AB80);
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *(v8 + 16) = v14;
    *(v8 + 32) = v2;
    *(v8 + 40) = v1;
    *(v8 + 48) = v5;
    *(v8 + 56) = v3;
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68838, &qword_1D8B3AED8);
    *v9 = v0;
    v9[1] = sub_1D8A8F890;

    return MEMORY[0x1EEE6DE38](v0 + 16, v1, v7, 0xD000000000000023, 0x80000001D8B48430, sub_1D8A967B4, v8, v10);
  }

  else
  {
    sub_1D88C53E4();
    swift_allocError();
    *v11 = xmmword_1D8B26640;
    *(v11 + 16) = 3;
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D8A8F890()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1D8A8FA50;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1D8A8F9B8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8A8F9B8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[2];
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D8A8FA50()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8A8FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a5;
  v42 = a2;
  v35 = a3;
  v37 = a1;
  v10 = *(a6 - 8);
  v39 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68840, &qword_1D8B3AEE0);
  v12 = *(v34 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150, &unk_1D8B39B90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v33 = &v32 - v17;
  v40 = sub_1D8B13700();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a7;
  (*(a7 + 40))(v43, a6, a7);
  sub_1D8A90118(v44);
  v21 = sub_1D8B13740();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = v15;
  v23 = v15;
  v24 = v34;
  (*(v12 + 16))(v23, v37, v34);
  v25 = v36;
  (*(v10 + 16))(v36, a4, a6);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = (v13 + *(v10 + 80) + v26) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v29 = v32;
  *(v28 + 16) = a6;
  *(v28 + 24) = v29;
  (*(v12 + 32))(v28 + v26, v22, v24);
  (*(v10 + 32))(v28 + v27, v25, a6);
  v30 = v33;

  sub_1D87A14E4(v30, &qword_1ECA67150, &unk_1D8B39B90);
  return (*(v38 + 8))(v20, v40);
}

uint64_t sub_1D8A8FECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = sub_1D8B13B10();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68848, &qword_1D8B3AEE8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v17 - v12);
  sub_1D87A0E38(a1, &v17 - v12, &qword_1ECA68848, &qword_1D8B3AEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v21[0] = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68840, &qword_1D8B3AEE0);
    return sub_1D8B15E10();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    memset(v21, 0, sizeof(v21));
    v22 = 1;
    v15 = type metadata accessor for ParseDetectorResult(0);
    v16 = sub_1D8A92E28(&qword_1ECA68850, type metadata accessor for ParseDetectorResult, &unk_1D8B39D7C);
    v20 = sub_1D8A8A574(a3, v21, v15, v18, v16, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68840, &qword_1D8B3AEE0);
    sub_1D8B15E20();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1D8A90118(char a1)
{
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_currentRequestIdentifier;
  v5 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_currentRequestIdentifier);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    v2 = a1;
    *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_currentRequestIdentifier) = v7;
    if (qword_1EE0E4518 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v8 = sub_1D8B151E0();
  __swift_project_value_buffer(v8, qword_1EE0E4520);
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B16200();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v2 & 1;
    _os_log_impl(&dword_1D8783000, v9, v10, "queryContext for parse isHighResolutionStill: %{BOOL}d", v11, 8u);
    MEMORY[0x1DA721330](v11, -1, -1);
  }

  if ((*(v3 + v4) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_legacyParseEnabled) == 1)
  {
    if (qword_1EE0E91A8 == -1)
    {
LABEL_8:
      v12 = qword_1EE0ED790;
      goto LABEL_9;
    }

LABEL_13:
    swift_once();
    goto LABEL_8;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68820, &qword_1D8B3AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 0x6F726665726F7473;
  *(inited + 40) = 0xEA0000000000746ELL;
  v14 = sub_1D893F500(&unk_1F5428CA8);
  sub_1D87A14E4(&unk_1F5428CC8, &qword_1ECA68828, &qword_1D8B3AEC8);
  *(inited + 48) = v14;
  sub_1D893F604(inited);
  swift_setDeallocating();
  sub_1D87A14E4(inited + 32, &qword_1ECA68830, &qword_1D8B3AED0);
  return sub_1D8B136E0();
}

uint64_t sub_1D8A903A0()
{

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D8A93010(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_signposter, type metadata accessor for LoggingSignposter);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 sub_1D8A90444@<Q0>(uint64_t a1@<X8>, unsigned __int8 *a2@<X0>)
{
  sub_1D8A95558(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8A904B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8A95638();
}

uint64_t sub_1D8A9055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A8501C(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1D8A90644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v152 = a8;
  v154 = a7;
  v150 = a6;
  v166 = a5;
  v151 = a4;
  v149 = a3;
  v141 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v153 = &v137 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v147 = &v137 - v14;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68860, &unk_1D8B3AF00);
  v156 = *(v170 - 8);
  v15 = MEMORY[0x1EEE9AC00](v170);
  v143 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v169 = &v137 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v137 - v19;
  v158 = sub_1D8B13240();
  v171 = *(v158 - 8);
  v20 = MEMORY[0x1EEE9AC00](v158);
  v160 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v137 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v148 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v159 = (&v137 - v26);
  v146 = sub_1D8B13B50();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1D8B138B0();
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1D8B13AD0();
  v29 = *(v176 - 8);
  v30 = MEMORY[0x1EEE9AC00](v176);
  v32 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v161 = &v137 - v33;
  v34 = sub_1D8B137A0();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v157 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v162 = &v137 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v137 - v40;
  v42 = sub_1D8B137B0();
  v43 = *(v42 + 16);
  v177 = v34;
  v163 = v35;
  if (v43)
  {
    v165 = a1;
    v164 = a9;
    v45 = *(v35 + 16);
    v44 = v35 + 16;
    v174 = v45;
    v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
    v155 = v42;
    v47 = v42 + v46;
    v48 = *(v44 + 56);
    v175 = v44;
    v49 = (v44 - 8);
    v172 = v29 + 32;
    v173 = v48;
    v50 = MEMORY[0x1E69E7CC0];
    do
    {
      v51 = v177;
      v174(v41, v47, v177);
      v52 = v50;
      sub_1D8B13780();
      (*v49)(v41, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1D87C9FBC(0, v50[2] + 1, 1, v50);
      }

      v54 = v52[2];
      v53 = v52[3];
      v55 = v52;
      if (v54 >= v53 >> 1)
      {
        v55 = sub_1D87C9FBC((v53 > 1), v54 + 1, 1, v52);
      }

      v55[2] = v54 + 1;
      v50 = v55;
      (*(v29 + 32))(v55 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v54, v32, v176);
      v47 += v173;
      --v43;
    }

    while (v43);

    v56 = v167;
    a9 = v164;
    v57 = v165;
    v34 = v177;
    if (!v50[2])
    {
      goto LABEL_16;
    }
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
    v57 = a1;
    v56 = v167;
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_16:

      v70 = 1;
      return (*(*(v166 - 8) + 56))(a9, v70, 1);
    }
  }

  v58 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v59 = *(v29 + 16);
  v175 = v50;
  v60 = v161;
  v61 = v176;
  v59(v161, v50 + v58, v176);
  v62 = sub_1D8A792FC();
  v63 = sub_1D89A5E54(v60, v62);

  (*(v29 + 8))(v60, v61);
  v64 = sub_1D8B137B0();
  if (!*(v64 + 16))
  {

    goto LABEL_16;
  }

  v65 = v163;
  v66 = v157;
  (*(v163 + 16))(v157, v64 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v34);

  v67 = v162;
  (*(v65 + 32))(v162, v66, v34);
  sub_1D8B13750();
  if (!v69)
  {
    (*(v65 + 8))(v67, v34);
    goto LABEL_16;
  }

  LODWORD(v172) = v68;

  if (v63)
  {
    v173 = 0xF000000000000000;
    v174 = 0;
  }

  else
  {
    v71 = v138;
    sub_1D8B13B00();
    v72 = sub_1D8B138A0();
    v173 = v73;
    v174 = v72;
    (*(v139 + 8))(v71, v140);
  }

  v74 = v144;
  sub_1D8B137D0();
  sub_1D8B13B40();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v145 + 8))(v74, v146);
  v83 = sub_1D8B137E0();
  v84 = *(v83 + 16);
  v164 = a9;
  v165 = v57;
  if (v84)
  {
    LODWORD(v161) = v63;
    v178 = MEMORY[0x1E69E7CC0];
    sub_1D87F3EE0(0, v84, 0);
    v85 = v178;
    v86 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v157 = v83;
    v87 = v83 + v86;
    v176 = *(v156 + 72);
    v88 = (v171 + 32);
    v89 = v158;
    v90 = v142;
    do
    {
      v91 = v168;
      sub_1D87A0E38(v87, v168, &qword_1ECA68860, &unk_1D8B3AF00);
      v92 = v91;
      v93 = v169;
      sub_1D881F6FC(v92, v169, &qword_1ECA68860, &unk_1D8B3AF00);

      v94 = *v88;
      (*v88)(v90, v93, v89);
      v178 = v85;
      v96 = *(v85 + 16);
      v95 = *(v85 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1D87F3EE0((v95 > 1), v96 + 1, 1);
        v85 = v178;
      }

      *(v85 + 16) = v96 + 1;
      v94((v85 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v96), v90, v89);
      v87 += v176;
      --v84;
    }

    while (v84);

    v56 = v167;
    v63 = v161;
  }

  else
  {

    v85 = MEMORY[0x1E69E7CC0];
  }

  v97 = *&v172;
  v98 = 1.0 - v78;
  v99 = sub_1D87C4B18(v85);

  if (*(v99 + 16))
  {
    v100 = sub_1D8A7391C(v99);

    v101 = sub_1D87C39A0(v100);

    v102 = v159;
    *v159 = v101;
    v103 = type metadata accessor for DetectionRequest.Originator(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  }

  else
  {

    v104 = type metadata accessor for DetectionRequest.Originator(0);
    (*(*(v104 - 8) + 56))(v159, 1, 1, v104);
  }

  v167 = v56;
  LODWORD(v176) = v63 ^ 1;
  v105 = v98 - v82;
  v106 = sub_1D8B137E0();
  v107 = v160;
  if (*(v106 + 16))
  {
    v108 = v143;
    sub_1D87A0E38(v106 + ((*(v156 + 80) + 32) & ~*(v156 + 80)), v143, &qword_1ECA68860, &unk_1D8B3AF00);

    v109 = v171;
    v110 = *(v171 + 32);
    v111 = v147;
    v112 = v108;
    v113 = v158;
    v110(v147, v112, v158);
    (*(v109 + 56))(v111, 0, 1, v113);
    v110(v107, v111, v113);
    v114 = v162;
  }

  else
  {

    v115 = v171;
    v116 = v147;
    v117 = v158;
    (*(v171 + 56))(v147, 1, 1, v158);
    sub_1D8B13230();
    v118 = (*(v115 + 48))(v116, 1, v117);
    v114 = v162;
    if (v118 != 1)
    {
      sub_1D87A14E4(v116, &qword_1ECA63178, &unk_1D8B1E6B0);
    }
  }

  type metadata accessor for CVCoordinator(0);
  v119 = v150;
  v120 = v152;
  sub_1D8A30194(v149, v152, &v178, v76, v105, v80, v82);
  CameraSourceFrame.rotationAngle.getter(v120, &v179);
  v121 = CameraSourceFrame.timestamp.getter(v119, v120);
  v122 = sub_1D8B13790();
  if (v123)
  {
    v124 = v122;
  }

  else
  {
    v124 = 0x6E6F697473657571;
  }

  v125 = 0xEC0000006B72616DLL;
  if (v123)
  {
    v125 = v123;
  }

  v171 = v125;
  v172 = v124;
  v126 = sub_1D8B13760();
  if (v127)
  {
    v128 = v126;
  }

  else
  {
    v128 = 0;
  }

  if (v127)
  {
    v129 = v127;
  }

  else
  {
    v129 = 0xE000000000000000;
  }

  v130 = sub_1D8B13830();
  v131 = *(v130 - 8);
  v132 = v153;
  (*(v131 + 16))(v153, v165, v130);
  (*(v131 + 56))(v132, 0, 1, v130);
  v133 = v159;
  v134 = v148;
  sub_1D87A0E38(v159, v148, &qword_1ECA68598, &qword_1D8B3E590);
  v136 = v134;
  a9 = v164;
  (*(v154 + 24))(v160, &v178, v175, &v179, v176 & 1, v172, v171, v128, v97, v121, v129, v132, v174, v173, 0, v136, v166, v154);
  sub_1D87A14E4(v133, &qword_1ECA68598, &qword_1D8B3E590);
  (*(v163 + 8))(v114, v177);
  v70 = 0;
  return (*(*(v166 - 8) + 56))(a9, v70, 1);
}

uint64_t sub_1D8A91658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1D87A0E38(a1, &v13 - v10, &qword_1ECA67750, &unk_1D8B1E0C0);
  if ((*(a2 + 32) & 1) == 0)
  {
    sub_1D8A73CF4(v9, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
    sub_1D87A14E4(v11, &qword_1ECA67750, &unk_1D8B1E0C0);
    sub_1D881F6FC(v9, v11, &qword_1ECA67750, &unk_1D8B1E0C0);
  }

  sub_1D8A5CDD4(a3, 0.0);
  return sub_1D87A14E4(v11, &qword_1ECA67750, &unk_1D8B1E0C0);
}

uint64_t sub_1D8A917D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_1D8B13830();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FC0, &qword_1D8B27C80);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  if ((sub_1D8B13200() & 1) == 0)
  {
    goto LABEL_15;
  }

  v16 = a3(0);
  if (*(a1 + *(v16 + 20)) != *(a2 + *(v16 + 20)))
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = (a1 + *(v16 + 24));
  v19 = v18[3];
  v38[2] = v18[2];
  v38[3] = v19;
  v20 = v18[1];
  v38[0] = *v18;
  v38[1] = v20;
  v21 = (a2 + *(v16 + 24));
  v22 = v21[1];
  v37[0] = *v21;
  v37[1] = v22;
  v23 = v21[3];
  v37[2] = v21[2];
  v37[3] = v23;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v38, v37))
  {
    goto LABEL_15;
  }

  v24 = v17[7];
  v25 = *(a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  if ((v25 != *v27 || v26 != v27[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + v17[8]) != *(a2 + v17[8]) || *(a1 + v17[9]) != *(a2 + v17[9]))
  {
    goto LABEL_15;
  }

  v28 = v17[10];
  v29 = *(v13 + 48);
  sub_1D87A0E38(a1 + v28, v15, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v36 = v29;
  sub_1D87A0E38(a2 + v28, &v15[v29], &qword_1ECA635E8, &unk_1D8B1F5C0);
  v30 = *(v7 + 48);
  if (v30(v15, 1, v6) == 1)
  {
    if (v30(&v15[v36], 1, v6) == 1)
    {
      sub_1D87A14E4(v15, &qword_1ECA635E8, &unk_1D8B1F5C0);
LABEL_18:
      v31 = _s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(a1 + v17[11], a2 + v17[11]);
      return v31 & 1;
    }

    goto LABEL_14;
  }

  sub_1D87A0E38(v15, v12, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if (v30(&v15[v36], 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
LABEL_14:
    sub_1D87A14E4(v15, &qword_1ECA64FC0, &qword_1D8B27C80);
    goto LABEL_15;
  }

  (*(v7 + 32))(v9, &v15[v36], v6);
  sub_1D8A92E28(&qword_1ECA64FC8, MEMORY[0x1E69E0330], MEMORY[0x1E69E0348]);
  v33 = sub_1D8B158C0();
  v34 = *(v7 + 8);
  v34(v9, v6);
  v34(v12, v6);
  sub_1D87A14E4(v15, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if (v33)
  {
    goto LABEL_18;
  }

LABEL_15:
  v31 = 0;
  return v31 & 1;
}

BOOL _s22VisualIntelligenceCore19ParseDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200())
  {
    v4 = type metadata accessor for ParseDetectorResult(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = v4;
      v6 = (a1 + *(v4 + 24));
      v7 = v6[3];
      v26[2] = v6[2];
      v26[3] = v7;
      v8 = v6[1];
      v26[0] = *v6;
      v26[1] = v8;
      v9 = (a2 + *(v4 + 24));
      v10 = v9[1];
      v25[0] = *v9;
      v25[1] = v10;
      v11 = v9[3];
      v25[2] = v9[2];
      v25[3] = v11;
      if (_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v26, v25) && (sub_1D88E19B4(*(a1 + v5[7]), *(a2 + v5[7])) & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]))
      {
        if (v12 = v5[11], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_1D8B16BA0())
        {
          if (v16 = v5[12], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) && v18 == v19[1] || (sub_1D8B16BA0())
          {
            if (_s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0((a1 + v5[13]), (a2 + v5[13])))
            {
              v20 = v5[14];
              v21 = *(a1 + v20);
              v22 = *(a2 + v20);
              if (v21)
              {
                if (v22)
                {

                  v23 = sub_1D88E19FC(v21, v22);

                  if (v23)
                  {
                    return *(a1 + v5[15]) == *(a2 + v5[15]);
                  }
                }
              }

              else if (!v22)
              {
                return *(a1 + v5[15]) == *(a2 + v5[15]);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL _s22VisualIntelligenceCore27GroundedParseDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200())
  {
    v4 = type metadata accessor for GroundedParseDetectorResult(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = v4;
      v6 = (a1 + *(v4 + 24));
      v7 = v6[3];
      v26[2] = v6[2];
      v26[3] = v7;
      v8 = v6[1];
      v26[0] = *v6;
      v26[1] = v8;
      v9 = (a2 + *(v4 + 24));
      v10 = v9[1];
      v25[0] = *v9;
      v25[1] = v10;
      v11 = v9[3];
      v25[2] = v9[2];
      v25[3] = v11;
      if (_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v26, v25) && (sub_1D88E19B4(*(a1 + v5[7]), *(a2 + v5[7])) & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]))
      {
        if (v12 = v5[11], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_1D8B16BA0())
        {
          if (v16 = v5[12], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) && v18 == v19[1] || (sub_1D8B16BA0())
          {
            if (_s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0((a1 + v5[13]), (a2 + v5[13])) && (_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(a1 + v5[14], a2 + v5[14]) & 1) != 0)
            {
              v20 = v5[15];
              v21 = *(a1 + v20);
              v22 = *(a2 + v20);
              if (v21)
              {
                if (v22)
                {

                  v23 = sub_1D88E19FC(v21, v22);

                  if (v23)
                  {
                    return *(a1 + v5[16]) == *(a2 + v5[16]);
                  }
                }
              }

              else if (!v22)
              {
                return *(a1 + v5[16]) == *(a2 + v5[16]);
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D8A91FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s22VisualIntelligenceCore0aB12LookupResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13000();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63608, &unk_1D8B1F5E0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44[-v18];
  if (*a1 != *a2 && (sub_1D8B16BA0() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D8B16BA0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  if (v20)
  {
    if (!v21 || (*(a1 + 32) != *(a2 + 32) || v20 != v21) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v21)
  {
    goto LABEL_45;
  }

  v22 = *(a1 + 56);
  v23 = *(a2 + 56);
  if (v22)
  {
    if (!v23 || (*(a1 + 48) != *(a2 + 48) || v22 != v23) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v23)
  {
    goto LABEL_45;
  }

  v24 = *(a1 + 72);
  v25 = *(a2 + 72);
  if (v24)
  {
    if (!v25 || (*(a1 + 64) != *(a2 + 64) || v24 != v25) && (sub_1D8B16BA0() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v25)
  {
    goto LABEL_45;
  }

  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_1D8B16BA0() & 1) == 0 || *(a1 + 96) != *(a2 + 96))
  {
    goto LABEL_45;
  }

  v47 = type metadata accessor for VisualIntelligenceLookupResult(0);
  v26 = *(v14 + 48);
  v49 = v47[11];
  v50 = v26;
  sub_1D87A0E38(a1 + v49, v19, &qword_1ECA630C0, &qword_1D8B24530);
  sub_1D87A0E38(a2 + v49, &v19[v50], &qword_1ECA630C0, &qword_1D8B24530);
  v48 = v5;
  v28 = *(v5 + 48);
  v27 = v5 + 48;
  v49 = v28;
  if (v28(v19, 1, v4) == 1)
  {
    if ((v49)(&v19[v50], 1, v4) == 1)
    {
      v46 = v27;
      sub_1D87A14E4(v19, &qword_1ECA630C0, &qword_1D8B24530);
      goto LABEL_38;
    }

LABEL_36:
    v29 = v19;
LABEL_44:
    sub_1D87A14E4(v29, &qword_1ECA63608, &unk_1D8B1F5E0);
    goto LABEL_45;
  }

  sub_1D87A0E38(v19, v13, &qword_1ECA630C0, &qword_1D8B24530);
  v46 = v27;
  if ((v49)(&v19[v50], 1, v4) == 1)
  {
    (*(v48 + 8))(v13, v4);
    goto LABEL_36;
  }

  v30 = v48;
  (*(v48 + 32))(v7, &v19[v50], v4);
  sub_1D8A92E28(&qword_1ECA63610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v45 = sub_1D8B158C0();
  v31 = v30 + 8;
  v32 = *(v30 + 8);
  v50 = v31;
  v32(v7, v4);
  v32(v13, v4);
  sub_1D87A14E4(v19, &qword_1ECA630C0, &qword_1D8B24530);
  if ((v45 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  v33 = v47[12];
  v34 = *(v14 + 48);
  sub_1D87A0E38(a1 + v33, v17, &qword_1ECA630C0, &qword_1D8B24530);
  v35 = a2 + v33;
  v36 = v34;
  sub_1D87A0E38(v35, &v17[v34], &qword_1ECA630C0, &qword_1D8B24530);
  v37 = v49;
  if ((v49)(v17, 1, v4) != 1)
  {
    sub_1D87A0E38(v17, v11, &qword_1ECA630C0, &qword_1D8B24530);
    if (v37(&v17[v34], 1, v4) != 1)
    {
      v40 = v48;
      (*(v48 + 32))(v7, &v17[v36], v4);
      sub_1D8A92E28(&qword_1ECA63610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v41 = sub_1D8B158C0();
      v42 = *(v40 + 8);
      v42(v7, v4);
      v42(v11, v4);
      sub_1D87A14E4(v17, &qword_1ECA630C0, &qword_1D8B24530);
      if ((v41 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    (*(v48 + 8))(v11, v4);
    goto LABEL_43;
  }

  if (v37(&v17[v34], 1, v4) != 1)
  {
LABEL_43:
    v29 = v17;
    goto LABEL_44;
  }

  sub_1D87A14E4(v17, &qword_1ECA630C0, &qword_1D8B24530);
LABEL_48:
  v43 = v47;
  if (sub_1D885571C(*(a1 + v47[13]), *(a2 + v47[13])) & 1) != 0 && (sub_1D88E743C(*(a1 + v43[14]), *(a2 + v43[14])))
  {
    v38 = *(a1 + v43[15]) ^ *(a2 + v43[15]) ^ 1;
    return v38 & 1;
  }

LABEL_45:
  v38 = 0;
  return v38 & 1;
}

BOOL _s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_1D8B13830();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FC0, &qword_1D8B27C80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = type metadata accessor for VisualUnderstandingContainer(0);
  v15 = a1;
  v16 = a2;
  v33 = v14;
  v34 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1D87A0E38(v15 + v17, v13, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v19 = v16 + v17;
  v20 = v16;
  sub_1D87A0E38(v19, &v13[v18], &qword_1ECA635E8, &unk_1D8B1F5C0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_1D87A14E4(v13, &qword_1ECA635E8, &unk_1D8B1F5C0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1D87A0E38(v13, v10, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D87A14E4(v13, &qword_1ECA64FC0, &qword_1D8B27C80);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_1D8A92E28(&qword_1ECA64FC8, MEMORY[0x1E69E0330], MEMORY[0x1E69E0348]);
  v22 = sub_1D8B158C0();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  v20 = v16;
  sub_1D87A14E4(v13, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v24 = *(v33 + 24);
  v25 = v34 + v24;
  v27 = *(v34 + v24);
  v26 = *(v34 + v24 + 8);
  v28 = (v20 + v24);
  v30 = *v28;
  v29 = v28[1];
  if (v26 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      sub_1D8883D78(*v25, *(v25 + 1));
      sub_1D8883D78(v30, v29);
      sub_1D87C12A4(v27, v26);
      return 1;
    }

    goto LABEL_13;
  }

  if (v29 >> 60 == 15)
  {
LABEL_13:
    sub_1D8883D78(*v25, *(v25 + 1));
    sub_1D8883D78(v30, v29);
    sub_1D87C12A4(v27, v26);
    sub_1D87C12A4(v30, v29);
    return 0;
  }

  sub_1D8883D78(*v25, *(v25 + 1));
  sub_1D8883D78(v30, v29);
  v32 = sub_1D87A057C(v27, v26, v30, v29);
  sub_1D87C12A4(v30, v29);
  sub_1D87C12A4(v27, v26);
  return v32;
}

unint64_t sub_1D8A92C00()
{
  result = qword_1ECA685A8;
  if (!qword_1ECA685A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA685A8);
  }

  return result;
}

unint64_t sub_1D8A92C54()
{
  result = qword_1ECA685B8;
  if (!qword_1ECA685B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA630C0, &qword_1D8B24530);
    sub_1D8A92E28(&qword_1ECA66268, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA685B8);
  }

  return result;
}

uint64_t sub_1D8A92D08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63660, &qword_1D8B1F620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A92D74()
{
  result = qword_1ECA685F0;
  if (!qword_1ECA685F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA630C0, &qword_1D8B24530);
    sub_1D8A92E28(&qword_1ECA66260, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA685F0);
  }

  return result;
}

uint64_t sub_1D8A92E28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8A92E70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA685C0, &qword_1D8B39B68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A92EDC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA685D0, &qword_1D8B39B70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A92F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8A92FBC()
{
  result = qword_1ECA68610;
  if (!qword_1ECA68610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68610);
  }

  return result;
}

uint64_t sub_1D8A93010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D8A93070()
{
  result = qword_1ECA68638;
  if (!qword_1ECA68638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68638);
  }

  return result;
}

unint64_t sub_1D8A930C4()
{
  result = qword_1ECA68558;
  if (!qword_1ECA68558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68520, &qword_1D8B398A8);
    sub_1D8A92E28(&qword_1ECA68560, MEMORY[0x1E69E03D8], MEMORY[0x1E69E0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68558);
  }

  return result;
}

unint64_t sub_1D8A93178()
{
  result = qword_1ECA68528;
  if (!qword_1ECA68528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68520, &qword_1D8B398A8);
    sub_1D8A92E28(&qword_1ECA68530, MEMORY[0x1E69E03D8], MEMORY[0x1E69E03E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68528);
  }

  return result;
}

unint64_t sub_1D8A9322C()
{
  result = qword_1ECA68648;
  if (!qword_1ECA68648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
    sub_1D8A92E28(&qword_1ECA68618, MEMORY[0x1E69E0330], MEMORY[0x1E69E0338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68648);
  }

  return result;
}

unint64_t sub_1D8A932E0()
{
  result = qword_1ECA68658;
  if (!qword_1ECA68658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68650, &qword_1D8B39BB8);
    sub_1D89980D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68658);
  }

  return result;
}

unint64_t sub_1D8A93364()
{
  result = qword_1ECA68668;
  if (!qword_1ECA68668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68668);
  }

  return result;
}

unint64_t sub_1D8A933B8()
{
  result = qword_1ECA68680;
  if (!qword_1ECA68680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68680);
  }

  return result;
}

unint64_t sub_1D8A9340C()
{
  result = qword_1ECA68698;
  if (!qword_1ECA68698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68698);
  }

  return result;
}

uint64_t sub_1D8A934F0(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681D0, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA68118, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA686B8, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
  result = sub_1D8A92E28(&qword_1ECA686C0, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A935C4(uint64_t a1)
{
  result = sub_1D8A92E28(&qword_1ECA686C8, type metadata accessor for ParseDetectorResult, &unk_1D8B39E88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A93664(uint64_t a1)
{
  result = sub_1D8A92E28(&qword_1ECA686D0, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A936BC(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681D8, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA68138, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA686D8, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  result = sub_1D8A92E28(&qword_1ECA686E0, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A93790(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681D8, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA68138, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  result = sub_1D8A92E28(&qword_1ECA686D8, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  a1[3] = result;
  return result;
}

uint64_t sub_1D8A9383C(uint64_t a1)
{
  result = sub_1D8A92E28(&qword_1EE0E49A0, type metadata accessor for GroundedParseDetectorResult, &unk_1D8B3A008);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A938DC(uint64_t a1)
{
  result = sub_1D8A92E28(qword_1EE0E49A8, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A93934(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680C8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA686E8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
  result = sub_1D8A92E28(&qword_1ECA686F0, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A93A08(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680C8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
  result = sub_1D8A92E28(&qword_1ECA686E8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
  a1[3] = result;
  return result;
}

uint64_t sub_1D8A93AFC(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C0, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680B8, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
  a1[3] = sub_1D8A92E28(&qword_1ECA68700, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
  result = sub_1D8A92E28(&qword_1ECA68708, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A93BD0(void *a1)
{
  a1[1] = sub_1D8A92E28(&qword_1ECA681C0, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
  a1[2] = sub_1D8A92E28(&qword_1ECA680B8, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
  result = sub_1D8A92E28(&qword_1ECA68700, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
  a1[3] = result;
  return result;
}

void sub_1D8A93CEC(uint64_t a1)
{
  sub_1D8A6F590(319, &qword_1EE0E3A20, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E98B8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D8A93E34();
      if (v3 <= 0x3F)
      {
        sub_1D8A93E90(319, &qword_1EE0E3928, &qword_1EE0E3760, 0x1E69CA390, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A93E34()
{
  if (!qword_1EE0E3A30)
  {
    v0 = sub_1D8B15780();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3A30);
    }
  }
}

void sub_1D8A93E90(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D881F764(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D8A93F20(uint64_t a1)
{
  sub_1D8A93FF4(319, &qword_1EE0E9878, MEMORY[0x1E69E0330], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D8A6F590(319, &qword_1EE0E98B0, MEMORY[0x1E6969080]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A93FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D8A940BC(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E3A10, MEMORY[0x1E69E03D8], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for VisualUnderstandingContainer(319);
      if (v3 <= 0x3F)
      {
        sub_1D8A71668(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A94214(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E3A10, MEMORY[0x1E69E03D8], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for VisualUnderstandingContainer(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetectionRequest.Originator(319);
        if (v4 <= 0x3F)
        {
          sub_1D8A71668(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_64Tm(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = type metadata accessor for DetectionRequest.Originator(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_store_extra_inhabitant_index_65Tm(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = type metadata accessor for DetectionRequest.Originator(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

void sub_1D8A946B4(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E9878, MEMORY[0x1E69E0330], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DetectionRequest.Originator(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D8A94800(uint64_t a1)
{
  result = sub_1D8B151E0();
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

uint64_t sub_1D8A948F8(uint64_t a1)
{
  result = sub_1D8B151E0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8A94A3C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D8A94ACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8A94B90()
{
  result = qword_1ECA68750;
  if (!qword_1ECA68750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68750);
  }

  return result;
}

unint64_t sub_1D8A94BE8()
{
  result = qword_1ECA68758;
  if (!qword_1ECA68758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68758);
  }

  return result;
}

unint64_t sub_1D8A94C40()
{
  result = qword_1ECA68760;
  if (!qword_1ECA68760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68760);
  }

  return result;
}

unint64_t sub_1D8A94C98()
{
  result = qword_1ECA68768;
  if (!qword_1ECA68768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68768);
  }

  return result;
}

unint64_t sub_1D8A94CF0()
{
  result = qword_1ECA68770;
  if (!qword_1ECA68770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68770);
  }

  return result;
}

unint64_t sub_1D8A94D48()
{
  result = qword_1ECA68778;
  if (!qword_1ECA68778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68778);
  }

  return result;
}

unint64_t sub_1D8A94EBC()
{
  result = qword_1ECA68798;
  if (!qword_1ECA68798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68798);
  }

  return result;
}

unint64_t sub_1D8A94F14()
{
  result = qword_1ECA687A0;
  if (!qword_1ECA687A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687A0);
  }

  return result;
}

unint64_t sub_1D8A94F6C()
{
  result = qword_1ECA687A8;
  if (!qword_1ECA687A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687A8);
  }

  return result;
}

unint64_t sub_1D8A94FC4()
{
  result = qword_1ECA687B0;
  if (!qword_1ECA687B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687B0);
  }

  return result;
}

unint64_t sub_1D8A9501C()
{
  result = qword_1ECA687B8;
  if (!qword_1ECA687B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687B8);
  }

  return result;
}

unint64_t sub_1D8A95074()
{
  result = qword_1ECA687C0;
  if (!qword_1ECA687C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687C0);
  }

  return result;
}

unint64_t sub_1D8A950CC()
{
  result = qword_1ECA687C8;
  if (!qword_1ECA687C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687C8);
  }

  return result;
}

unint64_t sub_1D8A95124()
{
  result = qword_1ECA687D0;
  if (!qword_1ECA687D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687D0);
  }

  return result;
}

unint64_t sub_1D8A9517C()
{
  result = qword_1ECA687D8;
  if (!qword_1ECA687D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687D8);
  }

  return result;
}

unint64_t sub_1D8A951D4()
{
  result = qword_1ECA687E0;
  if (!qword_1ECA687E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687E0);
  }

  return result;
}

unint64_t sub_1D8A9522C()
{
  result = qword_1ECA687E8;
  if (!qword_1ECA687E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687E8);
  }

  return result;
}

unint64_t sub_1D8A95284()
{
  result = qword_1ECA687F0;
  if (!qword_1ECA687F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA687F0);
  }

  return result;
}

unint64_t sub_1D8A952D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8A95324(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8A95370(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8A953BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8A95408(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8A95454(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AE0, &qword_1D8B2BE40);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unsigned __int8 *sub_1D8A95558@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = 2;
  v5 = (v3 - 12) < 2 || v3 == 4;
  if (v5 || v3 == 1)
  {
    v10 = 0;
    v11 = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    v15 = 2;
    v16 = 1;
    v17 = 0;
    v18 = 0;
    result = sub_1D88C5438(&v10, v19);
    v6 = v19[0];
    v7 = v19[1];
    v8 = v19[2];
    v9 = v19[3];
    v4 = v20;
  }

  else
  {
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v4;
  return result;
}

uint64_t sub_1D8A95638()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA687F8, &qword_1D8B3AE98);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68800, &qword_1D8B3AEA0);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v1[12] = swift_task_alloc();
  sub_1D8B13970();
  v1[13] = swift_task_alloc();
  type metadata accessor for LoggingSignposter(0);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9579C, v0, 0);
}

uint64_t sub_1D8A9579C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v14 = v0[9];
  sub_1D8A92F54(v14 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_signposter, v2, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.StreamingVisualIntelligenceProcessor.prepare", 58, 2u, 1, 0, v0 + 4);
  sub_1D8A93010(v2, type metadata accessor for LoggingSignposter);
  sub_1D8B13980();
  v6 = sub_1D8B13000();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_1D8B155A0();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = sub_1D8B13B20();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1D8B13960();
  v9 = MEMORY[0x1DA71CDE0](v1);
  v10 = v0[7];
  v11 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v10);
  (*(v11 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  *(v14 + 112) = v9;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8A959F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6765526567616D69 && a2 == 0xEB000000006E6F69 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

float sub_1D8A95B18(uint64_t a1)
{
  v2 = v1;
  v113 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v103 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v108 = (&v98 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68808, &qword_1D8B3AEA8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v98 - v11;
  v12 = sub_1D8B13820();
  v105 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - v16;
  v18 = sub_1D8B13AD0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68810, &qword_1D8B3AEB0);
  MEMORY[0x1EEE9AC00](v110);
  v112 = (&v98 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68818, &qword_1D8B3AEB8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v111 = (&v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v98 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v98 - v28;
  v30 = type metadata accessor for ParseDetectorResult(0);
  v31 = *(v30 + 28);
  v107 = v2;
  v32 = *(v2 + v31);
  v33 = 0.0;
  if (!*(v32 + 16))
  {
    return v33;
  }

  v34 = v30;
  v98 = v15;
  v100 = v17;
  v99 = v10;
  v101 = v12;
  v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v36 = *(v19 + 16);
  v36(v29, v32 + v35, v18);
  v109 = v19;
  v37 = *(v19 + 56);
  v38 = 1;
  v37(v29, 0, 1, v18);
  v102 = v34;
  v39 = *(v113 + *(v34 + 28));
  if (*(v39 + 16))
  {
    v36(v27, v39 + v35, v18);
    v38 = 0;
  }

  v40 = v112;
  v41 = v111;
  v37(v27, v38, 1, v18);
  v42 = *(v110 + 48);
  sub_1D87A0E38(v29, v40, &qword_1ECA68818, &qword_1D8B3AEB8);
  sub_1D87A0E38(v27, v40 + v42, &qword_1ECA68818, &qword_1D8B3AEB8);
  v43 = v109;
  v44 = *(v109 + 48);
  if (v44(v40, 1, v18) != 1)
  {
    sub_1D87A0E38(v40, v41, &qword_1ECA68818, &qword_1D8B3AEB8);
    if (v44(v40 + v42, 1, v18) != 1)
    {
      v45 = v106;
      (*(v43 + 32))(v106, v40 + v42, v18);
      sub_1D8A92E28(&qword_1ECA64FD0, MEMORY[0x1E69E03D8], MEMORY[0x1E69E03F0]);
      v46 = sub_1D8B158C0();
      v47 = *(v43 + 8);
      v47(v45, v18);
      sub_1D87A14E4(v27, &qword_1ECA68818, &qword_1D8B3AEB8);
      sub_1D87A14E4(v29, &qword_1ECA68818, &qword_1D8B3AEB8);
      v47(v41, v18);
      sub_1D87A14E4(v40, &qword_1ECA68818, &qword_1D8B3AEB8);
      if ((v46 & 1) == 0)
      {
        return v33;
      }

      goto LABEL_11;
    }

    sub_1D87A14E4(v27, &qword_1ECA68818, &qword_1D8B3AEB8);
    sub_1D87A14E4(v29, &qword_1ECA68818, &qword_1D8B3AEB8);
    (*(v43 + 8))(v41, v18);
LABEL_9:
    sub_1D87A14E4(v40, &qword_1ECA68810, &qword_1D8B3AEB0);
    return v33;
  }

  sub_1D87A14E4(v27, &qword_1ECA68818, &qword_1D8B3AEB8);
  sub_1D87A14E4(v29, &qword_1ECA68818, &qword_1D8B3AEB8);
  if (v44(v40 + v42, 1, v18) != 1)
  {
    goto LABEL_9;
  }

  sub_1D87A14E4(v40, &qword_1ECA68818, &qword_1D8B3AEB8);
LABEL_11:
  v48 = v102;
  v49 = v107;
  v50 = (v107 + v102[6]);
  v51 = v50[1];
  v118 = *v50;
  v119 = v51;
  v52 = v50[3];
  v120 = v50[2];
  v121 = v52;
  Corners.bounds.getter();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = (v113 + v48[6]);
  v62 = v61[1];
  v114 = *v61;
  v115 = v62;
  v63 = v61[3];
  v116 = v61[2];
  v117 = v63;
  Corners.bounds.getter();
  v124.origin.x = v64;
  v124.origin.y = v65;
  v67 = v66;
  v69 = v68;
  v122.origin.x = v54;
  v122.origin.y = v56;
  v122.size.width = v58;
  v122.size.height = v60;
  v124.size.width = v67;
  v124.size.height = v69;
  v123 = CGRectIntersection(v122, v124);
  width = v123.size.width;
  height = v123.size.height;
  v72 = 0.0;
  if (!CGRectIsNull(v123))
  {
    v72 = width * height / (v58 * v60 + v67 * v69 - width * height);
  }

  v73 = v101;
  v74 = v108;
  if (*(v49 + v48[10]) != 1)
  {
    return v72;
  }

  v75 = v49 + v48[13];
  v76 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v75 + *(v76 + 20), v74, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v77 = sub_1D8B13830();
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  if (v79(v74, 1, v77) == 1)
  {
    sub_1D87A14E4(v74, &qword_1ECA635E8, &unk_1D8B1F5C0);
LABEL_19:
    v83 = v104;
    (*(v105 + 56))(v104, 1, 1, v73);
LABEL_20:
    v85 = v83;
LABEL_21:
    sub_1D87A14E4(v85, &qword_1ECA68808, &qword_1D8B3AEA8);
    return v72;
  }

  v80 = sub_1D8B137C0();
  v81 = *(v78 + 8);
  v81(v74, v77);
  if (!v80)
  {
    goto LABEL_19;
  }

  v111 = v81;
  if (*(v80 + 16))
  {
    v82 = v105;
    v83 = v104;
    (*(v105 + 16))(v104, v80 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v73);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v82 = v105;
    v83 = v104;
  }

  v112 = *(v82 + 56);
  v112(v83, v84, 1, v73);
  v110 = *(v82 + 48);
  if ((v110)(v83, 1, v73) == 1)
  {
    goto LABEL_20;
  }

  v109 = v82 + 56;
  v87 = v100;
  v108 = *(v82 + 32);
  v108(v100, v83, v73);
  v88 = v113 + v102[13] + *(v76 + 20);
  v89 = v103;
  sub_1D87A0E38(v88, v103, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if (v79(v89, 1, v77) == 1)
  {
    (*(v82 + 8))(v87, v73);
    sub_1D87A14E4(v89, &qword_1ECA635E8, &unk_1D8B1F5C0);
    v90 = v99;
LABEL_32:
    v112(v90, 1, 1, v73);
LABEL_33:
    v85 = v90;
    goto LABEL_21;
  }

  v91 = sub_1D8B137C0();
  v111(v89, v77);
  v90 = v99;
  if (!v91)
  {
    (*(v105 + 8))(v100, v73);
    goto LABEL_32;
  }

  v92 = v105;
  v93 = v100;
  if (*(v91 + 16))
  {
    (*(v105 + 16))(v99, v91 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v73);
    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  v95 = v98;

  v112(v90, v94, 1, v73);
  if ((v110)(v90, 1, v73) == 1)
  {
    (*(v92 + 8))(v93, v73);
    goto LABEL_33;
  }

  v108(v95, v90, v73);
  v96 = sub_1D8A7B4DC();
  v97 = *(v92 + 8);
  v97(v95, v73);
  v97(v93, v73);
  if ((v96 & 0x100000000) != 0)
  {
    return v72;
  }

  v33 = 0.0;
  if (*&v96 > 0.55)
  {
    return (v72 * 0.5) + (*&v96 * 0.5);
  }

  return v33;
}

uint64_t sub_1D8A967C4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68840, &qword_1D8B3AEE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v1 + ((v6 + *(v5 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_1D8A8FECC(a1, v1 + v6, v7, v3, v4);
}

uint64_t objectdestroy_169Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(v3 - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + *(v5 + 64) + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v6 | v9;

  (*(v5 + 8))(v2 + v7, v4);
  (*(v8 + 8))(v2 + v10, v3);

  return MEMORY[0x1EEE6BDD0](v2, v10 + v11, v12 | 7);
}

uint64_t sub_1D8A96AB8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t, char *, char *, uint64_t, uint64_t))
{
  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v5 + 4);
  v13 = *(v5 + 5);
  v14 = &v5[(v11 + *(v10 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80)];

  return a5(a1, a2 & 1, v12, v13, &v5[v11], v14, v8, v9);
}

unint64_t sub_1D8A96C18()
{
  result = qword_1ECA688B8;
  if (!qword_1ECA688B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA688B0, &qword_1D8B3AF68);
    sub_1D8A92E28(&qword_1ECA688C0, MEMORY[0x1E69E0410], MEMORY[0x1E69E0418]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA688B8);
  }

  return result;
}

uint64_t sub_1D8A96CCC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 13);
  v7 = *(v1 + 14);
  v8 = v1[15];
  v9 = *(v1 + 16);
  v10 = *(v1 + 17);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D886553C;

  return sub_1D8A88CC0(v8, a1, v4, v5, (v1 + 4), v6, v7, v9, v10);
}

uint64_t sub_1D8A96DB4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = (*(*(v3 - 8) + 80) + 64) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688D8, &unk_1D8B3AF88) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  return sub_1D8A89D44(a1, v1[4], v1[5], v1[6], v1[7], v1 + v5, v1 + v8, v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8), v3, v4);
}

uint64_t sub_1D8A96ECC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D8A8A328(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8A96F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  return sub_1D87DFC48(sub_1D8A97024, v9, a2, v6, MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1D8A97050(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68900, &qword_1D8B3AFC8) - 8);
  v9 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1D8A81E7C(a1, a2, a3, v9, v8);
}

uint64_t sub_1D8A970E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D886553C;

  return sub_1D8A81CF0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8A97194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D8A80A0C(a1, v4, v5, v6);
}

void sub_1D8A97270(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A93FF4(319, &qword_1EE0E3A08, MEMORY[0x1E69E0420], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A9734C(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A93E90(319, &unk_1ECA68960, &qword_1ECA66920, 0x1E6985C40, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D8A93FF4(319, &qword_1EE0E3A08, MEMORY[0x1E69E0420], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D8B138B0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D8A974EC(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A975F4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97704(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97814(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97960(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D8A97A50(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D8A97B8C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B15A60();

  return result;
}

double sub_1D8A97CC4(uint64_t a1, unsigned __int8 a2)
{
  sub_1D8B15A60();

  return result;
}

Swift::Float __swiftcall CGRect.intersectionOverUnion(with:)(__C::CGRect with)
{
  v5 = v4;
  v6 = v3;
  height = with.size.height;
  width = with.size.width;
  y = with.origin.y;
  x = with.origin.x;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v6;
  v15.size.height = v5;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v16 = CGRectIntersection(v15, v17);
  v11 = v16.size.width;
  v12 = v16.size.height;
  IsNull = CGRectIsNull(v16);
  result = 0.0;
  if (!IsNull)
  {
    return v11 * v12 / (width * height + v6 * v5 - v11 * v12);
  }

  return result;
}

__n128 ObjectDetectorResult.init(id:confidence:corners:label:rotationAngle:timestamp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, float a7@<S0>, double a8@<D1>)
{
  v15 = *a5;
  v16 = sub_1D8B13240();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  v17 = type metadata accessor for ObjectDetectorResult(0);
  *(a6 + v17[5]) = a7;
  v18 = a6 + v17[6];
  v19 = *(a2 + 16);
  *v18 = *a2;
  *(v18 + 16) = v19;
  result = *(a2 + 32);
  v21 = *(a2 + 48);
  *(v18 + 32) = result;
  *(v18 + 48) = v21;
  v22 = (a6 + v17[7]);
  *v22 = a3;
  v22[1] = a4;
  *(a6 + v17[8]) = v15;
  *(a6 + v17[9]) = a8;
  return result;
}

uint64_t *sub_1D8A97FF0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v13 = sub_1D8B15A70();
  v14 = MEMORY[0x1E69E7CC0];
  LODWORD(v79) = a6;
  if (v13)
  {
    v15 = v13;
    v80[0] = MEMORY[0x1E69E7CC0];
    v14 = v80;
    sub_1D87F4EF8(0, v13 & ~(v13 >> 63), 0);
    if (v15 < 0)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v77 = a5;
    v78 = a4;
    v14 = v80[0];
    do
    {
      v16 = sub_1D8B15B80();
      v18 = v17;
      v80[0] = v14;
      a6 = *(v14 + 16);
      v19 = *(v14 + 24);
      v6 = a6 + 1;
      if (a6 >= v19 >> 1)
      {
        sub_1D87F4EF8((v19 > 1), a6 + 1, 1);
        v14 = v80[0];
      }

      *(v14 + 16) = v6;
      v20 = v14 + 16 * a6;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      sub_1D8B15A80();
      --v15;
    }

    while (v15);
    a5 = v77;
    a4 = v78;
  }

  v21 = sub_1D8B15A70();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v23 = v14;
  v80[0] = MEMORY[0x1E69E7CC0];
  v14 = v80;
  sub_1D87F4EF8(0, v21 & ~(v21 >> 63), 0);
  if (v22 < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v7 = v80[0];
  v14 = v23;
  do
  {
    v24 = sub_1D8B15B80();
    v80[0] = v7;
    v27 = *(v7 + 16);
    v26 = *(v7 + 24);
    if (v27 >= v26 >> 1)
    {
      v77 = v24;
      v78 = a4;
      v29 = v25;
      sub_1D87F4EF8((v26 > 1), v27 + 1, 1);
      v14 = v23;
      v25 = v29;
      v24 = v77;
      v7 = v80[0];
    }

    *(v7 + 16) = v27 + 1;
    v28 = v7 + 16 * v27;
    *(v28 + 32) = v24;
    *(v28 + 40) = v25;
    sub_1D8B15A80();
    --v22;
  }

  while (v22);
LABEL_14:
  a6 = *(v14 + 16);
  a4 = *(v7 + 16);
  if (a6)
  {
    v30 = a4 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    if (a4 <= a6)
    {
      v6 = *(v14 + 16);
    }

    else
    {
      v6 = *(v7 + 16);
    }

    if (v79)
    {
      v32 = v6;
    }

    else
    {
      v32 = a5;
    }

    v76 = v32;
    v80[0] = 0;
    a3 = a4 + 1;
    a1 = (a6 + 1) * (a4 + 1);
    if (((a6 + 1) * (a4 + 1)) >> 64 == a1 >> 63)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(a1 >> 60))
      {
        v79 = a6 + 1;

        if ((8 * a1) < 1025)
        {
          goto LABEL_32;
        }

        goto LABEL_87;
      }

      __break(1u);
      goto LABEL_91;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v66 = swift_slowAlloc();

      sub_1D89C8EB8(v66, a1, v79, a3, a6, a4, v14, v7, v76, v80);
      MEMORY[0x1DA721330](v66, -1, -1);

      v63 = v80[0];
LABEL_69:

      return v63;
    }

LABEL_32:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v36 = (&v67 - v35);
    if (a6 > 3)
    {
      v39 = 0;
      v37 = a6 & 0x7FFFFFFFFFFFFFFCLL;
      v38 = v79;
      do
      {
        v40 = vdupq_n_s64(v39);
        v41 = vorrq_s8(v40, xmmword_1D8B1AB90);
        v42 = &v36[v41.i64[0]];
        *v42 = v41;
        v42[1] = vaddq_s64(v40, xmmword_1D8B30E60);
        v39 += 4;
      }

      while (v37 != v39);
      if (a6 == v37)
      {
LABEL_39:
        v45 = 0;
        *v36 = 0;
        do
        {
          v45 = (v45 + 1);
          if ((v38 * v45) >> 64 != (v38 * v45) >> 63)
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
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
            goto LABEL_84;
          }

          v36[v38 * v45] = v45;
        }

        while (a4 != v45);
        v70 = v6;
        v71 = v34;
        v69 = a6;
        if (*(v14 + 16))
        {
          v6 = 0;
          v77 = (v14 + 40);
          v78 = (v14 + 32);
          v72 = v7 + 40;
          v73 = a4;
          v46 = 1;
          v68 = v14 + 32;
          v74 = v14;
          v75 = v7;
          while (1)
          {
            a3 = 0;
            a6 = v72;
            while (1)
            {
              if (a3 >= *(v7 + 16))
              {
                goto LABEL_74;
              }

              v14 = a3 + 1;
              a1 = *v77;
              v47 = *v78;
              v48 = *(a6 - 8);
              a4 = *a6;

              v7 = sub_1D8A98664(v48, a4, v47, a1);

              v49 = v79;
              v50 = v79 * (a3 + 1);
              if ((v79 * v14) >> 64 != (v79 * v14) >> 63)
              {
                goto LABEL_75;
              }

              if (__OFADD__(v50, v6))
              {
                goto LABEL_76;
              }

              v51 = v36[v50 + v6];
              v52 = __OFADD__(v51, 1);
              v53 = v51 + 1;
              if (v52)
              {
                goto LABEL_77;
              }

              v54 = v79 * a3;
              if ((v79 * a3) >> 64 != (v79 * a3) >> 63)
              {
                goto LABEL_78;
              }

              if (__OFADD__(v54, v46))
              {
                goto LABEL_79;
              }

              v55 = v36[v54 + v46];
              v52 = __OFADD__(v55, 1);
              v56 = v55 + 1;
              if (v52)
              {
                goto LABEL_80;
              }

              v52 = __OFADD__(v54, v6);
              v57 = v54 + v6;
              if (v52)
              {
                goto LABEL_81;
              }

              v58 = (v7 & 1) == 0;
              v59 = v36[v57];
              v52 = __OFADD__(v59, v58);
              v60 = v59 + v58;
              if (v52)
              {
                goto LABEL_82;
              }

              v52 = __OFADD__(v50, v46);
              v61 = v50 + v46;
              if (v52)
              {
                goto LABEL_83;
              }

              if (v56 < v53)
              {
                v53 = v56;
              }

              if (v60 < v53)
              {
                v53 = v60;
              }

              v36[v61] = v53;
              if (v76 < v53)
              {
                goto LABEL_67;
              }

              ++a3;
              a4 = v73;
              v14 = v74;
              v7 = v75;
              if (v73 == a3)
              {
                break;
              }

              a6 += 16;
              if (v6 >= *(v74 + 16))
              {
                goto LABEL_66;
              }
            }

            if (v46 == v69)
            {
              break;
            }

            v6 = v46;
            v78 = (v68 + 16 * v46);
            v77 = v78 + 1;
            if (v46++ >= *(v74 + 16))
            {
              goto LABEL_66;
            }
          }

          v64 = v49 * v73;
          if ((v49 * v73) >> 64 == (v49 * v73) >> 63)
          {
            v52 = __OFADD__(v64, v69);
            v65 = v64 + v69;
            if (!v52)
            {
              v63 = v36[v65];
              goto LABEL_68;
            }

LABEL_92:
            __break(1u);
          }

LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_66:
        __break(1u);
LABEL_67:
        v63 = v70;
LABEL_68:

        goto LABEL_69;
      }
    }

    else
    {
      v37 = 0;
      v38 = v79;
    }

    v43 = a6 - v37;
    v44 = v37 + 1;
    do
    {
      v36[v44] = v44;
      ++v44;
      --v43;
    }

    while (v43);
    goto LABEL_39;
  }

  if (a4 <= a6)
  {
    return a6;
  }

  else
  {
    return a4;
  }
}

uint64_t sub_1D8A98664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  while (1)
  {
    v4 = sub_1D8B15B50();
    v5 = sub_1D8B15B50();
    if (((v4 | v5) & 0x10000) != 0)
    {
      break;
    }

    if (v4 != v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v6 = ((v5 & v4) >> 16) & 1;
LABEL_6:

  return v6;
}

uint64_t sub_1D8A9872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D87F43E0(0, v5, 0);
    v6 = v21;
    v12 = (a1 + 40);
    do
    {
      v13 = *v12;
      v14 = *(v12 - 1);
      v15 = v13;
      sub_1D8A9C1C0(v14, v15, a3, a2, a4, a5, &v20);

      v16 = v20;
      v21 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D87F43E0((v17 > 1), v18 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v18 + 1;
      *(v6 + 8 * v18 + 32) = v16;
      v12 += 2;
      --v5;
    }

    while (v5);
  }

  return v6;
}

uint64_t VisionProcessor.__allocating_init(configuration:enabledDetectionType:)(uint64_t *a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = *a2;
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  if (qword_1EE0E4370 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8B151E0();
  v12 = __swift_project_value_buffer(v11, qword_1EE0E4378);
  (*(*(v11 - 8) + 16))(v4 + v10, v12, v11);
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
  v14 = v4 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
  *v14 = v5;
  *(v14 + 8) = v6;
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v4 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType) = v9;
  return v4;
}

double ObjectDetectorResult.modifyWithPrediction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 80);
  v6 = sub_1D8B13240();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = type metadata accessor for ObjectDetectorResult(0);
  v8 = (v2 + v7[7]);
  v9 = *(v2 + v7[8]);
  v11 = *v8;
  v10 = v8[1];
  *(a2 + v7[5]) = *(v2 + v7[5]);
  v12 = (a2 + v7[6]);
  v13 = *(a1 + 64);
  v12[2] = *(a1 + 48);
  v12[3] = v13;
  v14 = *(a1 + 32);
  *v12 = *(a1 + 16);
  v12[1] = v14;
  v15 = (a2 + v7[7]);
  *v15 = v11;
  v15[1] = v10;
  *(a2 + v7[8]) = v9;
  *(a2 + v7[9]) = v5;

  return result;
}

uint64_t TextDetectorResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D8B13240();
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v51 = *(a1 + 16);
  v52 = v9;
  v10 = *(a1 + 64);
  v53 = *(a1 + 48);
  v54 = v10;
  v11 = *(a1 + 80);
  v12 = *(v50 + 16);
  v12(v8, v3, v6);
  v13 = type metadata accessor for TextDetectorResult(0);
  v14 = *(v3 + v13[5]);
  v15 = (v3 + v13[7]);
  v16 = *(v3 + v13[8]);
  v17 = *(v3 + v13[10]);
  v18 = *(v3 + v13[11]);
  v19 = *v15;
  v20 = v15[1];
  v21 = v3 + v13[12];
  v22 = *v21;
  v49 = *(v21 + 8);
  v23 = *(v21 + 16);
  v47 = v19;
  v48 = v23;
  v12(a2, v8, v6);
  *&a2[v13[5]] = v14;
  v24 = &a2[v13[6]];
  v25 = v52;
  *v24 = v51;
  *(v24 + 1) = v25;
  v26 = v54;
  *(v24 + 2) = v53;
  *(v24 + 3) = v26;
  v27 = &a2[v13[7]];
  *v27 = v47;
  *(v27 + 1) = v20;
  *&a2[v13[8]] = v16;
  *&a2[v13[9]] = v11;
  *&a2[v13[10]] = v17;
  *&a2[v13[11]] = v18;
  v28 = v22;
  v29 = v22;

  v30 = sub_1D8A9FD8C(v18);
  v32 = sub_1D881BE2C(400, v30, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = MEMORY[0x1DA71EF10](v32, v34, v36, v38);
  v41 = v40;

  result = (*(v50 + 8))(v8, v6);
  v43 = &a2[v13[13]];
  *v43 = v39;
  *(v43 + 1) = v41;
  v44 = &a2[v13[12]];
  v45 = v48;
  v46 = v49;
  *v44 = v29;
  *(v44 + 1) = v46;
  *(v44 + 2) = v45;
  return result;
}

double ObjectDetectorResult.modifyWithRotation(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D8B13240();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for ObjectDetectorResult(0);
  v7 = v6[6];
  v8 = *(v2 + v6[5]);
  v9 = *(v2 + v7 + 16);
  v22 = *(v2 + v7);
  v23 = v9;
  v10 = *(v2 + v7 + 48);
  v24 = *(v2 + v7 + 32);
  v25 = v10;
  v20 = *(v2 + v6[8]);
  v21 = v4;
  sub_1D8A5A9D8(&v21, &v20, v26);
  v11 = (v2 + v6[7]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + v6[9]);
  *(a2 + v6[5]) = v8;
  v15 = (a2 + v6[6]);
  v16 = v26[1];
  *v15 = v26[0];
  v15[1] = v16;
  v17 = v26[3];
  v15[2] = v26[2];
  v15[3] = v17;
  v18 = (a2 + v6[7]);
  *v18 = v13;
  v18[1] = v12;
  *(a2 + v6[8]) = v4;
  *(a2 + v6[9]) = v14;

  return result;
}

uint64_t TextDetectorResult.modifyWithRotation(_:)@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D8B13240();
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(v48 + 16);
  v10(v8, v3, v6);
  v11 = type metadata accessor for TextDetectorResult(0);
  v12 = v11[6];
  v13 = *(v3 + v11[5]);
  v14 = *(v3 + v12 + 16);
  v51 = *(v3 + v12);
  v52 = v14;
  v15 = *(v3 + v12 + 48);
  v53 = *(v3 + v12 + 32);
  v54 = v15;
  v50 = v9;
  v49 = *(v3 + v11[8]);
  sub_1D8A5A9D8(&v50, &v49, v55);
  v16 = (v3 + v11[7]);
  v17 = v16[1];
  v45 = *v16;
  v18 = *(v3 + v11[9]);
  v19 = *(v3 + v11[10]);
  v20 = *(v3 + v11[11]);
  v21 = v3 + v11[12];
  v22 = *v21;
  v47 = *(v21 + 8);
  v46 = *(v21 + 16);
  v10(a2, v8, v6);
  *&a2[v11[5]] = v13;
  v23 = &a2[v11[6]];
  v24 = v55[1];
  *v23 = v55[0];
  *(v23 + 1) = v24;
  v25 = v55[3];
  *(v23 + 2) = v55[2];
  *(v23 + 3) = v25;
  v26 = &a2[v11[7]];
  *v26 = v45;
  *(v26 + 1) = v17;
  *&a2[v11[8]] = v9;
  *&a2[v11[9]] = v18;
  *&a2[v11[10]] = v19;
  *&a2[v11[11]] = v20;
  v27 = v22;
  v28 = v22;

  v29 = sub_1D8A9FD8C(v20);
  v31 = sub_1D881BE2C(400, v29, v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = MEMORY[0x1DA71EF10](v31, v33, v35, v37);
  v40 = v39;

  result = (*(v48 + 8))(v8, v6);
  v42 = &a2[v11[13]];
  *v42 = v38;
  *(v42 + 1) = v40;
  v43 = &a2[v11[12]];
  v44 = v47;
  *v43 = v28;
  *(v43 + 1) = v44;
  *(v43 + 2) = v46;
  return result;
}

uint64_t sub_1D8A990D8()
{
  v0 = sub_1D87C4264(&unk_1F5428C58);
  result = swift_arrayDestroy();
  qword_1ECA68970 = v0;
  return result;
}

__n128 ObjectDetectorResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ObjectDetectorResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double ObjectDetectorResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ObjectDetectorResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t ObjectDetectorResult.safeAreaPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECA62278 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECA68970;
  v4 = type metadata accessor for ObjectDetectorResult(0);
  result = sub_1D89A4644(*(v1 + *(v4 + 28)), *(v1 + *(v4 + 28) + 8), v3);
  if (result)
  {
    v6 = 1;
  }

  else
  {
    v6 = 1065353216;
  }

  *a1 = v6;
  *(a1 + 4) = result & 1;
  return result;
}

uint64_t sub_1D8A99288()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C6562616CLL;
  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656469666E6F63;
  if (v1 != 1)
  {
    v5 = 0x7372656E726F63;
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

uint64_t sub_1D8A99348@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8AA1D1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A99370(uint64_t a1)
{
  v2 = sub_1D8A9FED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A993AC(uint64_t a1)
{
  v2 = sub_1D8A9FED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectDetectorResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68998, &qword_1D8B3B0E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FED4();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for ObjectDetectorResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 3;
    sub_1D8B16A90();
    *&v16 = *(v3 + *(v9 + 32));
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ObjectDetectorResult.hash(into:)(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v2 = type metadata accessor for ObjectDetectorResult(0);
  sub_1D8B16D60();
  v3 = (v1 + v2[6]);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  sub_1D8818B80(*v3, v3[1]);
  sub_1D8818B80(v4, v5);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  sub_1D8B15A60();
  v10 = *(v1 + v2[8]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1DA720250](*&v10);
  v11 = *(v1 + v2[9]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v11);
}

void ObjectDetectorResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1D8B13240();
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689B8, &qword_1D8B3B0E8);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FED4();
  v34 = v9;
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v28 = a1;
    v13 = v12;
    v14 = v30;
    LOBYTE(v38) = 0;
    sub_1D8A9FF28(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v15 = v31;
    v16 = v32;
    sub_1D8B16A10();
    (*(v14 + 32))(v13, v15, v4);
    LOBYTE(v38) = 1;
    sub_1D8B169F0();
    *(v13 + v10[5]) = v17;
    v37 = 2;
    sub_1D881BC34();
    sub_1D8B16A10();
    v18 = v28;
    v19 = v33;
    v20 = (v13 + v10[6]);
    v21 = v39;
    *v20 = v38;
    v20[1] = v21;
    v22 = v41;
    v20[2] = v40;
    v20[3] = v22;
    LOBYTE(v36) = 3;
    v23 = sub_1D8B169C0();
    v24 = (v13 + v10[7]);
    *v24 = v23;
    v24[1] = v25;
    v35 = 4;
    sub_1D88913B8();
    sub_1D8B16A10();
    *(v13 + v10[8]) = v36;
    LOBYTE(v36) = 5;
    sub_1D8B169E0();
    v27 = v26;
    (*(v19 + 8))(v34, v16);
    *(v13 + v10[9]) = v27;
    sub_1D8AA006C(v13, v29, type metadata accessor for ObjectDetectorResult);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_1D8AA00D4(v13, type metadata accessor for ObjectDetectorResult);
  }
}

double sub_1D8A99CD0@<D0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = sub_1D8B13240();
  (*(*(v8 - 8) + 16))(a3, v5, v8);
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v12 = *(v5 + v11);
  v14 = *(v5 + v10);
  v13 = *(v5 + v10 + 8);
  *(a3 + a2[5]) = *(v5 + a2[5]);
  v15 = (a3 + v9);
  *v15 = v18;
  v15[1] = v19;
  v15[2] = v20;
  v15[3] = v21;
  v16 = (a3 + v10);
  *v16 = v14;
  v16[1] = v13;
  *(a3 + v11) = v12;
  *(a3 + a2[9]) = v7;

  return result;
}

uint64_t sub_1D8A99DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1ECA62278 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  result = sub_1D89A4644(*(v2 + *(a1 + 28)), *(v2 + *(a1 + 28) + 8), qword_1ECA68970);
  if (result)
  {
    v5 = 1;
  }

  else
  {
    v5 = 1065353216;
  }

  *a2 = v5;
  *(a2 + 4) = result & 1;
  return result;
}

unint64_t sub_1D8A99ED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8AA0EE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8A99F08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE900000000000073;
  v6 = 0x65676175676E616CLL;
  if (v2 != 6)
  {
    v6 = 0x73656E696CLL;
    v5 = 0xE500000000000000;
  }

  v7 = 0xED0000656C676E41;
  v8 = 0x6E6F697461746F72;
  if (v2 != 4)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7372656E726F63;
  if (v2 != 2)
  {
    v10 = 0x6C6562616CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x6E656469666E6F63;
    v3 = 0xEA00000000006563;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1D8A9A010()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x65676175676E616CLL;
  if (v1 != 6)
  {
    v3 = 0x73656E696CLL;
  }

  v4 = 0x6E6F697461746F72;
  if (v1 != 4)
  {
    v4 = 0x6D617473656D6974;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7372656E726F63;
  if (v1 != 2)
  {
    v5 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D8A9A114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8AA0EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A9A13C(uint64_t a1)
{
  v2 = sub_1D8A9FFC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A9A178(uint64_t a1)
{
  v2 = sub_1D8A9FFC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextDetectorResult.Line.transcript.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TextDetectorResult.Line.language.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t static TextDetectorResult.Line.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v6 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

uint64_t sub_1D8A9A2D0()
{
  v1 = 0x697263736E617274;
  if (*v0 != 1)
  {
    v1 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656469666E6F63;
  }
}

uint64_t sub_1D8A9A330@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8AA1F24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A9A358(uint64_t a1)
{
  v2 = sub_1D8A9FF70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A9A394(uint64_t a1)
{
  v2 = sub_1D8A9FF70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextDetectorResult.Line.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689D8, &qword_1D8B3B0F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = v1[1];
  v10[1] = v1[2];
  v10[2] = v8;
  v10[0] = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FF70();
  sub_1D8B16DD0();
  v13 = 0;
  sub_1D8B16AC0();
  if (!v2)
  {
    v12 = 1;
    sub_1D8B16A90();
    v11 = 2;
    sub_1D8B16A90();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TextDetectorResult.Line.hash(into:)(uint64_t a1)
{
  sub_1D8B16D60();
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t TextDetectorResult.Line.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D8B16D60();
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

void TextDetectorResult.Line.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689E8, &qword_1D8B3B0F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FF70();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = 0;
    sub_1D8B169F0();
    v10 = v9;
    v19 = 1;
    v11 = sub_1D8B169C0();
    v13 = v12;
    v17 = v11;
    v18 = 2;
    v14 = sub_1D8B169C0();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v17;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1D8A9A8E0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v6 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

uint64_t sub_1D8A9A998(uint64_t a1)
{
  sub_1D8B16D60();
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t sub_1D8A9AA18(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B16D60();
  sub_1D8B15A60();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t TextDetectorResult.BackingData.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    v3 = v1[1];
    v2 = v1[2];
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v3);
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x1DA720210](v2);
}

uint64_t TextDetectorResult.BackingData.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D8B16D20();
  if (v2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v1);
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA720210](v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9ABD8()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1D8B16D20();
  if (v2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v1);
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA720210](v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9AC5C(uint64_t a1)
{
  if (*v1)
  {
    v3 = v1[1];
    v2 = v1[2];
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v3);
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x1DA720210](v2);
}

uint64_t sub_1D8A9ACD0(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  sub_1D8B16D20();
  if (v3)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v2);
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1DA720210](v4);
  return sub_1D8B16D80();
}

__n128 TextDetectorResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextDetectorResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D8A9ADD0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

double TextDetectorResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for TextDetectorResult(0) + 32));
  *a1 = result;
  return result;
}

double TextDetectorResult.languages.getter()
{
  type metadata accessor for TextDetectorResult(0);

  return result;
}

double TextDetectorResult.lines.getter()
{
  type metadata accessor for TextDetectorResult(0);

  return result;
}

id TextDetectorResult.backing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextDetectorResult(0) + 48));
  v4 = *(v3 + 2);
  v5 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v4;

  return v5;
}

__n128 TextDetectorResult.init(id:confidence:corners:label:rotationAngle:timestamp:languages:lines:backing:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>)
{
  v20 = *a5;
  v46 = *a8;
  v45 = a8[1].n128_u64[0];
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a9, a1, v21);
  v23 = type metadata accessor for TextDetectorResult(0);
  *(a9 + v23[5]) = a10;
  v24 = (a9 + v23[6]);
  v25 = a2[1];
  *v24 = *a2;
  v24[1] = v25;
  v26 = a2[3];
  v24[2] = a2[2];
  v24[3] = v26;
  v27 = (a9 + v23[7]);
  *v27 = a3;
  v27[1] = a4;
  *(a9 + v23[8]) = v20;
  *(a9 + v23[9]) = a11;
  *(a9 + v23[10]) = a6;
  *(a9 + v23[11]) = a7;

  v29 = sub_1D8A9FD8C(v28);
  v31 = v30;

  v32 = sub_1D881BE2C(400, v29, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = MEMORY[0x1DA71EF10](v32, v34, v36, v38);
  v41 = v40;

  (*(v22 + 8))(a1, v21);
  v42 = (a9 + v23[13]);
  *v42 = v39;
  v42[1] = v41;
  v43 = (a9 + v23[12]);
  result = v46;
  *v43 = v46;
  v43[1].n128_u64[0] = v45;
  return result;
}

void TextDetectorResult.init(forPreviewOnlyWithConfidence:corners:label:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  sub_1D8B13230();
  v10 = type metadata accessor for TextDetectorResult(0);
  *(a4 + v10[5]) = a5;
  v11 = (a4 + v10[6]);
  v12 = a1[1];
  *v11 = *a1;
  v11[1] = v12;
  v13 = a1[3];
  v11[2] = a1[2];
  v11[3] = v13;
  v14 = (a4 + v10[7]);
  *v14 = a2;
  v14[1] = a3;
  *(a4 + v10[8]) = 0;
  *(a4 + v10[9]) = 0;
  *(a4 + v10[10]) = MEMORY[0x1E69E7CD0];
  v15 = MEMORY[0x1E69E7CC0];
  *(a4 + v10[11]) = MEMORY[0x1E69E7CC0];
  v16 = sub_1D8A9FD8C(v15);
  v18 = sub_1D881BE2C(400, v16, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = MEMORY[0x1DA71EF10](v18, v20, v22, v24);
  v27 = v26;

  v28 = (a4 + v10[13]);
  *v28 = v25;
  v28[1] = v27;
  v29 = (a4 + v10[12]);
  *v29 = 0;
  v29[1] = 0;
  v29[2] = 0;
}

void TextDetectorResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_1D8B13240();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA689F0, &qword_1D8B3B100);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v41 - v6;
  v8 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FFC4();
  v46 = v7;
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v43;
    LOBYTE(v49) = 0;
    sub_1D8A9FF28(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v12 = v44;
    sub_1D8B16A10();
    (*(v11 + 32))(v10, v12, v4);
    LOBYTE(v49) = 1;
    sub_1D8B169F0();
    *&v10[v8[5]] = v13;
    v54 = 2;
    sub_1D881BC34();
    sub_1D8B16A10();
    v14 = &v10[v8[6]];
    v15 = v50;
    *v14 = v49;
    *(v14 + 1) = v15;
    v16 = v52;
    *(v14 + 2) = v51;
    *(v14 + 3) = v16;
    LOBYTE(v48) = 3;
    v17 = sub_1D8B169C0();
    v18 = &v10[v8[7]];
    *v18 = v17;
    v18[1] = v19;
    v53 = 4;
    sub_1D88913B8();
    sub_1D8B16A10();
    *&v10[v8[8]] = v48;
    LOBYTE(v48) = 5;
    sub_1D8B169E0();
    *&v10[v8[9]] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A00, &qword_1D8B3B108);
    v53 = 6;
    sub_1D8AA0134(&qword_1ECA68A08, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1D8B16A10();
    v21 = a1;
    *&v10[v8[10]] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A10, &qword_1D8B3B110);
    v53 = 7;
    sub_1D8AA01A0(&qword_1ECA68A18, sub_1D8AA0018, MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    v22 = v45;
    *&v10[v8[11]] = v48;

    v24 = sub_1D8A9FD8C(v23);
    v44 = v10;
    v26 = v25;

    v27 = sub_1D881BE2C(400, v24, v26);
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = MEMORY[0x1DA71EF10](v27, v29, v31, v33);
    v36 = v35;

    (*(v22 + 8))(v46, v47);
    v37 = v44;
    v38 = &v44[v8[13]];
    *v38 = v34;
    v38[1] = v36;
    v39 = (v37 + v8[12]);
    v40 = v37;
    *v39 = 0;
    v39[1] = 0;
    v39[2] = 0;
    sub_1D8AA006C(v37, v42, type metadata accessor for TextDetectorResult);
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1D8AA00D4(v40, type metadata accessor for TextDetectorResult);
  }
}

uint64_t TextDetectorResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A28, &qword_1D8B3B118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9FFC4();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for TextDetectorResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 3;
    sub_1D8B16A90();
    *&v16 = *(v3 + v9[8]);
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
    *&v16 = *(v3 + v9[10]);
    v15 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A00, &qword_1D8B3B108);
    sub_1D8AA0134(&qword_1ECA68A30, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[11]);
    v15 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A10, &qword_1D8B3B110);
    sub_1D8AA01A0(&qword_1ECA68A38, sub_1D8AA0218, MEMORY[0x1E69E6300]);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TextDetectorResult.hash(into:)(__int128 *a1)
{
  sub_1D8B13240();
  sub_1D8A9FF28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for TextDetectorResult(0);
  sub_1D8B16D60();
  v4 = (v1 + v3[6]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8B15A60();
  v11 = *(v1 + v3[8]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v12 = *(v1 + v3[9]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1DA720250](*&v12);
  sub_1D8819418(a1, *(v1 + v3[10]));
  sub_1D87D0400(a1, *(v1 + v3[11]));
  v13 = (v1 + v3[12]);
  if (*v13)
  {
    v15 = v13[1];
    v14 = v13[2];
    MEMORY[0x1DA720210](1);
    sub_1D8B16410();
    MEMORY[0x1DA720210](v15);
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1DA720210](v14);

  return sub_1D8B15A60();
}

uint64_t sub_1D8A9BEA8(uint64_t (*a1)(void *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9BF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A9BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

float sub_1D8A9C000(uint64_t a1, uint64_t a2)
{
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  if (a2 <= 10000)
  {
    v7 = type metadata accessor for TextDetectorResult(0);
    v8 = sub_1D8A97FF0(*(v2 + *(v7 + 52)), *(v2 + *(v7 + 52) + 8), *(a1 + *(v7 + 52)), *(a1 + *(v7 + 52) + 8), 0x32, 0);
    v9 = sub_1D8B15A70();
    v10 = sub_1D8B15A70();
    if (v10 <= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v5 = 1.0 - (v8 / v11);
    v6 = 0.5;
    v4 = 0.5;
  }

  v31 = v4;
  type metadata accessor for TextDetectorResult(0);
  Corners.bounds.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  Corners.bounds.getter();
  v34.origin.x = v20;
  v34.origin.y = v21;
  v23 = v22;
  v25 = v24;
  v32.origin.x = v13;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  v34.size.width = v23;
  v34.size.height = v25;
  v33 = CGRectIntersection(v32, v34);
  width = v33.size.width;
  height = v33.size.height;
  IsNull = CGRectIsNull(v33);
  v29 = 0.0;
  if (!IsNull)
  {
    v29 = width * height / (v17 * v19 + v23 * v25 - width * height);
  }

  return (v5 * v6) + (v31 * v29);
}

char *sub_1D8A9C1C0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v139 = a6;
  v137 = a5;
  v138 = a4;
  v136 = a3;
  v141 = a2;
  v135 = a7;
  v134 = sub_1D8B13240();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v142 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a1;
  v9 = [a1 children];
  if (v9)
  {
    v10 = v9;
    sub_1D881F764(0, &qword_1EE0E3770, 0x1E69D9DE0);
    v11 = sub_1D8B15CF0();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = v11 & 0xFFFFFFFFFFFFFF8;
  v13 = v11 >> 62;
  if (v11 >> 62)
  {
LABEL_74:
    v14 = sub_1D8B16610();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = v11 & 0xC000000000000001;
  v15 = MEMORY[0x1E69E7CC0];
  v144 = v12;
  v16 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v17 = 0;
    while (2)
    {
      v18 = v17;
      while (1)
      {
        if (v145)
        {
          v19 = MEMORY[0x1DA71FC20](v18, v11);
        }

        else
        {
          if (v18 >= *(v12 + 16))
          {
            goto LABEL_71;
          }

          v19 = *(v11 + 8 * v18 + 32);
        }

        v20 = v19;
        v17 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v21 = [v19 recognizedLocale];
        if (v21)
        {
          break;
        }

        ++v18;
        if (v17 == v14)
        {
          goto LABEL_22;
        }
      }

      v22 = v21;
      v23 = sub_1D8B15970();
      v25 = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D87C8284(0, *(v15 + 2) + 1, 1, v15);
      }

      v27 = *(v15 + 2);
      v26 = *(v15 + 3);
      if (v27 >= v26 >> 1)
      {
        v15 = sub_1D87C8284((v26 > 1), v27 + 1, 1, v15);
      }

      *(v15 + 2) = v27 + 1;
      v28 = &v15[16 * v27];
      *(v28 + 4) = v23;
      *(v28 + 5) = v25;
      v12 = v144;
      if (v17 != v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
  v140 = sub_1D87C4264(v15);

  v29 = [v143 text];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D8B15970();
    v33 = v32;

    if (!v13)
    {
LABEL_24:
      v34 = *(v12 + 16);
      goto LABEL_27;
    }
  }

  else
  {
    v31 = 0;
    v33 = 0;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  v34 = sub_1D8B16610();
LABEL_27:
  v35 = v16;
  v128 = v34 & ~(v34 >> 63);
  if (v34)
  {
    *&v148[0] = v16;
    result = sub_1D87F47F0(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v37 = 0;
    v38 = *&v148[0];
    do
    {
      if (v145)
      {
        v39 = MEMORY[0x1DA71FC20](v37, v11);
      }

      else
      {
        v39 = *(v11 + 8 * v37 + 32);
      }

      v40 = v39;
      [v39 rawConfidence];
      v42 = v41;

      *&v148[0] = v38;
      v13 = *(v38 + 16);
      v43 = *(v38 + 24);
      v44 = v13 + 1;
      if (v13 >= v43 >> 1)
      {
        sub_1D87F47F0((v43 > 1), v13 + 1, 1);
        v38 = *&v148[0];
      }

      ++v37;
      *(v38 + 16) = v44;
      *(v38 + 4 * v13 + 32) = v42 / v34;
    }

    while (v34 != v37);
  }

  else
  {
    v44 = *(v16 + 16);
    if (!v44)
    {
      v46 = 0.0;
      goto LABEL_46;
    }

    v38 = v16;
  }

  if (v44 <= 7)
  {
    v45 = 0;
    v46 = 0.0;
LABEL_44:
    v49 = v44 - v45;
    v50 = 4 * v45 + 32;
    do
    {
      v46 = v46 + *(v38 + v50);
      v50 += 4;
      --v49;
    }

    while (v49);
    goto LABEL_46;
  }

  v45 = v44 & 0xFFFFFFFFFFFFFFF8;
  v47 = v38 + 48;
  v46 = 0.0;
  v48 = v44 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v46 = (((((((v46 + COERCE_FLOAT(*(v47 - 16))) + COERCE_FLOAT(HIDWORD(*(v47 - 16)))) + COERCE_FLOAT(*(v47 - 8))) + COERCE_FLOAT(HIDWORD(*(v47 - 16)))) + COERCE_FLOAT(*v47)) + COERCE_FLOAT(HIDWORD(*v47))) + COERCE_FLOAT(*(v47 + 8))) + COERCE_FLOAT(HIDWORD(*v47));
    v47 += 32;
    v48 -= 8;
  }

  while (v48);
  if (v44 != v45)
  {
    goto LABEL_44;
  }

LABEL_46:

  *&v148[0] = 0;
  *(&v148[0] + 1) = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](91, 0xE100000000000000);
  *&v147[0] = v34;
  v51 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v51);

  MEMORY[0x1DA71EFA0](23389, 0xE200000000000000);
  *&v147[0] = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68A00, &qword_1D8B3B108);
  sub_1D881CF20(&unk_1EE0E3810, &qword_1ECA68A00, &qword_1D8B3B108, MEMORY[0x1E69E6508]);
  sub_1D87C12C0();
  v52 = sub_1D8B15C30();
  MEMORY[0x1DA71EFA0](v52);

  MEMORY[0x1DA71EFA0](23389, 0xE200000000000000);
  sub_1D8B16030();
  result = MEMORY[0x1DA71EFA0](5966429, 0xE300000000000000);
  if (v33)
  {
    MEMORY[0x1DA71EFA0](v31, v33);

    MEMORY[0x1DA71EFA0](93, 0xE100000000000000);
    v129 = *(&v148[0] + 1);
    v130 = *&v148[0];
    v53 = v143;
    v132 = [v141 rangeOfContentRegion_];
    v131 = v54;
    v55 = [v53 uuid];
    sub_1D8B13210();

    v56 = [v53 boundingQuad];
    if (!v56)
    {
      v56 = [objc_allocWithZone(MEMORY[0x1E69D9DD8]) initWithNormalizedBoundingBox:0.0 size:{0.0, 0.0, 0.0, 1.0, 1.0}];
    }

    type metadata accessor for CVCoordinator(0);
    [v56 topLeft];
    v143 = v57;
    v59 = v58;
    [v56 topRight];
    v61 = v60;
    v63 = v62;
    [v56 bottomLeft];
    v65 = v64;
    v67 = v66;
    [v56 bottomRight];
    v69 = v68;
    v71 = v70;

    *&v147[0] = v143;
    v147[1] = v59;
    v147[2] = v61;
    v147[3] = v63;
    v147[4] = v65;
    v147[5] = v67;
    v147[6] = v69;
    v147[7] = v71;
    Corners.bounds.getter();
    v12 = v138;
    v72 = v137;
    v73 = v139;
    sub_1D8A30194(v136, v139, v148, v74, v75, v76, v77);
    CameraSourceFrame.rotationAngle.getter(v73, v147);
    v78 = v147[0];
    v79 = CameraSourceFrame.timestamp.getter(v72, v73);
    if (!v34)
    {

      v81 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v98 = type metadata accessor for TextDetectorResult(0);
      v145 = swift_allocBox();
      v100 = v99;
      v101 = v133;
      v102 = v134;
      (*(v133 + 16))(v99, v142, v134);
      *(v100 + v98[5]) = v46;
      v103 = (v100 + v98[6]);
      v104 = v148[3];
      v105 = v148[2];
      v106 = v148[1];
      *v103 = v148[0];
      v103[1] = v106;
      v103[2] = v105;
      v103[3] = v104;
      v107 = (v100 + v98[7]);
      v108 = v129;
      *v107 = v130;
      v107[1] = v108;
      *(v100 + v98[8]) = v78;
      *(v100 + v98[9]) = v79;
      *(v100 + v98[10]) = v140;
      *(v100 + v98[11]) = v81;
      v109 = v141;
      v110 = v141;

      v112 = sub_1D8A9FD8C(v111);
      v114 = v113;

      v115 = sub_1D881BE2C(400, v112, v114);
      v117 = v116;
      v119 = v118;
      v121 = v120;

      v122 = MEMORY[0x1DA71EF10](v115, v117, v119, v121);
      v124 = v123;

      result = (*(v101 + 8))(v142, v102);
      v125 = (v100 + v98[13]);
      *v125 = v122;
      v125[1] = v124;
      v126 = (v100 + v98[12]);
      v127 = v132;
      *v126 = v109;
      v126[1] = v127;
      v126[2] = v131;
      *v135 = v145 | 0x5000000000000000;
      return result;
    }

    v146 = v35;
    result = sub_1D87F4F30(0, v128, 0);
    if ((v34 & 0x8000000000000000) == 0)
    {
      v80 = 0;
      v81 = v146;
      v143 = *MEMORY[0x1E69778B0];
      do
      {
        if (v145)
        {
          v82 = MEMORY[0x1DA71FC20](v80, v11);
        }

        else
        {
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_72;
          }

          if (v80 >= *(v144 + 16))
          {
            goto LABEL_73;
          }

          v82 = *(v11 + 8 * v80 + 32);
        }

        v83 = v82;
        [v82 rawConfidence];
        v85 = v84;
        v86 = [v83 text];
        if (v86)
        {
          v87 = v86;
          v12 = sub_1D8B15970();
          v13 = v88;
        }

        else
        {
          v12 = 0;
          v13 = 0xE000000000000000;
        }

        v89 = [v83 recognizedLocale];
        if (v89)
        {
          v90 = v89;
          v91 = sub_1D8B15970();
          v93 = v92;

          v83 = v90;
        }

        else
        {
          v91 = sub_1D8B15970();
          v93 = v94;
        }

        v146 = v81;
        v96 = *(v81 + 16);
        v95 = *(v81 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_1D87F4F30((v95 > 1), v96 + 1, 1);
          v81 = v146;
        }

        *(v81 + 16) = v96 + 1;
        v97 = v81 + 40 * v96;
        *(v97 + 32) = v85;
        ++v80;
        *(v97 + 40) = v12;
        *(v97 + 48) = v13;
        *(v97 + 56) = v91;
        *(v97 + 64) = v93;
      }

      while (v34 != v80);

      goto LABEL_68;
    }

    goto LABEL_76;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_1D8A9CD08()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

id sub_1D8A9CD38(char a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E6984628]) init];
    [v1 setRecognitionLevel_];
    v2 = [objc_opt_self() preferredLanguages];
    if (!v2)
    {
      sub_1D8B15CF0();
      v2 = sub_1D8B15CD0();
    }

    [v1 setRecognitionLanguages_];

    [v1 setUsesAlternateLineGrouping_];
    [v1 setUsesLanguageDetection_];
    LODWORD(v3) = 1008981770;
    [v1 setMinimumTextHeight_];
    [v1 setKeepResourcesLoaded_];
    v12[0] = 0;
    if ([v1 setRevision:1 error:v12])
    {
      v4 = v12[0];
      return v1;
    }

    v10 = v12[0];
    v6 = sub_1D8B12EB0();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E6984630]) init];
    v12[0] = 0;
    v5 = [v1 setRevision:3737841667 error:v12];
    v6 = v12[0];
    if (v5)
    {
      v7 = v12[0];
      v8 = sub_1D8B15CD0();
      [v1 setTargetedIdentifiers_];

      return v1;
    }
  }

  v11 = v6;
  sub_1D8B12EB0();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_1D8A9CFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v53 = a7;
  v51 = a6;
  v52 = a3;
  v50 = a2;
  v9 = [a1 description];
  v10 = sub_1D8B15970();
  v12 = v11;

  if ((a5 & 1) == 0)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = v38;
      v40 = a1;
      v41 = [v39 results];
      if (v41)
      {
        v42 = v41;

        sub_1D881F764(0, &qword_1ECA68B00, 0x1E6984638);
        v43 = sub_1D8B15CF0();

        MEMORY[0x1EEE9AC00](v44);
        v48[2] = v51;
        v48[3] = v53;
        v48[4] = v50;
        v48[5] = v52;
        v12 = sub_1D8865524(sub_1D8AA227C, v48, v43);

        return v12;
      }

      goto LABEL_30;
    }

LABEL_31:
    sub_1D88C53E4();
    swift_allocError();
    *v45 = v10;
    *(v45 + 8) = v12;
    *(v45 + 16) = 1;
    swift_willThrow();
    return v12;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = v13;
  v49 = a1;
  v15 = [v14 results];
  if (!v15)
  {
LABEL_30:

    goto LABEL_31;
  }

  v16 = v15;

  sub_1D881F764(0, &unk_1ECA68B08, 0x1E69844F0);
  v17 = sub_1D8B15CF0();

  v64 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    goto LABEL_38;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = 0;
    v57 = v17 & 0xFFFFFFFFFFFFFF8;
    v58 = v17 & 0xC000000000000001;
    v55 = v17;
    v56 = v17 + 32;
    v54 = v18;
    while (1)
    {
      if (v58)
      {
        v21 = MEMORY[0x1DA71FC20](v20, v17);
      }

      else
      {
        if (v20 >= *(v57 + 16))
        {
          goto LABEL_36;
        }

        v21 = *(v56 + 8 * v20);
      }

      v22 = v21;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v18 = sub_1D8B16610();
        goto LABEL_6;
      }

      v62 = [v21 getCRDocumentOutputRegion];
      v24 = sub_1D8A2C358();
      v25 = v24;
      if (v24 >> 62)
      {
        v26 = sub_1D8B16610();
        if (!v26)
        {
LABEL_26:

          v28 = v19;
          goto LABEL_8;
        }
      }

      else
      {
        v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_26;
        }
      }

      v63 = v19;
      sub_1D87F4CE0(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        goto LABEL_37;
      }

      v60 = v20;
      v61 = v26;
      v59 = v22;
      v27 = 0;
      v28 = v63;
      v29 = v25;
      v30 = v25 & 0xC000000000000001;
      v31 = v25;
      do
      {
        if (v30)
        {
          v32 = MEMORY[0x1DA71FC20](v27, v29);
        }

        else
        {
          v32 = *(v29 + 8 * v27 + 32);
        }

        v33 = v32;
        v63 = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        v36 = v62;
        if (v35 >= v34 >> 1)
        {
          sub_1D87F4CE0((v34 > 1), v35 + 1, 1);
          v28 = v63;
        }

        ++v27;
        *(v28 + 16) = v35 + 1;
        v37 = v28 + 16 * v35;
        *(v37 + 32) = v33;
        *(v37 + 40) = v36;
        v29 = v31;
      }

      while (v61 != v27);

      v18 = v54;
      v17 = v55;
      v19 = MEMORY[0x1E69E7CC0];
      v20 = v60;
LABEL_8:
      sub_1D88F6210(v28);
      if (v20 == v18)
      {
        v19 = v64;
        break;
      }
    }
  }

  v47 = sub_1D8A9872C(v19, v50, v52, v51, v53);

  return v47;
}

void sub_1D8A9D424(id *a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v101 = a4;
  v102 = a2;
  v99 = a3;
  v103 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v90 - v10;
  v12 = sub_1D8B13240();
  v100 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 labels];
  sub_1D881F764(0, &qword_1ECA68B18, 0x1E6984418);
  v17 = sub_1D8B15CF0();

  if (v17 >> 62)
  {
    v23 = sub_1D8B16610();
    v96 = v11;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_8:

    v11 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_9;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v96 = v11;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA71FC20](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      swift_once();
      goto LABEL_14;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;

  v21 = [v20 identifier];

  v11 = sub_1D8B15970();
  v6 = v22;

LABEL_9:
  if (qword_1ECA62278 != -1)
  {
    swift_once();
  }

  if (sub_1D89A4644(v11, v6, qword_1ECA68970))
  {
    v24 = type metadata accessor for ObjectDetectorResult(0);
    v97 = v11;
    v25 = v24;
    v96 = swift_allocBox();
    v98 = v6;
    v27 = v26;
    v28 = [v15 uuid];
    sub_1D8B13210();

    [v15 confidence];
    v95 = v29;
    v94 = type metadata accessor for CVCoordinator(0);
    [v15 boundingBox];
    x = v119.origin.x;
    width = v119.size.width;
    height = v119.size.height;
    v119.origin.y = 1.0 - v33 - v119.size.height;
    y = v119.origin.y;
    MinX = CGRectGetMinX(v119);
    v120.origin.x = x;
    v120.origin.y = y;
    v120.size.width = width;
    v120.size.height = height;
    MinY = CGRectGetMinY(v120);
    v121.origin.x = x;
    v121.origin.y = y;
    v121.size.width = width;
    v121.size.height = height;
    MaxX = CGRectGetMaxX(v121);
    v122.origin.x = x;
    v122.origin.y = y;
    v122.size.width = width;
    v122.size.height = height;
    v35 = CGRectGetMinY(v122);
    v123.origin.x = x;
    v123.origin.y = y;
    v123.size.width = width;
    v123.size.height = height;
    v36 = CGRectGetMinX(v123);
    v124.origin.x = x;
    v124.origin.y = y;
    v124.size.width = width;
    v124.size.height = height;
    MaxY = CGRectGetMaxY(v124);
    v125.origin.x = x;
    v125.origin.y = y;
    v125.size.width = width;
    v125.size.height = height;
    v38 = CGRectGetMaxX(v125);
    v126.origin.x = x;
    v126.origin.y = y;
    v126.size.width = width;
    v126.size.height = height;
    v39 = CGRectGetMaxY(v126);
    *&v104 = MinX;
    *(&v104 + 1) = MinY;
    *&v105 = MaxX;
    *(&v105 + 1) = v35;
    *&v106 = v36;
    *(&v106 + 1) = MaxY;
    *&v107 = v38;
    *(&v107 + 1) = v39;
    Corners.bounds.getter();
    v40 = v12;
    v41 = v101;
    sub_1D8A30194(v99, a5, &v114, v42, v43, v44, v45);
    CameraSourceFrame.rotationAngle.getter(a5, &v104);
    v46 = v104;
    v47 = CameraSourceFrame.timestamp.getter(v41, a5);
    (*(v100 + 32))(v27, v14, v40);
    *(v27 + v25[5]) = v95;
    v48 = (v27 + v25[6]);
    v50 = v116;
    v49 = v117;
    v51 = v115;
    *v48 = v114;
    v48[1] = v51;
    v48[2] = v50;
    v48[3] = v49;
    v52 = (v27 + v25[7]);
    v53 = v98;
    *v52 = v97;
    v52[1] = v53;
    *(v27 + v25[8]) = v46;
    *(v27 + v25[9]) = v47;
    v54 = v96 | 0x3000000000000000;
    goto LABEL_18;
  }

  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (sub_1D8B0AAA4())
  {
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_1D8B16720();

    *&v114 = 0xD000000000000018;
    *(&v114 + 1) = 0x80000001D8B48610;
    MEMORY[0x1DA71EFA0](v11, v6);
    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    v55 = [v15 uuid];
    sub_1D8B13210();

    sub_1D8A9FF28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v56 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v56);

    (*(v100 + 8))(v14, v12);
    v57 = *(&v114 + 1);
    v98 = v6;
    v99 = v114;
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    v58 = v6;
    MEMORY[0x1DA71EFA0](v11, v6);
    MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
    [v15 confidence];
    sub_1D8B16030();
    v59 = *(&v114 + 1);
    v100 = v114;
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_1D8B16720();

    *&v114 = 0x6420646573756E55;
    *(&v114 + 1) = 0xEF203A6E69616D6FLL;
    MEMORY[0x1DA71EFA0](v11, v58);
    v97 = v11;
    v60 = v114;
    v61 = CameraSourceFrame.timestamp.getter(v101, a5);
    v111 = MEMORY[0x1E69E6158];
    v112 = MEMORY[0x1E69E6160];
    v110 = v60;
    v113 = 3;
    v109[0] = v99;
    v109[1] = v57;
    *&v109[2] = v61;
    [v15 boundingBox];
    v62 = v127.origin.x;
    v63 = v127.size.width;
    v64 = v127.size.height;
    v127.origin.y = 1.0 - v65 - v127.size.height;
    v66 = v127.origin.y;
    v102 = CGRectGetMinX(v127);
    v128.origin.x = v62;
    v128.origin.y = v66;
    v128.size.width = v63;
    v128.size.height = v64;
    v101 = CGRectGetMinY(v128);
    v129.origin.x = v62;
    v129.origin.y = v66;
    v129.size.width = v63;
    v129.size.height = v64;
    v99 = CGRectGetMaxX(v129);
    v130.origin.x = v62;
    v130.origin.y = v66;
    v130.size.width = v63;
    v130.size.height = v64;
    v67 = CGRectGetMinY(v130);
    v131.origin.x = v62;
    v131.origin.y = v66;
    v131.size.width = v63;
    v131.size.height = v64;
    v68 = CGRectGetMinX(v131);
    v132.origin.x = v62;
    v132.origin.y = v66;
    v132.size.width = v63;
    v132.size.height = v64;
    v69 = CGRectGetMaxY(v132);
    v133.origin.x = v62;
    v133.origin.y = v66;
    v133.size.width = v63;
    v133.size.height = v64;
    v70 = CGRectGetMaxX(v133);
    v134.origin.x = v62;
    v134.origin.y = v66;
    v134.size.width = v63;
    v134.size.height = v64;
    v71 = CGRectGetMaxY(v134);
    *&v114 = v102;
    *(&v114 + 1) = v101;
    *&v115 = v99;
    *(&v115 + 1) = v67;
    *&v116 = v68;
    *(&v116 + 1) = v69;
    *&v117 = v70;
    *(&v117 + 1) = v71;
    Corners.bounds.getter();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 0.0, 0.8);
    LOBYTE(v104) = 1;
    *&v114 = v73;
    *(&v114 + 1) = v75;
    *&v115 = v77;
    *(&v115 + 1) = v79;
    *&v116 = 0x3F689374BC6A7EFALL;
    *(&v116 + 1) = GenericRGB;
    *&v117 = v100;
    *(&v117 + 1) = v59;
    memset(v118, 0, 24);
    v118[24] = 1;
    v81 = sub_1D8B15EA0();
    v82 = v96;
    (*(*(v81 - 8) + 56))(v96, 1, 1, v81);
    sub_1D88C4BD0(v109, &v104);
    v83 = swift_allocObject();
    v84 = v107;
    *(v83 + 64) = v106;
    *(v83 + 80) = v84;
    v85 = v105;
    *(v83 + 32) = v104;
    *(v83 + 48) = v85;
    *(v83 + 177) = *&v118[9];
    v86 = v117;
    *(v83 + 168) = *v118;
    v87 = v115;
    v88 = v116;
    *(v83 + 152) = v86;
    *(v83 + 136) = v88;
    *(v83 + 104) = v114;
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    *(v83 + 96) = v108;
    *(v83 + 120) = v87;
    v89 = v98;
    *(v83 + 200) = v97;
    *(v83 + 208) = v89;
    sub_1D88E0F34(&v114, &v104);
    sub_1D8891CA0(0, 0, v82, &unk_1D8B3BA30, v83);

    sub_1D88E0F90(&v114);
    sub_1D87DC9A0(v109);
  }

  else
  {
  }

  v54 = 0xF000000000000007;
LABEL_18:
  *v103 = v54;
}

uint64_t sub_1D8A9DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for BundleClassification.ClassificationType(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DDF8, 0, 0);
}

uint64_t sub_1D8A9DDF8()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 64) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DE90, v1, 0);
}

uint64_t sub_1D8A9DE90()
{
  sub_1D8A3B1F4(*(v0 + 16), 0x7463616669747261, 0xE900000000000073);

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DF14, 0, 0);
}

uint64_t sub_1D8A9DF14()
{
  v1 = *(v0 + 64);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9DF84, v1, 0);
}

uint64_t sub_1D8A9DF84()
{
  v11 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[3];
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v10[0] = v3[4];
  *(v10 + 9) = *(v3 + 73);
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v9, v6, v7);

  sub_1D8AA00D4(v2, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D8A9E064, v1, 0);
}

uint64_t sub_1D8A9E064()
{
  sub_1D8A3B67C(v0[4], v0[5]);

  v1 = v0[1];

  return v1();
}

void sub_1D8A9E0D0(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 pixelsWideRange];
  v5 = [v1 pixelsHighRange];
  v6 = [v1 idealImageFormat];
  v7 = [v4 idealDimension];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v5 idealDimension];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [v2 isOrientationAgnostic];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v2 idealOrientation];
  }

  v13 = [v2 aspectRatioHandling];
  if (v13 == 2)
  {
    GenericGray = CGColorCreateGenericGray(0.0, 0.0);

    goto LABEL_12;
  }

  if (v13 == 1)
  {

    GenericGray = 1;
LABEL_12:
    *a1 = v6;
    *(a1 + 4) = 0;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 52) = v12;
    *(a1 + 56) = v11;
    *(a1 + 64) = GenericGray;
    return;
  }

  if (!v13)
  {

    GenericGray = 0;
    goto LABEL_12;
  }

LABEL_15:
  type metadata accessor for VNSizeRangeAspectRatioHandling(0);
  sub_1D8B16C10();
  __break(1u);
}

uint64_t VisionProcessor.init(configuration:enabledDetectionType:)(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *a2;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  if (qword_1EE0E4370 != -1)
  {
    swift_once();
  }

  v9 = sub_1D8B151E0();
  v10 = __swift_project_value_buffer(v9, qword_1EE0E4378);
  (*(*(v9 - 8) + 16))(v2 + v8, v10, v9);
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
  *(v2 + v11) = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
  v12 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
  *v12 = v3;
  *(v12 + 8) = v4;
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType) = v7;
  return v2;
}

void sub_1D8A9E3A4(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0uLL;
  if (v3 != *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType))
  {
    v6 = 2;
    v5 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    goto LABEL_10;
  }

  v5 = 0uLL;
  v6 = 2;
  v7 = 0uLL;
  v8 = 0uLL;
  if (((1 << v3) & 0x3FD7) != 0)
  {
LABEL_10:
    *a2 = v4;
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 64) = v6;
    return;
  }

  v9 = a2;
  v10 = sub_1D8A9CD38(v3 != 3);
  v23 = &unk_1F544D1C8;
  v11 = [swift_dynamicCastObjCProtocolUnconditional() supportedImageSizeSet];

  sub_1D881F764(0, &unk_1ECA68B90, 0x1E6984690);
  v12 = sub_1D8B15CF0();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

    if (v3 != 5)
    {
      v4 = 0uLL;
      v6 = 2;
      v5 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      goto LABEL_15;
    }

    LOBYTE(v15[0]) = 0;
    strcpy(v17, "f024");
    *&v17[8] = vdupq_n_s64(0x560uLL);
    v18 = 0uLL;
    *&v17[24] = 0;
    LOBYTE(v19) = 0;
    DWORD1(v19) = 1;
    BYTE8(v19) = 0;
    v20 = 1;
LABEL_14:
    sub_1D88C5438(v17, v21);
    v4 = v21[0];
    v5 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v6 = v22;
LABEL_15:
    a2 = v9;
    goto LABEL_10;
  }

  if (!sub_1D8B16610())
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1DA71FC20](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_8:
    v14 = v13;

    sub_1D8A9E0D0(v15);

    v18 = v15[2];
    v19 = v15[3];
    v20 = v16;
    *v17 = v15[0];
    *&v17[16] = v15[1];
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1D8A9E5D4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20, &qword_1D8B32EA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for DetectionRequest(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_1D8AA1130(v10, v2);

  v12 = v11[2];
  if (!v12)
  {

    v13 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    return 0;
  }

  v13 = sub_1D87F3A18(v11[2], 0);
  v14 = sub_1D881788C(&v20, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v12, v11);
  result = sub_1D888A84C(v20);
  if (v14 != v12)
  {
    __break(1u);
    return result;
  }

  if (!v13[2])
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D8A305B4(v13, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_1D8A299A4(v5);
    return 0;
  }

  sub_1D8A12450(v5, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0, &qword_1D8B1E8A0);
  v16 = (type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v17 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D8B1AB90;
  v19 = (v18 + v17);
  sub_1D8AA006C(v9, v19 + v16[7], type metadata accessor for DetectionRequest);
  *v19 = v13;
  sub_1D8AA00D4(v9, type metadata accessor for DetectionRequest);
  return v18;
}

uint64_t sub_1D8A9E8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = a8;
  v9[11] = v8;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8A9E958, v8, 0);
}

uint64_t sub_1D8A9E958()
{
  v42 = v0;
  v41[1] = *MEMORY[0x1E69E9840];
  v1 = v0[11];
  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType);
  if (((1 << v2) & 0x3FD7) != 0)
  {
    v3 = v0[6];
    v4 = v0[3];
    v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v6 = type metadata accessor for CVProcessorTaskDescriptor(0);
    sub_1D8AA006C(v3 + *(v6 + 20), v4, type metadata accessor for DetectionRequest);
    *(v0[3] + *(type metadata accessor for DetectionResult(0) + 20)) = v5;
    v7 = v0[1];
    goto LABEL_4;
  }

  v9 = v2 != 3;
  v10 = v0[4];
  v11 = sub_1D8A26854(v0[7], v0[5], v0[9], v0[10]);
  v12 = sub_1D8A9CD38(v9);
  v13 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D8B23DF0;
  *(v14 + 32) = v12;
  sub_1D881F764(0, &qword_1EE0E3690, 0x1E6984658);
  v15 = v12;
  v16 = sub_1D8B15CD0();

  v0[2] = 0;
  LODWORD(v11) = [v13 performRequests:v16 onCVPixelBuffer:v10 orientation:v11 error:v0 + 2];

  v17 = v0[2];
  if (v11)
  {
    v18 = qword_1EE0E54C0;
    v19 = v17;
    if (v18 != -1)
    {
      goto LABEL_28;
    }

    while (1)
    {
      if (sub_1D8B0AAA4())
      {
        v20 = [v15 results];

        if (v20)
        {
          v21 = v0[11];
          v22 = v0[5];
          sub_1D881F764(0, &unk_1ECA68AF0, 0x1E69845D8);
          v39 = *(v0 + 9);
          v23 = sub_1D8B15CF0();

          v24 = swift_task_alloc();
          *(v24 + 16) = v39;
          *(v24 + 32) = v21;
          *(v24 + 40) = v22;
          sub_1D8965BE8(sub_1D8AA2048, v24, v23);
        }
      }

      else
      {
      }

      v26 = v0[10];
      v28 = v0[8];
      v27 = v0[9];
      v29 = v0[5];

      v31 = sub_1D8A9CFA4(v15, v29, v28, v30, v9, v27, v26);

      v32 = *(v31 + 2);
      if (!v32)
      {
        break;
      }

      v33 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      while (v33 < *(v31 + 2))
      {
        v41[0] = *&v31[8 * v33 + 32];

        v34 = sub_1D8AA16CC(v41, v9);
        v35 = v41[0];
        if (v34)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D87F43E0(0, *(v5 + 16) + 1, 1);
          }

          v36 = *(v5 + 16);
          v37 = *(v5 + 24);
          v38 = v36 + 1;
          if (v36 >= v37 >> 1)
          {
            v40 = *(v5 + 16);
            sub_1D87F43E0((v37 > 1), v36 + 1, 1);
            v36 = v40;
          }

          *(v5 + 16) = v38;
          *(v5 + 8 * v36 + 32) = v35;
        }

        else
        {
        }

        if (v32 == ++v33)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_28:
      swift_once();
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v3 = v0[6];
    v4 = v0[3];

    goto LABEL_3;
  }

  v25 = v17;

  sub_1D8B12EB0();
  swift_willThrow();

  v7 = v0[1];
LABEL_4:

  return v7();
}

void sub_1D8A9EE54(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v44 = a3;
  v42 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v47 = a4;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = v8;
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_1D8B13240();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = objc_opt_self();
  v49 = 0;
  v18 = [v17 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v49];
  v19 = v49;
  if (v18)
  {
    v20 = sub_1D8B13050();
    v40 = v21;
    v41 = v20;

    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1D8B16720();
    v48 = *(v42 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType);
    v22 = CVDetection.DetectionType.description.getter();
    v42 = v5;
    v24 = v23;

    v49 = v22;
    v50 = v24;
    MEMORY[0x1DA71EFA0](0x726573624F4E562DLL, 0xEF2D6E6F69746176);
    v25 = [v16 uuid];
    sub_1D8B13210();

    sub_1D8A9FF28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v26);

    (*(v13 + 8))(v15, v12);
    v27 = v49;
    v28 = v50;
    v29 = sub_1D8B15EA0();
    (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
    v30 = v45;
    v31 = v47;
    (*(v7 + 16))(v45, v44, v47);
    v32 = (*(v7 + 80) + 64) & ~*(v7 + 80);
    v33 = (v43 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    v35 = v46;
    *(v34 + 4) = v31;
    *(v34 + 5) = v35;
    *(v34 + 6) = v27;
    *(v34 + 7) = v28;
    (*(v7 + 32))(&v34[v32], v30, v31);
    v36 = &v34[v33];
    v37 = v40;
    *v36 = v41;
    v36[1] = v37;
    sub_1D8891CA0(0, 0, v11, &unk_1D8B3BA08, v34);
  }

  else
  {
    v38 = v19;
    v39 = sub_1D8B12EB0();

    swift_willThrow();
  }
}

uint64_t sub_1D8A9F2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for BundleClassification.ClassificationType(0);
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F33C, 0, 0);
}

uint64_t sub_1D8A9F33C()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 56) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F3D4, v1, 0);
}

uint64_t sub_1D8A9F3D4()
{
  sub_1D8A3B1F4(*(v0 + 16), 0x7463616669747261, 0xE900000000000073);

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F458, 0, 0);
}

uint64_t sub_1D8A9F458()
{
  v1 = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A9F4C8, v1, 0);
}

uint64_t sub_1D8A9F4C8()
{
  v10 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[3];
  v8[2] = v2[2];
  v8[3] = v3;
  v9[0] = v2[4];
  *(v9 + 9) = *(v2 + 73);
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B420(v8, v5, v6);

  sub_1D8AA00D4(v1, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D8A271D8, 0, 0);
}

uint64_t VisionProcessor.deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VisionProcessor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 sub_1D8A9F6D4@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8A9E3A4(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D8A9F74C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8AA1468();
}

uint64_t sub_1D8A9F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D8864FBC;

  return sub_1D8A9E8B8(a1, a2, a3, a4, a5, a6, a7, a8);
}

unint64_t *sub_1D8A9F8E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1D8AA0F2C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

BOOL _s22VisualIntelligenceCore18TextDetectorResultV11BackingDataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
  v8 = v3;
  v9 = v2;
  v10 = sub_1D8B16400();

  v12 = v4 == v6 && v5 == v7;
  return (v10 & 1) != 0 && v12;
}

uint64_t _s22VisualIntelligenceCore18TextDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TextDetectorResult(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = (a1 + *(v4 + 24));
  v7 = v6[3];
  v36[2] = v6[2];
  v36[3] = v7;
  v8 = v6[1];
  v36[0] = *v6;
  v36[1] = v8;
  v9 = (a2 + *(v4 + 24));
  v10 = v9[1];
  v35[0] = *v9;
  v35[1] = v10;
  v11 = v9[3];
  v35[2] = v9[2];
  v35[3] = v11;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v36, v35))
  {
    return 0;
  }

  v12 = v5[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]) || (sub_1D894DBC4(*(a1 + v5[10]), *(a2 + v5[10])) & 1) == 0 || (sub_1D88E351C(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[12];
  v17 = a1 + v16;
  v18 = *(a1 + v16);
  v19 = a2 + v16;
  v20 = *v19;
  if (v18)
  {
    if (v20)
    {
      v22 = *(v17 + 8);
      v21 = *(v17 + 16);
      v24 = *(v19 + 8);
      v23 = *(v19 + 16);
      sub_1D881F764(0, &qword_1EE0E36A0, 0x1E69E58C0);
      v25 = v18;
      v26 = v20;
      v27 = v25;
      v28 = v26;
      v29 = sub_1D8B16400();

      result = 0;
      if ((v29 & 1) == 0 || v22 != v24 || v21 != v23)
      {
        return result;
      }

      goto LABEL_20;
    }

    return 0;
  }

  if (v20)
  {
    return 0;
  }

LABEL_20:
  v31 = v5[13];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if (v32 == *v34 && v33 == v34[1])
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

BOOL _s22VisualIntelligenceCore20ObjectDetectorResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D8B13200() & 1) != 0 && (v4 = type metadata accessor for ObjectDetectorResult(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, v6 = (a1 + *(v4 + 24)), v7 = v6[3], v18[2] = v6[2], v18[3] = v7, v8 = v6[1], v18[0] = *v6, v18[1] = v8, v9 = (a2 + *(v4 + 24)), v10 = v9[1], v17[0] = *v9, v17[1] = v10, v11 = v9[3], v17[2] = v9[2], v17[3] = v11, _s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v18, v17)) && ((v12 = v5[7], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_1D8B16BA0()) && *(a1 + v5[8]) == *(a2 + v5[8]))
  {
    return *(a1 + v5[9]) == *(a2 + v5[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A9FD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1D87F3F54((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 5;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v9 = sub_1D8B15810();

  return v9;
}

unint64_t sub_1D8A9FED4()
{
  result = qword_1ECA689A0;
  if (!qword_1ECA689A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689A0);
  }

  return result;
}

uint64_t sub_1D8A9FF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8A9FF70()
{
  result = qword_1ECA689E0;
  if (!qword_1ECA689E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689E0);
  }

  return result;
}

unint64_t sub_1D8A9FFC4()
{
  result = qword_1ECA689F8;
  if (!qword_1ECA689F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA689F8);
  }

  return result;
}

unint64_t sub_1D8AA0018()
{
  result = qword_1ECA68A20;
  if (!qword_1ECA68A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A20);
  }

  return result;
}

uint64_t sub_1D8AA006C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8AA00D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8AA0134(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68A00, &qword_1D8B3B108);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8AA01A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68A10, &qword_1D8B3B110);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8AA0218()
{
  result = qword_1ECA68A40;
  if (!qword_1ECA68A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A40);
  }

  return result;
}

uint64_t sub_1D8AA026C(void *a1)
{
  a1[1] = sub_1D8A9FF28(&unk_1ECA68A50, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
  a1[2] = sub_1D8A9FF28(&qword_1ECA680F0, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
  a1[3] = sub_1D8A9FF28(&qword_1ECA68A60, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
  result = sub_1D8A9FF28(&qword_1ECA68A68, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
  a1[4] = result;
  return result;
}

unint64_t sub_1D8AA038C()
{
  result = qword_1ECA68A78;
  if (!qword_1ECA68A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A78);
  }

  return result;
}

unint64_t sub_1D8AA03E4()
{
  result = qword_1ECA68A80;
  if (!qword_1ECA68A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68A80);
  }

  return result;
}

uint64_t sub_1D8AA0438(void *a1)
{
  a1[1] = sub_1D8A9FF28(&unk_1EE0E5FD0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
  a1[2] = sub_1D8A9FF28(&qword_1EE0E5FF8, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
  a1[3] = sub_1D8A9FF28(&qword_1EE0E5FF0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
  result = sub_1D8A9FF28(&qword_1EE0E5FC8, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8AA057C(uint64_t a1)
{
  result = sub_1D8B13240();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D8B13240();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1D8AA07C0(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8AA08A0();
    if (v2 <= 0x3F)
    {
      sub_1D8AA08F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8AA08A0()
{
  if (!qword_1EE0E3820)
  {
    v0 = sub_1D8B16080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3820);
    }
  }
}

void sub_1D8AA08F8()
{
  if (!qword_1EE0E39B8)
  {
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E39B8);
    }
  }
}

uint64_t sub_1D8AA0958(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8AA09A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1D8AA0A00(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1D8AA0A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 24);
  v9 = *(a3 + 32);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = v9;
  return v8(a1, a2, v12, a4, a5, a6, a7);
}

uint64_t sub_1D8AA0AB0(uint64_t a1)
{
  result = sub_1D8B151E0();
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

unint64_t sub_1D8AA0BCC()
{
  result = qword_1ECA68AA8;
  if (!qword_1ECA68AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AA8);
  }

  return result;
}

unint64_t sub_1D8AA0C24()
{
  result = qword_1ECA68AB0;
  if (!qword_1ECA68AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AB0);
  }

  return result;
}

unint64_t sub_1D8AA0C7C()
{
  result = qword_1ECA68AB8;
  if (!qword_1ECA68AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AB8);
  }

  return result;
}

unint64_t sub_1D8AA0CD4()
{
  result = qword_1ECA68AC0;
  if (!qword_1ECA68AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AC0);
  }

  return result;
}

unint64_t sub_1D8AA0D2C()
{
  result = qword_1ECA68AC8;
  if (!qword_1ECA68AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AC8);
  }

  return result;
}

unint64_t sub_1D8AA0D84()
{
  result = qword_1ECA68AD0;
  if (!qword_1ECA68AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AD0);
  }

  return result;
}

unint64_t sub_1D8AA0DDC()
{
  result = qword_1ECA68AD8;
  if (!qword_1ECA68AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AD8);
  }

  return result;
}

unint64_t sub_1D8AA0E34()
{
  result = qword_1ECA68AE0;
  if (!qword_1ECA68AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AE0);
  }

  return result;
}

unint64_t sub_1D8AA0E8C()
{
  result = qword_1ECA68AE8;
  if (!qword_1ECA68AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68AE8);
  }

  return result;
}

unint64_t sub_1D8AA0EE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B16930();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8AA0F2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v26 = a4;
  v22 = a1;
  v5 = type metadata accessor for DetectionRequest(0);
  v25 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v23 = 0;
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_1D8AA006C(*(a3 + 48) + *(v25 + 72) * v17, v8, type metadata accessor for DetectionRequest);
    v18 = *v8;
    v19 = *(v26 + v24);
    result = sub_1D8AA00D4(v8, type metadata accessor for DetectionRequest);
    if (v18 == v19)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1D88BE398(v22, v21, v23, a3);
      }
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_15;
    }

    v16 = *(a3 + 56 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AA1130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for DetectionRequest(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v9 = v7 & 0x3F;
  v10 = ((1 << v7) + 63) >> 6;
  v11 = 8 * v10;
  v36 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v10;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v13 = 0;
    v14 = a1;
    v16 = *(a1 + 56);
    a1 += 56;
    v15 = v16;
    v17 = 1 << *(a1 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v10 = v18 & v15;
    v33 = 0;
    v34 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
    v11 = (v17 + 63) >> 6;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v22 = v19 | (v13 << 6);
      sub_1D8AA006C(*(v14 + 48) + *(v35 + 72) * v22, v8, type metadata accessor for DetectionRequest);
      v23 = *v8;
      v3 = *(v36 + v34);
      sub_1D8AA00D4(v8, type metadata accessor for DetectionRequest);
      if (v23 == v3)
      {
        *&v32[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_1D88BE398(v32, v30, v33, v14);

          return v25;
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

      if (v13 >= v11)
      {
        goto LABEL_16;
      }

      v21 = *(a1 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v36;

  v25 = sub_1D8A9F8E8(v27, v10, a1, v28);

  MEMORY[0x1DA721330](v27, -1, -1);

  return v25;
}

uint64_t sub_1D8AA1468()
{
  *(v1 + 24) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1D8AA14F8, v0, 0);
}

uint64_t sub_1D8AA14F8()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType);
  if (((1 << v2) & 0x3FD7) != 0)
  {
    goto LABEL_2;
  }

  v5 = sub_1D8A9CD38(v2 != 3);
  v6 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8B23DF0;
  *(v7 + 32) = v5;
  sub_1D881F764(0, &qword_1EE0E3690, 0x1E6984658);
  v8 = v5;
  v9 = sub_1D8B15CD0();

  v0[2] = 0;
  v10 = [v6 prepareForPerformingRequests:v9 error:v0 + 2];

  v11 = v0[2];
  if (v10)
  {
    v12 = v11;

LABEL_2:
    v3 = v0[1];
    goto LABEL_3;
  }

  v13 = v11;
  sub_1D8B12EB0();

  swift_willThrow();
  v3 = v0[1];
LABEL_3:

  return v3();
}

BOOL sub_1D8AA16CC(uint64_t *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v51 - v5;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  *&v52 = *a1;
  CVDetection.detection.getter(&v63);
  v11 = *(&v64 + 1);
  v12 = v65;
  __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  v13 = (*(v12 + 56))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (a2)
  {
    v14 = 0.1;
  }

  else
  {
    v14 = 0.2;
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) != 0 && v14 >= v13)
  {
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_1D8B16720();

    *&v52 = 0xD000000000000022;
    *(&v52 + 1) = 0x80000001D8B47800;
    *&v63 = v10;
    CVDetection.detectionType.getter(&v57);
    v15 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v15);

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    *&v57 = v10;
    CVDetection.detection.getter(&v63);
    v16 = *(&v64 + 1);
    v17 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    (*(v17 + 48))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    sub_1D8A9FF28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v18);

    (*(v7 + 8))(v9, v6);
    v19 = v52;
    *&v63 = v10;
    CVDetection.detectionType.getter(&v57);
    *&v52 = CVDetection.DetectionType.description.getter();
    *(&v52 + 1) = v20;
    MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D8B1AB90;
    *&v57 = v10;
    CVDetection.detection.getter(&v63);
    v22 = *(&v64 + 1);
    v23 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v24 = (*(v23 + 56))(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    v25 = MEMORY[0x1E69E64A8];
    *(v21 + 56) = MEMORY[0x1E69E6448];
    *(v21 + 64) = v25;
    *(v21 + 32) = v24;
    v26 = sub_1D8B159A0();
    MEMORY[0x1DA71EFA0](v26);

    v27 = v52;
    *&v52 = v10;
    CVDetection.detection.getter(&v63);
    v28 = *(&v64 + 1);
    v29 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v30 = (*(v29 + 88))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(&v63);
    v60 = &type metadata for CVDetection;
    v61 = sub_1D8A29858();
    v59 = v10;
    v62 = 3;
    v57 = v19;
    v58 = v30;
    v68 = v10;
    CVDetection.detection.getter(&v52);
    v31 = *(&v53 + 1);
    v32 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    v33 = *(v32 + 64);

    v33(&v63, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    Corners.bounds.getter();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 1.0, 0.8);
    LOBYTE(v52) = 1;
    *&v63 = v35;
    *(&v63 + 1) = v37;
    *&v64 = v39;
    *(&v64 + 1) = v41;
    *&v65 = 0x3F689374BC6A7EFALL;
    *(&v65 + 1) = GenericRGB;
    v66 = v27;
    memset(v67, 0, 24);
    BYTE8(v67[1]) = 1;
    v43 = sub_1D8B15EA0();
    v44 = v51;
    (*(*(v43 - 8) + 56))(v51, 1, 1, v43);
    sub_1D88C4BD0(&v57, &v52);
    v45 = swift_allocObject();
    v46 = v55;
    *(v45 + 64) = v54;
    *(v45 + 80) = v46;
    v47 = v53;
    *(v45 + 32) = v52;
    *(v45 + 48) = v47;
    *(v45 + 177) = *(v67 + 9);
    *(v45 + 168) = v67[0];
    v48 = v65;
    *(v45 + 152) = v66;
    *(v45 + 136) = v48;
    v49 = v64;
    *(v45 + 104) = v63;
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    *(v45 + 96) = v56;
    *(v45 + 120) = v49;
    *(v45 + 200) = v10;

    sub_1D88E0F34(&v63, &v52);
    sub_1D8891CA0(0, 0, v44, &unk_1D8B3BA20, v45);

    sub_1D88E0F90(&v63);
    sub_1D87DC9A0(&v57);
  }

  return v14 < v13;
}

uint64_t sub_1D8AA1D1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D8AA1F24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697263736E617274 && a2 == 0xEA00000000007470 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
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

uint64_t sub_1D8AA2068(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D886553C;

  return sub_1D8A26CF4(a1, v6, v7, v8, v9, v1 + v5, v11, v12);
}

uint64_t sub_1D8AA21B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8A9F2A4(a1, v4, v5, (v1 + 4), (v1 + 13), v6);
}

uint64_t sub_1D8AA229C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[25];
  v7 = v1[26];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D886553C;

  return sub_1D8A9DD60(a1, v4, v5, (v1 + 4), (v1 + 13), v6, v7);
}

unint64_t sub_1D8AA2378()
{
  result = qword_1ECA68BA0;
  if (!qword_1ECA68BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68BA0);
  }

  return result;
}

uint64_t BundleRankerConfiguration.rankingGridWidth.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t BundleRankerConfiguration.rankingGridHeight.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t BundleRankerConfiguration.dataRange.setter(uint64_t result, char a2)
{
  *(v2 + 60) = result;
  *(v2 + 68) = a2 & 1;
  return result;
}

void sub_1D8AA24F4(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = (*a2 - v5) * 180.0 / 3.14159265 / 90.0;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v14 = *(v3 + 48);
  v15 = *(v3 + 56);
  v16 = *(v3 + 60);
  v17 = v7;
  v18 = *(v3 + 68);
  v41 = v9 + v11 * -0.5;
  v42 = v8 + v10 * -0.5;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  tx = t1.tx;
  ty = t1.ty;
  v35 = *&t1.c;
  v36 = *&t1.a;
  CGAffineTransformMakeRotation(&t1, -(v5 - v6));
  v21 = t1.tx;
  v22 = t1.ty;
  v37 = *&t1.c;
  v38 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v23 = t1.tx;
  v24 = t1.ty;
  v39 = *&t1.c;
  v40 = *&t1.a;
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v25;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&t2.a = v36;
  *&t2.c = v35;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v43, &t1, &t2);
  t1 = v43;
  *&t2.a = v38;
  *&t2.c = v37;
  t2.tx = v21;
  t2.ty = v22;
  CGAffineTransformConcat(&v43, &t1, &t2);
  t1 = v43;
  *&t2.a = v40;
  *&t2.c = v39;
  t2.tx = v23;
  t2.ty = v24;
  CGAffineTransformConcat(&v43, &t1, &t2);
  t1 = v43;
  v46.origin.y = v41;
  v46.origin.x = v42;
  v46.size.width = v10;
  v46.size.height = v11;
  v47 = CGRectApplyAffineTransform(v46, &t1);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v30 = (v17 & 1) == 0;
  if (v17)
  {
    v31 = v14;
  }

  else
  {
    v31 = v12;
  }

  if (v30)
  {
    v32 = v13;
  }

  else
  {
    v32 = v15;
  }

  if (v30)
  {
    v12 = v14;
    v13 = v15;
  }

  MidX = CGRectGetMidX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MidY = CGRectGetMidY(v48);
  *a3 = MidX;
  *(a3 + 8) = MidY;
  *(a3 + 16) = width;
  *(a3 + 24) = height;
  *(a3 + 32) = v31;
  *(a3 + 40) = v32;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 60) = v16;
  *(a3 + 68) = v18;
}

uint64_t sub_1D8AA27D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a4;
  LODWORD(v26) = a5;
  v23 = a1;
  v24 = a3;
  v14 = (v10 + *(a6 + 36));
  v15 = v14[3];
  v47 = v14[2];
  v48[0] = v15;
  *(v48 + 13) = *(v14 + 61);
  v16 = v14[1];
  v45 = *v14;
  v46 = v16;
  v44 = 0;
  sub_1D8AA24F4(a2, &v44, v49);
  v18 = *(a6 + 24);
  v36 = *(a6 + 16);
  v17 = v36;
  v37 = a7;
  v38 = a8;
  v39 = v18;
  v40 = a9;
  v41 = a10;
  v42 = v10;
  v43 = v49;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *&v45 = sub_1D87DFC48(sub_1D8AA3B88, &v35, a8, TupleTypeMetadata2, MEMORY[0x1E69E73E0], a10, MEMORY[0x1E69E7410], v20);
  v23 = v17;
  v27 = v17;
  v28 = a7;
  v29 = a8;
  v30 = v18;
  v31 = a9;
  v32 = a10;
  v33 = v24;
  v34 = v25 & 1;
  sub_1D8B15DB0();
  swift_getWitnessTable();
  result = sub_1D8B167D0();
  if (v26)
  {
    v26 = &v23;
    *&v45 = result;
    MEMORY[0x1EEE9AC00](result);
    swift_getWitnessTable();
    v22 = sub_1D8B15C00();

    return v22;
  }

  return result;
}

void sub_1D8AA2A24(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a4 - 8) + 16))(a7, a1, a4);
  v15 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v18[0] = v15;
  *(v18 + 13) = *(a2 + 61);
  v16 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v16;
  *(a7 + v14) = (*(a5 + 24))(a1, v17, a4, a6, a3, a5);
}

__n128 sub_1D8AA2B30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v4;
  *(a2 + 61) = *(v3 + 61);
  result = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = result;
  return result;
}

void sub_1D8AA2BC8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v43[2] = *(a1 + 32);
  *v44 = v2;
  *&v44[13] = *(a1 + 61);
  v3 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v3;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v46 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *v49 = *(v1 + 65);
  *&v49[3] = *(v1 + 68);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v52 = *(v1 + 81);
  v53 = *(v1 + 83);
  v10 = *(v1 + 84);
  v11 = *(v1 + 92);
  *v45 = v4;
  *&v45[1] = v5;
  v47 = v6;
  v48 = v7;
  v50 = v8;
  v51 = v9;
  v54 = v10;
  v55 = v11;
  if (_s22VisualIntelligenceCore25BundleRankerConfigurationV2eeoiySbAC_ACtFZ_0(v45, v43) && *(*(v1 + 96) + 16))
  {
    return;
  }

  if (v7 & 1) != 0 || (v9)
  {
    goto LABEL_68;
  }

  if (v11)
  {
LABEL_69:
    sub_1D8B168C0();
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_66;
  }

  v12 = (*(&v10 + 1) - *&v10) / 6.0;
  if (v6)
  {
    v13 = sub_1D87C892C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = 0;
    v15 = *(v13 + 2);
    do
    {
      v16 = *(v13 + 3);
      if (v15 >= v16 >> 1)
      {
        v13 = sub_1D87C892C((v16 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      *&v13[4 * v15++ + 32] = ((v12 * 6.0) * (v14++ / (v6 - 1))) - (v12 * 3.0);
    }

    while (v6 != v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8 < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v17 = v12 * 3.0;
  if (v8)
  {
    v18 = sub_1D87C892C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v19 = 0;
    v20 = *(v18 + 2);
    do
    {
      v21 = *(v18 + 3);
      if (v20 >= v21 >> 1)
      {
        v18 = sub_1D87C892C((v21 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      *&v18[4 * v20++ + 32] = ((v12 * 6.0) * (v19++ / (v8 - 1))) - v17;
    }

    while (v8 != v19);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v41 = v1;
  if (v6)
  {
    v22 = sub_1D8B15D60();
    *(v22 + 16) = v6;
    bzero((v22 + 32), 4 * v6);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1D8AA3CB8(v22, v8);

  if (v8)
  {
    v42 = v8;
    v24 = 0;
    v25 = v4;
    v26 = v5;
    v27 = (((v25 + v25) * 3.0) * v12) - v17;
    v28 = (((v26 + v26) * 3.0) * v12) - v17;
    v29 = v12 * (v12 + v12);
    v30 = 0.0;
    while (1)
    {
      v31 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_62;
      }

      if (v6)
      {
        break;
      }

LABEL_27:
      ++v24;
      if (v31 == v42)
      {
        if (v30 <= 0.0)
        {
          goto LABEL_55;
        }

        v36 = 0;
        while (1)
        {
          v37 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            break;
          }

          if (v6)
          {
            v38 = 0;
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_1D8939464(v23);
              }

              if (v36 >= v23[2])
              {
                goto LABEL_60;
              }

              v39 = v23[v36 + 4];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23[v36 + 4] = v39;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v39 = sub_1D8939450(v39);
                v23[v36 + 4] = v39;
              }

              if (v38 >= *(v39 + 2))
              {
                goto LABEL_61;
              }

              *&v39[4 * v38 + 32] = *&v39[4 * v38 + 32] / v30;
            }

            while (v6 != ++v38);
          }

          ++v36;
          if (v37 == v42)
          {
            goto LABEL_55;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    if (v6 <= *(v13 + 2))
    {
      if (v24 >= *(v18 + 2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v32 = 0;
      while (1)
      {
        v33 = expf(-(((*&v13[4 * v32 + 32] - v27) * (*&v13[4 * v32 + 32] - v27)) + ((*&v18[4 * v24 + 32] - v28) * (*&v18[4 * v24 + 32] - v28))) / v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D8939464(v23);
        }

        if (v24 >= v23[2])
        {
          break;
        }

        v34 = v23[v24 + 4];
        v35 = swift_isUniquelyReferenced_nonNull_native();
        v23[v24 + 4] = v34;
        if ((v35 & 1) == 0)
        {
          v34 = sub_1D8939450(v34);
          v23[v24 + 4] = v34;
        }

        if (v32 >= *(v34 + 2))
        {
          goto LABEL_59;
        }

        *&v34[4 * v32 + 32] = v33;
        v30 = v30 + v33;
        if (v6 == ++v32)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_55:

  *(v41 + 96) = v23;
}

void sub_1D8AA3158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v4 + 40);
  v9 = *(v4 + 72);
  v45[2] = *(v4 + 56);
  v46[0] = v9;
  v45[0] = *(v4 + 24);
  v45[1] = v8;
  v10 = *(a2 + 16);
  *(v4 + 24) = *a2;
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  *(v46 + 13) = *(v4 + 85);
  *(v4 + 40) = v10;
  *(v4 + 56) = v11;
  *(v4 + 64) = v12;
  *(v4 + 65) = *(a2 + 41);
  *(v4 + 68) = *(a2 + 44);
  *(v4 + 72) = v13;
  *(v4 + 80) = v14;
  *(v4 + 81) = *(a2 + 57);
  *(v4 + 89) = *(a2 + 65);
  sub_1D8AA2BC8(v45);
  if (v14 & 1) != 0 || (v12)
  {
    goto LABEL_59;
  }

  v47.origin.x = (*(a4 + 8))(a3, a4);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  MinX = CGRectGetMinX(v47);
  v20 = v11 * MinX;
  if (COERCE_INT(fabs(v20)) > 2139095039)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v20 <= -9.2234e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v20 >= 9.2234e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v21 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MaxX = CGRectGetMaxX(v48);
  v23 = v11 * MaxX;
  if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v21 >= v23)
  {
    v21 = v23;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinY = CGRectGetMinY(v49);
  v25 = v13 * MinY;
  if (COERCE_INT(fabs(v25)) > 2139095039)
  {
    goto LABEL_51;
  }

  if (v25 <= -9.2234e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v25 >= 9.2234e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (__OFSUB__(v13, 1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MaxY = CGRectGetMaxY(v50);
  v27 = v13 * MaxY;
  if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v27 <= -9.2234e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 < 9.2234e18)
  {
    v28 = v20 & ~(v20 >> 63);
    v29 = v25 & ~(v25 >> 63);
    v30 = v27;
    if (v13 - 1 < v27)
    {
      v30 = v13 - 1;
    }

    v31 = v21 - v28;
    if (v21 < v28 || v30 < v29)
    {
      goto LABEL_58;
    }

    v33 = *(v5 + 96);
    v34 = v33 + 32;
    v35 = *(v33 + 16);
    if (v31 >= (v28 ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v31 = v28 ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v36 = 0.0;
    while (v29 < v35)
    {
      v37 = *(v34 + 8 * v29);
      v38 = v37 + 32;
      v39 = *(v37 + 16);
      v40 = v39 >= v28;
      v41 = v39 - v28;
      if (v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      v43 = v20 & ~(v20 >> 63);
      if (v42 <= v31)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v36 = v36 + *(v38 + 4 * v43);
        if (v21 == v43)
        {
          break;
        }

        v44 = __OFADD__(v43++, 1);
        if (v44)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      if (v29 == v30)
      {
        return;
      }

      v44 = __OFADD__(v29++, 1);
      if (v44)
      {
        __break(1u);
        return;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}