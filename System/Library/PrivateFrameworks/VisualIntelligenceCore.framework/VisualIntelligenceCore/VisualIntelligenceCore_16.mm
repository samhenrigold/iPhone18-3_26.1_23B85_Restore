void sub_1D88F6210(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D87C9CB8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63250, &qword_1D8B1E810);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D88F6314(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1D87C8C58(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
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
    return;
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
}

void sub_1D88F644C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1D87CA2CC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[88 * v8 + 32], (a1 + 32), 88 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1D88F653C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(*(a1 + 16) + 16);
  v5 = *v2;
  v6 = *(*v2 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650F8, &qword_1D8B3E570);
    if (v17 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65100, &unk_1D8B282D0))
    {
      goto LABEL_13;
    }

    v7 = *(v5 + 2);
    a1 = v47;
    swift_beginAccess();
    v4 = v48;
    if (v48 == *(*(a1 + 16) + 16))
    {
      LOBYTE(v40) = 1;
      v46 = 1;
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v5 + 3) >> 1, v9 < v7))
  {
    if (v6 <= v7)
    {
      v10 = v6 + v4;
    }

    else
    {
      v10 = v6;
    }

    v5 = sub_1D87CA2CC(isUniquelyReferenced_nonNull_native, v10, 1, v5);
    v9 = *(v5 + 3) >> 1;
  }

  v11 = *(v5 + 2);
  v12 = (v9 - v11);
  v13 = sub_1D88186A0(&v47, &v5[88 * v11 + 32], v9 - v11);
  if (v13 < v4)
  {
    goto LABEL_15;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = *(v5 + 2);
  v15 = __OFADD__(v14, v13);
  v16 = v13 + v14;
  if (!v15)
  {
    *(v5 + 2) = v16;
LABEL_12:
    if (v13 != v12)
    {
LABEL_13:

      *v2 = v5;
      return;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_20:
  sub_1D8AC1240(v4, &v40);
  if (v4 >= *(*(a1 + 16) + 16))
  {
    goto LABEL_37;
  }

  v18 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  v22 = v44;
  v23 = v45;
  v46 = 0;
  v24 = v4 + 1;
LABEL_23:
  v25 = v7 + 1;
  while (1)
  {
    v26 = *(v5 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v25)
    {
      v29 = v25;
      v30 = v5;
      v31 = v23;
      v38 = v19;
      v39 = v18;
      v36 = v21;
      v37 = v20;
      v35 = v22;
      v32 = sub_1D87CA2CC((v26 > 1), v25, 1, v30);
      v22 = v35;
      v21 = v36;
      v20 = v37;
      v19 = v38;
      v18 = v39;
      v23 = v31;
      v25 = v29;
      v5 = v32;
      v27 = *(v32 + 3) >> 1;
      v28 = v46;
      if (v46)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v28 = 0;
    }

    if (v7 < v27)
    {
      break;
    }

LABEL_24:
    *(v5 + 2) = v7;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  v33 = v7;
  while (1)
  {
    v34 = &v5[88 * v33 + 32];
    *v34 = v18;
    *(v34 + 16) = v19;
    *(v34 + 32) = v20;
    *(v34 + 48) = v21;
    *(v34 + 64) = v22;
    *(v34 + 80) = v23;
    v7 = v33 + 1;
    if (v24 == *(*(a1 + 16) + 16))
    {
      LOBYTE(v40) = 1;
      v46 = 1;
      *(v5 + 2) = v7;
      goto LABEL_13;
    }

    ++v33;
    sub_1D8AC1240(v24, &v40);
    if (v24 >= *(*(a1 + 16) + 16))
    {
      break;
    }

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = v43;
    v22 = v44;
    v23 = v45;
    ++v24;
    v46 = 0;
    if (v7 >= v27)
    {
      *(v5 + 2) = v7;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1D88F6924(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D8B16610();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1D8B16610();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D890026C(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D8900DBC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1D88F6A14(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1D87CA72C(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63210, &qword_1D8B1E7D0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

id sub_1D88F6B1C()
{
  result = [objc_allocWithZone(MEMORY[0x1E696F470]) init];
  qword_1ECA650B0 = result;
  return result;
}

void static MapsResultsClassifier.lookupDetectionType(bundle:)(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v96);
  v98 = (&v89 - v4);
  v5 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13820();
  v8 = *(v7 - 8);
  v101 = v7;
  v102 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D8B13830();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v89 - v14;
  v15 = sub_1D8B13AD0();
  v95 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650B8, &unk_1D8B281D0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v89 - v19;
  v21 = type metadata accessor for GenericParseDataResult(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8901B88(a1, v26, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_1D8B13240();
    (*(*(v27 - 8) + 8))(v26, v27);
    v28 = MEMORY[0x1E69E7CC0];
    *a2 = sub_1D893EB38(MEMORY[0x1E69E7CC0]);
LABEL_3:
    a2[1] = v28;
    *(a2 + 16) = 0x80;
    return;
  }

  v89 = a2;
  sub_1D8901BF0(v26, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(v106);
  v29 = *&v106[0] >> 60;
  if ((*&v106[0] >> 60) <= 2)
  {
    if (v29)
    {
      if (v29 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v48 = swift_projectBox();
    v49 = v98;
    sub_1D87A0E38(v48, v98, &qword_1ECA67750, &unk_1D8B1E0C0);
    sub_1D88F78FC();
    v28 = v50;
    v51 = sub_1D88F8054(0.6);
    v52 = *&v49[*(v96 + 44)];
    if (*(v52 + 16))
    {
      v53 = v51;
      visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v52 + 32));
      if (v104 != 181)
      {
        a2 = v89;
        if (v104 > 0x95u)
        {
          if (v104 == 156)
          {
LABEL_34:
            sub_1D87A14E4(v49, &qword_1ECA67750, &unk_1D8B1E0C0);

            *a2 = v53;
            a2[1] = v28;
            *(a2 + 16) = 0;
            return;
          }

          if (v104 == 150)
          {
            sub_1D87A14E4(v49, &qword_1ECA67750, &unk_1D8B1E0C0);

            *a2 = v53;
            goto LABEL_3;
          }
        }

        else if (v104 == 30 || v104 == 84)
        {
          v54 = sub_1D88F8978();
          v55 = *(v54 + 16) + 1;
          v56 = 32;
          while (--v55)
          {
            v57 = *(v54 + v56);
            v56 += 8;
            if (v57 == 156)
            {

              goto LABEL_34;
            }
          }

          sub_1D87A14E4(v49, &qword_1ECA67750, &unk_1D8B1E0C0);
          goto LABEL_50;
        }

        sub_1D87A14E4(v49, &qword_1ECA67750, &unk_1D8B1E0C0);

LABEL_50:

LABEL_51:
        *a2 = 0;
        a2[1] = 0;
        *(a2 + 16) = -2;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v29 != 4)
  {
    if (v29 == 3)
    {
      v30 = swift_projectBox();
      v31 = v97;
      sub_1D8901B88(v30, v97, type metadata accessor for ObjectDetectorResult);
      v32 = (v31 + *(v5 + 28));
      if (*v32 == 1852270963 && v32[1] == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D88F78FC();
        v34 = v33;
        v35 = sub_1D893EB38(MEMORY[0x1E69E7CC0]);
        sub_1D8901BF0(v31, type metadata accessor for ObjectDetectorResult);

        v36 = 0x80;
      }

      else
      {
        sub_1D8901BF0(v31, type metadata accessor for ObjectDetectorResult);

        v35 = 0;
        v34 = 0;
        v36 = -2;
      }

      v37 = v89;
      *v89 = v35;
      v37[1] = v34;
      goto LABEL_37;
    }

    goto LABEL_16;
  }

LABEL_14:

  CVBundle.latestDetection.getter(v106);
  *&v104 = *&v106[0];
  sub_1D8A5B798(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1D87A14E4(v20, &qword_1ECA650B8, &unk_1D8B281D0);
LABEL_16:

LABEL_17:
    v37 = v89;
    *v89 = 0;
    v37[1] = 0;
    v36 = -2;
LABEL_37:
    *(v37 + 16) = v36;
    return;
  }

  v38 = v20;
  v39 = v99;
  sub_1D8901C70(v38, v99, type metadata accessor for GenericParseDataResult);

  v40 = *(v39 + *(v21 + 24));
  sub_1D8B139A0();
  LOBYTE(v40) = sub_1D8846CD0(v17, v40);
  (*(v95 + 8))(v17, v15);
  if ((v40 & 1) == 0)
  {
    sub_1D8901BF0(v39, type metadata accessor for GenericParseDataResult);
    goto LABEL_17;
  }

  v41 = *(v21 + 28);
  v42 = v41 + *(type metadata accessor for VisualUnderstandingContainer(0) + 20);
  v43 = v91;
  sub_1D87A0E38(v39 + v42, v91, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v44 = v93;
  v45 = *(v93 + 48);
  v46 = v94;
  if (v45(v43, 1, v94) == 1)
  {
    sub_1D87A14E4(v43, &qword_1ECA635E8, &unk_1D8B1F5C0);
    v47 = sub_1D893EB38(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v58 = sub_1D8B137F0();
    (*(v44 + 8))(v43, v46);
    v59 = sub_1D89007B8(v58);
    v39 = v99;
    v47 = v59;
  }

  sub_1D88F78FC();
  v107 = v60;
  v61 = v92;
  sub_1D87A0E38(v39 + v42, v92, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if (v45(v61, 1, v46) == 1)
  {
    sub_1D87A14E4(v61, &qword_1ECA635E8, &unk_1D8B1F5C0);
  }

  else
  {
    v62 = v90;
    (*(v44 + 32))(v90, v61, v46);
    v63 = sub_1D8B137C0();
    if (v63)
    {
      v64 = *(v63 + 16);
      if (v64)
      {
        v95 = v47;
        v96 = a1;
        *&v106[0] = MEMORY[0x1E69E7CC0];
        v65 = v63;
        sub_1D87F47D0(0, v64, 0);
        v66 = *&v106[0];
        v98 = *(v102 + 16);
        v67 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v92 = v65;
        v68 = v65 + v67;
        v97 = *(v102 + 72);
        v102 += 16;
        v69 = (v102 - 8);
        do
        {
          v71 = v100;
          v70 = v101;
          (v98)(v100, v68, v101);
          v72 = sub_1D8B13810();
          v74 = v73;
          v75 = sub_1D8B13800();
          (*v69)(v71, v70);
          *&v106[0] = v66;
          v77 = *(v66 + 16);
          v76 = *(v66 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_1D87F47D0((v76 > 1), v77 + 1, 1);
            v66 = *&v106[0];
          }

          *(v66 + 16) = v77 + 1;
          v78 = (v66 + 24 * v77);
          v78[4] = v72;
          v78[5] = v74;
          v78[6] = v75;
          v68 += v97;
          --v64;
        }

        while (v64);

        v39 = v99;
        v46 = v94;
        v44 = v93;
        v62 = v90;
        v47 = v95;
      }

      else
      {

        v66 = MEMORY[0x1E69E7CC0];
      }

      sub_1D88F4864(v66);
    }

    (*(v44 + 8))(v62, v46);
  }

  a2 = v89;
  v79 = CVBundle.score.getter();
  if (v79 >= 0.22)
  {
    goto LABEL_64;
  }

  v80 = [objc_opt_self() sharedConfiguration];
  if (v80)
  {
    v81 = v80;
    v82 = sub_1D8B15940();
    v83 = [v81 defaultForKey:v82 defaultValue:0];

    if (v83)
    {
      sub_1D8B16540();
      swift_unknownObjectRelease();
    }

    else
    {
      v104 = 0u;
      v105 = 0u;
    }

    v39 = v99;
    v106[0] = v104;
    v106[1] = v105;
    if (!*(&v105 + 1))
    {
      sub_1D8901BF0(v99, type metadata accessor for GenericParseDataResult);
      sub_1D87A14E4(v106, &qword_1ECA650C0, &unk_1D8B2D030);
      goto LABEL_66;
    }

    sub_1D881F764(0, &qword_1EE0E36A8, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v84 = v103;
      [v103 floatValue];
      v86 = v85;
      v87 = CVBundle.score.getter();

      sub_1D8901BF0(v39, type metadata accessor for GenericParseDataResult);
      if (v87 < v86)
      {

        goto LABEL_51;
      }

      goto LABEL_66;
    }

LABEL_64:
    sub_1D8901BF0(v39, type metadata accessor for GenericParseDataResult);
LABEL_66:
    v88 = v107;
    *a2 = v47;
    a2[1] = v88;
    *(a2 + 16) = v79 < 0.22;
    return;
  }

LABEL_69:
  __break(1u);
}

void sub_1D88F78FC()
{
  v68 = sub_1D8B13820();
  v60 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v59 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v61 = &v59 - v2;
  v3 = type metadata accessor for CVTrackSnapshot(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D891DE68();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v3 + 24);
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8901B88(v10, v6, type metadata accessor for CVTrackSnapshot);
      v13 = *&v6[v9];

      sub_1D8901BF0(v6, type metadata accessor for CVTrackSnapshot);
      if (v13 >> 60 == 12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D87C7F54(0, *(v12 + 2) + 1, 1, v12);
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_1D87C7F54((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v15 + 1;
        *&v12[8 * v15 + 32] = v13;
      }

      else
      {
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v16 = *(v12 + 2);
  v17 = v61;
  if (!v16)
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v45 = v62[2];
    if (!v45)
    {
LABEL_56:

      return;
    }

    v46 = 0;
    v47 = v62;
    v48 = v62 + 4;
    v49 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v46 >= v47[2])
      {
        goto LABEL_58;
      }

      v50 = v48[v46];
      v51 = *(v50 + 16);
      v52 = *(v49 + 2);
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v53 <= *(v49 + 3) >> 1)
      {
        if (!*(v50 + 16))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v52 <= v53)
        {
          v55 = v52 + v51;
        }

        else
        {
          v55 = v52;
        }

        v49 = sub_1D87C8E38(isUniquelyReferenced_nonNull_native, v55, 1, v49);
        if (!*(v50 + 16))
        {
LABEL_40:

          if (v51)
          {
            goto LABEL_60;
          }

          goto LABEL_41;
        }
      }

      if ((*(v49 + 3) >> 1) - *(v49 + 2) < v51)
      {
        goto LABEL_61;
      }

      swift_arrayInitWithCopy();

      if (v51)
      {
        v56 = *(v49 + 2);
        v57 = __OFADD__(v56, v51);
        v58 = v56 + v51;
        if (v57)
        {
          goto LABEL_62;
        }

        *(v49 + 2) = v58;
      }

LABEL_41:
      if (v45 == ++v46)
      {
        goto LABEL_56;
      }
    }
  }

  v73 = v12 + 32;
  v65 = (v60 + 8);
  v66 = v60 + 16;
  v59 = v16 - 1;
  v62 = MEMORY[0x1E69E7CC0];
  v18 = &unk_1D8B1F5C0;
  v69 = v16;
  v19 = 0;
  while (v19 < *(v12 + 2))
  {
    v20 = v19 + 1;
    if (*&v73[8 * v19] >> 60 != 12)
    {
      v28 = MEMORY[0x1E69E7CC0];
LABEL_23:
      v29 = v62;
      goto LABEL_30;
    }

    v21 = type metadata accessor for GroundedParseEmbeddingsResult(0);
    v22 = swift_projectBox();
    sub_1D87A0E38(v22 + *(v21 + 40), v17, &qword_1ECA635E8, v18);
    v23 = sub_1D8B13830();
    v24 = v18;
    v25 = *(v23 - 8);
    if ((*(v25 + 48))(v17, 1, v23) == 1)
    {
      sub_1D87A14E4(v17, &qword_1ECA635E8, v24);
      v18 = v24;
LABEL_16:
      ++v19;
      if (v16 == v20)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v26 = v12;

      v27 = sub_1D8B137C0();
      (*(v25 + 8))(v17, v23);
      if (!v27)
      {

        v12 = v26;
        v16 = v69;
        v18 = &unk_1D8B1F5C0;
        goto LABEL_16;
      }

      v30 = *(v27 + 16);
      if (!v30)
      {

        v28 = MEMORY[0x1E69E7CC0];
        v12 = v26;
        v16 = v69;
        v18 = &unk_1D8B1F5C0;
        goto LABEL_23;
      }

      v74 = MEMORY[0x1E69E7CC0];
      sub_1D87F47D0(0, v30, 0);
      v28 = v74;
      v31 = v27 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v32 = *(v60 + 72);
      v63 = *(v60 + 16);
      v64 = v32;
      do
      {
        v33 = v67;
        v34 = v68;
        v63(v67, v31, v68);
        v35 = sub_1D8B13810();
        v71 = v36;
        v72 = v35;
        v70 = sub_1D8B13800();
        (*v65)(v33, v34);
        v74 = v28;
        v38 = *(v28 + 16);
        v37 = *(v28 + 24);
        v39 = v28;
        if (v38 >= v37 >> 1)
        {
          sub_1D87F47D0((v37 > 1), v38 + 1, 1);
          v39 = v74;
        }

        *(v39 + 16) = v38 + 1;
        v40 = (v39 + 24 * v38);
        v41 = v71;
        v40[4] = v72;
        v40[5] = v41;
        v40[6] = v70;
        v31 += v64;
        --v30;
        v28 = v39;
      }

      while (v30);

      v17 = v61;
      v29 = v62;
      v12 = v26;
      v16 = v69;
      v18 = &unk_1D8B1F5C0;
LABEL_30:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D87C8E14(0, v29[2] + 1, 1, v29);
      }

      v43 = v29[2];
      v42 = v29[3];
      v62 = v29;
      if (v43 >= v42 >> 1)
      {
        v62 = sub_1D87C8E14((v42 > 1), v43 + 1, 1, v62);
      }

      v44 = v62;
      v62[2] = v43 + 1;
      v44[v43 + 4] = v28;
      if (v59 == v19)
      {
        goto LABEL_38;
      }

      ++v19;
    }
  }

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
  __break(1u);
}

uint64_t sub_1D88F8054(float a1)
{
  v94 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v82 - v3;
  v86 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v86);
  v91 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D891DE68();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v6 + 24);
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8901B88(v13, v9, type metadata accessor for CVTrackSnapshot);
      v16 = *&v9[v12];

      sub_1D8901BF0(v9, type metadata accessor for CVTrackSnapshot);
      if (v16 >> 60 == 13)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v17 = v15;
        }

        else
        {
          v17 = sub_1D87C7F54(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v19 >= v18 >> 1)
        {
          v17 = sub_1D87C7F54((v18 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        v15 = v17;
        *&v17[8 * v19 + 32] = v16;
      }

      else
      {
      }

      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1D893EB38(MEMORY[0x1E69E7CC0]);
  v21 = *(v15 + 2);
  if (!v21)
  {
LABEL_73:

    return v20;
  }

  v22 = 0;
  v23 = v15 + 32;
  v87 = v4;
  v84 = v21;
  v85 = v15;
  v82 = 0;
  v83 = v15 + 32;
  while (1)
  {
    if (v22 >= *(v15 + 2))
    {
      goto LABEL_77;
    }

    v24 = *&v23[8 * v22];
    if (v24 >> 60 == 13)
    {
      break;
    }

LABEL_17:
    if (++v22 == v21)
    {
      goto LABEL_73;
    }
  }

  v92 = v20;
  v89 = v22;
  v25 = swift_projectBox();
  v26 = v91;
  sub_1D8901B88(v25, v91, type metadata accessor for GroundedParseClassificationsResult);
  sub_1D87A0E38(v26 + *(v86 + 40), v4, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v27 = sub_1D8B13830();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v4, 1, v27);

  v90 = v24;
  if (v29 == 1)
  {
    sub_1D87A14E4(v4, &qword_1ECA635E8, &unk_1D8B1F5C0);
    v30 = MEMORY[0x1E69E7CC8];
    goto LABEL_43;
  }

  v31 = sub_1D8B137F0();
  v32 = (*(v28 + 8))(v4, v27);
  v88 = &v82;
  v33 = MEMORY[0x1EEE9AC00](v32);
  *(&v82 - 4) = a1;
  v34 = *(v31 + 32);
  v35 = ((1 << v34) + 63) >> 6;
  if ((v34 & 0x3Fu) <= 0xD)
  {
    goto LABEL_23;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_23:
    MEMORY[0x1EEE9AC00](v33);
    v37 = &v82 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v36);
    v38 = 0;
    v39 = 0;
    v40 = 1 << *(v31 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v31 + 64);
    v43 = (v40 + 63) >> 6;
LABEL_27:
    if (v42)
    {
      v44 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      goto LABEL_34;
    }

    v45 = v39;
    while (1)
    {
      v39 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_75;
      }

      if (v39 >= v43)
      {
        break;
      }

      v46 = *(v31 + 64 + 8 * v39);
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v42 = (v46 - 1) & v46;
LABEL_34:
        v47 = v44 | (v39 << 6);
        if (*(*(v31 + 56) + 4 * v47) >= a1)
        {
          v48 = (*(v31 + 48) + 16 * v47);
          if ((*v48 != 0x6E776F6E6B6E75 || v48[1] != 0xE700000000000000) && (sub_1D8B16BA0() & 1) == 0)
          {
            *&v37[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
            v49 = __OFADD__(v38++, 1);
            if (v49)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_27;
      }
    }

    v30 = sub_1D8AF41F0(v37, v35, v38, v31);
    v4 = v87;
    goto LABEL_42;
  }

  v79 = swift_slowAlloc();

  v80 = v82;
  v30 = sub_1D8900728(v79, v35, v31, sub_1D8901C50);
  v82 = v80;

  MEMORY[0x1DA721330](v79, -1, -1);
LABEL_42:

LABEL_43:
  v20 = v92;
  if (!*(v30 + 16))
  {
    sub_1D8901BF0(v91, type metadata accessor for GroundedParseClassificationsResult);

    v21 = v84;
    v15 = v85;
    v22 = v89;
    v23 = v83;
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = v20;
  v51 = v30 + 64;
  v52 = -1 << *(v30 + 32);
  if (-v52 < 64)
  {
    v53 = ~(-1 << -v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v30 + 64);
  v88 = (-1 << *(v30 + 32));
  v55 = (63 - v52) >> 6;

  v56 = 0;
  while (1)
  {
    if (v54)
    {
      LODWORD(v92) = isUniquelyReferenced_nonNull_native;
      v59 = v56;
      goto LABEL_60;
    }

    v60 = v56;
    do
    {
      v59 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
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
      }

      if (v59 >= v55)
      {
        sub_1D87977A0(v30);

        sub_1D8901BF0(v91, type metadata accessor for GroundedParseClassificationsResult);

        v4 = v87;
        v21 = v84;
        v15 = v85;
        v22 = v89;
        v23 = v83;
        goto LABEL_17;
      }

      v54 = *(v51 + 8 * v59);
      ++v60;
    }

    while (!v54);
    LODWORD(v92) = isUniquelyReferenced_nonNull_native;
LABEL_60:
    v61 = __clz(__rbit64(v54)) | (v59 << 6);
    v62 = *(v30 + 56);
    v63 = v30;
    v64 = (*(v30 + 48) + 16 * v61);
    v66 = *v64;
    v65 = v64[1];
    v67 = *(v62 + 4 * v61);

    v69 = sub_1D87EF838(v66, v65);
    v70 = v20[2];
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_76;
    }

    v73 = v68;
    if (v20[3] < v72)
    {
      break;
    }

    if ((v92 & 1) == 0)
    {
      sub_1D8969DF4();
    }

LABEL_66:
    v54 &= v54 - 1;
    v20 = v93;
    if (v73)
    {
      v57 = *(v93[7] + 4 * v69);

      if (v57 > v67)
      {
        v58 = v57;
      }

      else
      {
        v58 = v67;
      }

      *(v20[7] + 4 * v69) = v58;
    }

    else
    {
      v93[(v69 >> 6) + 8] |= 1 << v69;
      v76 = (v20[6] + 16 * v69);
      *v76 = v66;
      v76[1] = v65;
      *(v20[7] + 4 * v69) = v67;
      v77 = v20[2];
      v49 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      if (v49)
      {
        goto LABEL_78;
      }

      v20[2] = v78;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v56 = v59;
    v30 = v63;
  }

  sub_1D8972D20(v72, v92 & 1);
  v74 = sub_1D87EF838(v66, v65);
  if ((v73 & 1) == (v75 & 1))
  {
    v69 = v74;
    goto LABEL_66;
  }

  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy sub_1D88F8978()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0) + 44));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1D87F3FAC(0, v2, 0);
  v5 = 0;
  v3 = v12;
  v6 = (v1 + 40);
  while (v5 < *(v1 + 16))
  {
    v7 = *v6;
    result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v6 - 1)).value;
    if (v11 == 181)
    {
      goto LABEL_10;
    }

    v9 = *(v12 + 16);
    v8 = *(v12 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1D87F3FAC((v8 > 1), v9 + 1, 1);
    }

    ++v5;
    *(v12 + 16) = v9 + 1;
    v10 = v12 + 8 * v9;
    *(v10 + 32) = v11;
    *(v10 + 36) = v7;
    v6 += 4;
    if (v2 == v5)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_1D88F8A98(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v142 - v9;
  v152 = type metadata accessor for AFMResult(0);
  v11 = MEMORY[0x1EEE9AC00](v152);
  v13 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v149 = &v142 - v14;
  v15 = type metadata accessor for MetaDetectionResult(0);
  v148 = *(v15 - 1);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v160 = (&v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v159 = &v142 - v18;
  v147 = type metadata accessor for CVTrackSnapshot(0);
  v161 = *(v147 - 8);
  v19 = MEMORY[0x1EEE9AC00](v147);
  v21 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v142 - v22;
  v24 = *(a2 + 32);
  v154 = *(a2 + 40);
  v153 = a1;
  static MapsResultsClassifier.lookupDetectionType(bundle:)(a1, &v162);
  LOBYTE(a1) = v163;
  if (v163 > 0xFDu)
  {
    v26 = xmmword_1D8B26630;
LABEL_3:
    *a3 = v26;
    v27 = 2;
LABEL_55:
    *(a3 + 16) = v27;
    return;
  }

  v145 = v13;
  v146 = v8;
  v29 = *(&v162 + 1);
  v28 = v162;
  if (qword_1ECA620F0 != -1)
  {
LABEL_124:
    swift_once();
  }

  if ((sub_1D8B147C0() & 1) == 0)
  {
    sub_1D8901870(v28, v29, a1);
    *a3 = xmmword_1D8B28190;
    v27 = 1;
    goto LABEL_55;
  }

  CVBundle.latestEstimate.getter(&v162);
  if (v162 >> 60)
  {

    sub_1D8901870(v28, v29, a1);
    v28 = v160;
  }

  else
  {

    sub_1D8901870(v28, v29, a1);
    v28 = v160;
    if ((a1 & 0x80) == 0)
    {
      v30 = sub_1D891A6E8();
      v158 = *(v30 + 16);
      if (v158)
      {
        v151 = *(v147 + 20);
        v157 = v30 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
        a1 = v30;
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
        v31 = a1;
        v29 = 0;
        v28 = (v148 + 56);
        v155 = a1;
        v150 = (v148 + 56);
        v144 = a3;
        do
        {
          if (v29 >= *(v31 + 16))
          {
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
            goto LABEL_124;
          }

          sub_1D8901B88(v157 + *(v161 + 72) * v29, v23, type metadata accessor for CVTrackSnapshot);
          v32 = sub_1D8B16910();
          v33 = sub_1D881F7DC();
          if (v34)
          {
            goto LABEL_116;
          }

          a1 = (v32 + 8);
          *(v32 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
          *(v32[6] + v33) = 1;
          *(v32[7] + 8 * v33) = 0x3FE999999999999ALL;
          v35 = v32[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_117;
          }

          v32[2] = v37;
          v38 = sub_1D881F7DC();
          if (v39)
          {
            goto LABEL_118;
          }

          *(a1 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
          *(v32[6] + v38) = 12;
          *(v32[7] + 8 * v38) = 0x3FE0000000000000;
          v40 = v32[2];
          v36 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v36)
          {
            goto LABEL_119;
          }

          v32[2] = v41;
          v42 = sub_1D881F7DC();
          if (v43)
          {
            goto LABEL_120;
          }

          *(a1 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
          *(v32[6] + v42) = 13;
          *(v32[7] + 8 * v42) = 0x3FE0000000000000;
          v44 = v32[2];
          v36 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v36)
          {
            goto LABEL_121;
          }

          v32[2] = v45;
          v46 = sub_1D881F7DC();
          if (v47)
          {
            goto LABEL_122;
          }

          *(a1 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
          *(v32[6] + v46) = 5;
          *(v32[7] + 8 * v46) = 0x4020000000000000;
          v48 = v32[2];
          v36 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v36)
          {
            goto LABEL_123;
          }

          v32[2] = v49;
          v50 = 0.1;
          if (v49)
          {
            v51 = sub_1D881F7DC();
            v50 = 0.1;
            if (v52)
            {
              v50 = *(v32[7] + 8 * v51);
            }
          }

          ++v29;

          switch(*(v23 + v151) >> 60)
          {
            case 1:
              a1 = type metadata accessor for GroundedParseDetectorResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for GroundedParseDetectorResult;
              goto LABEL_36;
            case 2:
              a1 = swift_projectBox();
              *(&v163 + 1) = v15;
              *&v164 = sub_1D8901B40(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v58 = type metadata accessor for MetaDetectionResult;
              v59 = a1;
              goto LABEL_37;
            case 3:
            case 8:
              a1 = type metadata accessor for ObjectDetectorResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for ObjectDetectorResult;
              goto LABEL_36;
            case 4:
              a1 = type metadata accessor for ParseDetectorResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for ParseDetectorResult;
              goto LABEL_36;
            case 5:
              a1 = type metadata accessor for TextDetectorResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for TextDetectorResult;
              goto LABEL_36;
            case 6:
            case 7:
              a1 = type metadata accessor for StreamingBarcodeDetectorResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for StreamingBarcodeDetectorResult;
              goto LABEL_36;
            case 9:
            case 0xALL:
              v56 = swift_projectBox();
              a1 = v149;
              sub_1D8901B88(v56, v149, type metadata accessor for AFMResult);
              *(&v163 + 1) = v152;
              *&v164 = sub_1D8901B40(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
              v57 = __swift_allocate_boxed_opaque_existential_1(&v162);
              sub_1D8901C70(a1, v57, type metadata accessor for AFMResult);
              break;
            case 0xBLL:
              a1 = type metadata accessor for SyntheticDetectionResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for SyntheticDetectionResult;
              goto LABEL_36;
            case 0xCLL:
              a1 = type metadata accessor for GroundedParseEmbeddingsResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for GroundedParseEmbeddingsResult;
              goto LABEL_36;
            case 0xDLL:
              a1 = type metadata accessor for GroundedParseClassificationsResult(0);
              v53 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D8901B40(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v162);
              v55 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_36:
              v58 = v55;
              v59 = v53;
LABEL_37:
              sub_1D8901B88(v59, boxed_opaque_existential_1, v58);
              break;
            default:
              a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
              v60 = swift_projectBox();
              *(&v163 + 1) = a1;
              *&v164 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
              v61 = __swift_allocate_boxed_opaque_existential_1(&v162);
              a3 = v144;
              sub_1D87A0E38(v60, v61, &qword_1ECA67750, &unk_1D8B1E0C0);
              break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
          v62 = swift_dynamicCast();
          v63 = *v28;
          if (v62)
          {
            v63(v10, 0, 1, v15);
            a1 = v159;
            sub_1D8901C70(v10, v159, type metadata accessor for MetaDetectionResult);
            v64 = a1;
            if (*a1 == 13 && ((v154 & 1) == 0 || *(a1 + v15[8]) == v24) && ((v143 = v15[9], *(a1 + v143) != 2) || v24 - *(a1 + v15[8]) <= v50) && (CVBundle.latestEstimate.getter(&v170), v169 = v170, CVDetection.detection.getter(v166), a1 = v167, v65 = v168, __swift_project_boxed_opaque_existential_1(v166, v167), v66 = *(v65 + 64), v67 = v65, v28 = v160, v66(&v162, a1, v67), __swift_destroy_boxed_opaque_existential_1(v166), Corners.bounds.getter(), v69 = v68, v71 = v70, v73 = v72, v75 = v74, , v179.origin.x = 0.0, v179.origin.y = 0.0, v179.size.width = 1.0, v179.size.height = 1.0, v171.origin.x = v69, v171.origin.y = v71, v171.size.width = v73, v171.size.height = v75, v172 = CGRectIntersection(v171, v179), x = v172.origin.x, y = v172.origin.y, width = v172.size.width, height = v172.size.height, v80 = (v159 + v15[5]), *&v172.origin.y = v80[1], v162 = *v80, v163 = *&v172.origin.y, *&v172.origin.y = v80[3], v164 = v80[2], v165 = *&v172.origin.y, Corners.bounds.getter(), v180.origin.x = x, v180.origin.y = y, v180.size.width = width, v180.size.height = height, v174 = CGRectIntersection(v173, v180), v64 = v159, width * height * 0.9 <= v174.size.width * v174.size.height))
            {
              LODWORD(a1) = *(v159 + v143);
              if (a1 == 3)
              {
                if (qword_1EE0E54C0 != -1)
                {
                  swift_once();
                }

                if (sub_1D8B0AAA4())
                {
                  *&v162 = 0;
                  *(&v162 + 1) = 0xE000000000000000;
                  sub_1D8B16720();

                  *&v162 = 0xD000000000000047;
                  *(&v162 + 1) = 0x80000001D8B44050;
                  v139 = (v159 + v15[10]);
LABEL_127:
                  if (v139[1])
                  {
                    v140 = *v139;
                    v141 = v139[1];
                  }

                  else
                  {
                    v140 = 0x6F73616572206F6ELL;
                    v141 = 0xEF6E65766967206ELL;
                  }

                  MEMORY[0x1DA71EFA0](v140, v141);

                  sub_1D8B168C0();
                  __break(1u);
                  return;
                }

                sub_1D8901BF0(v159, type metadata accessor for MetaDetectionResult);
                if (v154)
                {
                  goto LABEL_105;
                }
              }

              else
              {
                sub_1D8901BF0(v159, type metadata accessor for MetaDetectionResult);
                if (a1 == 2)
                {
LABEL_105:

                  sub_1D8901BF0(v23, type metadata accessor for CVTrackSnapshot);
                  goto LABEL_57;
                }
              }
            }

            else
            {
              sub_1D8901BF0(v64, type metadata accessor for MetaDetectionResult);
            }
          }

          else
          {
            v63(v10, 1, 1, v15);
            sub_1D87A14E4(v10, &qword_1ECA64BB8, &qword_1D8B26820);
          }

          sub_1D8901BF0(v23, type metadata accessor for CVTrackSnapshot);
          v31 = v155;
          v28 = v150;
        }

        while (v158 != v29);
      }

      v26 = xmmword_1D8B26640;
      goto LABEL_3;
    }
  }

LABEL_57:
  v144 = a3;
  v159 = sub_1D891A6E8();
  v29 = v146;
  v158 = *(v159 + 16);
  if (v158)
  {
    v155 = *(v147 + 20);
    v157 = v159 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
    v23 = 0;
    a3 = (v148 + 56);
    v10 = 1;
    do
    {
      if (v23 >= *(v159 + 16))
      {
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
        goto LABEL_115;
      }

      sub_1D8901B88(v157 + *(v161 + 72) * v23, v21, type metadata accessor for CVTrackSnapshot);
      v81 = sub_1D8B16910();
      v82 = sub_1D881F7DC();
      if (v83)
      {
        goto LABEL_107;
      }

      a1 = (v81 + 8);
      *(v81 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v82;
      *(v81[6] + v82) = 1;
      *(v81[7] + 8 * v82) = 0x3FE999999999999ALL;
      v84 = v81[2];
      v36 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v36)
      {
        goto LABEL_108;
      }

      v81[2] = v85;
      v86 = sub_1D881F7DC();
      if (v87)
      {
        goto LABEL_109;
      }

      *(a1 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v86;
      *(v81[6] + v86) = 12;
      *(v81[7] + 8 * v86) = 0x3FE0000000000000;
      v88 = v81[2];
      v36 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v36)
      {
        goto LABEL_110;
      }

      v81[2] = v89;
      v90 = sub_1D881F7DC();
      if (v91)
      {
        goto LABEL_111;
      }

      *(a1 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
      *(v81[6] + v90) = 13;
      *(v81[7] + 8 * v90) = 0x3FE0000000000000;
      v92 = v81[2];
      v36 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v36)
      {
        goto LABEL_112;
      }

      v81[2] = v93;
      v94 = sub_1D881F7DC();
      if (v95)
      {
        goto LABEL_113;
      }

      *(a1 + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
      *(v81[6] + v94) = 5;
      *(v81[7] + 8 * v94) = 0x4020000000000000;
      v96 = v81[2];
      v36 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v36)
      {
        goto LABEL_114;
      }

      v81[2] = v97;
      v98 = 1.0;
      if (v97)
      {
        v99 = sub_1D881F7DC();
        if (v100)
        {
          v98 = *(v81[7] + 8 * v99);
        }
      }

      ++v23;

      switch(*&v21[v155] >> 60)
      {
        case 1:
          v113 = type metadata accessor for GroundedParseDetectorResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v113;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_85;
        case 2:
          v102 = swift_projectBox();
          *(&v163 + 1) = v15;
          *&v164 = sub_1D8901B40(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for MetaDetectionResult;
          goto LABEL_85;
        case 3:
        case 8:
          v101 = type metadata accessor for ObjectDetectorResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v101;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_85;
        case 4:
          v114 = type metadata accessor for ParseDetectorResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v114;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for ParseDetectorResult;
          goto LABEL_85;
        case 5:
          v115 = type metadata accessor for TextDetectorResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v115;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for TextDetectorResult;
          goto LABEL_85;
        case 6:
        case 7:
          v105 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v105;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_85;
        case 9:
        case 0xALL:
          v106 = swift_projectBox();
          a1 = v145;
          sub_1D8901B88(v106, v145, type metadata accessor for AFMResult);
          *(&v163 + 1) = v152;
          *&v164 = sub_1D8901B40(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v107 = __swift_allocate_boxed_opaque_existential_1(&v162);
          sub_1D8901C70(a1, v107, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          v108 = type metadata accessor for SyntheticDetectionResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v108;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_85;
        case 0xCLL:
          v109 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v109;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_85;
        case 0xDLL:
          v116 = type metadata accessor for GroundedParseClassificationsResult(0);
          v102 = swift_projectBox();
          *(&v163 + 1) = v116;
          v28 = v160;
          *&v164 = sub_1D8901B40(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          v103 = __swift_allocate_boxed_opaque_existential_1(&v162);
          v104 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_85:
          sub_1D8901B88(v102, v103, v104);
          break;
        default:
          a1 = &qword_1ECA67750;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v111 = swift_projectBox();
          *(&v163 + 1) = v110;
          v28 = v160;
          *&v164 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
          v112 = __swift_allocate_boxed_opaque_existential_1(&v162);
          sub_1D87A0E38(v111, v112, &qword_1ECA67750, &unk_1D8B1E0C0);
          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
      v117 = swift_dynamicCast();
      v118 = *a3;
      if (v117)
      {
        v118(v29, 0, 1, v15);
        sub_1D8901C70(v29, v28, type metadata accessor for MetaDetectionResult);
        if (*v28 == 5 && ((v154 & 1) == 0 || *(v28 + v15[8]) == v24) && ((a1 = v15[9], *(v28 + a1) != 2) || v24 - *(v28 + v15[8]) <= v98) && (CVBundle.latestEstimate.getter(&v170), v169 = v170, CVDetection.detection.getter(v166), v119 = v167, v120 = v168, __swift_project_boxed_opaque_existential_1(v166, v167), v121 = *(v120 + 64), v122 = v119, v28 = v160, v123 = v120, v29 = v146, v121(&v162, v122, v123), __swift_destroy_boxed_opaque_existential_1(v166), Corners.bounds.getter(), v125 = v124, v127 = v126, v129 = v128, v131 = v130, v10 = 1, , v181.origin.x = 0.0, v181.origin.y = 0.0, v181.size.width = 1.0, v181.size.height = 1.0, v175.origin.x = v125, v175.origin.y = v127, v175.size.width = v129, v175.size.height = v131, v176 = CGRectIntersection(v175, v181), v132 = v176.origin.x, v133 = v176.origin.y, v134 = v176.size.width, v135 = v176.size.height, v136 = (v28 + v15[5]), *&v176.origin.y = v136[1], v162 = *v136, v163 = *&v176.origin.y, *&v176.origin.y = v136[3], v164 = v136[2], v165 = *&v176.origin.y, Corners.bounds.getter(), v182.origin.x = v132, v182.origin.y = v133, v182.size.width = v134, v182.size.height = v135, v178 = CGRectIntersection(v177, v182), v134 * v135 * 0.9 <= v178.size.width * v178.size.height))
        {
          LODWORD(a1) = *(v28 + a1);
          if (a1 == 3)
          {
            if (qword_1EE0E54C0 != -1)
            {
              swift_once();
            }

            if (sub_1D8B0AAA4())
            {
              *&v162 = 0;
              *(&v162 + 1) = 0xE000000000000000;
              sub_1D8B16720();

              *&v162 = 0xD00000000000002FLL;
              *(&v162 + 1) = 0x80000001D8B43DD0;
              v139 = (v28 + v15[10]);
              goto LABEL_127;
            }

            sub_1D8901BF0(v28, type metadata accessor for MetaDetectionResult);
            if (v154)
            {
              goto LABEL_104;
            }
          }

          else
          {
            sub_1D8901BF0(v28, type metadata accessor for MetaDetectionResult);
            if (a1 == 2)
            {
LABEL_104:

              sub_1D8901BF0(v21, type metadata accessor for CVTrackSnapshot);
              v138 = v144;
              *v144 = 0;
              v138[1] = 0;
              *(v138 + 16) = -1;
              return;
            }
          }
        }

        else
        {
          sub_1D8901BF0(v28, type metadata accessor for MetaDetectionResult);
        }
      }

      else
      {
        v118(v29, 1, 1, v15);
        sub_1D87A14E4(v29, &qword_1ECA64BB8, &qword_1D8B26820);
      }

      sub_1D8901BF0(v21, type metadata accessor for CVTrackSnapshot);
    }

    while (v158 != v23);
  }

  v137 = v144;
  *v144 = xmmword_1D8B26640;
  *(v137 + 16) = 2;
}

uint64_t sub_1D88FA6C8(uint64_t a1, _OWORD *a2)
{
  v2 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2[3];
  v43[2] = a2[2];
  v43[3] = v3;
  v43[4] = a2[4];
  v4 = a2[1];
  v43[0] = *a2;
  v43[1] = v4;
  static MapsResultsClassifier.lookupDetectionType(bundle:)(a1, v44);
  LOBYTE(v5) = v45;
  if (v45 > 0xFDu)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v7 = v44[0];
  v6 = v44[1];
  if (qword_1ECA620F0 != -1)
  {
LABEL_59:
    swift_once();
  }

  if ((sub_1D8B147C0() & 1) == 0)
  {
    sub_1D8901870(v7, v6, v5);
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633D8, &unk_1D8B1E9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  CVBundle.latestEstimate.getter(v44);
  if (v44[0] >> 60)
  {

    sub_1D8901870(v7, v6, v5);
  }

  else
  {

    sub_1D8901870(v7, v6, v5);
    if ((v5 & 0x80) == 0)
    {
      v10 = *(inited + 16);
      v9 = *(inited + 24);
      if (v10 >= v9 >> 1)
      {
        inited = sub_1D87C8F58((v9 > 1), v10 + 1, 1, inited);
      }

      *(inited + 16) = v10 + 1;
      *(inited + v10 + 32) = 13;
    }
  }

  v6 = *(inited + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = v2;
    v44[0] = MEMORY[0x1E69E7CC0];

    sub_1D87F4140(0, v6, 0);
    v5 = v44[0];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
    v12 = 32;
    while (1)
    {
      v2 = *(inited + v12);
      v13 = sub_1D8B16910();
      v14 = sub_1D881F7DC();
      if (v15)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
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
        goto LABEL_59;
      }

      v16 = v13 + 8;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      *(v13[6] + v14) = 1;
      *(v13[7] + 8 * v14) = 0x4024000000000000;
      v17 = v13[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_52;
      }

      v13[2] = v19;
      v20 = sub_1D881F7DC();
      if (v21)
      {
        goto LABEL_53;
      }

      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v13[6] + v20) = 12;
      *(v13[7] + 8 * v20) = 0x4024000000000000;
      v22 = v13[2];
      v18 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v18)
      {
        goto LABEL_54;
      }

      v13[2] = v23;
      v24 = sub_1D881F7DC();
      if (v25)
      {
        goto LABEL_55;
      }

      *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(v13[6] + v24) = 13;
      *(v13[7] + 8 * v24) = 0x4024000000000000;
      v26 = v13[2];
      v18 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v18)
      {
        goto LABEL_56;
      }

      v13[2] = v27;
      v28 = sub_1D881F7DC();
      if (v29)
      {
        goto LABEL_57;
      }

      *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(v13[6] + v28) = 5;
      *(v13[7] + 8 * v28) = 0x3FF0000000000000;
      v30 = v13[2];
      v18 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v18)
      {
        goto LABEL_58;
      }

      v13[2] = v31;
      if (v31 && (v32 = sub_1D881F7DC(), (v33 & 1) != 0))
      {
        v34 = *(v13[7] + 8 * v32);
      }

      else
      {

        if (v2 > 5)
        {
          if (v2 <= 8)
          {
            if ((v2 - 6) >= 2)
            {
              goto LABEL_60;
            }

            v34 = 60.0;
          }

          else
          {
            if ((v2 - 9) >= 2)
            {
              if ((v2 - 12) >= 2)
              {
LABEL_60:
                sub_1D8B168C0();
                __break(1u);
                result = swift_unexpectedError();
                __break(1u);
                return result;
              }

LABEL_37:
              v34 = 10.0;
              goto LABEL_38;
            }

            v34 = 0.0;
          }
        }

        else
        {
          if (v2 <= 2)
          {
            goto LABEL_37;
          }

          if (v2 == 3)
          {
            v34 = 4.0;
            goto LABEL_38;
          }

          if (v2 == 4)
          {
            goto LABEL_37;
          }

          v34 = 1.0;
        }
      }

LABEL_38:
      v44[0] = v5;
      v36 = *(v5 + 16);
      v35 = *(v5 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D87F4140((v35 > 1), v36 + 1, 1);
        v5 = v44[0];
      }

      *(v5 + 16) = v36 + 1;
      *(v5 + 8 * v36 + 32) = v34;
      ++v12;
      if (!--v6)
      {

        v37 = *(inited + 16);
        v2 = v42;
        goto LABEL_44;
      }
    }
  }

  v37 = 0;
LABEL_44:
  if (*(v5 + 16) >= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = *(v5 + 16);
  }

  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
    v39 = sub_1D8B16910();
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC8];
  }

  v44[0] = v39;
  sub_1D890030C(inited, v5, 1, v44);
  v40 = sub_1D89DF91C(v2, v43, v44[0]);

  v41 = sub_1D891B418(v2, v43);
  return sub_1D8917354(v41, v40);
}

uint64_t sub_1D88FACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[79] = a5;
  v5[78] = a3;
  v5[77] = a2;
  v5[76] = a1;
  v6 = sub_1D8B147B0();
  v5[80] = v6;
  v5[81] = *(v6 - 8);
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  type metadata accessor for CVTrackSnapshot(0);
  v5[85] = swift_task_alloc();
  v5[86] = type metadata accessor for CVBundle.BundleType(0);
  v5[87] = swift_task_alloc();
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v7 = sub_1D8B13240();
  v5[93] = v7;
  v5[94] = *(v7 - 8);
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();
  v5[105] = swift_task_alloc();
  v5[106] = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  v5[107] = swift_task_alloc();
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v5[110] = swift_task_alloc();
  v5[111] = swift_task_alloc();
  v5[112] = swift_task_alloc();
  v5[113] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[114] = swift_task_alloc();
  v5[115] = swift_task_alloc();
  v5[116] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88FAFAC, 0, 0);
}

uint64_t sub_1D88FAFAC(uint64_t a1)
{
  v14 = v1;
  v2 = *(v1 + 616);
  CVBundle.latestEstimate.getter(&v11);
  *&v12 = v11;
  CVDetection.detection.getter((v1 + 16));
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  v5 = (*(v4 + 88))(v3, v4);
  *(v1 + 936) = v5;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  static MapsResultsClassifier.lookupDetectionType(bundle:)(v2, &v12);
  *(v1 + 944) = v12;
  v6 = v13;
  *(v1 + 361) = v13;
  if (v6 <= 0xFD)
  {
    v10 = swift_task_alloc();
    *(v1 + 960) = v10;
    *v10 = v1;
    v10[1] = sub_1D88FB328;

    return sub_1D88FF138(v1 + 336);
  }

  else
  {
    v7 = *(v1 + 632);
    *v7 = 0;
    *(v7 + 8) = xmmword_1D8B26630;
    *(v7 + 24) = 2;
    *(v7 + 32) = v5;
    *(v1 + 56) = 0;
    *(v1 + 64) = xmmword_1D8B26630;
    *(v1 + 80) = 2;
    *(v1 + 88) = v5;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_1D88FB328()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FB424, 0, 0);
}

uint64_t sub_1D88FB424()
{
  v34 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  *(v0 + 968) = v1;
  *(v0 + 976) = v2;
  v3 = *(v0 + 352);
  *(v0 + 984) = v3;
  v4 = *(v0 + 360);
  *(v0 + 362) = v4;
  if (v4 == 255)
  {
    sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
    if (qword_1EE0E42F8 != -1)
    {
      swift_once();
    }

    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1EE0E4300);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D8783000, v9, v10, "No location available for MapsResultsClassifier. Requesting location access…", v11, 2u);
      MEMORY[0x1DA721330](v11, -1, -1);
    }

    v12 = *(v0 + 616);

    static MapsResultsClassifier.lookupDetectionType(bundle:)(v12, &v30);
    v13 = v32;
    if (v32 > 0xFDu || (v14 = v30, v15 = v31, v16 = MEMORY[0x1E69E7CC0], v17 = sub_1D893EB38(MEMORY[0x1E69E7CC0]), sub_1D88F0C30(v14, v15), sub_1D88F0C30(v17, v16), v13 < 0))
    {
      v20 = *(v0 + 936);
      v21 = *(v0 + 632);
      *v21 = 0;
      *(v21 + 8) = xmmword_1D8B281A0;
      *(v21 + 24) = 2;
      *(v21 + 32) = v20;
      *(v0 + 96) = 0;
      *(v0 + 104) = xmmword_1D8B281A0;
      *(v0 + 120) = 2;
      *(v0 + 128) = v20;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();

      v22 = *(v0 + 8);

      return v22();
    }

    else
    {
      *(v0 + 1032) = sub_1D8B15E80();
      *(v0 + 1040) = sub_1D8B15E70();
      v19 = sub_1D8B15E00();

      return MEMORY[0x1EEE6DFA0](sub_1D88FE608, v19, v18);
    }
  }

  else
  {
    sub_1D8901B88(*(v0 + 624), *(v0 + 928), type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 928);
    if (EnumCaseMultiPayload)
    {
      sub_1D8901BF0(v6, type metadata accessor for BundleClassification.ClassificationType);
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v7 = *v6;
    }

    *(v0 + 992) = v7;
    if (qword_1ECA620F0 != -1)
    {
      swift_once();
    }

    v30 = v1;
    v31 = v2;
    v32 = v3;
    v33 = v4;
    sub_1D88EA768(&v30);
    if (qword_1ECA62210 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 361);
    v24 = *(v0 + 952);
    v25 = *(v0 + 944);
    v26 = type metadata accessor for LoggingSignposter(0);
    __swift_project_value_buffer(v26, qword_1ECA66B70);
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("MapsResultsClassifier.rank", 26, 2u, 1, 0, (v0 + 136));
    *(v0 + 424) = v25;
    *(v0 + 432) = v24;
    *(v0 + 440) = v23;
    v27 = CVBundle.textDetections.getter();
    *(v0 + 1000) = v27;
    *(v0 + 368) = v1;
    *(v0 + 376) = v2;
    *(v0 + 384) = v3;
    *(v0 + 392) = v4;
    v28 = swift_task_alloc();
    *(v0 + 1008) = v28;
    *v28 = v0;
    v28[1] = sub_1D88FBA2C;

    return sub_1D88EAECC((v0 + 424), v27, (v0 + 368));
  }
}

uint64_t sub_1D88FBA2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1016) = a1;
  *(v3 + 1024) = v1;

  if (v1)
  {

    v4 = sub_1D88FEB10;
  }

  else
  {
    v4 = sub_1D88FBB60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D88FBB60()
{
  v410 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v2);
  (*(v3 + 8))(v2, v3);
  v4 = *(v1 + 16);
  v5 = *(v0 + 992);
  if (!v4)
  {

    v20 = *(v5 + 16);

    if (v20)
    {
      if (qword_1ECA62160 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 952);
      v22 = *(v0 + 944);
      v23 = *(v0 + 856);
      v24 = *(v0 + 616);
      v25 = *(v0 + 361);
      v26 = sub_1D8B151E0();
      __swift_project_value_buffer(v26, qword_1ECA66A08);
      sub_1D8901B88(v24, v23, type metadata accessor for CVBundle);
      sub_1D88F0BF8(v22, v21);
      v27 = sub_1D8B151C0();
      v28 = sub_1D8B161F0();
      sub_1D8901870(v22, v21, v25);
      if (os_log_type_enabled(v27, v28))
      {
        v407 = v28;
        v29 = *(v0 + 856);
        v30 = *(v0 + 696);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v409[0] = v32;
        *v31 = 136315394;
        sub_1D8901B88(v29, v30, type metadata accessor for CVBundle.BundleType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v34 = *(v0 + 760);
        v35 = *(v0 + 752);
        v36 = *(v0 + 744);
        v37 = *(v0 + 696);
        v399 = v32;
        if (EnumCaseMultiPayload == 1)
        {
          v38 = *(v35 + 32);
          v38(v34, v37, v36);
        }

        else
        {
          v93 = *(v0 + 680);
          sub_1D8901C70(v37, v93, type metadata accessor for CVTrackSnapshot);
          (*(v35 + 16))(v34, v93, v36);
          sub_1D8901BF0(v93, type metadata accessor for CVTrackSnapshot);
          v38 = *(v35 + 32);
        }

        v396 = *(v0 + 361);
        v387 = *(v0 + 952);
        v94 = *(v0 + 944);
        v95 = *(v0 + 856);
        v96 = *(v0 + 768);
        v97 = *(v0 + 752);
        v98 = *(v0 + 744);
        v38(v96, *(v0 + 760), v98);
        sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v99 = sub_1D8B16B50();
        v101 = v100;
        (*(v97 + 8))(v96, v98);
        sub_1D8901BF0(v95, type metadata accessor for CVBundle);
        v102 = sub_1D89AC714(v99, v101, v409);

        *(v31 + 4) = v102;
        *(v31 + 12) = 2080;
        *(v0 + 568) = v94;
        *(v0 + 576) = v387;
        *(v0 + 584) = v396;
        v103 = sub_1D8B159E0();
        v105 = sub_1D89AC714(v103, v104, v409);

        *(v31 + 14) = v105;
        _os_log_impl(&dword_1D8783000, v27, v407, "[%s / %s] classified with zero results", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v399, -1, -1);
        MEMORY[0x1DA721330](v31, -1, -1);
      }

      else
      {
        v78 = *(v0 + 856);
        sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));

        sub_1D8901BF0(v78, type metadata accessor for CVBundle);
      }
    }

    else
    {
      sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
    }

    v106 = *(v0 + 936);
    sub_1D88E0E0C();
    v107 = swift_allocError();
    *v108 = 0;
    *(v108 + 8) = xmmword_1D8B281B0;
    *(v108 + 24) = 0x80;
    *(v108 + 32) = v106;
    swift_willThrow();
    goto LABEL_50;
  }

  sub_1D8901898(*(v0 + 1016));
  v7 = v6;

  v8 = v7[2];
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v7[2];
  }

  v10 = *(v5 + 16);
  if (!v8)
  {

    if (v10)
    {
      if (qword_1ECA62160 != -1)
      {
        goto LABEL_145;
      }

      goto LABEL_20;
    }

    sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
LABEL_49:
    v122 = *(v0 + 936);
    sub_1D88E0E0C();
    v107 = swift_allocError();
    *v123 = 0;
    *(v123 + 8) = 0xD000000000000015;
    *(v123 + 16) = 0x80000001D8B44010;
    *(v123 + 24) = 0x80;
    *(v123 + 32) = v122;
    swift_willThrow();

LABEL_50:
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    *(v0 + 592) = v107;
    v124 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
    if (!swift_dynamicCast())
    {
      v142 = *(v0 + 984);
      v143 = *(v0 + 976);
      v144 = *(v0 + 968);
      v145 = *(v0 + 936);
      v146 = *(v0 + 632);
      v147 = *(v0 + 362);

      swift_getErrorValue();
      v148 = sub_1D8B16C90();
      *v146 = 0;
      *(v146 + 8) = v148;
      *(v146 + 16) = v149;
      *(v146 + 24) = 64;
      *(v146 + 32) = v145;
      *(v0 + 176) = 0;
      *(v0 + 184) = v148;
      *(v0 + 192) = v149;
      *(v0 + 200) = 64;
      *(v0 + 208) = v145;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      sub_1D8901884(v144, v143, v142, v147);
      v150 = v107;
LABEL_58:

      v155 = *(v0 + 8);
      goto LABEL_92;
    }

    v125 = *(v0 + 672);
    v126 = *(v0 + 664);
    v127 = *(v0 + 656);
    v128 = *(v0 + 648);
    v129 = *(v0 + 640);

    (*(v128 + 32))(v126, v125, v129);
    (*(v128 + 16))(v127, v126, v129);
    v130 = (*(v128 + 88))(v127, v129);
    if (v130 != *MEMORY[0x1E69E0278])
    {
      if (v130 == *MEMORY[0x1E69E0280])
      {
        v131 = *(v0 + 984);
        v132 = *(v0 + 976);
        v133 = *(v0 + 968);
        v151 = *(v0 + 936);
        v135 = *(v0 + 664);
        v136 = *(v0 + 648);
        v137 = *(v0 + 640);
        v152 = *(v0 + 632);
        v139 = *(v0 + 362);
        sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290], MEMORY[0x1E69E0298]);
        v153 = sub_1D8B16C90();
        *v152 = 1;
        *(v152 + 8) = v153;
        *(v152 + 16) = v154;
        *(v152 + 24) = 64;
        *(v152 + 32) = v151;
        *(v0 + 256) = 1;
        *(v0 + 264) = v153;
        *(v0 + 272) = v154;
        *(v0 + 280) = 64;
        *(v0 + 288) = v151;
        sub_1D88E0E0C();
        goto LABEL_56;
      }

      if (v130 != *MEMORY[0x1E69E0288])
      {
        v156 = *(v0 + 984);
        v157 = *(v0 + 976);
        v158 = *(v0 + 968);
        v159 = *(v0 + 936);
        v160 = *(v0 + 664);
        v161 = *(v0 + 656);
        v162 = *(v0 + 648);
        v163 = *(v0 + 640);
        v164 = *(v0 + 632);
        v165 = *(v0 + 362);
        sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290], MEMORY[0x1E69E0298]);
        v166 = sub_1D8B16C90();
        *v164 = 0;
        *(v164 + 8) = v166;
        *(v164 + 16) = v167;
        *(v164 + 24) = 64;
        *(v164 + 32) = v159;
        *(v0 + 216) = 0;
        *(v0 + 224) = v166;
        *(v0 + 232) = v167;
        *(v0 + 240) = 64;
        *(v0 + 248) = v159;
        sub_1D88E0E0C();
        swift_willThrowTypedImpl();
        sub_1D8901884(v158, v157, v156, v165);
        v168 = *(v162 + 8);
        v168(v160, v163);
        v168(v161, v163);
        goto LABEL_57;
      }
    }

    v131 = *(v0 + 984);
    v132 = *(v0 + 976);
    v133 = *(v0 + 968);
    v134 = *(v0 + 936);
    v135 = *(v0 + 664);
    v136 = *(v0 + 648);
    v137 = *(v0 + 640);
    v138 = *(v0 + 632);
    v139 = *(v0 + 362);
    sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290], MEMORY[0x1E69E0298]);
    v140 = sub_1D8B16C90();
    *v138 = 0;
    *(v138 + 8) = v140;
    *(v138 + 16) = v141;
    *(v138 + 24) = 64;
    *(v138 + 32) = v134;
    *(v0 + 296) = 0;
    *(v0 + 304) = v140;
    *(v0 + 312) = v141;
    *(v0 + 320) = 64;
    *(v0 + 328) = v134;
    sub_1D88E0E0C();
LABEL_56:
    swift_willThrowTypedImpl();
    sub_1D8901884(v133, v132, v131, v139);
    (*(v136 + 8))(v135, v137);
LABEL_57:
    v150 = *(v0 + 592);
    goto LABEL_58;
  }

  v406 = v7;
  v386 = (v7 + 4);
  v377 = (2 * v9) | 1;
  v11 = MEMORY[0x1E69E7CC0];
  v398 = v9;
  log = *(v5 + 16);
  if (v10)
  {
    v12 = *(v0 + 992);
    v409[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F4810(0, v10, 0);
    v13 = v409[0];
    v14 = (v12 + 32);
    v15 = v10;
    do
    {
      v16 = [*v14 muid];
      v409[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = v16;
        sub_1D87F4810((v17 > 1), v18 + 1, 1);
        v16 = v19;
        v13 = v409[0];
      }

      *(v13 + 16) = v18 + 1;
      *(v13 + 8 * v18 + 32) = v16;
      v14 += 5;
      --v15;
    }

    while (v15);
    v9 = v398;
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v409[0] = v11;
  sub_1D87F4810(0, v9, 0);
  v55 = 4;
  v56 = v409[0];
  v57 = v9;
  do
  {
    v58 = [v7[v55] muid];
    v409[0] = v56;
    v60 = *(v56 + 16);
    v59 = *(v56 + 24);
    if (v60 >= v59 >> 1)
    {
      v393 = v58;
      sub_1D87F4810((v59 > 1), v60 + 1, 1);
      v58 = v393;
      v56 = v409[0];
    }

    *(v56 + 16) = v60 + 1;
    *(v56 + 8 * v60 + 32) = v58;
    v55 += 5;
    --v57;
  }

  while (v57);
  v61 = sub_1D88E78AC(v13, v56);

  if (v61)
  {
    v62 = *(v0 + 952);
    v63 = *(v0 + 944);
    v64 = *(v0 + 361);

    sub_1D8901870(v63, v62, v64);
    if (v406[2] == v398)
    {

      v394 = v406;
    }

    else
    {
      sub_1D8AB5D04(v406, v386, 0, v377);
      v394 = v351;
    }

    v65 = *(v0 + 984);
    v66 = *(v0 + 976);
    v67 = *(v0 + 968);
    v68 = *(v0 + 936);
    v69 = *(v0 + 912);
    v401 = *(v0 + 608);
    v70 = v406[4];
    v71 = v406[7];
    v72 = *(v0 + 362);

    v73 = v70;

    sub_1D8901884(v67, v66, v65, v72);

    *v69 = v394;
    v69[1] = v71;
    swift_storeEnumTagMultiPayload();
    v74 = type metadata accessor for BundleClassification(0);
    v75 = *(v74 + 20);
    v76 = v401;
    goto LABEL_89;
  }

  v77 = v406;
  if (v8 == 1 || !*(v5 + 16))
  {
    goto LABEL_77;
  }

  v79 = *(*(v0 + 992) + 32);

  v395 = v79;

  v80 = v406 + 8;
  v81 = v406[4];
  v82 = *(v406 + 7);

  v375 = v81;

  v83 = 0;
  while (1)
  {
    v84 = (v83 + 1);
    if (__OFADD__(v83, 1))
    {
      __break(1u);
LABEL_140:

      v274 = v13;
LABEL_129:
      v298 = *(v0 + 952);
      v299 = *(v0 + 944);
      v300 = *(v0 + 880);
      v301 = *(v0 + 616);
      v302 = *(v0 + 361);

      v409[0] = v363;
      sub_1D88F495C(v274);
      v303 = v409[0];
      sub_1D8901B88(v301, v300, type metadata accessor for CVBundle);

      sub_1D8901B00(v299, v298, v302);

      v304 = sub_1D8B151C0();
      v305 = sub_1D8B161F0();
      sub_1D8901870(v299, v298, v302);
      if (os_log_type_enabled(v304, v305))
      {
        v306 = *(v0 + 880);
        v307 = *(v0 + 720);
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        v409[0] = v309;
        *v308 = 136315650;
        sub_1D8901B88(v306, v307, type metadata accessor for CVBundle.BundleType);
        v310 = swift_getEnumCaseMultiPayload();
        v311 = *(v0 + 808);
        v312 = *(v0 + 752);
        v313 = *(v0 + 744);
        v314 = *(v0 + 720);
        v405 = v304;
        v390 = v305;
        loge = v309;
        if (v310 == 1)
        {
          v315 = *(v312 + 32);
          v315(v311, v314, v313);
        }

        else
        {
          v320 = *(v0 + 680);
          sub_1D8901C70(v314, v320, type metadata accessor for CVTrackSnapshot);
          (*(v312 + 16))(v311, v320, v313);
          sub_1D8901BF0(v320, type metadata accessor for CVTrackSnapshot);
          v315 = *(v312 + 32);
        }

        v370 = *(v0 + 361);
        v361 = *(v0 + 944);
        v365 = *(v0 + 952);
        v358 = *(v0 + 880);
        v321 = *(v0 + 816);
        v322 = *(v0 + 752);
        v323 = *(v0 + 744);
        v315(v321, *(v0 + 808), v323);
        sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v324 = sub_1D8B16B50();
        v326 = v325;
        (*(v322 + 8))(v321, v323);
        sub_1D8901BF0(v358, type metadata accessor for CVBundle);
        v327 = sub_1D89AC714(v324, v326, v409);

        *(v308 + 4) = v327;
        *(v308 + 12) = 2080;
        *(v0 + 472) = v361;
        *(v0 + 480) = v365;
        *(v0 + 488) = v370;
        v328 = sub_1D8B159E0();
        v330 = sub_1D89AC714(v328, v329, v409);

        *(v308 + 14) = v330;
        *(v308 + 22) = 2048;
        v331 = *(v303 + 16);

        *(v308 + 24) = v331;

        _os_log_impl(&dword_1D8783000, v405, v390, "[%s / %s] classified with %ld results", v308, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](loge, -1, -1);
        MEMORY[0x1DA721330](v308, -1, -1);
      }

      else
      {
        v316 = *(v0 + 952);
        v317 = *(v0 + 944);
        v318 = *(v0 + 880);
        v319 = *(v0 + 361);

        sub_1D8901870(v317, v316, v319);

        sub_1D8901BF0(v318, type metadata accessor for CVBundle);
      }

      v391 = *(v0 + 984);
      v332 = *(v0 + 976);
      v333 = *(v0 + 968);
      v68 = *(v0 + 936);
      v231 = *(v0 + 608);
      v334 = v406[4];
      v335 = v406[7];
      v336 = *(v0 + 362);

      v337 = v334;

      sub_1D8901884(v333, v332, v391, v336);

      *v231 = v303;
      v231[1] = v335;
      swift_storeEnumTagMultiPayload();
      v74 = type metadata accessor for BundleClassification(0);
      v338 = v231 + *(v74 + 20);
      *v338 = 2;
      *(v338 + 8) = 0u;
      *(v338 + 24) = 0u;
      sub_1D88E0FE4(2, 0, 0, 0);
      *v338 = 2;
      *(v338 + 8) = 0u;
      *(v338 + 24) = 0u;
      goto LABEL_90;
    }

    v61 = *(v80 - 3);
    v85 = *(v80 - 2);
    v13 = *v80;
    v86 = *(v80 - 1);
    v87 = *(v80 - 4);

    v88 = v87;
    v89 = v85;
    v90 = v88;

    v91 = [v90 muid];
    if (v91 == [v395 muid])
    {
      break;
    }

    ++v83;
    v80 += 5;
    if (v84 == v398)
    {

      v77 = v406;
      goto LABEL_78;
    }
  }

  v77 = v406;
  if (!log)
  {
    goto LABEL_76;
  }

  if (log != 1)
  {
    if (vabdd_f64(v86, v82) > 0.1)
    {
      goto LABEL_76;
    }

    v372 = v13;
    v378 = v89;
    if (qword_1ECA62160 != -1)
    {
      swift_once();
    }

    v233 = *(v0 + 952);
    v234 = *(v0 + 944);
    v235 = *(v0 + 888);
    v236 = *(v0 + 616);
    v237 = *(v0 + 361);
    v238 = sub_1D8B151E0();
    __swift_project_value_buffer(v238, qword_1ECA66A08);
    sub_1D8901B88(v236, v235, type metadata accessor for CVBundle);
    v239 = v234;
    v240 = v234;
    v241 = v233;
    sub_1D8901B00(v239, v233, v237);
    v242 = sub_1D8B151C0();
    v243 = sub_1D8B16200();
    sub_1D8901870(v240, v241, v237);
    v244 = os_log_type_enabled(v242, v243);
    v245 = *(v0 + 888);
    if (v244)
    {
      v368 = v243;
      logc = v242;
      v246 = *(v0 + 728);
      v247 = swift_slowAlloc();
      v364 = swift_slowAlloc();
      v409[0] = v364;
      v360 = v247;
      *v247 = 136315394;
      sub_1D8901B88(v245, v246, type metadata accessor for CVBundle.BundleType);
      v248 = swift_getEnumCaseMultiPayload();
      v249 = *(v0 + 824);
      v250 = *(v0 + 752);
      v251 = *(v0 + 744);
      if (v248 == 1)
      {
        v252 = *(v250 + 32);
        v252(*(v0 + 824), *(v0 + 728), *(v0 + 744));
      }

      else
      {
        v260 = *(v0 + 680);
        sub_1D8901C70(*(v0 + 728), v260, type metadata accessor for CVTrackSnapshot);
        (*(v250 + 16))(v249, v260, v251);
        sub_1D8901BF0(v260, type metadata accessor for CVTrackSnapshot);
        v252 = *(v250 + 32);
      }

      v355 = *(v0 + 944);
      v357 = *(v0 + 952);
      v353 = *(v0 + 888);
      v261 = *(v0 + 832);
      v262 = *(v0 + 752);
      v263 = *(v0 + 744);
      v264 = *(v0 + 361);
      v252(v261, *(v0 + 824), v263);
      sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v265 = sub_1D8B16B50();
      v267 = v266;
      (*(v262 + 8))(v261, v263);
      sub_1D8901BF0(v353, type metadata accessor for CVBundle);
      v268 = sub_1D89AC714(v265, v267, v409);

      *(v360 + 1) = v268;
      *(v360 + 6) = 2080;
      *(v0 + 496) = v355;
      *(v0 + 504) = v357;
      *(v0 + 512) = v264;
      sub_1D8901B00(v355, v357, v264);
      v269 = sub_1D8B159E0();
      v271 = sub_1D89AC714(v269, v270, v409);

      *(v360 + 14) = v271;
      _os_log_impl(&dword_1D8783000, logc, v368, "[%s / %s] New classification has different top result, but previous top result is still contained in result set with sufficient score. Reordering results to preserve existing top result", v360, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v364, -1, -1);
      MEMORY[0x1DA721330](v360, -1, -1);
    }

    else
    {

      sub_1D8901BF0(v245, type metadata accessor for CVBundle);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633C0, &unk_1D8B1E9A0);
    v272 = swift_allocObject();
    *(v272 + 16) = xmmword_1D8B1AB90;
    *(v272 + 32) = v90;
    *(v272 + 40) = v61;
    *(v272 + 48) = v378;
    *(v272 + 56) = v86;
    v363 = v272;
    *(v272 + 64) = v372;
    v367 = v90;

    v273 = 0;
    v274 = MEMORY[0x1E69E7CC0];
    v275 = v398;
    while (1)
    {
      if (v273 >= v275)
      {
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        swift_once();
LABEL_20:
        v39 = *(v0 + 952);
        v40 = *(v0 + 944);
        v41 = *(v0 + 864);
        v42 = *(v0 + 616);
        v43 = *(v0 + 361);
        v44 = sub_1D8B151E0();
        __swift_project_value_buffer(v44, qword_1ECA66A08);
        sub_1D8901B88(v42, v41, type metadata accessor for CVBundle);
        sub_1D88F0BF8(v40, v39);
        v45 = sub_1D8B151C0();
        v46 = sub_1D8B161F0();
        sub_1D8901870(v40, v39, v43);
        if (os_log_type_enabled(v45, v46))
        {
          v400 = v46;
          v47 = *(v0 + 864);
          v48 = *(v0 + 704);
          v49 = swift_slowAlloc();
          v392 = swift_slowAlloc();
          v409[0] = v392;
          *v49 = 136315394;
          sub_1D8901B88(v47, v48, type metadata accessor for CVBundle.BundleType);
          v50 = swift_getEnumCaseMultiPayload();
          v51 = *(v0 + 776);
          v52 = *(v0 + 752);
          v53 = *(v0 + 744);
          if (v50 == 1)
          {
            v54 = *(v52 + 32);
            v54(*(v0 + 776), *(v0 + 704), *(v0 + 744));
          }

          else
          {
            v109 = *(v0 + 680);
            sub_1D8901C70(*(v0 + 704), v109, type metadata accessor for CVTrackSnapshot);
            (*(v52 + 16))(v51, v109, v53);
            sub_1D8901BF0(v109, type metadata accessor for CVTrackSnapshot);
            v54 = *(v52 + 32);
          }

          v388 = *(v0 + 361);
          logf = *(v0 + 952);
          v110 = *(v0 + 944);
          v111 = *(v0 + 864);
          v112 = *(v0 + 784);
          v113 = *(v0 + 752);
          v114 = *(v0 + 744);
          v54(v112, *(v0 + 776), v114);
          sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v115 = sub_1D8B16B50();
          v117 = v116;
          (*(v113 + 8))(v112, v114);
          sub_1D8901BF0(v111, type metadata accessor for CVBundle);
          v118 = sub_1D89AC714(v115, v117, v409);

          *(v49 + 4) = v118;
          *(v49 + 12) = 2080;
          *(v0 + 544) = v110;
          *(v0 + 552) = logf;
          *(v0 + 560) = v388;
          v119 = sub_1D8B159E0();
          v121 = sub_1D89AC714(v119, v120, v409);

          *(v49 + 14) = v121;
          _os_log_impl(&dword_1D8783000, v45, v400, "[%s / %s] classified with zero results", v49, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v392, -1, -1);
          MEMORY[0x1DA721330](v49, -1, -1);
        }

        else
        {
          v92 = *(v0 + 864);
          sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));

          sub_1D8901BF0(v92, type metadata accessor for CVBundle);
        }

        goto LABEL_49;
      }

      v276 = (&v273->isa + 1);
      if (__OFADD__(v273, 1))
      {
        goto LABEL_144;
      }

      v13 = v274;
      v277 = v386 + 40 * v273;
      v278 = *(v277 + 32);
      v279 = *(v277 + 24);
      v280 = *v277;
      v281 = *(v277 + 16);
      logd = *(v277 + 8);

      v61 = v280;

      v282 = [v61 muid];
      if (v282 != [v395 muid])
      {
        break;
      }

      if (v276 == v398)
      {
        goto LABEL_128;
      }

      if (v276 >= v398)
      {
        goto LABEL_143;
      }

      v273 = (&v276->isa + 1);
      if (__OFADD__(v276, 1))
      {
        goto LABEL_144;
      }

      v283 = v386 + 40 * v276;
      v284 = *(v283 + 32);
      v279 = *(v283 + 24);
      v285 = *v283;
      v281 = *(v283 + 16);
      logd = *(v283 + 8);

      v61 = v285;

      v286 = [v61 muid];
      if (v286 == [v395 muid])
      {

        if (v273 == v398)
        {
          goto LABEL_128;
        }

        if (v273 >= v398)
        {
          goto LABEL_143;
        }

        v276 = (&v273->isa + 1);
        if (__OFADD__(v273, 1))
        {
          goto LABEL_144;
        }

        v287 = v386 + 40 * v273;
        v278 = *(v287 + 32);
        v279 = *(v287 + 24);
        v288 = *v287;
        v281 = *(v287 + 16);
        logd = *(v287 + 8);

        v61 = v288;

        v289 = [v61 muid];
        if (v289 != [v395 muid])
        {
          break;
        }

        if (v276 == v398)
        {
LABEL_128:
          v274 = v13;
          goto LABEL_129;
        }

        if (v276 >= v398)
        {
          goto LABEL_143;
        }

        v273 = (&v276->isa + 1);
        if (__OFADD__(v276, 1))
        {
          goto LABEL_144;
        }

        v290 = v386 + 40 * v276;
        v279 = *(v290 + 24);
        v291 = *v290;
        v281 = *(v290 + 16);
        logd = *(v290 + 8);
        v284 = *(v290 + 32);

        v61 = v291;

        v292 = [v61 muid];
        if (v292 == [v395 muid])
        {
          goto LABEL_140;
        }
      }

      v274 = v13;
      v278 = v284;
LABEL_122:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v409[0] = v274;
      v294 = v278;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F476C(0, *(v274 + 16) + 1, 1);
        v274 = v409[0];
      }

      v296 = *(v274 + 16);
      v295 = *(v274 + 24);
      if (v296 >= v295 >> 1)
      {
        sub_1D87F476C((v295 > 1), v296 + 1, 1);
        v274 = v409[0];
      }

      *(v274 + 16) = v296 + 1;
      v297 = (v274 + 40 * v296);
      v297[4] = v61;
      v297[5] = logd;
      v297[6] = v281;
      v297[7] = v279;
      v297[8] = v294;
      v275 = v398;
      if (v273 == v398)
      {
        goto LABEL_129;
      }
    }

    v273 = v276;
    v274 = v13;
    goto LABEL_122;
  }

  v169 = [v375 muid];
  if (v169 == [v395 muid] && (vabdd_f64(v86, v82) <= 0.1 ? (v170 = v82 < 0.7) : (v170 = 0), v170))
  {
    if (qword_1ECA62160 != -1)
    {
      swift_once();
    }

    v171 = *(v0 + 952);
    v172 = *(v0 + 944);
    v173 = *(v0 + 896);
    v174 = *(v0 + 616);
    v175 = *(v0 + 361);
    v176 = sub_1D8B151E0();
    __swift_project_value_buffer(v176, qword_1ECA66A08);
    sub_1D8901B88(v174, v173, type metadata accessor for CVBundle);
    sub_1D8901B00(v172, v171, v175);
    v177 = sub_1D8B151C0();
    v178 = sub_1D8B16200();
    sub_1D8901870(v172, v171, v175);
    if (os_log_type_enabled(v177, v178))
    {
      v389 = v178;
      v402 = v177;
      v179 = *(v0 + 896);
      v180 = *(v0 + 736);
      v181 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v409[0] = loga;
      v182 = v181;
      *v181 = 136315394;
      sub_1D8901B88(v179, v180, type metadata accessor for CVBundle.BundleType);
      v183 = swift_getEnumCaseMultiPayload();
      v184 = *(v0 + 840);
      v185 = *(v0 + 752);
      v186 = *(v0 + 744);
      if (v183 == 1)
      {
        v187 = *(v185 + 32);
        v187(*(v0 + 840), *(v0 + 736), *(v0 + 744));
      }

      else
      {
        v339 = *(v0 + 680);
        sub_1D8901C70(*(v0 + 736), v339, type metadata accessor for CVTrackSnapshot);
        (*(v185 + 16))(v184, v339, v186);
        sub_1D8901BF0(v339, type metadata accessor for CVTrackSnapshot);
        v187 = *(v185 + 32);
      }

      v369 = *(v0 + 976);
      v371 = *(v0 + 984);
      v366 = *(v0 + 968);
      v359 = *(v0 + 361);
      v354 = *(v0 + 944);
      v356 = *(v0 + 952);
      v340 = *(v0 + 896);
      v341 = *(v0 + 848);
      v342 = *(v0 + 752);
      v343 = *(v0 + 744);
      v362 = *(v0 + 362);
      v187(v341, *(v0 + 840), v343);
      sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v344 = sub_1D8B16B50();
      v346 = v345;
      (*(v342 + 8))(v341, v343);
      sub_1D8901BF0(v340, type metadata accessor for CVBundle);
      v347 = sub_1D89AC714(v344, v346, v409);

      *(v182 + 1) = v347;
      *(v182 + 6) = 2080;
      *(v0 + 520) = v354;
      *(v0 + 528) = v356;
      *(v0 + 536) = v359;
      v348 = sub_1D8B159E0();
      v350 = sub_1D89AC714(v348, v349, v409);

      *(v182 + 14) = v350;
      _os_log_impl(&dword_1D8783000, v402, v389, "[%s / %s] Existing classification had only one result, which is the top result in new multi-result set, with sufficient score. Preserving existing classification", v182, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](loga, -1, -1);
      MEMORY[0x1DA721330](v182, -1, -1);

      sub_1D8901884(v366, v369, v371, v362);
    }

    else
    {
      v253 = *(v0 + 984);
      v404 = *(v0 + 976);
      v254 = *(v0 + 968);
      v255 = *(v0 + 952);
      v256 = *(v0 + 944);
      v257 = *(v0 + 896);
      v258 = *(v0 + 361);
      v259 = *(v0 + 362);

      sub_1D8901870(v256, v255, v258);

      sub_1D8901884(v254, v404, v253, v259);

      sub_1D8901BF0(v257, type metadata accessor for CVBundle);
    }

    sub_1D8901B88(*(v0 + 624), *(v0 + 608), type metadata accessor for BundleClassification);
  }

  else
  {
LABEL_76:

LABEL_77:

LABEL_78:
    if (qword_1ECA62160 != -1)
    {
      swift_once();
    }

    v188 = *(v0 + 952);
    v189 = *(v0 + 944);
    v190 = *(v0 + 872);
    v191 = *(v0 + 616);
    v192 = *(v0 + 361);
    v193 = sub_1D8B151E0();
    __swift_project_value_buffer(v193, qword_1ECA66A08);
    sub_1D8901B88(v191, v190, type metadata accessor for CVBundle);

    sub_1D8901B00(v189, v188, v192);

    v194 = sub_1D8B151C0();
    v195 = sub_1D8B161F0();
    sub_1D8901870(v189, v188, v192);
    if (os_log_type_enabled(v194, v195))
    {
      v397 = v195;
      v196 = *(v0 + 872);
      v197 = *(v0 + 712);
      v198 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      v409[0] = v199;
      *v198 = 136315650;
      sub_1D8901B88(v196, v197, type metadata accessor for CVBundle.BundleType);
      v200 = swift_getEnumCaseMultiPayload();
      v201 = *(v0 + 792);
      v202 = *(v0 + 752);
      v203 = *(v0 + 744);
      v204 = *(v0 + 712);
      logb = v199;
      if (v200 == 1)
      {
        v205 = *(v202 + 32);
        v205(v201, v204, v203);
      }

      else
      {
        v211 = *(v0 + 680);
        sub_1D8901C70(v204, v211, type metadata accessor for CVTrackSnapshot);
        (*(v202 + 16))(v201, v211, v203);
        sub_1D8901BF0(v211, type metadata accessor for CVTrackSnapshot);
        v205 = *(v202 + 32);
      }

      v376 = *(v0 + 361);
      v373 = *(v0 + 944);
      v374 = *(v0 + 952);
      v212 = *(v0 + 872);
      v213 = *(v0 + 800);
      v214 = *(v0 + 752);
      v215 = *(v0 + 744);
      v205(v213, *(v0 + 792), v215);
      sub_1D8901B40(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v216 = sub_1D8B16B50();
      v218 = v217;
      (*(v214 + 8))(v213, v215);
      sub_1D8901BF0(v212, type metadata accessor for CVBundle);
      v219 = sub_1D89AC714(v216, v218, v409);

      *(v198 + 4) = v219;
      *(v198 + 12) = 2080;
      *(v0 + 448) = v373;
      *(v0 + 456) = v374;
      *(v0 + 464) = v376;
      v220 = sub_1D8B159E0();
      v222 = sub_1D89AC714(v220, v221, v409);

      *(v198 + 14) = v222;
      *(v198 + 22) = 2048;
      v77 = v406;

      v210 = v398;
      *(v198 + 24) = v398;

      _os_log_impl(&dword_1D8783000, v194, v397, "[%s / %s] classified with %ld results", v198, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](logb, -1, -1);
      MEMORY[0x1DA721330](v198, -1, -1);
    }

    else
    {
      v206 = *(v0 + 952);
      v207 = *(v0 + 944);
      v208 = *(v0 + 872);
      v209 = *(v0 + 361);

      sub_1D8901870(v207, v206, v209);

      sub_1D8901BF0(v208, type metadata accessor for CVBundle);
      v210 = v398;
    }

    if (v77[2].isa == v210)
    {

      v403 = v77;
    }

    else
    {
      sub_1D8AB5D04(v77, v386, 0, v377);
      v403 = v352;
    }

    v223 = *(v0 + 984);
    v224 = *(v0 + 976);
    v225 = *(v0 + 968);
    v68 = *(v0 + 936);
    v69 = *(v0 + 920);
    v408 = *(v0 + 608);
    isa = v77[4].isa;
    v227 = v77[7].isa;
    v228 = *(v0 + 362);

    v229 = isa;

    sub_1D8901884(v225, v224, v223, v228);

    *v69 = v403;
    v69[1] = v227;
    swift_storeEnumTagMultiPayload();
    v74 = type metadata accessor for BundleClassification(0);
    v75 = *(v74 + 20);
    v76 = v408;
LABEL_89:
    v230 = (v76 + v75);
    *v230 = 2;
    *(v230 + 1) = 0u;
    *(v230 + 3) = 0u;
    v231 = v76;
    sub_1D8901C70(v69, v76, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D88E0FE4(*v230, v230[1], v230[2], v230[3]);
    *v230 = 2;
    *(v230 + 1) = 0u;
    *(v230 + 3) = 0u;
LABEL_90:
    *(v231 + *(v74 + 24)) = v68;
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v155 = *(v0 + 8);
LABEL_92:

  return v155();
}

uint64_t sub_1D88FE608()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88FE6A0, 0, 0);
}

uint64_t sub_1D88FE6A0()
{
  *(v0 + 1048) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FE72C, v2, v1);
}

