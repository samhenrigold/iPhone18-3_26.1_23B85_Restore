void sub_1A2C9DA0C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v34 = a5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A03C8, &qword_1A2D0AAC8);
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A03D0, &unk_1A2D0AAD0);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - v9;
  v11 = type metadata accessor for OpaqueActivityPayload(0);
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for SubscribedActivity(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  if (!*(v21 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v22 = sub_1A2C64868(v36, v37);
  if ((v23 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1A2C7BFE4(*(v21 + 56) + *(v18 + 72) * v22, v20, type metadata accessor for SubscribedActivity);
  v24 = *&v20[*(v17 + 28)];
  if (!*(v24 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = sub_1A2C7C7B4(v35 & 1);
  if (v26)
  {
    sub_1A2C7BFE4(*(v24 + 56) + *(v30 + 72) * v25, v16, type metadata accessor for OpaqueActivityPayload);
    sub_1A2C7BFE4(v16, v13, type metadata accessor for OpaqueActivityPayload);
    sub_1A2D081D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
    v27 = v32;
    sub_1A2D081C4();
    (*(v6 + 8))(v8, v27);
    sub_1A2C56A78(&qword_1EB09EE78, &unk_1EB0A03D0, &unk_1A2D0AAD0, MEMORY[0x1E695C0C8]);
    v28 = v33;
    v29 = sub_1A2D081F4();
    (*(v31 + 8))(v10, v28);
    sub_1A2C73F50(v16, type metadata accessor for OpaqueActivityPayload);
    sub_1A2C73F50(v20, type metadata accessor for SubscribedActivity);
    *v34 = v29;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1A2C9DE20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for OpaqueActivityPayload(0);
  a2[4] = &protocol witness table for OpaqueActivityPayload;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1A2C7BFE4(a1, boxed_opaque_existential_1, type metadata accessor for OpaqueActivityPayload);
}

uint64_t ActivityOutputClient.observeDescriptors(matching:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0260, &qword_1A2D0A928);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0268, &qword_1A2D0A930);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0270, &qword_1A2D0A938);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v13;
  v34[2] = *(a1 + 32);
  v35 = *(a1 + 48);
  v14 = ActivityOutputClient.observeDescriptors()();
  if (!v2)
  {
    v36 = v14;
    v29 = 0;
    v15 = swift_allocObject();
    v28 = v4;
    v16 = *(a1 + 16);
    *(v15 + 16) = *a1;
    *(v15 + 32) = v16;
    *(v15 + 48) = *(a1 + 32);
    *(v15 + 64) = *(a1 + 48);
    sub_1A2C63D94(v34, v33);
    v24[2] = sub_1A2D080B4();
    v27 = v5;
    v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0150, &qword_1A2D0A858);
    v26 = v7;
    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0278, &qword_1A2D0A940);
    v25 = v10;
    v17 = MEMORY[0x1E695BED8];
    sub_1A2C56A78(&unk_1EB09EB90, &qword_1EB0A0150, &qword_1A2D0A858, MEMORY[0x1E695BED8]);
    sub_1A2C56A78(&qword_1EB09EBA0, &qword_1EB0A0278, &qword_1A2D0A940, v17);
    sub_1A2D082A4();

    sub_1A2C56A78(&qword_1EB09EBD8, &qword_1EB0A0268, &qword_1A2D0A930, MEMORY[0x1E695BE40]);
    sub_1A2C9EE14();
    v18 = v32;
    sub_1A2D08274();
    (*(v30 + 8))(v9, v18);
    sub_1A2C56A78(&qword_1EB09EBF0, &qword_1EB0A0270, &qword_1A2D0A938, MEMORY[0x1E695BD38]);
    v19 = v25;
    v20 = sub_1A2D081F4();
    (*(v31 + 8))(v12, v19);
    v33[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
    v21 = v26;
    sub_1A2D08204();
    sub_1A2C56A78(&qword_1EB09EBF8, &qword_1EB0A0260, &qword_1A2D0A928, MEMORY[0x1E695BC80]);
    v22 = v28;
    v1 = sub_1A2D081F4();

    (*(v27 + 8))(v21, v22);
  }

  return v1;
}

void sub_1A2C9E360(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A03B0, &qword_1A2D0AAB8);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v30 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A03B8, &qword_1A2D0AAC0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - v6;
  v7 = type metadata accessor for ActivityDescriptor(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = *a1;
  v39 = *(*a1 + 16);
  if (v39)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v37 = v10;
    v38 = v8;
    while (v15 < *(v14 + 16))
    {
      v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = *(v8 + 72);
      sub_1A2C7BFE4(v14 + v17 + v18 * v15, v13, type metadata accessor for ActivityDescriptor);
      v19 = a2[1];
      v40 = *a2;
      v41 = v19;
      v42 = a2[2];
      v43 = *(a2 + 6);
      ActivityPredicate.matches(descriptor:)(v13);
      if (v20)
      {
        sub_1A2C725C0(v13, v10, type metadata accessor for ActivityDescriptor);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A2CA014C(0, *(v16 + 16) + 1, 1);
          v16 = v44;
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1A2CA014C((v22 > 1), v23 + 1, 1);
          v16 = v44;
        }

        *(v16 + 16) = v23 + 1;
        v24 = v16 + v17 + v23 * v18;
        v10 = v37;
        sub_1A2C725C0(v37, v24, type metadata accessor for ActivityDescriptor);
        v8 = v38;
      }

      else
      {
        sub_1A2C73F50(v13, type metadata accessor for ActivityDescriptor);
      }

      if (v39 == ++v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *&v40 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
    v25 = v30;
    sub_1A2D081D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
    v26 = v31;
    v27 = v34;
    sub_1A2D081C4();
    (*(v32 + 8))(v25, v27);
    sub_1A2C56A78(&qword_1EB09EB10, &unk_1EB0A03B8, &qword_1A2D0AAC0, MEMORY[0x1E695C0C8]);
    v28 = v35;
    v29 = sub_1A2D081F4();
    (*(v33 + 8))(v26, v28);
    *v36 = v29;
  }
}

uint64_t ActivityOutputClient.observeDescriptorStates(matching:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0280, &qword_1A2D0A948);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0288, &qword_1A2D0A950);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0290, &qword_1A2D0A958);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v13;
  v34[2] = *(a1 + 32);
  v35 = *(a1 + 48);
  ActivityOutputClient.observeDescriptorStates()();
  if (!v2)
  {
    v36 = v14;
    v29 = 0;
    v15 = swift_allocObject();
    v28 = v4;
    v16 = *(a1 + 16);
    *(v15 + 16) = *a1;
    *(v15 + 32) = v16;
    *(v15 + 48) = *(a1 + 32);
    *(v15 + 64) = *(a1 + 48);
    sub_1A2C63D94(v34, v33);
    v24[2] = sub_1A2D080B4();
    v27 = v5;
    v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0148, &qword_1A2D0A850);
    v26 = v7;
    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0298, &qword_1A2D0A960);
    v25 = v10;
    v17 = MEMORY[0x1E695BED8];
    sub_1A2C56A78(&unk_1EB09F510, &qword_1EB0A0148, &qword_1A2D0A850, MEMORY[0x1E695BED8]);
    sub_1A2C56A78(&unk_1EB09F520, &qword_1EB0A0298, &qword_1A2D0A960, v17);
    sub_1A2D082A4();

    sub_1A2C56A78(&qword_1EB09F538, &qword_1EB0A0288, &qword_1A2D0A950, MEMORY[0x1E695BE40]);
    sub_1A2CA001C();
    v18 = v32;
    sub_1A2D08274();
    (*(v30 + 8))(v9, v18);
    sub_1A2C56A78(&qword_1EB09F550, &qword_1EB0A0290, &qword_1A2D0A958, MEMORY[0x1E695BD38]);
    v19 = v25;
    v20 = sub_1A2D081F4();
    (*(v31 + 8))(v12, v19);
    v33[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01C0, &qword_1A2D0A8A8);
    v21 = v26;
    sub_1A2D08204();
    sub_1A2C56A78(&qword_1EB09F568, &qword_1EB0A0280, &qword_1A2D0A948, MEMORY[0x1E695BC80]);
    v22 = v28;
    v1 = sub_1A2D081F4();

    (*(v27 + 8))(v21, v22);
  }

  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A2C9EE14()
{
  result = qword_1EB09EB20;
  if (!qword_1EB09EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0158, &qword_1A2D0A860);
    sub_1A2C586F0(qword_1EB09EDD0, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EB20);
  }

  return result;
}

id sub_1A2C9EF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Singleton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A2C9F034(void *a1@<X8>)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ActivityDescriptor(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1A2C54EB4();
  if (v7)
  {
    v8 = v7;
    v59[0] = 0;
    v9 = [v7 activityDescriptorsWithError_];
    v10 = v59[0];
    if (!v9)
    {
      v40 = v10;
      sub_1A2D07ED4();

      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    v55 = v4;
    v11 = sub_1A2D07F44();
    v13 = v12;

    v56 = v11;
    v57 = v13;
    v14 = sub_1A2D07F24();
    sub_1A2D07E84();
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    v17 = v16;
    sub_1A2CA0420();
    sub_1A2D07E64();
    v18 = v15;
    v19 = v17;
    if (!v1)
    {
      sub_1A2C55840(v15, v17);

      v20 = v59[0];
      if (v59[0])
      {

        if (qword_1ED709860 != -1)
        {
          swift_once();
        }

        v21 = sub_1A2D08094();
        __swift_project_value_buffer(v21, qword_1ED709870);

        v22 = sub_1A2D08074();
        v23 = sub_1A2D086A4();

        if (os_log_type_enabled(v22, v23))
        {
          v53 = v23;
          v54 = 0;
          v24 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v59[0] = v51;
          v52 = v24;
          *v24 = 136446210;
          v25 = v20[2];
          v26 = MEMORY[0x1E69E7CC0];
          if (v25)
          {
            v47 = v22;
            v49 = v8;
            v50 = a1;
            v58 = MEMORY[0x1E69E7CC0];
            sub_1A2C7F170(0, v25, 0);
            v26 = v58;
            v27 = *(v55 + 80);
            v48 = v20;
            v28 = v20 + ((v27 + 32) & ~v27);
            v29 = *(v55 + 72);
            do
            {
              sub_1A2C7BFE4(v28, v6, type metadata accessor for ActivityDescriptor);
              v30 = *v6;
              v31 = v6[1];

              sub_1A2C73F50(v6, type metadata accessor for ActivityDescriptor);
              v58 = v26;
              v33 = *(v26 + 16);
              v32 = *(v26 + 24);
              if (v33 >= v32 >> 1)
              {
                sub_1A2C7F170((v32 > 1), v33 + 1, 1);
                v26 = v58;
              }

              *(v26 + 16) = v33 + 1;
              v34 = v26 + 16 * v33;
              *(v34 + 32) = v30;
              *(v34 + 40) = v31;
              v28 += v29;
              --v25;
            }

            while (v25);
            a1 = v50;
            v22 = v47;
            v20 = v48;
          }

          v41 = MEMORY[0x1A58E4220](v26, MEMORY[0x1E69E6158]);
          v43 = v42;

          v44 = sub_1A2C55558(v41, v43, v59);

          v45 = v52;
          *(v52 + 1) = v44;
          _os_log_impl(&dword_1A2C51000, v22, v53, "Fetched descriptors: %{public}s", v45, 0xCu);
          v46 = v51;
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x1A58E5180](v46, -1, -1);
          MEMORY[0x1A58E5180](v45, -1, -1);
          sub_1A2C55840(v56, v57);
          swift_unknownObjectRelease();

          *a1 = v20;
        }

        else
        {
          sub_1A2C55840(v56, v57);
          swift_unknownObjectRelease();

          *a1 = v20;
        }

        return;
      }

      __break(1u);
    }

    sub_1A2C55840(v18, v19);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v35 = sub_1A2D08094();
  __swift_project_value_buffer(v35, qword_1ED709870);
  v36 = sub_1A2D08074();
  v37 = sub_1A2D08684();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1A2C51000, v36, v37, "Remote target does not exist", v38, 2u);
    MEMORY[0x1A58E5180](v38, -1, -1);
  }

  sub_1A2CA0368();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();
}

