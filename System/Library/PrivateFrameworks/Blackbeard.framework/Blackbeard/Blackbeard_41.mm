uint64_t sub_1E6364F9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v65 = a3;
  v62 = a2;
  v72 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v61 = *(v5 - 8);
  v71 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788B0, &qword_1E65FDFD0);
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v56 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v56 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - v22;
  v60 = &v56 - v22;
  v24 = sub_1E65DE978();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v58 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E65DE728();
  v64 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *v3;
  sub_1E5E1D9CC(v3, v23, type metadata accessor for AppComposer);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = v27 + v11;
  v29 = swift_allocObject();
  sub_1E5E1FA80(v23, v29 + v27);
  sub_1E5E1D9CC(v4, v21, type metadata accessor for AppComposer);
  v30 = swift_allocObject();
  sub_1E5E1FA80(v21, v30 + v27);
  sub_1E5E1D9CC(v4, v18, type metadata accessor for AppComposer);
  v31 = swift_allocObject();
  sub_1E5E1FA80(v18, v31 + v27);
  v57 = v4;
  sub_1E5E1D9CC(v4, v15, type metadata accessor for AppComposer);
  v32 = swift_allocObject();
  sub_1E5E1FA80(v15, v32 + v27);
  v33 = v4;
  v34 = v59;
  sub_1E5E1D9CC(v33, v59, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  sub_1E5E1FA80(v34, v35 + v27);
  sub_1E65DE968();
  sub_1E65DE718();
  v36 = v68;
  sub_1E636936C(v72, v68);
  v37 = *(v61 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = (v71 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_1E5FAB460(v36, v40 + v38, &qword_1ED073988, &unk_1E65F72F0);
  *(v40 + v39) = v62;
  type metadata accessor for AppFeature(0);
  sub_1E6369488(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v61 = sub_1E6369488(&qword_1ED0788B8, MEMORY[0x1E699CBF0], MEMORY[0x1E699CBE8]);

  sub_1E65E4DE8();
  v41 = v60;
  sub_1E5E1D9CC(v57, v60, type metadata accessor for AppComposer);
  v42 = v65;
  v43 = v65[5];
  v57 = v65[3];
  v58 = v43;
  v59 = v65[7];
  v62 = v65[9];
  v44 = v68;
  sub_1E636936C(v72, v68);
  v45 = (v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_1E5E1FA80(v41, v46 + v27);
  v47 = (v46 + v45);
  v48 = v42[3];
  v47[2] = v42[2];
  v47[3] = v48;
  v47[4] = v42[4];
  v49 = v42[1];
  *v47 = *v42;
  v47[1] = v49;
  sub_1E5FAB460(v44, v46 + ((v45 + v37 + 80) & ~v37), &qword_1ED073988, &unk_1E65F72F0);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E636968C;
  *(v50 + 24) = v46;

  v52 = v69;
  v51 = v70;
  v53 = v73;
  v54 = sub_1E65E4F08();

  (*(v66 + 8))(v53, v67);
  (*(v64 + 8))(v52, v51);
  return v54;
}

uint64_t sub_1E6365754@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1E65DE788();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E60EF310(v7);
  sub_1E5DFE50C(v4, &qword_1ED0737C8, &unk_1E6605140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1E5DFE50C(v7, &qword_1ED075FB8, &qword_1E65F4690);
    v13 = 0;
    v14 = -4;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v15 = sub_1E65DE778();
    result = (*(v9 + 8))(v11, v8);
    v13 = v15;
    v14 = 64;
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_1E6365990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v10 + 8))(v12, v9);
  sub_1E5FAB460(v8, v6, &qword_1ED075800, &unk_1E6606280);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = *v6;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v6, &qword_1ED075800, &unk_1E6606280);
LABEL_8:
    v17 = 0;
    return v17 & 1;
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
  v15 = *v6;
  v16 = sub_1E65D76A8();
  EnumCaseMultiPayload = (*(*(v16 - 8) + 8))(v6 + v14, v16);
LABEL_6:
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v19[-2] = v19[0];
  v17 = sub_1E5F95F4C(sub_1E636B2F0, &v19[-4], v15);

  return v17 & 1;
}

uint64_t sub_1E6365C38@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1E65DE788();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E60EF310(v7);
  sub_1E5DFE50C(v4, &qword_1ED0737C8, &unk_1E6605140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1E5DFE50C(v7, &qword_1ED075FB8, &qword_1E65F4690);
LABEL_6:
    v14 = 0;
    v15 = -4;
    goto LABEL_7;
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = sub_1E65DE768();
  if (!*(v13 + 16))
  {
    (*(v9 + 8))(v11, v8);

    goto LABEL_6;
  }

  v14 = *(v13 + 32);

  v15 = sub_1E65DE778();
  result = (*(v9 + 8))(v11, v8);
LABEL_7:
  *a1 = v14;
  *(a1 + 8) = v15;
  return result;
}

uint64_t sub_1E6365EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v10 + 8))(v12, v9);
  sub_1E5FAB460(v8, v6, &qword_1ED075800, &unk_1E6606280);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = *v6;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v6, &qword_1ED075800, &unk_1E6606280);
LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
  v15 = *v6;
  v16 = sub_1E65D76A8();
  EnumCaseMultiPayload = (*(*(v16 - 8) + 8))(v6 + v14, v16);
LABEL_6:
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  v20[-2] = v20[0];
  v17 = sub_1E5F95F4C(sub_1E636B2D0, &v20[-4], v15);

  v18 = v17 ^ 1;
  return v18 & 1;
}

uint64_t sub_1E6366158(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  sub_1E65DE488();
  if (v1 == v6 && v2 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E63661EC(uint64_t a1)
{
  v1[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D0, &qword_1E65FE058);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6366294, 0, 0);
}

uint64_t sub_1E6366294()
{
  v1 = v0[7];
  v0[10] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[11] = sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6366344, v3, v2);
}

uint64_t sub_1E6366344()
{

  sub_1E5E20198(26, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075EB0, &qword_1E65F4260);
  v0[13] = v1;
  v2 = swift_dynamicCast();
  v3 = *(v1 - 8);
  v0[14] = v3;
  v4 = *(v3 + 56);
  if (v2)
  {
    v5 = v3;
    v7 = v0[8];
    v6 = v0[9];
    v4(v7, 0, 1, v1);
    (*(v5 + 32))(v6, v7, v1);
    v8 = 0;
  }

  else
  {
    v9 = v0[8];
    v8 = 1;
    v4(v9, 1, 1, v1);
    sub_1E5DFE50C(v9, &qword_1ED0788D0, &qword_1E65FE058);
  }

  v4(v0[9], v8, 1, v1);

  return MEMORY[0x1EEE6DFA0](sub_1E63664F0, 0, 0);
}

uint64_t sub_1E63664F0()
{
  v1 = v0[14];
  v2 = v0[9];
  v0[15] = v1;
  if ((*(v1 + 48))(v2, 1) == 1)
  {
    sub_1E5DFE50C(v2, &qword_1ED0788D0, &qword_1E65FE058);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[16] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E636663C, v6, v5);
  }
}

uint64_t sub_1E636663C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];

  sub_1E65E4E28();
  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63666DC()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E63661EC(v0 + v3);
}

uint64_t sub_1E63667A8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E62D4088(a1, a2, v2 + v7);
}

uint64_t sub_1E6366888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[193] = a4;
  v4[187] = a3;
  v4[181] = a2;
  v4[175] = a1;
  sub_1E65D76A8();
  v4[199] = swift_task_alloc();
  v5 = sub_1E65D8E88();
  v4[205] = v5;
  v4[211] = *(v5 - 8);
  v4[217] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FE0, &unk_1E660F450);
  v4[223] = swift_task_alloc();
  v6 = sub_1E65D8668();
  v4[229] = v6;
  v4[235] = *(v6 - 8);
  v4[236] = swift_task_alloc();
  v7 = type metadata accessor for AppComposer(0);
  v4[237] = v7;
  v8 = *(v7 - 8);
  v4[238] = v8;
  v4[239] = *(v8 + 64);
  v4[240] = swift_task_alloc();
  v4[241] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6366A84, 0, 0);
}

uint64_t sub_1E6366A84()
{
  v1 = v0[241];
  v2 = v0[239];
  v3 = v0[238];
  v11 = v0[193];
  v12 = v0[240];
  v4 = v0[181];
  v5 = v0[175];
  sub_1E5E1D9CC(v11, v1, type metadata accessor for AppComposer);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[242] = v7;
  sub_1E5E1FA80(v1, v7 + v6);
  v8 = (v7 + ((v6 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v8 = v5;
  v8[1] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788C0, &qword_1E65FE040);
  swift_asyncLet_begin();
  sub_1E5E1D9CC(v11, v12, type metadata accessor for AppComposer);
  v9 = swift_allocObject();
  v0[243] = v9;
  sub_1E5E1FA80(v12, v9 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765A8, &qword_1E65F5A38);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 169, sub_1E6366C50, v0 + 162);
}

uint64_t sub_1E6366C50()
{
  *(v1 + 1952) = v0;
  if (v0)
  {
    v2 = sub_1E6367508;
  }

  else
  {
    v2 = sub_1E6366C84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6366C84()
{
  v14 = v0;
  v1 = v0[235];
  v2 = v0[229];
  v3 = v0[223];

  sub_1E6059E28(v4, v3);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1E5DFE50C(v0[223], &qword_1ED075FE0, &unk_1E660F450);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v5 = sub_1E65E3B68();
    __swift_project_value_buffer(v5, qword_1EE2EA2A0);

    v6 = sub_1E65E3B48();
    v7 = sub_1E65E6328();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[181];
      v9 = v0[175];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E5DFD4B0(v9, v8, &v13);
      _os_log_impl(&dword_1E5DE9000, v6, v7, "Failed to find workout with identifier %s to add to stack.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E694F1C0](v11, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);
    }

    return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E63674B0, v0 + 182);
  }

  else
  {
    (*(v0[235] + 32))(v0[236], v0[223], v0[229]);

    return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 167, sub_1E6366EE4, v0 + 194);
  }
}

uint64_t sub_1E6366EE4()
{
  *(v1 + 1960) = v0;
  if (v0)
  {
    v2 = sub_1E6367650;
  }

  else
  {
    v2 = sub_1E6366F18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1E6366F18()
{
  if ((*(v0 + 1344) & 1) == 0 && *(v0 + 1336) == -1)
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 1736);
    v7 = *(v0 + 1688);

    sub_1E65D8658();
    sub_1E65D8618();
    sub_1E65D7698();
    sub_1E65D88E8();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AppEnvironment(0);
    Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
    *(v0 + 1968) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073118, &qword_1E65ECF70);
    v4 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v5 = swift_allocObject();
    *(v0 + 1976) = v5;
    *(v5 + 16) = xmmword_1E65EA670;
    sub_1E5E1D9CC(v1, v5 + v4, MEMORY[0x1E69CBBF0]);
    v8 = (Queue + *Queue);
    v6 = swift_task_alloc();
    *(v0 + 1984) = v6;
    *v6 = v0;
    v6[1] = sub_1E6367178;

    v8(v5);
  }
}

uint64_t sub_1E6367178()
{
  *(*v1 + 1992) = v0;

  if (v0)
  {

    v2 = sub_1E63677F8;
  }

  else
  {

    v2 = sub_1E63672DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63672DC()
{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[229];
  sub_1E636B1A8(v0[217], MEMORY[0x1E69CBBF0]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E6367388, v0 + 224);
}

uint64_t sub_1E63673E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6367580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6367650()
{
  (*(v0[235] + 8))(v0[236], v0[229]);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E63676D0, v0 + 200);
}

uint64_t sub_1E6367728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63677F8()
{
  v1 = v0[236];
  v2 = v0[235];
  v3 = v0[229];
  sub_1E636B1A8(v0[217], MEMORY[0x1E69CBBF0]);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E63678A4, v0 + 212);
}

uint64_t sub_1E63678FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63679CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6366888(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E6367ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6367AE0, 0, 0);
}

uint64_t sub_1E6367AE0()
{
  v2 = v0[10];
  v1 = v0[11];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v3 = CatalogService.fetchRemoteCatalogWorkouts.getter();
  v0[12] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v6 = sub_1E600AA08(inited);
  v0[13] = v6;
  swift_setDeallocating();
  sub_1E6065BF0(inited + 32);
  v9 = (v3 + *v3);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1E6367C74;

  return v9(v6);
}

uint64_t sub_1E6367C74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1E6367DD0;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_1E6367DAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6367DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6367E3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D8948();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6367EFC, 0, 0);
}

uint64_t sub_1E6367EFC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 56) = v2;
  v5 = (Queue + *Queue);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1E6368010;

  return v5();
}

uint64_t sub_1E6368010(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1E6180EA8;
  }

  else
  {

    v4 = sub_1E636812C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E636812C()
{
  v11 = v0;
  v1 = v0[10];
  v10 = v0[9];

  sub_1E636978C(&v10);
  if (v1)
  {
  }

  else
  {

    v3 = *(v10 + 16);
    if (v3)
    {
      v5 = v0[5];
      v4 = v0[6];
      v6 = v0[4];
      (*(v5 + 16))(v4, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v3 - 1), v6);

      v7 = sub_1E65D8918();
      (*(v5 + 8))(v4, v6);
    }

    else
    {

      v7 = 0;
    }

    v8 = v0[2];
    *v8 = v7;
    *(v8 + 8) = v3 == 0;

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1E6368290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8948();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6368360, 0, 0);
}

uint64_t sub_1E6368360()
{
  *(v0 + 136) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 140) = *(type metadata accessor for AppEnvironment(0) + 132);
  Queue = UpNextQueueService.queryUpNextQueue.getter();
  *(v0 + 72) = v2;
  v5 = (Queue + *Queue);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1E636847C;

  return v5();
}

uint64_t sub_1E636847C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_1E6368BE0;
  }

  else
  {
    v4 = sub_1E6368590;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6368590()
{
  v30 = v0;
  v1 = v0[11];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[6];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v6 = v0[2];
      v5 = v0[3];
      v7 = *(v4 + 16);
      v7(v0[7], v0[11] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[5]);
      if (sub_1E65D88F8() == v6 && v8 == v5)
      {
        break;
      }

      v10 = sub_1E65E6C18();

      if (v10)
      {
        goto LABEL_17;
      }

      ++v3;
      (*(v4 + 8))(v0[7], v0[5]);
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

LABEL_17:

    v20 = v0[8];
    v21 = v0[5];
    (*(v0[6] + 32))(v20, v0[7], v21);
    Queue = UpNextQueueService.processUpNextQueueUpdates.getter();
    v0[13] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073118, &qword_1E65ECF70);
    v24 = *(sub_1E65D8E88() - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    v0[14] = v26;
    *(v26 + 16) = xmmword_1E65EA670;
    v7(v26 + v25, v20, v21);
    swift_storeEnumTagMultiPayload();
    v28 = (Queue + *Queue);
    v27 = swift_task_alloc();
    v0[15] = v27;
    *v27 = v0;
    v27[1] = sub_1E63689F8;

    return v28(v26);
  }

  else
  {
LABEL_10:

    if (qword_1EE2D7790 != -1)
    {
LABEL_21:
      swift_once();
    }

    v11 = sub_1E65E3B68();
    __swift_project_value_buffer(v11, qword_1EE2EA2A0);

    v12 = sub_1E65E3B48();
    v13 = sub_1E65E6328();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[2];
      v14 = v0[3];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1E5DFD4B0(v15, v14, &v29);
      _os_log_impl(&dword_1E5DE9000, v12, v13, "Failed to find workout with identifer %s to remove from stack.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E694F1C0](v17, -1, -1);
      MEMORY[0x1E694F1C0](v16, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1E63689F8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_1E6368C54;
  }

  else
  {

    v2 = sub_1E6368B5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6368B5C()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6368BE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6368C54()
{
  (*(v0[6] + 8))(v0[8], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6368CD8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6368290(a1, a2, v2 + v7);
}

uint64_t sub_1E6368DB8(char a1, char a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  *(v3 + 24) = type metadata accessor for ToastAction(0);
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6368E54, 0, 0);
}

uint64_t sub_1E6368E54()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for AppComposer(0) + 20);
  v3 = sub_1E65DAE38();
  if (v3 == sub_1E65DAE38())
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 49);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072838, &qword_1E65EBE80);
    v7 = *(v6 + 48);
    *v4 = 1;
    v4[v7] = v5;
    type metadata accessor for ToastResource(0);
    swift_storeEnumTagMultiPayload();
    v4[*(v6 + 64)] = 1;
    swift_storeEnumTagMultiPayload();
    v8 = (v2 + *(type metadata accessor for AppEnvironment(0) + 128));
    v17 = (*v8 + **v8);
    v9 = swift_task_alloc();
    *(v0 + 40) = v9;
    *v9 = v0;
    v9[1] = sub_1E6369110;
    v10 = *(v0 + 32);

    return v17(v10);
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v12 = sub_1E65E3B68();
    __swift_project_value_buffer(v12, qword_1EE2EA2A0);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "Ignoring stack toast presentation for unsupported platform", v15, 2u);
      MEMORY[0x1E694F1C0](v15, -1, -1);
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1E6369110()
{

  return MEMORY[0x1EEE6DFA0](sub_1E636920C, 0, 0);
}

uint64_t sub_1E636920C()
{
  sub_1E636B1A8(*(v0 + 32), type metadata accessor for ToastAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E636928C(char a1, char a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6368DB8(a1, a2, v2 + v7);
}

uint64_t sub_1E636936C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6369488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63694D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v17 = *a1;
  HIDWORD(v16) = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  sub_1E65DE488();
  v9 = v18;
  v10 = v19;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v17;
  *(v12 + 40) = BYTE4(v16);
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  v13 = *(a4 + 3);
  *(v12 + 96) = *(a4 + 2);
  *(v12 + 112) = v13;
  *(v12 + 128) = *(a4 + 4);
  v14 = *(a4 + 1);
  *(v12 + 64) = *a4;
  *(v12 + 80) = v14;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v8, &unk_1E65FE028, v12);
}