uint64_t sub_1D88FE72C()
{

  *(v0 + 1056) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D88FE7A0, 0, 0);
}

uint64_t sub_1D88FE7A0()
{
  *(v0 + 1064) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FE82C, v2, v1);
}

uint64_t sub_1D88FE82C()
{

  if (sub_1D89B46EC())
  {
    sub_1D89B1580();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88FE8A8, 0, 0);
}

uint64_t sub_1D88FE8A8()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 632);
  *v2 = 0;
  *(v2 + 8) = xmmword_1D8B281A0;
  *(v2 + 24) = 2;
  *(v2 + 32) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = xmmword_1D8B281A0;
  *(v0 + 120) = 2;
  *(v0 + 128) = v1;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D88FEB10()
{
  sub_1D8901870(*(v0 + 944), *(v0 + 952), *(v0 + 361));
  v1 = *(v0 + 1024);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  *(v0 + 592) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  if (!swift_dynamicCast())
  {
    v20 = *(v0 + 984);
    v21 = *(v0 + 976);
    v22 = *(v0 + 968);
    v23 = *(v0 + 936);
    v24 = *(v0 + 632);
    v25 = *(v0 + 362);

    swift_getErrorValue();
    v26 = sub_1D8B16C90();
    *v24 = 0;
    *(v24 + 8) = v26;
    *(v24 + 16) = v27;
    *(v24 + 24) = 64;
    *(v24 + 32) = v23;
    *(v0 + 176) = 0;
    *(v0 + 184) = v26;
    *(v0 + 192) = v27;
    *(v0 + 200) = 64;
    *(v0 + 208) = v23;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();
    sub_1D8901884(v22, v21, v20, v25);
    v28 = v1;
    goto LABEL_9;
  }

  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);

  (*(v6 + 32))(v4, v3, v7);
  (*(v6 + 16))(v5, v4, v7);
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 != *MEMORY[0x1E69E0278])
  {
    if (v8 == *MEMORY[0x1E69E0280])
    {
      v9 = *(v0 + 984);
      v10 = *(v0 + 976);
      v11 = *(v0 + 968);
      v29 = *(v0 + 936);
      v13 = *(v0 + 664);
      v14 = *(v0 + 648);
      v15 = *(v0 + 640);
      v30 = *(v0 + 632);
      v17 = *(v0 + 362);
      sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290], MEMORY[0x1E69E0298]);
      v31 = sub_1D8B16C90();
      *v30 = 1;
      *(v30 + 8) = v31;
      *(v30 + 16) = v32;
      *(v30 + 24) = 64;
      *(v30 + 32) = v29;
      *(v0 + 256) = 1;
      *(v0 + 264) = v31;
      *(v0 + 272) = v32;
      *(v0 + 280) = 64;
      *(v0 + 288) = v29;
      sub_1D88E0E0C();
      goto LABEL_7;
    }

    if (v8 != *MEMORY[0x1E69E0288])
    {
      v35 = *(v0 + 984);
      v36 = *(v0 + 976);
      v37 = *(v0 + 968);
      v38 = *(v0 + 936);
      v39 = *(v0 + 664);
      v40 = *(v0 + 656);
      v41 = *(v0 + 648);
      v42 = *(v0 + 640);
      v43 = *(v0 + 632);
      v44 = *(v0 + 362);
      sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290], MEMORY[0x1E69E0298]);
      v45 = sub_1D8B16C90();
      *v43 = 0;
      *(v43 + 8) = v45;
      *(v43 + 16) = v46;
      *(v43 + 24) = 64;
      *(v43 + 32) = v38;
      *(v0 + 216) = 0;
      *(v0 + 224) = v45;
      *(v0 + 232) = v46;
      *(v0 + 240) = 64;
      *(v0 + 248) = v38;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();
      sub_1D8901884(v37, v36, v35, v44);
      v47 = *(v41 + 8);
      v47(v39, v42);
      v47(v40, v42);
      goto LABEL_8;
    }
  }

  v9 = *(v0 + 984);
  v10 = *(v0 + 976);
  v11 = *(v0 + 968);
  v12 = *(v0 + 936);
  v13 = *(v0 + 664);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 362);
  sub_1D8901B40(&qword_1ECA650E8, MEMORY[0x1E69E0290], MEMORY[0x1E69E0298]);
  v18 = sub_1D8B16C90();
  *v16 = 0;
  *(v16 + 8) = v18;
  *(v16 + 16) = v19;
  *(v16 + 24) = 64;
  *(v16 + 32) = v12;
  *(v0 + 296) = 0;
  *(v0 + 304) = v18;
  *(v0 + 312) = v19;
  *(v0 + 320) = 64;
  *(v0 + 328) = v12;
  sub_1D88E0E0C();
