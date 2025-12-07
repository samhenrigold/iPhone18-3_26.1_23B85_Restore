uint64_t BundleManager.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1D8B150F0();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D8B15340();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA658B0, &qword_1D8B2AC80);
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *v14 = v45;
  *(v14 + 2) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  v14[12] = (byte_1EE0ED6C0 & 1) == 0;
  v15 = type metadata accessor for InternalSettings();
  v16 = sub_1D8B15940();
  LODWORD(v15) = [v15 BOOLForKey:v16 defaultValue:0];

  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v14[13] = v17;
  v18 = v14;
  v19 = v12[8];
  (*(v6 + 104))(&v18[v19], *MEMORY[0x1E69C9A80], v5);
  v43 = v6;
  v20 = v12[9];
  *&v18[v20] = MEMORY[0x1E69E7CD0];
  v46 = v5;
  v21 = v12[10];
  (*(v52 + 104))(&v18[v21], *MEMORY[0x1E69DFC20], v53);
  v22 = v12[11];
  v50 = a1;
  v51 = v18;
  v18[v22] = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89411D4();
  v23 = v49;
  sub_1D8B16DB0();
  if (v23)
  {
    v28 = v51;
    __swift_destroy_boxed_opaque_existential_1(v50);
    v36 = v28;
  }

  else
  {
    v49 = v19;
    v39 = v21;
    v40 = v20;
    v38 = v22;
    v24 = v46;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65868, &qword_1D8B2AC70);
    v54 = 0;
    sub_1D8941438();
    v26 = v47;
    sub_1D8B16A10();
    v27 = v11;

    v30 = v51;
    *v51 = v55;
    LOBYTE(v55) = 1;
    sub_1D8B169F0();
    *(v30 + 2) = v31;
    LOBYTE(v55) = 2;
    *(v30 + 12) = sub_1D8B169D0() & 1;
    v54 = 3;
    sub_1D89414EC();
    sub_1D8B16A10();
    *(v30 + 13) = v55;
    LOBYTE(v55) = 4;
    sub_1D893FD6C(&qword_1ECA658C8, MEMORY[0x1E69C9A90], MEMORY[0x1E69C9AA8]);
    v32 = v44;
    sub_1D8B16A10();
    (*(v43 + 40))(v30 + v49, v32, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65888, &qword_1D8B2AC78);
    v54 = 5;
    sub_1D8941540();
    sub_1D8B16A10();
    *(v30 + v40) = v55;
    LOBYTE(v55) = 6;
    sub_1D893FD6C(&qword_1ECA658E0, MEMORY[0x1E69DFC28], MEMORY[0x1E69DFC40]);
    v33 = v42;
    sub_1D8B16A10();
    v34 = v50;
    (*(v52 + 40))(v30 + v39, v33, v25);
    v54 = 7;
    sub_1D89415F4();
    sub_1D8B16A10();
    (*(v48 + 8))(v27, v26);
    v35 = v51;
    v51[v38] = v55;
    sub_1D8917FF0(v35, v41, type metadata accessor for BundleManager.Configuration);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v36 = v35;
  }

  return sub_1D89388D8(v36, type metadata accessor for BundleManager.Configuration);
}

uint64_t sub_1D8937F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BE8, &qword_1D8B2BFD0);
  v3[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BF0, &qword_1D8B2BFD8);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for BundleManager.BundleClassificationRequest(0);
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v3[18] = *(v6 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8938140, 0, 0);
}

uint64_t sub_1D8938140()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    v30 = **(v0 + 80);
    v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v29;
    v28 = *(v3 + 72);
    v5 = sub_1D8B15EA0();
    v6 = *(v5 - 8);
    v27 = *(v6 + 56);
    v25 = v5;
    v26 = (v6 + 48);
    v24 = (v6 + 8);
    do
    {
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);
      v11 = *(v0 + 160);
      v27(v9, 1, 1, v5);
      sub_1D8917FF0(v4, v11, type metadata accessor for BundleManager.BundleClassificationRequest);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      sub_1D8918058(v11, v12 + v29, type metadata accessor for BundleManager.BundleClassificationRequest);
      sub_1D87A0E38(v9, v10, &unk_1ECA675E0, &qword_1D8B23B60);
      v14 = (*v26)(v10, 1, v5);
      v15 = *(v0 + 168);
      if (v14 == 1)
      {
        sub_1D87A14E4(*(v0 + 168), &unk_1ECA675E0, &qword_1D8B23B60);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D8B15E90();
        (*v24)(v15, v5);
        if (*v13)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_1D8B15E00();
          v17 = v18;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_10:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1D8B2BFE8;
      *(v19 + 24) = v12;

      if (v17 | v16)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v17;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v30;
      swift_task_create();

      sub_1D87A14E4(v8, &unk_1ECA675E0, &qword_1D8B23B60);
      v4 += v28;
      --v2;
      v5 = v25;
    }

    while (v2);
  }

  sub_1D8B15E30();
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *v20 = v0;
  v20[1] = sub_1D89384E4;
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);

  return MEMORY[0x1EEE6D8A8](v21, 0, 0, v22);
}

uint64_t sub_1D89384E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89385E0, 0, 0);
}

uint64_t sub_1D89385E0()
{
  v1 = v0[12];
  v2 = (*(v0[17] + 48))(v1, 1, v0[16]);
  v3 = v0[23];
  if (v2 == 1)
  {
    v4 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);
    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_1D8918058(v1, v0[19], type metadata accessor for BundleManager.BundleClassificationRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[23];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1D87C925C(0, v8[2] + 1, 1, v0[23]);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D87C925C((v9 > 1), v10 + 1, 1, v8);
    }

    v11 = v0[19];
    v12 = v0[17];
    v8[2] = v10 + 1;
    sub_1D8918058(v11, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10, type metadata accessor for BundleManager.BundleClassificationRequest);
    v0[23] = v8;
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_1D89384E4;
    v14 = v0[12];
    v15 = v0[13];

    return MEMORY[0x1EEE6D8A8](v14, 0, 0, v15);
  }
}

uint64_t sub_1D8938820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BundleClassifier(0);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1D8864FBC;

  return sub_1D89351DC(a1, a4);
}

uint64_t sub_1D89388D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8938938(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v50 = a4;
  v7 = type metadata accessor for RefinementState(0);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for BundleClassification.ClassificationType(0);
  v47 = *(v40 - 8);
  v9 = MEMORY[0x1EEE9AC00](v40);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C00, &qword_1D8B2C028);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v13;
  v43 = *(a1 + 16);
  if (!v43)
  {
LABEL_19:

    return;
  }

  v14 = 0;
  v41 = a2;
  v42 = a1;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1D8B16C30();
      __break(1u);
      goto LABEL_27;
    }

    v15 = *(v47 + 72);
    sub_1D8917FF0(a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v15 * v14, v12, type metadata accessor for BundleClassification.ClassificationType);
    v16 = *(a2 + 16);
    if (v14 == v16)
    {

      sub_1D89388D8(v12, type metadata accessor for BundleClassification.ClassificationType);
      return;
    }

    if (v14 >= v16)
    {
      goto LABEL_23;
    }

    v48 = v15;
    v17 = *(v46 + 72);
    v18 = a2 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + v17 * v14;
    v19 = v44;
    v20 = *(v45 + 48);
    v21 = v12;
    sub_1D8918058(v12, v44, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v18, v19 + v20, type metadata accessor for RefinementState);
    v22 = v51;
    sub_1D8918058(v19, v51, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v19 + v20, v49, type metadata accessor for RefinementState);
    v23 = *v50;
    v25 = sub_1D87EF6AC(v22);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    v12 = v21;
    if (a3)
    {
      if (v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1D896A53C();
      if (v29)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    v32 = v51;
    v33 = *v50;
    *(*v50 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    sub_1D8918058(v32, v33[6] + v25 * v48, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v49, v33[7] + v25 * v17, type metadata accessor for RefinementState);
    v34 = v33[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_25;
    }

    ++v14;
    v33[2] = v36;
    a3 = 1;
    a1 = v42;
    a2 = v41;
    if (v43 == v14)
    {
      goto LABEL_19;
    }
  }

  sub_1D8973960(v28, a3 & 1);
  v30 = sub_1D87EF6AC(v51);
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_26;
  }

  v25 = v30;
  v12 = v21;
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v37 = swift_allocError();
  swift_willThrow();

  v54 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D89388D8(v49, type metadata accessor for RefinementState);
    sub_1D89388D8(v51, type metadata accessor for BundleClassification.ClassificationType);

    return;
  }

LABEL_27:
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B421B0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](39, 0xE100000000000000);
  sub_1D8B168C0();
  __break(1u);
}

void sub_1D8938EE8(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for CVBundle(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63430, &qword_1D8B1EA18);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = v51 - v14;
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_22;
  }

  v51[1] = v3;
  v52 = v8;
  v51[0] = v7;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v54 = *(v13 + 72);
  sub_1D87A0E38(a1 + v17, v51 - v14, &qword_1ECA63430, &qword_1D8B1EA18);
  sub_1D8918058(v15, v10, type metadata accessor for CVBundle);
  v53 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1D87F0508(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1D8973DB4(v25, a2 & 1);
    v20 = sub_1D87F0508(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1D8B16C30();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_1D896A828();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v58 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1D89388D8(v10, type metadata accessor for CVBundle);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v31[6];
  v52 = *(v52 + 72);
  v33 = v20;
  sub_1D8918058(v10, v32 + v52 * v20, type metadata accessor for CVBundle);
  *(v31[7] + 8 * v33) = v18;
  v34 = v31[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v31[2] = v35;
    if (v55 == 1)
    {
LABEL_22:

      return;
    }

    v36 = a1 + v54 + v17;
    v37 = 1;
    while (v37 < *(a1 + 16))
    {
      sub_1D87A0E38(v36, v15, &qword_1ECA63430, &qword_1D8B1EA18);
      sub_1D8918058(v15, v10, type metadata accessor for CVBundle);
      v38 = *&v15[v53];
      v39 = *a3;
      v40 = sub_1D87F0508(v10);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v24 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v24)
      {
        goto LABEL_23;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_1D8973DB4(v44, 1);
        v40 = sub_1D87F0508(v10);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v45)
      {
        goto LABEL_9;
      }

      v47 = *a3;
      *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = v40;
      sub_1D8918058(v10, v47[6] + v52 * v40, type metadata accessor for CVBundle);
      *(v47[7] + 8 * v48) = v38;
      v49 = v47[2];
      v24 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v37;
      v47[2] = v50;
      v36 += v54;
      if (v55 == v37)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD00000000000001BLL, 0x80000001D8B421B0);
  sub_1D8B168A0();
  MEMORY[0x1DA71EFA0](39, 0xE100000000000000);
  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D89394F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D8B16610();
  }

  return sub_1D8B16750();
}

void sub_1D8939554(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BundleClassification(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  sub_1D87A0E38(v2, &v21 - v9, &qword_1ECA641B8, &unk_1D8B23AC0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D8B16D40();
    return;
  }

  sub_1D8918058(v10, v7, type metadata accessor for BundleClassification);
  sub_1D8B16D40();
  BundleClassification.ClassificationType.hash(into:)(a1);
  v11 = &v7[*(v4 + 20)];
  if (*v11 != 2)
  {
    v13 = *(v11 + 1);
    v12 = *(v11 + 2);
    v14 = *(v11 + 4);
    v15 = v11[24];
    sub_1D8B16D40();
    sub_1D8B16D40();
    v16 = v15 >> 6;
    if (v15 >> 6 > 1)
    {
      if (v16 == 2)
      {
        v17 = 3;
        goto LABEL_14;
      }
    }

    else
    {
      if (v16)
      {
        v17 = 2;
        goto LABEL_14;
      }

      MEMORY[0x1DA720210](0);
      if (!v15)
      {
        v17 = 5;
        goto LABEL_14;
      }

      if (v15 == 1)
      {
        v17 = 6;
LABEL_14:
        MEMORY[0x1DA720210](v17);
        sub_1D8B15A60();
LABEL_23:
        if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v19 = v14;
        }

        else
        {
          v19 = 0;
        }

        MEMORY[0x1DA720250](v19);
        goto LABEL_27;
      }

      if (v13 > 1)
      {
        if (v13 ^ 2 | v12)
        {
          if (v13 ^ 3 | v12)
          {
            v18 = 4;
          }

          else
          {
            v18 = 3;
          }
        }

        else
        {
          v18 = 2;
        }

        goto LABEL_22;
      }

      if (!(v13 | v12))
      {
        v18 = 0;
LABEL_22:
        MEMORY[0x1DA720210](v18);
        goto LABEL_23;
      }
    }

    v18 = 1;
    goto LABEL_22;
  }

  sub_1D8B16D40();
LABEL_27:
  v20 = *&v7[*(v4 + 24)];
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA720250](*&v20);
  sub_1D89388D8(v7, type metadata accessor for BundleClassification);
}

void sub_1D893983C(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v68 - v6;
  v79 = type metadata accessor for RefinementState(0);
  v75 = *(v79 - 8);
  v7 = MEMORY[0x1EEE9AC00](v79);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v84 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v68 - v12;
  v13 = type metadata accessor for BundleClassification.ClassificationType(0);
  v76 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641C8, &qword_1D8B23AE0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - v21;
  v23 = *(a2 + 64);
  v81 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v70 = (v24 + 63) >> 6;

  v27 = 0;
  v28 = 0;
  v78 = a2;
  v82 = v20;
  v83 = v22;
  while (1)
  {
    v85 = v27;
    if (!v26)
    {
      break;
    }

    v30 = v28;
LABEL_16:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v78;
    v36 = v74;
    sub_1D8917FF0(*(v78 + 48) + *(v76 + 72) * v34, v74, type metadata accessor for BundleClassification.ClassificationType);
    v37 = *(v35 + 56) + *(v75 + 72) * v34;
    v38 = v77;
    sub_1D8917FF0(v37, v77, type metadata accessor for RefinementState);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641D0, &unk_1D8B23AE8);
    v40 = *(v39 + 48);
    v41 = v36;
    v20 = v82;
    sub_1D8918058(v41, v82, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8918058(v38, &v20[v40], type metadata accessor for RefinementState);
    (*(*(v39 - 8) + 56))(v20, 0, 1, v39);
    v22 = v83;
LABEL_17:
    sub_1D881F6FC(v20, v22, &qword_1ECA641C8, &qword_1D8B23AE0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641D0, &unk_1D8B23AE8);
    if ((*(*(v42 - 8) + 48))(v22, 1, v42) == 1)
    {

      MEMORY[0x1DA720210](v85);
      return;
    }

    v43 = *(v42 + 48);
    v44 = v80;
    sub_1D8918058(v22, v80, type metadata accessor for BundleClassification.ClassificationType);
    v45 = v84;
    sub_1D8918058(&v22[v43], v84, type metadata accessor for RefinementState);
    v46 = *(a1 + 48);
    v86[2] = *(a1 + 32);
    v86[3] = v46;
    v87 = *(a1 + 64);
    v47 = *(a1 + 16);
    v86[0] = *a1;
    v86[1] = v47;
    BundleClassification.ClassificationType.hash(into:)(v86);
    sub_1D89388D8(v44, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v45, v9, type metadata accessor for RefinementState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v29 = v69;
        sub_1D881F6FC(v9, v69, &qword_1ECA641B8, &unk_1D8B23AC0);
        MEMORY[0x1DA720210](2);
        sub_1D8939554(v86);
        v20 = v82;
        sub_1D87A14E4(v29, &qword_1ECA641B8, &unk_1D8B23AC0);
        sub_1D89388D8(v84, type metadata accessor for RefinementState);
        v22 = v83;
        goto LABEL_5;
      }

      v49 = *(v9 + 1);
      v50 = *(v9 + 2);
      v51 = v9[24];
      v52 = *(v9 + 4);
      MEMORY[0x1DA720210](0);
      sub_1D8B16D40();
      LODWORD(v73) = v51;
      v53 = v51 >> 6;
      if (v51 >> 6 > 1)
      {
        if (v53 == 2)
        {
          v58 = 3;
          goto LABEL_38;
        }

        MEMORY[0x1DA720210](1);
      }

      else
      {
        if (!v53)
        {
          MEMORY[0x1DA720210](0);
          v22 = v83;
          if (v73)
          {
            if (v73 == 1)
            {
              v54 = 6;
              goto LABEL_50;
            }

            if (v49 <= 1)
            {
              if (v49 | v50)
              {
                MEMORY[0x1DA720210](1);
              }

              else
              {
                MEMORY[0x1DA720210](0);
              }
            }

            else if (v49 ^ 2 | v50)
            {
              if (v49 ^ 3 | v50)
              {
                MEMORY[0x1DA720210](4);
              }

              else
              {
                MEMORY[0x1DA720210](3);
              }
            }

            else
            {
              MEMORY[0x1DA720210](2);
            }
          }

          else
          {
            v54 = 5;
LABEL_50:
            MEMORY[0x1DA720210](v54);
            sub_1D8B15A60();
          }

LABEL_41:
          if (v52 == 0.0)
          {
            v64 = 0.0;
          }

          else
          {
            v64 = v52;
          }

          MEMORY[0x1DA720250](*&v64);
          sub_1D88E1004(v49, v50, v73);
          sub_1D89388D8(v84, type metadata accessor for RefinementState);
          goto LABEL_5;
        }

        v58 = 2;
LABEL_38:
        MEMORY[0x1DA720210](v58);
        sub_1D8B15A60();
      }

      v22 = v83;
      goto LABEL_41;
    }

    if (EnumCaseMultiPayload != 2)
    {
      MEMORY[0x1DA720210](1);
      sub_1D89388D8(v84, type metadata accessor for RefinementState);
      goto LABEL_5;
    }

    v55 = v71;
    sub_1D8918058(v9, v71, type metadata accessor for BundleClassification);
    MEMORY[0x1DA720210](3);
    BundleClassification.ClassificationType.hash(into:)(v86);
    v56 = v55 + *(v72 + 20);
    if (*v56 != 2)
    {
      v60 = *(v56 + 8);
      v59 = *(v56 + 16);
      v73 = *(v56 + 32);
      v61 = *(v56 + 24);
      sub_1D8B16D40();
      sub_1D8B16D40();
      v62 = v61 >> 6;
      if (v61 >> 6 > 1)
      {
        if (v62 == 2)
        {
          v63 = 3;
          goto LABEL_56;
        }

        MEMORY[0x1DA720210](1);
      }

      else
      {
        if (v62)
        {
          v63 = 2;
        }

        else
        {
          MEMORY[0x1DA720210](0);
          if (v61)
          {
            if (v61 == 1)
            {
              v63 = 6;
              goto LABEL_56;
            }

            v22 = v83;
            if (v60 <= 1)
            {
              if (v60 | v59)
              {
                MEMORY[0x1DA720210](1);
              }

              else
              {
                MEMORY[0x1DA720210](0);
              }
            }

            else if (v60 ^ 2 | v59)
            {
              if (v60 ^ 3 | v59)
              {
                MEMORY[0x1DA720210](4);
              }

              else
              {
                MEMORY[0x1DA720210](3);
              }
            }

            else
            {
              MEMORY[0x1DA720210](2);
            }

LABEL_58:
            if ((v73 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v65 = v73;
            }

            else
            {
              v65 = 0;
            }

            MEMORY[0x1DA720250](v65);
            goto LABEL_62;
          }

          v63 = 5;
        }

LABEL_56:
        MEMORY[0x1DA720210](v63);
        sub_1D8B15A60();
      }

      v22 = v83;
      goto LABEL_58;
    }

    sub_1D8B16D40();
LABEL_62:
    v66 = v71;
    v67 = *(v71 + *(v72 + 24));
    if (v67 == 0.0)
    {
      v67 = 0.0;
    }

    MEMORY[0x1DA720250](*&v67);
    sub_1D89388D8(v84, type metadata accessor for RefinementState);
    sub_1D89388D8(v66, type metadata accessor for BundleClassification);
LABEL_5:
    v27 = sub_1D8B16D80() ^ v85;
  }

  if (v70 <= v28 + 1)
  {
    v31 = v28 + 1;
  }

  else
  {
    v31 = v70;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v70)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641D0, &unk_1D8B23AE8);
      (*(*(v57 - 8) + 56))(v20, 1, 1, v57);
      v26 = 0;
      v28 = v32;
      goto LABEL_17;
    }

    v26 = *(v81 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1D893A2B0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v51 = sub_1D8B13240();
  v3 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F0, &qword_1D8B23B18);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - v9;
  v11 = *(a2 + 64);
  v42[0] = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v42[1] = v3 + 16;
  v50 = (v3 + 32);
  v45 = v3;
  v46 = a2;
  v47 = (v3 + 8);

  v16 = 0;
  v17 = 0;
  v18 = &qword_1D8B23B20;
  v43 = v10;
  v44 = v8;
  while (1)
  {
    v19 = v18;
    v52 = v16;
    if (!v14)
    {
      break;
    }

    v20 = v17;
LABEL_13:
    v23 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v24 = v23 | (v20 << 6);
    v25 = v45;
    v26 = v46;
    v27 = v49;
    v28 = v51;
    (*(v45 + 16))(v49, *(v46 + 48) + *(v45 + 72) * v24, v51);
    v29 = *(*(v26 + 56) + 8 * v24);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8, v19);
    v31 = *(v30 + 48);
    v32 = *(v25 + 32);
    v8 = v44;
    v32(v44, v27, v28);
    *&v8[v31] = v29;
    (*(*(v30 - 8) + 56))(v8, 0, 1, v30);

    v22 = v20;
    v18 = v19;
    v10 = v43;