void sub_1A2C9F5AC(uint64_t a2@<X8>)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  MEMORY[0x1EEE9AC00](v38);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v36 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v11 = sub_1A2C54EB4();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A2D08434();
    v14 = [v12 activityDescriptorForIdentifier_];

    if (v14)
    {
      v15 = sub_1A2D07F44();
      v17 = v16;

      sub_1A2C5E63C(v15, v17);
      v18 = sub_1A2D07F24();
      sub_1A2C55840(v15, v17);
      if (v18)
      {
        sub_1A2CB4EFC(v18, v10);

        v19 = type metadata accessor for ActivityDescriptor(0);
        (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
LABEL_12:
        sub_1A2C639DC(v10, a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
        if (qword_1ED709860 != -1)
        {
          swift_once();
        }

        v26 = sub_1A2D08094();
        __swift_project_value_buffer(v26, qword_1ED709870);
        sub_1A2C6BD18(a2, v7, &qword_1EB0A0210, &unk_1A2D0ACA0);
        v27 = sub_1A2D08074();
        v28 = sub_1A2D086A4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v37 = v15;
          v31 = v30;
          v39 = v30;
          *v29 = 136380675;
          v36[1] = v12;
          sub_1A2C6BD18(v7, v4, &qword_1EB0A0210, &unk_1A2D0ACA0);
          v32 = sub_1A2D08454();
          v38 = v17;
          v34 = v33;
          sub_1A2C54E38(v7, &qword_1EB0A0210, &unk_1A2D0ACA0);
          v35 = sub_1A2C55558(v32, v34, &v39);

          *(v29 + 4) = v35;
          _os_log_impl(&dword_1A2C51000, v27, v28, "Fetched descriptor: %{private}s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x1A58E5180](v31, -1, -1);
          MEMORY[0x1A58E5180](v29, -1, -1);
          sub_1A2C5DE40(v37, v38);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1A2C5DE40(v15, v17);

          swift_unknownObjectRelease();
          sub_1A2C54E38(v7, &qword_1EB0A0210, &unk_1A2D0ACA0);
        }

        return;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0xF000000000000000;
    }

    v25 = type metadata accessor for ActivityDescriptor(0);
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    goto LABEL_12;
  }

  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v20 = sub_1A2D08094();
  __swift_project_value_buffer(v20, qword_1ED709870);
  v21 = sub_1A2D08074();
  v22 = sub_1A2D08684();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1A2C51000, v21, v22, "Remote target does not exist", v23, 2u);
    MEMORY[0x1A58E5180](v23, -1, -1);
  }

  sub_1A2CA0368();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();
}

double sub_1A2C9FA74@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
  swift_beginAccess();
  *a2 = *(a1 + v4);

  return result;
}

uint64_t sub_1A2C9FAD8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v4 = sub_1A2D08094();
  __swift_project_value_buffer(v4, qword_1ED709870);
  v5 = sub_1A2D08074();
  v6 = sub_1A2D086A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1A2C51000, v5, v6, "Client %{public}llu removed", v7, 0xCu);
    MEMORY[0x1A58E5180](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
  swift_beginAccess();
  v9 = sub_1A2C61290(a1);
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a2 + v8);
    *(a2 + v8) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A2CB36F8();
    }

    sub_1A2CA8E14(v11, v13);
    *(a2 + v8) = v13;
  }

  swift_endAccess();
  return sub_1A2C615B4();
}

void sub_1A2C9FCF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2C9FD4C();
  }
}

void sub_1A2C9FD4C()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2C615B4();
  }

  else
  {
    __break(1u);
    swift_once();
    v8 = sub_1A2D08094();
    __swift_project_value_buffer(v8, qword_1ED709870);
    v9 = v5;
    v10 = sub_1A2D08074();
    v11 = sub_1A2D08684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[1] = v5;
      v19 = v13;
      *v12 = 136446210;
      v14 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
      v15 = sub_1A2D08454();
      v17 = sub_1A2C55558(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1A2C51000, v10, v11, "Could not reconnect output client: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1A58E5180](v13, -1, -1);
      MEMORY[0x1A58E5180](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A2C9FFC8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1A2CA001C()
{
  result = qword_1EB09F508;
  if (!qword_1EB09F508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A01C0, &qword_1A2D0A8A8);
    sub_1A2C586F0(&qword_1EB09F5E8, type metadata accessor for ActivityDescriptorState, &protocol conformance descriptor for ActivityDescriptorState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F508);
  }

  return result;
}

void *sub_1A2CA014C(void *a1, int64_t a2, char a3)
{
  result = sub_1A2C7E67C(a1, a2, a3, *v3, &unk_1EB0A03F0, &qword_1A2D0AAE0, type metadata accessor for ActivityDescriptor);
  *v3 = result;
  return result;
}

double sub_1A2CA0190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

double sub_1A2CA01D4@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
  swift_beginAccess();
  *a1 = *(v3 + v4);

  return result;
}

uint64_t objectdestroy_22Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1A2CA02FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribedActivity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A2CA0368()
{
  result = qword_1EB0A0368;
  if (!qword_1EB0A0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0368);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1A2CA0420()
{
  result = qword_1EB09F278;
  if (!qword_1EB09F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F278);
  }

  return result;
}

unint64_t sub_1A2CA0494()
{
  result = qword_1EB0A0438;
  if (!qword_1EB0A0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0438);
  }

  return result;
}

void sub_1A2CA0520(uint64_t a1, uint64_t a2)
{
  if (qword_1ED709838 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08094();
  __swift_project_value_buffer(v2, qword_1ED709840);
  v3 = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, v3, v4, "ActivityClient Service: Interrupted", v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1A2CA0690();
  }
}

void sub_1A2CA063C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2C58800();
  }
}

void sub_1A2CA0690()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = &i - v3;
  v4 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = (&i - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ActivityRequest(0);
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &i - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &i - v9;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &i - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D8, &unk_1A2D0AC80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = (&i - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v72 = &i - v15;
  v16 = sub_1A2D08344();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&i - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v1[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  LOBYTE(v21) = sub_1A2D08364();
  v24 = *(v17 + 8);
  v23 = v17 + 8;
  v24(v20, v16);
  if ((v21 & 1) == 0)
  {
    while (1)
    {
      __break(1u);
LABEL_36:
      swift_once();
LABEL_11:
      v26 = sub_1A2D08094();
      v27 = __swift_project_value_buffer(v26, qword_1ED709840);
      v28 = v1;
      v65 = v27;
      v29 = sub_1A2D08074();
      v30 = sub_1A2D086A4();
      v31 = os_log_type_enabled(v29, v30);
      v70 = v28;
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 134349056;
        *(v32 + 4) = *(*&v1[v23] + 16);

        _os_log_impl(&dword_1A2C51000, v29, v30, "Reconnecting %{public}ld activities", v32, 0xCu);
        MEMORY[0x1A58E5180](v32, -1, -1);
      }

      else
      {

        v29 = v28;
      }

      v33 = v73;

      v34 = *&v1[v23];
      v37 = *(v34 + 64);
      v36 = v34 + 64;
      v35 = v37;
      v38 = 1 << *(*&v1[v23] + 32);
      v39 = -1;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      v40 = v39 & v35;
      v41 = (v38 + 63) >> 6;
      v67 = *&v1[v23];

      v42 = 0;
      v1 = 0;
      *&v43 = 136446210;
      for (i = v43; v40; v42 = v74)
      {
        v23 = v42;
LABEL_29:
        v47 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
        v48 = v47 | (v23 << 6);
        v49 = v68;
        v50 = (*(v67 + 48) + 16 * v48);
        v52 = *v50;
        v51 = v50[1];
        sub_1A2C68E98(*(v67 + 56) + *(v69 + 72) * v48, v68, type metadata accessor for ActivityRequest);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E8, &qword_1A2D0AC90);
        v54 = *(v53 + 48);
        v55 = v73;
        *v73 = v52;
        v55[1] = v51;
        v56 = v49;
        v33 = v55;
        sub_1A2C7C528(v56, v55 + v54, type metadata accessor for ActivityRequest);
        (*(*(v53 - 8) + 56))(v33, 0, 1, v53);

        v74 = v23;
        v1 = 0;
LABEL_30:
        v57 = v72;
        sub_1A2C639DC(v33, v72, &qword_1EB0A04D8, &unk_1A2D0AC80);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E8, &qword_1A2D0AC90);
        if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
        {

          return;
        }

        v59 = v57 + *(v58 + 48);
        v60 = v76;
        sub_1A2C7C528(v59, v76, type metadata accessor for ActivityRequest);
        v61 = type metadata accessor for AlertConfiguration(0);
        v62 = v75;
        (*(*(v61 - 8) + 56))(v75, 1, 1, v61);
        v63 = v71;
        sub_1A2C6758C(v60, v62, v71);
        sub_1A2C54E38(v75, &qword_1EB0A04D0, &unk_1A2D15640);
        sub_1A2C69F24(v63, type metadata accessor for ActivityDescriptor);
        sub_1A2C69F24(v76, type metadata accessor for ActivityRequest);
      }

      if (v41 <= v42 + 1)
      {
        v44 = v42 + 1;
      }

      else
      {
        v44 = v41;
      }

      v45 = v44 - 1;
      while (1)
      {
        v23 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v23 >= v41)
        {
          v74 = v45;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E8, &qword_1A2D0AC90);
          (*(*(v46 - 8) + 56))(v33, 1, 1, v46);
          v40 = 0;
          goto LABEL_30;
        }

        v40 = *(v36 + 8 * v23);
        ++v42;
        if (v40)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }
  }

  v25 = *&v1[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection];
  if (v25)
  {
    if ([v25 remoteTarget])
    {
      sub_1A2D087F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v77 = 0u;
      v78 = 0u;
    }

    v79 = v77;
    v80 = v78;
    if (*(&v78 + 1))
    {
      sub_1A2C54E38(&v79, &qword_1EB0A04E0, &unk_1A2D0AA70);
      return;
    }
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
  }

  sub_1A2C54E38(&v79, &qword_1EB0A04E0, &unk_1A2D0AA70);
  v23 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient__queue_ephemeralActivityRequests;
  swift_beginAccess();
  if (*(*&v1[v23] + 16))
  {
    sub_1A2C58800();
    if (qword_1ED709838 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }
}

id sub_1A2CA1028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityInputClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CA1134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = a14;
  if (a2 >> 60 == 15)
  {
    if (a13)
    {
      v15 = sub_1A2C68B54();
      if (v15)
      {
        v16 = v15;
        v17 = sub_1A2D08434();
        v18 = sub_1A2D08434();
        v19 = sub_1A2D08434();
        v20 = sub_1A2D08384();
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        v21 = sub_1A2D087A4();
        v22 = swift_allocObject();
        *(v22 + 16) = a10;
        *(v22 + 24) = a11;
        v41 = sub_1A2CA15F4;
        v42 = v22;
        aBlock = MEMORY[0x1E69E9820];
        v38 = 1107296256;
        v39 = sub_1A2CA1504;
        v40 = &block_descriptor_63;
        v23 = _Block_copy(&aBlock);

        [v16 mockPushWithChannelID:v17 processIdentifier:v18 environmentName:v19 payload:v20 pushPriority:v21 completionHandler:v23];
        swift_unknownObjectRelease();
        _Block_release(v23);

        v14 = a14;
      }
    }
  }

  else
  {
    sub_1A2C5E63C(a1, a2);
    v26 = sub_1A2C68B54();
    if (v26)
    {
      v27 = v26;
      v36 = sub_1A2D07F24();
      v35 = sub_1A2D08434();
      v28 = sub_1A2D08434();
      v29 = sub_1A2D08384();
      sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
      v30 = sub_1A2D087A4();
      v31 = swift_allocObject();
      *(v31 + 16) = a10;
      *(v31 + 24) = a11;
      v41 = sub_1A2CA1654;
      v42 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v38 = 1107296256;
      v39 = sub_1A2CA1504;
      v40 = &block_descriptor_69;
      v32 = _Block_copy(&aBlock);

      [v27 mockPushWithToken:v36 processIdentifier:v35 environmentName:v28 payload:v29 pushPriority:v30 completionHandler:v32];
      sub_1A2C5DE40(a1, a2);
      swift_unknownObjectRelease();
      _Block_release(v32);
    }

    else
    {
      sub_1A2C5DE40(a1, a2);
    }

    v14 = a14;
  }

  v33 = *(*(v14 + 24) + 16);

  os_unfair_lock_lock(v33);
  sub_1A2C8EB74();
  os_unfair_lock_unlock(v33);
}

void sub_1A2CA1504(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t sub_1A2CA1590()
{
  result = qword_1EB09F000;
  if (!qword_1EB09F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F000);
  }

  return result;
}