LABEL_7:
  swift_willThrowTypedImpl();
  sub_1D8901884(v11, v10, v9, v17);
  (*(v14 + 8))(v13, v15);
LABEL_8:
  v28 = *(v0 + 592);
LABEL_9:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D88FF158()
{
  *(v0 + 160) = sub_1D8B15E80();
  *(v0 + 168) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF1F0, v2, v1);
}

uint64_t sub_1D88FF1F0()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88FF288, 0, 0);
}

uint64_t sub_1D88FF288()
{
  *(v0 + 176) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF314, v2, v1);
}

uint64_t sub_1D88FF314()
{

  *(v0 + 184) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D88FF388, 0, 0);
}

uint64_t sub_1D88FF388()
{
  *(v0 + 192) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF414, v2, v1);
}

uint64_t sub_1D88FF414()
{
  v1 = v0[23];

  swift_getKeyPath();
  v0[10] = v1;
  v0[25] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler___observationRegistrar;
  v0[26] = sub_1D8901B40(&qword_1ECA66830, type metadata accessor for LocationsHandler, &protocol conformance descriptor for LocationsHandler);
  sub_1D8B13520();

  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (v2)
  {
    v3 = v0[23];
    swift_getKeyPath();
    v0[10] = v3;
    v4 = v2;
    sub_1D8B13520();

    v5 = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading;
    v0[27] = OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading;
    v6 = *(v3 + v5);
    v7 = v6;
    v0[28] = sub_1D89AFE24(v6);

    v8 = sub_1D88FF59C;
  }

  else
  {
    v8 = sub_1D8900078;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D88FF59C()
{
  *(v0 + 232) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF628, v2, v1);
}

uint64_t sub_1D88FF628()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FF690, 0, 0);
}