uint64_t sub_1E636968C(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);

  return sub_1E63694D0(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E636978C(uint64_t *a1)
{
  v2 = *(sub_1E65D8948() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B294(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E6369834(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E6369834(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E65D8948();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D8948() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E6369C08(v8, v9, a1, v4);
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
    return sub_1E6369960(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E6369960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D8948();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v33 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = v16 + v19 * (a3 - 1);
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      v45(v47, v22, v8);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_1E65D8918();
      v28 = sub_1E65D8918();
      v29 = *v44;
      (*v44)(v26, v8);
      result = v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = v38 + v34;
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v30)(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E6369C08(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v9 = sub_1E65D8948();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v121 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v131 = &v114 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v137 = &v114 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v136 = &v114 - v18;
  v19 = a3[1];
  v126 = v17;
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v9 = v126;
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E636AC44(v21);
      v21 = result;
    }

    v139 = v21;
    v110 = *(v21 + 2);
    if (v110 >= 2)
    {
      while (*a3)
      {
        v111 = *&v21[16 * v110];
        v112 = *&v21[16 * v110 + 24];
        sub_1E636A5EC(*a3 + *(v9 + 72) * v111, *a3 + *(v9 + 72) * *&v21[16 * v110 + 16], *a3 + *(v9 + 72) * v112, v5);
        if (v6)
        {
        }

        if (v112 < v111)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E636AC44(v21);
        }

        if (v110 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v113 = &v21[16 * v110];
        *v113 = v111;
        *(v113 + 1) = v112;
        v139 = v21;
        result = sub_1E636ABB8(v110 - 1);
        v21 = v139;
        v110 = *(v139 + 2);
        if (v110 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v115 = a4;
  v20 = 0;
  v134 = (v17 + 8);
  v135 = v17 + 16;
  v133 = (v17 + 32);
  v21 = MEMORY[0x1E69E7CC0];
  v119 = a3;
  v138 = v9;
  while (1)
  {
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v128 = v19;
      v116 = v6;
      v22 = *a3;
      v118 = v20;
      v23 = v126[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v132 = v22;
      v25 = v9;
      v26 = v126[2];
      v27 = v136;
      v26(v136, v5, v25);
      v28 = &v24[v23 * v20];
      v29 = v137;
      v124 = v26;
      v26(v137, v28, v25);
      v129 = sub_1E65D8918();
      v125 = sub_1E65D8918();
      v30 = v126[1];
      v30(v29, v25);
      v123 = v30;
      result = (v30)(v27, v25);
      v31 = v118 + 2;
      v130 = v23;
      v32 = &v132[v23 * (v118 + 2)];
      while (1)
      {
        v33 = v128;
        if (v128 == v31)
        {
          break;
        }

        v34 = v124;
        LODWORD(v132) = v129 < v125;
        v35 = v136;
        v36 = v138;
        (v124)(v136, v32, v138);
        v37 = v137;
        v34(v137, v5, v36);
        v38 = sub_1E65D8918();
        v39 = sub_1E65D8918();
        v40 = v123;
        (v123)(v37, v36);
        result = v40(v35, v36);
        v21 = v127;
        ++v31;
        v32 += v130;
        v5 += v130;
        if (((v132 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v116;
      v20 = v118;
      a3 = v119;
      v9 = v138;
      if (v129 < v125)
      {
        if (v33 < v118)
        {
          goto LABEL_123;
        }

        if (v118 < v33)
        {
          v41 = v130 * (v33 - 1);
          v5 = v33 * v130;
          v128 = v33;
          v42 = v33;
          v43 = v118;
          v44 = v118 * v130;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v133;
              (*v133)(v121, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v46)(&v45[v41], v121, v9);
              a3 = v119;
              v21 = v127;
            }

            ++v43;
            v41 -= v130;
            v5 -= v130;
            v44 += v130;
          }

          while (v43 < v42);
          v6 = v116;
          v20 = v118;
          v33 = v128;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v115)
      {
        if (__OFADD__(v20, v115))
        {
          goto LABEL_124;
        }

        if (v20 + v115 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v115;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_1E636ADD0((v48 > 1), v49 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v117;
    if (!*v117)
    {
      goto LABEL_131;
    }

    v122 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
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

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_1E636A5EC(*a3 + v126[9] * v91, *a3 + v126[9] * *&v21[16 * v5 + 32], *a3 + v126[9] * v92, v52);
        if (v6)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E636AC44(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v139 = v21;
        result = sub_1E636ABB8(v5);
        v21 = v139;
        v50 = *(v139 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v122;
    if (v122 >= v19)
    {
      goto LABEL_94;
    }
  }

  v116 = v6;
  v94 = *a3;
  v95 = v126[9];
  v132 = v126[2];
  v96 = &v94[v95 * (v33 - 1)];
  v129 = -v95;
  v130 = v94;
  v118 = v20;
  v97 = (v20 - v33);
  v120 = v95;
  v98 = &v94[v33 * v95];
  v122 = v5;
LABEL_85:
  v128 = v33;
  v123 = v98;
  v124 = v97;
  v125 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v136;
    v101 = v132;
    (v132)(v136, v98, v9);
    v102 = v137;
    v101(v137, v99, v138);
    v103 = sub_1E65D8918();
    v104 = sub_1E65D8918();
    v105 = *v134;
    v106 = v102;
    v9 = v138;
    (*v134)(v106, v138);
    result = v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v128 + 1;
      v96 = v125 + v120;
      v97 = v124 - 1;
      v5 = v122;
      v98 = &v123[v120];
      if (v128 + 1 != v122)
      {
        goto LABEL_85;
      }

      v6 = v116;
      v20 = v118;
      a3 = v119;
      v21 = v127;
      if (v122 < v118)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v130)
    {
      break;
    }

    v107 = *v133;
    v108 = v131;
    (*v133)(v131, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v129;
    v98 += v129;
    if (__CFADD__(v97++, 1))
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
  return result;
}

uint64_t sub_1E636A5EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = sub_1E65D8948();
  v8 = *(v62 - 8);
  v9 = MEMORY[0x1EEE9AC00](v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v8 + 16);
      v51 = (v8 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = sub_1E65D8918();
          v46 = sub_1E65D8918();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v57 < v46)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v55 = v14;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = sub_1E65D8918();
        v27 = sub_1E65D8918();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v26 >= v27)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  sub_1E636ACE8(&v65, &v64, &v63, MEMORY[0x1E69CB6B0]);
  return 1;
}

uint64_t sub_1E636ABB8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E636AC44(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E636ACE8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1E636ADD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788C8, &qword_1E660EF70);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E636AED4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E608FA38(a1, v4, v5, v6, v9, v7, v8, v1 + 64);
}

uint64_t sub_1E636AFB0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6367ABC(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E636B0CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6367E3C(a1, v1 + v5);
}

uint64_t sub_1E636B1A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E636B310@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for AppStateService();
  Description = v3[-1].Description;
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = v4;
  v56 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = v45 - v6;
  v50 = type metadata accessor for SyncService();
  v48 = v50[-1].Description;
  MEMORY[0x1EEE9AC00](v50);
  v49 = v7;
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CatalogService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D8, &qword_1E65FE0B0);
  v54 = *(v51 - 8);
  v13 = MEMORY[0x1EEE9AC00](v51);
  v52 = v14;
  v53 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = v45 - v15;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v17 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v18 = type metadata accessor for AppEnvironment(0);
  v47 = v18[7];
  v19 = v18[12];
  v20 = v18[31];
  v45[0] = *(v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  v45[1] = swift_getKeyPath();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = v10[2];
  v23 = v17;
  v46 = v17;
  v22(v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v19, v9);
  v24 = v48;
  v25 = v50;
  v48[2](v8, v23 + v20, v50);
  v26 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v27 = (v11 + *(v24 + 80) + v26) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  (v10[4])(v28 + v26, v12, v9);
  (v24)[4]((v28 + v27), v8, v25);

  v29 = v59;
  sub_1E65E4E08();
  v30 = v61;
  v31 = v51;
  v61[3] = v51;
  v30[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v33 = v54;
  v34 = *(v54 + 16);
  v34(boxed_opaque_existential_1, v29, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E65EA670;
  v36 = sub_1E65E60A8();
  (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
  v38 = v56;
  v37 = Description;
  v39 = v58;
  Description[2](v56, v46 + v47, v58);
  v40 = v53;
  v34(v53, v29, v31);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = (v55 + *(v33 + 80) + v41) & ~*(v33 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  (v37)[4]((v43 + v41), v38, v39);
  (*(v33 + 32))(v43 + v42, v40, v31);
  *(v35 + 32) = sub_1E6059EAC(0, 0, v60, &unk_1E65FE0F0, v43);
  result = (*(v33 + 8))(v59, v31);
  v61[5] = v35;
  return result;
}

uint64_t sub_1E636B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_1E65D76A8();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075380, &qword_1E65F1A08);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636BB0C, 0, 0);
}

uint64_t sub_1E636BB0C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = *(v0 + 128);
  if (Strong)
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);

    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    sub_1E60F02EC(v2);
    sub_1E5DFE50C(v6, &qword_1ED075380, &qword_1E65F1A08);
    (*(v4 + 8))(v3, v5);
    if ((*(v8 + 48))(v2, 1, v7) != 1)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    (*(*(v0 + 80) + 56))(*(v0 + 128), 1, 1, *(v0 + 72));
  }

  v9 = 1;
LABEL_6:
  *(v0 + 192) = v9;
  sub_1E5DFE50C(*(v0 + 128), &qword_1ED0752D8, &qword_1E660CC30);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v10 = sub_1E65E3B68();
  *(v0 + 136) = __swift_project_value_buffer(v10, qword_1EE2EA2A0);
  v11 = sub_1E65E3B48();
  v12 = sub_1E65E6338();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1E5DE9000, v11, v12, "Syncing Catalog", v13, 2u);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  v14 = CatalogService.requestCatalogSync.getter();
  *(v0 + 144) = v15;
  v18 = (v14 + *v14);
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  *v16 = v0;
  v16[1] = sub_1E636BE14;

  return v18(3);
}

uint64_t sub_1E636BE14()
{

  if (v0)
  {

    v1 = sub_1E636D2C0;
  }

  else
  {

    v1 = sub_1E636BF5C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E636BF5C(uint64_t a1)
{
  v28 = v1;
  if (*(v1 + 192) == 1)
  {
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Syncing User Data", v4, 2u);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }

    v5 = SyncService.startSync.getter();
    *(v1 + 160) = v6;
    v26 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v1 + 168) = v7;
    *v7 = v1;
    v7[1] = sub_1E636C29C;

    return v26();
  }

  else
  {
    v10 = *(v1 + 80);
    v9 = *(v1 + 88);
    v11 = *(v1 + 72);
    v12 = *(v1 + 40);
    sub_1E65D7688();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6338();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v1 + 80);
    v16 = *(v1 + 88);
    v18 = *(v1 + 72);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      sub_1E636D264();
      v21 = sub_1E65E6BC8();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_1E5DFD4B0(v21, v23, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "Synced at %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E694F1C0](v20, -1, -1);
      MEMORY[0x1E694F1C0](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    v25 = *(v1 + 8);

    return v25();
  }
}

uint64_t sub_1E636C29C()
{

  if (v0)
  {

    v1 = sub_1E636D2C4;
  }

  else
  {

    v1 = sub_1E636C3E4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E636C3E4()
{
  v1 = SyncService.fetchRemoteSyncables.getter();
  *(v0 + 176) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_1E636C4DC;

  return v5(1);
}

uint64_t sub_1E636C4DC()
{

  if (v0)
  {

    v1 = sub_1E636D2BC;
  }

  else
  {

    v1 = sub_1E636C624;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E636C624(uint64_t a1)
{
  v21 = v1;
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  v5 = v1[5];
  sub_1E65D7688();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[10];
  v9 = v1[11];
  v11 = v1[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_1E636D264();
    v14 = sub_1E65E6BC8();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1E5DFD4B0(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Synced at %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E694F1C0](v13, -1, -1);
    MEMORY[0x1E694F1C0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_1E636C810(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v6 = (*(Description + 80) + 24) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for SyncService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E636B970(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1E636C95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636CA90, 0, 0);
}

uint64_t sub_1E636CA90()
{
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[10] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E636CB8C;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E636CB8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E636CCA4, 0, 0);
}

uint64_t sub_1E636CCA4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E636CD80;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E636CD80()
{

  return MEMORY[0x1EEE6DFA0](sub_1E636CE7C, 0, 0);
}

uint64_t sub_1E636CE7C()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Requesting onActive Sync...", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E636D03C, v8, v7);
  }
}

uint64_t sub_1E636D03C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D8, &qword_1E65FE0B0);
  sub_1E65E4E28();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E636CD80;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E636D108(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788D8, &qword_1E65FE0B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E636C95C(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1E636D264()
{
  result = qword_1EE2D71C8;
  if (!qword_1EE2D71C8)
  {
    sub_1E65D76A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D71C8);
  }

  return result;
}

uint64_t sub_1E636D2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788E0, &qword_1E65FE0F8);
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - v2;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1E65DC148();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E65DC128();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DA34(v0, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1E5E1FA80(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1E65DC138();
  sub_1E65DC118();
  type metadata accessor for AppFeature(0);
  sub_1E636E014(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E636E014(&qword_1ED075750, MEMORY[0x1E699D3E0], MEMORY[0x1E699D3D8]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v14 = sub_1E65E4F08();
  (*(v16 + 8))(v3, v17);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_1E636D654(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636D6F4, 0, 0);
}

uint64_t sub_1E636D6F4()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E636D810;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E636D810()
{

  return MEMORY[0x1EEE6DFA0](sub_1E636D928, 0, 0);
}

uint64_t sub_1E636D928()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788E8, &qword_1E65FE118);
  v1[4] = sub_1E5FED46C(&qword_1ED0788F0, &qword_1ED0788E8, &qword_1E65FE118, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1EE2D47A8, &qword_1ED0721B8, &qword_1E65EA990, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E636DA60(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E636D654(a1, v1 + v5);
}

uint64_t sub_1E636DB3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E65D99E8();
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E636DBCC, 0, 0);
}

uint64_t sub_1E636DBCC()
{
  v1 = *(v0 + 32);
  sub_1E5E1DA34(*(v0 + 24), v1, MEMORY[0x1E69CC610]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (v3 != 1)
  {
    v4 = *(v0 + 32);
    v5 = *(v2 + 48);
    v6 = sub_1E65D9FF8();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
    v7 = sub_1E65D8DE8();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  **(v0 + 16) = v3 != 1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E636DD34(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for AppState(0) + 76);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v3 + 16))(v5, v6 + *(v7 + 28), v2);

  return sub_1E65DC0B8();
}

uint64_t sub_1E636DE9C(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DC0C8();
  v7 = type metadata accessor for AppState(0);
  v8 = a1 + v7[14];

  *(v8 + 8) = v6;
  v9 = sub_1E65DC0A8();
  v10 = a1 + v7[15];

  *(v10 + 8) = v9;
  v11 = sub_1E65DC0D8();
  v12 = a1 + v7[16];

  *(v12 + 8) = v11;
  v13 = sub_1E65DC0E8();
  v14 = a1 + v7[17];

  *(v14 + 8) = v13;
  sub_1E65DC098();
  v15 = a1 + v7[19];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  return (*(v3 + 40))(v15 + *(v16 + 28), v5, v2);
}

uint64_t sub_1E636E014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1E636E05C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1E65DE508();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788F8, &qword_1E65FE120);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  sub_1E5DFD1CC(v1, v4, &unk_1ED077A70, &qword_1E65F2620);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v14 = *(v6 + 32);
    v14(v8, v4, v5);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v4, &unk_1ED077A70, &qword_1E65F2620);
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
  v14 = *(v6 + 32);
  v14(v8, v4, v5);
  v15 = sub_1E65D76A8();
  (*(*(v15 - 8) + 8))(&v4[v13], v15);
LABEL_6:
  v14(v11, v8, v5);
  v16 = 0;
LABEL_9:
  (*(v6 + 56))(v11, v16, 1, v5);
  v17 = (*(v6 + 48))(v11, 1, v5) != 1;
  sub_1E5DFE50C(v11, &qword_1ED0788F8, &qword_1E65FE120);
  return v17;
}

BOOL sub_1E636E32C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1E65DE788();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  sub_1E5DFD1CC(v1, v4, &qword_1ED0737C8, &unk_1E6605140);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v14 = *(v6 + 32);
    v14(v8, v4, v5);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v4, &qword_1ED0737C8, &unk_1E6605140);
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
  v14 = *(v6 + 32);
  v14(v8, v4, v5);
  v15 = sub_1E65D76A8();
  (*(*(v15 - 8) + 8))(&v4[v13], v15);
LABEL_6:
  v14(v11, v8, v5);
  v16 = 0;
LABEL_9:
  (*(v6 + 56))(v11, v16, 1, v5);
  v17 = (*(v6 + 48))(v11, 1, v5) != 1;
  sub_1E5DFE50C(v11, &qword_1ED075FB8, &qword_1E65F4690);
  return v17;
}

BOOL sub_1E636E5FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = sub_1E65DECD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED073590, &qword_1E65ED568);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  sub_1E5DFD1CC(v1, v4, &qword_1ED073588, &unk_1E65FEFD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v14 = *(v6 + 32);
    v14(v8, v4, v5);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v4, &qword_1ED073588, &unk_1E65FEFD0);
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E50, &unk_1E65FABE0) + 48);
  v14 = *(v6 + 32);
  v14(v8, v4, v5);
  v15 = sub_1E65D76A8();
  (*(*(v15 - 8) + 8))(&v4[v13], v15);
LABEL_6:
  v14(v11, v8, v5);
  v16 = 0;
LABEL_9:
  (*(v6 + 56))(v11, v16, 1, v5);
  v17 = (*(v6 + 48))(v11, 1, v5) != 1;
  sub_1E5DFE50C(v11, &unk_1ED073590, &qword_1E65ED568);
  return v17;
}

uint64_t sub_1E636E8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v258 = a3;
  v266 = a4;
  v267 = a2;
  v269 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
  v264 = *(v5 - 8);
  v265 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v222 = &v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v233 = &v214 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v221 = &v214 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v232 = &v214 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v226 = &v214 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v243 = &v214 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
  v262 = *(v17 - 8);
  v263 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v220 = &v214 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v231 = &v214 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v219 = &v214 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v230 = &v214 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v225 = &v214 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v242 = &v214 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
  v259 = *(v29 - 8);
  v260 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v218 = &v214 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v241 = &v214 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v217 = &v214 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v240 = &v214 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v224 = &v214 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v239 = &v214 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v256 = *(v41 - 8);
  v257 = v41;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v216 = &v214 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v238 = &v214 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v215 = &v214 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v229 = &v214 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v223 = &v214 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v245 = &v214 - v52;
  v253 = sub_1E65D76F8();
  v252 = *(v253 - 8);
  v53 = MEMORY[0x1EEE9AC00](v253);
  v237 = &v214 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v236 = &v214 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v254 = &v214 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v250 = &v214 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v61 = MEMORY[0x1EEE9AC00](v60 - 8);
  v228 = &v214 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v227 = &v214 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v244 = &v214 - v65;
  v248 = sub_1E65D7848();
  v249 = *(v248 - 8);
  v66 = MEMORY[0x1EEE9AC00](v248);
  v235 = &v214 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v234 = &v214 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v251 = &v214 - v70;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  MEMORY[0x1EEE9AC00](v246);
  v72 = (&v214 - v71);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v247);
  v74 = &v214 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v214 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v80 = MEMORY[0x1EEE9AC00](v79 - 8);
  v255 = &v214 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v261 = &v214 - v83;
  MEMORY[0x1EEE9AC00](v82);
  v85 = &v214 - v84;
  v268 = type metadata accessor for AppState(0);
  sub_1E65DE488();
  v271 = v273;
  v272 = v274;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  sub_1E65E4D78();

  sub_1E65E4C98();
  (*(v76 + 8))(v78, v75);
  sub_1E65DE788();
  sub_1E634B00C();
  v270 = v85;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v74, &qword_1ED0753C0, &unk_1E6606290);
  sub_1E5DFD1CC(v4, v72, &qword_1ED073858, &unk_1E65F84A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v88 = *v72;
  v87 = v72[1];
  if (EnumCaseMultiPayload == 1)
  {
    v89 = v248;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073878, &unk_1E65F8490);
    sub_1E6370124(v72 + *(v90 + 48), v255);
    v91 = sub_1E636E32C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v92 = v269;
    v93 = v250;
    sub_1E65E4C98();
    v94 = v249;
    v95 = (v249 + 48);
    if (v91)
    {
      v96 = v227;
      sub_1E5E1F544(v227);
      sub_1E5DFE50C(v93, &qword_1ED071F78, &unk_1E65EA3F0);
      v97 = *v95;
      if ((*v95)(v96, 1, v89) == 1)
      {
        sub_1E65D77C8();
        v98 = v97(v96, 1, v89);
        v99 = v232;
        v100 = v230;
        v101 = v229;
        if (v98 != 1)
        {
          sub_1E5DFE50C(v96, &qword_1ED071F80, &unk_1E65F4310);
        }
      }

      else
      {
        (*(v94 + 32))(v234, v96, v89);
        v99 = v232;
        v100 = v230;
        v101 = v229;
      }

      (*(v252 + 16))(v236, v258, v253);
      v153 = (v92 + *(v268 + 192));
      v154 = v153[7];
      if (*(v154 + 16) && (v155 = sub_1E6215038(v88, v87), (v156 & 1) != 0))
      {
        v157 = *(v154 + 56);
        v159 = v256;
        v158 = v257;
        v160 = v215;
        (*(v256 + 16))(v215, v157 + *(v256 + 72) * v155, v257);
        (*(v159 + 32))(v101, v160, v158);
      }

      else
      {
        (*(v256 + 104))(v101, *MEMORY[0x1E699CB70], v257);
      }

      v161 = v153[10];
      if (*(v161 + 16) && (v162 = sub_1E6215038(v88, v87), (v163 & 1) != 0))
      {
        v164 = *(v161 + 56);
        v166 = v259;
        v165 = v260;
        v167 = v217;
        (*(v259 + 16))(v217, v164 + *(v259 + 72) * v162, v260);
        (*(v166 + 32))(v240, v167, v165);
      }

      else
      {
        (*(v259 + 104))(v240, *MEMORY[0x1E699CB70], v260);
      }

      v168 = v153[9];
      if (*(v168 + 16) && (v169 = sub_1E6215038(v88, v87), (v170 & 1) != 0))
      {
        v171 = *(v168 + 56);
        v173 = v262;
        v172 = v263;
        v174 = v219;
        (*(v262 + 16))(v219, v171 + *(v262 + 72) * v169, v263);
        (*(v173 + 32))(v100, v174, v172);
      }

      else
      {
        (*(v262 + 104))(v100, *MEMORY[0x1E699CB70], v263);
      }

      v175 = v153[12];
      if (*(v175 + 16) && (v176 = sub_1E6215038(v88, v87), (v177 & 1) != 0))
      {
        v178 = *(v175 + 56);
        v180 = v264;
        v179 = v265;
        v181 = v221;
        (*(v264 + 16))(v221, v178 + *(v264 + 72) * v176, v265);
        (*(v180 + 32))(v99, v181, v179);
      }

      else
      {
        (*(v264 + 104))(v99, *MEMORY[0x1E699CB70], v265);
      }

      sub_1E5DFD1CC(v270, v261, &qword_1ED0737C8, &unk_1E6605140);

      sub_1E65DE9F8();
      v182 = v255;
    }

    else
    {
      v116 = v228;
      sub_1E5E1F544(v228);
      sub_1E5DFE50C(v93, &qword_1ED071F78, &unk_1E65EA3F0);
      v117 = *v95;
      if ((*v95)(v116, 1, v89) == 1)
      {
        sub_1E65D77C8();
        v118 = v117(v116, 1, v89) == 1;
        v119 = v233;
        v120 = v231;
        v121 = v237;
        if (!v118)
        {
          v122 = v237;
          sub_1E5DFE50C(v116, &qword_1ED071F80, &unk_1E65F4310);
          v121 = v122;
        }
      }

      else
      {
        (*(v94 + 32))(v235, v116, v89);
        v119 = v233;
        v120 = v231;
        v121 = v237;
      }

      (*(v252 + 16))(v121, v258, v253);
      LODWORD(v258) = *(v92 + *(v268 + 156));
      v183 = (v92 + *(v268 + 192));
      v184 = v183[7];
      if (*(v184 + 16) && (v185 = sub_1E6215038(v88, v87), (v186 & 1) != 0))
      {
        v187 = *(v184 + 56);
        v189 = v256;
        v188 = v257;
        v190 = v216;
        (*(v256 + 16))(v216, v187 + *(v256 + 72) * v185, v257);
        (*(v189 + 32))(v238, v190, v188);
      }

      else
      {
        (*(v256 + 104))(v238, *MEMORY[0x1E699CB70], v257);
      }

      v191 = v183[10];
      if (*(v191 + 16) && (v192 = sub_1E6215038(v88, v87), (v193 & 1) != 0))
      {
        v194 = *(v191 + 56);
        v196 = v259;
        v195 = v260;
        v197 = v218;
        (*(v259 + 16))(v218, v194 + *(v259 + 72) * v192, v260);
        (*(v196 + 32))(v241, v197, v195);
      }

      else
      {
        (*(v259 + 104))(v241, *MEMORY[0x1E699CB70], v260);
      }

      v198 = v183[9];
      if (*(v198 + 16) && (v199 = sub_1E6215038(v88, v87), (v200 & 1) != 0))
      {
        v201 = *(v198 + 56);
        v203 = v262;
        v202 = v263;
        v204 = v220;
        (*(v262 + 16))(v220, v201 + *(v262 + 72) * v199, v263);
        (*(v203 + 32))(v120, v204, v202);
      }

      else
      {
        (*(v262 + 104))(v120, *MEMORY[0x1E699CB70], v263);
      }

      v205 = v183[12];
      if (*(v205 + 16) && (v206 = sub_1E6215038(v88, v87), (v207 & 1) != 0))
      {
        v208 = *(v205 + 56);
        v210 = v264;
        v209 = v265;
        v211 = v222;
        (*(v264 + 16))(v222, v208 + *(v264 + 72) * v206, v265);
        (*(v210 + 32))(v119, v211, v209);
      }

      else
      {
        (*(v264 + 104))(v119, *MEMORY[0x1E699CB70], v265);
      }

      v212 = v255;
      sub_1E5DFD1CC(v255, v261, &qword_1ED0737C8, &unk_1E6605140);

      sub_1E65DE9F8();
      v182 = v212;
    }

    sub_1E5DFE50C(v182, &qword_1ED0737C8, &unk_1E6605140);
  }

  else
  {
    v102 = v268;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    v103 = v269;
    v104 = v250;
    sub_1E65E4C98();
    v105 = v244;
    sub_1E5E1F544(v244);
    sub_1E5DFE50C(v104, &qword_1ED071F78, &unk_1E65EA3F0);
    v106 = v249;
    v107 = *(v249 + 48);
    v108 = v248;
    v109 = v107(v105, 1, v248);
    v110 = v106;
    v111 = v102;
    if (v109 == 1)
    {
      sub_1E65D77C8();
      v112 = v107(v105, 1, v108);
      v113 = v242;
      v114 = v239;
      v115 = v245;
      if (v112 != 1)
      {
        sub_1E5DFE50C(v244, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v110 + 32))(v251, v105, v108);
      v113 = v242;
      v114 = v239;
      v115 = v245;
    }

    (*(v252 + 16))(v254, v258, v253);
    v123 = (v103 + *(v111 + 192));
    v124 = v123[7];
    v125 = MEMORY[0x1E699CB70];
    if (*(v124 + 16) && (v126 = sub_1E6215038(v88, v87), (v127 & 1) != 0))
    {
      v128 = *(v124 + 56);
      v130 = v256;
      v129 = v257;
      v131 = v223;
      (*(v256 + 16))(v223, v128 + *(v256 + 72) * v126, v257);
      v125 = MEMORY[0x1E699CB70];
      (*(v130 + 32))(v115, v131, v129);
    }

    else
    {
      (*(v256 + 104))(v115, *v125, v257);
    }

    v132 = v123[10];
    if (*(v132 + 16) && (v133 = sub_1E6215038(v88, v87), (v134 & 1) != 0))
    {
      v135 = *(v132 + 56);
      v137 = v259;
      v136 = v260;
      v138 = v224;
      (*(v259 + 16))(v224, v135 + *(v259 + 72) * v133, v260);
      (*(v137 + 32))(v114, v138, v136);
    }

    else
    {
      (*(v259 + 104))(v114, *v125, v260);
    }

    v139 = v123[9];
    if (*(v139 + 16) && (v140 = sub_1E6215038(v88, v87), (v141 & 1) != 0))
    {
      v142 = *(v139 + 56);
      v144 = v262;
      v143 = v263;
      v145 = v225;
      (*(v262 + 16))(v225, v142 + *(v262 + 72) * v140, v263);
      (*(v144 + 32))(v113, v145, v143);
    }

    else
    {
      (*(v262 + 104))(v113, *v125, v263);
    }

    v146 = v123[12];
    if (*(v146 + 16) && (v147 = sub_1E6215038(v88, v87), (v148 & 1) != 0))
    {
      v149 = *(v146 + 56);
      v151 = v264;
      v150 = v265;
      v152 = v226;
      (*(v264 + 16))(v226, v149 + *(v264 + 72) * v147, v265);
      (*(v151 + 32))(v243, v152, v150);
    }

    else
    {
      (*(v264 + 104))(v243, *v125, v265);
    }

    sub_1E5DFD1CC(v270, v261, &qword_1ED0737C8, &unk_1E6605140);

    sub_1E65DE9F8();
  }

  return sub_1E5DFE50C(v270, &qword_1ED0737C8, &unk_1E6605140);
}

uint64_t sub_1E6370124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6370194@<X0>(uint64_t *a1@<X8>)
{
  v85 = a1;
  v69 = type metadata accessor for RemoteBrowsingService();
  Description = v69[-1].Description;
  MEMORY[0x1EEE9AC00](v69);
  v66 = v2;
  v67 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v88 = &v63 - v4;
  v5 = type metadata accessor for WorkoutPlanService();
  v6 = v5[-1].Description;
  MEMORY[0x1EEE9AC00](v5);
  v83 = v7;
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  v89 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v86 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v63 - v12;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v13 = sub_1E65E3B68();
  __swift_project_value_buffer(v13, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v14 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v15 = type metadata accessor for AppEnvironment(0);
  v65 = *(v15 + 100);
  v16 = *(v15 + 144);
  v79 = v16;
  swift_getKeyPath();
  v17 = v6[2];
  v80 = (v6 + 2);
  v18 = v14;
  v71 = v14;
  v17(v8, v14 + v16, v5);
  v63 = v17;
  v19 = v5;
  v20 = *(v6 + 80);
  v78 = v20 | 7;
  v21 = swift_allocObject();
  v64 = v8;
  v22 = v6[4];
  v81 = (v6 + 4);
  v82 = v22;
  v23 = v19;
  v22(v21 + ((v20 + 16) & ~v20), v8, v19);

  v24 = v84;
  sub_1E65E4E08();
  v25 = v85;
  v85[3] = v9;
  v25[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v28 = v89 + 16;
  v27 = *(v89 + 16);
  v27(boxed_opaque_existential_1, v24, v9);
  v76 = v27;
  v77 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1E65EA8E0;
  v74 = sub_1E65E60A8();
  v29 = *(v74 - 8);
  v73 = *(v29 + 56);
  v75 = v29 + 56;
  v30 = v88;
  v73(v88, 1, 1, v74);
  v31 = v64;
  v17(v64, v18 + v79, v23);
  v27(v86, v24, v9);
  v32 = (v20 + 32) & ~v20;
  v33 = v89;
  v34 = *(v89 + 80);
  v35 = v9;
  v36 = v30;
  v37 = (v83 + v32 + v34) & ~v34;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v39 = v23;
  v82(v38 + v32, v31, v23);
  v40 = *(v33 + 32);
  v70 = v33 + 32;
  v83 = v40;
  v41 = v86;
  v40(v38 + v37, v86, v35);
  v42 = v36;
  v43 = sub_1E6059EAC(0, 0, v36, &unk_1E65FE168, v38);
  v45 = v72;
  v44 = v73;
  *(v72 + 32) = v43;
  v44(v42, 1, 1, v74);
  v63(v31, v71 + v79, v39);
  v46 = v41;
  v47 = v41;
  v48 = v84;
  v49 = v35;
  v76(v47, v84, v35);
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  v82(v50 + v32, v31, v39);
  v51 = v46;
  v83(v50 + v37, v46, v49);
  v52 = v88;
  *(v45 + 40) = sub_1E6059EAC(0, 0, v88, &unk_1E65FE178, v50);
  v73(v52, 1, 1, v74);
  v53 = Description;
  v54 = v67;
  v55 = v69;
  Description[2](v67, v71 + v65, v69);
  v56 = v51;
  v76(v51, v48, v49);
  v57 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v58 = (v66 + v34 + v57) & ~v34;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  (v53)[4]((v59 + v57), v54, v55);
  v83(v59 + v58, v56, v49);
  v60 = sub_1E6059EAC(0, 0, v88, &unk_1E65FE188, v59);
  v61 = v72;
  *(v72 + 48) = v60;
  result = (*(v89 + 8))(v48, v49);
  v85[5] = v61;
  return result;
}

uint64_t sub_1E6370984(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63709A4, 0, 0);
}

uint64_t sub_1E63709A4()
{
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  v0[4] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E6370AA0;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E6370AA0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E6370BB4;
  }

  else
  {
    v2 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6370BB4()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch active workout plan with error: %@", v7, 0xCu);
    sub_1E5DFE50C(v8, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E6370D54(uint64_t a1)
{
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6370984(a1, v1 + v5);
}

uint64_t sub_1E6370E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6370F64, 0, 0);
}

uint64_t sub_1E6370F64()
{
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[10] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6371060;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6371060()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6371178, 0, 0);
}

uint64_t sub_1E6371178()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6371254;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6371254()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6371350, 0, 0);
}

uint64_t sub_1E6371350()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6371450, v4, v3);
  }
}