id ActivityAuthorization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ActivityAuthorization.init()()
{
  *&v0[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *&v0[v1] = v2;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ActivityAuthorization();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = qword_1EB09F638;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = *(*&v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);

  os_unfair_lock_lock(v7);
  *&v6[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = &off_1F157B848;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v7);

  return v6;
}

char *ActivityAuthorization.__allocating_init(client:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v3);
  *&v5[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *&v5[v6] = v7;
  v13.receiver = v5;
  v13.super_class = v3;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = *(*&v9[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v11 = v9;

  os_unfair_lock_lock(v10);
  *&v11[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v10);

  swift_unknownObjectRelease();

  return v11;
}

char *ActivityAuthorization.init(client:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *&v2[v4] = v5;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for ActivityAuthorization();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = *(*&v7[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock] + 16);
  v9 = v7;

  os_unfair_lock_lock(v8);
  *&v9[OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient + 8] = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v8);

  swift_unknownObjectRelease();

  return v9;
}

void sub_1A2CA1A14(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a1 & 1;
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12[0] = v9;
    v12[1] = 2;
    (*(v10 + 48))(a2, a3, v12, ObjectType, v10);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1B0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_8;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(v4 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v9);
  v10 = v4 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = a1 & 1;
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14[0] = v11;
    v14[1] = v8;
    (*(v12 + 48))(a2, a3, v14, ObjectType, v12);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v9);
    return;
  }

  __break(1u);
LABEL_8:
  sub_1A2D08944();
  __break(1u);
}

void sub_1A2CA1D10(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();

    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1DCC(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 72))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1E84(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 80))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA1F3C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 56))(a1, a2, ObjectType, v7);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A2CA2110(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 40))(a1, a2, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CA2294(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v5);
  v6 = v2 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 88))(a1, a2, ObjectType, v8);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v5);
    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A2CA2418(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock) + 16);
  os_unfair_lock_lock(v7);
  v8 = v3 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = a1 & 1;
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v12[0] = v9;
    v12[1] = 2;
    (*(v10 + 96))(a2, a3, v12, ObjectType, v10);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A2CA2510(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1A2D08444();
  v11 = v10;
  v12 = a1;
  a6(a3, v9, v11);

  return 1;
}

id ActivityAuthorization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAuthorization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CA28F4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09EC40);
  __swift_project_value_buffer(v0, qword_1EB09EC40);
  return sub_1A2D08084();
}

id sub_1A2CA2974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EB09ECD8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB09ECE8;
  v9 = sub_1A2D08434();
  v10 = sub_1A2D08434();
  v14[4] = a5;
  v14[5] = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1A2CA2AC0;
  v14[3] = &block_descriptor_1;
  v11 = _Block_copy(v14);

  v12 = [v8 listenForActivityPresentationWithActivityIdentifier:v9 presenterBundleIdentifier:v10 handler:v11];
  _Block_release(v11);

  return v12;
}

uint64_t sub_1A2CA2AC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_1A2CA2C8C(__int128 *a1)
{
  if (qword_1EB09ECD8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1A2D080E4();
  result = sub_1A2D08704();
  if (!v1)
  {
    return v3;
  }

  return result;
}

id ActivityPresentationObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityPresentationObservationClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPresentationObservationClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A2CA2E4C()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_0()) init];
  qword_1EB09ECE8 = result;
  return result;
}

char *sub_1A2CA2EDC()
{
  v22 = sub_1A2D086E4();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue;
  v6 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v20[0] = "resentation-observation";
  v20[1] = v6;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v22);
  *&v0[v21] = sub_1A2D08724();
  v7 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_serverStartupToken] = -1;
  v8 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__presentationPublisher;
  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2CAA78C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0568, &qword_1A2D0AD98);
  swift_allocObject();
  *&v0[v8] = sub_1A2D081B4();
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_presentations] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_predicates] = v9;
  v10 = *&v0[v7];
  *&v0[v7] = 0;

  v11 = _s11ActivityKit9SingletonCMa_0();
  v24.receiver = v0;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2CA5B60;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_56;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

void sub_1A2CA3344()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CA5B04();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2CA5B58;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_38;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2CA3BAC();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CA35F0(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CA38E8;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CA38F4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CA3900;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_47_0;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CA390C(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC30 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09EC40);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CA39FC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2CA3344();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C54E38(v10, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CA3BAC()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CA5AFC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_29;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC30 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09EC40);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CA3DA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2CA4714();
  }
}