uint64_t sub_1D88FF690()
{
  *(v0 + 240) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF71C, v2, v1);
}

uint64_t sub_1D88FF71C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FF784, 0, 0);
}

uint64_t sub_1D88FF784()
{
  *(v0 + 248) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FF810, v2, v1);
}

uint64_t sub_1D88FF810()
{
  v1 = *(v0 + 184);

  *(v0 + 256) = *(*(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler_headingUpdatePublisher) + OBJC_IVAR____TtC22VisualIntelligenceCoreP33_2D676846DD9D649B8AF0B23C5D24AD4724CLHeadingUpdatePublisher_authorizationInfo + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D88FF89C, 0, 0);
}

uint64_t sub_1D88FF89C()
{
  v1 = v0[28];
  if (v0[32])
  {
    v2 = v0[19];

    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
    *(v0[19] + 24) = -1;
    v3 = v0[1];

    return v3();
  }

  else if ([objc_opt_self() isLocationShiftRequiredForLocation_])
  {
    if (qword_1ECA620F8 != -1)
    {
      swift_once();
    }

    v5 = v0[28];
    v6 = qword_1ECA650B0;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D88FFAF8;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650F0, &unk_1D8B282C0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D89000A4;
    v0[13] = &block_descriptor_3;
    v0[14] = v7;
    [v6 shiftLocation:v5 withCompletionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v0[33] = v0[28];
    v0[34] = sub_1D8B15E70();
    v9 = sub_1D8B15E00();

    return MEMORY[0x1EEE6DFA0](sub_1D88FFCC8, v9, v8);
  }
}

uint64_t sub_1D88FFAF8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FFBD8, 0, 0);
}