uint64_t sub_1E6371450()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6371254;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E637151C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6370E30(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6371678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078908, &qword_1E65FE190);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078910, &qword_1E65FE198);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63717E4, 0, 0);
}

uint64_t sub_1E63717E4()
{
  v1 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E63718E0;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E63718E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63719F8, 0, 0);
}

uint64_t sub_1E63719F8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6371AD4;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6371AD4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6371BD0, 0, 0);
}

uint64_t sub_1E6371BD0()
{
  v1 = v0[4];
  v2 = sub_1E65DDF18();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6371D20, v6, v5);
  }
}

uint64_t sub_1E6371D20()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6371DA4, 0, 0);
}

uint64_t sub_1E6371DA4()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078908, &qword_1E65FE190);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6371AD4;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6371E64(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6371678(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6371FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E637212C, 0, 0);
}

uint64_t sub_1E637212C()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6372228;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6372228()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6372340, 0, 0);
}

uint64_t sub_1E6372340()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E637241C;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E637241C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6372518, 0, 0);
}

uint64_t sub_1E6372518()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6372668, v6, v5);
  }
}

uint64_t sub_1E6372668()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E63726EC, 0, 0);
}

uint64_t sub_1E63726EC()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E637241C;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t objectdestroy_3Tm_9(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6372910(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078900, &qword_1E65FE128) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6371FC0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6372A6C(void *a1, void (*a2)(char *, uint64_t, uint64_t), void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void *a5)
{
  v67 = a5;
  v74 = a4;
  v64 = a2;
  v65 = a3;
  v75 = sub_1E65DBB88();
  v79 = *(v75 - 8);
  v73 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078918, &qword_1E65FE1A8);
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = v56 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v12;
  v59 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v16 = v56 - v15;
  v58 = v56 - v15;
  v17 = sub_1E65DBE18();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v61 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1E65DBC68();
  v68 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a1;
  v57 = a1;
  sub_1E5E1D5BC(a1, v16, type metadata accessor for AppComposer);
  v20 = *(v10 + 80);
  v21 = ((v20 + 16) & ~v20) + v14;
  v22 = (v20 + 16) & ~v20;
  v62 = v21;
  v71 = v20 | 7;
  v23 = swift_allocObject();
  v60 = v22;
  sub_1E5E1FA80(v16, v23 + v22);
  sub_1E5E1D5BC(a1, v13, type metadata accessor for AppComposer);
  v63 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1E5E1FA80(v13, v24 + v22);
  v25 = (v24 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v65;
  *v25 = v64;
  v25[1] = v26;

  sub_1E65DBE08();
  sub_1E65DBC58();
  v27 = v79;
  v28 = *(v79 + 16);
  v61 = (v79 + 16);
  v64 = v28;
  v29 = v72;
  v30 = v75;
  v28(v72, v74, v75);
  v31 = v57;
  v32 = v58;
  sub_1E5E1D5BC(v57, v58, type metadata accessor for AppComposer);
  v33 = *(v27 + 80);
  v34 = (v33 + 16) & ~v33;
  v35 = (v73 + v20 + v34) & ~v20;
  v36 = swift_allocObject();
  v37 = *(v27 + 32);
  v79 = v27 + 32;
  v65 = v37;
  v37((v36 + v34), v29, v30);
  sub_1E5E1FA80(v32, v36 + v35);
  v38 = v32;
  sub_1E5E1D5BC(v31, v32, type metadata accessor for AppComposer);
  v39 = swift_allocObject();
  v40 = v60;
  sub_1E5E1FA80(v32, v39 + v60);
  type metadata accessor for AppFeature(0);
  sub_1E6375CF8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v62 = sub_1E6375CF8(&qword_1ED078920, MEMORY[0x1E699D238], MEMORY[0x1E699D230]);
  sub_1E65E4DE8();
  sub_1E5E1D5BC(v31, v32, type metadata accessor for AppComposer);
  v41 = v67;
  v56[0] = v67[3];
  v56[1] = v67[5];
  v57 = v67[7];
  v59 = v67[9];
  v42 = v72;
  v43 = v75;
  v64(v72, v74, v75);
  v44 = v63;
  v45 = (v63 + v33 + 80) & ~v33;
  v46 = swift_allocObject();
  sub_1E5E1FA80(v38, v46 + v40);
  v47 = (v46 + v44);
  v48 = v41[3];
  v47[2] = v41[2];
  v47[3] = v48;
  v47[4] = v41[4];
  v49 = v41[1];
  *v47 = *v41;
  v47[1] = v49;
  v65((v46 + v45), v42, v43);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E6375C04;
  *(v50 + 24) = v46;

  v52 = v77;
  v51 = v78;
  v53 = v76;
  v54 = sub_1E65E4F08();

  (*(v69 + 8))(v51, v70);
  (*(v68 + 8))(v52, v53);
  return v54;
}

uint64_t sub_1E63731D0(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 72) = a1;
  *(v2 + 24) = type metadata accessor for ToastAction(0);
  *(v2 + 32) = swift_task_alloc();
  v3 = sub_1E65E3B68();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63732C4, 0, 0);
}

uint64_t sub_1E63732C4(uint64_t a1)
{
  sub_1E65DB958();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Publishing award toast action .dismiss", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  v8 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 16);
  v10 = *(v1 + 72);

  (*(v6 + 8))(v5, v7);
  v11 = v9 + *(type metadata accessor for AppComposer(0) + 20);
  v12 = *(v11 + *(type metadata accessor for AppEnvironment(0) + 128));
  *v8 = v10;
  swift_storeEnumTagMultiPayload();
  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v1 + 64) = v13;
  *v13 = v1;
  v13[1] = sub_1E63734A4;
  v14 = *(v1 + 32);

  return v16(v14);
}