uint64_t sub_1A2CA3DF8()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CA39FC();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_connection);
  if (!v8)
  {
    if (qword_1EB09EC30 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB09EC40);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "ActivityPresentationObservationClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0560, &qword_1A2D0AD90);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09EC30 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1EB09EC40);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "ActivityPresentationObservationClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

void *sub_1A2CA413C(uint64_t *a1)
{
  v2 = v1;
  v34 = *MEMORY[0x1E69E9840];
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  v11 = *(v2 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v8 = v11;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  (*(v5 + 8))(v8, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
  }

  v13 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_predicates;
  swift_beginAccess();
  result = sub_1A2CF6B1C(v9, v10, *(v2 + v13));
  if ((v15 & 1) == 0)
  {
    v16 = result;
    swift_beginAccess();
    sub_1A2CF6D80(v16, &v33);
    swift_endAccess();

    result = sub_1A2CA3DF8();
    if (result)
    {
      v17 = result;

      sub_1A2CA4474(v18, &v32);

      sub_1A2D07EB4();
      swift_allocObject();
      sub_1A2D07EA4();
      sub_1A2CA5AA8();
      v19 = sub_1A2D07E94();
      v21 = v20;

      v22 = sub_1A2D07F24();
      sub_1A2C55840(v19, v21);

      v23 = sub_1A2D07F44();
      v25 = v24;

      v26 = sub_1A2D07F24();
      v32 = 0;
      v27 = [v17 subscribeToActivityPresentationMatchingPredicate:v26 error:&v32];

      if (v27)
      {
        v28 = v32;
        sub_1A2C55840(v23, v25);
      }

      else
      {
        v29 = v32;
        v30 = sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v23, v25);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1A2CA4474(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    v4 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      if (!v7)
      {

        goto LABEL_20;
      }

      v8 = *(v7 + 16);
      v9 = *(v5 + 2);
      v10 = (v9 + v8);
      if (__OFADD__(v9, v8))
      {
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
        swift_once();
LABEL_40:
        v5 = qword_1EB0A0948;
        v22 = unk_1EB0A0950;

        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v5 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v15 = v9 + v8;
        }

        else
        {
          v15 = v9;
        }

        v5 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
        if (*(v7 + 16))
        {
LABEL_10:
          if ((*(v5 + 3) >> 1) - *(v5 + 2) < v8)
          {
            goto LABEL_45;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v12 = *(v5 + 2);
            v13 = __OFADD__(v12, v8);
            v14 = v12 + v8;
            if (v13)
            {
              goto LABEL_47;
            }

            *(v5 + 2) = v14;
          }

          goto LABEL_20;
        }
      }

      if (v8)
      {
        goto LABEL_42;
      }

LABEL_20:
      if (!v6)
      {
        goto LABEL_4;
      }

      v16 = *(v6 + 16);
      v10 = *(v4 + 2);
      v17 = (v10 + v16);
      if (__OFADD__(v10, v16))
      {
        goto LABEL_43;
      }

      v18 = swift_isUniquelyReferenced_nonNull_native();
      if (v18 && v17 <= *(v4 + 3) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 <= v17)
        {
          v19 = v10 + v16;
        }

        else
        {
          v19 = v10;
        }

        v4 = sub_1A2C8A10C(v18, v19, 1, v4);
        if (*(v6 + 16))
        {
LABEL_30:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v16)
          {
            goto LABEL_46;
          }

          swift_arrayInitWithCopy();

          if (v16)
          {
            v20 = *(v4 + 2);
            v13 = __OFADD__(v20, v16);
            v21 = v20 + v16;
            if (v13)
            {
              goto LABEL_48;
            }

            *(v4 + 2) = v21;
          }

          goto LABEL_4;
        }
      }

      if (v16)
      {
        goto LABEL_44;
      }

LABEL_4:
      v3 += 2;
      if (!--v2)
      {
        goto LABEL_35;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
LABEL_35:
  if (!*(v5 + 2) && !*(v4 + 2))
  {

    v10 = a2;
    if (qword_1EB09F6F8 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_40;
  }

  v22 = v4;
  v10 = a2;
LABEL_38:
  *v10 = v5;
  v10[1] = v22;
}

void *sub_1A2CA4714()
{
  v24[2] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 24);
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
  }

  result = sub_1A2CA3DF8();
  if (result)
  {
    v9 = result;
    swift_beginAccess();

    sub_1A2CA4474(v10, v24);

    sub_1A2D07EB4();
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2CA5AA8();
    v11 = sub_1A2D07E94();
    v13 = v12;

    v14 = sub_1A2D07F24();
    sub_1A2C55840(v11, v13);

    v15 = sub_1A2D07F44();
    v17 = v16;

    v18 = sub_1A2D07F24();
    v24[0] = 0;
    v19 = [v9 subscribeToActivityPresentationMatchingPredicate:v18 error:v24];

    if (v19)
    {
      v20 = v24[0];
      sub_1A2C55840(v15, v17);
    }

    else
    {
      v21 = v24[0];
      v22 = sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v15, v17);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A2CA4A00(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A2CA4AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A2D0AD20;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A2D0AD20;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  sub_1A2D080E4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_1A2D08704();

  v15 = type metadata accessor for CancellableAssertion();
  v16 = objc_allocWithZone(v15);
  swift_allocObject();

  *&v16[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v19.receiver = v16;
  v19.super_class = v15;
  v17 = objc_msgSendSuper2(&v19, sel_init);

  return v17;
}

uint64_t sub_1A2CA4D08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    v11 = sub_1A2C64868(a2, a3);
    if (a2)
    {
      v12 = *(*(a1 + 56) + 24 * v11 + 16);
      v13 = (v12 + 49);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = *(v13 - 1);
        v16 = *v13;
        if (*(v13 - 17) != a6 || *(v13 - 9) != a7)
        {
          v13 += 24;
          if ((sub_1A2D08B34() & 1) == 0)
          {
            continue;
          }
        }

        v18 = 4;
        v19 = 1;
        v20 = 2;
        if (v15)
        {
          v20 = 3;
        }

        if (v15 != 2)
        {
          v19 = v20;
        }

        v21 = 5;
        if (v15)
        {
          v21 = 6;
        }

        if (v16 == 1)
        {
          v18 = v21;
        }

        if (v16)
        {
          v22 = v18;
        }

        else
        {
          v22 = v19;
        }

        a4(v22);
      }
    }
  }

  return (a4)(0, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1A2CA4F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v60 = a4;
  v67 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0578, &qword_1A2D0ADA8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v52 - v15;
  v16 = sub_1A2CA3DF8();
  if (v16)
  {
    v17 = v16;
    v57 = v13;
    v58 = a6;
    v18 = OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_predicates;
    swift_beginAccess();
    v19 = *(a1 + v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = a5;
    v62 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1A2CB2A40(0, *(v19 + 2) + 1, 1, v19);
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    v55 = v14;
    v63 = v17;
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1A2CB2A40((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[16 * v22];
    *(v23 + 4) = v62;
    *(v23 + 5) = a3;
    v54 = a3;
    sub_1A2CA4474(v19, &v66);
    sub_1A2D07EB4();
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2CA5AA8();
    v24 = v64;
    v25 = sub_1A2D07E94();
    if (v24)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = v26;

      v29 = sub_1A2D07F24();
      sub_1A2C55840(v27, v28);

      v30 = sub_1A2D07F44();
      v32 = v31;

      v64 = v30;
      v33 = sub_1A2D07F24();
      v66 = 0;
      LOBYTE(v28) = [v63 subscribeToActivityPresentationMatchingPredicate:v33 error:&v66];

      v34 = v66;
      if (v28)
      {
        *(a1 + v18) = v19;
        v35 = v34;

        v36 = *(a1 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__presentationPublisher);
        v65 = *(a1 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
        v37 = v65;
        v66 = v36;
        v38 = sub_1A2D086D4();
        v39 = v59;
        (*(*(v38 - 8) + 56))(v59, 1, 1, v38);

        v52 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0568, &qword_1A2D0AD98);
        sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
        sub_1A2C56A78(&qword_1EB09EB68, &qword_1EB0A0568, &qword_1A2D0AD98, MEMORY[0x1E695BFB0]);
        sub_1A2C8B9D4();
        v53 = v32;
        v40 = v61;
        sub_1A2D08264();
        sub_1A2C54E38(v39, &qword_1EB0A0570, &qword_1A2D0ADA0);

        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        v43 = v62;
        v42[2] = v41;
        v42[3] = v43;
        v44 = v54;
        v42[4] = v54;
        v45 = swift_allocObject();
        v45[2] = v43;
        v45[3] = v44;
        v46 = v56;
        v45[4] = v60;
        v45[5] = v46;
        sub_1A2C56A78(&qword_1EB09EBB8, &qword_1EB0A0578, &qword_1A2D0ADA8, MEMORY[0x1E695BE98]);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v47 = v57;
        v48 = sub_1A2D08224();
        sub_1A2C55840(v64, v53);
        swift_unknownObjectRelease();

        result = (*(v55 + 8))(v40, v47);
        *v58 = v48;
      }

      else
      {
        v51 = v66;

        sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v64, v32);
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_1A2CA1590();
    swift_allocError();
    *v50 = xmmword_1A2D0AC20;
    *(v50 + 16) = 0u;
    *(v50 + 32) = 0u;
    *(v50 + 48) = 0u;
    *(v50 + 64) = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1A2CA569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8[0] = a3;
    v8[1] = a4;
    sub_1A2CA413C(v8);
  }
}

uint64_t sub_1A2CA57BC(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A2D07F24();
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v11 = sub_1A2D07F44();
  v13 = v12;
  sub_1A2CA5A20();
  sub_1A2D07E64();
  sub_1A2C55840(v11, v13);

  v14 = v19;
  if (v19)
  {

    v15 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton_queue);
    *v9 = v15;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
    v16 = v15;
    LOBYTE(v15) = sub_1A2D08364();
    (*(v7 + 8))(v9, v6);
    if (v15)
    {
      *(a3 + OBJC_IVAR____TtC11ActivityKitP33_37102ADAD4FB4DA90D1EB342A548B6909Singleton__queue_presentations) = v14;

      v19 = v14;

      sub_1A2D08174();

      a4[2](a4, 0);
    }

    __break(1u);
  }

  _Block_release(a4);
  __break(1u);
  _Block_release(a4);
  sub_1A2C55840(v11, v13);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1A2CA5A20()
{
  result = qword_1EB09F0A0;
  if (!qword_1EB09F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0A0);
  }

  return result;
}

unint64_t sub_1A2CA5AA8()
{
  result = qword_1EB09F060;
  if (!qword_1EB09F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F060);
  }

  return result;
}

unint64_t sub_1A2CA5B04()
{
  result = qword_1EB09ED50;
  if (!qword_1EB09ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED50);
  }

  return result;
}

uint64_t sub_1A2CA5B90(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = ActivityPresentationPredicate.filter(presentations:)(*a1);
  v2(v3, v4);
}

uint64_t ActivityAuthorizationOptions.init(enabled:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  if (a3)
  {
    v4 = 2;
LABEL_7:
    *a4 = result & 1;
    a4[1] = v4;
    return result;
  }

  if (!a2)
  {
    v4 = 0;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v4 = 1;
    goto LABEL_7;
  }

  result = sub_1A2D08944();
  __break(1u);
  return result;
}

uint64_t sub_1A2CA5CFC()
{
  if (*v0)
  {
    return 0x656372756F73;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1A2CA5D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CA5E0C(uint64_t a1)
{
  v2 = sub_1A2CA600C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA5E48(uint64_t a1)
{
  v2 = sub_1A2CA600C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAuthorizationOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0580, &qword_1A2D0ADB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA600C();
  sub_1A2D08C74();
  v13 = 0;
  sub_1A2D08AC4();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1A2CA6060();
    sub_1A2D08AA4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A2CA600C()
{
  result = qword_1EB0A0588;
  if (!qword_1EB0A0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0588);
  }

  return result;
}

unint64_t sub_1A2CA6060()
{
  result = qword_1EB0A0590;
  if (!qword_1EB0A0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0590);
  }

  return result;
}

uint64_t ActivityAuthorizationOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0598, &qword_1A2D0ADB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA600C();
  sub_1A2D08C64();
  if (!v2)
  {
    v15 = 0;
    v9 = sub_1A2D08A34();
    v13 = 1;
    sub_1A2CA6274();
    sub_1A2D08A14();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9 & 1;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2CA6274()
{
  result = qword_1EB0A05A0;
  if (!qword_1EB0A05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05A0);
  }

  return result;
}

uint64_t sub_1A2CA62F8(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA7054();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CA63BC(uint64_t a1, _WORD *a2, uint64_t a3)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v4 = sub_1A2D07F44();
  v6 = v5;
  sub_1A2CA7000();
  sub_1A2D07E64();
  sub_1A2C55840(v4, v6);

  *a2 = v8;
  return result;
}

uint64_t sub_1A2CA64B4()
{
  if (*v0)
  {
    return 0x73676E6974746573;
  }

  else
  {
    return 0x4372657474616C70;
  }
}

uint64_t sub_1A2CA64F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4372657474616C70 && a2 == 0xEB000000006E6968;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73676E6974746573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CA65D8(uint64_t a1)
{
  v2 = sub_1A2CA69FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA6614(uint64_t a1)
{
  v2 = sub_1A2CA69FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA665C(uint64_t a1)
{
  v2 = sub_1A2CA6AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA6698(uint64_t a1)
{
  v2 = sub_1A2CA6AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA66D4(uint64_t a1)
{
  v2 = sub_1A2CA6A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA6710(uint64_t a1)
{
  v2 = sub_1A2CA6A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAuthorizationChangeSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05A8, &qword_1A2D0ADC0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05B0, &qword_1A2D0ADC8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05B8, &qword_1A2D0ADD0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA69FC();
  sub_1A2D08C74();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A2CA6A50();
    v14 = v18;
    sub_1A2D08A84();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A2CA6AA4();
    sub_1A2D08A84();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A2CA69FC()
{
  result = qword_1EB0A05C0;
  if (!qword_1EB0A05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05C0);
  }

  return result;
}

unint64_t sub_1A2CA6A50()
{
  result = qword_1EB0A05C8;
  if (!qword_1EB0A05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05C8);
  }

  return result;
}

unint64_t sub_1A2CA6AA4()
{
  result = qword_1EB0A05D0;
  if (!qword_1EB0A05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05D0);
  }

  return result;
}

uint64_t ActivityAuthorizationChangeSource.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t ActivityAuthorizationChangeSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05D8, &qword_1A2D0ADD8);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05E0, &qword_1A2D0ADE0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05E8, &qword_1A2D0ADE8);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA69FC();
  v13 = v31;
  sub_1A2D08C64();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A2D08A64();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A2D088A4();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
    *v21 = &type metadata for ActivityAuthorizationChangeSource;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A2CA6A50();
    sub_1A2D089D4();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A2CA6AA4();
    sub_1A2D089D4();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_1A2CA7000()
{
  result = qword_1EB0A0A40;
  if (!qword_1EB0A0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0A40);
  }

  return result;
}

unint64_t sub_1A2CA7054()
{
  result = qword_1EB0A0A10;
  if (!qword_1EB0A0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0A10);
  }

  return result;
}

unint64_t sub_1A2CA70A8()
{
  result = qword_1EB0A05F8;
  if (!qword_1EB0A05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A05F8);
  }

  return result;
}

unint64_t sub_1A2CA7100()
{
  result = qword_1EB0A0600;
  if (!qword_1EB0A0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0600);
  }

  return result;
}

uint64_t sub_1A2CA71C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CA7218()
{
  result = qword_1EB0A0608;
  if (!qword_1EB0A0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0608);
  }

  return result;
}

uint64_t sub_1A2CA726C(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA6060();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CA7328(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v4 = sub_1A2D07F44();
  v6 = v5;
  sub_1A2CA6274();
  sub_1A2D07E64();
  sub_1A2C55840(v4, v6);

  *a2 = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivityAuthorizationOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ActivityAuthorizationOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A2CA75CC()
{
  result = qword_1EB0A0610;
  if (!qword_1EB0A0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0610);
  }

  return result;
}

unint64_t sub_1A2CA7624()
{
  result = qword_1EB0A0618;
  if (!qword_1EB0A0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0618);
  }

  return result;
}

unint64_t sub_1A2CA767C()
{
  result = qword_1EB0A0620;
  if (!qword_1EB0A0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0620);
  }

  return result;
}

unint64_t sub_1A2CA76D4()
{
  result = qword_1EB0A0628;
  if (!qword_1EB0A0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0628);
  }

  return result;
}

unint64_t sub_1A2CA772C()
{
  result = qword_1EB0A0630;
  if (!qword_1EB0A0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0630);
  }

  return result;
}

unint64_t sub_1A2CA7784()
{
  result = qword_1EB0A0638;
  if (!qword_1EB0A0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0638);
  }

  return result;
}

unint64_t sub_1A2CA77DC()
{
  result = qword_1EB0A0640;
  if (!qword_1EB0A0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0640);
  }

  return result;
}

unint64_t sub_1A2CA7834()
{
  result = qword_1EB0A0648;
  if (!qword_1EB0A0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0648);
  }

  return result;
}

unint64_t sub_1A2CA788C()
{
  result = qword_1EB0A0650;
  if (!qword_1EB0A0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0650);
  }

  return result;
}

unint64_t sub_1A2CA78E4()
{
  result = qword_1EB0A0658;
  if (!qword_1EB0A0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0658);
  }

  return result;
}

uint64_t sub_1A2CA7958()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0668, qword_1A2D0B490);
    sub_1A2C56A78(&qword_1EB0A0670, &qword_1EB0A0668, qword_1A2D0B490, MEMORY[0x1E695BFB0]);
    v1 = sub_1A2D081F4();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1A2CA7A1C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 16) + 16);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (*(v6 + 16))
  {

    v7 = sub_1A2C64868(a1, a2);
    if (v8)
    {
      v9 = *(v6 + 56) + 16 * v7;
      v10 = *v9;
      sub_1A2C5E63C(*v9, *(v9 + 8));
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v5);

  return v10;
}

unint64_t sub_1A2CA7AFC()
{
  sub_1A2D08864();

  swift_beginAccess();

  v0 = sub_1A2D083A4();
  v2 = v1;

  MEMORY[0x1A58E4150](v0, v2);

  return 0xD00000000000001CLL;
}

uint64_t sub_1A2CA7BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 96);
  if (*(v6 + 16))
  {

    v7 = sub_1A2C64868(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);
      swift_unknownObjectRetain();

      swift_getObjectType();
      v21[0] = v9;
      v10 = sub_1A2D081F4();
      swift_unknownObjectRelease();
      return v10;
    }
  }

  sub_1A2C53CD8(v3 + 24, v21);
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v13 = (*(v12 + 16))(a1, a2, v11, v12);
  if (v14 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v14 >> 60 == 15)
  {
    v16 = 0xC000000000000000;
  }

  else
  {
    v16 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  v21[0] = v15;
  v21[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0668, qword_1A2D0B490);
  swift_allocObject();
  sub_1A2C5E63C(v15, v16);
  v17 = sub_1A2D081B4();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v3 + 96);
  *(v3 + 96) = 0x8000000000000000;
  sub_1A2CA7EC0(v17, a1, a2, isUniquelyReferenced_nonNull_native, &v20);

  *(v3 + 96) = v20;
  swift_endAccess();
  v21[0] = v17;
  sub_1A2C56A78(&qword_1EB0A0670, &qword_1EB0A0668, qword_1A2D0B490, MEMORY[0x1E695BFB0]);
  v10 = sub_1A2D081F4();
  sub_1A2C55840(v15, v16);

  return v10;
}

void *sub_1A2CA7E10()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  sub_1A2C5DE40(v0[10], v0[11]);

  return v0;
}

uint64_t sub_1A2CA7E68()
{
  sub_1A2CA7E10();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

void sub_1A2CA7EC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v12 = sub_1A2C64868(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A2CB3C5C();
      goto LABEL_7;
    }

    sub_1A2CB2E04(v15, a4 & 1);
    v20 = sub_1A2C64868(a2, a3);
    if ((v16 & 1) == (v21 & 1))
    {
      v12 = v20;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1A2D08B84();
    __break(1u);
    return;
  }

LABEL_7:
  if (v16)
  {
LABEL_8:
    v18 = sub_1A2C56A78(&qword_1EB0A0678, &qword_1EB0A0668, qword_1A2D0B490, MEMORY[0x1E695BFA8]);
    v19 = (*(*a5 + 56) + 16 * v12);
    *v19 = a1;
    v19[1] = v18;

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  sub_1A2CA8040(v12, a2, a3, a1, *a5);
}

uint64_t sub_1A2CA8040(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_1A2C56A78(&qword_1EB0A0678, &qword_1EB0A0668, qword_1A2D0B490, MEMORY[0x1E695BFA8]);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1A2CA80FC()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09F038);
  __swift_project_value_buffer(v0, qword_1EB09F038);
  return sub_1A2D08004();
}