LABEL_14:
    sub_1D881F6FC(v8, v10, &qword_1ECA641F0, &qword_1D8B23B18);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8, v18);
    if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
    {

      MEMORY[0x1DA720210](v52);
      return;
    }

    v34 = *(v33 + 48);
    v35 = v51;
    v36 = v22;
    v37 = v49;
    (*v50)(v49, v10, v51);
    v38 = *&v10[v34];
    v39 = *(v48 + 48);
    v53[2] = *(v48 + 32);
    v53[3] = v39;
    v54 = *(v48 + 64);
    v40 = *(v48 + 16);
    v53[0] = *v48;
    v53[1] = v40;
    sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D8B157A0();
    (*v47)(v37, v35);
    sub_1D8819F6C(v53, v38);

    v16 = sub_1D8B16D80() ^ v52;
    v17 = v36;
  }

  if (v15 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = v15;
  }

  v22 = v21 - 1;
  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v15)
    {
      v18 = v19;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641F8, v19);
      (*(*(v41 - 8) + 56))(v8, 1, 1, v41);
      v14 = 0;
      goto LABEL_14;
    }

    v14 = *(v42[0] + 8 * v20);
    ++v17;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1D893A734(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1DA720210](v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1D8B15A60();

        sub_1D8B15A60();

        v7 ^= sub_1D8B16D80();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_1D893A8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v46 - v6;
  v7 = type metadata accessor for CVTrackSnapshot(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v52 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v54 = 0;
  v10 = 0;
  v46[0] = *(v11 + 80);
  v55 = MEMORY[0x1E69E7CC0];
  v48 = (v46[0] + 32) & ~v46[0];
  v49 = MEMORY[0x1E69E7CC0] + v48;
  v12 = (v11 + 56);
  v46[1] = v11 + 48;
  v47 = v11;
  v53 = v8;
LABEL_4:
  v15 = *(a1 + 16);
  if (v10 == v15)
  {
LABEL_38:
    v20 = v50;
    (*v12)(v50, 1, 1, v7);
LABEL_39:
    v42 = v54;
    v41 = v55;

    sub_1D87A14E4(v20, &qword_1ECA63E20, &qword_1D8B22E50);
    v43 = v41[3];
    if (v43 < 2)
    {
      return;
    }

    v44 = v43 >> 1;
    v40 = __OFSUB__(v44, v42);
    v45 = v44 - v42;
    if (!v40)
    {
      v41[2] = v45;
      return;
    }
  }

  else
  {
    if (v10 < v15)
    {
      while (1)
      {
        v16 = *(a1 + 32 + 8 * v10);

        if (v16)
        {
          break;
        }

LABEL_9:
        ++v10;
        v17 = *(a1 + 16);
        if (v10 == v17)
        {
          goto LABEL_38;
        }

        if (v10 >= v17)
        {
          goto LABEL_43;
        }
      }

      v13 = *(v16 + 16);
      if (!v13)
      {
        (*v12)(v5, 1, 1, v7);
        sub_1D87A14E4(v5, &qword_1ECA63E20, &qword_1D8B22E50);
        goto LABEL_9;
      }

      v14 = 0;
      ++v10;
      while (1)
      {
        if (v14 >= v13)
        {
          goto LABEL_44;
        }

        v18 = v47;
        v19 = *(v47 + 72);
        v56 = v14;
        v51 = v19;
        sub_1D8917FF0(v16 + v48 + v19 * v14, v5, type metadata accessor for CVTrackSnapshot);
        (*(v18 + 56))(v5, 0, 1, v53);
        v20 = v50;
        sub_1D881F6FC(v5, v50, &qword_1ECA63E20, &qword_1D8B22E50);
        v21 = *(v18 + 48);
        v7 = v53;
        if (v21(v20, 1, v53) == 1)
        {
          goto LABEL_39;
        }

        sub_1D8918058(v20, v52, type metadata accessor for CVTrackSnapshot);
        v22 = v55;
        if (!v54)
        {
          break;
        }

        v23 = v49;
        v24 = v54 - 1;
        if (__OFSUB__(v54, 1))
        {
          goto LABEL_45;
        }

LABEL_37:
        v54 = v24;
        ++v56;
        sub_1D8918058(v52, v23, type metadata accessor for CVTrackSnapshot);
        v49 = v23 + v51;
        v55 = v22;
        v13 = *(v16 + 16);
        v14 = v56;
        if (v56 == v13)
        {
          (*v12)(v5, 1, 1, v7);
          sub_1D87A14E4(v5, &qword_1ECA63E20, &qword_1D8B22E50);
          goto LABEL_4;
        }
      }

      v25 = v55[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_47;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0, &qword_1D8B23010);
      v28 = v48;
      v22 = swift_allocObject();
      v29 = _swift_stdlib_malloc_size(v22);
      v30 = v51;
      if (!v51)
      {
        goto LABEL_48;
      }

      v31 = v29 - v28;
      if (v29 - v28 == 0x8000000000000000 && v51 == -1)
      {
        goto LABEL_49;
      }

      v33 = v28;
      v34 = v31 / v51;
      v22[2] = v27;
      v22[3] = 2 * (v31 / v30);
      v35 = v22 + v33;
      v36 = v55;
      v37 = v55[3] >> 1;
      v38 = v37 * v30;
      if (!v55[2])
      {
LABEL_36:
        v23 = &v35[v38];
        v39 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v37;

        v40 = __OFSUB__(v39, 1);
        v24 = v39 - 1;
        if (v40)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (v22 < v55 || v35 >= v55 + v33 + v38)
      {
        v54 = v55[3] >> 1;
        v49 = v38;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v22 == v55)
        {
LABEL_35:
          v36[2] = 0;
          goto LABEL_36;
        }

        v54 = v55[3] >> 1;
        v49 = v38;
        swift_arrayInitWithTakeBackToFront();
      }

      v38 = v49;
      v37 = v54;
      v36 = v55;
      goto LABEL_35;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t _s22VisualIntelligenceCore8CVBundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D893B960(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CVBundle(0);
  if ((sub_1D88E4444(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_1D88E4444(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1D8854A60(v6, v7);
}

uint64_t sub_1D893AE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleClassification(0);
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v67 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v67 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A90, &qword_1D8B2BDF8);
  v16 = MEMORY[0x1EEE9AC00](v75);
  v70 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v67 - v18;
  v19 = type metadata accessor for RefinementStateInternal(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v67 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v67 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v67 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A98, &unk_1D8B2BE00);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v67 - v33;
  v35 = &v67 + *(v32 + 56) - v33;
  sub_1D8917FF0(a1, &v67 - v33, type metadata accessor for RefinementStateInternal);
  sub_1D8917FF0(a2, v35, type metadata accessor for RefinementStateInternal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_22;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    sub_1D8917FF0(v34, v22, type metadata accessor for RefinementStateInternal);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1D89388D8(v22, type metadata accessor for BundleClassification);
      goto LABEL_26;
    }

    v44 = v71;
    sub_1D8918058(v35, v71, type metadata accessor for BundleClassification);
    v45 = static BundleClassification.== infix(_:_:)();
    sub_1D89388D8(v44, type metadata accessor for BundleClassification);
    sub_1D89388D8(v22, type metadata accessor for BundleClassification);
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D8917FF0(v34, v30, type metadata accessor for RefinementStateInternal);
    v42 = *(v30 + 1);
    v41 = *(v30 + 2);
    v43 = v30[24];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D88E1004(v42, v41, v43);
      goto LABEL_26;
    }

    v54 = *(v30 + 4);
    v55 = *v35;
    v56 = *(v35 + 1);
    v57 = *(v35 + 2);
    v58 = *(v35 + 4);
    v59 = v35[24];
    v83[0] = *v30;
    v84 = v42;
    v85 = v41;
    v86 = v43;
    v87 = v54;
    v78[0] = v55;
    v79 = v56;
    v80 = v57;
    v81 = v59;
    v82 = v58;
    v45 = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(v83, v78);
    sub_1D88E1004(v56, v57, v59);
    sub_1D88E1004(v42, v41, v43);
LABEL_30:
    sub_1D89388D8(v34, type metadata accessor for RefinementStateInternal);
    return v45 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8917FF0(v34, v25, type metadata accessor for RefinementStateInternal);
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A88, &qword_1D8B2BDF0) + 48);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v47 = v73;
      sub_1D881F6FC(&v25[v46], v73, &qword_1ECA641B8, &unk_1D8B23AC0);
      v48 = v74;
      sub_1D881F6FC(&v35[v46], v74, &qword_1ECA641B8, &unk_1D8B23AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
      v49 = v77;
      if ((sub_1D8B15F50() & 1) == 0)
      {

        sub_1D87A14E4(v48, &qword_1ECA641B8, &unk_1D8B23AC0);
        sub_1D87A14E4(v47, &qword_1ECA641B8, &unk_1D8B23AC0);
        goto LABEL_41;
      }

      v50 = *(v75 + 48);
      v51 = v70;
      sub_1D87A0E38(v47, v70, &qword_1ECA641B8, &unk_1D8B23AC0);
      sub_1D87A0E38(v48, v51 + v50, &qword_1ECA641B8, &unk_1D8B23AC0);
      v52 = *(v76 + 48);
      if (v52(v51, 1, v49) == 1)
      {

        sub_1D87A14E4(v48, &qword_1ECA641B8, &unk_1D8B23AC0);
        sub_1D87A14E4(v47, &qword_1ECA641B8, &unk_1D8B23AC0);
        if (v52(v51 + v50, 1, v49) == 1)
        {
          sub_1D87A14E4(v51, &qword_1ECA641B8, &unk_1D8B23AC0);
          goto LABEL_22;
        }
      }

      else
      {
        v61 = v67;
        sub_1D87A0E38(v51, v67, &qword_1ECA641B8, &unk_1D8B23AC0);
        if (v52(v51 + v50, 1, v49) != 1)
        {
          v65 = v68;
          sub_1D8918058(v51 + v50, v68, type metadata accessor for BundleClassification);
          v66 = v61;
          v63 = static BundleClassification.== infix(_:_:)();

          sub_1D89388D8(v65, type metadata accessor for BundleClassification);
          sub_1D87A14E4(v74, &qword_1ECA641B8, &unk_1D8B23AC0);
          sub_1D87A14E4(v47, &qword_1ECA641B8, &unk_1D8B23AC0);
          sub_1D89388D8(v66, type metadata accessor for BundleClassification);
          v64 = v51;
          goto LABEL_40;
        }

        sub_1D87A14E4(v74, &qword_1ECA641B8, &unk_1D8B23AC0);
        sub_1D87A14E4(v47, &qword_1ECA641B8, &unk_1D8B23AC0);
        sub_1D89388D8(v61, type metadata accessor for BundleClassification);
      }

      sub_1D87A14E4(v51, &qword_1ECA65A90, &qword_1D8B2BDF8);
      goto LABEL_41;
    }

    sub_1D87A14E4(&v25[v46], &qword_1ECA641B8, &unk_1D8B23AC0);

LABEL_26:
    sub_1D87A14E4(v34, &qword_1ECA65A98, &unk_1D8B2BE00);
LABEL_27:
    v45 = 0;
    return v45 & 1;
  }

  sub_1D8917FF0(v34, v28, type metadata accessor for RefinementStateInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D87A14E4(v28, &qword_1ECA641B8, &unk_1D8B23AC0);
    goto LABEL_26;
  }

  v37 = *(v75 + 48);
  v38 = v72;
  sub_1D881F6FC(v28, v72, &qword_1ECA641B8, &unk_1D8B23AC0);
  sub_1D881F6FC(v35, v38 + v37, &qword_1ECA641B8, &unk_1D8B23AC0);
  v39 = v77;
  v40 = *(v76 + 48);
  if (v40(v38, 1, v77) != 1)
  {
    v60 = v69;
    sub_1D87A0E38(v38, v69, &qword_1ECA641B8, &unk_1D8B23AC0);
    if (v40(v38 + v37, 1, v39) == 1)
    {
      sub_1D89388D8(v60, type metadata accessor for BundleClassification);
      goto LABEL_33;
    }

    v62 = v68;
    sub_1D8918058(v38 + v37, v68, type metadata accessor for BundleClassification);
    v63 = static BundleClassification.== infix(_:_:)();
    sub_1D89388D8(v62, type metadata accessor for BundleClassification);
    sub_1D89388D8(v60, type metadata accessor for BundleClassification);
    v64 = v38;
LABEL_40:
    sub_1D87A14E4(v64, &qword_1ECA641B8, &unk_1D8B23AC0);
    if (v63)
    {
      goto LABEL_22;
    }

    goto LABEL_41;
  }

  if (v40(v38 + v37, 1, v39) != 1)
  {
LABEL_33:
    sub_1D87A14E4(v38, &qword_1ECA65A90, &qword_1D8B2BDF8);
LABEL_41:
    sub_1D89388D8(v34, type metadata accessor for RefinementStateInternal);
    goto LABEL_27;
  }

  sub_1D87A14E4(v38, &qword_1ECA641B8, &unk_1D8B23AC0);
LABEL_22:
  sub_1D89388D8(v34, type metadata accessor for RefinementStateInternal);
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_1D893B960(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_1D8B13240();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63DA8, &qword_1D8B22DB0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  sub_1D8917FF0(a1, &v24 - v17, type metadata accessor for CVBundle.BundleType);
  sub_1D8917FF0(v25, &v18[v19], type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8917FF0(v18, v12, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v24;
      (*(v3 + 32))(v5, &v18[v19], v24);
      v21 = sub_1D8B13200();
      v22 = *(v3 + 8);
      v22(v5, v20);
      v22(v12, v20);
LABEL_9:
      sub_1D89388D8(v18, type metadata accessor for CVBundle.BundleType);
      return v21 & 1;
    }

    (*(v3 + 8))(v12, v24);
  }

  else
  {
    sub_1D8917FF0(v18, v14, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8918058(&v18[v19], v8, type metadata accessor for CVTrackSnapshot);
      v21 = _s22VisualIntelligenceCore15CVTrackSnapshotV2eeoiySbAC_ACtFZ_0(v14, v8);
      sub_1D89388D8(v8, type metadata accessor for CVTrackSnapshot);
      sub_1D89388D8(v14, type metadata accessor for CVTrackSnapshot);
      goto LABEL_9;
    }

    sub_1D89388D8(v14, type metadata accessor for CVTrackSnapshot);
  }

  sub_1D87A14E4(v18, &qword_1ECA63DA8, &qword_1D8B22DB0);
  v21 = 0;
  return v21 & 1;
}

uint64_t _s22VisualIntelligenceCore15RefinementStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundleClassification(0);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A90, &qword_1D8B2BDF8);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v11;
  v12 = type metadata accessor for RefinementState(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BD0, &unk_1D8B2BF60);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v47 - v23;
  v25 = &v47 + *(v22 + 56) - v23;
  sub_1D8917FF0(a1, &v47 - v23, type metadata accessor for RefinementState);
  sub_1D8917FF0(a2, v25, type metadata accessor for RefinementState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D8917FF0(v24, v20, type metadata accessor for RefinementState);
      v28 = *(v20 + 1);
      v27 = *(v20 + 2);
      v29 = v20[24];
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1D88E1004(v28, v27, v29);
LABEL_16:
        sub_1D87A14E4(v24, &qword_1ECA65BD0, &unk_1D8B2BF60);
LABEL_17:
        v31 = 0;
        return v31 & 1;
      }

      v36 = *(v20 + 4);
      v37 = *v20;
      v38 = *v25;
      v39 = *(v25 + 1);
      v40 = *(v25 + 2);
      v41 = *(v25 + 4);
      v42 = v25[24];
      v58[0] = v37;
      v59 = v28;
      v60 = v27;
      v61 = v29;
      v62 = v36;
      v53[0] = v38;
      v54 = v39;
      v55 = v40;
      v56 = v42;
      v57 = v41;
      v31 = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(v58, v53);
      sub_1D88E1004(v39, v40, v42);
      sub_1D88E1004(v28, v27, v29);
LABEL_19:
      sub_1D89388D8(v24, type metadata accessor for RefinementState);
      return v31 & 1;
    }

    sub_1D8917FF0(v24, v18, type metadata accessor for RefinementState);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D87A14E4(v18, &qword_1ECA641B8, &unk_1D8B23AC0);
      goto LABEL_16;
    }

    v32 = *(v10 + 48);
    v33 = v52;
    sub_1D881F6FC(v18, v52, &qword_1ECA641B8, &unk_1D8B23AC0);
    sub_1D881F6FC(v25, v33 + v32, &qword_1ECA641B8, &unk_1D8B23AC0);
    v34 = v51;
    v35 = *(v50 + 48);
    if (v35(v33, 1, v51) == 1)
    {
      if (v35(v33 + v32, 1, v34) == 1)
      {
        sub_1D87A14E4(v33, &qword_1ECA641B8, &unk_1D8B23AC0);
        goto LABEL_13;
      }
    }

    else
    {
      v44 = v48;
      sub_1D87A0E38(v33, v48, &qword_1ECA641B8, &unk_1D8B23AC0);
      if (v35(v33 + v32, 1, v34) != 1)
      {
        v45 = v47;
        sub_1D8918058(v33 + v32, v47, type metadata accessor for BundleClassification);
        v46 = _s22VisualIntelligenceCore20BundleClassificationV2eeoiySbAC_ACtFZ_0(v44, v45);
        sub_1D89388D8(v45, type metadata accessor for BundleClassification);
        sub_1D89388D8(v44, type metadata accessor for BundleClassification);
        sub_1D87A14E4(v33, &qword_1ECA641B8, &unk_1D8B23AC0);
        if (v46)
        {
          goto LABEL_13;
        }

LABEL_24:
        sub_1D89388D8(v24, type metadata accessor for RefinementState);
        goto LABEL_17;
      }

      sub_1D89388D8(v44, type metadata accessor for BundleClassification);
    }

    sub_1D87A14E4(v33, &qword_1ECA65A90, &qword_1D8B2BDF8);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8917FF0(v24, v15, type metadata accessor for RefinementState);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1D89388D8(v15, type metadata accessor for BundleClassification);
      goto LABEL_16;
    }

    v30 = v49;
    sub_1D8918058(v25, v49, type metadata accessor for BundleClassification);
    v31 = _s22VisualIntelligenceCore20BundleClassificationV2eeoiySbAC_ACtFZ_0(v15, v30);
    sub_1D89388D8(v30, type metadata accessor for BundleClassification);
    sub_1D89388D8(v15, type metadata accessor for BundleClassification);
    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_1D89388D8(v24, type metadata accessor for RefinementState);
  v31 = 1;
  return v31 & 1;
}