uint64_t sub_1E63734A4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1E6375D40(v1, type metadata accessor for ToastAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E63735EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  type metadata accessor for AppComposer(0);
  v5[25] = swift_task_alloc();
  v6 = sub_1E65E3B68();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for RouteSource(0);
  v5[30] = swift_task_alloc();
  v5[31] = type metadata accessor for RouteDestination(0);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6373740, 0, 0);
}

uint64_t sub_1E6373740()
{
  v36 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[21];
  v5 = v0[20];
  swift_storeEnumTagMultiPayload();
  *v1 = v5;
  v1[1] = v4;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E6375D40(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v6 = v0[13];
  v0[33] = v6;
  if (v6 == 6)
  {
    v7 = v0[25];
    v8 = v0[22];
    sub_1E65DB958();
    sub_1E5E1D5BC(v8, v7, type metadata accessor for AppComposer);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[32];
    v14 = v0[27];
    v13 = v0[28];
    v16 = v0[25];
    v15 = v0[26];
    if (v11)
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v17 = 136315138;
      v34 = v12;
      v35 = v31;
      swift_getKeyPath();
      v33 = v13;
      sub_1E65E4EC8();

      v32 = v15;
      v18 = v0[14];
      v19 = v0[15];
      v0[16] = v18;
      v0[17] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
      v20 = sub_1E65E6648();
      v22 = v21;
      sub_1E5E07DA0(v18, v19);
      sub_1E6375D40(v16, type metadata accessor for AppComposer);
      v23 = sub_1E5DFD4B0(v20, v22, &v35);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "No routing context for root item %s, skipping detail page presentation", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E694F1C0](v31, -1, -1);
      MEMORY[0x1E694F1C0](v17, -1, -1);

      (*(v14 + 8))(v33, v32);
      v24 = type metadata accessor for RouteDestination;
      v25 = v34;
    }

    else
    {

      (*(v14 + 8))(v13, v15);
      sub_1E6375D40(v12, type metadata accessor for RouteDestination);
      v24 = type metadata accessor for AppComposer;
      v25 = v16;
    }

    sub_1E6375D40(v25, v24);

    v29 = v0[1];

    return v29();
  }

  else
  {
    v26 = v0[12];
    v0[34] = v26;
    v0[18] = v26;
    v0[19] = v6;
    sub_1E65E6058();
    v0[35] = sub_1E65E6048();
    v28 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6373B3C, v28, v27);
  }
}

uint64_t sub_1E6373B3C()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[23];

  v3(v0 + 18);
  sub_1E5E07DA0(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E6373BD0, 0, 0);
}

uint64_t sub_1E6373BD0()
{
  v31 = v0;
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    sub_1E600F5B0((v0 + 304));
    v3 = swift_task_alloc();
    *(v0 + 288) = v3;
    *v3 = v0;
    v3[1] = sub_1E6373F50;
    v4 = *(v0 + 256);

    return RoutingContext.appendDestination(_:priority:)(v4, (v0 + 304), v2, v1);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    v6 = *(v0 + 200);
    v7 = *(v0 + 176);
    sub_1E65DB958();
    sub_1E5E1D5BC(v7, v6, type metadata accessor for AppComposer);
    v8 = sub_1E65E3B48();
    v9 = sub_1E65E6338();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 256);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    if (v10)
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v16 = 136315138;
      v29 = v11;
      v30 = v26;
      swift_getKeyPath();
      v28 = v12;
      sub_1E65E4EC8();

      v27 = v14;
      v17 = *(v0 + 112);
      v18 = *(v0 + 120);
      *(v0 + 128) = v17;
      *(v0 + 136) = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
      v19 = sub_1E65E6648();
      v21 = v20;
      sub_1E5E07DA0(v17, v18);
      sub_1E6375D40(v15, type metadata accessor for AppComposer);
      v22 = sub_1E5DFD4B0(v19, v21, &v30);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_1E5DE9000, v8, v9, "No routing context for root item %s, skipping detail page presentation", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E694F1C0](v26, -1, -1);
      MEMORY[0x1E694F1C0](v16, -1, -1);

      (*(v13 + 8))(v28, v27);
      v23 = type metadata accessor for RouteDestination;
      v24 = v29;
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      sub_1E6375D40(v11, type metadata accessor for RouteDestination);
      v23 = type metadata accessor for AppComposer;
      v24 = v15;
    }

    sub_1E6375D40(v24, v23);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1E6373F50()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1E6374118;
  }

  else
  {
    v2 = sub_1E6374064;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6374064()
{
  sub_1E6375D40(v0[32], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6374118()
{
  sub_1E6375D40(v0[32], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63741D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65DBB28();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E65DBA98();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1E65DBBA8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E65DBB88();
  MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  type metadata accessor for AppComposer(0);
  v14 = sub_1E65DAE38();
  if (v14 == sub_1E65DAE38())
  {
    *v9 = 0x4076600000000000;
    v15 = MEMORY[0x1E699D1C0];
  }

  else
  {
    v15 = MEMORY[0x1E699D1C8];
  }

  (*(v7 + 104))(v9, *v15, v6);
  sub_1E65DBB08();
  sub_1E65DBB98();
  v16 = (a1 + *(type metadata accessor for AppState(0) + 248));
  v17 = *v16;
  v18 = v16[1];
  if (v18 <= 2)
  {
    switch(v18)
    {
      case 0:
        goto LABEL_16;
      case 1:
        sub_1E5FED40C(*v16, 1uLL);
        v19 = 0xE600000000000000;
        goto LABEL_21;
      case 2:
        goto LABEL_16;
    }

LABEL_14:
    v21 = 0x7974696C61646F6DLL;
    v22 = 0xE90000000000003ALL;
    sub_1E5FED40C(v17, v18);
    MEMORY[0x1E694D7C0](v17, v18);
    v19 = v22;
    if (v21 != 0x756F59726F66)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v19 == 0xE600000000000000)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v18 <= 5)
  {
LABEL_16:
    sub_1E5FED40C(*v16, v16[1]);
LABEL_17:
    sub_1E65E6C18();
LABEL_18:
    sub_1E5E07DA0(0, 1uLL);

    sub_1E5E07DA0(v17, v18);
    return sub_1E65DBA58();
  }

  if (v18 != 6)
  {
    goto LABEL_14;
  }

  sub_1E5FED40C(*v16, 6uLL);
  sub_1E5E07DA0(v17, 6uLL);
  sub_1E5E07DA0(0, 1uLL);
  return sub_1E65DBA58();
}

uint64_t sub_1E637461C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v40 - v7;
  v9 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B0, &qword_1E65F1FB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v63 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v40 - v17;
  result = sub_1E65DBA78();
  if (result)
  {
    v61 = v13;
    v62 = v12;
    v20 = sub_1E65DB9A8();
    v22 = v21;
    v23 = sub_1E65DBA88();
    if (!v24)
    {

      result = sub_1E65DBA68();
      if (result)
      {
        return result;
      }

      v39 = a1 + *(type metadata accessor for AppState(0) + 248);
      goto LABEL_11;
    }

    v56 = v24;
    v57 = v23;
    v59 = a2;
    v55 = type metadata accessor for AppState(0);
    v25 = *(v55 + 100);
    v60 = a1;
    v26 = a1 + v25;
    v27 = *(v26 + 8);
    v58 = v26 + 8;
    if (*(v27 + 16) && (v28 = sub_1E6215038(v20, v22), (v29 & 1) != 0))
    {
      v30 = v63;
      v31 = *(v27 + 56) + *(v63 + 72) * v28;
      v32 = *(v63 + 16);
      v54 = v20;
      v33 = v61;
      v32(v16, v31, v61);
      (*(v30 + 32))(v18, v16, v33);
      v34 = sub_1E65DC1D8();
      v52 = v35;
      v53 = v34;
      LODWORD(v49) = sub_1E65DC1E8();
      v40[8] = v8;
      sub_1E65DC238();
      v51 = sub_1E65DC1A8();
      LODWORD(v50) = v36;
      LODWORD(v48) = sub_1E65DC208();
      sub_1E65DC1F8();
      v47 = type metadata accessor for ActionButtonDescriptor(0);
      v46 = type metadata accessor for ArtworkDescriptor(0);
      v45 = type metadata accessor for ContextMenu(0);
      v44 = type metadata accessor for ItemContext(0);
      v43 = type metadata accessor for ItemMetrics(0);
      v42 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      v41 = type metadata accessor for SectionMetrics(0);
      v40[7] = type metadata accessor for ViewDescriptor(0);
      v40[6] = sub_1E6375CF8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v40[5] = sub_1E6375CF8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      v40[4] = sub_1E6375CF8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      v40[3] = sub_1E6375CF8(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v40[2] = sub_1E6375CF8(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v40[1] = sub_1E6375CF8(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      sub_1E6375CF8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      sub_1E6375CF8(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E5DF1338();
      sub_1E6375CF8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      v37 = v62;
      sub_1E65DC1C8();
      (*(v30 + 56))(v37, 0, 1, v33);
      sub_1E6407C10(v37, v54, v22);
      (*(v30 + 8))(v18, v33);
    }

    else
    {
      type metadata accessor for AppComposer(0);

      LODWORD(v54) = sub_1E65DAE08();
      sub_1E65D76E8();
      sub_1E65E0778();
      sub_1E5E0024C(MEMORY[0x1E69E7CC0]);
      v64 = 2;
      v49 = sub_1E5DF11E0();
      v48 = sub_1E5DF1338();
      sub_1E65E06E8();
      v53 = type metadata accessor for ActionButtonDescriptor(0);
      v52 = type metadata accessor for ArtworkDescriptor(0);
      v51 = type metadata accessor for ContextMenu(0);
      v50 = type metadata accessor for ItemContext(0);
      v47 = type metadata accessor for ItemMetrics(0);
      v46 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      v45 = type metadata accessor for SectionMetrics(0);
      v44 = type metadata accessor for ViewDescriptor(0);
      v43 = sub_1E6375CF8(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v42 = sub_1E6375CF8(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      v41 = sub_1E6375CF8(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      sub_1E6375CF8(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6375CF8(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      sub_1E6375CF8(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      sub_1E6375CF8(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
      sub_1E6375CF8(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      v38 = v62;
      sub_1E65DC1C8();
      (*(v63 + 56))(v38, 0, 1, v61);
      sub_1E6407C10(v38, v20, v22);
    }

    result = sub_1E65DBA68();
    if ((result & 1) == 0)
    {
      v39 = v60 + *(v55 + 248);
LABEL_11:
      result = sub_1E5E07DA0(*v39, *(v39 + 8));
      *v39 = 0;
      *(v39 + 8) = 1;
    }
  }

  return result;
}

uint64_t sub_1E63751D4(char *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a4[3];
  v9[2] = a4[2];
  v9[3] = v4;
  v9[4] = a4[4];
  v5 = a4[1];
  v9[0] = *a4;
  v9[1] = v5;
  v6 = *a1;
  v7 = sub_1E65DBB48();
  sub_1E639C7C4(v9, v6, v7);
}

uint64_t sub_1E6375254(uint64_t a1, unint64_t a2)
{
  sub_1E600A014(a1, a2);

  return MEMORY[0x1EEE05318](a1, a2);
}

uint64_t sub_1E63752A4(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v4 = sub_1E65DBB88();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1E65E3B68();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v8 = (*(a1 + 16) + **(a1 + 16));
  v6 = swift_task_alloc();
  v2[13] = v6;
  *v6 = v2;
  v6[1] = sub_1E637544C;

  return v8();
}

uint64_t sub_1E637544C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6375594, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6375594(uint64_t a1)
{
  v37 = v1;
  v2 = v1[14];
  v4 = v1[8];
  v3 = v1[9];
  v6 = v1[6];
  v5 = v1[7];
  sub_1E65DB958();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315394;
    v12 = sub_1E65DBB58();
    v13 = 0xEE00647261774164;
    v14 = 0x656373656C616F43;
    v15 = 0x80000001E6616680;
    v16 = 0xD000000000000013;
    if (v12 != 2)
    {
      v16 = 0x7274537472617453;
      v15 = 0xEB000000006B6165;
    }

    if (v12)
    {
      v14 = 0x7741656C676E6953;
      v13 = 0xEB00000000647261;
    }

    if (v12 <= 1)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (v12 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    v19 = v1[14];
    v20 = v1[11];
    v35 = v1[12];
    v21 = v1[10];
    (*(v1[8] + 8))(v1[9], v1[7]);
    v22 = sub_1E5DFD4B0(v17, v18, &v36);

    *(v10 + 4) = v22;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v23 = MEMORY[0x1E694E6C0](v1[3], v1[4]);
    v25 = sub_1E5DFD4B0(v23, v24, &v36);

    *(v10 + 14) = v25;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "Failed to publish page enter event for %s error %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);

    (*(v20 + 8))(v35, v21);
  }

  else
  {
    v26 = v1[14];
    v28 = v1[11];
    v27 = v1[12];
    v30 = v1[9];
    v29 = v1[10];
    v31 = v1[7];
    v32 = v1[8];

    (*(v32 + 8))(v30, v31);
    (*(v28 + 8))(v27, v29);
  }

  v33 = v1[1];

  return v33();
}

uint64_t sub_1E63758A8(char a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63731D0(a1, v1 + v5);
}

uint64_t sub_1E6375980(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E63735EC(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_1E6375AA0(uint64_t a1)
{
  v3 = *(sub_1E65DBB88() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1E63741D0(a1, v1 + v4, v7);
}

uint64_t sub_1E6375B84(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E637461C(a1, a2, v6);
}

uint64_t sub_1E6375C04(char *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1E65DBB88();

  return sub_1E63751D4(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E6375CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6375D40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6375DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v64 = a2;
  v67 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078928, &qword_1E65FE218);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = v46 - v8;
  v9 = sub_1E65E15C8();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E1568();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v66 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E65E1598();
  v57 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v65 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v46 - v19;
  v63 = sub_1E65E15E8();
  v52 = *(v63 - 8);
  v21 = v52;
  v22 = MEMORY[0x1EEE9AC00](v63);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v62 = v46 - v25;
  v48 = v20;
  sub_1E5E1DEAC(v5, v20);
  v26 = *(v15 + 80);
  v27 = ((v26 + 16) & ~v26) + v16;
  v28 = (v26 + 16) & ~v26;
  v47 = v27;
  v29 = swift_allocObject();
  v49 = v28;
  sub_1E5E1FA80(v20, v29 + v28);
  sub_1E5E1DEAC(v5, v18);
  v30 = swift_allocObject();
  sub_1E5E1FA80(v18, v30 + v28);
  v31 = v62;
  sub_1E65E15D8();
  v50 = *v5;
  (*(v21 + 16))(v24, v31, v63);
  sub_1E65E1588();
  (*(v53 + 104))(v51, *MEMORY[0x1E699E8D0], v54);

  sub_1E65E1558();
  type metadata accessor for AppFeature(0);
  sub_1E637734C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v54 = sub_1E637734C(&qword_1EE2D64E0, MEMORY[0x1E699E8B8], MEMORY[0x1E699E8B0]);
  v33 = v55;
  v32 = v56;
  sub_1E65E4DE8();
  v34 = v48;
  sub_1E5E1DEAC(v5, v48);
  v46[1] = a4[5];
  v51 = a4[7];
  v53 = a4[9];
  v35 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  sub_1E5E1FA80(v34, v36 + v49);
  v37 = (v36 + v35);
  v38 = *(a4 + 3);
  v37[2] = *(a4 + 2);
  v37[3] = v38;
  v37[4] = *(a4 + 4);
  v39 = *(a4 + 1);
  *v37 = *a4;
  v37[1] = v39;
  v40 = (v36 + ((v35 + 87) & 0xFFFFFFFFFFFFFFF8));
  v41 = v64;
  *v40 = v67;
  v40[1] = v41;

  swift_unknownObjectRetain();

  v43 = v65;
  v42 = v66;
  v44 = sub_1E65E4F08();

  (*(v60 + 8))(v32, v61);
  (*(v58 + 8))(v42, v59);
  (*(v57 + 8))(v43, v33);
  (*(v52 + 8))(v62, v63);
  return v44;
}

id sub_1E6376498(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D74C8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1E62282E0(v3);
  }

  (*(v5 + 32))(v7, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    v10 = sub_1E65D7448();
    sub_1E6215168(MEMORY[0x1E69E7CC0]);
    v11 = sub_1E65E5AF8();

    [v9 openSensitiveURL:v10 withOptions:v11];

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63766AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078938, &qword_1E65FE240);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6376750, 0, 0);
}

uint64_t sub_1E6376750()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5)
  {
    v4 = sub_1E65E1548();
    sub_1E637734C(&qword_1ED078930, MEMORY[0x1E699E898], MEMORY[0x1E699E8A0]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E699E890], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v3;
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v9 = EngagementService.makeCurrentValuePlacementStream.getter();
    v0[8] = v10;
    v13 = (v9 + *v9);
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_1E637698C;
    v12 = v0[7];

    return v13(v12, v8);
  }
}

uint64_t sub_1E637698C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6376AA4, 0, 0);
}

uint64_t sub_1E6376AA4()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078940, &unk_1E65FE250);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4458, &qword_1ED078940, &unk_1E65FE250, MEMORY[0x1E69E88C0]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E6377394();
  sub_1E5FED46C(&qword_1EE2D4778, &qword_1ED078938, &qword_1E65FE240, MEMORY[0x1E69E86A0]);
  sub_1E65E6BB8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6376BE4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(a2 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1E6376C10, 0, 0);
}

uint64_t sub_1E6376C10()
{
  v1 = *(v0 + 32);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = v2;
  }

  **(v0 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6376C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6376CB4, 0, 0);
}

uint64_t sub_1E6376CB4()
{
  v1 = v0[2];
  v2 = v0[3];

  v3 = MEMORY[0x1E69431F0](v1, v2);
  if (v3 == 5)
  {
    v4 = sub_1E65E1548();
    sub_1E637734C(&qword_1ED078930, MEMORY[0x1E699E898], MEMORY[0x1E699E8A0]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E699E890], v4);
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v3;
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v9 = EngagementService.resetPlacement.getter();
    v0[5] = v10;
    v12 = (v9 + *v9);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_1E6376ED0;

    return v12(v8);
  }
}

uint64_t sub_1E6376ED0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6376FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AF0, &qword_1E65F77B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  v3 = sub_1E65E07B8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_1E65E15F8();
}

uint64_t sub_1E63770D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFA78C;

  return sub_1E63766AC(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E63771CC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6376C90(a1, a2, v2 + v7);
}

void sub_1E63772AC(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1E6329DCC((v1 + v4), *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t sub_1E637734C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E6377394()
{
  result = qword_1EE2D4678;
  if (!qword_1EE2D4678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D4678);
  }

  return result;
}

uint64_t ToastActionPriority.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E637746C()
{
  result = qword_1ED078948;
  if (!qword_1ED078948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078948);
  }

  return result;
}

uint64_t BookmarkError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E637755C()
{
  result = qword_1ED078950;
  if (!qword_1ED078950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078950);
  }

  return result;
}

uint64_t sub_1E63775C0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1E65D74E8();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DAE38();
  result = sub_1E65DAE38();
  if (v6 != result)
  {
    return result;
  }

  if (qword_1EE2D7790 != -1)
  {
LABEL_28:
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v28 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E65E6788();
    sub_1E6377988();
    sub_1E63779D4();
    sub_1E65E6268();
    a1 = v36;
    v9 = v37;
    v10 = v38;
    v11 = v39;
    v12 = v40;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v29 = v10;
  v2 = (v10 + 64) >> 6;
  v30 = (v4 + 8);
  v31 = a1;
  while (1)
  {
    v17 = v11;
    if (a1 < 0)
    {
      break;
    }

    v18 = v11;
    v19 = v12;
    if (!v12)
    {
      while (1)
      {
        v11 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v11 >= v2)
        {
          return sub_1E5E24EE4(a1);
        }

        v19 = *(v9 + 8 * v11);
        ++v18;
        if (v19)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_16:
    v4 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_26;
    }

LABEL_20:
    v22 = [v20 URL];
    v23 = v32;
    sub_1E65D7478();

    v24 = sub_1E65D7428();
    v26 = v25;
    (*v30)(v23, v33);
    if (v24 == sub_1E65D9188() && v26 == v27)
    {

      a1 = v31;
LABEL_23:
      sub_1E5E24EE4(a1);
      return sub_1E6377A2C();
    }

    v16 = sub_1E65E6C18();

    a1 = v31;
    v12 = v4;
    if (v16)
    {
      goto LABEL_23;
    }
  }

  v21 = sub_1E65E67F8();
  if (!v21)
  {
    return sub_1E5E24EE4(a1);
  }

  v34 = v21;
  sub_1E6377988();
  swift_dynamicCast();
  v20 = v35;
  v4 = v12;
  if (v35)
  {
    goto LABEL_20;
  }

LABEL_26:
  a1 = v31;
  return sub_1E5E24EE4(a1);
}

unint64_t sub_1E6377988()
{
  result = qword_1ED073C40;
  if (!qword_1ED073C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED073C40);
  }

  return result;
}

unint64_t sub_1E63779D4()
{
  result = qword_1ED073C48;
  if (!qword_1ED073C48)
  {
    sub_1E6377988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C48);
  }

  return result;
}

uint64_t sub_1E6377A2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078958, qword_1E65FE3C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  sub_1E65E3B18();
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  sub_1E65DD308();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E6377DB0;
  *(v12 + 24) = 0;
  (*(v2 + 16))(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v2 + 32))(v15 + v13, v5, v1);
  v16 = (v15 + v14);
  *v16 = sub_1E6378640;
  v16[1] = v12;
  sub_1E65DACA8();
  (*(v2 + 8))(v7, v1);
  v17 = v22;
  v18 = sub_1E65DACC8();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v18(sub_1E5E20B10, v19);

  return (*(v21 + 8))(v10, v17);
}

void sub_1E6377DB0(uint64_t *a1)
{
  v2 = v1;
  v44 = *MEMORY[0x1E69E9840];
  v4 = sub_1E65D8838();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  LOBYTE(v6) = *(v8 + 32);
  v9 = v6 & 0x3F;
  v10 = ((1 << v6) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v35 = v10;
    v36 = v2;
    v34[1] = v34;
    MEMORY[0x1EEE9AC00](v12);
    v37 = v34 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v11);
    v38 = 0;
    v11 = 0;
    v2 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v10 = v14 & *(v8 + 56);
    v15 = (v13 + 63) >> 6;
    v40 = (v5 + 8);
    v41 = v5 + 16;
    v42 = v5;
    v43 = v8;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v20 = v17 | (v11 << 6);
      v21 = *(v8 + 48);
      v22 = *(v5 + 72);
      v39 = v20;
      (*(v5 + 16))(v7, v21 + v22 * v20, v4);
      v23 = sub_1E65D8828();
      v25 = v24;
      if (v23 == sub_1E65D9198() && v25 == v26)
      {

        (*v40)(v7, v4);
        v5 = v42;
        v8 = v43;
        goto LABEL_16;
      }

      v16 = sub_1E65E6C18();

      (*v40)(v7, v4);
      v5 = v42;
      v8 = v43;
      if (v16)
      {
LABEL_16:
        *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_19:
          v28 = sub_1E60893A0(v37, v35, v38, v8);
          goto LABEL_20;
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_19;
      }

      v19 = *(v2 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();
  v33 = sub_1E6378280(v32, v10, v8, sub_1E63781F4, 0);
  if (v2)
  {

    MEMORY[0x1E694F1C0](v32, -1, -1);
    __break(1u);
  }

  else
  {
    v28 = v33;

    MEMORY[0x1E694F1C0](v32, -1, -1);
LABEL_20:
    v29 = [objc_opt_self() currentNotificationCenter];
    v30 = *(v28 + 16);

    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v29 smu:v31 setBadgeNumber:0 withCompletionHandler:?];
  }
}

uint64_t sub_1E63781F4(uint64_t a1)
{
  v1 = sub_1E65D8828();
  v3 = v2;
  if (v1 == sub_1E65D9198() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();
  }

  return v5 & 1;
}

void *sub_1E6378280(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
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

    v10 = sub_1E6065518(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_1E6378310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078958, qword_1E65FE3C0);
  v9 = sub_1E65DACC8();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_1E6378704, v10);
}