uint64_t static ActivityQoSObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F038);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CA820C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09F030 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09F038);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Void __swiftcall CancellableAssertion.cancel()()
{

  sub_1A2D080D4();
}

id CancellableAssertion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CancellableAssertion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CA840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for BufferedAlert(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1A2C54E38(a1, &unk_1EB0A0BB0, &unk_1A2D0B780);
    sub_1A2C91E28(a2, a3, type metadata accessor for BufferedAlert, type metadata accessor for BufferedAlert, type metadata accessor for BufferedAlert, sub_1A2CB4108, v9);

    return sub_1A2C54E38(v9, &unk_1EB0A0BB0, &unk_1A2D0B780);
  }

  else
  {
    sub_1A2C7C590(a1, v13, type metadata accessor for BufferedAlert);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1A2CF4B28(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1A2CA869C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1A2CA86E4()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0688, &qword_1A2D0B760);
  v0 = sub_1A2D083A4();

  return v0;
}

uint64_t sub_1A2CA877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Activity(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A2D08154();
  swift_getWitnessTable();
  return sub_1A2D081F4();
}

uint64_t sub_1A2CA8828()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x1A58E4150](v2, v3);

  MEMORY[0x1A58E4150](2108704, 0xE300000000000000);
  swift_beginAccess();
  type metadata accessor for Activity(255, *(v1 + 80), *(v1 + 88), v4);
  sub_1A2D083C4();
  swift_getWitnessTable();
  sub_1A2D08B14();
  return 0;
}

uint64_t sub_1A2CA8944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(a3 + 16);
    v6[0] = *a3;
    v6[1] = v5;
    v6[2] = *(a3 + 32);
    v7 = *(a3 + 48);
    sub_1A2C5F480(v6);
  }

  return result;
}

uint64_t sub_1A2CA89BC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t sub_1A2CA8A1C()
{
  v0 = sub_1A2CA89BC();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1A2CA8A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A2D083F4();

  return sub_1A2CA8ACC(a1, v6, a2, a3);
}

unint64_t sub_1A2CA8ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1A2D08424();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

double sub_1A2CA8CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A2C64868(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A2CB3F60();
      v10 = v12;
    }

    sub_1A2C5E3C4((*(v10 + 56) + 40 * v8), a3);
    sub_1A2CA9154(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A2CA8E14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A2D08814() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1A2D08C04();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + v3);
          v17 = (v15 + v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A2CA8F84(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A2D08814() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1A2D08C14();
      MEMORY[0x1A58E48E0](v9);
      result = sub_1A2D08C54();
      v10 = result & v7;
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
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for OpaqueActivityPayload(0) - 8) + 72);
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

uint64_t sub_1A2CA9154(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A2D08814() + 1) & ~v5;
    do
    {
      sub_1A2D08C14();

      sub_1A2D08484();
      v11 = sub_1A2D08C54();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t ActivityUpdateFeed.description.getter()
{
  if (*v0)
  {
    return 0x7472656C61;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1A2CA9380(uint64_t a1)
{
  v2 = sub_1A2CA98C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA93BC(uint64_t a1)
{
  v2 = sub_1A2CA98C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA93F8(uint64_t a1)
{
  v2 = sub_1A2CA9918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA9434(uint64_t a1)
{
  v2 = sub_1A2CA9918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CA9470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7472656C61 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CA9548(uint64_t a1)
{
  v2 = sub_1A2CA9870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CA9584(uint64_t a1)
{
  v2 = sub_1A2CA9870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityUpdateFeed.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06A0, &qword_1A2D0B790);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06A8, &qword_1A2D0B798);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06B0, &qword_1A2D0B7A0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA9870();
  sub_1A2D08C74();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A2CA98C4();
    v14 = v18;
    sub_1A2D08A84();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A2CA9918();
    sub_1A2D08A84();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A2CA9870()
{
  result = qword_1EB0A06B8;
  if (!qword_1EB0A06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06B8);
  }

  return result;
}

unint64_t sub_1A2CA98C4()
{
  result = qword_1EB0A06C0;
  if (!qword_1EB0A06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06C0);
  }

  return result;
}

unint64_t sub_1A2CA9918()
{
  result = qword_1EB0A06C8;
  if (!qword_1EB0A06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06C8);
  }

  return result;
}

uint64_t ActivityUpdateFeed.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t ActivityUpdateFeed.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06D0, &qword_1A2D0B7A8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06D8, &qword_1A2D0B7B0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A06E0, &unk_1A2D0B7B8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CA9870();
  v12 = v31;
  sub_1A2D08C64();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1A2D08A64();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A2C6D870();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A2D088A4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0);
      *v22 = &type metadata for ActivityUpdateFeed;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1A2CA98C4();
        sub_1A2D089D4();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A2CA9918();
        sub_1A2D089D4();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1A2CA9F00()
{
  result = qword_1EB0A06E8;
  if (!qword_1EB0A06E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06E8);
  }

  return result;
}

unint64_t sub_1A2CA9F58()
{
  result = qword_1EB0A06F0;
  if (!qword_1EB0A06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06F0);
  }

  return result;
}

unint64_t sub_1A2CA9FB0()
{
  result = qword_1EB0A06F8;
  if (!qword_1EB0A06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A06F8);
  }

  return result;
}

unint64_t sub_1A2CAA008()
{
  result = qword_1EB0A0700;
  if (!qword_1EB0A0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0700);
  }

  return result;
}

unint64_t sub_1A2CAA060()
{
  result = qword_1EB0A0708;
  if (!qword_1EB0A0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0708);
  }

  return result;
}

unint64_t sub_1A2CAA0B8()
{
  result = qword_1EB0A0710;
  if (!qword_1EB0A0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0710);
  }

  return result;
}

unint64_t sub_1A2CAA110()
{
  result = qword_1EB0A0718;
  if (!qword_1EB0A0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0718);
  }

  return result;
}

double AlertPayload.sceneTargets.getter()
{
  type metadata accessor for AlertPayload(0);

  return result;
}

uint64_t AlertPayload.assetProviderBundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlertPayload(0) + 44));

  return v1;
}

double AlertPayload.platterTarget.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AlertPayload(0) + 40));
  if (*(v3 + 16) && (v4 = sub_1A2C66BC0(0), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 48 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
    v12 = *(v6 + 40);
    *a1 = *v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = v12;

    return sub_1A2C72A00(v7, v8, v9, v10, v11);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -1;
  }

  return result;
}

uint64_t AlertPayload.init(updateIdentifier:bundleIdentifier:title:body:sound:deviceIdentifier:platterTarget:assetProviderBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14)
{
  v18 = *a8;
  v38 = a8[1];
  v19 = *(a8 + 16);
  v20 = a8[3];
  v36 = a12[1];
  v37 = *a12;
  v35 = *(a12 + 4);
  v21 = *(a12 + 40);
  v22 = sub_1A2D07FC4();
  v23 = *(v22 - 8);
  v43 = a1;
  (*(v23 + 16))(a9, a1, v22);
  v24 = type metadata accessor for AlertPayload(0);
  v25 = (a9 + v24[5]);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a9 + v24[6]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + v24[7]);
  *v27 = a6;
  v27[1] = a7;
  v28 = a9 + v24[8];
  *v28 = v18;
  *(v28 + 8) = v38;
  *(v28 + 16) = v19;
  *(v28 + 24) = v20;
  v29 = (a9 + v24[9]);
  *v29 = a10;
  v29[1] = a11;
  if (v21 == 255)
  {
    v32 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
    inited = swift_initStackObject();
    *(inited + 32) = 0;
    v31 = inited + 32;
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 56) = v36;
    *(inited + 40) = v37;
    *(inited + 72) = v35;
    *(inited + 80) = v21 & 1;
    v32 = sub_1A2CAA8B0(inited);
    swift_setDeallocating();
    sub_1A2C54E38(v31, &qword_1EB0A0728, &qword_1A2D0BB50);
  }

  result = (*(v23 + 8))(v43, v22);
  *(a9 + v24[10]) = v32;
  v34 = (a9 + v24[11]);
  *v34 = a13;
  v34[1] = a14;
  return result;
}

int *AlertPayload.init(updateIdentifier:bundleIdentifier:title:body:sound:deviceIdentifier:sceneTargets:assetProviderBundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = *a8;
  v21 = a8[1];
  v22 = *(a8 + 16);
  v23 = a8[3];
  v24 = sub_1A2D07FC4();
  (*(*(v24 - 8) + 32))(a9, a1, v24);
  result = type metadata accessor for AlertPayload(0);
  v26 = (a9 + result[5]);
  *v26 = a2;
  v26[1] = a3;
  v27 = (a9 + result[6]);
  *v27 = a4;
  v27[1] = a5;
  v28 = (a9 + result[7]);
  *v28 = a6;
  v28[1] = a7;
  v29 = a9 + result[8];
  *v29 = v20;
  *(v29 + 8) = v21;
  *(v29 + 16) = v22;
  *(v29 + 24) = v23;
  v30 = (a9 + result[9]);
  *v30 = a10;
  v30[1] = a11;
  *(a9 + result[10]) = a12;
  v31 = (a9 + result[11]);
  *v31 = a13;
  v31[1] = a14;
  return result;
}

uint64_t sub_1A2CAA5F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CAB354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CAA624(uint64_t a1)
{
  v2 = sub_1A2C931CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CAA660(uint64_t a1)
{
  v2 = sub_1A2C931CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CAA69C(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C93220(&qword_1EB09ED28, type metadata accessor for AlertPayload, &protocol conformance descriptor for AlertPayload);
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

unint64_t sub_1A2CAA78C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0768, &qword_1A2D0BDB0);
    v3 = sub_1A2D08994();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_1A2C64868(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1A2CAA8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07C0, &qword_1A2D0BE38);
    v3 = sub_1A2D08994();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 48);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      sub_1A2C72A00(v6, v7, v8, v9, v10);
      result = sub_1A2C66BC0(v5);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v14 = v3[7] + 48 * result;
      *v14 = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 24) = v9;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_1A2CAA9F0()
{
  result = qword_1ED7092F0;
  if (!qword_1ED7092F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7092F0);
  }

  return result;
}

unint64_t sub_1A2CAAA44()
{
  result = qword_1ED709638;
  if (!qword_1ED709638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709638);
  }

  return result;
}

unint64_t sub_1A2CAAA98()
{
  result = qword_1ED709570;
  if (!qword_1ED709570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709570);
  }

  return result;
}

uint64_t sub_1A2CAAAEC(void *a1)
{
  a1[1] = sub_1A2C93220(&qword_1EB09EFA0, type metadata accessor for AlertPayload, &protocol conformance descriptor for AlertPayload);
  a1[2] = sub_1A2C93220(&qword_1EB09ED28, type metadata accessor for AlertPayload, &protocol conformance descriptor for AlertPayload);
  result = sub_1A2C93220(&qword_1EB09ED20, type metadata accessor for AlertPayload, &protocol conformance descriptor for AlertPayload);
  a1[3] = result;
  return result;
}

void sub_1A2CAAB98(uint64_t a1)
{
  sub_1A2D07FC4();
  if (v1 <= 0x3F)
  {
    sub_1A2C55FE8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A2CAAC54()
{
  result = qword_1EB0A0748;
  if (!qword_1EB0A0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0748);
  }

  return result;
}

unint64_t sub_1A2CAACAC()
{
  result = qword_1EB09EFA8;
  if (!qword_1EB09EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFA8);
  }

  return result;
}

unint64_t sub_1A2CAAD04()
{
  result = qword_1EB09EFB0;
  if (!qword_1EB09EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFB0);
  }

  return result;
}