uint64_t _s22VisualIntelligenceCore13BundleManagerC6OutputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  if ((sub_1D88E4444(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v12[3] = v7;
  v12[4] = *(a1 + 72);
  v12[0] = *(a1 + 8);
  v12[1] = v6;
  v8 = *(a2 + 24);
  v9 = *(a2 + 56);
  v11[2] = *(a2 + 40);
  v11[3] = v9;
  v11[4] = *(a2 + 72);
  v11[0] = *(a2 + 8);
  v11[1] = v8;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v12, v11))
  {
    return 0;
  }

  return sub_1D8855170(v4, v5);
}

uint64_t _s22VisualIntelligenceCore13BundleManagerC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D88E53C0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
  {
    goto LABEL_12;
  }

  v4 = type metadata accessor for BundleManager.Configuration(0);
  sub_1D8B15340();
  sub_1D893FD6C(&qword_1EE0E3A60, MEMORY[0x1E69C9A90], MEMORY[0x1E69C9AA0]);
  sub_1D8B15C40();
  sub_1D8B15C40();
  if (v10 == v8 && v11 == v9)
  {
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if ((v5 & 1) == 0)
    {
LABEL_12:
      v6 = 0;
      return v6 & 1;
    }
  }

  if ((sub_1D8950304(*(a1 + *(v4 + 36)), *(a2 + *(v4 + 36))) & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1D8B150F0();
  sub_1D893FD6C(&qword_1EE0E3A98, MEMORY[0x1E69DFC28], MEMORY[0x1E69DFC38]);
  sub_1D8B15C40();
  sub_1D8B15C40();
  if (v10 != v8)
  {
    goto LABEL_12;
  }

  v6 = sub_1D87DF890(*(a1 + *(v4 + 44)), *(a2 + *(v4 + 44)));
  return v6 & 1;
}

unint64_t sub_1D893C688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C00, &qword_1D8B2C028);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0, &qword_1D8B2ABE8);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C00, &qword_1D8B2C028);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      v16 = v7[7];
      v17 = type metadata accessor for RefinementState(0);
      result = sub_1D8918058(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for RefinementState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D893C8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA0, &qword_1D8B2BF28);
    v3 = sub_1D8B16910();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1D881F7DC();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
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

unint64_t sub_1D893C994(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BC8, &unk_1D8B2BF50);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA63538, &unk_1D8B1EB20);
      v5 = v11;
      result = sub_1D881F7E0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D893CABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0, &qword_1D8B2C100);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v13, &qword_1ECA630F8, &unk_1D8B1E088);
      v5 = v13;
      v6 = v14;
      result = sub_1D87EF838(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D8943B68(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1D893CBEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C88, &qword_1D8B2C0A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C90, &unk_1D8B2C0B0);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C88, &qword_1D8B2C0A8);
      result = sub_1D87EFAE0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for HighResolutionStillBarrier.ActionExecution(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D893CDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BB8, &qword_1D8B2BF40);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, v13, &qword_1ECA65BC0, &qword_1D8B2BF48);
      result = sub_1D87EFF08(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D8943B68(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1D893CF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B60, &qword_1D8B2BEC8);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &unk_1ECA67D90, &unk_1D8B2BED0);
      v5 = v11;
      result = sub_1D87EFE54(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D893D034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA8, &qword_1D8B2BF30);
    v3 = sub_1D8B16910();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D87EFE54(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D893D154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B80, &qword_1D8B2BF08);
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

unint64_t sub_1D893D250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C50, &unk_1D8B2C070);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C58, &qword_1D8B2D4E0);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C50, &unk_1D8B2C070);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D893D434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C40, &qword_1D8B2C060);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C48, &qword_1D8B2C068);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C40, &qword_1D8B2C060);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D893D618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CC0, &qword_1D8B2C0F0);
    v3 = sub_1D8B16910();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D87EFE54(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1D893D710(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C78, &qword_1D8B2C098);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C80, &qword_1D8B2C0A0);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C78, &qword_1D8B2C098);
      result = sub_1D87EFCC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
      sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v16 = v7[7];
      v17 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
      result = sub_1D8918058(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_1D893D928(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB8, &qword_1D8B2D600);
  v3 = sub_1D8B16910();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D87EFF94(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D87EFF94(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D893DA30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CC8, &qword_1D8B2C0F8);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D881F7DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D893DB10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B68, &qword_1D8B2BEE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B70, &unk_1D8B2BEF0);
    v7 = sub_1D8B16910();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v8, v5, &qword_1ECA65B68, &qword_1D8B2BEE8);
      result = sub_1D87F0134(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
      sub_1D8918058(v5, v13 + *(*(v14 - 8) + 72) * v12, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
      result = sub_1D881F6FC(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_1ECA65B78, &unk_1D8B2D550);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D893DD38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD8, &qword_1D8B2C108);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 24)
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
      *(v3[7] + result) = v7;
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

unint64_t sub_1D893DE34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB0, &qword_1D8B2C0D8);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA64740, &unk_1D8B2C0E0);
      v5 = v11;
      result = sub_1D881F7E0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D893DF5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70, &qword_1D8B2C090);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 12)
    {
      v5 = *(i - 8);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1D881F7DC();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 8 * result;
      *v10 = v6;
      *(v10 + 4) = v7;
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

unint64_t sub_1D893E048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B88, &qword_1D8B2BF10);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B90, &qword_1D8B2BF18);
    v7 = sub_1D8B16910();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1D87A0E38(v8, v5, &qword_1ECA65B88, &qword_1D8B2BF10);
      result = sub_1D881F7DC();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v13 = v7[7];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
      result = sub_1D881F6FC(&v5[v19], v13 + *(*(v14 - 8) + 72) * v12, &qword_1ECA65B98, &qword_1D8B2BF20);
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1D893E230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA0, &qword_1D8B2C0C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA8, &qword_1D8B2C0D0);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65CA0, &qword_1D8B2C0C8);
      result = sub_1D87F02B0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
      sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v16 = v7[7];
      v17 = type metadata accessor for TrackManager.TrackedProcessorState(0);
      result = sub_1D8918058(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for TrackManager.TrackedProcessorState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D893E448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64968, &qword_1D8B25E78);
  v3 = sub_1D8B16910();
  v4 = *(a1 + 80);
  *&v24[32] = *(a1 + 64);
  *&v24[48] = v4;
  v5 = *(a1 + 112);
  *&v24[64] = *(a1 + 96);
  *&v24[80] = v5;
  v6 = *(a1 + 48);
  *v24 = *(a1 + 32);
  *&v24[16] = v6;
  v7 = v24[0];
  result = sub_1D881F7DC();
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1D87A0E38(v24, v23, &qword_1ECA65C98, &qword_1D8B2C0C0);
    return v3;
  }

  v10 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v7;
    v11 = v3[7] + 88 * result;
    v12 = *&v24[24];
    *v11 = *&v24[8];
    *(v11 + 16) = v12;
    v13 = *&v24[40];
    v14 = *&v24[56];
    v15 = *&v24[72];
    *(v11 + 80) = *&v24[88];
    *(v11 + 48) = v14;
    *(v11 + 64) = v15;
    *(v11 + 32) = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1D87A0E38(v24, v23, &qword_1ECA65C98, &qword_1D8B2C0C0);
    v19 = v10[3];
    *&v24[32] = v10[2];
    *&v24[48] = v19;
    v20 = v10[5];
    *&v24[64] = v10[4];
    *&v24[80] = v20;
    v21 = v10[1];
    *v24 = *v10;
    *&v24[16] = v21;
    v7 = v24[0];
    result = sub_1D881F7DC();
    v10 += 6;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D893E5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C20, &unk_1D8B2C040);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA65C28, &unk_1D8B2D5E0);
      v5 = v11;
      result = sub_1D881F7E0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D893E70C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C30, &qword_1D8B2C050);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C38, &qword_1D8B2C058);
    v7 = sub_1D8B16910();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA65C30, &qword_1D8B2C050);
      result = sub_1D87EF6AC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BundleClassification.ClassificationType(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BundleClassification.ClassificationType);
      v16 = v7[7] + 48 * v13;
      v17 = *(v8 + 1);
      v18 = v8[16];
      v19 = *(v8 + 5);
      v20 = *(v8 + 24);
      *v16 = *v8;
      *(v16 + 8) = v17;
      *(v16 + 16) = v18;
      *(v16 + 24) = v20;
      *(v16 + 40) = v19;
      v21 = v7[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v7[2] = v23;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D893E930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D28, &unk_1D8B2C450);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v11, &qword_1ECA65D30, qword_1D8B2FA80);
      v5 = v11;
      result = sub_1D881F7E0();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8943B68(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D893EA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D881F7DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D893EB38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10, &unk_1D8B2D5C0);
    v3 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 6)
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
      *(v3[7] + 4 * result) = v7;
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

unint64_t sub_1D893EC50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63430, &qword_1D8B1EA18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8, &qword_1D8B2AC08);
    v7 = sub_1D8B16910();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D87A0E38(v9, v5, &qword_1ECA63430, &qword_1D8B1EA18);
      result = sub_1D87F0508(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CVBundle(0);
      result = sub_1D8918058(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for CVBundle);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1D893EE34(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B40, &unk_1D8B2BEA8);
  v3 = sub_1D8B16910();
  v4 = a1[4];
  v5 = sub_1D881C1D8();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = sub_1D881C1D8();
    --v10;
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D893EF20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B30, &qword_1D8B2BE98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B38, &qword_1D8B2BEA0);
    v7 = sub_1D8B16910();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1D87A0E38(v8, v5, &qword_1ECA65B30, &qword_1D8B2BE98);
      result = sub_1D881C1D8();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1D8B13240();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_1D893F0E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BB0, &qword_1D8B2BF38);
    v3 = sub_1D8B16910();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D881F7E0();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1D893F1D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B00, &unk_1D8B2BE60);
    v3 = sub_1D8B16910();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D87A0E38(v4, &v13, &qword_1ECA65B08, &qword_1D8B334E0);
      v5 = v13;
      v6 = v14;
      result = sub_1D87EF838(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D8788F40(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1D893F30C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF8, &qword_1D8B2BE58);
    v3 = sub_1D8B16910();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_1D881F7DC();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D893F3EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF0, &qword_1D8B2BE50);
    v3 = sub_1D8B16910();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D87EF838(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D893F500(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AE8, &qword_1D8B2BE48);
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

unint64_t sub_1D893F618(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D8B16910();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D87EF838(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D893F714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8, &unk_1D8B2BE20);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D87EFF94(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D893F7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA8, &qword_1D8B2BE10);
    v3 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v7 = *i;
      v6 = *(i - 4);
      result = sub_1D87F05FC(v5 | (v6 << 32));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 8 * result;
      *v10 = v5;
      *(v10 + 4) = v6;
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

unint64_t sub_1D893F918(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D8B16910();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

uint64_t sub_1D893FA4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - v16;
  v23 = a2;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    do
    {
      sub_1D8917FF0(v19, v14, a4);
      a5(v17, v14);
      sub_1D89388D8(v17, a6);
      v19 += v20;
      --v18;
    }

    while (v18);
    return v23;
  }

  return a2;
}

unint64_t sub_1D893FBBC()
{
  result = qword_1ECA65720;
  if (!qword_1ECA65720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65720);
  }

  return result;
}

unint64_t sub_1D893FC10()
{
  result = qword_1ECA65728;
  if (!qword_1ECA65728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65728);
  }

  return result;
}

unint64_t sub_1D893FC64()
{
  result = qword_1ECA65748;
  if (!qword_1ECA65748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65748);
  }

  return result;
}

unint64_t sub_1D893FCB8()
{
  result = qword_1ECA65760;
  if (!qword_1ECA65760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    sub_1D893FD6C(&qword_1ECA64370, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65760);
  }

  return result;
}

uint64_t sub_1D893FD6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D893FDB4()
{
  result = qword_1ECA65770;
  if (!qword_1ECA65770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65768, &qword_1D8B2ABD8);
    sub_1D893FD6C(&qword_1ECA652C8, type metadata accessor for BundleClassification.ClassificationType, &protocol conformance descriptor for BundleClassification.ClassificationType);
    sub_1D893FD6C(&qword_1ECA65778, type metadata accessor for RefinementState, &protocol conformance descriptor for RefinementState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65770);
  }

  return result;
}

unint64_t sub_1D893FEA0()
{
  result = qword_1ECA65790;
  if (!qword_1ECA65790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    sub_1D893FD6C(&qword_1ECA65798, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65790);
  }

  return result;
}

unint64_t sub_1D893FF54()
{
  result = qword_1ECA657A0;
  if (!qword_1ECA657A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65768, &qword_1D8B2ABD8);
    sub_1D893FD6C(&qword_1ECA652E0, type metadata accessor for BundleClassification.ClassificationType, &protocol conformance descriptor for BundleClassification.ClassificationType);
    sub_1D893FD6C(&qword_1ECA657A8, type metadata accessor for RefinementState, &protocol conformance descriptor for RefinementState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA657A0);
  }

  return result;
}