uint64_t sub_1D88FFBD8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    *(v0 + 264) = v1;
    *(v0 + 272) = sub_1D8B15E70();
    v3 = sub_1D8B15E00();

    return MEMORY[0x1EEE6DFA0](sub_1D88FFCC8, v3, v2);
  }

  else
  {
    v4 = *(v0 + 152);

    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *(*(v0 + 152) + 24) = -1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D88FFCC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FFD30, 0, 0);
}

uint64_t sub_1D88FFD30()
{
  *(v0 + 280) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FFDBC, v2, v1);
}

uint64_t sub_1D88FFDBC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88FFE24, 0, 0);
}

uint64_t sub_1D88FFE24()
{
  *(v0 + 288) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D88FFEB0, v2, v1);
}

uint64_t sub_1D88FFEB0()
{
  v1 = v0[27];
  v2 = v0[23];

  swift_getKeyPath();
  v0[10] = v2;
  sub_1D8B13520();

  v3 = *(v2 + v1);
  v0[37] = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D88FFF74, 0, 0);
}

uint64_t sub_1D88FFF74()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);
  v4 = *(v0 + 152);
  if (v1)
  {
    [*(v0 + 296) trueHeading];
    v12 = v5;
    [v1 headingAccuracy];
    v11 = v6;

    *v4 = v2;
    v7.f64[0] = v12;
    v7.f64[1] = v11;
    *(v4 + 8) = vdivq_f64(vmulq_f64(v7, vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL));
    v8 = 2;
  }

  else
  {

    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v8 = 1;
    *v4 = v2;
  }

  *(*(v0 + 152) + 24) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D8900078()
{
  v1 = *(v0 + 152);
  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  *(*(v0 + 152) + 24) = -1;
  return (*(v0 + 8))();
}

uint64_t sub_1D89000A4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1D8900120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D88FACA0(a1, a2, a3, v9, v5 + 16);
}

uint64_t sub_1D89001F0(uint64_t *a1, float *a2, float a3)
{
  if (*a2 < a3)
  {
    return 0;
  }

  if (*a1 == 0x6E776F6E6B6E75 && a1[1] == 0xE700000000000000)
  {
    return 0;
  }

  else
  {
    return (sub_1D8B16BA0() ^ 1) & 1;
  }
}

uint64_t sub_1D890026C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1D8B16610();
LABEL_9:
  result = sub_1D8B16750();
  *v2 = result;
  return result;
}