unint64_t sub_1A2CAAD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0798, &qword_1A2D0BDD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A0, &qword_1A2D0BDE0);
    v7 = sub_1A2D08994();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A2C6BD18(v9, v5, &qword_1EB0A0798, &qword_1A2D0BDD8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1A2C64868(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for BufferedAlert(0);
      result = sub_1A2CAB604(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for BufferedAlert);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1A2CAAF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0780, &qword_1A2D0BDC0);
    v3 = sub_1A2D08994();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2C6BD18(v4, &v13, &qword_1EB0A19B0, &qword_1A2D0BDC8);
      v5 = v13;
      v6 = v14;
      result = sub_1A2C64868(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A2CAB5F4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1A2CAB070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0750, &qword_1A2D0BDA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0758, &qword_1A2D0D140);
    v7 = sub_1A2D08994();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A2C6BD18(v9, v5, &qword_1EB0A0750, &qword_1A2D0BDA0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1A2C64868(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ActivityDescriptorContentState(0);
      result = sub_1A2CAB604(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ActivityDescriptorContentState);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1A2CAB258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1B90, &qword_1A2D0BD98);
    v3 = sub_1A2D08994();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A2C64868(v5, v6);
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

uint64_t sub_1A2CAB354(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2D196C0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D196E0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E756F73 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D19700 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A2D19720 == a2)
  {

    return 7;
  }

  else
  {
    v5 = sub_1A2D08B34();

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

_OWORD *sub_1A2CAB5F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1A2CAB604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2CAB68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7364973 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CAB714(uint64_t a1)
{
  v2 = sub_1A2CAB938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CAB750(uint64_t a1)
{
  v2 = sub_1A2CAB938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityQoSMap.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07C8, &qword_1A2D0BE40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CAB938();

  sub_1A2D08C74();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07D8, &qword_1A2D0BE48);
  sub_1A2CABB98(&qword_1EB0A07E0, sub_1A2CAB98C, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A2CAB938()
{
  result = qword_1EB0A07D0;
  if (!qword_1EB0A07D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A07D0);
  }

  return result;
}

unint64_t sub_1A2CAB98C()
{
  result = qword_1EB0A07E8;
  if (!qword_1EB0A07E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A07E8);
  }

  return result;
}

uint64_t ActivityQoSMap.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07F0, &qword_1A2D0BE50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CAB938();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07D8, &qword_1A2D0BE48);
    sub_1A2CABB98(&qword_1EB0A07F8, sub_1A2CABC1C, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1A2D08A54();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CABB98(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A07D8, &qword_1A2D0BE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2CABC1C()
{
  result = qword_1EB0A0800;
  if (!qword_1EB0A0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0800);
  }

  return result;
}

unint64_t sub_1A2CABCA0(void *a1)
{
  a1[1] = sub_1A2CABCD8();
  a1[2] = sub_1A2CABD2C();
  result = sub_1A2CABD80();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CABCD8()
{
  result = qword_1EB0A0AB0;
  if (!qword_1EB0A0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0AB0);
  }

  return result;
}

unint64_t sub_1A2CABD2C()
{
  result = qword_1EB0A0808;
  if (!qword_1EB0A0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0808);
  }

  return result;
}

unint64_t sub_1A2CABD80()
{
  result = qword_1EB0A0810;
  if (!qword_1EB0A0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0810);
  }

  return result;
}

uint64_t sub_1A2CABDD4(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CABD2C();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

uint64_t sub_1A2CABE9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1A2CABEE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A2CABF44()
{
  result = qword_1EB0A0818;
  if (!qword_1EB0A0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0818);
  }

  return result;
}

unint64_t sub_1A2CABF9C()
{
  result = qword_1EB0A0820;
  if (!qword_1EB0A0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0820);
  }

  return result;
}

unint64_t sub_1A2CABFF4()
{
  result = qword_1EB0A0828;
  if (!qword_1EB0A0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0828);
  }

  return result;
}

uint64_t BasicTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0830, &qword_1A2D0C060);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t BasicTimer.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0830, &qword_1A2D0C060);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1A2CAC0EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + 24);

  os_unfair_lock_lock(v9 + 4);
  sub_1A2CAC174(a1, a2, a3, a4);
  os_unfair_lock_unlock(v9 + 4);
}

uint64_t sub_1A2CAC174(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v52 = a3;
  v47 = a2;
  v43 = a1;
  v7 = sub_1A2D082D4();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1A2D08314();
  v51 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A2D082C4();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v41 - v13);
  v15 = sub_1A2D08334();
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v41 - v19;
  v20 = sub_1A2D08734();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v4 + 24);

  os_unfair_lock_assert_owner(v24 + 4);

  if (*(v5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A2D08764();
    swift_unknownObjectRelease();
  }

  *(v5 + 16) = 0;
  result = swift_unknownObjectRelease();
  v26 = a4 * 1000.0;
  if (COERCE__INT64(fabs(a4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v41 = v5;
  if (v26 >= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFFLL;
  }

  else
  {
    v27 = v26;
  }

  sub_1A2C8C524();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C8C4CC();
  v42 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0840, qword_1A2D0C0A8);
  sub_1A2C8C468();
  sub_1A2D08804();
  v28 = sub_1A2D08744();
  (*(v21 + 8))(v23, v20);
  sub_1A2D08324();
  *v14 = v27;
  v29 = v45;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E7F38], v45);
  v30 = v46;
  MEMORY[0x1A58E4010](v17, v14);
  v31 = *(v10 + 8);
  v31(v14, v29);
  v32 = v49;
  v48 = *(v48 + 8);
  (v48)(v17, v49);
  ObjectType = swift_getObjectType();
  sub_1A2C8C570(v14);
  v34 = v44;
  sub_1A2C8C5E4(v44);
  MEMORY[0x1A58E4450](v30, v14, v34, ObjectType);
  v31(v34, v29);
  v31(v14, v29);
  v35 = swift_allocObject();
  v36 = v41;
  v37 = v47;
  v35[2] = v41;
  v35[3] = v37;
  v35[4] = v52;
  aBlock[4] = sub_1A2CAC95C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_2;
  v38 = _Block_copy(aBlock);

  v39 = v50;
  sub_1A2C8C66C(ObjectType);
  v40 = v53;
  sub_1A2C8C670();
  sub_1A2D08754();
  _Block_release(v38);
  (*(v55 + 8))(v40, v42);
  (*(v51 + 8))(v39, v54);

  *(v36 + 16) = v28;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1A2D08774();
  swift_unknownObjectRelease_n();
  return (v48)(v30, v32);
}

uint64_t sub_1A2CAC81C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 24);

  os_unfair_lock_lock(v3 + 4);
  sub_1A2C874D8();
  os_unfair_lock_unlock(v3 + 4);

  return a2(v4);
}

uint64_t BasicTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t BasicTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1A2CAC968()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1EB09EF08);
  __swift_project_value_buffer(v0, qword_1EB09EF08);
  return sub_1A2D08004();
}

uint64_t static StateCaptureServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09EF00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09EF08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CACA78@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB09EF00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1EB09EF08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *ActivityPresentationOptions.platterTintColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

double ActivityPresentationOptions.init(destinations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&result = 65793;
  *(a2 + 8) = 65793;
  *(a2 + 12) = 0;
  *(a2 + 14) = 3;
  *(a2 + 16) = 0;
  *a2 = a1;
  return result;
}

uint64_t ActivityPresentationOptions.ActivityPresentationDestination.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x657263736B636F6CLL;
  v3 = 0x657263536C6C7566;
  v4 = 0x746E6569626D61;
  if (v1 != 4)
  {
    v4 = 0x79616C50726163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72656E6E6162;
  if (v1 != 1)
  {
    v5 = 0x70416D6574737973;
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

uint64_t sub_1A2CACE34(unsigned __int8 a1)
{
  sub_1A2D08C14();
  sub_1A2D08484();

  return sub_1A2D08C54();
}

uint64_t sub_1A2CACF44(uint64_t a1)
{
  sub_1A2D08484();
}

void ActivityPresentationOptions.acActivityPresentationOptions.getter()
{
  v2 = *v0;
  v3 = v0[2];
  sub_1A2C569A0(0, &qword_1ED7088D0, off_1E76B6510);
  sub_1A2C66F58(&v2, v1);
  sub_1A2C81D68(v0);
}

unint64_t sub_1A2CAD0B8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74616E6974736564;
    v6 = 0xD000000000000026;
    if (a1 != 2)
    {
      v6 = 0xD00000000000002BLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000022;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000017;
    if (a1 != 7)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A2CAD1F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A2CAD468(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A2CAD224(uint64_t a1)
{
  v2 = sub_1A2C6B53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CAD264()
{
  result = qword_1EB0A0880;
  if (!qword_1EB0A0880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0870, &qword_1A2D0C168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0880);
  }

  return result;
}

uint64_t sub_1A2CAD2C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A2CAD310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A2CAD364()
{
  result = qword_1EB0A0888;
  if (!qword_1EB0A0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0888);
  }

  return result;
}

unint64_t sub_1A2CAD3BC()
{
  result = qword_1ED7096E8;
  if (!qword_1ED7096E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7096E8);
  }

  return result;
}

unint64_t sub_1A2CAD414()
{
  result = qword_1ED7096F0;
  if (!qword_1ED7096F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7096F0);
  }

  return result;
}

uint64_t sub_1A2CAD468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A2D19930 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001A2D19960 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001A2D19990 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D199C0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A2D199E0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A2D19A00 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A2D19A20 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A2D19A40 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t ActivityStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CAD7D4()
{
  result = qword_1EB0A0890;
  if (!qword_1EB0A0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0890);
  }

  return result;
}