void sub_1E63783E4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v20 = a1;
  if (a2)
  {
    v21 = 1;
    v15 = a1;
    a5(&v20);
    v16 = a1;
    v17 = 1;
  }

  else
  {

    a3(&v20);
    v18 = sub_1E65DACC8();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1E5E20B08, v19);

    (*(v12 + 8))(v14, v11);
    v16 = a1;
    v17 = 0;
  }

  sub_1E637871C(v16, v17);
}

uint64_t sub_1E637859C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_1E65DACA8();
}

uint64_t sub_1E6378648(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078958, qword_1E65FE3C0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E6378310(a1, a2, v2 + v6, v8, v9);
}

void sub_1E637871C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1E6378728(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_1E627F0C8(v6, 0);
}

uint64_t sub_1E63787D0()
{
  v0 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65E0708();
  return sub_1E65E31F8();
}

uint64_t sub_1E6378880@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-4] - v4;
  v6 = [v1 clickstreamMetricsEvent];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1E65E5B08();

    strcpy(v16, "actionContext");
    v16[7] = -4864;
    sub_1E65E6848();
    if (*(v8 + 16) && (v9 = sub_1E6417048(v17), (v10 & 1) != 0))
    {
      sub_1E5DFA11C(*(v8 + 56) + 32 * v9, v18);
      sub_1E6009FC0(v17);

      if (swift_dynamicCast())
      {
        sub_1E65D9D68();
        v11 = sub_1E65D9D78();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v5, 1, v11) != 1)
        {
          (*(v12 + 32))(a1, v5, v11);
          return (*(v12 + 56))(a1, 0, 1, v11);
        }

        sub_1E5DFE50C(v5, &qword_1ED073578, &qword_1E65F0E60);
      }
    }

    else
    {

      sub_1E6009FC0(v17);
    }
  }

  v13 = sub_1E65D9D78();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_1E6378AF8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076458, &qword_1E65F56A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  v6 = [v1 clickstreamMetricsEvent];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1E65E5B08();

    v15[1] = 0x79546E6F69746361;
    v15[2] = 0xEA00000000006570;
    sub_1E65E6848();
    if (*(v8 + 16) && (v9 = sub_1E6417048(v16), (v10 & 1) != 0))
    {
      sub_1E5DFA11C(*(v8 + 56) + 32 * v9, v17);
      sub_1E6009FC0(v16);

      if (swift_dynamicCast())
      {
        sub_1E65D8C48();
        v11 = sub_1E65D8C68();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v5, 1, v11) != 1)
        {
          (*(v12 + 32))(a1, v5, v11);
          return (*(v12 + 56))(a1, 0, 1, v11);
        }

        sub_1E5DFE50C(v5, &qword_1ED076458, &qword_1E65F56A8);
      }
    }

    else
    {

      sub_1E6009FC0(v16);
    }
  }

  v13 = sub_1E65D8C68();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_1E6378D68()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_1E65E5B08();

    sub_1E65E6848();
    if (*(v3 + 16) && (v4 = sub_1E6417048(v10), (v5 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v4, &v11);
      sub_1E6009FC0(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730D8, &qword_1E65ECF30);
      if (swift_dynamicCast())
      {
        if (MEMORY[0x6E6974656B72617D] && (v6 = sub_1E6215038(0x6E656D6563616C70, 0xE900000000000074), (v7 & 1) != 0))
        {
          sub_1E5DFA11C(MEMORY[0x6E6974656B7261A5] + 32 * v6, v10);

          if (swift_dynamicCast())
          {

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1E6009FC0(v10);
    }

    sub_1E65E6848();
    if (*(v3 + 16) && (v8 = sub_1E6417048(v10), (v9 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v8, &v11);
      sub_1E6009FC0(v10);

      if (swift_dynamicCast())
      {
        return 0x6E656D6563616C70;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_1E6009FC0(v10);
      return 0;
    }
  }

  return result;
}

id sub_1E6378FAC()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_1E65E5B08();

    sub_1E65E6848();
    if (*(v3 + 16) && (v4 = sub_1E6417048(v10), (v5 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v4, &v11);
      sub_1E6009FC0(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730D8, &qword_1E65ECF30);
      if (swift_dynamicCast())
      {
        if (MEMORY[0x6E6974656B72617D] && (v6 = sub_1E6215038(0x496567617373656DLL, 0xE900000000000064), (v7 & 1) != 0))
        {
          sub_1E5DFA11C(MEMORY[0x6E6974656B7261A5] + 32 * v6, v10);

          if (swift_dynamicCast())
          {

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1E6009FC0(v10);
    }

    sub_1E65E6848();
    if (*(v3 + 16) && (v8 = sub_1E6417048(v10), (v9 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v8, &v11);
      sub_1E6009FC0(v10);

      if (swift_dynamicCast())
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_1E6009FC0(v10);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E63791FC()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_1E65E5B08();

    sub_1E65E6848();
    if (*(v3 + 16) && (v4 = sub_1E6417048(v6), (v5 & 1) != 0))
    {
      sub_1E5DFA11C(*(v3 + 56) + 32 * v4, v7);
      sub_1E6009FC0(v6);

      if (swift_dynamicCast())
      {
        return 0x6449746567726174;
      }
    }

    else
    {

      sub_1E6009FC0(v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E6379318@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076450, &qword_1E65F56A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  v6 = [v1 clickstreamMetricsEvent];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1E65E5B08();

    v15[1] = 0x7954746567726174;
    v15[2] = 0xEA00000000006570;
    sub_1E65E6848();
    if (*(v8 + 16) && (v9 = sub_1E6417048(v16), (v10 & 1) != 0))
    {
      sub_1E5DFA11C(*(v8 + 56) + 32 * v9, v17);
      sub_1E6009FC0(v16);

      if (swift_dynamicCast())
      {
        sub_1E65D8F08();
        v11 = sub_1E65D8F28();
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v5, 1, v11) != 1)
        {
          (*(v12 + 32))(a1, v5, v11);
          return (*(v12 + 56))(a1, 0, 1, v11);
        }

        sub_1E5DFE50C(v5, &qword_1ED076450, &qword_1E65F56A0);
      }
    }

    else
    {

      sub_1E6009FC0(v16);
    }
  }

  v13 = sub_1E65D8F28();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_1E6379588()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6373627553746F6ELL;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000025;
    if (v1 != 4)
    {
      v6 = 0xD000000000000017;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x5379646165726C61;
    v3 = 0xD000000000000017;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = 0x64656C6261736964;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioLanguageEngagementSheetDetourError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioLanguageEngagementSheetDetourError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E63797FC()
{
  result = qword_1ED078960;
  if (!qword_1ED078960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078960);
  }

  return result;
}

uint64_t sub_1E6379850()
{
  v16 = sub_1E65D7048();
  v0 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E65DBB48();
  v4 = result;
  v19 = 0;
  v20 = 0xE000000000000000;
  v15 = *(result + 16);
  if (v15)
  {
    v5 = 0;
    v6 = (v0 + 8);
    v7 = (result + 40);
    while (v5 < *(v4 + 16))
    {
      v9 = *v7;
      v17 = *(v7 - 1);
      v18 = v9;

      sub_1E65D7038();
      sub_1E5F9AEA8();
      v10 = sub_1E65E6698();
      (*v6)(v2, v16);
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
      sub_1E6379A84();
      v11 = sub_1E65E5B68();
      v13 = v12;

      if (!v19 && v20 == 0xE000000000000000 || (sub_1E65E6C18() & 1) != 0)
      {
        v8 = v11;
      }

      else
      {
        v17 = 44;
        v18 = 0xE100000000000000;
        MEMORY[0x1E694D7C0](v11, v13);

        v8 = v17;
        v13 = v18;
      }

      MEMORY[0x1E694D7C0](v8, v13);
      ++v5;

      v7 += 2;
      if (v15 == v5)
      {
        v14 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 0;
LABEL_12:

    return v14;
  }

  return result;
}

unint64_t sub_1E6379A84()
{
  result = qword_1EE2D4838;
  if (!qword_1EE2D4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4838);
  }

  return result;
}

uint64_t sub_1E6379AE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6379B08, 0, 0);
}

uint64_t sub_1E6379B08(uint64_t a1)
{
  v2 = *(sub_1E65DBB48() + 16);

  if (v2 < 2)
  {
    v10 = sub_1E65DBB48();
    if (v10[2])
    {
      v11 = v10[4];
      v12 = v10[5];
      v1[9] = v12;

      type metadata accessor for AppEnvironment(0);
      v13 = AwardsService.fetchSeymourAchievementImage.getter();
      v1[10] = v14;
      v20 = (v13 + *v13);
      v15 = swift_task_alloc();
      v1[11] = v15;
      *v15 = v1;
      v15[1] = sub_1E6379FA0;
      v16.n128_u64[0] = 0x4069000000000000;
      v17.n128_u64[0] = 0x4069000000000000;

      return v20(v11, v12, v16, v17);
    }

    else
    {

      v18 = v1[1];

      return v18(0, 0xF000000000000000);
    }
  }

  else
  {
    type metadata accessor for AppEnvironment(0);
    v3 = AwardsService.fetchCoalescedSeymourAchievementImage.getter();
    v1[4] = v4;
    v5 = sub_1E65DBB48();
    v1[5] = v5;
    v19 = (v3 + *v3);
    v6 = swift_task_alloc();
    v1[6] = v6;
    *v6 = v1;
    v6[1] = sub_1E6379DCC;
    v7.n128_u64[0] = 0x4072C00000000000;
    v8.n128_u64[0] = 0x4069000000000000;

    return v19(v5, v7, v8);
  }
}

uint64_t sub_1E6379DCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1E637A174;
  }

  else
  {

    v4 = sub_1E6379EF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6379EF0()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(*(v0 + 56));
    if (v2)
    {
      v3 = v2;
      v4 = sub_1E65D7518();
      v6 = v5;

      v7 = v6;
      v8 = v4;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v7 = 0xF000000000000000;
LABEL_6:
  v9 = *(v0 + 8);

  return v9(v8, v7);
}

uint64_t sub_1E6379FA0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1E637A1E0;
  }

  else
  {

    v4 = sub_1E637A0C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E637A0C4()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(*(v0 + 96));
    if (v2)
    {
      v3 = v2;
      v4 = sub_1E65D7518();
      v6 = v5;

      v7 = v6;
      v8 = v4;
      goto LABEL_6;
    }
  }

  v8 = 0;
  v7 = 0xF000000000000000;
LABEL_6:
  v9 = *(v0 + 8);

  return v9(v8, v7);
}

uint64_t sub_1E637A174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E637A1E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E637A270@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a5;
  v7 = sub_1E65E07B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - v14;
  MEMORY[0x1EEE9AC00](v13);
  if (a1 >= 2u)
  {
    if (a1 == 3)
    {

      return sub_1E65E09F8();
    }

    else
    {
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD00000000000003FLL, 0x80000001E6616810);
      LOBYTE(v23) = 2;
      sub_1E65E69B8();
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v19[1] = v17;
    v19[2] = v16;
    if (a4 != -1)
    {
      v25 = v20;
      v26 = v21;
      v27 = a4;
      v23 = xmmword_1E65FE4F0;
      v24 = 1;
      sub_1E5F8710C(v20, v21, a4 & 1);
      sub_1E6018A94();
      sub_1E6018AE8();
      sub_1E65D7FD8();
      sub_1E5FEE4CC(v25, v26, v27);
    }

    sub_1E65E0768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    (*(v8 + 8))(v15, v7);
    if (a4 != -1)
    {
      v25 = v20;
      v26 = v21;
      v27 = a4;
      v23 = xmmword_1E65FE4F0;
      v24 = 1;
      sub_1E5F8710C(v20, v21, a4 & 1);
      sub_1E6018A94();
      sub_1E6018AE8();
      sub_1E65D7FD8();
      sub_1E5FEE4CC(v25, v26, v27);
    }

    sub_1E65E0778();
    sub_1E65E0778();
    sub_1E65E0778();
    sub_1E65E0778();
    return sub_1E65E09E8();
  }

  return result;
}

uint64_t sub_1E637A69C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E0708();
  sub_1E65E0708();
  return sub_1E65DD0E8();
}

uint64_t sub_1E637A744(uint64_t a1, uint64_t a2)
{
  sub_1E65DCC38();
  sub_1E65DCC28();
  sub_1E65DCC48();
  sub_1E65D8378();
  v3 = sub_1E65DCC58();
  v4 = *(*(v3 - 8) + 8);

  return v4(a2, v3);
}

uint64_t SectionMetrics.init(identifier:name:targetType:type:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for SectionMetrics(0);
  v11 = *(v10 + 24);
  v12 = sub_1E65D8F28();
  result = (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  *&a7[*(v10 + 32)] = a6;
  return result;
}

uint64_t SectionMetrics.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SectionMetrics.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SectionMetrics.targetType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SectionMetrics(0) + 24);
  v4 = sub_1E65D8F28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SectionMetrics.metadata.getter()
{
  type metadata accessor for SectionMetrics(0);
}

uint64_t sub_1E637A9B8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7954746567726174;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E637AA48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E637BC04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E637AA70(uint64_t a1)
{
  v2 = sub_1E637B944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E637AAAC(uint64_t a1)
{
  v2 = sub_1E637B944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SectionMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078968, &qword_1E65FE500);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E637B944();
  sub_1E65E6DA8();
  v16 = 0;
  sub_1E65E6B48();
  if (!v2)
  {
    v15 = 1;
    sub_1E65E6B48();
    v9 = type metadata accessor for SectionMetrics(0);
    v14 = 2;
    sub_1E65D8F28();
    sub_1E5DFC960(&qword_1EE2D70D0, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD10]);
    sub_1E65E6B78();
    v13 = 3;
    sub_1E60EE2B8();
    sub_1E65E6B78();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
    sub_1E637B998(&qword_1EE2D4940, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SectionMetrics.hash(into:)(uint64_t a1)
{
  sub_1E65E5D78();
  sub_1E65E5D78();
  v3 = type metadata accessor for SectionMetrics(0);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD18]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  v4 = *(v1 + *(v3 + 32));

  return sub_1E61AFF18(a1, v4);
}

uint64_t SectionMetrics.hashValue.getter()
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E5D78();
  v1 = type metadata accessor for SectionMetrics(0);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD18]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  sub_1E61AFF18(v3, *(v0 + *(v1 + 32)));
  return sub_1E65E6D78();
}

uint64_t SectionMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1E65D8F28();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078970, &qword_1E65FE508);
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = v19 - v6;
  v8 = type metadata accessor for SectionMetrics(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E637B944();
  v24 = v7;
  v11 = v26;
  sub_1E65E6D98();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  v13 = v23;
  v32 = 0;
  *v10 = sub_1E65E6AA8();
  v10[1] = v14;
  v26 = v14;
  v31 = 1;
  v10[2] = sub_1E65E6AA8();
  v10[3] = v15;
  v30 = 2;
  sub_1E5DFC960(&qword_1ED075340, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD28]);
  v19[1] = 0;
  v20 = v10;
  sub_1E65E6AD8();
  v16 = *(v13 + 32);
  v17 = v20;
  v16(v20 + *(v8 + 24), v5, v3);
  v29 = 3;
  sub_1E60EE30C();
  sub_1E65E6AD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
  v28 = 4;
  sub_1E637B998(&qword_1ED078978, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1E65E6AD8();
  (*(v12 + 8))(v24, v25);
  *(v17 + *(v8 + 32)) = v27;
  sub_1E637BA04(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E637BA68(v17);
}

uint64_t sub_1E637B44C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1E637B4AC(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E5D78();
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD18]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  sub_1E61AFF18(v4, *(v1 + *(a1 + 32)));
  return sub_1E65E6D78();
}

uint64_t sub_1E637B598(uint64_t a1, uint64_t a2)
{
  sub_1E65E5D78();
  sub_1E65E5D78();
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD18]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  v5 = *(v2 + *(a2 + 32));

  return sub_1E61AFF18(a1, v5);
}

uint64_t sub_1E637B67C(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  sub_1E65E5D78();
  sub_1E65E5D78();
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C8, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD18]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  sub_1E61AFF18(v5, *(v2 + *(a2 + 32)));
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard14SectionMetricsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E65E6C18() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E65E6C18() & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = type metadata accessor for SectionMetrics(0);
  sub_1E65D8F28();
  sub_1E5DFC960(&qword_1EE2D70C0, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD20]);
  sub_1E65E5E98();
  sub_1E65E5E98();
  if (v17 == v15 && v18 == v16)
  {
  }

  else
  {
    v7 = sub_1E65E6C18();

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v8 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v10 = v9;
  if (v8 != _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() || v10 != v11)
  {
    v12 = sub_1E65E6C18();

    if (v12)
    {
      goto LABEL_19;
    }

LABEL_20:
    v13 = 0;
    return v13 & 1;
  }

LABEL_19:
  v13 = sub_1E6287024(*(a1 + *(v6 + 32)), *(a2 + *(v6 + 32)));
  return v13 & 1;
}