double sub_1D8940088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a11)
  {
  }

  return result;
}

unint64_t sub_1D89400D4()
{
  result = qword_1ECA657F8;
  if (!qword_1ECA657F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA657F8);
  }

  return result;
}

unint64_t sub_1D8940128()
{
  result = qword_1ECA65800;
  if (!qword_1ECA65800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65800);
  }

  return result;
}

unint64_t sub_1D894017C()
{
  result = qword_1ECA65810;
  if (!qword_1ECA65810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65810);
  }

  return result;
}

unint64_t sub_1D89401D0()
{
  result = qword_1ECA65818;
  if (!qword_1ECA65818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65818);
  }

  return result;
}

unint64_t sub_1D8940224()
{
  result = qword_1ECA65820;
  if (!qword_1ECA65820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65820);
  }

  return result;
}

float sub_1D8940278()
{
  CVBundle.latestEstimate.getter(&v8);
  if (v8 >> 60 == 11)
  {
    v0 = type metadata accessor for SyntheticDetectionResult(0);
    v1 = swift_projectBox();
    v2 = *(v0 + 24);
    if ((*(v1 + v2) & 1) == 0)
    {

      return 1.1;
    }

    v3 = v1;
    v4 = sub_1D8B16BA0();

    if (v4)
    {

      return 1.1;
    }

    if (*(v3 + v2) == 1)
    {

      return 0.9;
    }

    v7 = sub_1D8B16BA0();

    if (v7)
    {
      return 0.9;
    }
  }

  else
  {
  }

  return 0.275;
}

uint64_t sub_1D89403D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B44590 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001D8B445B0 == a2)
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

uint64_t sub_1D8940548()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = byte_1F54280A8[v0 + 32];
    if (v4 <= 0xB && ((1 << v4) & 0x8D9) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D87F4534(0, *(v1 + 16) + 1, 1);
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        sub_1D87F4534((v2 > 1), v3 + 1, 1);
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 14);
  v6 = sub_1D87C4904(v1);

  return v6;
}

void *sub_1D8940658(uint64_t a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_1D8B1AB90;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_1D8917FF0(v11, v7, type metadata accessor for CVTrackSnapshot);
    v15 = *&v7[*(v2 + 24)] >> 60;
    v17 = sub_1D881F7DC();
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_1D896D04C(v20, 1);
      v8 = v42;
      v22 = sub_1D881F7DC();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_1D8918058(v7, v41, type metadata accessor for CVTrackSnapshot);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D87C7834(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D87C7834((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_1D8918058(v41, v13, type metadata accessor for CVTrackSnapshot);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0, &qword_1D8B23010);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_1D8918058(v7, v30 + v29, type metadata accessor for CVTrackSnapshot);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void sub_1D8940998(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v62 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D8B13240();
  v66 = *(v59 - 8);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = type metadata accessor for CVBundle(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v48 - v14;
  v15 = sub_1D893EE34(MEMORY[0x1E69E7CC0]);
  v16 = 0;
  v69 = v15;
  v17 = *(a1 + 16);
  while (v17 != v16)
  {
    v18 = v16 + 1;
    sub_1D8927ABC(&v69, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16);
    v16 = v18;
  }

  v19 = v69;
  v20 = v69 + 64;
  v21 = 1 << *(v69 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v69 + 64);
  v24 = (v21 + 63) >> 6;
  v68 = (v11 + 56);
  v55 = v66 + 16;
  v52 = v66 + 8;
  v53 = v66 + 32;
  v51 = (v11 + 48);

  v25 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  v60 = v10;
  v56 = v9;
  v64 = v24;
  v65 = v20;
  v54 = v19;
  if (v23)
  {
LABEL_14:
    while (1)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      if (*(*(*(v19 + 56) + ((v25 << 9) | (8 * v27))) + 16) < 2uLL)
      {
        break;
      }

      v67 = *(*(v19 + 56) + ((v25 << 9) | (8 * v27)));
      v28 = v63;
      if (*(v63 + 16) && (v29 = sub_1D881C1D8(), (v30 & 1) != 0))
      {
        v31 = v66;
        v32 = *(v66 + 16);
        v34 = v58;
        v33 = v59;
        v32(v58, *(v28 + 56) + *(v66 + 72) * v29, v59);
        v35 = v57;
        (*(v31 + 32))(v57, v34, v33);
        v36 = v61;
        v32(v61, v35, v33);
        swift_storeEnumTagMultiPayload();
        v37 = *(v31 + 8);
        v24 = v64;
        v38 = v67;
        swift_bridgeObjectRetain_n();
        v39 = v35;
        v20 = v65;
        v40 = v33;
        v19 = v54;
        v37(v39, v40);
        v41 = v36;
        v9 = v56;
        sub_1D8918058(v41, v56, type metadata accessor for CVBundle.BundleType);
        v10 = v60;
        *&v9[*(v60 + 20)] = v38;
        *&v9[*(v10 + 24)] = MEMORY[0x1E69E7CC0];
        *&v9[*(v10 + 28)] = MEMORY[0x1E69E7CC8];
        (*v68)(v9, 0, 1, v10);

        if ((*v51)(v9, 1, v10) != 1)
        {
          goto LABEL_20;
        }

LABEL_9:
        sub_1D87A14E4(v9, &qword_1ECA67980, &qword_1D8B231C0);
        if (!v23)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v42 = v67;

        v43 = v61;
        sub_1D8B13230();
        swift_storeEnumTagMultiPayload();
        sub_1D8918058(v43, v9, type metadata accessor for CVBundle.BundleType);
        v10 = v60;
        *&v9[*(v60 + 20)] = v42;
        *&v9[*(v10 + 24)] = MEMORY[0x1E69E7CC0];
        *&v9[*(v10 + 28)] = MEMORY[0x1E69E7CC8];
        (*v68)(v9, 0, 1, v10);
LABEL_20:
        v44 = v48;
        sub_1D8918058(v9, v48, type metadata accessor for CVBundle);
        sub_1D8918058(v44, v49, type metadata accessor for CVBundle);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1D87C7E90(0, v50[2] + 1, 1, v50);
        }

        v46 = v50[2];
        v45 = v50[3];
        v24 = v64;
        if (v46 >= v45 >> 1)
        {
          v50 = sub_1D87C7E90((v45 > 1), v46 + 1, 1, v50);
        }

        v47 = v50;
        v50[2] = v46 + 1;
        sub_1D8918058(v49, v47 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v46, type metadata accessor for CVBundle);
        v20 = v65;
        if (!v23)
        {
          goto LABEL_10;
        }
      }
    }

    (*v68)(v9, 1, 1, v10);
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      return;
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1D894105C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69666552746F6ELL && a2 == 0xEC000000656C6261;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696665526E6163 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696E69666572 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
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

unint64_t sub_1D89411D4()
{
  result = qword_1ECA65860;
  if (!qword_1ECA65860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65860);
  }

  return result;
}

unint64_t sub_1D8941228()
{
  result = qword_1ECA65870;
  if (!qword_1ECA65870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65868, &qword_1D8B2AC70);
    sub_1D893FD6C(&qword_1ECA652C8, type metadata accessor for BundleClassification.ClassificationType, &protocol conformance descriptor for BundleClassification.ClassificationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65870);
  }

  return result;
}

unint64_t sub_1D89412DC()
{
  result = qword_1ECA65878;
  if (!qword_1ECA65878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65878);
  }

  return result;
}

unint64_t sub_1D8941330()
{
  result = qword_1ECA65890;
  if (!qword_1ECA65890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65888, &qword_1D8B2AC78);
    sub_1D893FD6C(&qword_1ECA65898, MEMORY[0x1E69E0220], MEMORY[0x1E69E0228]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65890);
  }

  return result;
}

unint64_t sub_1D89413E4()
{
  result = qword_1ECA658A8;
  if (!qword_1ECA658A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658A8);
  }

  return result;
}

unint64_t sub_1D8941438()
{
  result = qword_1ECA658B8;
  if (!qword_1ECA658B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65868, &qword_1D8B2AC70);
    sub_1D893FD6C(&qword_1ECA652E0, type metadata accessor for BundleClassification.ClassificationType, &protocol conformance descriptor for BundleClassification.ClassificationType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658B8);
  }

  return result;
}

unint64_t sub_1D89414EC()
{
  result = qword_1ECA658C0;
  if (!qword_1ECA658C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658C0);
  }

  return result;
}

unint64_t sub_1D8941540()
{
  result = qword_1ECA658D0;
  if (!qword_1ECA658D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65888, &qword_1D8B2AC78);
    sub_1D893FD6C(&qword_1ECA658D8, MEMORY[0x1E69E0220], MEMORY[0x1E69E0240]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658D0);
  }

  return result;
}

unint64_t sub_1D89415F4()
{
  result = qword_1ECA658E8;
  if (!qword_1ECA658E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658E8);
  }

  return result;
}

unint64_t sub_1D894164C()
{
  result = qword_1ECA658F0;
  if (!qword_1ECA658F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA658F0);
  }

  return result;
}

uint64_t sub_1D89416E8(uint64_t a1)
{
  result = sub_1D893FD6C(&qword_1ECA658F8, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8941740(uint64_t a1)
{
  result = sub_1D893FD6C(&qword_1ECA65900, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D894179C()
{
  result = qword_1ECA65908;
  if (!qword_1ECA65908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65908);
  }

  return result;
}

uint64_t sub_1D89417FC(uint64_t a1)
{
  result = sub_1D893FD6C(&qword_1EE0E85E0, type metadata accessor for BundleManager, &protocol conformance descriptor for BundleManager);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D89418BC(void *a1)
{
  a1[1] = sub_1D893FD6C(&qword_1ECA64AB8, type metadata accessor for BundleManager.Configuration, &protocol conformance descriptor for BundleManager.Configuration);
  a1[2] = sub_1D893FD6C(&qword_1ECA64A90, type metadata accessor for BundleManager.Configuration, &protocol conformance descriptor for BundleManager.Configuration);
  result = sub_1D893FD6C(&qword_1ECA65918, type metadata accessor for BundleManager.Configuration, &protocol conformance descriptor for BundleManager.Configuration);
  a1[3] = result;
  return result;
}

void sub_1D89419A0(uint64_t a1)
{
  type metadata accessor for CVBundle.BundleType(319);
  if (v1 <= 0x3F)
  {
    sub_1D8942044(319, &qword_1ECA65920, type metadata accessor for CVBundle, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D8941A6C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8941A6C(uint64_t a1)
{
  if (!qword_1EE0E3A38)
  {
    type metadata accessor for BundleClassification.ClassificationType(255);
    type metadata accessor for RefinementState(255);
    sub_1D893FD6C(qword_1EE0E57F8, type metadata accessor for BundleClassification.ClassificationType, &protocol conformance descriptor for BundleClassification.ClassificationType);
    v1 = sub_1D8B15780();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E3A38);
    }
  }
}

void sub_1D8941B20(uint64_t a1)
{
  type metadata accessor for BundleManager.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_1D8941DA8();
    if (v2 <= 0x3F)
    {
      sub_1D8B151E0();
      if (v3 <= 0x3F)
      {
        sub_1D8941DF8(319, &qword_1EE0E3888, MEMORY[0x1E69E8698]);
        if (v4 <= 0x3F)
        {
          sub_1D8941DF8(319, &qword_1EE0E38F0, MEMORY[0x1E69E8660]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1D8941DA8()
{
  if (!qword_1EE0E3910)
  {
    v0 = sub_1D8B15ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3910);
    }
  }
}

void sub_1D8941DF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA649F8, &qword_1D8B2B200);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D8941E64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D8941EAC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1D8941F14(uint64_t a1)
{
  sub_1D8941F9C();
  if (v1 <= 0x3F)
  {
    sub_1D8941FCC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for BundleClassification(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_1D8941F9C()
{
  result = qword_1EE0E46D8[0];
  if (!qword_1EE0E46D8[0])
  {
    result = &type metadata for BundleClassificationRuntimeError;
    atomic_store(&type metadata for BundleClassificationRuntimeError, qword_1EE0E46D8);
  }

  return result;
}

void sub_1D8941FCC()
{
  if (!qword_1EE0E56F8[0])
  {
    sub_1D8942044(0, &qword_1EE0E56F0, type metadata accessor for BundleClassification, MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, qword_1EE0E56F8);
    }
  }
}

void sub_1D8942044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D89420D0(uint64_t a1)
{
  result = sub_1D8B13240();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BundleManager.Configuration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D89421E0(uint64_t a1)
{
  sub_1D8942044(319, &qword_1EE0E3990, type metadata accessor for BundleClassification.ClassificationType, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D8B15340();
    if (v2 <= 0x3F)
    {
      sub_1D89422E8(319);
      if (v3 <= 0x3F)
      {
        sub_1D8B150F0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D89422E8(uint64_t a1)
{
  if (!qword_1EE0E3828)
  {
    sub_1D8B15270();
    sub_1D893FD6C(&qword_1EE0E3A80, MEMORY[0x1E69E0220], MEMORY[0x1E69E0230]);
    v1 = sub_1D8B16080();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E3828);
    }
  }
}

uint64_t sub_1D894237C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D89424A4;

  return v9(a1, a2, a3);
}

uint64_t sub_1D89424A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D8942608(uint64_t a1)
{
  result = type metadata accessor for BundleClassification(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RefinementStateInternal(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D894268C(uint64_t a1)
{
  sub_1D8941F9C();
  if (v1 <= 0x3F)
  {
    sub_1D8941FCC();
    if (v2 <= 0x3F)
    {
      sub_1D8942728(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for BundleClassification(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8942728(uint64_t a1)
{
  if (!qword_1EE0E3868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65928, &qword_1D8B2B2E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA641B8, &unk_1D8B23AC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3868);
    }
  }
}

uint64_t getEnumTagSinglePayload for TrackManager.WorkStateInternal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackManager.WorkStateInternal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D894299C(uint64_t a1)
{
  type metadata accessor for CVBundle(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BundleManager.Configuration(319);
    if (v2 <= 0x3F)
    {
      sub_1D8942044(319, &qword_1EE0E3988, type metadata accessor for BundleClassification, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D8B14C10();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8942AD8(uint64_t a1)
{
  sub_1D8942C00(319, &qword_1ECA65940, type metadata accessor for CVBundle, &type metadata for BundleManager.Output);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D8942B68(uint64_t a1)
{
  type metadata accessor for CVTrackSnapshot(319);
  if (v1 <= 0x3F)
  {
    sub_1D8942C00(319, &qword_1EE0E9880, MEMORY[0x1E69695A8], &type metadata for BundleGroupType);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8942C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D8942CB8()
{
  result = qword_1ECA65950;
  if (!qword_1ECA65950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65950);
  }

  return result;
}

unint64_t sub_1D8942D10()
{
  result = qword_1ECA65958;
  if (!qword_1ECA65958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65958);
  }

  return result;
}

unint64_t sub_1D8942D68()
{
  result = qword_1ECA65960;
  if (!qword_1ECA65960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65960);
  }

  return result;
}

unint64_t sub_1D8942DC0()
{
  result = qword_1ECA65968;
  if (!qword_1ECA65968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65968);
  }

  return result;
}

unint64_t sub_1D8942E18()
{
  result = qword_1ECA65970;
  if (!qword_1ECA65970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65970);
  }

  return result;
}

unint64_t sub_1D8942E70()
{
  result = qword_1ECA65978;
  if (!qword_1ECA65978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65978);
  }

  return result;
}

unint64_t sub_1D8942EC8()
{
  result = qword_1ECA65980;
  if (!qword_1ECA65980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65980);
  }

  return result;
}

unint64_t sub_1D8942F68()
{
  result = qword_1ECA65990;
  if (!qword_1ECA65990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65990);
  }

  return result;
}

unint64_t sub_1D8942FC0()
{
  result = qword_1ECA65998;
  if (!qword_1ECA65998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65998);
  }

  return result;
}

unint64_t sub_1D8943018()
{
  result = qword_1ECA659A0;
  if (!qword_1ECA659A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659A0);
  }

  return result;
}

unint64_t sub_1D8943070()
{
  result = qword_1ECA659A8;
  if (!qword_1ECA659A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659A8);
  }

  return result;
}

unint64_t sub_1D89430C8()
{
  result = qword_1ECA659B0;
  if (!qword_1ECA659B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659B0);
  }

  return result;
}

unint64_t sub_1D8943120()
{
  result = qword_1ECA659B8;
  if (!qword_1ECA659B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659B8);
  }

  return result;
}

unint64_t sub_1D8943178()
{
  result = qword_1ECA659C0;
  if (!qword_1ECA659C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659C0);
  }

  return result;
}

unint64_t sub_1D89431D0()
{
  result = qword_1ECA659C8;
  if (!qword_1ECA659C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659C8);
  }

  return result;
}

unint64_t sub_1D8943228()
{
  result = qword_1ECA659D0;
  if (!qword_1ECA659D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659D0);
  }

  return result;
}

unint64_t sub_1D8943280()
{
  result = qword_1ECA659D8;
  if (!qword_1ECA659D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659D8);
  }

  return result;
}

unint64_t sub_1D89432D8()
{
  result = qword_1ECA659E0;
  if (!qword_1ECA659E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659E0);
  }

  return result;
}

unint64_t sub_1D8943330()
{
  result = qword_1ECA659E8;
  if (!qword_1ECA659E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659E8);
  }

  return result;
}

unint64_t sub_1D8943388()
{
  result = qword_1ECA659F0;
  if (!qword_1ECA659F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659F0);
  }

  return result;
}

unint64_t sub_1D89433E0()
{
  result = qword_1ECA659F8;
  if (!qword_1ECA659F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA659F8);
  }

  return result;
}

unint64_t sub_1D8943438()
{
  result = qword_1ECA65A00;
  if (!qword_1ECA65A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A00);
  }

  return result;
}

unint64_t sub_1D8943490()
{
  result = qword_1ECA65A08;
  if (!qword_1ECA65A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A08);
  }

  return result;
}

unint64_t sub_1D89434E8()
{
  result = qword_1ECA65A10;
  if (!qword_1ECA65A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A10);
  }

  return result;
}