uint64_t ActivityDescriptorState.init(descriptor:state:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1A2CAD874(a1, a3);
  result = type metadata accessor for ActivityDescriptorState(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1A2CAD874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static ActivityDescriptorState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((_s11ActivityKit0A10DescriptorV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActivityDescriptorState(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1A2CAD950(uint64_t a1)
{
  result = type metadata accessor for ActivityDescriptor(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2CAD9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CADA5C(uint64_t a1)
{
  v2 = sub_1A2C62540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CADA98(uint64_t a1)
{
  v2 = sub_1A2C62540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CADAD4()
{
  result = qword_1EB09EFE0;
  if (!qword_1EB09EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EFE0);
  }

  return result;
}

unint64_t sub_1A2CADB28(void *a1)
{
  a1[1] = sub_1A2C62624();
  a1[2] = sub_1A2CADB60();
  result = sub_1A2CADBB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CADB60()
{
  result = qword_1EB09F258;
  if (!qword_1EB09F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F258);
  }

  return result;
}

unint64_t sub_1A2CADBB4()
{
  result = qword_1EB09F250;
  if (!qword_1EB09F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F250);
  }

  return result;
}

uint64_t sub_1A2CADC08(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CADB60();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

unint64_t sub_1A2CADCE4()
{
  result = qword_1EB0A08B0;
  if (!qword_1EB0A08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08B0);
  }

  return result;
}

unint64_t ActivityError.errorCode.getter()
{
  v1 = *(v0 + 8);
  if (v1 >= 3)
  {
    return 1004;
  }

  else
  {
    return v1 + 1001;
  }
}

unint64_t ActivityError.failureReason.getter()
{
  if (v0[1] < 3uLL)
  {
    return 0;
  }

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[7];
  v5 = v0[8];
  sub_1A2D08864();

  v6 = sub_1A2D08474();
  MEMORY[0x1A58E4150](v6);

  v7 = 0xE600000000000000;
  MEMORY[0x1A58E4150](0x206D6F726620, 0xE600000000000000);
  if (v3)
  {

    v7 = v3;
  }

  else
  {
    v2 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x1A58E4150](v2, v7);

  MEMORY[0x1A58E4150](544108320, 0xE400000000000000);
  MEMORY[0x1A58E4150](v4, v5);
  return 0xD000000000000016;
}

unint64_t ActivityError.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  v3 = 0xD000000000000020;
  if (v1 == 1)
  {
    v3 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000017;
  }
}

unint64_t sub_1A2CADF30()
{
  v1 = *(v0 + 8);
  if (v1 >= 3)
  {
    return 1004;
  }

  else
  {
    return v1 + 1001;
  }
}

unint64_t sub_1A2CADF4C()
{
  v1 = *(v0 + 8);
  v2 = 0xD00000000000001BLL;
  v3 = 0xD000000000000020;
  if (v1 == 1)
  {
    v3 = 0xD000000000000021;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1A2CADFC4(uint64_t a1)
{
  v2 = sub_1A2CAE15C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A2CAE000(uint64_t a1)
{
  v2 = sub_1A2CAE15C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A2CAE060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 72))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2CAE0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_1A2CAE118(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A2CAE15C()
{
  result = qword_1EB09F008;
  if (!qword_1EB09F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F008);
  }

  return result;
}

unint64_t MockPushError.errorDescription.getter()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000043;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t MockPushError.description.getter()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000043;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t MockPushError.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CAE364()
{
  result = qword_1EB0A08B8;
  if (!qword_1EB0A08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08B8);
  }

  return result;
}

unint64_t sub_1A2CAE3BC()
{
  result = qword_1EB0A08C0;
  if (!qword_1EB0A08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08C0);
  }

  return result;
}

unint64_t sub_1A2CAE410()
{
  v1 = 0xD000000000000024;
  v2 = *v0;
  v3 = 0xD000000000000043;
  v4 = 0xD000000000000032;
  if (v2 != 3)
  {
    v4 = 0xD00000000000002ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A2CAE4B0()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED708BA0);
  __swift_project_value_buffer(v0, qword_1ED708BA0);
  return sub_1A2D08084();
}

uint64_t Watchdog.init()()
{
  *(v0 + 16) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_1A2CAE580(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(*(a1 + 24) + 16);

  os_unfair_lock_lock(v4);
  if (*(a1 + 16))
  {
    *(a1 + 32) = 1;
    sub_1A2C8EB74();
    os_unfair_lock_unlock(v4);

    return a2(a1);
  }

  else
  {
    os_unfair_lock_unlock(v4);
  }
}

uint64_t Watchdog.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A2CAE6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001CLL && 0x80000001A2D19CA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2CAE738(uint64_t a1)
{
  v2 = sub_1A2C8B964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CAE774(uint64_t a1)
{
  v2 = sub_1A2C8B964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CAE7B0(void *a1)
{
  a1[1] = sub_1A2C951D0();
  a1[2] = sub_1A2CAE7E8();
  result = sub_1A2CAE83C();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CAE7E8()
{
  result = qword_1EB09EDC8;
  if (!qword_1EB09EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDC8);
  }

  return result;
}

unint64_t sub_1A2CAE83C()
{
  result = qword_1EB09EDC0;
  if (!qword_1EB09EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EDC0);
  }

  return result;
}

uint64_t sub_1A2CAE890(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CAE7E8();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

unint64_t sub_1A2CAE97C()
{
  result = qword_1EB0A08D8;
  if (!qword_1EB0A08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A08D8);
  }

  return result;
}

unint64_t sub_1A2CAE9D4()
{
  result = qword_1ED708808;
  if (!qword_1ED708808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708808);
  }

  return result;
}

unint64_t sub_1A2CAEA2C()
{
  result = qword_1ED708810;
  if (!qword_1ED708810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708810);
  }

  return result;
}

uint64_t sub_1A2CAEA80()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09EC80);
  __swift_project_value_buffer(v0, qword_1EB09EC80);
  return sub_1A2D08084();
}

id sub_1A2CAEB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB09ECB8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB09ECC8;
  v7 = sub_1A2D08434();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A2C9576C;
  v11[3] = &block_descriptor_4;
  v8 = _Block_copy(v11);

  v9 = [v6 listenForActivityProminenceWithActivityIdentifier:v7 handler:v8];
  _Block_release(v8);

  return v9;
}

void *sub_1A2CAEC30(uint64_t *a1)
{
  if (qword_1EB09ECB8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1A2D080E4();
  result = sub_1A2D08704();
  if (!v1)
  {
    return v3;
  }

  return result;
}

id ActivityProminenceObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityProminenceObservationClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityProminenceObservationClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A2CAEDE8()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_2()) init];
  qword_1EB09ECC8 = result;
  return result;
}

char *sub_1A2CAEE78()
{
  v22 = sub_1A2D086E4();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue;
  v6 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v20[0] = "rominence-observation";
  v20[1] = v6;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C8BAD0(&qword_1ED709E30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v22);
  *&v0[v21] = sub_1A2D08724();
  v7 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_serverStartupToken] = -1;
  v8 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__prominencePublisher;
  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0928, &unk_1A2D0CDC8);
  swift_allocObject();
  *&v0[v8] = sub_1A2D081B4();
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_prominentActivityIdentifiers] = v9;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_predicates] = v9;
  v10 = *&v0[v7];
  *&v0[v7] = 0;

  v11 = _s11ActivityKit9SingletonCMa_2();
  v24.receiver = v0;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2CB0650;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_56_0;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

void sub_1A2CAF300(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CAF5F8;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41_0;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CAF604;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44_0;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CAF610;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_47_1;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CAF61C(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC70 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09EC80);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CAF70C()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CB05EC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_29_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC70 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09EC80);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CAF904(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2CAFDBC();
  }
}

void *sub_1A2CAF958(uint64_t *a1)
{
  v2 = v1;
  v47 = *MEMORY[0x1E69E9840];
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v2 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4, v6);
  v11 = v10;
  LOBYTE(v10) = sub_1A2D08364();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_36;
  }

  v12 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_predicates;
  swift_beginAccess();
  v13 = *(v2 + v12);

  v15 = sub_1A2CF6C90(v9, v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    swift_beginAccess();
    sub_1A2CF6E0C(v15, &v46);
    swift_endAccess();

    result = sub_1A2C897FC();
    if (result)
    {
      v19 = result;
      v20 = *(v2 + v12);
      v21 = *(v20 + 16);

      if (v21)
      {
        v22 = 0;
        v23 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v22 >= *(v20 + 16))
          {
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
            __break(1u);
          }

          v24 = *(v20 + 8 * v22 + 32);
          if (!v24)
          {

            v23 = 0;
            goto LABEL_26;
          }

          v25 = *(v24 + 16);
          v26 = *(v23 + 2);
          v27 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_32;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v27 <= *(v23 + 3) >> 1)
          {
            if (!*(v24 + 16))
            {
              goto LABEL_6;
            }
          }

          else
          {
            if (v26 <= v27)
            {
              v29 = v26 + v25;
            }

            else
            {
              v29 = v26;
            }

            v23 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v29, 1, v23);
            if (!*(v24 + 16))
            {
LABEL_6:

              if (v25)
              {
                goto LABEL_33;
              }

              goto LABEL_7;
            }
          }

          if ((*(v23 + 3) >> 1) - *(v23 + 2) < v25)
          {
            goto LABEL_34;
          }

          swift_arrayInitWithCopy();

          if (v25)
          {
            v30 = *(v23 + 2);
            v31 = __OFADD__(v30, v25);
            v32 = v30 + v25;
            if (v31)
            {
              goto LABEL_35;
            }

            *(v23 + 2) = v32;
          }

LABEL_7:
          if (v21 == ++v22)
          {
            goto LABEL_24;
          }
        }
      }

      v23 = MEMORY[0x1E69E7CC0];
LABEL_24:

LABEL_26:
      v45[0] = v23;
      sub_1A2D07EB4();
      swift_allocObject();
      sub_1A2D07EA4();
      sub_1A2C8A218();
      v33 = sub_1A2D07E94();
      v35 = v34;

      v36 = sub_1A2D07F24();
      sub_1A2C55840(v33, v35);

      v37 = sub_1A2D07F44();
      v39 = v38;

      v40 = sub_1A2D07F24();
      v45[0] = 0;
      LOBYTE(v33) = [v19 subscribeToActivityProminenceMatchingPredicate:v40 error:v45];

      if (v33)
      {
        v41 = v45[0];
        sub_1A2C55840(v37, v39);
      }

      else
      {
        v42 = v45[0];
        v43 = sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v37, v39);
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_1A2CAFDBC()
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_35;
  }

  result = sub_1A2C897FC();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC11ActivityKitP33_53EEA475F928A92791709C064B1A8B959Singleton__queue_predicates;
    swift_beginAccess();
    v11 = *(v0 + v10);
    v12 = *(v11 + 16);

    if (v12)
    {
      v13 = 0;
      v14 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v13 >= *(v11 + 16))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
        }

        v15 = *(v11 + 8 * v13 + 32);
        if (!v15)
        {

          v14 = 0;
          goto LABEL_25;
        }

        v16 = *(v15 + 16);
        v17 = *(v14 + 2);
        v18 = v17 + v16;
        if (__OFADD__(v17, v16))
        {
          goto LABEL_31;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
        {
          if (!*(v15 + 16))
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v17 <= v18)
          {
            v20 = v17 + v16;
          }

          else
          {
            v20 = v17;
          }

          v14 = sub_1A2C8A10C(isUniquelyReferenced_nonNull_native, v20, 1, v14);
          if (!*(v15 + 16))
          {
LABEL_5:

            if (v16)
            {
              goto LABEL_32;
            }

            goto LABEL_6;
          }
        }

        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v16)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v21 = *(v14 + 2);
          v22 = __OFADD__(v21, v16);
          v23 = v21 + v16;
          if (v22)
          {
            goto LABEL_34;
          }

          *(v14 + 2) = v23;
        }

LABEL_6:
        if (v12 == ++v13)
        {
          goto LABEL_23;
        }
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_23:

LABEL_25:
    v36 = v14;
    sub_1A2D07EB4();
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2C8A218();
    v24 = sub_1A2D07E94();
    v26 = v25;

    v27 = sub_1A2D07F24();
    sub_1A2C55840(v24, v26);

    v28 = sub_1A2D07F44();
    v30 = v29;

    v31 = sub_1A2D07F24();
    v36 = 0;
    LOBYTE(v24) = [v9 subscribeToActivityProminenceMatchingPredicate:v31 error:&v36];

    if (v24)
    {
      v32 = v36;
      sub_1A2C55840(v28, v30);
    }

    else
    {
      v33 = v36;
      v34 = sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v28, v30);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A2CB01C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A2CB027C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2D0AD20;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  sub_1A2D080E4();
  swift_bridgeObjectRetain_n();

  sub_1A2D08704();

  v13 = type metadata accessor for CancellableAssertion();
  v14 = objc_allocWithZone(v13);
  swift_allocObject();

  *&v14[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  result = sub_1A2C8BAD0(qword_1EB09ED00, type metadata accessor for CancellableAssertion, &protocol conformance descriptor for CancellableAssertion);
  a6[3] = v13;
  a6[4] = result;
  *a6 = v15;
  return result;
}

void sub_1A2CB056C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    sub_1A2CAF958(&v6);
  }
}

unint64_t sub_1A2CB05F4()
{
  result = qword_1EB09ED60;
  if (!qword_1EB09ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED60);
  }

  return result;
}

uint64_t sub_1A2CB06C0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {

    v1 = sub_1A2CA7958();

    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t (*sub_1A2CB074C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A2CB06C0();
  return sub_1A2CB0794;
}

uint64_t sub_1A2CB07A4()
{
  v1 = *(v0 + 80);
  v2 = *(v1[2] + 16);

  os_unfair_lock_lock(v2);
  v3 = v1[10];
  sub_1A2CB0824(v3, v1[11]);
  os_unfair_lock_unlock(v2);

  return v3;
}

uint64_t sub_1A2CB0824(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A2C5E63C(result, a2);
  }

  return result;
}

uint64_t static ActivityManager.shared.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A2CB08E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0940, &unk_1A2D0D280);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AE0, &qword_1A2D15370);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = *(v0 + 88);
  v10 = *&v9[OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton];
  v11 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
  swift_beginAccess();
  v12 = *(v10 + v11);
  v13 = MEMORY[0x1E69E7CD0];
  if (v12)
  {
    v13 = v12;
  }

  v18 = v13;
  v17 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AF0, qword_1A2D0D290);
  sub_1A2D081D4();
  v18 = *(v10 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2C56A78(&unk_1EB09EB48, &qword_1EB0A0940, &unk_1A2D0D280, MEMORY[0x1E695C008]);
  sub_1A2C56A78(&qword_1EB09EB70, &qword_1EB0A0B00, &qword_1A2D0CDF0, MEMORY[0x1E695BF88]);
  sub_1A2D08244();
  (*(v2 + 8))(v4, v1);
  sub_1A2C56A78(&qword_1EB09EBE0, &qword_1EB0A0AE0, &qword_1A2D15370, MEMORY[0x1E695BDC0]);
  v14 = sub_1A2D081F4();
  (*(v6 + 8))(v8, v5);

  return v14;
}