unint64_t sub_1E637B944()
{
  result = qword_1EE2DA968;
  if (!qword_1EE2DA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA968);
  }

  return result;
}

uint64_t sub_1E637B998(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072380, &qword_1E65EABB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E637BA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E637BA68(uint64_t a1)
{
  v2 = type metadata accessor for SectionMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E637BB00()
{
  result = qword_1ED078980;
  if (!qword_1ED078980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078980);
  }

  return result;
}

unint64_t sub_1E637BB58()
{
  result = qword_1EE2DA958;
  if (!qword_1EE2DA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA958);
  }

  return result;
}

unint64_t sub_1E637BBB0()
{
  result = qword_1EE2DA960;
  if (!qword_1EE2DA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA960);
  }

  return result;
}

uint64_t sub_1E637BC04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E637BDCC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E637BE58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1E637C034(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1E637C34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v4 = *(a1 + 24);
  sub_1E65E3DE8();
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  v6 = sub_1E65E4AC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v15[4] = v5;
  v15[5] = v4;
  v16 = *(a1 + 32);
  v17 = v2;
  sub_1E65E4BA8();
  sub_1E65E4AB8();
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v13 = *(v7 + 8);
  v13(v10, v6);
  sub_1E5FEE4C8();
  return (v13)(v12, v6);
}

uint64_t sub_1E637C54C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31[1] = a1;
  v32 = a4;
  v36 = a6;
  v35 = *(a2 - 1);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v34 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = v31 - v13;
  v14 = sub_1E65E3DE8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v37 = v31 - v19;
  v40[0] = sub_1E65E4998();
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v20 = type metadata accessor for MenuView(0, &v41);
  v21 = MEMORY[0x1E6981580];
  MEMORY[0x1E694C310](a1 + *(v20 + 52), MEMORY[0x1E69815C0], a3, MEMORY[0x1E6981580]);

  v40[2] = v21;
  v40[3] = a5;
  WitnessTable = swift_getWitnessTable();
  v23 = v37;
  sub_1E5FEE4C8();
  v24 = *(v15 + 8);
  v24(v18, v14);
  v26 = v32;
  v25 = v33;
  sub_1E5FEE4C8();
  (*(v15 + 16))(v18, v23, v14);
  v41 = v18;
  v27 = v34;
  v28 = v35;
  (*(v35 + 16))(v34, v25, a2);
  v42 = v27;
  v40[0] = v14;
  v40[1] = a2;
  v38 = WitnessTable;
  v39 = v26;
  sub_1E61C9298(&v41, 2uLL, v40);
  v29 = *(v28 + 8);
  v29(v25, a2);
  v24(v37, v14);
  v29(v27, a2);
  return (v24)(v18, v14);
}

uint64_t sub_1E637C87C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65DE3E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1E637E7C0(&qword_1EE2D6AE8, MEMORY[0x1E69CAD50], MEMORY[0x1E69CAD58]), v7 = sub_1E65E5B38(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1E637E7C0(&qword_1EE2D6AE0, MEMORY[0x1E69CAD50], MEMORY[0x1E69CAD60]);
      v15 = sub_1E65E5B98();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1E637CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E65E6D28();
  sub_1E65E5D78();
  v6 = sub_1E65E6D78();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E65E6C18() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1E637CB8C(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v3);
  v4 = sub_1E65E6D78();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1E637CC58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65D76F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1E637E7C0(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_1E65E5B38(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1E637E7C0(&qword_1EE2D71A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1E65E5B98();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1E637CE70(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1E65E6D28(), sub_1E65D8308(), sub_1E65E5D78(), , v3 = sub_1E65E6D78(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_1E65D8308();
      v9 = v8;
      if (v7 == sub_1E65D8308() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E65E6C18();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1E637CFC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_1E65E6D28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E637E76C();
  sub_1E65D7FC8();
  v5 = sub_1E65E6D78();
  v6 = -1 << *(a4 + 32);
  v7 = v5 & ~v6;
  if ((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1E6217698();
    sub_1E6069558();
    do
    {
      v9 = sub_1E65D7FD8();
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_1E637D138(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E65E6D28();
  v3 = sub_1E65E2C18();
  MEMORY[0x1E694E740](v3);
  v4 = sub_1E65E6D78();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = sub_1E65E2C18();
    v9 = v8 == sub_1E65E2C18();
    result = v9;
    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1E637D220(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E65E6D28();
  sub_1E65E03B8();
  v3 = sub_1E65E6D78();
  v4 = -1 << *(a2 + 32);
  v5 = v3 & ~v4;
  if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = sub_1E65E03A8();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t MetricEnterEventDetour.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MetricEnterEventDetour.resolveDetour(for:composer:display:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1E65D8A08();
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v4[11] = swift_task_alloc();
  v5 = sub_1E65D8C88();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for RouteResource(0);
  v4[16] = swift_task_alloc();
  v6 = sub_1E65DE3E8();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078988, &qword_1E65FE830);
  v4[20] = swift_task_alloc();
  v7 = sub_1E65D97D8();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E637D684, 0, 0);
}

uint64_t sub_1E637D684()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_1E637DCF8(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E637E638(v0[20]);
  }

  else
  {
    v4 = v0[19];
    v5 = v0[17];
    v6 = v0[18];
    (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
    v7 = sub_1E65DAE18();
    (*(v6 + 104))(v4, *MEMORY[0x1E69CAD28], v5);
    v8 = sub_1E637C87C(v4, v7);

    (*(v6 + 8))(v4, v5);
    if (v8)
    {
      sub_1E637E808(v0[3], v0[16], type metadata accessor for RouteResource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v10 = v0[16];
      if (EnumCaseMultiPayload == 3)
      {

        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v12 = sub_1E65D72D8();
        (*(*(v12 - 8) + 8))(v10 + v11, v12);
        v13 = sub_1E65E03C8();
        v15 = v14;
        if (v13 == sub_1E65E03C8() && v15 == v16)
        {
        }

        else
        {
          sub_1E65E6C18();
        }
      }

      else
      {
        sub_1E637E870(v0[16], type metadata accessor for RouteResource);
      }
    }

    v17 = v0[10];
    v18 = v0[11];
    v20 = v0[8];
    v19 = v0[9];
    v22 = v0[6];
    v21 = v0[7];
    (*(v0[22] + 16))(v0[23], v0[24], v0[21]);
    v23 = sub_1E65D7A38();
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = sub_1E65D9208();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    v25 = sub_1E65D9218();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    sub_1E65D8CA8();
    v26 = sub_1E65D8CB8();
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
    v28 = sub_1E65D9928();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    sub_1E65D8C78();
    sub_1E65E6158();
    v29 = v0[24];
    v30 = v0[21];
    v31 = v0[22];
    v33 = v0[13];
    v32 = v0[14];
    v34 = v0[12];
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v35 = MetricService.record.getter();
    v35(v32);

    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v29, v30);
  }

  sub_1E637E808(v0[3], v0[2], type metadata accessor for RouteDestination);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1E637DCF8@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v2 = type metadata accessor for RouteResource(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppLaunchScope(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for URLContext(0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RouteSource(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v71 - v16;
  v18 = type metadata accessor for RouteDestination(0);
  sub_1E637E808(v1 + *(v18 + 20), v17, type metadata accessor for RouteSource);
  v73 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v20 = v73;
      sub_1E637E808(v73, v12, type metadata accessor for RouteSource);
      sub_1E637E8D0(v12, v7, type metadata accessor for AppLaunchScope);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        v21 = v71;
        sub_1E637E8D0(v7, v71, type metadata accessor for URLContext);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
        v23 = v46[12];
        v24 = v46[16];
        v25 = v46[20];
        v26 = MEMORY[0x1E69CBAE8];
        goto LABEL_13;
      }

      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
      v56 = v60[12];
      v57 = v60[16];
      v49 = v74;
      v58 = (v74 + v60[20]);
      v59 = MEMORY[0x1E69CBAE8];
LABEL_24:
      v61 = *v59;
      v62 = sub_1E65D8C98();
      (*(*(v62 - 8) + 104))(v49, v61, v62);
      v63 = sub_1E65D74E8();
      v64 = *(*(v63 - 8) + 56);
      v64(v49 + v56, 1, 1, v63);
      v64(v49 + v57, 1, 1, v63);
      *v58 = 0;
      v58[1] = 0;
      goto LABEL_25;
    case 8:
      if (sub_1E637CB8C(1u, *(v1 + *(v18 + 24))))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
        v28 = v27[12];
        v29 = v27[16];
        v30 = v74;
        v31 = (v74 + v27[20]);
        v32 = *MEMORY[0x1E69CBAE8];
        v33 = sub_1E65D8C98();
        (*(*(v33 - 8) + 104))(v30, v32, v33);
        v34 = sub_1E65D74E8();
        v35 = *(*(v34 - 8) + 56);
        v35(v30 + v28, 1, 1, v34);
        v35(v30 + v29, 1, 1, v34);
        *v31 = 0;
        v31[1] = 0;
        v36 = *MEMORY[0x1E69CC338];
        v37 = sub_1E65D97D8();
        v38 = *(v37 - 8);
        (*(v38 + 104))(v30, v36, v37);
        (*(v38 + 56))(v30, 0, 1, v37);
        v39 = v73;
        return sub_1E637E870(v39, type metadata accessor for RouteSource);
      }

      break;
    case 2:
      v20 = v73;
      sub_1E637E808(v73, v15, type metadata accessor for RouteSource);
      v21 = v71;
      sub_1E637E8D0(v15, v71, type metadata accessor for URLContext);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
      v23 = v22[12];
      v24 = v22[16];
      v25 = v22[20];
      v26 = MEMORY[0x1E69CBAE0];
LABEL_13:
      v47 = *v26;
      v48 = sub_1E65D8C98();
      v49 = v74;
      (*(*(v48 - 8) + 104))(v74, v47, v48);
      v50 = sub_1E65D74E8();
      v51 = *(v50 - 8);
      (*(v51 + 32))(v49 + v23, v21, v50);
      (*(v51 + 56))(v49 + v23, 0, 1, v50);
      v52 = v72;
      sub_1E6009E5C(v21 + *(v72 + 20), v49 + v24);
      *(v49 + v25) = *(v21 + *(v52 + 24));
LABEL_25:
      v65 = *MEMORY[0x1E69CC338];
      v66 = sub_1E65D97D8();
      v67 = *(v66 - 8);
      (*(v67 + 104))(v49, v65, v66);
      (*(v67 + 56))(v49, 0, 1, v66);
      v39 = v20;
      return sub_1E637E870(v39, type metadata accessor for RouteSource);
  }

  sub_1E637E808(v1, v4, type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 3)
  {

    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
    v41 = sub_1E65D72D8();
    (*(*(v41 - 8) + 8))(&v4[v40], v41);
    v42 = sub_1E65E03C8();
    v44 = v43;
    if (v42 == sub_1E65E03C8() && v44 == v45)
    {

      v20 = v73;
LABEL_19:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
      v56 = v55[12];
      v57 = v55[16];
      v49 = v74;
      v58 = (v74 + v55[20]);
      v59 = MEMORY[0x1E69CBAF0];
      goto LABEL_24;
    }

    v54 = sub_1E65E6C18();

    v20 = v73;
    if (v54)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1E637E870(v4, type metadata accessor for RouteResource);
    v20 = v73;
  }

  v53 = swift_getEnumCaseMultiPayload();
  if (v53 > 4)
  {
    if ((v53 - 5) >= 5)
    {
      goto LABEL_30;
    }

LABEL_29:
    v70 = sub_1E65D97D8();
    return (*(*(v70 - 8) + 56))(v74, 1, 1, v70);
  }

  if (v53 == 1 || v53 == 3)
  {
    sub_1E637E870(v20, type metadata accessor for RouteSource);
    goto LABEL_29;
  }

  if (v53 == 4)
  {
    v69 = sub_1E65D8D48();
    (*(*(v69 - 8) + 8))(v20, v69);
    goto LABEL_29;
  }

LABEL_30:
  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E637E638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078988, &qword_1E65FE830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E637E6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return MetricEnterEventDetour.resolveDetour(for:composer:display:)(a1, a2, a3);
}

unint64_t sub_1E637E76C()
{
  result = qword_1ED078990;
  if (!qword_1ED078990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078990);
  }

  return result;
}

uint64_t sub_1E637E7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E637E808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E637E870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E637E8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E637E93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v54 = a3;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v48 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v57 = (&v48 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  sub_1E5E1DEAC(v4, &v48 - v18);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v21);
  v23 = (v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a1;
  v23[1] = a2;
  sub_1E65E5148();

  v49 = sub_1E65E5138();
  v56 = v4;
  sub_1E5E1DEAC(v4, v17);
  v24 = ((v20 + 32) & ~v20) + v9;
  v50 = v24;
  v51 = (v20 + 32) & ~v20;
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1E65FE8C8;
  *(v25 + 24) = v22;
  v48 = &unk_1E65FE8C8;
  sub_1E5E1FA80(v57, v25 + ((v20 + 32) & ~v20));
  *(v25 + v24) = 0;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  v57 = sub_1E6172524;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v25 + (((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = MEMORY[0x1E69AB380];
  v29 = v49;
  *v27 = v49;
  v27[1] = v28;
  v30 = v52;
  sub_1E5E1DEAC(v4, v52);
  v31 = (v20 + 48) & ~v20;
  v32 = v31 + v9;
  v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = &unk_1E65FE8C8;
  v34[3] = v22;
  v34[4] = v29;
  v35 = v29;
  v34[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v30, v34 + v31);
  *(v34 + v32) = 0;
  v36 = v34 + v33;
  v37 = v56;
  *(v36 + 1) = v57;
  *(v36 + 2) = 0;
  v38 = v53;
  sub_1E5E1DEAC(v37, v53);
  v39 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v48;
  v40[2] = v48;
  v40[3] = v22;
  v40[4] = v35;
  v40[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v38, v40 + v31);
  v42 = v40 + v39;
  v43 = v56;
  *v42 = v57;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v44 = v55;
  sub_1E5E1DEAC(v43, v55);
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v22;
  sub_1E5E1FA80(v44, v45 + v51);
  swift_retain_n();
  result = swift_retain_n();
  v47 = v54;
  *v54 = v35;
  v47[1] = MEMORY[0x1E69AB380];
  v47[2] = &unk_1E65EB918;
  v47[3] = v25;
  v47[4] = &unk_1E65FA770;
  v47[5] = v34;
  v47[6] = &unk_1E65EB920;
  v47[7] = v40;
  v47[8] = &unk_1E65FA780;
  v47[9] = v45;
  return result;
}

uint64_t sub_1E637ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v4[8] = swift_task_alloc();
  sub_1E65D72D8();
  v4[9] = swift_task_alloc();
  v5 = sub_1E65D8518();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v4[14] = swift_task_alloc();
  v6 = sub_1E65D94D8();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_1E65E32E8();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v8 = sub_1E65E2F28();
  v4[21] = v8;
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078998, &qword_1E65FE8D0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E637F054, 0, 0);
}

uint64_t sub_1E637F054()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = v0[2];
  if (*(v1 + 16) && (v2 = sub_1E6215038(v0[5], v0[6]), (v3 & 1) != 0))
  {
    v4 = v0[25];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];
    (*(v6 + 16))(v5, *(v1 + 56) + *(v6 + 72) * v2, v7);

    sub_1E65E2ED8();
    (*(v6 + 8))(v5, v7);
    v8 = sub_1E65E2F88();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = v0[25];

    v8 = sub_1E65E2F88();
    (*(*(v8 - 8) + 56))(v9, 1, 1, v8);
  }

  v10 = v0[24];
  sub_1E6381F38(v0[25], v10);
  sub_1E65E2F88();
  v11 = *(v8 - 8);
  if ((*(v11 + 48))(v10, 1, v8) == 1)
  {
    v12 = v0[24];
    sub_1E6381FA8(v0[25]);
    sub_1E6381FA8(v12);
LABEL_12:
    v25 = v0[3];
    v26 = sub_1E65D7A38();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

    v27 = v0[1];

    return v27();
  }

  if ((*(v11 + 88))(v0[24], v8) != *MEMORY[0x1E699EAC8])
  {
    v24 = v0[24];
    sub_1E6381FA8(v0[25]);
    (*(v11 + 8))(v24, v8);
    goto LABEL_12;
  }

  v13 = v0[24];
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[18];
  (*(v11 + 96))(v13, v8);
  (*(v15 + 32))(v14, v13, v16);
  v0[26] = type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v17 = CatalogService.fetchRemoteCatalogProgramDetail.getter();
  v0[27] = v18;
  v28 = (v17 + *v17);
  v19 = swift_task_alloc();
  v0[28] = v19;
  *v19 = v0;
  v19[1] = sub_1E637F4D0;
  v20 = v0[17];
  v21 = v0[5];
  v22 = v0[6];

  return v28(v20, v21, v22);
}

uint64_t sub_1E637F4D0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {

    v2 = sub_1E637F9B8;
  }

  else
  {
    v2 = sub_1E637F5EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E637F5EC()
{
  v18 = v0[26];
  v29 = v0[25];
  v22 = v0[20];
  v27 = v0[19];
  v28 = v0[18];
  v20 = v0[17];
  v25 = v0[16];
  v26 = v0[15];
  v1 = v0[14];
  v19 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v23 = v0[8];
  v21 = v0[10];
  v4 = v0[4];
  v24 = v0[7];

  v5 = *MEMORY[0x1E69CBDC8];
  v6 = sub_1E65D8F38();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v1, v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = (v4 + *(v18 + 36));
  v10 = *v8;
  v9 = v8[1];

  sub_1E5FA9D34(v10, v9);
  sub_1E65D9498();
  sub_1E65D8498();
  (*(v2 + 8))(v3, v21);
  v11 = sub_1E65D74E8();
  (*(*(v11 - 8) + 56))(v19, 0, 1, v11);
  sub_1E65E32D8();
  sub_1E65E5D58();
  v12 = sub_1E65D9908();
  (*(*(v12 - 8) + 56))(v23, 1, 1, v12);
  v13 = sub_1E65D9F88();
  (*(*(v13 - 8) + 56))(v24, 1, 1, v13);
  sub_1E65D7A28();
  (*(v25 + 8))(v20, v26);
  (*(v27 + 8))(v22, v28);
  sub_1E6381FA8(v29);
  v14 = v0[3];
  v15 = sub_1E65D7A38();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E637F9B8()
{
  v1 = v0[25];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1E6381FA8(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E637FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[8] = type metadata accessor for PageMetricsClick(0);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v9 = sub_1E65E2F28();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v10 = sub_1E65E3298();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v11 = sub_1E65E2F38();
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E637FCAC, 0, 0);
}

uint64_t sub_1E637FCAC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699EA98])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x1E699EA68])
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
LABEL_8:
    v149 = (*(v0[4] + 16) + **(v0[4] + 16));
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_1E6380EA4;

    return v149();
  }

  if (v4 == *MEMORY[0x1E699EA58])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x1E699EA70])
  {
    v8 = v0[22];
    (*(v0[21] + 96))(v8, v0[20]);
    v9 = sub_1E65D74E8();
    (*(*(v9 - 8) + 8))(v8, v9);
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699EAA0])
  {
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699EA80])
  {
    goto LABEL_8;
  }

  if (v4 == *MEMORY[0x1E699EA90])
  {
    swift_getKeyPath();
    sub_1E65E4EC8();

    v10 = v0[2];
    if (!*(v10 + 16) || (v11 = sub_1E6215038(v0[6], v0[7]), (v12 & 1) == 0))
    {

      goto LABEL_3;
    }

    v14 = v0[18];
    v13 = v0[19];
    v16 = v0[16];
    v15 = v0[17];
    v17 = v0[14];
    v18 = v0[15];
    (*(v18 + 16))(v16, *(v10 + 56) + *(v18 + 72) * v11, v17);

    sub_1E65E2EE8();
    (*(v18 + 8))(v16, v17);
    v19 = (*(v14 + 88))(v13, v15);
    LODWORD(v16) = *MEMORY[0x1E699EBA0];
    (*(v14 + 8))(v13, v15);
    if (v19 != v16)
    {
LABEL_3:

      v5 = v0[1];

      return v5();
    }

    v20 = v0[13];
    v21 = v0[7];
    v22 = v0[8];
    v23 = v0[6];
    v24 = v0[4];
    v25 = sub_1E65D9D78();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    v26 = v22[5];
    v27 = *MEMORY[0x1E69CBA00];
    v28 = sub_1E65D8C68();
    (*(*(v28 - 8) + 104))(v20 + v26, v27, v28);
    v29 = v22[6];
    v30 = sub_1E65D74E8();
    (*(*(v30 - 8) + 56))(v20 + v29, 1, 1, v30);
    v31 = v22[8];
    v32 = sub_1E65DA208();
    (*(*(v32 - 8) + 56))(v20 + v31, 1, 1, v32);
    v33 = v22[14];
    v34 = *MEMORY[0x1E69CBCC8];
    v35 = sub_1E65D8F28();
    (*(*(v35 - 8) + 104))(v20 + v33, v34, v35);
    v36 = v22[15];
    v37 = sub_1E65D9908();
    (*(*(v37 - 8) + 56))(v20 + v36, 1, 1, v37);
    v38 = MEMORY[0x1E69E7CC0];
    v39 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v20 + v22[7]) = v38;
    v40 = (v20 + v22[9]);
    *v40 = 0;
    v40[1] = 0;
    v41 = (v20 + v22[10]);
    *v41 = 0;
    v41[1] = 0;
    *(v20 + v22[11]) = v39;
    v42 = (v20 + v22[12]);
    *v42 = 0;
    v42[1] = 0;
    v43 = (v20 + v22[13]);
    *v43 = v23;
    v43[1] = v21;
    v44 = *(v24 + 48);

    v150 = (v44 + *v44);
    v45 = swift_task_alloc();
    v0[24] = v45;
    *v45 = v0;
    v45[1] = sub_1E6381098;
    v46 = v0[13];
    goto LABEL_30;
  }

  if (v4 != *MEMORY[0x1E699EA60])
  {
    if (v4 == *MEMORY[0x1E699EAA8])
    {
      v73 = v0[11];
      v74 = v0[7];
      v75 = v0[8];
      v76 = v0[6];
      v77 = v0[4];
      v78 = sub_1E65D9D78();
      (*(*(v78 - 8) + 56))(v73, 1, 1, v78);
      v79 = v75[5];
      v80 = *MEMORY[0x1E69CBA68];
      v81 = sub_1E65D8C68();
      (*(*(v81 - 8) + 104))(v73 + v79, v80, v81);
      v82 = v75[6];
      v83 = sub_1E65D74E8();
      (*(*(v83 - 8) + 56))(v73 + v82, 1, 1, v83);
      v84 = v75[8];
      v85 = sub_1E65DA208();
      (*(*(v85 - 8) + 56))(v73 + v84, 1, 1, v85);
      v86 = v75[14];
      v87 = *MEMORY[0x1E69CBCC8];
      v88 = sub_1E65D8F28();
      (*(*(v88 - 8) + 104))(v73 + v86, v87, v88);
      v89 = v75[15];
      v90 = sub_1E65D9908();
      (*(*(v90 - 8) + 56))(v73 + v89, 1, 1, v90);
      v91 = MEMORY[0x1E69E7CC0];
      v92 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v73 + v75[7]) = v91;
      v93 = (v73 + v75[9]);
      *v93 = 0;
      v93[1] = 0;
      v94 = (v73 + v75[10]);
      *v94 = 0;
      v94[1] = 0;
      *(v73 + v75[11]) = v92;
      v95 = (v73 + v75[12]);
      *v95 = 0;
      v95[1] = 0;
      v96 = (v73 + v75[13]);
      *v96 = v76;
      v96[1] = v74;
      v97 = *(v77 + 48);

      v150 = (v97 + *v97);
      v98 = swift_task_alloc();
      v0[28] = v98;
      *v98 = v0;
      v98[1] = sub_1E6381460;
      v46 = v0[11];
      goto LABEL_30;
    }

    if (v4 == *MEMORY[0x1E699EA88])
    {
      v100 = v0[8];
      v99 = v0[9];
      v102 = v0[6];
      v101 = v0[7];
      v103 = v0[4];
      v104 = sub_1E65D9D78();
      (*(*(v104 - 8) + 56))(v99, 1, 1, v104);
      v105 = v100[5];
      v106 = *MEMORY[0x1E69CBA28];
      v107 = sub_1E65D8C68();
      (*(*(v107 - 8) + 104))(v99 + v105, v106, v107);
      v108 = v100[6];
      v109 = sub_1E65D74E8();
      (*(*(v109 - 8) + 56))(v99 + v108, 1, 1, v109);
      v110 = v100[8];
      v111 = sub_1E65DA208();
      (*(*(v111 - 8) + 56))(v99 + v110, 1, 1, v111);
      v112 = v100[14];
      v113 = *MEMORY[0x1E69CBCC8];
      v114 = sub_1E65D8F28();
      (*(*(v114 - 8) + 104))(v99 + v112, v113, v114);
      v115 = v100[15];
      v116 = *MEMORY[0x1E69CC420];
      v117 = sub_1E65D9908();
      v118 = *(v117 - 8);
      (*(v118 + 104))(v99 + v115, v116, v117);
      (*(v118 + 56))(v99 + v115, 0, 1, v117);
      v119 = MEMORY[0x1E69E7CC0];
      v120 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v99 + v100[7]) = v119;
      v121 = (v99 + v100[9]);
      *v121 = 0;
      v121[1] = 0;
      v122 = (v99 + v100[10]);
      *v122 = 0;
      v122[1] = 0;
      *(v99 + v100[11]) = v120;
      v123 = (v99 + v100[12]);
      *v123 = 0;
      v123[1] = 0;
      v124 = (v99 + v100[13]);
      *v124 = v102;
      v124[1] = v101;
      v125 = *(v103 + 48);

      v150 = (v125 + *v125);
      v126 = swift_task_alloc();
      v0[32] = v126;
      *v126 = v0;
      v126[1] = sub_1E6381828;
      v46 = v0[9];
      goto LABEL_30;
    }

    if (v4 == *MEMORY[0x1E699EA78])
    {
      v127 = v0[12];
      v128 = v0[8];
      v129 = v0[4];
      v130 = sub_1E65D9D78();
      (*(*(v130 - 8) + 56))(v127, 1, 1, v130);
      v131 = v128[5];
      v132 = *MEMORY[0x1E69CBA18];
      v133 = sub_1E65D8C68();
      (*(*(v133 - 8) + 104))(v127 + v131, v132, v133);
      v134 = v128[6];
      v135 = sub_1E65D74E8();
      (*(*(v135 - 8) + 56))(v127 + v134, 1, 1, v135);
      v136 = v128[8];
      v137 = sub_1E65DA208();
      (*(*(v137 - 8) + 56))(v127 + v136, 1, 1, v137);
      v138 = v128[14];
      v139 = *MEMORY[0x1E69CBCC8];
      v140 = sub_1E65D8F28();
      (*(*(v140 - 8) + 104))(v127 + v138, v139, v140);
      v141 = v128[15];
      v142 = sub_1E65D9908();
      (*(*(v142 - 8) + 56))(v127 + v141, 1, 1, v142);
      v143 = MEMORY[0x1E69E7CC0];
      v144 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v127 + v128[7]) = v143;
      v145 = (v127 + v128[9]);
      *v145 = 0;
      v145[1] = 0;
      v146 = (v127 + v128[10]);
      *v146 = 0;
      v146[1] = 0;
      *(v127 + v128[11]) = v144;
      v147 = (v127 + v128[12]);
      *v147 = 0;
      v147[1] = 0;
      *(v127 + v128[13]) = xmmword_1E65F75A0;
      v150 = (*(v129 + 48) + **(v129 + 48));
      v148 = swift_task_alloc();
      v0[26] = v148;
      *v148 = v0;
      v148[1] = sub_1E638127C;
      v46 = v0[12];
      goto LABEL_30;
    }