void sub_1D890030C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 32);
  if (v6 == 14)
  {
    goto LABEL_4;
  }

  LOBYTE(v8) = a3;
  v9 = *(a2 + 32);
  v10 = *a4;
  v11 = sub_1D881F7DC();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1D8971854(v16, v8 & 1);
    v11 = sub_1D881F7DC();
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v11 = sub_1D8B16C30();
    __break(1u);
  }

  if (v8)
  {
LABEL_10:
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_14:
    v22 = *a4;
    *(*a4 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v22[6] + v11) = v6;
    *(v22[7] + 8 * v11) = v9;
    v23 = v22[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v22[2] = v24;
      v25 = *(a1 + 16);
      if (v25 == 1)
      {
LABEL_4:

        return;
      }

      v26 = 0;
      v8 = a1 + 33;
      while (1)
      {
        v27 = v26 + 1;
        if (v26 + 1 >= v25)
        {
          goto LABEL_30;
        }

        v28 = *(a2 + 16);
        if (v27 == v28)
        {
          goto LABEL_4;
        }

        if (v27 >= v28)
        {
          goto LABEL_31;
        }

        v6 = *(v8 + v26);
        if (v6 == 14)
        {
          goto LABEL_4;
        }

        v9 = *(a2 + 40 + 8 * v26);
        v29 = *a4;
        v30 = sub_1D881F7DC();
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v15 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v15)
        {
          goto LABEL_28;
        }

        v17 = v31;
        if (v29[3] < v34)
        {
          sub_1D8971854(v34, 1);
          v30 = sub_1D881F7DC();
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        if (v17)
        {
          goto LABEL_11;
        }

        v36 = *a4;
        *(*a4 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        *(v36[6] + v30) = v6;
        *(v36[7] + 8 * v30) = v9;
        v37 = v36[2];
        v15 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v15)
        {
          break;
        }

        v36[2] = v38;
        v25 = *(a1 + 16);
        v39 = v26 + 2;
        ++v26;
        if (v39 == v25)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = v11;
  sub_1D89692F4();
  v11 = v21;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v19 = swift_allocError();
  swift_willThrow();

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_32:
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B421B0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](39, 0xE100000000000000);
  sub_1D8B168C0();
  __break(1u);
}

void *sub_1D89006B0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8900918(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1D8900728(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, int *, __n128))
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

    sub_1D8900A90(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1D89007B8(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8900918(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D89006B0(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1D8900918(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 4 * v14) >= 0.6)
    {
      v15 = (*(a3 + 48) + 16 * v14);
      result = *v15;
      if (*v15 != 0x6E776F6E6B6E75 || v15[1] != 0xE700000000000000)
      {
        result = sub_1D8B16BA0();
        if ((result & 1) == 0)
        {
          *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          if (__OFADD__(v4++, 1))
          {
            __break(1u);
            return sub_1D8AF41F0(v19, a2, v4, a3);
          }
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1D8AF41F0(v19, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8900A90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, int *, __n128))
{
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    v26 = *(v15 + 4 * v14);

    v18 = (a4)(v25, &v26);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1D8AF41F0(a1, a2, v22, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D8900C08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D8B16610();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D8B16610();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D881CF20(&qword_1EE0E3930, &qword_1ECA65108, &unk_1D8B282E0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65108, &unk_1D8B282E0);
            v9 = sub_1D8A729F8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D881F764(0, &qword_1EE0E3768, 0x1E6999A80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8900DBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D8B16610();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D8B16610();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0, &unk_1D8B28240, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0, &unk_1D8B28240);
            v9 = sub_1D8A728F0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CVTrackedDetection(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D8900F60(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = v1[2];
  if (v6)
  {
LABEL_2:
    v7 = *(v6 + 16);
    v8 = v1[3];
    if (v8 == v7)
    {
      v9 = type metadata accessor for CVTrackSnapshot(0);
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      sub_1D87A14E4(v5, &qword_1ECA63E20, &qword_1D8B22E50);
      goto LABEL_4;
    }

    if (v8 < v7)
    {
      v13 = type metadata accessor for CVTrackSnapshot(0);
      v14 = *(v13 - 8);
      sub_1D8901B88(v6 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v8, v5, type metadata accessor for CVTrackSnapshot);
      v1[3] = v8 + 1;
      (*(v14 + 56))(v5, 0, 1, v13);
      sub_1D8901800(v5, a1);
      return;
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v10 = v1[1];
      v11 = *(*v1 + 16);
      if (v10 == v11)
      {
        v12 = type metadata accessor for CVTrackSnapshot(0);
        (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
        return;
      }

      if (v10 >= v11)
      {
        break;
      }

      v6 = *(*v1 + 8 * v10 + 32);
      v1[1] = v10 + 1;

      v1[2] = v6;
      v1[3] = 0;
      if (v6)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1D89011A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8901B88(a1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D8B13240();
    (*(*(v8 - 8) + 8))(v7, v8);
    return 0;
  }

  sub_1D8901BF0(v7, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v43);
  if (v43 >> 60)
  {

LABEL_13:
    v14 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = swift_projectBox();
    sub_1D87A0E38(v9, v4, &qword_1ECA67750, &unk_1D8B1E0C0);

    v10 = sub_1D88F8978();
    v11 = *(v10 + 16) + 1;
    v12 = 32;
    do
    {
      if (!--v11)
      {

        sub_1D87A14E4(v4, &qword_1ECA67750, &unk_1D8B1E0C0);
        goto LABEL_13;
      }

      v13 = *(v10 + v12);
      v12 += 8;
    }

    while (v13 != 28);

    v14 = sub_1D87C8F58(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = (v16 + 1);
    if (v16 >= v15 >> 1)
    {
LABEL_59:
      v14 = sub_1D87C8F58((v15 > 1), v17, 1, v14);
    }

    sub_1D87A14E4(v4, &qword_1ECA67750, &unk_1D8B1E0C0);
    *(v14 + 2) = v17;
    v14[v16 + 32] = 12;
    v16 = *(v14 + 2);
    if (!v16)
    {
LABEL_9:

      return 0;
    }
  }

  v43 = MEMORY[0x1E69E7CC0];

  sub_1D87F4140(0, v16, 0);
  v4 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v19 = 32;
  do
  {
    v20 = v14[v19];
    v17 = sub_1D8B16910();
    v21 = sub_1D881F7DC();
    if (v22)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
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
      goto LABEL_59;
    }

    v23 = v17 + 8;
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
    *(v17[6] + v21) = 1;
    *(v17[7] + 8 * v21) = 0x4024000000000000;
    v24 = v17[2];
    v25 = __OFADD__(v24, 1);
    v15 = v24 + 1;
    if (v25)
    {
      goto LABEL_52;
    }

    v17[2] = v15;
    v26 = sub_1D881F7DC();
    if (v27)
    {
      goto LABEL_53;
    }

    *(v23 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(v17[6] + v26) = 12;
    *(v17[7] + 8 * v26) = 0x4024000000000000;
    v28 = v17[2];
    v25 = __OFADD__(v28, 1);
    v15 = v28 + 1;
    if (v25)
    {
      goto LABEL_54;
    }

    v17[2] = v15;
    v29 = sub_1D881F7DC();
    if (v30)
    {
      goto LABEL_55;
    }

    *(v23 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(v17[6] + v29) = 13;
    *(v17[7] + 8 * v29) = 0x4024000000000000;
    v31 = v17[2];
    v25 = __OFADD__(v31, 1);
    v15 = v31 + 1;
    if (v25)
    {
      goto LABEL_56;
    }

    v17[2] = v15;
    v32 = sub_1D881F7DC();
    if (v33)
    {
      goto LABEL_57;
    }

    *(v23 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(v17[6] + v32) = 5;
    *(v17[7] + 8 * v32) = 0x3FF0000000000000;
    v34 = v17[2];
    v25 = __OFADD__(v34, 1);
    v15 = v34 + 1;
    if (v25)
    {
      goto LABEL_58;
    }

    v17[2] = v15;
    if (v15)
    {
      v35 = sub_1D881F7DC();
      if (v36)
      {
        v37 = *(v17[7] + 8 * v35);

        goto LABEL_39;
      }
    }

    if (v20 > 5)
    {
      if (v20 > 8)
      {
        if ((v20 - 9) < 2)
        {
          v37 = 0.0;
          goto LABEL_39;
        }

        if ((v20 - 12) >= 2)
        {
LABEL_60:
          sub_1D8B168C0();
          __break(1u);
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

LABEL_38:
        v37 = 10.0;
        goto LABEL_39;
      }

      if ((v20 - 6) >= 2)
      {
        goto LABEL_60;
      }

      v37 = 60.0;
    }

    else
    {
      if (v20 <= 2)
      {
        goto LABEL_38;
      }

      if (v20 != 3)
      {
        if (v20 != 4)
        {
          v37 = 1.0;
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      v37 = 4.0;
    }

LABEL_39:
    v43 = v4;
    v39 = *(v4 + 2);
    v38 = *(v4 + 3);
    if (v39 >= v38 >> 1)
    {
      sub_1D87F4140((v38 > 1), v39 + 1, 1);
      v4 = v43;
    }

    *(v4 + 2) = v39 + 1;
    *&v4[8 * v39 + 32] = v37;
    ++v19;
    --v16;
  }

  while (v16);

  if (*(v4 + 2) >= *(v14 + 2))
  {
    v40 = *(v14 + 2);
  }

  else
  {
    v40 = *(v4 + 2);
  }

  if (v40)
  {
    v41 = sub_1D8B16910();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC8];
  }

  v43 = v41;
  sub_1D890030C(v14, v4, 1, &v43);
  return v43;
}

uint64_t sub_1D8901800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D8901870(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D88F0C30(a1, a2);
  }

  return result;
}

void sub_1D8901884(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_1D88F33B4(a1, a2, a3, a4);
  }
}

void sub_1D8901898(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v30 = a1;
LABEL_2:
  v4 = (a1 + 40 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_26;
    }

    v6 = v4[7];
    ++v1;
    v4 += 5;
    if (v6 >= 0.7)
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *(v4 + 1);
      v10 = *(v4 + 3);

      v11 = v7;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D87F476C(0, *(v3 + 16) + 1, 1);
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D87F476C((v12 > 1), v13 + 1, 1);
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 40 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v8;
      *(v14 + 48) = v9;
      *(v14 + 56) = v6;
      *(v14 + 64) = v10;
      v1 = v5;
      a1 = v30;
      goto LABEL_2;
    }
  }

  if (!*(v3 + 16))
  {
    v15 = a1;

    v16 = v15;
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v19 = v16 + 40 * v17;
    while (v2 != v17)
    {
      if (v17 >= v2)
      {
        goto LABEL_27;
      }

      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_28;
      }

      v21 = *(v19 + 56);
      ++v17;
      v19 += 40;
      if (v21 >= 0.3)
      {
        v22 = *(v19 - 8);
        v23 = *v19;
        v24 = *(v19 + 8);
        v25 = *(v19 + 24);

        v26 = v22;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D87F476C(0, *(v18 + 16) + 1, 1);
        }

        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D87F476C((v27 > 1), v28 + 1, 1);
        }

        *(v18 + 16) = v28 + 1;
        v29 = v18 + 40 * v28;
        *(v29 + 32) = v26;
        *(v29 + 40) = v23;
        *(v29 + 48) = v24;
        *(v29 + 56) = v21;
        *(v29 + 64) = v25;
        v17 = v20;
        v16 = v30;
        goto LABEL_15;
      }
    }
  }
}

double sub_1D8901B00(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_1D88F0BF8(a1, a2);
  }

  return result;
}

uint64_t sub_1D8901B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8901B88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8901BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8901C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id BCSActionContainer.action.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t BCSActionContainer.actionIconName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BCSActionContainer.shortDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

double BCSActionContainer.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D8B190C0;
  *(a1 + 16) = 0xE700000000000000;
  *(a1 + 24) = 0x7974706D65;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return result;
}

void BCSActionContainer.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65110, &qword_1D8B28300);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8901F98();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    v9 = sub_1D8B169C0();
    v11 = v10;
    v17 = v9;
    v18 = 1;
    v12 = sub_1D8B169C0();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v15 = v17;
    *a2 = 0;
    a2[1] = v15;
    a2[2] = v11;
    a2[3] = v12;
    a2[4] = v14;
    a2[5] = 0;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_1D8901F98()
{
  result = qword_1ECA65118;
  if (!qword_1ECA65118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65118);
  }

  return result;
}

uint64_t BCSActionContainer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65120, &qword_1D8B28308);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8901F98();
  sub_1D8B16DD0();
  v12 = 0;
  v8 = v10[3];
  sub_1D8B16A90();
  if (!v8)
  {
    v11 = 1;
    sub_1D8B16A90();
  }

  return (*(v4 + 8))(v6, v3);
}

double BCSActionContainer.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_1D8B16D40();
    v4 = v2;
    sub_1D8B16410();
  }

  else
  {
    sub_1D8B16D40();
  }

  return result;
}

uint64_t sub_1D8902214(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x63496E6F69746361;
  }

  if (v2)
  {
    v4 = 0xEE00656D614E6E6FLL;
  }

  else
  {
    v4 = 0x80000001D8B3FEE0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x63496E6F69746361;
  }

  if (*a2)
  {
    v6 = 0x80000001D8B3FEE0;
  }

  else
  {
    v6 = 0xEE00656D614E6E6FLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();
  }

  return v8 & 1;
}

uint64_t sub_1D89022CC()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D8902360(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D89023E0(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

void sub_1D8902470(char *a2@<X8>)
{
  v3 = sub_1D8B16930();

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

void sub_1D89024D0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D8B3FEE0;
  v3 = 0x63496E6F69746361;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEE00656D614E6E6FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D8902520()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x63496E6F69746361;
  }
}

void sub_1D890256C(char *a3@<X8>)
{
  v4 = sub_1D8B16930();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D89025D0(uint64_t a1)
{
  v2 = sub_1D8901F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890260C(uint64_t a1)
{
  v2 = sub_1D8901F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BCSActionContainer.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8B16D40();
  if (v1)
  {
    v2 = v1;
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D89026B8()
{
  v1 = *v0;
  sub_1D8B16D20();
  sub_1D8B16D40();
  if (v1)
  {
    v2 = v1;
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

double sub_1D8902724(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_1D8B16D40();
    v4 = v2;
    sub_1D8B16410();
  }

  else
  {
    sub_1D8B16D40();
  }

  return result;
}

uint64_t sub_1D89027B4(uint64_t a1)
{
  v2 = *v1;
  sub_1D8B16D20();
  sub_1D8B16D40();
  if (v2)
  {
    v3 = v2;
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D890284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838, &qword_1D8B256A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v9;
  v20 = *(a2 + 32);
  v10 = *(a2 + 40);
  v22 = *(a2 + 41);
  *v23 = *(a2 + 57);
  *&v23[15] = *(a2 + 72);
  v11 = *(a2 + 88);
  v21 = v10;
  v24 = v11;
  result = sub_1D8906230(a1);
  if ((result & 1) == 0)
  {
    v15 = xmmword_1D8B26630;
    goto LABEL_11;
  }

  if ((v10 & 1) == 0)
  {
    result = sub_1D8902A18();
    if ((result & 1) == 0 || (sub_1D8902B24(v8), v16 = type metadata accessor for StreamingBarcodeDetectorResult(0), v17 = (*(*(v16 - 8) + 48))(v8, 1, v16), result = sub_1D87A14E4(v8, &qword_1ECA64838, &qword_1D8B256A8), v17 == 1))
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_15;
    }

LABEL_16:
    *a3 = 0;
    *(a3 + 8) = 0;
    v18 = -1;
    goto LABEL_17;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_16;
  }

  result = sub_1D881F7DC();
  if ((v13 & 1) == 0 || *(*(v11 + 56) + result) == 2)
  {
    if (!*(v11 + 16))
    {
      goto LABEL_16;
    }

    result = sub_1D881F7DC();
    if ((v14 & 1) == 0 || *(*(v11 + 56) + result) == 2)
    {
      goto LABEL_16;
    }
  }

  v15 = xmmword_1D8B26640;
LABEL_11:
  *a3 = v15;
LABEL_15:
  v18 = 2;
LABEL_17:
  *(a3 + 16) = v18;
  return result;
}

uint64_t sub_1D8902A18()
{
  v0 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter(&v7);
  if (v7 >> 61 == 3)
  {
    v3 = swift_projectBox();
    sub_1D8906458(v3, v2, type metadata accessor for StreamingBarcodeDetectorResult);

    v4 = *&v2[*(v0 + 40)];
    sub_1D88B7ED4(v4);
    sub_1D89064C0(v2, type metadata accessor for StreamingBarcodeDetectorResult);
    if (v4 >= 2)
    {
      sub_1D8905FA4(v4);
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

void sub_1D8902B24(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64048, &qword_1D8B23118);
  v62 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v61 = &v52 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65168, &unk_1D8B28650);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v52 - v17;
  v18 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter(&v64);
  if (v64 >> 61 == 3)
  {
    v22 = swift_projectBox();
    sub_1D8906458(v22, v21, type metadata accessor for StreamingBarcodeDetectorResult);

    sub_1D890611C(v21, a1, type metadata accessor for StreamingBarcodeDetectorResult);
    (*(v19 + 56))(a1, 0, 1, v18);
    return;
  }

  v52 = v6;
  v53 = v18;
  v55 = v19;
  v56 = v16;
  v54 = a1;

  v24 = sub_1D89047F8(v23);
  v25 = *&v24;
  sub_1D8903DC8();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26);
  *(&v52 - 2) = v1;
  sub_1D8916A7C(sub_1D89060FC, (&v52 - 4), v27);
  v29 = v28;

  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v58 = *(v29 + 16);
    v59 = v3;
    while (v31 < *(v29 + 16))
    {
      v33 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v34 = *(v62 + 72);
      sub_1D87A0E38(v29 + v33 + v34 * v31, v12, &qword_1ECA64048, &qword_1D8B23118);
      if (v25 > *&v12[*(v3 + 48)])
      {
        sub_1D87A14E4(v12, &qword_1ECA64048, &qword_1D8B23118);
      }

      else
      {
        sub_1D881F6FC(v12, v61, &qword_1ECA64048, &qword_1D8B23118);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4840(0, *(v32 + 16) + 1, 1);
          v32 = v63;
        }

        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1D87F4840((v36 > 1), v37 + 1, 1);
          v32 = v63;
        }

        *(v32 + 16) = v37 + 1;
        sub_1D881F6FC(v61, v32 + v33 + v37 * v34, &qword_1ECA64048, &qword_1D8B23118);
        v30 = v58;
        v3 = v59;
      }

      if (v30 == ++v31)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_15:

  v38 = *(v32 + 16);
  v39 = v56;
  if (v38)
  {
    v40 = v32 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    sub_1D87A0E38(v40, v60, &qword_1ECA64048, &qword_1D8B23118);
    v41 = v55;
    v42 = v52;
    if (v38 != 1)
    {
      v50 = 1;
      v51 = v60;
      while (v50 < *(v32 + 16))
      {
        sub_1D87A0E38(v40 + *(v62 + 72) * v50, v42, &qword_1ECA64048, &qword_1D8B23118);
        if (*(v51 + *(v3 + 48)) >= *(v42 + *(v3 + 48)))
        {
          sub_1D87A14E4(v42, &qword_1ECA64048, &qword_1D8B23118);
        }

        else
        {
          sub_1D87A14E4(v51, &qword_1ECA64048, &qword_1D8B23118);
          sub_1D881F6FC(v42, v51, &qword_1ECA64048, &qword_1D8B23118);
        }

        if (v38 == ++v50)
        {
          goto LABEL_17;
        }
      }

LABEL_30:
      __break(1u);
      return;
    }

LABEL_17:

    v43 = v57;
    sub_1D881F6FC(v60, v57, &qword_1ECA64048, &qword_1D8B23118);
    v44 = 0;
    v39 = v56;
  }

  else
  {

    v44 = 1;
    v41 = v55;
    v43 = v57;
  }

  v45 = v62;
  (*(v62 + 56))(v43, v44, 1, v3);
  sub_1D881F6FC(v43, v39, &qword_1ECA65168, &unk_1D8B28650);
  v46 = (*(v45 + 48))(v39, 1, v3);
  v48 = v53;
  v47 = v54;
  if (v46 == 1)
  {
    sub_1D87A14E4(v39, &qword_1ECA65168, &unk_1D8B28650);
    v49 = 1;
  }

  else
  {
    sub_1D890611C(v39, v54, type metadata accessor for StreamingBarcodeDetectorResult);
    v49 = 0;
  }

  (*(v41 + 56))(v47, v49, 1, v48);
}

uint64_t sub_1D8903174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a3;
  v5[20] = a5;
  v5[17] = a1;
  v5[18] = a2;
  v5[21] = type metadata accessor for BundleClassification.ClassificationType(0);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838, &qword_1D8B256A8);
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D89032AC, 0, 0);
}

uint64_t sub_1D89032AC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_1D8902B24(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 160);
    sub_1D87A14E4(*(v0 + 184), &qword_1ECA64838, &qword_1D8B256A8);
    *v5 = 0;
    *(v5 + 8) = 0xD00000000000001DLL;
    *(v5 + 16) = 0x80000001D8B44100;
    *(v5 + 24) = 0x80;
    *(v5 + 32) = v4;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xD00000000000001DLL;
    *(v0 + 32) = 0x80000001D8B44100;
    *(v0 + 40) = 0x80;
    *(v0 + 48) = v4;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();

    v6 = *(v0 + 8);
LABEL_3:

    return v6();
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  sub_1D890611C(*(v0 + 184), v8, type metadata accessor for StreamingBarcodeDetectorResult);
  v10 = *(v8 + *(v9 + 40));
  *(v0 + 224) = v10;
  if (v10 < 2)
  {
    return sub_1D8B168C0();
  }

  sub_1D8906458(*(v0 + 152), *(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 176);
  if (EnumCaseMultiPayload == 2)
  {
    v13 = *v12;
    v14 = v12[2];
    v15 = v12[4];
    if (*v12)
    {
      v16 = v12[1];
      v17 = v12[3];
      v18 = v12[5];
      v19 = v10;
      v20 = [v13 detectedCode];
      if (v20)
      {
        v21 = v20;
        v22 = [v19 isLikelyEqualToCode_];

        if (v22)
        {
          v23 = *(v0 + 208);
          v24 = *(v0 + 136);
          sub_1D8905FA4(v10);
          sub_1D89064C0(v23, type metadata accessor for StreamingBarcodeDetectorResult);
          *v24 = v13;
          v24[1] = v16;
          v24[2] = v14;
          v24[3] = v17;
          v24[4] = v15;
          v24[5] = v18;
          swift_storeEnumTagMultiPayload();
          v25 = type metadata accessor for BundleClassification(0);
          v26 = v24 + *(v25 + 20);
          *v26 = 2;
          *(v26 + 8) = 0u;
          *(v26 + 24) = 0u;
          sub_1D88E0FE4(2, 0, 0, 0);
          v27 = *(v0 + 216);
          v28 = *(v0 + 136);
          *v26 = 2;
          *(v26 + 8) = 0u;
          *(v26 + 24) = 0u;
          *(v28 + *(v25 + 24)) = v27;

          v6 = *(v0 + 8);
          goto LABEL_3;
        }
      }
    }

    else
    {
      v30 = v10;
    }
  }

  else
  {
    v29 = v10;
    sub_1D89064C0(v12, type metadata accessor for BundleClassification.ClassificationType);
  }

  if (qword_1ECA62100 != -1)
  {
    swift_once();
  }

  v31 = qword_1ECAA3678;
  *(v0 + 232) = qword_1ECAA3678;

  return MEMORY[0x1EEE6DFA0](sub_1D89036E4, v31, 0);
}

uint64_t sub_1D89036E4(uint64_t a1, uint64_t a2)
{
  v4 = v2[28];
  v3 = v2[29];
  v5 = sub_1D89061E8(&qword_1ECA65158, a2, type metadata accessor for BarcodeParseSerializer, &unk_1D8B28574);
  v6 = swift_task_alloc();
  v2[30] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v2[31] = v7;
  v8 = sub_1D8905F40();
  *v7 = v2;
  v7[1] = sub_1D8903820;

  return MEMORY[0x1EEE6DE38](v2 + 15, v3, v5, 0x646F436573726170, 0xED0000293A5F2865, sub_1D8905F9C, v6, v8);
}

uint64_t sub_1D8903820()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = sub_1D8903B6C;
  }

  else
  {
    v5 = *(v2 + 232);

    v4 = sub_1D8903944;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8903968()
{
  v1 = *(v0 + 264);
  v2 = [v1 actionIcon];
  v3 = viCore_systemSymbolNameForImage(v2);

  if (v3)
  {
    v4 = sub_1D8B15970();
    v21 = v5;
  }

  else
  {
    v21 = 0x80000001D8B44170;
    v4 = 0xD000000000000011;
  }

  v6 = *(v0 + 264);
  v7 = *(v0 + 224);
  v8 = *(v0 + 216);
  v9 = *(v0 + 208);
  v10 = *(v0 + 136);
  v11 = [v6 shortDescription];

  v12 = sub_1D8B15970();
  v14 = v13;

  sub_1D8905FA4(v7);
  sub_1D89064C0(v9, type metadata accessor for StreamingBarcodeDetectorResult);
  *v10 = v1;
  v10[1] = v4;
  v10[2] = v21;
  v10[3] = v12;
  v10[4] = v14;
  v10[5] = v8;
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for BundleClassification(0);
  v16 = v10 + *(v15 + 20);
  *v16 = 2;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  v17 = *(v0 + 216);
  v18 = *(v0 + 136);
  *v16 = 2;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v18 + *(v15 + 24)) = v17;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D8903B6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8903BD4, 0, 0);
}

uint64_t sub_1D8903BD4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 216);
  v4 = *(v0 + 208);
  v5 = *(v0 + 160);
  swift_getErrorValue();
  v6 = sub_1D8B16C90();
  *v5 = 0;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  *(v5 + 24) = 64;
  *(v5 + 32) = v3;
  *(v0 + 56) = 0;
  *(v0 + 64) = v6;
  *(v0 + 72) = v7;
  *(v0 + 80) = 64;
  *(v0 + 88) = v3;
  sub_1D88E0E0C();
  swift_willThrowTypedImpl();
  sub_1D8905FA4(v2);

  sub_1D89064C0(v4, type metadata accessor for StreamingBarcodeDetectorResult);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D8903CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D8903174(a1, a2, a3, a4, v5 + 16);
}