uint64_t sub_1A2CB0BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A2C53CD8(v3 + 32, v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v9 + 8))(a1, a2, v8, v9);
  if (!v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  v10 = type metadata accessor for ActivityDescriptor(0);
  return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_1A2CB0CCC(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 16))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0D84(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 24))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0E3C(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 48))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0EF4(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 56))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB0FAC(uint64_t a1)
{
  v9 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1A2C53CD8(v1 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v9;
  v11 = v3;
  v7 = (*(v5 + 64))(v10, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

uint64_t sub_1A2CB1064(uint64_t a1, uint64_t a2)
{
  sub_1A2C53CD8(v2 + 32, v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v7 = (*(v6 + 32))(a1, a2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_1A2CB1104(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1A2C53CD8(v3 + 32, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = v6;
  v9 = (*(v8 + 40))(a1, a2, &v14, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t ActivityManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return v0;
}

uint64_t ActivityManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t ActivityManager.mockPush(token:channelID:processIdentifier:environmentName:payload:pushPriority:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  queue = *(v12 + 96);
  v19 = swift_allocObject();
  v19[2] = v12;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  v19[8] = a6;
  v19[9] = a7;
  v19[10] = a8;
  v19[11] = a9;
  v19[12] = a10;
  v19[13] = a11;
  v19[14] = a12;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1A2CB1880;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1A2C90938;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_23;
  v21 = _Block_copy(aBlock);

  sub_1A2CB0824(a1, a2);

  dispatch_sync(queue, v21);
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB1464(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v49 = a8;
  v50 = a4;
  v51 = a2;
  v18 = sub_1A2D08344();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a1 + 96);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1A2D08364();
  v26 = *(v19 + 8);
  v25 = (v19 + 8);
  v26(v22, v18);
  if (v23)
  {
    v27 = *(a1 + 24);
    v28 = qword_1ED708A58;
    v25 = v27;
    if (v28 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v29 = qword_1ED712970;
  swift_unknownObjectWeakInit();
  type metadata accessor for Watchdog();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  type metadata accessor for UnfairLock();
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *(v31 + 16) = v32;
  v32->_os_unfair_lock_opaque = 0;
  *(v30 + 24) = v31;
  *(v30 + 32) = 0;

  os_unfair_lock_lock(v32);
  sub_1A2C8BCE8(v29, sub_1A2CA1640, 0, 10.0);
  os_unfair_lock_unlock(v32);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    v45 = a3;
    v46 = a13;
    v48 = v25;
    v43 = a12;
    v44 = a5;
    v47 = *(Strong + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
    v35 = swift_allocObject();
    v35[2] = v51;
    v35[3] = a3;
    v35[4] = v34;
    v35[5] = a6;
    v36 = v49;
    v35[6] = a7;
    v35[7] = v36;
    v35[8] = a9;
    v35[9] = a10;
    v37 = v43;
    v38 = v44;
    v35[10] = a11;
    v35[11] = v37;
    v39 = v50;
    v35[12] = a13;
    v35[13] = v39;
    v35[14] = v38;
    v35[15] = v30;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1A2CB1CC4;
    *(v40 + 24) = v35;
    aBlock[4] = sub_1A2C90938;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A2C56C44;
    aBlock[3] = &block_descriptor_53;
    v25 = _Block_copy(aBlock);
    sub_1A2CB0824(v51, v45);

    v41 = v34;

    dispatch_sync(v47, v25);
    _Block_release(v25);

    MEMORY[0x1A58E5250](v53);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if ((v38 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return MEMORY[0x1A58E5250](v53);
}

uint64_t ActivityPresentationPredicate.init(activityIdentifiers:presenterBundleIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *ActivityPresentationPredicate.filter(presentations:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = v1[1];
  v66 = v3;
  if (!(v4 | v3))
  {

    return v2;
  }

  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v56 = MEMORY[0x1E69E7CC8];
  v57 = v9;
  v65 = v2;
  v58 = v2 + 64;
  v59 = v4;
  while (v8)
  {
LABEL_13:
    while (1)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(v2 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v2 + 56) + 24 * v14 + 16);
      v64 = *v15;
      if (v4)
      {
        break;
      }

      if (!v66)
      {
        goto LABEL_30;
      }

LABEL_18:
      v61 = v17;
      v62 = v11;
      v63 = v8;
      v20 = *(v18 + 16);
      v60 = v18;
      if (v20)
      {
        v21 = (v18 + 49);
        v22 = MEMORY[0x1E69E7CC0];
        do
        {
          v23 = *(v21 - 17);
          v24 = *(v21 - 9);
          v25 = *(v21 - 1);
          v26 = *v21;
          v67 = v23;
          v68 = v24;
          MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          v55 = &v67;
          swift_bridgeObjectRetain_n();
          v27 = sub_1A2C956A8(sub_1A2CB464C, v54, v66);

          if (v27)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1A2CB2B4C(0, *(v22 + 16) + 1, 1, v22);
              v22 = isUniquelyReferenced_nonNull_native;
            }

            v29 = *(v22 + 16);
            v28 = *(v22 + 24);
            if (v29 >= v28 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1A2CB2B4C((v28 > 1), v29 + 1, 1, v22);
              v22 = isUniquelyReferenced_nonNull_native;
            }

            *(v22 + 16) = v29 + 1;
            v30 = v22 + 24 * v29;
            *(v30 + 32) = v23;
            *(v30 + 40) = v24;
            *(v30 + 48) = v25;
            *(v30 + 49) = v26;
          }

          else
          {
          }

          v21 += 24;
          --v20;
        }

        while (v20);
      }

      else
      {
        v22 = MEMORY[0x1E69E7CC0];
      }

      v18 = v22;
      v2 = v65;
      v5 = v58;
      v4 = v59;
      v9 = v57;
      v11 = v62;
      v8 = v63;
      v17 = v61;
LABEL_30:
      if (!*(v18 + 16))
      {

        goto LABEL_8;
      }

      v63 = v8;

      v31 = v56;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33 = v17;
      v34 = v32;
      v67 = v31;
      v35 = v33;
      v10 = sub_1A2C64868(v64, v33);
      v37 = v31[2];
      v38 = (v36 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        goto LABEL_47;
      }

      v41 = v36;
      if (v31[3] >= v40)
      {
        if ((v34 & 1) == 0)
        {
          v52 = v10;
          sub_1A2CB3AD4(&qword_1EB0A0768, &qword_1A2D0BDB0);
          v10 = v52;
        }

        v42 = v35;
        if (v41)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1A2C7A07C(v40, v34, &qword_1EB0A0768, &qword_1A2D0BDB0);
        v42 = v35;
        v10 = sub_1A2C64868(v64, v35);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_49;
        }

        if (v41)
        {
LABEL_36:
          v44 = v10;

          v56 = v67;
          v45 = (v67[7] + 24 * v44);
          *v45 = v64;
          v45[1] = v42;
          v45[2] = v18;

          goto LABEL_42;
        }
      }

      v46 = v67;
      v67[(v10 >> 6) + 8] |= 1 << v10;
      v47 = (v46[6] + 16 * v10);
      v48 = v64;
      *v47 = v64;
      v47[1] = v42;
      v49 = (v46[7] + 24 * v10);
      *v49 = v48;
      v49[1] = v42;
      v49[2] = v18;
      v50 = v46[2];
      v39 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v39)
      {
        goto LABEL_48;
      }

      v56 = v46;
      v46[2] = v51;
LABEL_42:
      v8 = v63;
      v4 = v59;
      if (!v63)
      {
        goto LABEL_9;
      }
    }

    v67 = v16;
    v68 = v17;
    MEMORY[0x1EEE9AC00](v10);
    v55 = &v67;

    isUniquelyReferenced_nonNull_native = sub_1A2C956A8(sub_1A2CB4A9C, v54, v4);
    if (isUniquelyReferenced_nonNull_native)
    {
      v2 = v65;
      if (!v66)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    v2 = v65;
LABEL_8:
  }

LABEL_9:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v56;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1A2D08B84();
  __break(1u);
  return result;
}

double static ActivityPresentationPredicate.all.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EB09F6F8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EB0A0950;
  *a1 = qword_1EB0A0948;
  a1[1] = v1;

  return result;
}

Swift::Bool __swiftcall ActivityPresentationPredicate.matches(activityIdentifier:presenterBundleIdentifier:)(Swift::String activityIdentifier, Swift::String presenterBundleIdentifier)
{
  countAndFlagsBits = presenterBundleIdentifier._countAndFlagsBits;
  if (*v2)
  {
    object = presenterBundleIdentifier._object;
    v5 = v2[1];
    v12 = activityIdentifier;
    MEMORY[0x1EEE9AC00](activityIdentifier._countAndFlagsBits);
    v11 = &v12;
    v7 = sub_1A2C956A8(sub_1A2CB4A9C, v10, v6);
    v8 = 0;
    if ((v7 & 1) != 0 && v5)
    {
      v12._countAndFlagsBits = countAndFlagsBits;
      v12._object = object;
      MEMORY[0x1EEE9AC00](0);
      v11 = &v12;
      v8 = sub_1A2C956A8(sub_1A2CB4A9C, v10, v5);
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_1A2CB2380()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A2CB23BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A2D19F50 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A2D19F70 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

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
  return result;
}

uint64_t sub_1A2CB24A0(uint64_t a1)
{
  v2 = sub_1A2CB46C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CB24DC(uint64_t a1)
{
  v2 = sub_1A2CB46C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationPredicate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0958, &unk_1A2D0CE70);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CB46C0();

  sub_1A2D08C74();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2C8A470(&unk_1ED708820, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1A2D08AA4();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1A2D08AA4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ActivityPresentationPredicate.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0960, &qword_1A2D0CE80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CB46C0();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  v14 = 0;
  sub_1A2C8A470(&qword_1ED709510, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1A2D08A14();
  v9 = v15;
  v14 = 1;
  sub_1A2D08A14();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CB2970(uint64_t a1)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA5AA8();
  v1 = sub_1A2D07E94();
  v3 = v2;
  v4 = sub_1A2D07F24();
  sub_1A2C55840(v1, v3);

  return v4;
}

char *sub_1A2CB2A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0980, &qword_1A2D0D110);
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

char *sub_1A2CB2B4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09C8, &unk_1A2D0D180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A2CB2C90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09B0, &unk_1A2D0D160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A2CB2E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07B8, &qword_1A2D0BE30);
  v33 = v4;
  result = sub_1A2D08974();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A2CB30BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0760, &qword_1A2D0BDA8);
  v33 = v4;
  result = sub_1A2D08974();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1A2C5E63C(v34, *(&v34 + 1));
      }

      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A2CB33F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0780, &qword_1A2D0BDC0);
  v33 = v4;
  result = sub_1A2D08974();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1A2CAB5F4(v24, v34);
      }

      else
      {
        sub_1A2C57B10(v24, v34);
      }

      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A2CAB5F4(v34, (*(v7 + 56) + 32 * v15));
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1A2CB36F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09D0, &qword_1A2D0D198);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1A2CB3880(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v41 = a4;
  v7 = v4;
  v8 = a1(0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_1A2D08964();
  v12 = v11;
  if (*(v10 + 16))
  {
    v38 = v7;
    v13 = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 64 + 8 * v15)
    {
      memmove(v13, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v42 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = v10;
        v31 = *v29;
        v32 = v29[1];
        v33 = v39;
        v34 = *(v40 + 72) * v26;
        v35 = v41;
        sub_1A2C68F00(v28 + v34, v39, v41);
        v36 = v42;
        v37 = (*(v42 + 48) + v27);
        *v37 = v31;
        v37[1] = v32;
        v10 = v30;
        sub_1A2C7C5F8(v33, *(v36 + 56) + v34, v35);

        v21 = v43;
      }

      while (v43);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v38;
        v12 = v42;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v43 = (v25 - 1) & v25;
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
}

void sub_1A2CB3AD4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A2D08964();
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
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 24;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = (*(v6 + 48) + v20);
        *v28 = v23;
        v28[1] = v22;
        v29 = (*(v6 + 56) + v19);
        *v29 = v25;
        v29[1] = v26;
        v29[2] = v27;
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

void *sub_1A2CB3C5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07B8, &qword_1A2D0BE30);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
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

void *sub_1A2CB3DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0760, &qword_1A2D0BDA8);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1A2C5E63C(v22, *(&v22 + 1));
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

void sub_1A2CB3F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A8, &unk_1A2D0D100);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1A2C53CD8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A2C5E3C4(v25, *(v4 + 56) + v22);
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

id sub_1A2CB4144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A8, &unk_1A2D0D150);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void sub_1A2CB42A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A0, &qword_1A2D0D148);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void sub_1A2CB4450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0780, &qword_1A2D0BDC0);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1A2C57B10(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A2CAB5F4(v25, (*(v4 + 56) + v22));
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