unint64_t sub_1D8943540()
{
  result = qword_1ECA65A18;
  if (!qword_1ECA65A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A18);
  }

  return result;
}

unint64_t sub_1D8943594()
{
  result = qword_1ECA65A38;
  if (!qword_1ECA65A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A38);
  }

  return result;
}

unint64_t sub_1D89435E8()
{
  result = qword_1ECA65A40;
  if (!qword_1ECA65A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A40);
  }

  return result;
}

unint64_t sub_1D894363C()
{
  result = qword_1ECA65A48;
  if (!qword_1ECA65A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A48);
  }

  return result;
}

unint64_t sub_1D8943690()
{
  result = qword_1ECA65A50;
  if (!qword_1ECA65A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A50);
  }

  return result;
}

unint64_t sub_1D89436E4()
{
  result = qword_1ECA65A78;
  if (!qword_1ECA65A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65A78);
  }

  return result;
}

uint64_t sub_1D8943738(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001D8B445E0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001D8B44600 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001D8B44630 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D8B44660 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B44680 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B446A0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x666B726F57706176 && a2 == 0xEB00000000776F6CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B446C0 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D89439D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1D8943B68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D8943B9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E0, &unk_1D8B26010) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8, &qword_1D8B2AC10) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D886553C;

  return sub_1D892C910(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1D8943D3C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA649E8, &qword_1D8B2AC10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D892D758(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8943E68(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D886553C;

  return sub_1D893561C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1D8943F30(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return sub_1D8937F84(a1, a2, v6);
}

uint64_t sub_1D8943FE0(uint64_t a1)
{
  v4 = *(type metadata accessor for BundleManager.BundleClassificationRequest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8864FBC;

  return sub_1D8938820(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D89440D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D88B7B50(a1, v4);
}

uint64_t sub_1D8944188(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BundleClassification(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CVBundle(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for BundleManager.BundleClassificationRequest(0) - 8);
  v12 = (v10 + *(v11 + 80) + 96) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D886553C;

  return sub_1D893611C(a1, v13, v14, v1 + v6, v1 + v9, v1 + v10, v1 + v12);
}

uint64_t sub_1D894434C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88B7A58(a1, v4);
}

unint64_t sub_1D8944438()
{
  result = qword_1ECA65CE0;
  if (!qword_1ECA65CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CE0);
  }

  return result;
}

unint64_t sub_1D8944490()
{
  result = qword_1ECA65CE8;
  if (!qword_1ECA65CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CE8);
  }

  return result;
}

unint64_t sub_1D89444E8()
{
  result = qword_1ECA65CF0;
  if (!qword_1ECA65CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CF0);
  }

  return result;
}

unint64_t sub_1D8944540()
{
  result = qword_1ECA65CF8;
  if (!qword_1ECA65CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65CF8);
  }

  return result;
}

unint64_t sub_1D8944598()
{
  result = qword_1ECA65D00;
  if (!qword_1ECA65D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D00);
  }

  return result;
}

unint64_t sub_1D89445F0()
{
  result = qword_1ECA65D08;
  if (!qword_1ECA65D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D08);
  }

  return result;
}

unint64_t sub_1D8944648()
{
  result = qword_1ECA65D10;
  if (!qword_1ECA65D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D10);
  }

  return result;
}

unint64_t sub_1D89446A0()
{
  result = qword_1ECA65D18;
  if (!qword_1ECA65D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D18);
  }

  return result;
}

unint64_t sub_1D89446F8()
{
  result = qword_1ECA65D20;
  if (!qword_1ECA65D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D20);
  }

  return result;
}

void sub_1D89447A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v82 - v8;
  *&v87 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult(0));
  v89 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVTrackSnapshot(0);
  v93 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *v3;
  LOBYTE(v98) = *v3;
  v88 = a1;
  if ((sub_1D8945520(a1) & 1) == 0)
  {
    v77 = xmmword_1D8B26630;
LABEL_95:
    *a3 = v77;
    goto LABEL_96;
  }

  if (!(v18 & 1 | ((v19 & 1) == 0)))
  {
    *a3 = 0;
    a3[1] = 0;
LABEL_96:
    *(a3 + 16) = 2;
    return;
  }

  v85 = v18;
  v20 = sub_1D891A6E8();
  v21 = v20;
  v92 = *(v20 + 16);
  if (!v92)
  {

LABEL_94:
    v77 = xmmword_1D8B26640;
    goto LABEL_95;
  }

  v83 = a3;
  v22 = 0;
  v91 = v20 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
  v90 = *(v14 + 20);
  v89 += 7;
  while (v22 < *(v21 + 16))
  {
    sub_1D89474BC(v91 + *(v93 + 72) * v22++, v16, type metadata accessor for CVTrackSnapshot);
    switch(*&v16[v90] >> 60)
    {
      case 1:
        *&v39 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
        v24 = swift_projectBox();
        v101 = *&v39;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_20;
      case 2:
        v32 = swift_projectBox();
        v101 = *&v11;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v33 = type metadata accessor for MetaDetectionResult;
        v34 = v32;
        goto LABEL_21;
      case 3:
      case 8:
        *&v23 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
        v24 = swift_projectBox();
        v101 = *&v23;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_20;
      case 4:
        *&v40 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
        v24 = swift_projectBox();
        v101 = *&v40;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for ParseDetectorResult;
        goto LABEL_20;
      case 5:
        *&v41 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
        v24 = swift_projectBox();
        v101 = *&v41;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for TextDetectorResult;
        goto LABEL_20;
      case 6:
      case 7:
        *&v27 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
        v24 = swift_projectBox();
        v101 = *&v27;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_20;
      case 9:
      case 0xALL:
        v28 = swift_projectBox();
        v29 = v86;
        sub_1D89474BC(v28, v86, type metadata accessor for AFMResult);
        v101 = *&v87;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult));
        v30 = __swift_allocate_boxed_opaque_existential_1(&v98);
        sub_1D894740C(v29, v30, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        *&v31 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult(0));
        v24 = swift_projectBox();
        v101 = *&v31;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_20;
      case 0xCLL:
        *&v35 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
        v24 = swift_projectBox();
        v101 = *&v35;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_20;
      case 0xDLL:
        *&v42 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
        v24 = swift_projectBox();
        v101 = *&v42;
        v102 = COERCE_DOUBLE(sub_1D8947474(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        v26 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_20:
        v33 = v26;
        v34 = v24;
LABEL_21:
        sub_1D89474BC(v34, boxed_opaque_existential_1, v33);
        break;
      default:
        *&v36 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0));
        v37 = swift_projectBox();
        v101 = *&v36;
        v102 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>));
        v38 = __swift_allocate_boxed_opaque_existential_1(&v98);
        sub_1D894733C(v37, v38);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v43 = swift_dynamicCast();
    v44 = *v89;
    if (v43)
    {
      v44(v9, 0, 1, v11);
      sub_1D894740C(v9, v13, type metadata accessor for MetaDetectionResult);
      if (*v13 != 5 || (v85 & 1) != 0 && *&v13[v11[8]] != v17)
      {
        goto LABEL_81;
      }

      v84 = v11[9];
      if (v13[v84] == 2 && v17 - *&v13[v11[8]] > 0.0001)
      {
        goto LABEL_81;
      }

      CVBundle.latestEstimate.getter(&v106);
      v97 = v106;
      CVDetection.detection.getter(v94);
      v45 = v13;
      v46 = v21;
      v47 = v95;
      v48 = v96;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      v49 = *(v48 + 64);
      v50 = v48;
      v21 = v46;
      v13 = v45;
      v49(&v98, v47, v50);
      __swift_destroy_boxed_opaque_existential_1(v94);

      v51 = v98;
      v52 = v99;
      if (v100 >= v98)
      {
        v53 = v98;
      }

      else
      {
        v53 = v100;
      }

      if (v102 < v53)
      {
        v53 = v102;
      }

      if (v104 < v53)
      {
        v53 = v104;
      }

      if (v101 >= v99)
      {
        v54 = v99;
      }

      else
      {
        v54 = v101;
      }

      if (v103 < v54)
      {
        v54 = v103;
      }

      if (v105 < v54)
      {
        v54 = v105;
      }

      if (v98 <= v100)
      {
        v51 = v100;
      }

      if (v51 <= v102)
      {
        v51 = v102;
      }

      if (v51 <= v104)
      {
        v51 = v104;
      }

      if (v99 <= v101)
      {
        v52 = v101;
      }

      if (v52 <= v103)
      {
        v52 = v103;
      }

      if (v52 <= v105)
      {
        v52 = v105;
      }

      v55 = v51 - v53;
      v56 = v52 - v54;
      v109.origin.x = 0.0;
      v109.origin.y = 0.0;
      v109.size.width = 1.0;
      v109.size.height = 1.0;
      v107 = CGRectIntersection(*&v53, v109);
      x = v107.origin.x;
      y = v107.origin.y;
      width = v107.size.width;
      height = v107.size.height;
      v61 = (v45 + v11[5]);
      v62 = *v61;
      v63 = v61[1];
      v64 = v61[2];
      v65 = v61[3];
      v66 = v61[4];
      v67 = v61[5];
      v68 = v61[6];
      v69 = v61[7];
      if (v64 >= *v61)
      {
        v70 = *v61;
      }

      else
      {
        v70 = v61[2];
      }

      if (v66 < v70)
      {
        v70 = v61[4];
      }

      if (v68 < v70)
      {
        v70 = v61[6];
      }

      if (v65 >= v63)
      {
        v71 = v61[1];
      }

      else
      {
        v71 = v61[3];
      }

      if (v67 < v71)
      {
        v71 = v61[5];
      }

      if (v69 < v71)
      {
        v71 = v61[7];
      }

      if (v62 <= v64)
      {
        v62 = v61[2];
      }

      if (v62 <= v66)
      {
        v62 = v61[4];
      }

      if (v62 <= v68)
      {
        v62 = v61[6];
      }

      if (v63 <= v65)
      {
        v63 = v61[3];
      }

      if (v63 <= v67)
      {
        v63 = v61[5];
      }

      if (v63 <= v69)
      {
        v63 = v61[7];
      }

      v72 = v62 - v70;
      v73 = v63 - v71;
      v74 = width;
      v75 = height;
      v108 = CGRectIntersection(*&v70, *&x);
      if (width * height * 0.9 <= v108.size.width * v108.size.height)
      {
        v76 = *(v45 + v84);
        if (v76 == 3)
        {
          if (qword_1EE0E54C0 != -1)
          {
            swift_once();
          }

          if (sub_1D8B0AAA4())
          {
            goto LABEL_99;
          }

          sub_1D89473AC(v45, type metadata accessor for MetaDetectionResult);
          if (v85)
          {
            goto LABEL_97;
          }
        }

        else
        {
          sub_1D89473AC(v45, type metadata accessor for MetaDetectionResult);
          if (v76 == 2)
          {
LABEL_97:

            sub_1D89473AC(v16, type metadata accessor for CVTrackSnapshot);
            v78 = v83;
            *v83 = 0;
            v78[1] = 0;
            *(v78 + 16) = -1;
            return;
          }
        }
      }

      else
      {
LABEL_81:
        sub_1D89473AC(v13, type metadata accessor for MetaDetectionResult);
      }
    }

    else
    {
      v44(v9, 1, 1, v11);
      sub_1D87A14E4(v9, &qword_1ECA64BB8, &qword_1D8B26820);
    }

    sub_1D89473AC(v16, type metadata accessor for CVTrackSnapshot);
    if (v92 == v22)
    {

      a3 = v83;
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_99:
  v98 = 0.0;
  v99 = -2.68156159e154;
  sub_1D8B16720();

  v98 = -2.31584178e77;
  v99 = COERCE_DOUBLE(0x80000001D8B43DD0);
  v79 = &v13[v11[10]];
  if (v79[1])
  {
    v80 = *v79;
    v81 = v79[1];
  }

  else
  {
    v81 = 0xEF6E65766967206ELL;
    v80 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v80, v81);

  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D8945520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B13AD0();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D89474BC(a1, v16, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1D8B13240();
    (*(*(v17 - 8) + 8))(v16, v17);
LABEL_3:
    v18 = 0;
    return v18 & 1;
  }

  sub_1D89473AC(v16, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v36);
  v20 = v36 >> 60;
  if ((v36 >> 60) <= 3)
  {
    if (!v20)
    {
      v30 = swift_projectBox();
      sub_1D894733C(v30, v4);
      v31 = sub_1D8A05CB0();
      v32 = sub_1D88E0474(&unk_1F5426E78, v31);

      sub_1D87A14E4(v4, &qword_1ECA67750, &unk_1D8B1E0C0);

      v18 = v32 ^ 1;
      return v18 & 1;
    }

    if (v20 == 3)
    {
      v21 = swift_projectBox();
      sub_1D89474BC(v21, v7, type metadata accessor for ObjectDetectorResult);
      v22 = &v7[*(v5 + 28)];
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = *v22 == 1852270963 && v24 == 0xE400000000000000;
      if (v25 || (sub_1D8B16BA0() & 1) != 0 || v23 == 0x746E656D75636F64 && v24 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D89473AC(v7, type metadata accessor for ObjectDetectorResult);

        v18 = 1;
        return v18 & 1;
      }

      sub_1D89473AC(v7, type metadata accessor for ObjectDetectorResult);
    }

LABEL_29:

    goto LABEL_3;
  }

  if (v20 == 11)
  {
    v33 = type metadata accessor for SyntheticDetectionResult(0);
    if ((*(swift_projectBox() + *(v33 + 24)) & 1) == 0)
    {

      v18 = 1;
      return v18 & 1;
    }

    v34 = sub_1D8B16BA0();

    if (v34)
    {
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_3;
  }

  if (v20 != 4)
  {
    goto LABEL_29;
  }

  v26 = swift_projectBox();
  sub_1D89474BC(v26, v13, type metadata accessor for ParseDetectorResult);
  v27 = *&v13[*(v11 + 28)];
  sub_1D8B139D0();
  v28 = sub_1D8846CD0(v10, v27);
  v29 = *(v35 + 8);
  v29(v10, v8);
  if (v28)
  {
    v18 = 1;
  }

  else
  {
    sub_1D8B13A10();
    v18 = sub_1D8846CD0(v10, v27);
    v29(v10, v8);
  }

  sub_1D89473AC(v13, type metadata accessor for ParseDetectorResult);

  return v18 & 1;
}

uint64_t sub_1D8945A78(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  v15 = a2[2];
  v16 = v4;
  v17 = a2[4];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  if (*v2 == 1 && (BYTE8(v15) & 1) == 0 || (sub_1D8945520(a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88, &unk_1D8B267B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v7 = sub_1D893EA58(&unk_1F5426AF8);
  v8 = 1.0;
  if (*(v7 + 16))
  {
    v9 = sub_1D881F7DC();
    if (v10)
    {
      v8 = *(*(v7 + 56) + 8 * v9);
    }
  }

  *(inited + 40) = v8;
  v11 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v12 = sub_1D89DF928(a1, v14, v11);

  return v12;
}

uint64_t sub_1D8945BA0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 280) = a2;
  *(v5 + 288) = a5;
  *(v5 + 272) = a1;
  v7 = type metadata accessor for TextDetectorResult(0);
  *(v5 + 296) = v7;
  *(v5 + 304) = *(v7 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D8945C88, 0, 0);
}

uint64_t sub_1D8945C88()
{
  v142 = v0;
  v1 = CVBundle.textDetectorResults.getter();
  CVBundle.latestEstimate.getter(&v140);
  v141 = v140;
  CVDetection.detection.getter((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 88))(v2, v3);
  v5 = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = v1[2];
  if (v6)
  {
    v7 = *(v0 + 304);
    v131 = *(v0 + 296);
    v140 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v6, 0);
    v8 = 0;
    v133 = v7;
    v9 = v140;
    v136 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v137 = v5;
    v129 = v6;
    v130 = v1;
    do
    {
      if (v8 >= v1[2])
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v10 = *(v5 + 328);
      v135 = *(v133 + 72);
      v138 = v8;
      sub_1D89474BC(&v136[v135 * v8], v10, type metadata accessor for TextDetectorResult);
      v11 = *(v10 + *(v131 + 44));
      v12 = *(v11 + 16);
      if (v12)
      {
        v141 = MEMORY[0x1E69E7CC0];
        sub_1D87F3F54(0, v12, 0);
        v13 = v141;
        v14 = v141[2];
        v15 = 16 * v14;
        v16 = (v11 + 48);
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          v141 = v13;
          v19 = v14 + 1;
          v20 = *(v13 + 24);

          if (v14 >= v20 >> 1)
          {
            sub_1D87F3F54((v20 > 1), v19, 1);
            v13 = v141;
          }

          *(v13 + 16) = v19;
          v21 = v13 + v15;
          *(v21 + 32) = v18;
          *(v21 + 40) = v17;
          v15 += 16;
          v16 += 5;
          ++v14;
          --v12;
        }

        while (v12);
        v5 = v137;
        v22 = v129;
        v2 = v130;
      }

      else
      {
        v22 = v6;
        v2 = v1;
        v13 = MEMORY[0x1E69E7CC0];
      }

      v23 = v5;
      v24 = *(v5 + 328);
      *(v23 + 256) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
      v25 = sub_1D8B15810();
      v27 = v26;

      sub_1D89473AC(v24, type metadata accessor for TextDetectorResult);
      v140 = v9;
      v29 = *(v9 + 16);
      v28 = *(v9 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D87F3F54((v28 > 1), v29 + 1, 1);
        v9 = v140;
      }

      v8 = v138 + 1;
      *(v9 + 16) = v29 + 1;
      v30 = v9 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v6 = v22;
      v1 = v2;
      v5 = v137;
    }

    while (v138 + 1 != v22);
    *(v137 + 264) = v9;
    v31 = sub_1D8B15810();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v35 = *(v137 + 320);
      v36 = *(v137 + 296);
      v37 = _s22VisualIntelligenceCore31TextDetectionReadabilityUtilityV016generateReadableD0_15imageResolution21skipReadabiltySorting5isRTL13minConfidenceSSSayAA0D14DetectorResultVG_So6CGSizeVS2bSftFZ_0(v2, 1, *(v137 + 336), *(v137 + 344), 0.0);
      v128 = String.tokens()(v37, v38);
      v141 = MEMORY[0x1E69E7CC0];
      v39 = *(v36 + 40);
      v41 = v135;
      v40 = v136;
      v42 = v137;
      do
      {
        v43 = *(v137 + 320);
        sub_1D89474BC(v40, v43, type metadata accessor for TextDetectorResult);
        v44 = *(v35 + v39);

        sub_1D89473AC(v43, type metadata accessor for TextDetectorResult);
        sub_1D88F4A54(v44);
        v40 += v135;
        --v22;
      }

      while (v22);
      v134 = *(v137 + 312);

      v45 = sub_1D893D154(MEMORY[0x1E69E7CC0]);
      v2 = 0;
      v46 = 0;
      v132 = *(v36 + 40);
      while (2)
      {
        if (v46 < v130[2])
        {
          v47 = *(v42 + 312);
          sub_1D89474BC(&v136[v46 * v41], v47, type metadata accessor for TextDetectorResult);
          v48 = v46 + 1;
          v139 = v48;
          v49 = *(v134 + v132);

          sub_1D89473AC(v47, type metadata accessor for TextDetectorResult);
          v50 = 0;
          v51 = -1 << *(v49 + 32);
          if (-v51 < 64)
          {
            v52 = ~(-1 << -v51);
          }

          else
          {
            v52 = -1;
          }

          v53 = v52 & *(v49 + 56);
          v54 = 63 - v51;
          v55 = (63 - v51) >> 6;
          if (v53)
          {
            while (1)
            {
              v56 = v50;
LABEL_30:
              v57 = (*(v49 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v53)))));
              v48 = *v57;
              v58 = v57[1];

              sub_1D878BBCC(v2, 0);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v141 = v45;
              v60 = sub_1D87EF838(v48, v58);
              v62 = *(v45 + 16);
              v63 = (v61 & 1) == 0;
              v64 = __OFADD__(v62, v63);
              v65 = v62 + v63;
              if (v64)
              {
                goto LABEL_93;
              }

              v2 = v61;
              if (*(v45 + 24) < v65)
              {
                break;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_35;
              }

              v67 = v60;
              sub_1D8969F5C();
              v60 = v67;
              v45 = v141;
              if (v2)
              {
LABEL_36:
                v2 = v60;

                v60 = v2;
                goto LABEL_40;
              }

LABEL_38:
              *(v45 + 8 * (v60 >> 6) + 64) |= 1 << v60;
              v68 = (*(v45 + 48) + 16 * v60);
              *v68 = v48;
              v68[1] = v58;
              *(*(v45 + 56) + 8 * v60) = 0;
              v69 = *(v45 + 16);
              v64 = __OFADD__(v69, 1);
              v70 = v69 + 1;
              if (v64)
              {
                goto LABEL_95;
              }

              *(v45 + 16) = v70;
LABEL_40:
              v71 = *(v45 + 56);
              v72 = *(v71 + 8 * v60);
              v64 = __OFADD__(v72, 1);
              v54 = v72 + 1;
              if (v64)
              {
                goto LABEL_94;
              }

              v51 = v53 - 1;
              v53 &= v53 - 1;
              *(v71 + 8 * v60) = v54;
              v2 = sub_1D8786920;
              v50 = v56;
              if (!v53)
              {
                goto LABEL_27;
              }
            }

            sub_1D8972FC4(v65, isUniquelyReferenced_nonNull_native);
            v45 = v141;
            v60 = sub_1D87EF838(v48, v58);
            if ((v2 & 1) != (v66 & 1))
            {

              return sub_1D8B16C30();
            }

LABEL_35:
            if (v2)
            {
              goto LABEL_36;
            }

            goto LABEL_38;
          }

          while (1)
          {
LABEL_27:
            v56 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v56 >= v55)
            {
              break;
            }

            v53 = *(v49 + 56 + 8 * v56);
            ++v50;
            if (v53)
            {
              goto LABEL_30;
            }
          }

          v42 = v137;
          v46 = v139;
          v41 = v135;
          if (v139 != v129)
          {
            continue;
          }

          v48 = v45 + 64;
          v82 = -1;
          v54 = -1 << *(v45 + 32);
          if (-v54 < 64)
          {
            v82 = ~(-1 << -v54);
          }

          v51 = v82 & *(v45 + 64);
          if (v51)
          {
            v83 = 0;
            v84 = __clz(__rbit64(v51));
            v85 = (v51 - 1) & v51;
            v86 = (63 - v54) >> 6;
LABEL_65:
            v89 = (*(v45 + 48) + 16 * v84);
            v91 = *v89;
            v90 = v89[1];
            v92 = *(*(v45 + 56) + 8 * v84);

            if (!v85)
            {
              goto LABEL_68;
            }

            do
            {
LABEL_66:
              while (1)
              {
                v93 = __clz(__rbit64(v85));
                v85 &= v85 - 1;
                v94 = v93 | (v83 << 6);
                v95 = *(*(v45 + 56) + 8 * v94);
                if (v92 < v95)
                {
                  break;
                }

                if (!v85)
                {
                  goto LABEL_68;
                }
              }

              v97 = (*(v45 + 48) + 16 * v94);
              v91 = *v97;
              v98 = v97[1];

              v90 = v98;
              v92 = v95;
            }

            while (v85);
LABEL_68:
            while (1)
            {
              v96 = v83 + 1;
              if (__OFADD__(v83, 1))
              {
                goto LABEL_97;
              }

              if (v96 >= v86)
              {

                AloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0 = _s22VisualIntelligenceCore19ReadAloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0(v91, v90, v128);
                if (v100)
                {
                  v101 = AloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0;
                  v102 = v100;

                  if (qword_1EE0E4258 != -1)
                  {
                    swift_once();
                  }

                  v103 = sub_1D8B151E0();
                  __swift_project_value_buffer(v103, qword_1EE0E4260);

                  v104 = sub_1D8B151C0();
                  v105 = sub_1D8B16200();

                  if (os_log_type_enabled(v104, v105))
                  {
                    v106 = swift_slowAlloc();
                    v107 = swift_slowAlloc();
                    v141 = v107;
                    *v106 = 136315138;
                    *(v106 + 4) = sub_1D89AC714(v101, v102, &v141);
                    _os_log_impl(&dword_1D8783000, v104, v105, "detectedLanguage issue: %s", v106, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v107);
                    MEMORY[0x1DA721330](v107, -1, -1);
                    MEMORY[0x1DA721330](v106, -1, -1);
                  }

                  v5 = v137;
                  v108 = *(v137 + 288);
                  *v108 = 0;
                  *(v108 + 8) = v101;
                  *(v108 + 16) = v102;
                  *(v108 + 24) = 0x80;
                  *(v108 + 32) = v4;
                  *(v137 + 96) = 0;
                  *(v137 + 104) = v101;
                  *(v137 + 112) = v102;
                  *(v137 + 120) = 0x80;
                  *(v137 + 128) = v4;
                  sub_1D88E0E0C();
                  goto LABEL_89;
                }

                if (qword_1EE0E4258 != -1)
                {
                  swift_once();
                }

                v109 = sub_1D8B151E0();
                __swift_project_value_buffer(v109, qword_1EE0E4260);

                v110 = sub_1D8B151C0();
                v111 = sub_1D8B161F0();

                if (os_log_type_enabled(v110, v111))
                {
                  v112 = swift_slowAlloc();
                  v113 = swift_slowAlloc();
                  v141 = v113;
                  *v112 = 134218242;
                  v114 = *(v128 + 16);

                  *(v112 + 4) = v114;

                  *(v112 + 12) = 2080;
                  v115 = sub_1D89AC714(v91, v90, &v141);

                  *(v112 + 14) = v115;
                  _os_log_impl(&dword_1D8783000, v110, v111, "Detected readable text with: %ld tokens and primary language: %s", v112, 0x16u);
                  __swift_destroy_boxed_opaque_existential_1(v113);
                  MEMORY[0x1DA721330](v113, -1, -1);
                  MEMORY[0x1DA721330](v112, -1, -1);
                }

                else
                {
                  swift_bridgeObjectRelease_n();
                }

                v122 = *(v137 + 272);
                type metadata accessor for BundleClassification.ClassificationType(0);
                swift_storeEnumTagMultiPayload();
                CVBundle.latestEstimate.getter(&v140);
                v141 = v140;
                CVDetection.detection.getter((v137 + 56));
                v124 = *(v137 + 80);
                v123 = *(v137 + 88);
                __swift_project_boxed_opaque_existential_1((v137 + 56), v124);
                v125 = (*(v123 + 88))(v124, v123);

                __swift_destroy_boxed_opaque_existential_1((v137 + 56));
                v126 = type metadata accessor for BundleClassification(0);
                v127 = v122 + *(v126 + 20);
                *v127 = 2;
                *(v127 + 8) = 0u;
                *(v127 + 24) = 0u;
                sub_1D88E0FE4(2, 0, 0, 0);
                sub_1D878BBCC(v2, 0);
                *v127 = 2;
                *(v127 + 8) = 0u;
                *(v127 + 24) = 0u;
                *(v122 + *(v126 + 24)) = v125;

                v80 = *(v137 + 8);
                goto LABEL_50;
              }

              v85 = *(v48 + 8 * v96);
              ++v83;
              if (v85)
              {
                v83 = v96;
                goto LABEL_66;
              }
            }
          }