void sub_1D8903DC8()
{
  v50 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64838, &qword_1D8B256A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v48 - v2;
  v4 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D891DE68();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v6 + 24);
    v13 = *(v7 + 80);
    v54 = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = *(v7 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8906458(v14, v9, type metadata accessor for CVTrackSnapshot);
      v17 = *&v9[v12];

      sub_1D89064C0(v9, type metadata accessor for CVTrackSnapshot);
      switch(v17 >> 60)
      {
        case 6uLL:
        case 7uLL:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1D87C7F54(0, *(v16 + 2) + 1, 1, v16);
          }

          v19 = *(v16 + 2);
          v18 = *(v16 + 3);
          v20 = v16;
          if (v19 >= v18 >> 1)
          {
            v20 = sub_1D87C7F54((v18 > 1), v19 + 1, 1, v16);
          }

          *(v20 + 2) = v19 + 1;
          v16 = v20;
          *&v20[8 * v19 + 32] = v17;
          break;
        default:

          break;
      }

      v14 += v15;
      --v11;
    }

    while (v11);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v16 + 2);
  v54 = v16;
  if (v21)
  {
    v22 = v16;
    v23 = 0;
    v52 = v22 + 32;
    v24 = (v51 + 56);
    v25 = (v51 + 48);
    v26 = MEMORY[0x1E69E7CC0];
    v48 = (v51 + 48);
    while (v23 < *(v54 + 16))
    {
      v27 = *&v52[8 * v23++];
      switch(v27 >> 60)
      {
        case 1uLL:
          v41 = type metadata accessor for GroundedParseDetectorResult(0);
          v29 = swift_projectBox();
          v56 = v41;
          v57 = sub_1D89061E8(&qword_1ECA64248, 255, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_29;
        case 2uLL:
          v36 = type metadata accessor for MetaDetectionResult(0);
          v29 = swift_projectBox();
          v56 = v36;
          v57 = sub_1D89061E8(&qword_1EE0E5CE0, 255, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for MetaDetectionResult;
          goto LABEL_29;
        case 3uLL:
        case 8uLL:
          v28 = type metadata accessor for ObjectDetectorResult(0);
          v29 = swift_projectBox();
          v56 = v28;
          v57 = sub_1D89061E8(&qword_1ECA64228, 255, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_29;
        case 4uLL:
          v42 = type metadata accessor for ParseDetectorResult(0);
          v29 = swift_projectBox();
          v56 = v42;
          v57 = sub_1D89061E8(&qword_1ECA64238, 255, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for ParseDetectorResult;
          goto LABEL_29;
        case 5uLL:
          v43 = type metadata accessor for TextDetectorResult(0);
          v29 = swift_projectBox();
          v56 = v43;
          v57 = sub_1D89061E8(&qword_1EE0E5FC0, 255, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for TextDetectorResult;
          goto LABEL_29;
        case 6uLL:
        case 7uLL:
          v29 = swift_projectBox();
          v56 = v4;
          v57 = sub_1D89061E8(&qword_1ECA64230, 255, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_29;
        case 9uLL:
        case 0xAuLL:
          v32 = swift_projectBox();
          v33 = v49;
          sub_1D8906458(v32, v49, type metadata accessor for AFMResult);
          v56 = v50;
          v57 = sub_1D89061E8(&qword_1EE0E3F80, 255, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v34 = __swift_allocate_boxed_opaque_existential_1(v55);
          sub_1D890611C(v33, v34, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v35 = type metadata accessor for SyntheticDetectionResult(0);
          v29 = swift_projectBox();
          v56 = v35;
          v57 = sub_1D89061E8(&qword_1EE0E4D38, 255, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_29;
        case 0xCuLL:
          v37 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v29 = swift_projectBox();
          v56 = v37;
          v57 = sub_1D89061E8(&qword_1ECA64220, 255, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_29;
        case 0xDuLL:
          v44 = type metadata accessor for GroundedParseClassificationsResult(0);
          v29 = swift_projectBox();
          v56 = v44;
          v57 = sub_1D89061E8(&qword_1ECA64218, 255, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
          v31 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_29:
          sub_1D8906458(v29, boxed_opaque_existential_1, v31);
          break;
        default:
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v39 = swift_projectBox();
          v56 = v38;
          v57 = sub_1D8906184();
          v40 = __swift_allocate_boxed_opaque_existential_1(v55);
          v25 = v48;
          sub_1D87A0E38(v39, v40, &qword_1ECA67750, &unk_1D8B1E0C0);
          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
      v45 = swift_dynamicCast();
      (*v24)(v3, v45 ^ 1u, 1, v4);
      if ((*v25)(v3, 1, v4) == 1)
      {
        sub_1D87A14E4(v3, &qword_1ECA64838, &qword_1D8B256A8);
        if (v21 == v23)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1D890611C(v3, v53, type metadata accessor for StreamingBarcodeDetectorResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1D87C9178(0, v26[2] + 1, 1, v26);
        }

        v47 = v26[2];
        v46 = v26[3];
        if (v47 >= v46 >> 1)
        {
          v26 = sub_1D87C9178((v46 > 1), v47 + 1, 1, v26);
        }

        v26[2] = v47 + 1;
        sub_1D890611C(v53, v26 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v47, type metadata accessor for StreamingBarcodeDetectorResult);
        if (v21 == v23)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_36:
  }
}

double sub_1D89047F8(uint64_t a1)
{
  CVBundle.latestDetection.getter(&v9);
  if (v9 >> 60 != 11)
  {

    goto LABEL_6;
  }

  v1 = type metadata accessor for SyntheticDetectionResult(0);
  v2 = swift_projectBox();
  v3 = *(v1 + 24);
  if ((*(v2 + v3) & 1) == 0)
  {

    return 0.0;
  }

  v4 = v2;
  v5 = sub_1D8B16BA0();

  if ((v5 & 1) == 0)
  {
    if (*(v4 + v3) == 1)
    {

LABEL_14:
      v7 = 1053609165;
      goto LABEL_7;
    }

    v8 = sub_1D8B16BA0();

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_6:
    v7 = 1061997773;
LABEL_7:
    LODWORD(result) = v7;
    return result;
  }

  return 0.0;
}

uint64_t sub_1D8904950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8906458(a1, a2, type metadata accessor for StreamingBarcodeDetectorResult);
  v4 = (a1 + *(type metadata accessor for StreamingBarcodeDetectorResult(0) + 24));
  v5 = v4[1];
  v34 = *v4;
  v6 = v4[2];
  v7 = v4[3];
  v35 = v5;
  v36 = v6;
  v37 = v7;
  Corners.bounds.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CVBundle.latestEstimate.getter(&v33);
  v32 = v33;
  CVDetection.detection.getter(v29);
  v16 = v30;
  v17 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v17 + 64))(v28, v16, v17);

  __swift_destroy_boxed_opaque_existential_1(v29);
  Corners.bounds.getter();
  v40.origin.x = v18;
  v40.origin.y = v19;
  v21 = v20;
  v23 = v22;
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  v40.size.width = v21;
  v40.size.height = v23;
  v39 = CGRectIntersection(v38, v40);
  width = v39.size.width;
  height = v39.size.height;
  v26 = 0.0;
  if (!CGRectIsNull(v39))
  {
    v26 = width * height / (v13 * v15 + v21 * v23 - width * height);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64048, &qword_1D8B23118);
  *(a2 + *(result + 48)) = v26;
  return result;
}

uint64_t sub_1D8904B00()
{
  type metadata accessor for BarcodeParseSerializer();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  qword_1ECAA3678 = v0;
  return result;
}

uint64_t sub_1D8904B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65148, &qword_1D8B285F8);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63520, &qword_1D8B285F0);
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8904C84, a4, 0);
}

uint64_t sub_1D8904C84()
{
  v1 = *(v0 + 192);
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = (v2 + 16);
  v4 = *(v0 + 192);
  if (*(v2 + 16))
  {
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      *(v0 + 248) = v2;
      if (*(v4 + 112) != 1)
      {
        break;
      }

      *(v4 + 120) = v5;
      v6 = *v3;
      *(v0 + 256) = *v3;
      if (v6)
      {
        v9 = *(v0 + 232);
        v10 = *(v0 + 240);
        v11 = *(v0 + 216);
        v12 = *(*(v0 + 224) + 48);
        *(v0 + 296) = v12;
        v13 = *(v9 + 80);
        *(v0 + 300) = v13;
        *(v0 + 264) = *(v9 + 72);
        *(v0 + 272) = 0;
        v14 = *(v0 + 200);
        v15 = *(v0 + 208);
        sub_1D87A0E38(*(v0 + 248) + ((v13 + 32) & ~v13), v10, &qword_1ECA63520, &qword_1D8B285F0);
        v16 = *v10;
        *(v0 + 280) = *v10;
        (*(v15 + 32))(v11, v10 + v12, v14);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_1D8904EF4;
        v17 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65160, &qword_1D8B28648);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1D89055E4;
        *(v0 + 104) = &block_descriptor_4;
        *(v0 + 112) = v17;
        [v16 parseCodeWithCompletion_];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      v4 = *(v0 + 192);
      v2 = *(v4 + 120);
      v3 = (v2 + 16);
    }

    while (*(v2 + 16));
  }

  *(v4 + 112) = 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D8904EF4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 192);
  if (v2)
  {
    v4 = sub_1D89052F8;
  }

  else
  {
    v4 = sub_1D8905014;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8905014()
{
  v1 = *(v0 + 168);
  *(v0 + 184) = v1;
  v2 = *(v0 + 280);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = v1;
  sub_1D8B15E20();

  (*(v4 + 8))(v3, v5);
  v7 = *(v0 + 272) + 1;
  if (v7 == *(v0 + 256))
  {

    v8 = *(v0 + 192);
    v10 = (v8 + 120);
    v9 = *(v8 + 120);
    v11 = (v9 + 16);
    if (*(v9 + 16))
    {
      v12 = MEMORY[0x1E69E7CC0];
      do
      {
        *(v0 + 248) = v9;
        if (*(v8 + 112) != 1)
        {
          break;
        }

        *v10 = v12;
        v13 = *v11;
        *(v0 + 256) = *v11;
        if (v13)
        {
          v7 = 0;
          v26 = *(v0 + 232);
          v18 = *(*(v0 + 224) + 48);
          *(v0 + 296) = v18;
          v17 = *(v26 + 80);
          *(v0 + 300) = v17;
          v16 = *(v26 + 72);
          *(v0 + 264) = v16;
          goto LABEL_11;
        }

        v8 = *(v0 + 192);
        v10 = (v8 + 120);
        v9 = *(v8 + 120);
        v11 = (v9 + 16);
      }

      while (*(v9 + 16));
    }

    *(v8 + 112) = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 264);
    LOBYTE(v17) = *(v0 + 300);
    v18 = *(v0 + 296);
LABEL_11:
    *(v0 + 272) = v7;
    v19 = *(v0 + 240);
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = v19 + v18;
    sub_1D87A0E38(*(v0 + 248) + ((v17 + 32) & ~v17) + v16 * v7, v19, &qword_1ECA63520, &qword_1D8B285F0);
    v24 = *v19;
    *(v0 + 280) = v24;
    (*(v21 + 32))(v20, v23, v22);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_1D8904EF4;
    v25 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65160, &qword_1D8B28648);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D89055E4;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v25;
    [v24 parseCodeWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1D89052F8(uint64_t a1)
{
  v3 = *(v1 + 280);
  v2 = *(v1 + 288);
  v5 = *(v1 + 208);
  v4 = *(v1 + 216);
  v6 = *(v1 + 200);
  swift_willThrow();
  *(v1 + 176) = v2;
  v7 = v2;
  sub_1D8B15E10();

  (*(v5 + 8))(v4, v6);
  v8 = *(v1 + 272) + 1;
  if (v8 == *(v1 + 256))
  {

    v9 = *(v1 + 192);
    v11 = (v9 + 120);
    v10 = *(v9 + 120);
    v12 = (v10 + 16);
    if (*(v10 + 16))
    {
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        *(v1 + 248) = v10;
        if (*(v9 + 112) != 1)
        {
          break;
        }

        *v11 = v13;
        v14 = *v12;
        *(v1 + 256) = *v12;
        if (v14)
        {
          v8 = 0;
          v27 = *(v1 + 232);
          v19 = *(*(v1 + 224) + 48);
          *(v1 + 296) = v19;
          v18 = *(v27 + 80);
          *(v1 + 300) = v18;
          v17 = *(v27 + 72);
          *(v1 + 264) = v17;
          goto LABEL_11;
        }

        v9 = *(v1 + 192);
        v11 = (v9 + 120);
        v10 = *(v9 + 120);
        v12 = (v10 + 16);
      }

      while (*(v10 + 16));
    }

    *(v9 + 112) = 0;

    v15 = *(v1 + 8);

    return v15();
  }

  else
  {
    v17 = *(v1 + 264);
    LOBYTE(v18) = *(v1 + 300);
    v19 = *(v1 + 296);
LABEL_11:
    *(v1 + 272) = v8;
    v20 = *(v1 + 240);
    v22 = *(v1 + 208);
    v21 = *(v1 + 216);
    v23 = *(v1 + 200);
    v24 = v20 + v19;
    sub_1D87A0E38(*(v1 + 248) + ((v18 + 32) & ~v18) + v17 * v8, v20, &qword_1ECA63520, &qword_1D8B285F0);
    v25 = *v20;
    *(v1 + 280) = v25;
    (*(v22 + 32))(v21, v24, v23);
    *(v1 + 16) = v1;
    *(v1 + 56) = v1 + 168;
    *(v1 + 24) = sub_1D8904EF4;
    v26 = swift_continuation_init();
    *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65160, &qword_1D8B28648);
    *(v1 + 80) = MEMORY[0x1E69E9820];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_1D89055E4;
    *(v1 + 104) = &block_descriptor_4;
    *(v1 + 112) = v26;
    [v25 parseCodeWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v1 + 16);
  }
}

uint64_t sub_1D89055E4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

double sub_1D89056BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63520, &qword_1D8B285F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - v12;
  v14 = *(v11 + 56);
  *(&v26 - v12) = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65148, &qword_1D8B285F8);
  (*(*(v15 - 8) + 16))(&v13[v14], a1, v15);
  swift_beginAccess();
  v16 = *(a2 + 120);
  v17 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1D87C91A0(0, v16[2] + 1, 1, v16);
    *(a2 + 120) = v16;
  }

  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = sub_1D87C91A0((v19 > 1), v20 + 1, 1, v16);
  }

  v16[2] = v20 + 1;
  sub_1D881F6FC(v13, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v20, &qword_1ECA63520, &qword_1D8B285F0);
  *(a2 + 120) = v16;
  swift_endAccess();
  if ((*(a2 + 112) & 1) == 0)
  {
    *(a2 + 112) = 1;
    v22 = sub_1D8B15EA0();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    v24 = sub_1D89061E8(&qword_1ECA65158, v23, type metadata accessor for BarcodeParseSerializer, &unk_1D8B28574);
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = v24;
    v25[4] = a2;
    swift_retain_n();
    sub_1D8891CA0(0, 0, v8, &unk_1D8B28640, v25);
  }

  return result;
}

uint64_t sub_1D89059B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63520, &qword_1D8B285F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15 - v4);
  *(v1 + 112) = 0;
  swift_beginAccess();
  v6 = *(v1 + 120);
  v7 = *(v6 + 16);
  if (v7)
  {
    v15 = *(v1 + 120);
    v16 = v1;
    v8 = *(v2 + 48);
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    v17 = xmmword_1D8B282F0;
    do
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA63520, &qword_1D8B285F0);

      sub_1D88C53E4();
      v11 = swift_allocError();
      *v12 = v17;
      *(v12 + 16) = 3;
      v18 = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65148, &qword_1D8B285F8);
      sub_1D8B15E10();
      (*(*(v13 - 8) + 8))(v5 + v8, v13);
      v9 += v10;
      --v7;
    }

    while (v7);

    v1 = v16;
  }

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1D8905BB0()
{
  sub_1D89059B8();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t _s22VisualIntelligenceCore18BCSActionContainerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v17 = *(a1 + 24);
    sub_1D8905F40();
    v11 = v7;
    v12 = v2;
    v13 = sub_1D8B16400();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 24);
    if (v7)
    {
      return 0;
    }
  }

  v14 = v3 == v6 && v4 == v9;
  if (!v14 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v8 && v5 == v10)
  {
    return 1;
  }

  return sub_1D8B16BA0();
}

unint64_t sub_1D8905D0C()
{
  result = qword_1ECA65128;
  if (!qword_1ECA65128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65128);
  }

  return result;
}

uint64_t sub_1D8905D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8905DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8905E3C()
{
  result = qword_1ECA65130;
  if (!qword_1ECA65130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65130);
  }

  return result;
}

unint64_t sub_1D8905E94()
{
  result = qword_1ECA65138;
  if (!qword_1ECA65138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65138);
  }

  return result;
}

unint64_t sub_1D8905EEC()
{
  result = qword_1ECA65140;
  if (!qword_1ECA65140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65140);
  }

  return result;
}

unint64_t sub_1D8905F40()
{
  result = qword_1ECA65150;
  if (!qword_1ECA65150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECA65150);
  }

  return result;
}

void sub_1D8905FA4(id a1)
{
  if (a1 != 1)
  {
  }
}

id viCore_systemSymbolNameForImage(void *a1)
{
  v1 = a1;
  v2 = a1;
  v3 = v2;
  if (v1)
  {
    if (MEMORY[0x1DA7208A0](v2))
    {
      v1 = MEMORY[0x1DA720890](v3);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_1D890601C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8904B4C(a1, v4, v5, v6);
}

uint64_t sub_1D890611C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8906184()
{
  result = qword_1ECA64240;
  if (!qword_1ECA64240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67750, &unk_1D8B1E0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA64240);
  }

  return result;
}

uint64_t sub_1D89061E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char sub_1D8906230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-v3];
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8906458(a1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D8B13240();
    (*(*(v8 - 8) + 8))(v7, v8);
    return 0;
  }

  sub_1D89064C0(v7, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v16);
  v10 = v16 >> 60;
  if ((v16 >> 60) - 6 < 2 || v10 == 11)
  {

    return 1;
  }

  else
  {
    if (v10)
    {

      return 0;
    }

    v11 = swift_projectBox();
    result = sub_1D87A0E38(v11, v4, &qword_1ECA67750, &unk_1D8B1E0C0);
    v12 = *&v4[*(v2 + 44)];
    if (*(v12 + 16))
    {
      result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v12 + 32)).value;
      if (v15 != 181)
      {
        v13 = v15 == 6;
        sub_1D87A14E4(v4, &qword_1ECA67750, &unk_1D8B1E0C0);

        return v13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8906458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89064C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BundleClassification.ClassificationType.caseDescription.getter()
{
  v1 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8912BA4(v0, v3, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
        return 0x6974634174786574;
      }

      else
      {
        return 0x746E657665;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0x756F6C4164616572;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 0x74616C736E617274;
    }

    else
    {
      return 0x7A6972616D6D7573;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
      return 0x796669746E656469;
    }

    else
    {
      sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
      return 1936744813;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
    return 0x65646F63726162;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x686372616573;
  }

  else
  {
    sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
    return 1667459446;
  }
}

uint64_t BundleClassification.ClassificationType.asEmpty.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8912BA4(v2, v6, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
      *a1 = MEMORY[0x1E69E7CD0];
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
      *a1 = MEMORY[0x1E69E7CC0];
      a1[1] = 0xBFF0000000000000;
      return swift_storeEnumTagMultiPayload();
    }

    v10 = type metadata accessor for VisualLookupClassifier.Result(0);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D89128B8(v6, type metadata accessor for BundleClassification.ClassificationType);
    *a1 = xmmword_1D8B190C0;
    a1[2] = 0xE700000000000000;
    a1[3] = 0x7974706D65;
    a1[4] = 0xE500000000000000;
    a1[5] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 3)
  {
    *a1 = 0x7974706D65;
    a1[1] = 0xE500000000000000;
    v8 = *MEMORY[0x1E69C9C08];
    v9 = sub_1D8B145A0();
    (*(*(v9 - 8) + 104))(a1, v8, v9);
    goto LABEL_14;
  }

  *a1 = 0;
  return swift_storeEnumTagMultiPayload();
}

BOOL BundleClassification.ClassificationType.isTextAction.getter()
{
  v1 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8912BA4(v0, v3, type metadata accessor for BundleClassification.ClassificationType);
  v4 = swift_getEnumCaseMultiPayload() == 5;
  sub_1D89128B8(v3, type metadata accessor for BundleClassification.ClassificationType);
  return v4;
}