LABEL_2:
    (*(v0[21] + 8))(v0[22], v0[20]);
    goto LABEL_3;
  }

  v47 = v0[10];
  v48 = v0[7];
  v49 = v0[8];
  v50 = v0[6];
  v51 = v0[4];
  v52 = sub_1E65D9D78();
  (*(*(v52 - 8) + 56))(v47, 1, 1, v52);
  v53 = v49[5];
  v54 = *MEMORY[0x1E69CBA40];
  v55 = sub_1E65D8C68();
  (*(*(v55 - 8) + 104))(v47 + v53, v54, v55);
  v56 = v49[6];
  v57 = sub_1E65D74E8();
  (*(*(v57 - 8) + 56))(v47 + v56, 1, 1, v57);
  v58 = v49[8];
  v59 = sub_1E65DA208();
  (*(*(v59 - 8) + 56))(v47 + v58, 1, 1, v59);
  v60 = v49[14];
  v61 = *MEMORY[0x1E69CBCC8];
  v62 = sub_1E65D8F28();
  (*(*(v62 - 8) + 104))(v47 + v60, v61, v62);
  v63 = v49[15];
  v64 = sub_1E65D9908();
  (*(*(v64 - 8) + 56))(v47 + v63, 1, 1, v64);
  v65 = MEMORY[0x1E69E7CC0];
  v66 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *(v47 + v49[7]) = v65;
  v67 = (v47 + v49[9]);
  *v67 = 0;
  v67[1] = 0;
  v68 = (v47 + v49[10]);
  *v68 = 0;
  v68[1] = 0;
  *(v47 + v49[11]) = v66;
  v69 = (v47 + v49[12]);
  *v69 = 0;
  v69[1] = 0;
  v70 = (v47 + v49[13]);
  *v70 = v50;
  v70[1] = v48;
  v71 = *(v51 + 48);

  v150 = (v71 + *v71);
  v72 = swift_task_alloc();
  v0[30] = v72;
  *v72 = v0;
  v72[1] = sub_1E6381644;
  v46 = v0[10];
LABEL_30:

  return v150(v46);
}