LABEL_61:
          v87 = 0;
          v86 = (63 - v54) >> 6;
          while (v86 - 1 != v51)
          {
            v83 = v51 + 1;
            v88 = *(v45 + 8 * v51 + 72);
            v87 -= 64;
            ++v51;
            if (v88)
            {
              v85 = (v88 - 1) & v88;
              v84 = __clz(__rbit64(v88)) - v87;
              goto LABEL_65;
            }
          }

          if (qword_1EE0E4258 != -1)
          {
            swift_once();
          }

          v116 = sub_1D8B151E0();
          __swift_project_value_buffer(v116, qword_1EE0E4260);
          v117 = sub_1D8B151C0();
          v118 = sub_1D8B16200();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v141 = v120;
            *v119 = 136315138;
            *(v119 + 4) = sub_1D89AC714(0xD00000000000003CLL, 0x80000001D8B447C0, &v141);
            _os_log_impl(&dword_1D8783000, v117, v118, "%s", v119, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v120);
            MEMORY[0x1DA721330](v120, -1, -1);
            MEMORY[0x1DA721330](v119, -1, -1);
          }

          v5 = v137;
          v121 = *(v137 + 288);
          *v121 = 0;
          *(v121 + 8) = 0xD00000000000003CLL;
          *(v121 + 16) = 0x80000001D8B447C0;
          *(v121 + 24) = 0x80;
          *(v121 + 32) = v4;
          *(v137 + 136) = 0;
          *(v137 + 144) = 0xD00000000000003CLL;
          *(v137 + 152) = 0x80000001D8B447C0;
          *(v137 + 160) = 0x80;
          *(v137 + 168) = v4;
          sub_1D88E0E0C();
LABEL_89:
          swift_willThrowTypedImpl();
          sub_1D878BBCC(v2, 0);
          goto LABEL_49;
        }

        break;
      }

LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
    }

    else
    {

      v2 = 0x80000001D8B44800;
      if (qword_1EE0E4258 == -1)
      {
LABEL_45:
        v74 = sub_1D8B151E0();
        __swift_project_value_buffer(v74, qword_1EE0E4260);
        v75 = sub_1D8B151C0();
        v76 = sub_1D8B16200();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v141 = v78;
          *v77 = 136315138;
          *(v77 + 4) = sub_1D89AC714(0xD000000000000020, v2, &v141);
          _os_log_impl(&dword_1D8783000, v75, v76, "%s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v78);
          MEMORY[0x1DA721330](v78, -1, -1);
          MEMORY[0x1DA721330](v77, -1, -1);
        }

        v5 = v137;
        v79 = *(v137 + 288);
        *v79 = 0;
        *(v79 + 8) = 0xD000000000000020;
        *(v79 + 16) = v2;
        *(v79 + 24) = 0x80;
        *(v79 + 32) = v4;
        *(v137 + 176) = 0;
        *(v137 + 184) = 0xD000000000000020;
        *(v137 + 192) = v2;
        *(v137 + 200) = 0x80;
        *(v137 + 208) = v4;
        sub_1D88E0E0C();
        goto LABEL_48;
      }
    }

    swift_once();
    goto LABEL_45;
  }

  v73 = *(v0 + 288);

  *v73 = 0;
  *(v73 + 8) = 0xD000000000000015;
  *(v73 + 16) = 0x80000001D8B44830;
  *(v73 + 24) = 0x80;
  *(v73 + 32) = v4;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xD000000000000015;
  *(v0 + 232) = 0x80000001D8B44830;
  *(v0 + 240) = 0x80;
  *(v0 + 248) = v4;
  sub_1D88E0E0C();
LABEL_48:
  swift_willThrowTypedImpl();
LABEL_49:

  v80 = *(v5 + 8);
LABEL_50:

  return v80();
}

uint64_t sub_1D8946C54(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D8945BA0(a1, a2, v9, a4, v5 + 16);
}

unint64_t _s22VisualIntelligenceCore19ReadAloudClassifierV6verify16detectedLanguage6tokensSSSgSS_SaySsGtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v7 = 0x80000001D8B44940;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v6 = 0xD00000000000001ALL;
    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1EE0E4260);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = 0xD00000000000001ALL;
    goto LABEL_30;
  }

  if (*(a3 + 16) < 0x65uLL)
  {
    v7 = 0x80000001D8B44850;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v6 = 0x1000000000000020;
    v14 = sub_1D8B151E0();
    __swift_project_value_buffer(v14, qword_1EE0E4260);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = 0x1000000000000020;
    goto LABEL_30;
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    return 0;
  }

  if (qword_1ECA62248 != -1)
  {
    swift_once();
  }

  sub_1D8B162D0();
  v16 = v27;
  v15 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63498, &unk_1D8B1EA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v18 = sub_1D87C4264(inited);
  swift_setDeallocating();
  sub_1D8947540(inited + 32);
  sub_1D89C3168(v18, v16, v15);
  LOBYTE(inited) = v19;

  if ((inited & 1) == 0)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000015, 0x80000001D8B44880);
    MEMORY[0x1DA71EFA0](a1, a2);
    MEMORY[0x1DA71EFA0](0xD00000000000003BLL, 0x80000001D8B448A0);
    MEMORY[0x1DA71EFA0](v16, v15);

    v6 = 0;
    v7 = 0xE000000000000000;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v24 = sub_1D8B151E0();
    __swift_project_value_buffer(v24, qword_1EE0E4260);

    v9 = sub_1D8B151C0();
    v10 = sub_1D8B16230();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_31;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  v20 = sub_1D8B162D0();
  v21 = v27;
  v27 = v16;
  v28 = v15;
  MEMORY[0x1EEE9AC00](v20);
  v26[2] = &v27;
  v22 = sub_1D8AD0444(sub_1D89475B0, v26, v21);

  if ((v22 & 1) == 0)
  {
    v7 = 0x80000001D8B448E0;
    if (qword_1EE0E4258 != -1)
    {
      swift_once();
    }

    v23 = sub_1D8B151E0();
    __swift_project_value_buffer(v23, qword_1EE0E4260);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B161F0();
    if (!os_log_type_enabled(v9, v10))
    {

      return 0xD000000000000054;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v6 = 0xD000000000000054;
LABEL_29:
    v13 = v6;
LABEL_30:
    *(v11 + 4) = sub_1D89AC714(v13, v7, &v27);
    _os_log_impl(&dword_1D8783000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA721330](v12, -1, -1);
    MEMORY[0x1DA721330](v11, -1, -1);
LABEL_31:

    return v6;
  }

  return 0;
}