uint64_t sub_1D8906B48(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x686372616573;
    v6 = 0x6C61636974726576;
    if (a1 != 8)
    {
      v6 = 0x6974634174786574;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x796669746E656469;
    if (a1 != 5)
    {
      v7 = 0x65646F63726162;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x757365527370616DLL;
    v2 = 0x756F6C4164616572;
    v3 = 0x74616C736E617274;
    if (a1 != 3)
    {
      v3 = 0x7A6972616D6D7573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746E657665;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8906CA0(uint64_t a1)
{
  v2 = sub_1D89124F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906CDC(uint64_t a1)
{
  v2 = sub_1D89124F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906D20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D891585C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8906D54(uint64_t a1)
{
  v2 = sub_1D891234C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906D90(uint64_t a1)
{
  v2 = sub_1D891234C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906DCC(uint64_t a1)
{
  v2 = sub_1D89127A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906E08(uint64_t a1)
{
  v2 = sub_1D89127A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906E44(uint64_t a1)
{
  v2 = sub_1D8912608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906E80(uint64_t a1)
{
  v2 = sub_1D8912608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8906EBC()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 12383;
  }
}

void sub_1D8906EE8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D8906FB8(uint64_t a1)
{
  v2 = sub_1D89127F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8906FF4(uint64_t a1)
{
  v2 = sub_1D89127F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907030(uint64_t a1)
{
  v2 = sub_1D891274C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890706C(uint64_t a1)
{
  v2 = sub_1D891274C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89070A8(uint64_t a1)
{
  v2 = sub_1D8912448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89070E4(uint64_t a1)
{
  v2 = sub_1D8912448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907120(uint64_t a1)
{
  v2 = sub_1D89126A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890715C(uint64_t a1)
{
  v2 = sub_1D89126A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907198(uint64_t a1)
{
  v2 = sub_1D89123A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89071D4(uint64_t a1)
{
  v2 = sub_1D89123A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907210(uint64_t a1)
{
  v2 = sub_1D89126F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890724C(uint64_t a1)
{
  v2 = sub_1D89126F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8907288(uint64_t a1)
{
  v2 = sub_1D89123F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89072C4(uint64_t a1)
{
  v2 = sub_1D89123F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BundleClassification.ClassificationType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65170, &qword_1D8B286A0);
  v88 = *(v2 - 8);
  v89 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v84 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65178, &qword_1D8B286A8);
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v57 - v5;
  v85 = sub_1D8B145A0();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65180, &qword_1D8B286B0);
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v57 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65188, &qword_1D8B286B8);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v57 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65190, &unk_1D8B286C0);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v57 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65198, &qword_1D8B286D0);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v57 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651A0, &qword_1D8B286D8);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v57 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651A8, &qword_1D8B286E0);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v57 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651B0, &qword_1D8B286E8);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v57 - v16;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651B8, &qword_1D8B286F0);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - v18;
  v19 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA651C0, &qword_1D8B286F8);
  v91 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D891234C();
  v25 = v24;
  sub_1D8B16DD0();
  sub_1D8912BA4(v90, v21, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v27 = v22;
      if (EnumCaseMultiPayload == 2)
      {
        v39 = *v21;
        v40 = v21[1];
        v41 = v21[2];
        v42 = v21[3];
        v43 = v21[4];
        v44 = v21[5];
        LOBYTE(v94) = 6;
        sub_1D89124F0();
        v45 = v75;
        sub_1D8B16A40();
        v94 = v39;
        v95 = v40;
        v96 = v41;
        v97 = v42;
        v98 = v43;
        v99 = v44;
        sub_1D8912544();
        v46 = v78;
        sub_1D8B16AE0();
        (*(v76 + 8))(v45, v46);
        (*(v91 + 8))(v25, v27);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v28 = *v21;
          LOBYTE(v94) = 7;
          sub_1D8912448();
          v29 = v77;
          sub_1D8B16A40();
          LOBYTE(v94) = v28;
          sub_1D891249C();
          v30 = v80;
          sub_1D8B16AE0();
          (*(v79 + 8))(v29, v30);
        }

        else
        {
          v48 = v83;
          v49 = v81;
          v50 = v85;
          (*(v83 + 32))(v81, v21, v85);
          LOBYTE(v94) = 8;
          sub_1D89123F4();
          v51 = v82;
          sub_1D8B16A40();
          sub_1D891265C(&qword_1ECA651E0, MEMORY[0x1E69C9C10], MEMORY[0x1E69C9C18]);
          v52 = v87;
          sub_1D8B16AE0();
          (*(v86 + 8))(v51, v52);
          (*(v48 + 8))(v49, v50);
        }

        (*(v91 + 8))(v25, v27);
      }

      return;
    }

    v32 = v22;
    if (EnumCaseMultiPayload)
    {
      v54 = v71;
      sub_1D8912598(v21, v71);
      LOBYTE(v94) = 5;
      sub_1D8912608();
      v55 = v72;
      sub_1D8B16A40();
      type metadata accessor for VisualLookupClassifier.Result(0);
      sub_1D891265C(&qword_1ECA65210, type metadata accessor for VisualLookupClassifier.Result, &protocol conformance descriptor for VisualLookupClassifier.Result);
      v56 = v74;
      sub_1D8B16A80();
      (*(v73 + 8))(v55, v56);
      sub_1D87A14E4(v54, &qword_1ECA641B0, &unk_1D8B23AB0);
    }

    else
    {
      v33 = *v21;
      LOBYTE(v94) = 0;
      sub_1D89127F4();
      v34 = v62;
      sub_1D8B16A40();
      v94 = v33;
      v93 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA639D8, &qword_1D8B28700);
      sub_1D881C9B0(&qword_1ECA639E0, sub_1D881C860, MEMORY[0x1E69E6300]);
      v35 = v65;
      v36 = v92;
      sub_1D8B16AE0();
      if (v36)
      {
        v37 = v64;
        goto LABEL_15;
      }

      LOBYTE(v94) = 1;
      sub_1D8B16AB0();
      (*(v64 + 8))(v34, v35);
    }

    (*(v91 + 8))(v25, v22);
    return;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v32 = v22;
    if (EnumCaseMultiPayload != 5)
    {
      LOBYTE(v94) = 1;
      sub_1D89127A0();
      sub_1D8B16A40();
      (*(v57 + 8))(v17, v58);
      (*(v91 + 8))(v24, v22);
      return;
    }

    v38 = *v21;
    LOBYTE(v94) = 9;
    sub_1D89123A0();
    v34 = v84;
    sub_1D8B16A40();
    v94 = v38;
    sub_1D881C470();
    v35 = v89;
    sub_1D8B16AE0();
    v37 = v88;
LABEL_15:
    (*(v37 + 8))(v34, v35);
    (*(v91 + 8))(v25, v32);

    return;
  }

  if (EnumCaseMultiPayload == 7)
  {
    LOBYTE(v94) = 2;
    sub_1D891274C();
    v47 = v59;
    sub_1D8B16A40();
    (*(v60 + 8))(v47, v61);
    (*(v91 + 8))(v24, v22);
  }

  else
  {
    if (EnumCaseMultiPayload == 8)
    {
      LOBYTE(v94) = 3;
      sub_1D89126F8();
      v31 = v63;
      sub_1D8B16A40();
      (*(v66 + 8))(v31, v67);
    }

    else
    {
      LOBYTE(v94) = 4;
      sub_1D89126A4();
      v53 = v68;
      sub_1D8B16A40();
      (*(v69 + 8))(v53, v70);
    }

    (*(v91 + 8))(v24, v22);
  }
}

void BundleClassification.ClassificationType.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D8B145A0();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VisualLookupClassifier.Result(0);
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8912BA4(v2, v18, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        MEMORY[0x1DA720210](1);
        return;
      }

      v23 = *v18;
      MEMORY[0x1DA720210](9);
      sub_1D8819574(a1, v23);
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 7)
    {
      MEMORY[0x1DA720210](2);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      MEMORY[0x1DA720210](3);
    }

    else
    {
      MEMORY[0x1DA720210](4);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          MEMORY[0x1DA720210](7);
          sub_1D8B16D40();
        }

        else
        {
          v26 = v28;
          (*(v28 + 32))(v6, v18, v4);
          MEMORY[0x1DA720210](8);
          sub_1D891265C(&qword_1EE0E9840, MEMORY[0x1E69C9C10], MEMORY[0x1E69C9C20]);
          sub_1D8B157A0();
          (*(v26 + 8))(v6, v4);
        }

        return;
      }

      v24 = *v18;
      MEMORY[0x1DA720210](6);
      if (v24)
      {
        sub_1D8B16D40();
        v25 = v24;
        sub_1D8B16410();

        return;
      }

      sub_1D8B16D40();

LABEL_27:

      return;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D8912598(v18, v15);
      MEMORY[0x1DA720210](5);
      sub_1D8912848(v15, v13);
      if ((*(v27 + 48))(v13, 1, v7) == 1)
      {
        sub_1D8B16D40();
      }

      else
      {
        sub_1D8912918(v13, v9, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D8B16D40();
        VisualLookupClassifier.Result.hash(into:)(a1);
        sub_1D89128B8(v9, type metadata accessor for VisualLookupClassifier.Result);
      }

      sub_1D87A14E4(v15, &qword_1ECA641B0, &unk_1D8B23AB0);
    }

    else
    {
      v20 = *v18;
      v21 = v18[1];
      MEMORY[0x1DA720210](0);
      sub_1D87D0814(a1, v20);

      v22 = 0.0;
      if (v21 != 0.0)
      {
        v22 = v21;
      }

      MEMORY[0x1DA720250](*&v22);
    }
  }
}

uint64_t BundleClassification.ClassificationType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65240, &qword_1D8B28708);
  v109 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v115 = &v82 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65248, &qword_1D8B28710);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v116 = &v82 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65250, &qword_1D8B28718);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v123 = &v82 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65258, &qword_1D8B28720);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v114 = &v82 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65260, &qword_1D8B28728);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v113 = &v82 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65268, &qword_1D8B28730);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v122 = &v82 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65270, &qword_1D8B28738);
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v112 = &v82 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65278, &qword_1D8B28740);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v111 = &v82 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65280, &qword_1D8B28748);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v110 = &v82 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65288, &qword_1D8B28750);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v120 = &v82 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65290, &unk_1D8B28758);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v14 = &v82 - v13;
  v118 = type metadata accessor for BundleClassification.ClassificationType(0);
  v15 = MEMORY[0x1EEE9AC00](v118);
  v88 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v89 = &v82 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v82 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v82 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v82 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v82 - v31;
  v33 = a1[3];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D891234C();
  v124 = v14;
  v34 = v126;
  sub_1D8B16DB0();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v125);
  }

  v87 = v27;
  v85 = v24;
  v86 = v21;
  v84 = v30;
  v35 = v120;
  v36 = v121;
  v38 = v122;
  v37 = v123;
  v126 = v32;
  v39 = v124;
  v40 = sub_1D8B16A20();
  v41 = (2 * *(v40 + 16)) | 1;
  v132 = v40;
  v133 = v40 + 32;
  v134 = 0;
  v135 = v41;
  v42 = sub_1D87E380C();
  if (v42 == 10 || v134 != v135 >> 1)
  {
    v47 = sub_1D8B16770();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v49 = v118;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v119 + 8))(v39, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v125);
  }

  if (v42 > 4u)
  {
    if (v42 <= 6u)
    {
      v43 = v117;
      if (v42 == 5)
      {
        LOBYTE(v128) = 5;
        sub_1D8912608();
        v56 = v113;
        sub_1D8B16950();
        v57 = v119;
        type metadata accessor for VisualLookupClassifier.Result(0);
        sub_1D891265C(&qword_1ECA652B0, type metadata accessor for VisualLookupClassifier.Result, &protocol conformance descriptor for VisualLookupClassifier.Result);
        v68 = v87;
        v69 = v101;
        sub_1D8B169B0();
        v83 = 0;
        (*(v100 + 8))(v56, v69);
        (*(v57 + 8))(v39, v36);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v81 = v68;
      }

      else
      {
        LOBYTE(v128) = 6;
        sub_1D89124F0();
        v65 = v114;
        sub_1D8B16950();
        v66 = v119;
        sub_1D89129D4();
        v67 = v103;
        sub_1D8B16A10();
        v83 = 0;
        (*(v102 + 8))(v65, v67);
        (*(v66 + 8))(v39, v36);
        swift_unknownObjectRelease();
        v74 = v130;
        v75 = v131;
        v76 = v129;
        v77 = v85;
        *v85 = v128;
        v77[1] = v76;
        *(v77 + 4) = v74;
        *(v77 + 5) = v75;
        swift_storeEnumTagMultiPayload();
        v81 = v77;
      }

      goto LABEL_31;
    }

    if (v42 == 7)
    {
      LOBYTE(v128) = 7;
      sub_1D8912448();
      sub_1D8B16950();
      sub_1D8912980();
      v60 = v105;
      sub_1D8B16A10();
      v83 = 0;
      (*(v104 + 8))(v37, v60);
      (*(v119 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v71 = v86;
      *v86 = v128;
    }

    else
    {
      if (v42 == 8)
      {
        LOBYTE(v128) = 8;
        sub_1D89123F4();
        v51 = v116;
        sub_1D8B16950();
        sub_1D8B145A0();
        sub_1D891265C(&qword_1ECA65298, MEMORY[0x1E69C9C10], MEMORY[0x1E69C9C28]);
        v52 = v89;
        v53 = v108;
        sub_1D8B16A10();
        v83 = 0;
        (*(v107 + 8))(v51, v53);
        (*(v119 + 8))(v39, v36);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v72 = v52;
LABEL_30:
        v46 = v126;
        sub_1D8912918(v72, v126, type metadata accessor for BundleClassification.ClassificationType);
        v70 = v125;
        v43 = v117;
        goto LABEL_28;
      }

      LOBYTE(v128) = 9;
      sub_1D89123A0();
      v61 = v115;
      sub_1D8B16950();
      sub_1D881C95C();
      v62 = v106;
      sub_1D8B16A10();
      v83 = 0;
      (*(v109 + 8))(v61, v62);
      (*(v119 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v71 = v88;
      *v88 = v128;
    }

    swift_storeEnumTagMultiPayload();
    v72 = v71;
    goto LABEL_30;
  }

  if (v42 > 1u)
  {
    v43 = v117;
    if (v42 == 2)
    {
      LOBYTE(v128) = 2;
      sub_1D891274C();
      v58 = v111;
      sub_1D8B16950();
      v59 = v119;
      v83 = 0;
      (*(v92 + 8))(v58, v93);
      (*(v59 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v46 = v126;
    }

    else
    {
      v44 = v119;
      if (v42 == 3)
      {
        LOBYTE(v128) = 3;
        sub_1D89126F8();
        v45 = v112;
        sub_1D8B16950();
        v83 = 0;
        (*(v94 + 8))(v45, v97);
      }

      else
      {
        LOBYTE(v128) = 4;
        sub_1D89126A4();
        sub_1D8B16950();
        v83 = 0;
        (*(v98 + 8))(v38, v99);
      }

      (*(v44 + 8))(v39, v36);
      swift_unknownObjectRelease();
      v46 = v126;
    }

    goto LABEL_26;
  }

  v43 = v117;
  if (!v42)
  {
    LOBYTE(v128) = 0;
    sub_1D89127F4();
    sub_1D8B16950();
    v54 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA639D8, &qword_1D8B28700);
    v127 = 0;
    sub_1D881C9B0(&qword_1ECA63AA8, sub_1D881CA28, MEMORY[0x1E69E6330]);
    v55 = v96;
    sub_1D8B16A10();
    v73 = v128;
    v127 = 1;
    sub_1D8B169E0();
    v83 = 0;
    v79 = v78;
    (*(v95 + 8))(v35, v55);
    (*(v54 + 8))(v124, v36);
    swift_unknownObjectRelease();
    v80 = v84;
    *v84 = v73;
    v80[1] = v79;
    swift_storeEnumTagMultiPayload();
    v81 = v80;
LABEL_31:
    v46 = v126;
    sub_1D8912918(v81, v126, type metadata accessor for BundleClassification.ClassificationType);
    goto LABEL_27;
  }

  LOBYTE(v128) = 1;
  sub_1D89127A0();
  v63 = v110;
  sub_1D8B16950();
  v64 = v119;
  v83 = 0;
  (*(v90 + 8))(v63, v91);
  (*(v64 + 8))(v39, v36);
  swift_unknownObjectRelease();
  v46 = v126;
LABEL_26:
  swift_storeEnumTagMultiPayload();
LABEL_27:
  v70 = v125;
LABEL_28:
  sub_1D8912918(v46, v43, type metadata accessor for BundleClassification.ClassificationType);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}

double BundleClassification.runtimeError.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BundleClassification(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1D8912A48(v4, v5, v6, v7);
}

uint64_t sub_1D8909D00()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D8909D60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8915B9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8909D88(uint64_t a1)
{
  v2 = sub_1D8912AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8909DC4(uint64_t a1)
{
  v2 = sub_1D8912AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652B8, &qword_1D8B28768);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912AA8();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  type metadata accessor for BundleClassification.ClassificationType(0);
  sub_1D891265C(&qword_1ECA652C8, type metadata accessor for BundleClassification.ClassificationType, &protocol conformance descriptor for BundleClassification.ClassificationType);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for BundleClassification(0) + 20));
    v10 = v9[1];
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    v16 = *v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v15[7] = 1;
    sub_1D8912A48(v16, v10, v11, v12);
    sub_1D8912AFC();
    sub_1D8B16A80();
    sub_1D88E0FE4(v16, v17, v18, v19);
    LOBYTE(v16) = 2;
    sub_1D8B16AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BundleClassification.hash(into:)(__int128 *a1)
{
  BundleClassification.ClassificationType.hash(into:)(a1);
  v2 = type metadata accessor for BundleClassification(0);
  v3 = v1 + *(v2 + 20);
  if (*v3 != 2)
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    v6 = *(v3 + 32);
    v7 = *(v3 + 24);
    sub_1D8B16D40();
    sub_1D8B16D40();
    v8 = v7 >> 6;
    if (v7 >> 6 > 1)
    {
      if (v8 == 2)
      {
        v9 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      if (v8)
      {
        v9 = 2;
        goto LABEL_12;
      }

      MEMORY[0x1DA720210](0);
      if (!v7)
      {
        v9 = 5;
        goto LABEL_12;
      }

      if (v7 == 1)
      {
        v9 = 6;
LABEL_12:
        MEMORY[0x1DA720210](v9);
        sub_1D8B15A60();
LABEL_21:
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = 0;
        }

        MEMORY[0x1DA720250](v11);
        goto LABEL_25;
      }

      if (v5 > 1)
      {
        if (v5 ^ 2 | v4)
        {
          if (v5 ^ 3 | v4)
          {
            v10 = 4;
          }

          else
          {
            v10 = 3;
          }
        }

        else
        {
          v10 = 2;
        }

        goto LABEL_20;
      }

      if (!(v5 | v4))
      {
        v10 = 0;
LABEL_20:
        MEMORY[0x1DA720210](v10);
        goto LABEL_21;
      }
    }

    v10 = 1;
    goto LABEL_20;
  }

  sub_1D8B16D40();
LABEL_25:
  v12 = *(v1 + *(v2 + 24));
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v12);
}

uint64_t sub_1D890A1CC(uint64_t (*a1)(void *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

void BundleClassification.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  *&v25 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v25);
  *&v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652D8, &qword_1D8B28770);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - v5;
  v7 = type metadata accessor for BundleClassification(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v10[*(v8 + 20)];
  *v11 = 2;
  *(v11 + 1) = 0u;
  *(v11 + 3) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912AA8();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D88E0FE4(*v11, v11[1], v11[2], v11[3]);
  }

  else
  {
    v12 = v24;
    v13 = v10;
    LOBYTE(v29) = 0;
    sub_1D891265C(&qword_1ECA652E0, type metadata accessor for BundleClassification.ClassificationType, &protocol conformance descriptor for BundleClassification.ClassificationType);
    v14 = v26;
    sub_1D8B16A10();
    sub_1D8912918(v27, v13, type metadata accessor for BundleClassification.ClassificationType);
    v28 = 1;
    sub_1D8912B50();
    sub_1D8B169B0();
    v15 = v31;
    v16 = *v11;
    v17 = v11[1];
    v18 = v11[2];
    v19 = v11[3];
    v27 = v29;
    v25 = v30;
    sub_1D88E0FE4(v16, v17, v18, v19);
    v20 = v25;
    *v11 = v27;
    *(v11 + 1) = v20;
    v11[4] = v15;
    LOBYTE(v29) = 2;
    sub_1D8B169E0();
    v22 = v21;
    (*(v12 + 8))(v6, v14);
    *(v13 + *(v7 + 24)) = v22;
    sub_1D8912BA4(v13, v23, type metadata accessor for BundleClassification);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D89128B8(v13, type metadata accessor for BundleClassification);
  }
}

uint64_t sub_1D890A608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D890A66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D890A6F0(uint64_t a1)
{
  v2 = sub_1D8912E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A72C(uint64_t a1)
{
  v2 = sub_1D8912E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D890A768()
{
  v1 = *v0;
  v2 = 0x6D61657274737075;
  v3 = 0x69446D6574737973;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x696D694C65746172;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_1D890A860@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8915CC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D890A888(uint64_t a1)
{
  v2 = sub_1D8912C0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A8C4(uint64_t a1)
{
  v2 = sub_1D8912C0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890A900(uint64_t a1)
{
  v2 = sub_1D8912DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A93C(uint64_t a1)
{
  v2 = sub_1D8912DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890A978(uint64_t a1)
{
  v2 = sub_1D8912D5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890A9B4(uint64_t a1)
{
  v2 = sub_1D8912D5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890A9F0(uint64_t a1)
{
  v2 = sub_1D8912D08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AA2C(uint64_t a1)
{
  v2 = sub_1D8912D08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890AA68(uint64_t a1)
{
  v2 = sub_1D8912CB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AAA4(uint64_t a1)
{
  v2 = sub_1D8912CB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890AAE0(uint64_t a1)
{
  v2 = sub_1D8912C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AB1C(uint64_t a1)
{
  v2 = sub_1D8912C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890AB58(uint64_t a1)
{
  v2 = sub_1D8912E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890AB94(uint64_t a1)
{
  v2 = sub_1D8912E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassification.BlockingReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652F0, &qword_1D8B28778);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA652F8, &qword_1D8B28780);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65300, &qword_1D8B28788);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65308, &qword_1D8B28790);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65310, &qword_1D8B28798);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65318, &qword_1D8B287A0);
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v32 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65320, &qword_1D8B287A8);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65328, &qword_1D8B287B0);
  v52 = *(v17 - 8);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v21 = *v1;
  v20 = *(v1 + 8);
  v22 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912C0C();
  sub_1D8B16DD0();
  if (!v22)
  {
    v59 = 5;
    sub_1D8912CB4();
    v23 = v46;
    v24 = v53;
    sub_1D8B16A40();
    v25 = v48;
    sub_1D8B16A90();
    v26 = v47;
    goto LABEL_5;
  }

  if (v22 == 1)
  {
    v60 = 6;
    sub_1D8912C60();
    v23 = v49;
    v24 = v53;
    sub_1D8B16A40();
    v25 = v51;
    sub_1D8B16A90();
    v26 = v50;
LABEL_5:
    (*(v26 + 8))(v23, v25);
    return (*(v52 + 8))(v19, v24);
  }

  if (v21 > 1)
  {
    if (v21 ^ 2 | v20)
    {
      if (v21 ^ 3 | v20)
      {
        v58 = 4;
        sub_1D8912D08();
        v28 = v43;
        v29 = v53;
        sub_1D8B16A40();
        v31 = v44;
        v30 = v45;
      }

      else
      {
        v57 = 3;
        sub_1D8912D5C();
        v28 = v40;
        v29 = v53;
        sub_1D8B16A40();
        v31 = v41;
        v30 = v42;
      }
    }

    else
    {
      v56 = 2;
      sub_1D8912DB0();
      v28 = v37;
      v29 = v53;
      sub_1D8B16A40();
      v31 = v38;
      v30 = v39;
    }

    goto LABEL_15;
  }

  if (v21 | v20)
  {
    v55 = 1;
    sub_1D8912E04();
    v28 = v34;
    v29 = v53;
    sub_1D8B16A40();
    v31 = v35;
    v30 = v36;
LABEL_15:
    (*(v31 + 8))(v28, v30);
    return (*(v52 + 8))(v19, v29);
  }

  v54 = 0;
  sub_1D8912E58();
  v29 = v53;
  sub_1D8B16A40();
  (*(v32 + 8))(v16, v33);
  return (*(v52 + 8))(v19, v29);
}

uint64_t BundleClassification.BlockingReason.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (!*(v1 + 16))
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v4 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v4);

    return sub_1D8B15A60();
  }

  if (v3 <= 1)
  {
    v6 = (v3 | v2) != 0;
  }

  else if (v3 ^ 2 | v2)
  {
    if (v3 ^ 3 | v2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 2;
  }

  return MEMORY[0x1DA720210](v6);
}

uint64_t BundleClassification.BlockingReason.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D8B16D20();
  if (!v3)
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v4);
    sub_1D8B15A60();
    return sub_1D8B16D80();
  }

  if (v2 <= 1)
  {
    v5 = (v2 | v1) != 0;
  }

  else if (v2 ^ 2 | v1)
  {
    if (v2 ^ 3 | v1)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 2;
  }

  MEMORY[0x1DA720210](v5);
  return sub_1D8B16D80();
}

uint64_t BundleClassification.BlockingReason.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65370, &qword_1D8B287B8);
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65378, &qword_1D8B287C0);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v55 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65380, &qword_1D8B287C8);
  v65 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v74 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65388, &qword_1D8B287D0);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65390, &qword_1D8B287D8);
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v55 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65398, &qword_1D8B287E0);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653A0, &qword_1D8B287E8);
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653A8, &qword_1D8B287F0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - v20;
  v22 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D8912C0C();
  v23 = v77;
  sub_1D8B16DB0();
  if (!v23)
  {
    v24 = v17;
    v55 = v15;
    v56 = v14;
    v25 = v73;
    v26 = v74;
    v27 = v75;
    v77 = v19;
    v28 = sub_1D8B16A20();
    v29 = (2 * *(v28 + 16)) | 1;
    v78 = v28;
    v79 = v28 + 32;
    v80 = 0;
    v81 = v29;
    v30 = sub_1D87E3840();
    v31 = v21;
    if (v30 != 7 && v80 == v81 >> 1)
    {
      if (v30 > 2u)
      {
        v70 = v21;
        if (v30 > 4u)
        {
          v44 = v72;
          v45 = v77;
          if (v30 == 5)
          {
            v82 = 5;
            sub_1D8912CB4();
            v46 = v71;
            sub_1D8B16950();
            v47 = v67;
            v37 = sub_1D8B169C0();
            v35 = v53;
            (*(v66 + 8))(v46, v47);
            (*(v45 + 8))(v70, v18);
            swift_unknownObjectRelease();
            v36 = 0;
          }

          else
          {
            v82 = 6;
            sub_1D8912C60();
            v50 = v27;
            sub_1D8B16950();
            v51 = v68;
            v37 = sub_1D8B169C0();
            v52 = v50;
            v35 = v54;
            (*(v69 + 8))(v52, v51);
            (*(v45 + 8))(v70, v18);
            swift_unknownObjectRelease();
            v36 = 1;
          }

          v41 = v76;
        }

        else
        {
          v32 = v76;
          v33 = v77;
          if (v30 == 3)
          {
            v82 = 3;
            sub_1D8912D5C();
            v34 = v70;
            sub_1D8B16950();
            (*(v63 + 8))(v25, v64);
            (*(v33 + 8))(v34, v18);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 2;
            v37 = 3;
          }

          else
          {
            v82 = 4;
            sub_1D8912D08();
            v49 = v70;
            sub_1D8B16950();
            (*(v65 + 8))(v26, v59);
            (*(v33 + 8))(v49, v18);
            swift_unknownObjectRelease();
            v35 = 0;
            v36 = 2;
            v37 = 4;
          }

          v41 = v32;
          v44 = v72;
        }

        goto LABEL_24;
      }

      if (v30)
      {
        if (v30 == 1)
        {
          v82 = 1;
          sub_1D8912E04();
          v43 = v56;
          sub_1D8B16950();
          (*(v58 + 8))(v43, v60);
          (*(v77 + 8))(v31, v18);
          swift_unknownObjectRelease();
          v35 = 0;
          v36 = 2;
          v37 = 1;
LABEL_19:
          v41 = v76;
          v44 = v72;
LABEL_24:
          *v44 = v37;
          *(v44 + 8) = v35;
          *(v44 + 16) = v36;
          return __swift_destroy_boxed_opaque_existential_1(v41);
        }

        v82 = 2;
        sub_1D8912DB0();
        v48 = v70;
        sub_1D8B16950();
        (*(v61 + 8))(v48, v62);
        (*(v77 + 8))(v31, v18);
        swift_unknownObjectRelease();
        v35 = 0;
        v37 = 2;
      }

      else
      {
        v82 = 0;
        sub_1D8912E58();
        sub_1D8B16950();
        (*(v57 + 8))(v24, v55);
        (*(v77 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v37 = 0;
        v35 = 0;
      }

      v36 = 2;
      goto LABEL_19;
    }

    v38 = sub_1D8B16770();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v40 = &type metadata for BundleClassification.BlockingReason;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v77 + 8))(v31, v18);
    swift_unknownObjectRelease();
  }

  v41 = v76;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1D890BFD0(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (!*(v1 + 16))
  {
    v4 = 5;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v4 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v4);

    return sub_1D8B15A60();
  }

  if (v3 <= 1)
  {
    v6 = (v3 | v2) != 0;
  }

  else if (v3 ^ 2 | v2)
  {
    if (v3 ^ 3 | v2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 2;
  }

  return MEMORY[0x1DA720210](v6);
}