uint64_t sub_1E6380EA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E6381098()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1E6381A0C;
  }

  else
  {
    v2 = sub_1E63811AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63811AC()
{
  sub_1E5FC0990(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E638127C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1E6381ADC;
  }

  else
  {
    v2 = sub_1E6381390;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6381390()
{
  sub_1E5FC0990(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381460()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1E6381BAC;
  }

  else
  {
    v2 = sub_1E6381574;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6381574()
{
  sub_1E5FC0990(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381644()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1E6381C7C;
  }

  else
  {
    v2 = sub_1E6381758;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6381758()
{
  sub_1E5FC0990(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381828()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1E6381D4C;
  }

  else
  {
    v2 = sub_1E638193C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E638193C()
{
  sub_1E5FC0990(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381A0C()
{
  sub_1E5FC0990(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381ADC()
{
  sub_1E5FC0990(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381BAC()
{
  sub_1E5FC0990(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381C7C()
{
  sub_1E5FC0990(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381D4C()
{
  sub_1E5FC0990(*(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6381E1C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E637ED2C(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E6381F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078998, &qword_1E65FE8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6381FA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078998, &qword_1E65FE8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RouteAnnotation.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E63820A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v70 = a4;
  v71 = a3;
  v66 = a2;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v65 = (&v59 - v16);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v59 - v19;
  v21 = sub_1E65E0B48();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1E699DD40];
  sub_1E6386C08(a1, v24, MEMORY[0x1E699DD40]);
  sub_1E6386C08(v5, v20, type metadata accessor for AppComposer);
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = *(v8 + 80);
  v28 = (v23 + v27 + v26) & ~v27;
  v72 = v27 | 7;
  v62 = v18;
  v29 = swift_allocObject();
  v73 = v29;
  sub_1E6386C70(v24, v29 + v26, v25);
  sub_1E6386C70(v20, v29 + v28, type metadata accessor for AppComposer);
  v30 = (v29 + ((v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = v71;
  *v30 = v66;
  v30[1] = v31;
  sub_1E65E5148();

  v71 = sub_1E65E5138();
  v32 = v74;
  v33 = v65;
  sub_1E6386C08(v74, v65, type metadata accessor for AppComposer);
  v34 = (v27 + 32) & ~v27;
  v35 = v34 + v18;
  v66 = v34;
  v64 = v35;
  v36 = swift_allocObject();
  v63 = v36;
  v61 = &unk_1E65FE9D8;
  v37 = v73;
  *(v36 + 16) = &unk_1E65FE9D8;
  *(v36 + 24) = v37;
  sub_1E6386C70(v33, v36 + v34, type metadata accessor for AppComposer);
  *(v36 + v35) = 0;
  v38 = v36 + (v35 & 0xFFFFFFFFFFFFFFF8);
  v65 = sub_1E6172524;
  *(v38 + 8) = sub_1E6172524;
  *(v38 + 16) = 0;
  v39 = (v36 + (((v35 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v40 = MEMORY[0x1E69AB380];
  v41 = v71;
  *v39 = v71;
  v39[1] = v40;
  v42 = v32;
  v43 = v67;
  sub_1E6386C08(v42, v67, type metadata accessor for AppComposer);
  v44 = ((v27 + 48) & ~v27) + v62;
  v45 = (v27 + 48) & ~v27;
  v60 = v45;
  v46 = swift_allocObject();
  v47 = v61;
  v48 = v73;
  v46[2] = v61;
  v46[3] = v48;
  v46[4] = v41;
  v46[5] = MEMORY[0x1E69AB380];
  sub_1E6386C70(v43, v46 + v45, type metadata accessor for AppComposer);
  *(v46 + v44) = 0;
  v49 = v46 + (v44 & 0xFFFFFFFFFFFFFFF8);
  v50 = v65;
  *(v49 + 1) = v65;
  *(v49 + 2) = 0;
  v51 = v68;
  sub_1E6386C08(v74, v68, type metadata accessor for AppComposer);
  v52 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v53[2] = v47;
  v53[3] = v48;
  v53[4] = v41;
  v53[5] = MEMORY[0x1E69AB380];
  sub_1E6386C70(v51, v53 + v60, type metadata accessor for AppComposer);
  v54 = v53 + v52;
  *v54 = v50;
  *(v54 + 1) = 0;
  v54[16] = 0;
  v55 = v69;
  sub_1E6386C08(v74, v69, type metadata accessor for AppComposer);
  v56 = swift_allocObject();
  *(v56 + 16) = v47;
  *(v56 + 24) = v48;
  sub_1E6386C70(v55, v56 + v66, type metadata accessor for AppComposer);
  swift_retain_n();
  result = swift_retain_n();
  v58 = v70;
  *v70 = result;
  v58[1] = MEMORY[0x1E69AB380];
  v58[2] = &unk_1E65EB918;
  v58[3] = v63;
  v58[4] = &unk_1E65FA770;
  v58[5] = v46;
  v58[6] = &unk_1E65EB920;
  v58[7] = v53;
  v58[8] = &unk_1E65FA780;
  v58[9] = v56;
  return result;
}

uint64_t sub_1E63825CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6382718, 0, 0);
}

uint64_t sub_1E6382718()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v18 = v0[2];
  sub_1E62008D0();
  v6 = *MEMORY[0x1E69CBD88];
  v7 = sub_1E65D8F38();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = (v5 + *(type metadata accessor for AppComposer(0) + 36));
  v11 = *v9;
  v10 = v9[1];
  v12 = sub_1E65D74E8();
  (*(*(v12 - 8) + 56))(v1, 1, 1, v12);
  v13 = sub_1E65D9908();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = sub_1E65D9F88();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_1E5FA9D34(v11, v10);

  sub_1E65D7A28();
  v15 = sub_1E65D7A38();
  (*(*(v15 - 8) + 56))(v18, 0, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E63829A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65E0C68();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v8 = sub_1E65D86A8();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A0, &qword_1E65F1F90);
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v10 = sub_1E65E0E48();
  v6[16] = v10;
  v6[17] = *(v10 - 8);
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789A0, &qword_1E65FE9B8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v11 = sub_1E65D8F28();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();
  v12 = sub_1E65E0D48();
  v6[24] = v12;
  v6[25] = *(v12 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v13 = sub_1E65D8C68();
  v6[32] = v13;
  v6[33] = *(v13 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = type metadata accessor for PageMetricsClick(0);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  sub_1E65E0B48();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v14 = sub_1E65E0C78();
  v6[48] = v14;
  v6[49] = *(v14 - 8);
  v6[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6382EC0, 0, 0);
}

uint64_t sub_1E6382EC0()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  (*(v2 + 16))(v1, *(v0 + 16), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699DE58])
  {
    v5 = *(v0 + 400);
    (*(*(v0 + 392) + 96))(v5, *(v0 + 384));
LABEL_3:
    v6 = sub_1E65E0EE8();
LABEL_4:
    (*(*(v6 - 8) + 8))(v5, v6);
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  if (v4 == *MEMORY[0x1E699DE18])
  {
    v9 = *(v0 + 400);
    v10 = *(v0 + 376);
    v11 = *(v0 + 312);
    v12 = *(v0 + 288);
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 248);
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    v213 = *(v0 + 192);
    (*(*(v0 + 392) + 96))(v9, *(v0 + 384));
    sub_1E6386C70(v9, v10, MEMORY[0x1E699DD40]);
    v18 = sub_1E65D9D78();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    (*(v13 + 104))(v12, *MEMORY[0x1E69CBA68], v14);
    v19 = sub_1E65D74E8();
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    sub_1E65E0C28();
    v20 = sub_1E6478838();
    (*(v17 + 8))(v16, v213);
    if (v20)
    {
      v214 = sub_1E64961CC(*(v0 + 376), v20);
    }

    else
    {
      v214 = MEMORY[0x1E69E7CC0];
    }

    v49 = *(v0 + 360);
    v51 = *(v0 + 312);
    v50 = *(v0 + 320);
    v52 = *(v0 + 264);
    v196 = *(v0 + 256);
    v200 = *(v0 + 288);
    v210 = *(v0 + 248);
    v53 = *(v0 + 168);
    v54 = *(v0 + 176);
    v55 = *(v0 + 32);
    v56 = v50[8];
    v57 = sub_1E65DA208();
    (*(*(v57 - 8) + 56))(v49 + v56, 1, 1, v57);
    v58 = sub_1E65E0B18();
    v206 = v59;
    (*(v54 + 104))(v49 + v50[14], *MEMORY[0x1E69CBCC8], v53);
    v60 = v50[15];
    sub_1E6200BE0(v49 + v60);
    v61 = sub_1E65D9908();
    (*(*(v61 - 8) + 56))(v49 + v60, 0, 1, v61);
    v62 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v51, v49, &qword_1ED073578, &qword_1E65F0E60);
    (*(v52 + 32))(v49 + v50[5], v200, v196);
    sub_1E5FAB460(v210, v49 + v50[6], &qword_1ED072340, &qword_1E65EA410);
    *(v49 + v50[7]) = v214;
    v63 = (v49 + v50[9]);
    *v63 = 0;
    v63[1] = 0;
    v64 = (v49 + v50[10]);
    *v64 = 0;
    v64[1] = 0;
    *(v49 + v50[11]) = v62;
    v65 = (v49 + v50[12]);
    *v65 = 0;
    v65[1] = 0;
    v66 = (v49 + v50[13]);
    *v66 = v58;
    v66[1] = v206;
    v215 = (*(v55 + 48) + **(v55 + 48));
    v67 = swift_task_alloc();
    *(v0 + 408) = v67;
    *v67 = v0;
    v67[1] = sub_1E6384994;
    v46 = *(v0 + 360);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x1E699DE60])
  {
    v21 = *(v0 + 400);
    v22 = *(v0 + 320);
    v23 = *(v0 + 264);
    (*(*(v0 + 392) + 96))(v21, *(v0 + 384));
    v24 = *v21;
    v25 = sub_1E65D9D78();
    v26 = *(*(v25 - 8) + 56);
    v27 = (v23 + 104);
    v28 = *(v0 + 320);
    v29 = *(v0 + 256);
    v30 = *(v0 + 168);
    v31 = *(v0 + 176);
    v32 = *(v0 + 32);
    if (v24 == 1)
    {
      v33 = *(v0 + 352);
      v26(v33, 1, 1, v25);
      (*v27)(v33 + *(v22 + 20), *MEMORY[0x1E69CBA48], v29);
      v34 = *(v22 + 24);
      v35 = sub_1E65D74E8();
      (*(*(v35 - 8) + 56))(v33 + v34, 1, 1, v35);
      v36 = v28[8];
      v37 = sub_1E65DA208();
      (*(*(v37 - 8) + 56))(v33 + v36, 1, 1, v37);
      (*(v31 + 104))(v33 + v28[14], *MEMORY[0x1E69CBCC8], v30);
      v38 = v28[15];
      v39 = sub_1E65D9908();
      (*(*(v39 - 8) + 56))(v33 + v38, 1, 1, v39);
      v40 = MEMORY[0x1E69E7CC0];
      v41 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v33 + v28[7]) = v40;
      v42 = (v33 + v28[9]);
      *v42 = 0;
      v42[1] = 0;
      v43 = (v33 + v28[10]);
      *v43 = 0;
      v43[1] = 0;
      *(v33 + v28[11]) = v41;
      v44 = (v33 + v28[12]);
      *v44 = 0;
      v44[1] = 0;
      *(v33 + v28[13]) = xmmword_1E65FE9A0;
      v215 = (*(v32 + 48) + **(v32 + 48));
      v45 = swift_task_alloc();
      *(v0 + 424) = v45;
      *v45 = v0;
      v45[1] = sub_1E6384CB0;
      v46 = *(v0 + 352);
    }

    else
    {
      v68 = *(v0 + 344);
      v26(v68, 1, 1, v25);
      (*v27)(v68 + *(v22 + 20), *MEMORY[0x1E69CBA80], v29);
      v69 = *(v22 + 24);
      v70 = sub_1E65D74E8();
      (*(*(v70 - 8) + 56))(v68 + v69, 1, 1, v70);
      v71 = v28[8];
      v72 = sub_1E65DA208();
      (*(*(v72 - 8) + 56))(v68 + v71, 1, 1, v72);
      (*(v31 + 104))(v68 + v28[14], *MEMORY[0x1E69CBCC8], v30);
      v73 = v28[15];
      v74 = sub_1E65D9908();
      (*(*(v74 - 8) + 56))(v68 + v73, 1, 1, v74);
      v75 = MEMORY[0x1E69E7CC0];
      v76 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v68 + v28[7]) = v75;
      v77 = (v68 + v28[9]);
      *v77 = 0;
      v77[1] = 0;
      v78 = (v68 + v28[10]);
      *v78 = 0;
      v78[1] = 0;
      *(v68 + v28[11]) = v76;
      v79 = (v68 + v28[12]);
      *v79 = 0;
      v79[1] = 0;
      *(v68 + v28[13]) = xmmword_1E65FE990;
      v215 = (*(v32 + 48) + **(v32 + 48));
      v80 = swift_task_alloc();
      *(v0 + 440) = v80;
      *v80 = v0;
      v80[1] = sub_1E6384FAC;
      v46 = *(v0 + 344);
    }

LABEL_18:

    return v215(v46);
  }

  if (v4 == *MEMORY[0x1E699DE30])
  {
    v5 = *(v0 + 400);
    (*(*(v0 + 392) + 96))(v5, *(v0 + 384));
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789B8, &qword_1E65FE9C8) + 48);
    v48 = sub_1E65E0CC8();
    (*(*(v48 - 8) + 8))(v5 + v47, v48);
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699DE48])
  {
    v5 = *(v0 + 400);
    (*(*(v0 + 392) + 96))(v5, *(v0 + 384));
    v6 = sub_1E65E0D08();
    goto LABEL_4;
  }

  if (v4 == *MEMORY[0x1E699DE38])
  {
    v81 = *(v0 + 400);
    v82 = *(v0 + 368);
    v83 = *(v0 + 56);
    v84 = *(v0 + 64);
    v85 = *(v0 + 40);
    v86 = *(v0 + 48);
    (*(*(v0 + 392) + 96))(v81, *(v0 + 384));
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789A8, &qword_1E65FE9C0);
    v88 = *(v87 + 48);
    v89 = *(v87 + 64);
    *(v0 + 520) = v89;
    sub_1E6386C70(v81, v82, MEMORY[0x1E699DD40]);
    (*(v86 + 32))(v84, v81 + v88, v85);
    v90 = *(v86 + 104);
    v90(v83, *MEMORY[0x1E699DE00], v85);
    sub_1E6386814();
    LOBYTE(v82) = sub_1E65E5B98();
    v91 = *(v86 + 8);
    *(v0 + 472) = v91;
    *(v0 + 480) = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v91(v83, v85);
    if (v82)
    {
      v92 = *(v0 + 368);
      v91(*(v0 + 64), *(v0 + 40));
      sub_1E6386BA8(v92, MEMORY[0x1E699DD40]);
      v93 = sub_1E65D7968();
      (*(*(v93 - 8) + 8))(v81 + v89, v93);
      goto LABEL_5;
    }

    v193 = *(v0 + 296);
    v112 = *(v0 + 264);
    v195 = *(v0 + 256);
    v197 = *(v0 + 272);
    v113 = *(v0 + 208);
    v211 = *(v0 + 200);
    v217 = *(v0 + 192);
    v114 = *(v0 + 56);
    v115 = *(v0 + 40);
    v202 = *(v0 + 232);
    v90(v114, *MEMORY[0x1E699DE08], v115);
    v116 = sub_1E65E0C58();
    v91(v114, v115);
    v117 = sub_1E65D9D78();
    (*(*(v117 - 8) + 56))(v193, 1, 1, v117);
    v118 = MEMORY[0x1E69CBA68];
    if ((v116 & 1) == 0)
    {
      v118 = MEMORY[0x1E69CBA70];
    }

    (*(v112 + 104))(v197, *v118, v195);
    v119 = sub_1E65D74E8();
    (*(*(v119 - 8) + 56))(v202, 1, 1, v119);
    sub_1E65E0C28();
    v120 = sub_1E6478838();
    (*(v211 + 8))(v113, v217);
    if (v120)
    {
      v218 = sub_1E64961CC(*(v0 + 368), v120);
    }

    else
    {
      v218 = MEMORY[0x1E69E7CC0];
    }

    v123 = *(v0 + 320);
    v122 = *(v0 + 328);
    v124 = *(v0 + 296);
    v125 = *(v0 + 264);
    v198 = *(v0 + 256);
    v203 = *(v0 + 272);
    v212 = *(v0 + 232);
    v126 = *(v0 + 168);
    v127 = *(v0 + 176);
    v128 = *(v0 + 32);
    v129 = v123[8];
    v130 = sub_1E65DA208();
    (*(*(v130 - 8) + 56))(v122 + v129, 1, 1, v130);
    v131 = sub_1E65E0B18();
    v208 = v132;
    (*(v127 + 104))(v122 + v123[14], *MEMORY[0x1E69CBCC8], v126);
    v133 = v123[15];
    sub_1E6200BE0(v122 + v133);
    v134 = sub_1E65D9908();
    (*(*(v134 - 8) + 56))(v122 + v133, 0, 1, v134);
    v135 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v124, v122, &qword_1ED073578, &qword_1E65F0E60);
    (*(v125 + 32))(v122 + v123[5], v203, v198);
    sub_1E5FAB460(v212, v122 + v123[6], &qword_1ED072340, &qword_1E65EA410);
    *(v122 + v123[7]) = v218;
    v136 = (v122 + v123[9]);
    *v136 = 0;
    v136[1] = 0;
    v137 = (v122 + v123[10]);
    *v137 = 0;
    v137[1] = 0;
    *(v122 + v123[11]) = v135;
    v138 = (v122 + v123[12]);
    *v138 = 0;
    v138[1] = 0;
    v139 = (v122 + v123[13]);
    *v139 = v131;
    v139[1] = v208;
    v215 = (*(v128 + 48) + **(v128 + 48));
    v140 = swift_task_alloc();
    *(v0 + 488) = v140;
    *v140 = v0;
    v140[1] = sub_1E63855A4;
    v46 = *(v0 + 328);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x1E699DE50])
  {
    goto LABEL_5;
  }

  if (v4 == *MEMORY[0x1E699DE28])
  {
    v94 = *(v0 + 304);
    v95 = *(v0 + 280);
    v96 = *(v0 + 256);
    v97 = *(v0 + 264);
    v98 = *(v0 + 240);
    v99 = *(v0 + 216);
    v201 = *(v0 + 200);
    v207 = *(v0 + 192);
    v100 = *(v0 + 176);
    v191 = *(v0 + 184);
    v192 = *(v0 + 168);
    v101 = *(v0 + 104);
    v102 = *(v0 + 80);
    v194 = *(v0 + 72);
    v103 = sub_1E65D9D78();
    (*(*(v103 - 8) + 56))(v94, 1, 1, v103);
    (*(v97 + 104))(v95, *MEMORY[0x1E69CBA70], v96);
    v104 = sub_1E65D74E8();
    (*(*(v104 - 8) + 56))(v98, 1, 1, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758A8, &qword_1E65F1F98);
    v105 = *(v101 + 72);
    v106 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v189 = swift_allocObject();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v107 = *MEMORY[0x1E69CBCC8];
    v190 = *(v100 + 104);
    v190(v191, *MEMORY[0x1E69CBCC8], v192);
    v108 = v189 + v106;
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v109 = *(v102 + 56);
    v109(v189 + v106, 0, 1, v194);
    sub_1E65E0C28();
    v110 = sub_1E6478838();
    (*(v201 + 8))(v99, v207);
    v216 = v105;
    if (v110)
    {
      if (*(v110 + 16))
      {
        (*(*(v0 + 136) + 16))(*(v0 + 160), v110 + ((*(*(v0 + 136) + 80) + 32) & ~*(*(v0 + 136) + 80)), *(v0 + 128));
        v111 = 0;
      }

      else
      {
        v111 = 1;
      }

      v142 = *(v0 + 152);
      v141 = *(v0 + 160);
      v144 = *(v0 + 128);
      v143 = *(v0 + 136);

      (*(v143 + 56))(v141, v111, 1, v144);
      sub_1E5DFD1CC(v141, v142, &qword_1ED0789A0, &qword_1E65FE9B8);
      if ((*(v143 + 48))(v142, 1, v144) == 1)
      {
        v209 = v107;
        v145 = *(v0 + 160);
        v146 = *(v0 + 72);
        v147 = v108 + v216;
        v148 = 1;
      }

      else
      {
        v149 = *(v0 + 144);
        v150 = *(v0 + 128);
        v151 = *(v0 + 136);
        (*(v151 + 32))(v149, *(v0 + 152), v150);
        sub_1E638686C(v108 + v216);
        (*(v151 + 8))(v149, v150);
        v209 = v107;
        v145 = *(v0 + 160);
        v146 = *(v0 + 72);
        v147 = v108 + v216;
        v148 = 0;
      }

      v109(v147, v148, 1, v146);
      sub_1E5DFE50C(v145, &qword_1ED0789A0, &qword_1E65FE9B8);
    }

    else
    {
      v209 = v107;
      v109(v108 + v105, 1, 1, *(v0 + 72));
    }

    v152 = *(v0 + 112);
    v153 = *(v0 + 120);
    v154 = *(v0 + 72);
    v155 = *(v0 + 80);
    sub_1E5DFD1CC(v108, v153, &qword_1ED0758A0, &qword_1E65F1F90);
    sub_1E5FAB460(v153, v152, &qword_1ED0758A0, &qword_1E65F1F90);
    v156 = (v155 + 32);
    v204 = *(v155 + 48);
    v157 = v204(v152, 1, v154);
    v158 = *(v0 + 112);
    if (v157 == 1)
    {
      v159 = (v155 + 32);
      sub_1E5DFE50C(v158, &qword_1ED0758A0, &qword_1E65F1F90);
      v160 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v161 = *v156;
      (*v156)(*(v0 + 88), v158, *(v0 + 72));
      v160 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_1E64F6A68(0, *(v160 + 2) + 1, 1, v160);
      }

      v163 = *(v160 + 2);
      v162 = *(v160 + 3);
      if (v163 >= v162 >> 1)
      {
        v160 = sub_1E64F6A68((v162 > 1), v163 + 1, 1, v160);
      }

      v164 = *(v0 + 88);
      v165 = *(v0 + 72);
      *(v160 + 2) = v163 + 1;
      v159 = (v155 + 32);
      v161(&v160[((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v163], v164, v165);
    }

    v167 = *(v0 + 112);
    v166 = *(v0 + 120);
    v168 = *(v0 + 72);
    sub_1E5DFD1CC(v108 + v216, v166, &qword_1ED0758A0, &qword_1E65F1F90);
    sub_1E5FAB460(v166, v167, &qword_1ED0758A0, &qword_1E65F1F90);
    if (v204(v167, 1, v168) == 1)
    {
      sub_1E5DFE50C(*(v0 + 112), &qword_1ED0758A0, &qword_1E65F1F90);
    }

    else
    {
      v169 = *v159;
      (*v159)(*(v0 + 88), *(v0 + 112), *(v0 + 72));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_1E64F6A68(0, *(v160 + 2) + 1, 1, v160);
      }

      v171 = *(v160 + 2);
      v170 = *(v160 + 3);
      if (v171 >= v170 >> 1)
      {
        v160 = sub_1E64F6A68((v170 > 1), v171 + 1, 1, v160);
      }

      v172 = *(v0 + 88);
      v173 = *(v0 + 72);
      *(v160 + 2) = v171 + 1;
      v169(&v160[((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v171], v172, v173);
    }

    v174 = *(v0 + 336);
    v175 = *(v0 + 320);
    v176 = *(v0 + 304);
    v177 = *(v0 + 264);
    v199 = *(v0 + 256);
    v205 = *(v0 + 280);
    v220 = *(v0 + 240);
    v178 = *(v0 + 168);
    v179 = *(v0 + 32);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v180 = v175[8];
    v181 = sub_1E65DA208();
    (*(*(v181 - 8) + 56))(v174 + v180, 1, 1, v181);
    v190(v174 + v175[14], v209, v178);
    v182 = v175[15];
    v183 = sub_1E65D9908();
    (*(*(v183 - 8) + 56))(v174 + v182, 1, 1, v183);
    v184 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v176, v174, &qword_1ED073578, &qword_1E65F0E60);
    (*(v177 + 32))(v174 + v175[5], v205, v199);
    sub_1E5FAB460(v220, v174 + v175[6], &qword_1ED072340, &qword_1E65EA410);
    *(v174 + v175[7]) = v160;
    v185 = (v174 + v175[9]);
    *v185 = 0;
    v185[1] = 0;
    v186 = (v174 + v175[10]);
    *v186 = 0;
    v186[1] = 0;
    *(v174 + v175[11]) = v184;
    v187 = (v174 + v175[12]);
    *v187 = 0;
    v187[1] = 0;
    *(v174 + v175[13]) = xmmword_1E65FE980;
    v215 = (*(v179 + 48) + **(v179 + 48));
    v188 = swift_task_alloc();
    *(v0 + 456) = v188;
    *v188 = v0;
    v188[1] = sub_1E63852A8;
    v46 = *(v0 + 336);
    goto LABEL_18;
  }

  if (v4 == *MEMORY[0x1E699DE20])
  {
    goto LABEL_5;
  }

  if (v4 != *MEMORY[0x1E699DE40])
  {
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));
    goto LABEL_5;
  }

  v219 = (*(*(v0 + 32) + 16) + **(*(v0 + 32) + 16));
  v121 = swift_task_alloc();
  *(v0 + 504) = v121;
  *v121 = v0;
  v121[1] = sub_1E6385918;

  return v219();
}