uint64_t sub_1D894733C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89473AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D894740C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8947474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D89474BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D8947618(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001D8B44960 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D89476AC(uint64_t a1)
{
  v2 = sub_1D894785C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89476E8(uint64_t a1)
{
  v2 = sub_1D894785C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchClassifierResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D38, &qword_1D8B2C4F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D894785C();
  sub_1D8B16DD0();
  sub_1D8B16AA0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D894785C()
{
  result = qword_1ECA65D40;
  if (!qword_1ECA65D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D40);
  }

  return result;
}

uint64_t SearchClassifierResult.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t SearchClassifierResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D48, &qword_1D8B2C4F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D894785C();
  sub_1D8B16DB0();
  if (!v2)
  {
    v9 = sub_1D8B169D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8947A7C()
{
  sub_1D8B16D20();
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t sub_1D8947AF0(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t sub_1D8947B4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D38, &qword_1D8B2C4F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D894785C();
  sub_1D8B16DD0();
  sub_1D8B16AA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SearchClassifier.SuccessCondition.description.getter()
{
  v1 = 0x697373696D726550;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F432068676948;
  }
}

uint64_t sub_1D8947CF8()
{
  v1 = 0x697373696D726570;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x666E6F4368676968;
  }
}

uint64_t sub_1D8947D6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8949B8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8947D94(uint64_t a1)
{
  v2 = sub_1D89482EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947DD0(uint64_t a1)
{
  v2 = sub_1D89482EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8947E0C(uint64_t a1)
{
  v2 = sub_1D89483E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947E48(uint64_t a1)
{
  v2 = sub_1D89483E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8947E84(uint64_t a1)
{
  v2 = sub_1D8948394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947EC0(uint64_t a1)
{
  v2 = sub_1D8948394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8947EFC(uint64_t a1)
{
  v2 = sub_1D8948340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8947F38(uint64_t a1)
{
  v2 = sub_1D8948340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchClassifier.SuccessCondition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D50, &qword_1D8B2C500);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D58, &qword_1D8B2C508);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D60, &qword_1D8B2C510);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D68, &qword_1D8B2C518);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89482EC();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8948394();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8948340();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D89483E8();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1D89482EC()
{
  result = qword_1ECA65D70;
  if (!qword_1ECA65D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D70);
  }

  return result;
}

unint64_t sub_1D8948340()
{
  result = qword_1ECA65D78;
  if (!qword_1ECA65D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D78);
  }

  return result;
}

unint64_t sub_1D8948394()
{
  result = qword_1ECA65D80;
  if (!qword_1ECA65D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D80);
  }

  return result;
}

unint64_t sub_1D89483E8()
{
  result = qword_1ECA65D88;
  if (!qword_1ECA65D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65D88);
  }

  return result;
}

uint64_t SearchClassifier.SuccessCondition.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t SearchClassifier.SuccessCondition.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D90, &qword_1D8B2C520);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65D98, &qword_1D8B2C528);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65DA0, &qword_1D8B2C530);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65DA8, &unk_1D8B2C538);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D89482EC();
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
      *v24 = &type metadata for SearchClassifier.SuccessCondition;
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
          sub_1D8948394();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8948340();
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
        sub_1D89483E8();
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

unint64_t sub_1D8948A64()
{
  result = qword_1ECA65DB0;
  if (!qword_1ECA65DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DB0);
  }

  return result;
}

unint64_t sub_1D8948ABC()
{
  result = qword_1ECA65DB8;
  if (!qword_1ECA65DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65DC0, &qword_1D8B2C628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DB8);
  }

  return result;
}

unint64_t sub_1D8948B24()
{
  result = qword_1ECA65DC8;
  if (!qword_1ECA65DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DC8);
  }

  return result;
}

uint64_t sub_1D8948B78()
{
  v1 = 0x697373696D726550;
  if (*v0 != 1)
  {
    v1 = 0x7463697274736552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F432068676948;
  }
}

void sub_1D8948BEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 40) == 1)
  {
    sub_1D8949D20(a1, v8, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1D8B13240();
      (*(*(v9 - 8) + 8))(v8, v9);
LABEL_12:
      *a3 = xmmword_1D8B26630;
      goto LABEL_13;
    }

    sub_1D8949D88(v8, type metadata accessor for CVBundle.BundleType);
    CVBundle.latestEstimate.getter(&v14);
    if (v14 >> 60)
    {
      if (v14 >> 60 != 11)
      {

        goto LABEL_12;
      }

      v10 = type metadata accessor for SyntheticDetectionResult(0);
      if (*(swift_projectBox() + *(v10 + 24)))
      {
        v11 = sub_1D8B16BA0();

        if ((v11 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v12 = -1;
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
LABEL_13:
  v12 = 2;
LABEL_14:
  *(a3 + 16) = v12;
}

uint64_t sub_1D8948DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 344) = a2;
  *(v6 + 352) = a5;
  *(v6 + 336) = a1;
  v7 = sub_1D8B14ED0();
  *(v6 + 360) = v7;
  *(v6 + 368) = *(v7 - 8);
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = type metadata accessor for SyntheticDetectionResult(0);
  v8 = swift_task_alloc();
  v9 = *v5;
  *(v6 + 408) = v8;
  *(v6 + 416) = v9;
  *(v6 + 424) = *(v5 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D8948F24, 0, 0);
}

uint64_t sub_1D8948F24()
{
  v49 = v0;
  CVBundle.latestEstimate.getter(&v48);
  v1 = v48;
  if (v48 >> 60 != 11)
  {
    if (v48 >> 60)
    {
      goto LABEL_12;
    }

    v6 = *(v0 + 424);
    v7 = *(v0 + 392);
    v9 = *(v0 + 368);
    v8 = *(v0 + 376);
    v10 = *(v0 + 360);
    v11 = swift_projectBox();
    sub_1D894733C(v11, v7);
    sub_1D883934C(v8);
    v12 = sub_1D8B14BF0();
    (*(v9 + 8))(v8, v10);
    if (v6)
    {
      if (v6 != 1)
      {
        v13 = *(v0 + 392);
        v14 = *(v0 + 352);
        CVBundle.latestEstimate.getter(&v47);
        v48 = v47;
        CVDetection.detection.getter((v0 + 96));
        v15 = *(v0 + 120);
        v16 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v15);
        v17 = (*(v16 + 88))(v15, v16);

        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        *v14 = 0;
        *(v14 + 8) = 0xD000000000000018;
        *(v14 + 16) = 0x80000001D8B44980;
        *(v14 + 24) = 1;
        *(v14 + 32) = v17;
        *(v0 + 136) = 0;
        *(v0 + 144) = 0xD000000000000018;
        *(v0 + 152) = 0x80000001D8B44980;
        *(v0 + 160) = 1;
        *(v0 + 168) = v17;
        sub_1D88E0E0C();
        goto LABEL_20;
      }
    }

    else if ((v12 & 1) == 0)
    {
      v13 = *(v0 + 392);
      v43 = *(v0 + 352);
      CVBundle.latestEstimate.getter(&v47);
      v48 = v47;
      CVDetection.detection.getter((v0 + 256));
      v44 = *(v0 + 280);
      v45 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v44);
      v46 = (*(v45 + 88))(v44, v45);

      __swift_destroy_boxed_opaque_existential_1((v0 + 256));
      *v43 = 0;
      *(v43 + 8) = 0xD000000000000018;
      *(v43 + 16) = 0x80000001D8B44980;
      *(v43 + 24) = 1;
      *(v43 + 32) = v46;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xD000000000000018;
      *(v0 + 312) = 0x80000001D8B44980;
      *(v0 + 320) = 1;
      *(v0 + 328) = v46;
      sub_1D88E0E0C();
      goto LABEL_20;
    }

    v30 = *(v0 + 384);
    v29 = *(v0 + 392);
    result = sub_1D87C4CB4(&unk_1F5426EF0);
    v32 = *(v29 + *(v30 + 44));
    if (*(v32 + 16))
    {
      visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v32 + 32));
      result = v48;
      if (v48 != 181)
      {
        v33 = sub_1D89AD844();

        v13 = *(v0 + 392);
        if ((v33 & 1) == 0)
        {
          v38 = *(v0 + 384);
          v39 = *(v0 + 336);

          *v39 = v12 & 1;
          type metadata accessor for BundleClassification.ClassificationType(0);
          swift_storeEnumTagMultiPayload();
          v40 = *(v13 + *(v38 + 56));
          v41 = type metadata accessor for BundleClassification(0);
          v42 = &v39[*(v41 + 20)];
          *v42 = 2;
          *(v42 + 8) = 0u;
          *(v42 + 24) = 0u;
          sub_1D88E0FE4(2, 0, 0, 0);
          *v42 = 2;
          *(v42 + 8) = 0u;
          *(v42 + 24) = 0u;
          *&v39[*(v41 + 24)] = v40;
          sub_1D8949CB8(v13);
          goto LABEL_11;
        }

        v34 = *(v0 + 352);
        CVBundle.latestEstimate.getter(&v47);
        v48 = v47;
        CVDetection.detection.getter((v0 + 176));
        v35 = *(v0 + 200);
        v36 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), v35);
        v37 = (*(v36 + 88))(v35, v36);

        __swift_destroy_boxed_opaque_existential_1((v0 + 176));
        *v34 = 0;
        *(v34 + 8) = xmmword_1D8B2C4D0;
        *(v34 + 24) = 0x80;
        *(v34 + 32) = v37;
        *(v0 + 216) = 0;
        *(v0 + 224) = xmmword_1D8B2C4D0;
        *(v0 + 240) = 0x80;
        *(v0 + 248) = v37;
        sub_1D88E0E0C();
LABEL_20:
        swift_willThrowTypedImpl();

        sub_1D8949CB8(v13);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = swift_projectBox();
  sub_1D8949D20(v4, v2, type metadata accessor for SyntheticDetectionResult);
  if (*(v2 + *(v3 + 24)))
  {
    v5 = sub_1D8B16BA0();

    if ((v5 & 1) == 0)
    {
      sub_1D8949D88(*(v0 + 408), type metadata accessor for SyntheticDetectionResult);
LABEL_12:
      v25 = *(v0 + 352);
      v48 = v1;
      CVDetection.detection.getter((v0 + 16));
      v26 = *(v0 + 40);
      v27 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
      v28 = (*(v27 + 88))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      *v25 = 0;
      *(v25 + 8) = xmmword_1D8B2C4E0;
      *(v25 + 24) = 1;
      *(v25 + 32) = v28;
      *(v0 + 56) = 0;
      *(v0 + 64) = xmmword_1D8B2C4E0;
      *(v0 + 80) = 1;
      *(v0 + 88) = v28;
      sub_1D88E0E0C();
      swift_willThrowTypedImpl();

LABEL_21:

      v24 = *(v0 + 8);
      goto LABEL_22;
    }
  }

  else
  {
  }

  v19 = *(v0 + 400);
  v18 = *(v0 + 408);
  v20 = *(v0 + 336);
  *v20 = 0;
  type metadata accessor for BundleClassification.ClassificationType(0);
  swift_storeEnumTagMultiPayload();
  v21 = *(v18 + *(v19 + 32));
  sub_1D8949D88(v18, type metadata accessor for SyntheticDetectionResult);
  v22 = type metadata accessor for BundleClassification(0);
  v23 = &v20[*(v22 + 20)];
  *v23 = 2;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v23 = 2;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *&v20[*(v22 + 24)] = v21;
LABEL_11:

  v24 = *(v0 + 8);
LABEL_22:

  return v24();
}

uint64_t sub_1D89495B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D8948DE8(a1, a2, v8, v9, v5 + 16);
}

uint64_t sub_1D8949674(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1D89496BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8949770()
{
  result = qword_1ECA65DD0;
  if (!qword_1ECA65DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DD0);
  }

  return result;
}

unint64_t sub_1D89497C8()
{
  result = qword_1ECA65DD8;
  if (!qword_1ECA65DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DD8);
  }

  return result;
}

unint64_t sub_1D8949820()
{
  result = qword_1ECA65DE0;
  if (!qword_1ECA65DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DE0);
  }

  return result;
}

unint64_t sub_1D8949878()
{
  result = qword_1ECA65DE8;
  if (!qword_1ECA65DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DE8);
  }

  return result;
}

unint64_t sub_1D89498D0()
{
  result = qword_1ECA65DF0;
  if (!qword_1ECA65DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DF0);
  }

  return result;
}

unint64_t sub_1D8949928()
{
  result = qword_1ECA65DF8;
  if (!qword_1ECA65DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65DF8);
  }

  return result;
}

unint64_t sub_1D8949980()
{
  result = qword_1ECA65E00;
  if (!qword_1ECA65E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E00);
  }

  return result;
}

unint64_t sub_1D89499D8()
{
  result = qword_1ECA65E08;
  if (!qword_1ECA65E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E08);
  }

  return result;
}

unint64_t sub_1D8949A30()
{
  result = qword_1ECA65E10;
  if (!qword_1ECA65E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E10);
  }

  return result;
}

unint64_t sub_1D8949A88()
{
  result = qword_1ECA65E18;
  if (!qword_1ECA65E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E18);
  }

  return result;
}

unint64_t sub_1D8949AE0()
{
  result = qword_1ECA65E20;
  if (!qword_1ECA65E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E20);
  }

  return result;
}

unint64_t sub_1D8949B38()
{
  result = qword_1ECA65E28;
  if (!qword_1ECA65E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65E28);
  }

  return result;
}

uint64_t sub_1D8949B8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666E6F4368676968 && a2 == 0xEE0065636E656469;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697373696D726570 && a2 == 0xEA00000000006576 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEB00000000657669)
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

uint64_t sub_1D8949CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8949D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8949D88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8949DE8(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v92 - v8;
  *&v101 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v99 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult(0));
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CVTrackSnapshot(0);
  v103 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8B14060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  v102 = a1;
  if ((sub_1D894AF58(a1) & 1) == 0)
  {
    v30 = xmmword_1D8B26630;
LABEL_12:
    *a3 = v30;
    goto LABEL_14;
  }

  v97 = a3;
  if (!(v20 & 1 | ((*(v3 + *(type metadata accessor for SummarizeClassifier(0) + 20)) & 1) == 0)))
  {
    a3 = v97;
    *v97 = 0;
    a3[1] = 0;
LABEL_14:
    v31 = 2;
    goto LABEL_15;
  }

  v96 = v20;
  v21 = [objc_opt_self() sharedConnection];
  if (!v21)
  {
    __break(1u);
LABEL_116:
    v112 = 0.0;
    v113 = -2.68156159e154;
    sub_1D8B16720();

    v112 = -2.31584178e77;
    v113 = COERCE_DOUBLE(0x80000001D8B43DD0);
    v89 = &a1[v16[10]];
    if (v89[1])
    {
      v90 = *v89;
      v91 = v89[1];
    }

    else
    {
      v91 = 0xEF6E65766967206ELL;
      v90 = 0x6F73616572206F6ELL;
    }

    MEMORY[0x1DA71EFA0](v90, v91);

    sub_1D8B168C0();
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 isVisualIntelligenceSummaryAllowed];

  a1 = v104;
  if (!v23)
  {
    if (qword_1EE0E44C8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D8B151E0();
    __swift_project_value_buffer(v32, qword_1EE0E44D0);
    v33 = sub_1D8B151C0();
    v34 = sub_1D8B161F0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v97;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D8783000, v33, v34, "Summarization is not available with this managed configuration", v37, 2u);
      MEMORY[0x1DA721330](v37, -1, -1);
    }

    *v36 = 0xD00000000000003ELL;
    v36[1] = 0x80000001D8B44A80;
    *(v36 + 16) = 0;
    return;
  }

  v24 = v16;
  if (qword_1EE0E54C0 != -1)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v95 = qword_1EE0E54C8;
    v25 = sub_1D8B0AAA4();
    v16 = v99;
    if (v25)
    {
      goto LABEL_22;
    }

    v107 = v24;
    if (qword_1EE0E9958 != -1)
    {
      swift_once();
    }

    v26 = qword_1EE0E9960;
    v27 = word_1EE0E9968;
    v28 = HIBYTE(word_1EE0E9968);
    LODWORD(v106) = byte_1EE0E996A;
    (*(v107 + 104))(v18, *MEMORY[0x1E69A12A0], v15);
    v93 = *&v26;
    v112 = *&v26;
    v29 = v106;
    LODWORD(v105) = v27;
    LOBYTE(v113) = v27;
    LODWORD(v94) = v28;
    BYTE1(v113) = v28;
    BYTE2(v113) = v106;
    LOBYTE(v108[0]) = 2;
    if (GreymatterAvailability.isAvailable(_:languageOption:)(v108, v18))
    {
      (*(v107 + 8))(v18, v15);
      goto LABEL_22;
    }

    v112 = v93;
    LOBYTE(v113) = v105;
    BYTE1(v113) = v94;
    BYTE2(v113) = v29;
    LOBYTE(v108[0]) = 2;
    v38 = GreymatterAvailability.isRestricted(_:languageOption:)(v108, v18);
    (*(v107 + 8))(v18, v15);
    if (!v38)
    {
      break;
    }

LABEL_22:
    v107 = sub_1D891A6E8();
    v15 = v103;
    v106 = *(v107 + 16);
    if (!v106)
    {
LABEL_107:

      v30 = xmmword_1D8B26640;
      a3 = v97;
      goto LABEL_12;
    }

    v39 = 0;
    v105 = v107 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v12 = *(v12 + 20);
    v24 = (v98 + 56);
    v94 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno;
    while (v39 < *(v107 + 16))
    {
      sub_1D894C8C8(v105 + *(v15 + 72) * v39++, v14, type metadata accessor for CVTrackSnapshot);
      switch(*&v14[v12] >> 60)
      {
        case 1:
          *&v50 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v50;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_39;
        case 2:
          v18 = swift_projectBox();
          v115 = *&v16;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for MetaDetectionResult;
          goto LABEL_39;
        case 3:
        case 8:
          *&v40 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v40;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_39;
        case 4:
          *&v51 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v51;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for ParseDetectorResult;
          goto LABEL_39;
        case 5:
          *&v52 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v52;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for TextDetectorResult;
          goto LABEL_39;
        case 6:
        case 7:
          *&v43 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
          v18 = swift_projectBox();
          v115 = *&v43;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_39;
        case 9:
        case 0xALL:
          v44 = swift_projectBox();
          v18 = v100;
          sub_1D894C8C8(v44, v100, type metadata accessor for AFMResult);
          v115 = *&v101;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult));
          v45 = __swift_allocate_boxed_opaque_existential_1(&v112);
          sub_1D894C818(v18, v45, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          *&v46 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult(0));
          v18 = swift_projectBox();
          v115 = *&v46;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_39;
        case 0xCLL:
          *&v47 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
          v18 = swift_projectBox();
          v115 = *&v47;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_39;
        case 0xDLL:
          *&v53 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
          v18 = swift_projectBox();
          v115 = *&v53;
          v116 = COERCE_DOUBLE(sub_1D894C880(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult));
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v112);
          v42 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_39:
          sub_1D894C8C8(v18, boxed_opaque_existential_1, v42);
          break;
        default:
          *&v48 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0));
          v18 = swift_projectBox();
          v115 = *&v48;
          v116 = COERCE_DOUBLE(sub_1D8906184());
          v49 = __swift_allocate_boxed_opaque_existential_1(&v112);
          sub_1D894733C(v18, v49);
          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
      v54 = swift_dynamicCast();
      v55 = *v24;
      if (v54)
      {
        v55(v9, 0, 1, v16);
        sub_1D894C818(v9, a1, type metadata accessor for MetaDetectionResult);
        if (*a1 == 5 && ((v96 & 1) == 0 || *&a1[v16[8]] == v19))
        {
          v98 = v16[9];
          if (a1[v98] == 2 && v19 - *&a1[v16[8]] > 0.0001)
          {
            goto LABEL_99;
          }

          CVBundle.latestEstimate.getter(&v120);
          v111 = v120;
          CVDetection.detection.getter(v108);
          v18 = v109;
          v56 = v110;
          __swift_project_boxed_opaque_existential_1(v108, v109);
          v57 = *(v56 + 64);
          v58 = v56;
          a1 = v104;
          v57(&v112, v18, v58);
          __swift_destroy_boxed_opaque_existential_1(v108);

          v59 = v112;
          v60 = v113;
          if (v114 >= v112)
          {
            v61 = v112;
          }

          else
          {
            v61 = v114;
          }

          if (v116 < v61)
          {
            v61 = v116;
          }

          if (v118 < v61)
          {
            v61 = v118;
          }

          if (v115 >= v113)
          {
            v62 = v113;
          }

          else
          {
            v62 = v115;
          }

          if (v117 < v62)
          {
            v62 = v117;
          }

          if (v119 < v62)
          {
            v62 = v119;
          }

          if (v112 <= v114)
          {
            v59 = v114;
          }

          if (v59 <= v116)
          {
            v59 = v116;
          }

          if (v59 <= v118)
          {
            v59 = v118;
          }

          if (v113 <= v115)
          {
            v60 = v115;
          }

          if (v60 <= v117)
          {
            v60 = v117;
          }

          if (v60 <= v119)
          {
            v60 = v119;
          }

          v63 = v59 - v61;
          v64 = v60 - v62;
          v123.origin.x = 0.0;
          v123.origin.y = 0.0;
          v123.size.width = 1.0;
          v123.size.height = 1.0;
          v121 = CGRectIntersection(*&v61, v123);
          x = v121.origin.x;
          y = v121.origin.y;
          width = v121.size.width;
          height = v121.size.height;
          v69 = &a1[v16[5]];
          v70 = *v69;
          v71 = v69[1];
          v72 = v69[2];
          v73 = v69[3];
          v74 = v69[4];
          v75 = v69[5];
          v76 = v69[6];
          v77 = v69[7];
          if (v72 >= *v69)
          {
            v78 = *v69;
          }

          else
          {
            v78 = v69[2];
          }

          if (v74 < v78)
          {
            v78 = v69[4];
          }

          if (v76 < v78)
          {
            v78 = v69[6];
          }

          if (v73 >= v71)
          {
            v79 = v69[1];
          }

          else
          {
            v79 = v69[3];
          }

          if (v75 < v79)
          {
            v79 = v69[5];
          }

          if (v77 < v79)
          {
            v79 = v69[7];
          }

          if (v70 <= v72)
          {
            v70 = v69[2];
          }

          if (v70 <= v74)
          {
            v70 = v69[4];
          }

          if (v70 <= v76)
          {
            v70 = v69[6];
          }

          if (v71 <= v73)
          {
            v71 = v69[3];
          }

          if (v71 <= v75)
          {
            v71 = v69[5];
          }

          if (v71 <= v77)
          {
            v71 = v69[7];
          }

          v80 = v70 - v78;
          v81 = v71 - v79;
          v82 = width;
          v83 = height;
          v122 = CGRectIntersection(*&v78, *&x);
          if (width * height * 0.9 > v122.size.width * v122.size.height)
          {
LABEL_99:
            sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
            v15 = v103;
          }

          else
          {
            v18 = a1[v98];
            if (v18 == 3)
            {
              v15 = v103;
              if (*(v95 + v94))
              {
                goto LABEL_116;
              }

              sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
              if (v96)
              {
LABEL_106:

                sub_1D894C7B8(v14, type metadata accessor for CVTrackSnapshot);
                a3 = v97;
                *v97 = 0;
                a3[1] = 0;
                v31 = -1;
                goto LABEL_15;
              }
            }

            else
            {
              sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
              v15 = v103;
              if (v18 == 2)
              {
                goto LABEL_106;
              }
            }
          }
        }

        else
        {
          sub_1D894C7B8(a1, type metadata accessor for MetaDetectionResult);
        }
      }

      else
      {
        v55(v9, 1, 1, v16);
        sub_1D87A14E4(v9, &qword_1ECA64BB8, &qword_1D8B26820);
      }

      sub_1D894C7B8(v14, type metadata accessor for CVTrackSnapshot);
      if (v106 == v39)
      {
        goto LABEL_107;
      }
    }

    __break(1u);
LABEL_114:
    swift_once();
  }

  if (qword_1EE0E44C8 != -1)
  {
    swift_once();
  }

  v84 = sub_1D8B151E0();
  __swift_project_value_buffer(v84, qword_1EE0E44D0);
  v85 = sub_1D8B151C0();
  v86 = sub_1D8B161F0();
  v87 = os_log_type_enabled(v85, v86);
  a3 = v97;
  if (v87)
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_1D8783000, v85, v86, "GMS is not available for summarization.", v88, 2u);
    MEMORY[0x1DA721330](v88, -1, -1);
  }

  *a3 = 0xD000000000000015;
  a3[1] = 0x80000001D8B44AC0;
  v31 = 1;
LABEL_15:
  *(a3 + 16) = v31;
}

uint64_t sub_1D894AF58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B13AD0();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D894C8C8(a1, v16, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1D8B13240();
    (*(*(v17 - 8) + 8))(v16, v17);
LABEL_3:
    v18 = 0;
    return v18 & 1;
  }

  sub_1D894C7B8(v16, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestDetection.getter(&v36);
  v20 = v36 >> 60;
  if ((v36 >> 60) <= 3)
  {
    if (!v20)
    {
      v30 = swift_projectBox();
      sub_1D894733C(v30, v4);
      v31 = sub_1D8A05CB0();
      v32 = sub_1D88E0474(&unk_1F5426EA0, v31);

      sub_1D87A14E4(v4, &qword_1ECA67750, &unk_1D8B1E0C0);

      v18 = v32 ^ 1;
      return v18 & 1;
    }

    if (v20 == 3)
    {
      v21 = swift_projectBox();
      sub_1D894C8C8(v21, v7, type metadata accessor for ObjectDetectorResult);
      v22 = &v7[*(v5 + 28)];
      v23 = *v22;
      v24 = *(v22 + 1);
      v25 = *v22 == 1852270963 && v24 == 0xE400000000000000;
      if (v25 || (sub_1D8B16BA0() & 1) != 0 || v23 == 0x746E656D75636F64 && v24 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
      {
        sub_1D894C7B8(v7, type metadata accessor for ObjectDetectorResult);

        v18 = 1;
        return v18 & 1;
      }

      sub_1D894C7B8(v7, type metadata accessor for ObjectDetectorResult);
    }

LABEL_29:

    goto LABEL_3;
  }

  if (v20 == 11)
  {
    v33 = type metadata accessor for SyntheticDetectionResult(0);
    if ((*(swift_projectBox() + *(v33 + 24)) & 1) == 0)
    {

      v18 = 1;
      return v18 & 1;
    }

    v34 = sub_1D8B16BA0();

    if (v34)
    {
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_3;
  }

  if (v20 != 4)
  {
    goto LABEL_29;
  }

  v26 = swift_projectBox();
  sub_1D894C8C8(v26, v13, type metadata accessor for ParseDetectorResult);
  v27 = *&v13[*(v11 + 28)];
  sub_1D8B139D0();
  v28 = sub_1D8846CD0(v10, v27);
  v29 = *(v35 + 8);
  v29(v10, v8);
  if (v28)
  {
    v18 = 1;
  }

  else
  {
    sub_1D8B13A10();
    v18 = sub_1D8846CD0(v10, v27);
    v29(v10, v8);
  }

  sub_1D894C7B8(v13, type metadata accessor for ParseDetectorResult);

  return v18 & 1;
}

uint64_t sub_1D894B4B0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  v15 = a2[2];
  v16 = v4;
  v17 = a2[4];
  v5 = a2[1];
  v14[0] = *a2;
  v14[1] = v5;
  if (*(v2 + *(type metadata accessor for SummarizeClassifier(0) + 20)) == 1 && (BYTE8(v15) & 1) == 0 || (sub_1D894AF58(a1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B88, &unk_1D8B267B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  *(inited + 32) = 5;
  v7 = sub_1D893EA58(&unk_1F5426B58);
  v8 = 1.0;
  if (*(v7 + 16))
  {
    v9 = sub_1D881F7DC();
    if (v10)
    {
      v8 = *(*(v7 + 56) + 8 * v9);
    }
  }

  *(inited + 40) = v8;
  v11 = sub_1D893EA58(inited);
  swift_setDeallocating();
  v12 = sub_1D89DF934(a1, v14, v11);

  return v12;
}

uint64_t sub_1D894B5F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v6 + 232) = v5;
  *(v6 + 240) = a5;
  *(v6 + 216) = a1;
  *(v6 + 224) = a2;
  type metadata accessor for CVTrackSnapshot(0);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = type metadata accessor for CVBundle.BundleType(0);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v8 = sub_1D8B13240();
  *(v6 + 280) = v8;
  *(v6 + 288) = *(v8 - 8);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1D894B7A0, 0, 0);
}

uint64_t sub_1D894B7A0()
{
  v83 = v0;
  v1 = CVBundle.textDetectorResults.getter();
  CVBundle.latestEstimate.getter(&v81);
  v82 = v81;
  CVDetection.detection.getter((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 88))(v2, v3);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!v1[2])
  {
    v10 = 0xD000000000000015;
    v12 = (v0 + 176);
    v13 = *(v0 + 240);

    v11 = 0x80000001D8B44830;
    v14 = 208;
    v15 = 200;
    v16 = 192;
    v17 = 184;
    goto LABEL_7;
  }

  v5 = _s22VisualIntelligenceCore31TextDetectionReadabilityUtilityV016generateReadableD0_15imageResolution21skipReadabiltySorting5isRTL13minConfidenceSSSayAA0D14DetectorResultVG_So6CGSizeVS2bSftFZ_0(v1, 1, *(v0 + 360), *(v0 + 368), 0.0);
  v7 = v6;

  if (sub_1D8B15A70() < 101)
  {
    v12 = (v0 + 56);
    v13 = *(v0 + 240);

    v11 = 0x80000001D8B449A0;
    v10 = 0xD00000000000002ELL;
    v14 = 88;
    v15 = 80;
    v16 = 72;
    v17 = 64;
    goto LABEL_7;
  }

  v8 = sub_1D894C1D0(v5, v7);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = (v0 + 136);
    v13 = *(v0 + 240);

    v14 = 168;
    v15 = 160;
    v16 = 152;
    v17 = 144;
LABEL_7:
    *v13 = 0;
    *(v13 + 8) = v10;
    *(v13 + 16) = v11;
    *(v13 + 24) = 0x80;
    *(v13 + 32) = v4;
    *v12 = 0;
    *(v0 + v17) = v10;
    *(v0 + v16) = v11;
    *(v0 + v15) = 0x80;
    *(v0 + v14) = v4;
    sub_1D88E0E0C();
    swift_willThrowTypedImpl();

    v18 = *(v0 + 8);
    goto LABEL_8;
  }

  if (qword_1EE0E44C8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 352);
  v21 = *(v0 + 224);
  v22 = sub_1D8B151E0();
  __swift_project_value_buffer(v22, qword_1EE0E44D0);
  sub_1D894C8C8(v21, v20, type metadata accessor for CVBundle);

  v23 = sub_1D8B151C0();
  v24 = sub_1D8B161F0();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 352);
  if (v25)
  {
    v27 = *(v0 + 272);
    v28 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v82 = v77;
    *v28 = 134218242;
    v29 = sub_1D8B15A70();

    *(v28 + 4) = v29;

    *(v28 + 12) = 2080;
    sub_1D894C8C8(v26, v27, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = *(v0 + 312);
    v32 = *(v0 + 280);
    v33 = *(v0 + 288);
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *(v33 + 32);
      v34(*(v0 + 312), *(v0 + 272), *(v0 + 280));
    }

    else
    {
      v35 = *(v0 + 248);
      sub_1D894C818(*(v0 + 272), v35, type metadata accessor for CVTrackSnapshot);
      (*(v33 + 16))(v31, v35, v32);
      sub_1D894C7B8(v35, type metadata accessor for CVTrackSnapshot);
      v34 = *(v33 + 32);
    }

    v36 = *(v0 + 352);
    v37 = *(v0 + 320);
    v39 = *(v0 + 280);
    v38 = *(v0 + 288);
    v34(v37, *(v0 + 312), v39);
    sub_1D894C880(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v40 = sub_1D8B16B50();
    v42 = v41;
    (*(v38 + 8))(v37, v39);
    sub_1D894C7B8(v36, type metadata accessor for CVBundle);
    v43 = sub_1D89AC714(v40, v42, &v82);

    *(v28 + 14) = v43;
    _os_log_impl(&dword_1D8783000, v23, v24, "Detected summarizable text of length: %ld (bundle: %s)", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1DA721330](v77, -1, -1);
    MEMORY[0x1DA721330](v28, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_1D894C7B8(v26, type metadata accessor for CVBundle);
  }

  v44 = *(v0 + 336);
  v45 = *(v0 + 328);
  v46 = *(v0 + 224);
  sub_1D894C8C8(v46, *(v0 + 344), type metadata accessor for CVBundle);
  sub_1D894C8C8(v46, v44, type metadata accessor for CVBundle);
  sub_1D894C8C8(v46, v45, type metadata accessor for CVBundle);
  v47 = sub_1D8B151C0();
  v48 = sub_1D8B16200();
  v49 = os_log_type_enabled(v47, v48);
  v51 = *(v0 + 336);
  v50 = *(v0 + 344);
  v52 = *(v0 + 328);
  if (v49)
  {
    v78 = v48;
    log = v47;
    v53 = *(v0 + 264);
    v54 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v80 = v76;
    *v54 = 134218498;
    v55 = *(CVBundle.textDetections.getter() + 2);

    sub_1D894C7B8(v50, type metadata accessor for CVBundle);
    *(v54 + 4) = v55;
    *(v54 + 12) = 2048;
    CVBundle.latestEstimate.getter(&v81);
    v82 = v81;
    CVDetection.detection.getter((v0 + 96));
    v57 = *(v0 + 120);
    v56 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v57);
    v58 = (*(v56 + 88))(v57, v56);

    sub_1D894C7B8(v51, type metadata accessor for CVBundle);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    *(v54 + 14) = v58;
    *(v54 + 22) = 2080;
    sub_1D894C8C8(v52, v53, type metadata accessor for CVBundle.BundleType);
    v59 = swift_getEnumCaseMultiPayload();
    v61 = *(v0 + 288);
    v60 = *(v0 + 296);
    v62 = *(v0 + 280);
    if (v59 == 1)
    {
      v63 = *(v61 + 32);
      v63(*(v0 + 296), *(v0 + 264), *(v0 + 280));
    }

    else
    {
      v64 = *(v0 + 248);
      sub_1D894C818(*(v0 + 264), v64, type metadata accessor for CVTrackSnapshot);
      (*(v61 + 16))(v60, v64, v62);
      sub_1D894C7B8(v64, type metadata accessor for CVTrackSnapshot);
      v63 = *(v61 + 32);
    }

    v65 = *(v0 + 328);
    v66 = *(v0 + 304);
    v68 = *(v0 + 280);
    v67 = *(v0 + 288);
    v63(v66, *(v0 + 296), v68);
    sub_1D894C880(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v69 = sub_1D8B16B50();
    v71 = v70;
    (*(v67 + 8))(v66, v68);
    sub_1D894C7B8(v65, type metadata accessor for CVBundle);
    v72 = sub_1D89AC714(v69, v71, &v80);

    *(v54 + 24) = v72;
    _os_log_impl(&dword_1D8783000, log, v78, "Detected summarizable bundle latest estimate count: %ld at %f (bundle: %s)", v54, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1DA721330](v76, -1, -1);
    MEMORY[0x1DA721330](v54, -1, -1);
  }

  else
  {
    sub_1D894C7B8(*(v0 + 344), type metadata accessor for CVBundle);

    sub_1D894C7B8(v52, type metadata accessor for CVBundle);
    sub_1D894C7B8(v51, type metadata accessor for CVBundle);
  }

  v73 = *(v0 + 216);
  type metadata accessor for BundleClassification.ClassificationType(0);
  swift_storeEnumTagMultiPayload();
  v74 = type metadata accessor for BundleClassification(0);
  v75 = v73 + *(v74 + 20);
  *v75 = 2;
  *(v75 + 8) = 0u;
  *(v75 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v75 = 2;
  *(v75 + 8) = 0u;
  *(v75 + 24) = 0u;
  *(v73 + *(v74 + 24)) = v4;

  v18 = *(v0 + 8);
LABEL_8:

  return v18();
}