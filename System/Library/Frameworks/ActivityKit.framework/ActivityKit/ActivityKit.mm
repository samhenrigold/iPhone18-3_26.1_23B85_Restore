void sub_1A2C52990(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A2C52A20(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A2C52A20(uint64_t a1)
{
  if (!qword_1ED709BF8)
  {
    sub_1A2D07F94();
    v1 = sub_1A2D087E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED709BF8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11ActivityKit17ProcessDescriptorVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t static Activity.activities.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v49 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - v9;
  v11 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = v38 - v15;
  v51 = type metadata accessor for ActivityDescriptorContentState(0);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v18 = off_1ED709CF8;
  if (qword_1ED7092D8 != -1)
  {
    swift_once();
  }

  v56 = xmmword_1ED708D20;
  v19 = qword_1ED708D30;
  v55 = xmmword_1ED708D00;
  v54 = xmmword_1ED708D10;
  sub_1A2C53CD8(v18 + 32, &v61);
  v20 = v62;
  v21 = v63;
  __swift_project_boxed_opaque_existential_1(&v61, v62);
  v59[0] = v54;
  aBlock = v55;
  v59[1] = v56;
  v60 = v19;
  v22 = (*(v21 + 24))(&aBlock, v20, v21);
  *&v54 = v18;
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v61);
  v24 = *(v1 + 88);
  *&v56 = *(v1 + 80);
  *&v55 = v24;
  v40 = type metadata accessor for Activity(0, v56, v24, v25);
  v26 = sub_1A2D08374();
  v61 = v26;
  v28 = *(v23 + 16);
  if (!v28)
  {

    return v26;
  }

  v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v38[1] = v23;
  v30 = v23 + v29;
  v53 = *(v53 + 72);
  v42 = v59;
  *&v27 = 136446466;
  v39 = v27;
  v50 = v10;
  v41 = v13;
  v52 = v17;
  do
  {
    sub_1A2C7FF28(v30, v17, type metadata accessor for ActivityDescriptorContentState);
    v31 = v57;
    sub_1A2C7FF28(v17, v57, type metadata accessor for ActivityDescriptor);
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);

    ActivityAttributesType.init<A>(from:)(&aBlock);
    if (v33 == aBlock && v32 == *(&aBlock + 1))
    {
    }

    else
    {
      v35 = sub_1A2D08B34();

      if ((v35 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v36 = *(v51 + 28);
    LOBYTE(aBlock) = v17[*(v51 + 20)];
    *&aBlock = sub_1A2C838B4(v57, &v17[v36], &aBlock, v56, v55);
    sub_1A2D08604();
    sub_1A2D085D4();
LABEL_7:
    sub_1A2C69F84(v17, type metadata accessor for ActivityDescriptorContentState);
    sub_1A2C69F84(v57, type metadata accessor for ActivityDescriptor);
    v30 += v53;
    --v28;
  }

  while (v28);

  return v61;
}

uint64_t sub_1A2C537B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = v0 + v3;
  v10 = type metadata accessor for OpaqueActivityPayload(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v30 = v8;
    v11 = sub_1A2D07FC4();
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = v10[5];
    v13 = sub_1A2D07F94();
    v14 = *(v13 - 8);
    v28 = *(v14 + 8);
    v28(v9 + v12, v13);
    sub_1A2C55840(*(v9 + v10[6]), *(v9 + v10[6] + 8));
    v15 = v9 + v10[7];
    sub_1A2C55840(*v15, *(v15 + 8));
    v16 = *(type metadata accessor for OpaqueActivityContent(0) + 20);
    v29 = *(v14 + 48);
    if (!v29(v15 + v16, 1, v13))
    {
      v28(v15 + v16, v13);
    }

    v17 = v9 + v10[8];
    v18 = type metadata accessor for AlertConfiguration(0);
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v26 = v7;
      v19 = sub_1A2D07EF4();
      v27 = *(*(v19 - 8) + 8);
      v27(v17, v19);
      v20 = v19;
      v7 = v26;
      v27(v17 + *(v18 + 20), v20);
      v21 = v17 + *(v18 + 24);
    }

    v22 = v10[9];
    v8 = v30;
    if (!v29(v9 + v22, 1, v13))
    {
      v28(v9 + v22, v13);
    }
  }

  v23 = type metadata accessor for ActivityEndingOptions(0);
  if (!(*(*(v23 - 8) + 48))(v0 + v7, 1, v23))
  {
    v24 = sub_1A2D07F94();
    (*(*(v24 - 8) + 8))(v0 + v7, v24);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t type metadata accessor for ActivityDescriptor(uint64_t a1)
{
  result = qword_1ED70A0D8;
  if (!qword_1ED70A0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A2C53CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ActivityDescriptorContentState(uint64_t a1)
{
  result = qword_1ED709900;
  if (!qword_1ED709900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ActivityOutputClient.descriptorContentStates(matching:)(__int128 *a1)
{
  v3 = v2;
  v5 = type metadata accessor for ActivityDescriptorContentState(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = a1[1];
  v32 = *a1;
  v33 = v12;
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  v34 = *(v1 + 24);
  result = sub_1A2D08704();
  if (v2)
  {
    return v3;
  }

  v17 = v35;
  v31 = *(v35 + 16);
  v25[1] = 0;
  if (!v31)
  {
    v3 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v3;
  }

  v28 = v15;
  v29 = v14;
  v30 = v13;
  v18 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v26 = v8;
  v27 = v6;
  while (v18 < *(v17 + 16))
  {
    v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = *(v6 + 72);
    sub_1A2C7BFE4(v17 + v19 + v20 * v18, v11, type metadata accessor for ActivityDescriptorContentState);
    v35 = v32;
    v36 = v33;
    v37 = v30;
    v38 = v29;
    v39 = v28;
    ActivityPredicate.matches(descriptor:)(v11);
    if (v21)
    {
      sub_1A2C725C0(v11, v8, type metadata accessor for ActivityDescriptorContentState);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A2C7E858(0, *(v3 + 16) + 1, 1);
        v3 = v40;
      }

      v24 = *(v3 + 16);
      v23 = *(v3 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1A2C7E858((v23 > 1), v24 + 1, 1);
        v3 = v40;
      }

      *(v3 + 16) = v24 + 1;
      v8 = v26;
      result = sub_1A2C725C0(v26, v3 + v19 + v24 * v20, type metadata accessor for ActivityDescriptorContentState);
      v6 = v27;
    }

    else
    {
      result = sub_1A2C73F50(v11, type metadata accessor for ActivityDescriptorContentState);
    }

    if (v31 == ++v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1A2C54078(void *a1@<X8>)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ActivityDescriptorContentState(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1A2C54EB4();
  if (v7)
  {
    v8 = v7;
    v59[0] = 0;
    v9 = [v7 activityDescriptorContentStatesWithError_];
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
    sub_1A2C55894();
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
              sub_1A2C7BFE4(v28, v6, type metadata accessor for ActivityDescriptorContentState);
              v30 = *v6;
              v31 = v6[1];

              sub_1A2C73F50(v6, type metadata accessor for ActivityDescriptorContentState);
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
          _os_log_impl(&dword_1A2C51000, v22, v53, "Fetched descriptors for content states: %{public}s", v45, 0xCu);
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

void sub_1A2C545F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v17 - v3);
  v5 = sub_1A2D08344();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1A2D08364();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  sub_1A2C5496C();
  v12 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v12, v1);
  if ((*(v2 + 88))(v4, v1) != *MEMORY[0x1E69CA968])
  {
    (*(v2 + 8))(v4, v1);
    return;
  }

  (*(v2 + 96))(v4, v1);
  v1 = *v4;
  if ([*v4 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();

    sub_1A2C54E38(v17, &qword_1EB0A04E0, &unk_1A2D0AA70);
    return;
  }

  memset(v17, 0, sizeof(v17));
  sub_1A2C54E38(v17, &qword_1EB0A04E0, &unk_1A2D0AA70);
  [v1 activate];
  if (qword_1ED709860 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1ED709870);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D086A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "Activated ActivityOutputClient connection", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }
}

void sub_1A2C5496C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  v8 = sub_1A2D08344();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1A2D08364();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v15 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  swift_beginAccess();
  (*(v2 + 16))(v7, &v0[v15], v1);
  v16 = (*(v2 + 88))(v7, v1);
  if (v16 == *MEMORY[0x1E69CA978])
  {
    (*(v2 + 8))(v7, v1);
    return;
  }

  v17 = v16;
  v18 = *MEMORY[0x1E69CA968];
  (*(v2 + 8))(v7, v1);
  if (v17 != v18)
  {
    v19 = v0;
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C58760();
    v20 = sub_1A2D08784();
    if (v20)
    {
      v21 = v20;
      v28 = v18;
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1A2C5A184;
      *(v23 + 24) = v22;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_87;
      v24 = _Block_copy(aBlock);
      v27[1] = v19;

      [v21 configureConnection_];
      _Block_release(v24);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if ((v24 & 1) == 0)
      {
        *v4 = v21;
        (*(v2 + 104))(v4, v28, v1);
        swift_beginAccess();
        v25 = *(v2 + 40);
        v26 = v21;
        v25(&v19[v15], v4, v1);
        swift_endAccess();
        sub_1A2C5A5A0();

        return;
      }

      goto LABEL_11;
    }

    (*(v2 + 104))(v4, *MEMORY[0x1E69CA970], v1);
    swift_beginAccess();
    (*(v2 + 40))(&v0[v15], v4, v1);
    swift_endAccess();
  }
}

uint64_t sub_1A2C54E38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1A2C54EB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - v3;
  v5 = sub_1A2D08344();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1A2D08364();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v12 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v12, v1);
  v13 = (*(v2 + 88))(v4, v1);
  if (v13 == *MEMORY[0x1E69CA978])
  {
    (*(v2 + 96))(v4, v1);
    return *v4;
  }

  if (v13 != *MEMORY[0x1E69CA968])
  {
    if (v13 != *MEMORY[0x1E69CA970])
    {
      (*(v2 + 8))(v4, v1);
    }

    return 0;
  }

  (*(v2 + 96))(v4, v1);
  v1 = *v4;
  sub_1A2C545F0();
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C0, &qword_1A2D0AA20);
    if (swift_dynamicCast())
    {

      return v19[1];
    }
  }

  else
  {
    sub_1A2C54E38(v22, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1ED709860 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v15 = sub_1A2D08094();
  __swift_project_value_buffer(v15, qword_1ED709870);
  v16 = sub_1A2D08074();
  v17 = sub_1A2D08694();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A2C51000, v16, v17, "ActivityOutputClient: Failed to cast connection to server interface protocol", v18, 2u);
    MEMORY[0x1A58E5180](v18, -1, -1);
  }

  return 0;
}

uint64_t XPCCodableActivityDescriptorContentStates.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EB8, &unk_1A2D172C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C55468();

  sub_1A2D08C74();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
  sub_1A2C554BC(&qword_1EB09EE90, &unk_1EB09F050, &protocol conformance descriptor for ActivityDescriptorContentState, MEMORY[0x1E69E6300]);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A2C55468()
{
  result = qword_1ED7093A8;
  if (!qword_1ED7093A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7093A8);
  }

  return result;
}

uint64_t sub_1A2C554BC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    sub_1A2C60E50(a2, type metadata accessor for ActivityDescriptorContentState, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2C55558(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A2C57914(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A2C57B10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *sub_1A2C55624(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1168, &qword_1A2D0F3A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_WORD *storeEnumTagSinglePayload for ActivityEndingOptions.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityEndingOptions.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  v2 = sub_1A2D07E94();
  v4 = v3;
  v5 = sub_1A2D07F24();
  sub_1A2C55840(v2, v4);

  return v5;
}

uint64_t sub_1A2C55840(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1A2C55894()
{
  result = qword_1ED709390;
  if (!qword_1ED709390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709390);
  }

  return result;
}

uint64_t XPCCodableActivityDescriptorContentStates.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EC0, &qword_1A2D172D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C55468();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    sub_1A2C554BC(&qword_1ED7090C8, qword_1ED7090F0, &protocol conformance descriptor for ActivityDescriptorContentState, MEMORY[0x1E69E6330]);
    sub_1A2D08A54();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *sub_1A2C55B04(uint64_t a1, unint64_t a2)
{
  v3 = sub_1A2C55B50(a1, a2);
  sub_1A2C57A24(&unk_1F1578FC8);
  return v3;
}

void *sub_1A2C55B50(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A2C55624(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A2D088B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A2D084A4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A2C55624(v10, 0);
        result = sub_1A2D08854();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1A2C55C84()
{
  result = qword_1ED709FF8;
  if (!qword_1ED709FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709FF8);
  }

  return result;
}

uint64_t sub_1A2C55CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Activity(255, *(a1 + 16), *(a1 + 24), a4);
  result = sub_1A2D08054();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2C55D58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActivityDescriptor(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1A2C55E60(uint64_t a1)
{
  sub_1A2C55FE8(319);
  if (v1 <= 0x3F)
  {
    sub_1A2C560A0(319, qword_1ED70A078, &type metadata for ActivityContentSource, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A2D07F94();
      if (v3 <= 0x3F)
      {
        sub_1A2C560A0(319, &qword_1ED70A008, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A2C560A0(319, qword_1ED70A010, &type metadata for ActivityProtectionClass, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A2C55FE8(uint64_t a1)
{
  if (!qword_1ED709FF0)
  {
    sub_1A2C5604C();
    v1 = sub_1A2D083C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED709FF0);
    }
  }
}

unint64_t sub_1A2C5604C()
{
  result = qword_1ED70A000;
  if (!qword_1ED70A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED70A000);
  }

  return result;
}

void sub_1A2C560A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A2C56108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A2C56150()
{
  v0 = [objc_allocWithZone(type metadata accessor for ActivityPushTokenClient()) init];
  type metadata accessor for ActivityOutputClient();
  swift_allocObject();
  v1 = ActivityOutputClient.init()();
  v2 = [objc_allocWithZone(type metadata accessor for ActivityInputClient()) init];
  v3 = [objc_allocWithZone(type metadata accessor for ActivityFrequentUpdatesObservationClient()) init];
  v4 = v0;

  v5 = sub_1A2C5CF90(v4, v1, v2, v3);

  off_1ED709CF8 = v5;
}

char *sub_1A2C56268()
{
  v1 = sub_1A2D086E4();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v20 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__pushTokenPublisher;
  v6 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2C5671C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E00, qword_1A2D0E950);
  swift_allocObject();
  *&v0[v5] = sub_1A2D081B4();
  v7 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_serverStartupToken] = -1;
  *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens] = MEMORY[0x1E69E7CC8];
  v19 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue;
  v18[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D082E4();
  aBlock[0] = v6;
  sub_1A2C56A30(&qword_1ED709E30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v21 + 104))(v20, *MEMORY[0x1E69E8090], v22);
  *&v0[v19] = sub_1A2D08724();
  v8 = *&v0[v7];
  *&v0[v7] = 0;

  v9 = type metadata accessor for ActivityPushTokenClient();
  v24.receiver = v0;
  v24.super_class = v9;
  v10 = objc_msgSendSuper2(&v24, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1A2C56BC8;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_53_0;
  v14 = _Block_copy(aBlock);
  v15 = v10;
  v16 = v11;

  dispatch_sync(v16, v14);

  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C566CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A2C5671C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0760, &qword_1A2D0BDA8);
    v3 = sub_1A2D08994();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1A2C5E63C(v7, v8);
      result = sub_1A2C64868(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

uint64_t sub_1A2C56834(uint64_t a1)
{
  result = type metadata accessor for ActivityDescriptor(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OpaqueActivityContent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for OpaqueActivityContent(uint64_t a1)
{
  result = qword_1ED709BE8;
  if (!qword_1ED709BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2C5691C(uint64_t a1)
{
  sub_1A2C52A20(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A2C569A0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1A2C569E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C56A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C56A78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1A2C56C6C()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1A2C56EB0();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection);
  if (!v8)
  {
    return;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();

    sub_1A2C599D8(v13);
    return;
  }

  memset(v13, 0, sizeof(v13));
  sub_1A2C599D8(v13);
  [v1 activate];
  if (qword_1ED7097E8 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = sub_1A2D08094();
  __swift_project_value_buffer(v9, qword_1ED7097F0);
  v10 = sub_1A2D08074();
  v11 = sub_1A2D086A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A2C51000, v10, v11, "Activated ActivityPushTokenClient connection", v12, 2u);
    MEMORY[0x1A58E5180](v12, -1, -1);
  }
}

void sub_1A2C56EB0()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue];
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

  v8 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C5715C();
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
      *(v14 + 16) = sub_1A2C5738C;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_29_2;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2C597A4();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

unint64_t sub_1A2C5715C()
{
  result = qword_1ED709D08;
  if (!qword_1ED709D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709D08);
  }

  return result;
}

uint64_t sub_1A2C571B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D18 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2C57258()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709D20);
  __swift_project_value_buffer(v0, qword_1ED709D20);
  return sub_1A2D08004();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1A2C57338(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1A2C573EC(void *a1, char *a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v21 = sub_1A2C577FC;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C577A8;
  v20 = &block_descriptor_32_0;
  v6 = _Block_copy(&v17);
  v7 = &unk_1F15895A0;

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol:v7 interpreter:v6];
  _Block_release(v6);

  [v5 setClient_];
  v10 = [v8 protocolForProtocol_];
  [v5 setServer_];

  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v21 = sub_1A2C58E74;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_38_2;
  v13 = _Block_copy(&v17);
  v14 = a2;

  [a1 setActivationHandler_];
  _Block_release(v13);
  v21 = sub_1A2CC4998;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_41_3;
  v15 = _Block_copy(&v17);
  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v21 = sub_1A2CC49A4;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_44_2;
  v16 = _Block_copy(&v17);
  [a1 setInvalidationHandler_];
  _Block_release(v16);
}

id sub_1A2C577A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

id sub_1A2C577FC(void *a1)
{
  [a1 selector];
  if (sub_1A2D07FD4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

unint64_t sub_1A2C57914(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A2C55B04(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1A2D088B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1A2C57A24(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A2CCEFF8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A2C57B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1A2C57B6C(uint64_t a1)
{
  sub_1A2C59D1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1A2C57D70(uint64_t a1)
{
  v35 = a1;
  v32 = sub_1A2D086E4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_activityDiffPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01A0, &qword_1A2D0A898);
  swift_allocObject();
  *&v1[v7] = sub_1A2D08144();
  v8 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__activityPublisher;
  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2C59ED4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A02F0, &unk_1A2D0AA60);
  swift_allocObject();
  v10 = sub_1A2D081B4();
  v34 = v1;
  *&v1[v8] = v10;
  v11 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_serverStartupToken] = -1;
  *&v1[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions] = v11;
  v33 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue;
  v31[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v31[5] = "utQueue";
  sub_1A2D082E4();
  aBlock[0] = v9;
  v31[4] = sub_1A2C586F0(&qword_1ED709E30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  v12 = *MEMORY[0x1E69E8090];
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v31[2] = v13;
  v31[0] = v4;
  v15 = v32;
  v14(v4, v12, v32);
  v16 = sub_1A2D08724();
  v17 = v34;
  *&v34[v33] = v16;
  v33 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_calloutQueue;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2D08804();
  v14(v31[0], v12, v15);
  *&v17[v33] = sub_1A2D08724();
  v18 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v20 = *(v19 - 8);
  v21 = v35;
  (*(v20 + 16))(&v17[v18], v35, v19);
  v22 = type metadata accessor for Singleton(0);
  v37.receiver = v17;
  v37.super_class = v22;
  v23 = objc_msgSendSuper2(&v37, sel_init);
  v24 = *&v23[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1A2C5873C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_78;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  dispatch_sync(v29, v27);
  _Block_release(v27);

  (*(v20 + 8))(v21, v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C58354()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C583BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2C583F4(uint64_t a1)
{
  if (!qword_1ED709648)
  {
    type metadata accessor for OpaqueActivityPayload(255);
    sub_1A2C59E7C();
    v1 = sub_1A2D083C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED709648);
    }
  }
}

void sub_1A2C58460(uint64_t a1)
{
  type metadata accessor for ActivityDescriptor(319);
  if (v1 <= 0x3F)
  {
    sub_1A2C583F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A2C584FC(uint64_t a1)
{
  sub_1A2D07FC4();
  if (v1 <= 0x3F)
  {
    sub_1A2D07F94();
    if (v2 <= 0x3F)
    {
      type metadata accessor for OpaqueActivityContent(319);
      if (v3 <= 0x3F)
      {
        sub_1A2C58638(319, &qword_1ED709990, type metadata accessor for AlertConfiguration, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A2C58638(319, &qword_1ED709BF8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A2C58638(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A2C5869C()
{
  result = qword_1ED7098A0;
  if (!qword_1ED7098A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7098A0);
  }

  return result;
}

uint64_t sub_1A2C586F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A2C58760()
{
  result = qword_1ED709D38;
  if (!qword_1ED709D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709D38);
  }

  return result;
}

uint64_t sub_1A2C587B4()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709D50);
  __swift_project_value_buffer(v0, qword_1ED709D50);
  return sub_1A2D08004();
}

void sub_1A2C58800()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1A2C58A64();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection);
  if (!v8)
  {
    return;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();

    sub_1A2C54E38(v13, &qword_1EB0A04E0, &unk_1A2D0AA70);
    return;
  }

  memset(v13, 0, sizeof(v13));
  sub_1A2C54E38(v13, &qword_1EB0A04E0, &unk_1A2D0AA70);
  [v1 activate];
  if (qword_1ED709838 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = sub_1A2D08094();
  __swift_project_value_buffer(v9, qword_1ED709840);
  v10 = sub_1A2D08074();
  v11 = sub_1A2D086A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A2C51000, v10, v11, "Activated ActivityClient connection", v12, 2u);
    MEMORY[0x1A58E5180](v12, -1, -1);
  }
}

void sub_1A2C58A64()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue];
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

  v8 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C58D10();
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
      *(v14 + 16) = sub_1A2C58E84;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_18;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2C5B104();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

unint64_t sub_1A2C58D10()
{
  result = qword_1ED709D70;
  if (!qword_1ED709D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709D70);
  }

  return result;
}

uint64_t sub_1A2C58D64()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709D90);
  __swift_project_value_buffer(v0, qword_1ED709D90);
  return sub_1A2D08004();
}

uint64_t sub_1A2C58DB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1A2C58E8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1A2C58EF4(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v18 = sub_1A2C5CCEC;
  v19 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A2C58E8C;
  v17 = &block_descriptor_21;
  v10 = _Block_copy(&v14);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_1A2CA15EC;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A2C58E8C;
  v17 = &block_descriptor_25;
  v12 = _Block_copy(&v14);

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v18 = sub_1A2CA0630;
  v19 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A2C58E8C;
  v17 = &block_descriptor_28;
  v13 = _Block_copy(&v14);
  [a1 setInvalidationHandler_];
  _Block_release(v13);
}

uint64_t sub_1A2C59218()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1A2C59250(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A2D08344();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1A2D08364();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1ED7097E8 == -1)
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
  v10 = sub_1A2D08094();
  __swift_project_value_buffer(v10, qword_1ED7097F0);
  v11 = sub_1A2D08074();
  v12 = sub_1A2D08674();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1A2C51000, v11, v12, "Push Service: Activated", v13, 2u);
    MEMORY[0x1A58E5180](v13, -1, -1);
  }

  sub_1A2C59424();
}

void sub_1A2C59424()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_8:
    v13 = sub_1A2D08094();
    __swift_project_value_buffer(v13, qword_1ED7097F0);
    v14 = v1;
    v15 = sub_1A2D08074();
    v16 = sub_1A2D08684();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136446210;
      v23[2] = v1;
      v19 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
      v20 = sub_1A2D08454();
      v22 = sub_1A2C55558(v20, v21, v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1A2C51000, v15, v16, "Could not register for push tokens: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1A58E5180](v18, -1, -1);
      MEMORY[0x1A58E5180](v17, -1, -1);
    }

    else
    {
    }

    return;
  }

  v8 = sub_1A2C5ADB4();
  if (!v8)
  {
    return;
  }

  v24[0] = 0;
  v9 = [v8 registerForPushTokensWithError_];
  swift_unknownObjectRelease();
  v10 = v24[0];
  if (!v9)
  {
    v23[1] = v24[0];
    v12 = v24[0];
    v1 = sub_1A2D07ED4();

    swift_willThrow();
    if (qword_1ED7097E8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v11 = v10;
}

void sub_1A2C597A4()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CC4CEC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_20;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED7097E8 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED7097F0);
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

uint64_t sub_1A2C5999C()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C599D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E0, &unk_1A2D0AA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C59A40()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED7097F0);
  __swift_project_value_buffer(v0, qword_1ED7097F0);
  return sub_1A2D08084();
}

uint64_t ActivityOutputClient.init()()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = 2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  if (qword_1ED709888 != -1)
  {
    swift_once();
  }

  v3 = off_1ED709898;
  os_unfair_lock_lock(off_1ED709898 + 6);
  v4 = *(v3 + 2) + 1;
  *(v3 + 2) = v4;
  os_unfair_lock_unlock(v3 + 6);
  *(v0 + 16) = v4;
  if (qword_1ED709C30 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED709C40;
  *(v0 + 24) = qword_1ED709C40;
  v6 = v5;
  return v0;
}

uint64_t sub_1A2C59C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0430, &unk_1A2D0AB00);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1ED709898 = result;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ED709960[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_1ED709960);
    }
  }
}

id sub_1A2C59C9C()
{
  result = [objc_allocWithZone(type metadata accessor for Singleton(0)) init];
  qword_1ED709C40 = result;
  return result;
}

uint64_t type metadata accessor for Singleton(uint64_t a1)
{
  result = qword_1ED709C18;
  if (!qword_1ED709C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2C59D1C(uint64_t a1)
{
  if (!qword_1ED709AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A02C0, &qword_1A2D0AA20);
    v1 = sub_1A2D08064();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED709AD8);
    }
  }
}

uint64_t type metadata accessor for AlertConfiguration(uint64_t a1)
{
  result = qword_1ED709998;
  if (!qword_1ED709998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2C59DEC(uint64_t a1)
{
  result = sub_1A2D07EF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A2C59E7C()
{
  result = qword_1ED7097B0;
  if (!qword_1ED7097B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097B0);
  }

  return result;
}

unint64_t sub_1A2C59ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0770, &qword_1A2D0BDB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0778, &qword_1A2D0D120);
    v7 = sub_1A2D08994();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A2C6BD18(v9, v5, &qword_1EB0A0770, &qword_1A2D0BDB8);
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
      v18 = type metadata accessor for SubscribedActivity(0);
      result = sub_1A2CAB604(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for SubscribedActivity);
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

uint64_t sub_1A2C5A0BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1A2C5A18C(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v19 = sub_1A2C5A514;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C577A8;
  v18 = &block_descriptor_96;
  v6 = _Block_copy(&v15);
  v7 = &unk_1F1588F70;

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol:v7 interpreter:v6];
  _Block_release(v6);

  [v5 setClient_];
  v10 = [v8 protocolForProtocol_];
  [v5 setServer_];

  v11 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1A2C5B438;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C58E8C;
  v18 = &block_descriptor_99;
  v12 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v12);
  v19 = sub_1A2C9FCE0;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C58E8C;
  v18 = &block_descriptor_102;
  v13 = _Block_copy(&v15);
  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v19 = sub_1A2C9FCEC;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C58E8C;
  v18 = &block_descriptor_105;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

id sub_1A2C5A514(void *a1)
{
  [a1 selector];
  if (sub_1A2D07FD4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_1A2C5A5A0()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CA0360;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_93;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED709870);
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

uint64_t sub_1A2C5A798()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C5A7D4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED709870);
  __swift_project_value_buffer(v0, qword_1ED709870);
  return sub_1A2D08084();
}

char *sub_1A2C5A8A0()
{
  v19 = sub_1A2D086E4();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_serverStartupToken] = -1;
  v18 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue;
  v17[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D082F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5AD40(&qword_1ED709E30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C5ACDC();
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v19);
  *&v0[v18] = sub_1A2D08724();
  *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient__queue_ephemeralActivityRequests] = MEMORY[0x1E69E7CC8];
  v7 = *&v0[v6];
  *&v0[v6] = 0;

  v8 = type metadata accessor for ActivityInputClient();
  v21.receiver = v0;
  v21.super_class = v8;
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1A2C5AD90;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_37;
  v13 = _Block_copy(aBlock);
  v14 = v9;
  v15 = v10;

  dispatch_sync(v15, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C5AC8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A2C5ACDC()
{
  result = qword_1ED709E40;
  if (!qword_1ED709E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709E40);
  }

  return result;
}

uint64_t sub_1A2C5AD40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C5ADB4()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
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

  sub_1A2C56C6C();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection);
  if (!v8)
  {
    if (qword_1ED7097E8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1ED7097F0);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "ActivityPushTokenClient: Failed to establish a connection", v11, 2u);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E08, &qword_1A2D0E968);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C599D8(v20);
  }

  if (qword_1ED7097E8 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1ED7097F0);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "ActivityPushTokenClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

void sub_1A2C5B104()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CA15E4;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED709838 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED709840);
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

uint64_t sub_1A2C5B2FC()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED709840);
  __swift_project_value_buffer(v0, qword_1ED709840);
  return sub_1A2D08084();
}

uint64_t storeEnumTagSinglePayload for ActivitySubscriptionOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1A2C5B444(uint64_t a1, const char *a2)
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED709870);
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

id sub_1A2C5B558()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_1()) init];
  qword_1ED709988 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for OutputClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1A2C5B718()
{
  v27 = sub_1A2D086E4();
  v1 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue;
  v6 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v25[0] = "requent-updates-observation";
  v25[1] = v6;
  sub_1A2D082E4();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v27);
  *&v0[v26] = sub_1A2D08724();
  v7 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_serverStartupToken] = -1;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities] = 0;
  v8 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  swift_allocObject();
  *&v0[v8] = sub_1A2D08144();
  v9 = *&v0[v7];
  *&v0[v7] = 0;

  v10 = _s11ActivityKit9SingletonCMa_1();
  v34.receiver = v0;
  v34.super_class = v10;
  v11 = objc_msgSendSuper2(&v34, sel_init);
  v12 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue;
  v13 = *&v11[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2C5BE8C;
  *(v15 + 24) = v14;
  v32 = sub_1A2C56C14;
  v33 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1A2C56C44;
  v31 = &block_descriptor_41_1;
  v16 = _Block_copy(&aBlock);
  v17 = v11;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v20 = *&v11[v12];
    v21 = swift_allocObject();
    *(v21 + 16) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1A2C5C99C;
    *(v22 + 24) = v21;
    v32 = sub_1A2C5C998;
    v33 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1A2C56C44;
    v31 = &block_descriptor_51;
    v23 = _Block_copy(&aBlock);
    v24 = v20;

    dispatch_sync(v24, v23);

    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if ((v23 & 1) == 0)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C5BC4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A2C5BCA4()
{
  result = qword_1ED709E30;
  if (!qword_1ED709E30)
  {
    sub_1A2D086C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709E30);
  }

  return result;
}

void sub_1A2C5BCFC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2C5BEBC();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C599D8(v10);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C599D8(v10);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2C5BEBC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue];
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

  v8 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C5C168();
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
      *(v14 + 16) = sub_1A2C5C378;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_23_0;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2C5C688();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

unint64_t sub_1A2C5C168()
{
  result = qword_1ED7099E0;
  if (!qword_1ED7099E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7099E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OutputClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A2C5C254()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709B08);
  __swift_project_value_buffer(v0, qword_1ED709B08);
  return sub_1A2D08004();
}

uint64_t sub_1A2C5C2A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709B08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1A2C5C380(void *a1, uint64_t a2)
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
  v17 = sub_1A2C5D834;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_26;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CBC080;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_29_1;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CBC08C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_32;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2C5C688()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CBC57C;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_7;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED709810 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED709820);
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

uint64_t sub_1A2C5C880()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1A2C5C8D8(uint64_t a1)
{
  result = sub_1A2C5C9A4();
  if (result)
  {
    v3 = [result activitiesExceedingReducedPushBudget];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1A2D08654();

      v6 = sub_1A2C5CDE8(v5);
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectRelease();
    v7 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
    swift_beginAccess();
    *(a1 + v7) = v6;
  }

  return result;
}

uint64_t sub_1A2C5C9A4()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue);
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

  sub_1A2C5BCFC();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection);
  if (!v8)
  {
    if (qword_1ED709810 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1ED709820);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "Frequent updates observation service: Failed to establish a connection", v11, 2u);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B28, &qword_1A2D0D320);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C599D8(v20);
  }

  if (qword_1ED709810 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1ED709820);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "Frequent updates observation Service: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1A2C5CCF8(uint64_t a1, const char *a2)
{
  if (qword_1ED709838 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED709840);
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

uint64_t sub_1A2C5CDE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
    v2 = sub_1A2D08844();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1A2CBC584(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1A2CBC3D0(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1A2C5CF90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v25 = a4;
  v23 = a3;
  v22 = sub_1A2D086E4();
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v21 = type metadata accessor for ActivityOutputClient();
  v29[3] = v21;
  v29[4] = &protocol witness table for ActivityOutputClient;
  v20 = a2;
  v29[0] = a2;
  type metadata accessor for ActivityManager();
  v10 = swift_allocObject();
  v10[2] = 0;
  v11 = sub_1A2C5D300();
  v19[0] = "bservationClient";
  v19[1] = v11;

  sub_1A2D082E4();
  *&v26 = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v22);
  v10[12] = sub_1A2D08724();
  sub_1A2C53CD8(v29, (v10 + 4));
  v12 = v23;
  v10[3] = v23;
  type metadata accessor for ActivityPushTokenManager();
  v13 = swift_allocObject();
  v14 = v12;
  v10[10] = sub_1A2C5D370(v24, v13);
  v27 = v21;
  v28 = &protocol witness table for ActivityOutputClient;
  *&v26 = v20;
  type metadata accessor for ActivityInstanceManager();
  v15 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *(v15 + 16) = v16;
  *(v15 + 24) = sub_1A2C5E3DC(MEMORY[0x1E69E7CC0]);
  sub_1A2C5E3C4(&v26, v15 + 32);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v10[9] = v15;
  v10[11] = v25;
  return v10;
}

unint64_t sub_1A2C5D300()
{
  result = qword_1ED709E20;
  if (!qword_1ED709E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED709E20);
  }

  return result;
}

uint64_t sub_1A2C5D370(uint64_t a1, uint64_t a2)
{
  v8[3] = type metadata accessor for ActivityPushTokenClient();
  v8[4] = &off_1F157C918;
  v8[0] = a1;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(a2 + 16) = v4;
  *(a2 + 64) = MEMORY[0x1E69E7CD0];
  v6 = MEMORY[0x1E69E7CC0];
  *(a2 + 72) = sub_1A2C5671C(MEMORY[0x1E69E7CC0]);
  *(a2 + 80) = xmmword_1A2D0AC30;
  *(a2 + 96) = sub_1A2C5D478(v6);
  *(a2 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0668, qword_1A2D0B490);
  swift_allocObject();
  *(a2 + 112) = sub_1A2D081B4();
  sub_1A2C53CD8(v8, a2 + 24);
  sub_1A2C5D594();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a2;
}

unint64_t sub_1A2C5D478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07B8, &qword_1A2D0BE30);
    v3 = sub_1A2D08994();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_1A2C64868(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

uint64_t sub_1A2C5D594()
{
  sub_1A2C53CD8(v0 + 24, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0660, &qword_1A2D0B488);
  sub_1A2C56A78(&qword_1ED709C10, &qword_1EB0A0660, &qword_1A2D0B488, MEMORY[0x1E695BED8]);
  sub_1A2D08284();

  __swift_destroy_boxed_opaque_existential_1(v4);
  swift_beginAccess();
  sub_1A2D080C4();
  swift_endAccess();
}

uint64_t sub_1A2C5D6EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C5D79C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E00, qword_1A2D0E950);
  sub_1A2C56A78(&qword_1ED709C08, &qword_1EB0A0E00, qword_1A2D0E950, MEMORY[0x1E695BFB0]);
  return sub_1A2D081F4();
}

void sub_1A2C5D840(uint64_t a1, const char *a2)
{
  if (qword_1ED709810 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED709820);
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

uint64_t sub_1A2C5D930()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED709820);
  __swift_project_value_buffer(v0, qword_1ED709820);
  return sub_1A2D08084();
}

uint64_t sub_1A2C5D9B8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  a1[9] = MEMORY[0x1E69E7CC8];

  v4 = a1[10];
  v5 = a1[11];
  *(a1 + 5) = xmmword_1A2D0AC30;
  sub_1A2C5DE40(v4, v5);
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);

  v52 = a1;
  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  v50 = v11;
  v51 = a2 + 64;
  v49 = a2;
  while (v9)
  {
    v14 = v10;
LABEL_12:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (v14 << 10) | (16 * v15);
    v17 = (*(a2 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a2 + 56) + v16);
    v22 = *v20;
    v21 = v20[1];

    sub_1A2C5E63C(v22, v21);
    if (sub_1A2D084B4())
    {

      v12 = v52[10];
      v13 = v52[11];
      v52[10] = v22;
      v52[11] = v21;
      sub_1A2C5E63C(v22, v21);
      sub_1A2C5DE40(v12, v13);
      sub_1A2D08174();
LABEL_5:
      sub_1A2C55840(v22, v21);
      goto LABEL_6;
    }

    swift_beginAccess();
    v23 = v21;
    sub_1A2C5E63C(v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v18;
    v26 = isUniquelyReferenced_nonNull_native;
    v27 = v52[9];
    v52[9] = 0x8000000000000000;
    v28 = v25;
    v30 = sub_1A2C64868(v25, v19);
    v31 = v27[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_30;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((v26 & 1) == 0)
      {
        sub_1A2CB3DDC();
      }

      v35 = v28;
    }

    else
    {
      sub_1A2CB30BC(v33, v26);
      v35 = v28;
      v36 = sub_1A2C64868(v28, v19);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_32;
      }

      v30 = v36;
    }

    v21 = v23;
    v11 = v50;
    if (v34)
    {
      v38 = (v27[7] + 16 * v30);
      v39 = *v38;
      v40 = v38[1];
      *v38 = v22;
      v38[1] = v21;
      sub_1A2C55840(v39, v40);
    }

    else
    {
      v27[(v30 >> 6) + 8] |= 1 << v30;
      v41 = (v27[6] + 16 * v30);
      *v41 = v35;
      v41[1] = v19;
      v42 = (v27[7] + 16 * v30);
      *v42 = v22;
      v42[1] = v21;
      v43 = v27[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_31;
      }

      v27[2] = v45;
    }

    v52[9] = v27;
    swift_endAccess();
    a2 = v49;
    if (*(v52[12] + 16))
    {

      sub_1A2C64868(v35, v19);
      v47 = v46;

      if (v47)
      {
        swift_unknownObjectRetain();

        swift_getObjectType();
        sub_1A2D081E4();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }
    }

    sub_1A2C55840(v22, v21);

LABEL_6:
    v10 = v14;
    v6 = v51;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v10;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1A2D08B84();
  __break(1u);
  return result;
}

void *sub_1A2C5DDAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result[2] + 16);
    v5 = result;

    os_unfair_lock_lock(v4);
    sub_1A2C5D9B8(v5, v2);
    os_unfair_lock_unlock(v4);
  }

  return result;
}

uint64_t sub_1A2C5DE40(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A2C55840(result, a2);
  }

  return result;
}

uint64_t sub_1A2C5DE54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A2D082D4();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A2D08314();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2D08344();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v2[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10, v12);
  v16 = v15;
  v17 = sub_1A2D08364();
  (*(v11 + 8))(v14, v10);
  if (v17)
  {
    if (qword_1ED7097E8 == -1)
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
  v32[1] = v16;
  v18 = sub_1A2D08094();
  __swift_project_value_buffer(v18, qword_1ED7097F0);

  v19 = sub_1A2D08074();
  v20 = sub_1A2D086A4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[0] = v4;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136446210;
    v24 = sub_1A2D083A4();
    v26 = sub_1A2C55558(v24, v25, aBlock);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1A2C51000, v19, v20, "Push tokens changed: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v4 = v32[0];
    MEMORY[0x1A58E5180](v27, -1, -1);
    MEMORY[0x1A58E5180](v21, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens] = a1;

  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  *(v28 + 24) = a1;
  aBlock[4] = sub_1A2C5E5FC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_9;
  v29 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();
  v30 = v2;
  sub_1A2D082E4();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1A2C56A30(&qword_1ED709AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C56A78(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  MEMORY[0x1A58E43D0](0, v9, v6, v29);
  _Block_release(v29);
  (*(v35 + 8))(v6, v4);
  (*(v33 + 8))(v9, v34);
}

uint64_t sub_1A2C5E360()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C5E3C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1A2C5E3DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A8, &unk_1A2D0D100);
    v3 = sub_1A2D08994();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2C6BD18(v4, &v13, &qword_1EB0A07B0, qword_1A2D0BDE8);
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
      result = sub_1A2C5E3C4(&v15, v3[7] + 40 * result);
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

void sub_1A2C5E510()
{
  qword_1ED708D30 = 0;
  xmmword_1ED708D10 = 0u;
  xmmword_1ED708D20 = 0u;
  xmmword_1ED708D00 = 0u;

  v0 = xmmword_1ED708D10;
  v1 = xmmword_1ED708D20;
  v2 = qword_1ED708D30;
  xmmword_1ED708D10 = 0u;
  xmmword_1ED708D20 = 0u;
  qword_1ED708D30 = 0;

  sub_1A2C5E574(v0, *(&v0 + 1), v1, *(&v1 + 1), v2);
}

void sub_1A2C5E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1A2C5E5B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1A2C5E63C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1A2C5E690()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED708BC0);
  __swift_project_value_buffer(v0, qword_1ED708BC0);
  return sub_1A2D08084();
}

uint64_t static Activity.activityUpdates.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1A2C5E714(v1, v1, v2);
  type metadata accessor for Activity(0, v1, v2, v3);

  return sub_1A2D08044();
}

uint64_t sub_1A2C5E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{

  v8 = a4(a1, a2, a3);

  return v8;
}

uint64_t sub_1A2C5E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1A2C5E898(a1, a2, a3);
  v5 = a4();

  return v5;
}

uint64_t sub_1A2C5E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + 16) + 16);

  os_unfair_lock_lock(v6);
  sub_1A2C5E93C(v3, a2, a3, &v8);
  os_unfair_lock_unlock(v6);

  return v8;
}

uint64_t sub_1A2C5E93C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_1A2D08CA4();
  v11 = v10;
  swift_beginAccess();
  v12 = *(a2 + 24);
  if (*(v12 + 16))
  {

    v13 = sub_1A2C64868(v9, v11);
    if (v14)
    {
      sub_1A2C53CD8(*(v12 + 56) + 40 * v13, v26);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0688, &qword_1A2D0B760);
      type metadata accessor for AttributeScopedActivityInstanceStore(0, a3, a4, v15);
      if (swift_dynamicCast())
      {

        v17 = v25;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (qword_1ED708BB8 != -1)
  {
    swift_once();
  }

  v27 = a5;
  v18 = sub_1A2D08094();
  __swift_project_value_buffer(v18, qword_1ED708BC0);

  v19 = sub_1A2D08074();
  v20 = sub_1A2D086A4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1A2C55558(v9, v11, v26);
    _os_log_impl(&dword_1A2C51000, v19, v20, "Creating attributes table for attribute type: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1A58E5180](v22, -1, -1);
    MEMORY[0x1A58E5180](v21, -1, -1);
  }

  v24 = type metadata accessor for AttributeScopedActivityInstanceStore(0, a3, a4, v23);
  sub_1A2C53CD8(a2 + 32, v26);
  swift_allocObject();

  v17 = sub_1A2C5ECB8(v9, v11, v26);
  v26[3] = v24;
  v26[4] = &off_1F157A7C0;
  v26[0] = v17;
  swift_beginAccess();

  sub_1A2C64638(v26, v9, v11);
  result = swift_endAccess();
  a5 = v27;
LABEL_11:
  *a5 = v17;
  return result;
}

void *sub_1A2C5ECB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v5 = *v3;
  v6 = sub_1A2D086E4();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A2D086C4();
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2D08314();
  MEMORY[0x1EEE9AC00](v10 - 8);
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  v13 = MEMORY[0x1E69E7CD0];
  v4[9] = v11;
  v4[10] = v13;
  v14 = *(v5 + 80);
  v25 = *(v5 + 88);
  v16 = type metadata accessor for Activity(255, v14, v25, v15);
  v17 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v18 = sub_1A2D08594();
  v19 = sub_1A2C5F0D8(v18, v17, v16, MEMORY[0x1E69E6168]);

  v4[11] = v19;
  sub_1A2D08154();
  v4[12] = sub_1A2D08134();
  v4[13] = sub_1A2D08134();
  sub_1A2C5D300();
  sub_1A2D082E4();
  *&v33[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5F3C4(&qword_1ED709E30, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0, MEMORY[0x1E69E6328]);
  sub_1A2D08804();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  v4[14] = sub_1A2D08724();
  v4[15] = MEMORY[0x1E69E7CD0];
  v20 = v31;
  v4[2] = v30;
  v4[3] = v20;
  v21 = v32;
  sub_1A2C53CD8(v32, (v4 + 4));
  ActivityAttributesType.init<A>(from:)(v33);
  v22 = v33[0];

  sub_1A2C5E574(0, 0, 0, 0, 0);
  v33[0] = v22;
  memset(&v33[1], 0, 32);
  v34 = 0;
  sub_1A2C5F480(v33);
  __swift_destroy_boxed_opaque_existential_1(v21);

  sub_1A2C5E574(0, 0, 0, 0, 0);
  return v4;
}

unint64_t sub_1A2C5F0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A2D085C4())
  {
    sub_1A2D089A4();
    v13 = sub_1A2D08994();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A2D085C4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A2D085A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A2D08874();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A2CA8A70(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1A2C5F3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C5F40C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ActivityAttributesType.init<A>(from:)@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1A2D08CA4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A2C5F480(__int128 *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0690, &qword_1A2D0B768);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = a1[1];
  v33 = *a1;
  v34 = v11;
  v35 = a1[2];
  v36 = *(a1 + 6);
  sub_1A2C53CD8((v1 + 4), v30);
  v12 = v31;
  v13 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v28[0] = v33;
  v28[1] = v34;
  v28[2] = v35;
  v29 = v36;
  *&v28[0] = (*(v13 + 64))(v28, v12, v13);
  v14 = v1[14];
  v27 = v14;
  v25 = *&v28[0];
  v15 = sub_1A2D086D4();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B8, &qword_1A2D0A980);
  v26 = v8;
  sub_1A2C5D300();
  sub_1A2C56A78(&qword_1ED708F10, &qword_1EB0A02B8, &qword_1A2D0A980, MEMORY[0x1E695BED8]);
  sub_1A2C5F3C4(&qword_1ED709120, sub_1A2C5D300, MEMORY[0x1E69E8028]);
  sub_1A2D08264();
  sub_1A2C54E38(v6, &qword_1EB0A0570, &qword_1A2D0ADA0);

  __swift_destroy_boxed_opaque_existential_1(v30);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = *(v3 + 80);
  *(v18 + 16) = v19;
  v20 = *(v3 + 88);
  *(v18 + 24) = v20;
  *(v18 + 32) = v17;
  v21 = v34;
  *(v18 + 40) = v33;
  *(v18 + 56) = v21;
  *(v18 + 72) = v35;
  *(v18 + 88) = v36;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v22;
  sub_1A2C63D94(&v33, v28);
  sub_1A2C56A78(&qword_1ED708F18, &qword_1EB0A0690, &qword_1A2D0B768, MEMORY[0x1E695BE98]);
  sub_1A2D08224();

  (*(v26 + 8))(v10, v7);
  swift_beginAccess();
  sub_1A2D080C4();
  swift_endAccess();
}

uint64_t sub_1A2C5FB5C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C5FB94()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1A2C5FBE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t ActivityOutputClient.observeDescriptorContentStates(matching:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02A0, &qword_1A2D0A968);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02A8, &qword_1A2D0A970);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B0, &qword_1A2D0A978);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v13;
  v34[2] = *(a1 + 32);
  v35 = *(a1 + 48);
  v14 = ActivityOutputClient.observeDescriptorContentStates()();
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
    v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01F0, &qword_1A2D0A8D8);
    v26 = v7;
    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B8, &qword_1A2D0A980);
    v25 = v10;
    v17 = MEMORY[0x1E695BED8];
    sub_1A2C56A78(&qword_1ED708F08, &unk_1EB0A01F0, &qword_1A2D0A8D8, MEMORY[0x1E695BED8]);
    sub_1A2C56A78(&qword_1ED708F10, &qword_1EB0A02B8, &qword_1A2D0A980, v17);
    sub_1A2D082A4();

    sub_1A2C56A78(&qword_1ED708F28, &qword_1EB0A02A8, &qword_1A2D0A970, MEMORY[0x1E695BE40]);
    sub_1A2C63CE0();
    v18 = v32;
    sub_1A2D08274();
    (*(v30 + 8))(v9, v18);
    sub_1A2C56A78(&qword_1ED708F40, &qword_1EB0A02B0, &qword_1A2D0A978, MEMORY[0x1E695BD38]);
    v19 = v25;
    v20 = sub_1A2D081F4();
    (*(v31 + 8))(v12, v19);
    v33[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    v21 = v26;
    sub_1A2D08204();
    sub_1A2C56A78(&qword_1ED708F58, &qword_1EB0A02A0, &qword_1A2D0A968, MEMORY[0x1E695BC80]);
    v22 = v28;
    v1 = sub_1A2D081F4();

    (*(v27 + 8))(v21, v22);
  }

  return v1;
}

uint64_t ActivityOutputClient.observeDescriptorContentStates()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01D8, &qword_1A2D0A8C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01E0, &qword_1A2D0A8C8);
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01E8, &qword_1A2D0A8D0);
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  ActivityOutputClient.observeActivities()();
  if (!v1)
  {
    v25 = v12;
    v22 = 0;
    v18[2] = sub_1A2D080B4();
    v21 = v2;
    v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01B0, &qword_1A2D0A8A0);
    v19 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01F0, &qword_1A2D0A8D8);
    v20 = v3;
    v13 = MEMORY[0x1E695BED8];
    sub_1A2C56A78(&unk_1ED7092B8, &unk_1EB0A01B0, &qword_1A2D0A8A0, MEMORY[0x1E695BED8]);
    v18[3] = sub_1A2C56A78(&qword_1ED708F08, &unk_1EB0A01F0, &qword_1A2D0A8D8, v13);
    sub_1A2D082B4();

    sub_1A2C56A78(&qword_1ED708F20, &qword_1EB0A01E0, &qword_1A2D0A8C8, MEMORY[0x1E695BE40]);
    sub_1A2C63CE0();
    sub_1A2D08274();
    (*(v23 + 8))(v8, v6);
    sub_1A2C56A78(&unk_1ED708F30, &qword_1EB0A01E8, &qword_1A2D0A8D0, MEMORY[0x1E695BD38]);
    v14 = sub_1A2D081F4();
    (*(v24 + 8))(v11, v9);
    v25 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    v15 = v19;
    sub_1A2D08204();
    sub_1A2C56A78(&unk_1ED708F48, &qword_1EB0A01D8, &qword_1A2D0A8C0, MEMORY[0x1E695BC80]);
    v16 = v21;
    v0 = sub_1A2D081F4();

    (*(v20 + 8))(v15, v16);
  }

  return v0;
}

void ActivityOutputClient.observeActivities()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0160, &qword_1A2D0A868);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0168, &qword_1A2D0A870);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01C8, &qword_1A2D0A8B0);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01D0, &qword_1A2D0A8B8);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v31 - v13;
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1ED709870);
  v15 = sub_1A2D08074();
  v16 = sub_1A2D086A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A2C51000, v15, v16, "Attempting to observe activities", v17, 2u);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }

  v18 = *(v2[4] + 16);

  os_unfair_lock_lock(v18);
  v19 = v2[6];
  if (__OFADD__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    v2[6] = v19 + 1;
    os_unfair_lock_unlock(v18);

    if (v19)
    {
      v31 = v1;
LABEL_8:
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = v2[3];
      v23 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
      swift_beginAccess();
      v40 = *(v22 + v23);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0190, &qword_1A2D0A890);
      sub_1A2D081D4();
      v40 = *(v22 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_activityDiffPublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01A0, &qword_1A2D0A898);
      sub_1A2C56A78(&qword_1ED7092A8, &qword_1EB0A0160, &qword_1A2D0A868, MEMORY[0x1E695C008]);
      sub_1A2C56A78(&qword_1ED7092B0, &unk_1EB0A01A0, &qword_1A2D0A898, MEMORY[0x1E695BF88]);
      sub_1A2D08244();
      (*(v32 + 8))(v5, v3);
      sub_1A2C56A78(&unk_1ED7092C8, &qword_1EB0A0168, &qword_1A2D0A870, MEMORY[0x1E695BDC0]);
      v24 = v34;
      v25 = sub_1A2D081F4();
      (*(v33 + 8))(v8, v24);
      v40 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01B0, &qword_1A2D0A8A0);
      sub_1A2C56A78(&unk_1ED7092B8, &unk_1EB0A01B0, &qword_1A2D0A8A0, MEMORY[0x1E695BED8]);
      sub_1A2C63A54();
      sub_1A2D08274();

      v26 = swift_allocObject();
      *(v26 + 16) = sub_1A2CA00D0;
      *(v26 + 24) = v21;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1A2CA00D0;
      *(v27 + 24) = v21;
      sub_1A2C56A78(&qword_1ED709148, &qword_1EB0A01C8, &qword_1A2D0A8B0, MEMORY[0x1E695BD38]);
      swift_retain_n();
      v28 = v37;
      v29 = v35;
      sub_1A2D08214();

      (*(v36 + 8))(v11, v28);
      sub_1A2C56A78(&qword_1ED709150, &qword_1EB0A01D0, &qword_1A2D0A8B8, MEMORY[0x1E695BCC0]);
      v30 = v39;
      sub_1A2D081F4();

      (*(v38 + 8))(v29, v30);
      return;
    }

    MEMORY[0x1EEE9AC00](v20);
    sub_1A2D08704();
    if (!v1)
    {
      v31 = 0;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1A2C60CD4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C60D0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1A2C60D5C()
{
  result = qword_1ED709398;
  if (!qword_1ED709398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709398);
  }

  return result;
}

unint64_t sub_1A2C60DB4()
{
  result = qword_1ED7093A0;
  if (!qword_1ED7093A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7093A0);
  }

  return result;
}

uint64_t sub_1A2C60E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C60E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C60E98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C60F1C(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v6 = sub_1A2D08094();
  __swift_project_value_buffer(v6, qword_1ED709870);
  v7 = sub_1A2D08074();
  v8 = sub_1A2D086A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 134349314;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2082;
    sub_1A2D08864();

    if (a2)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a2)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x1A58E4150](v11, v12);

    v13 = sub_1A2C55558(0xD000000000000011, 0x80000001A2D18ED0, &v17);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1A2C51000, v7, v8, "Client %{public}llu subscribing with options: %{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1A58E5180](v10, -1, -1);
    MEMORY[0x1A58E5180](v9, -1, -1);
  }

  v14 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a3 + v14);
  *(a3 + v14) = 0x8000000000000000;
  sub_1A2C61164(a2 & 1, a1, isUniquelyReferenced_nonNull_native);
  *(a3 + v14) = v17;
  swift_endAccess();
  return sub_1A2C615B4();
}

unint64_t sub_1A2C61164(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A2C61290(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1A2CB36F8();
    result = v17;
    goto LABEL_8;
  }

  sub_1A2C612D4(v14, a3 & 1);
  result = sub_1A2C61290(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + result) = a1 & 1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1A2D08B84();
  __break(1u);
  return result;
}

unint64_t sub_1A2C61290(uint64_t a1)
{
  v2 = sub_1A2D08C04();

  return sub_1A2C61538(a1, v2);
}

uint64_t sub_1A2C612D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09D0, &qword_1A2D0D198);
  result = sub_1A2D08974();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = sub_1A2D08C04();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1A2C61538(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1A2C615B4()
{
  v2 = v0;
  v37 = *MEMORY[0x1E69E9840];
  v3 = sub_1A2C54EB4();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
    swift_beginAccess();
    if (!*(*(v2 + v5) + 16))
    {
      [v4 unsubscribe];
      v36 = MEMORY[0x1E69E7CC0];
      sub_1A2C62964(&v36, 0, 0, 0);
      swift_unknownObjectRelease();
    }

    sub_1A2C619C0(&v36);
    sub_1A2D07EB4();
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2C61B90();
    v6 = sub_1A2D07E94();
    if (!v1)
    {
      v8 = v6;
      v9 = v7;
      v10 = sub_1A2D07F24();
      sub_1A2C55840(v8, v9);

      v11 = sub_1A2D07F44();
      v13 = v12;

      v14 = sub_1A2D07F24();
      v36 = 0;
      v15 = [v4 subscribeWithOptions:v14 error:&v36];

      v16 = v36;
      if (!v15)
      {
        v31 = v16;
        sub_1A2D07ED4();

        swift_willThrow();
        sub_1A2C55840(v11, v13);
        return swift_unknownObjectRelease();
      }

      v17 = sub_1A2D07F44();
      v19 = v18;

      v34 = v19;
      v35 = v17;
      v20 = sub_1A2D07F24();
      sub_1A2D07E84();
      swift_allocObject();
      sub_1A2D07E74();
      v21 = sub_1A2D07F44();
      v23 = v22;
      sub_1A2C62624();
      sub_1A2D07E64();
      sub_1A2C55840(v21, v23);

      v24 = v36;
      if (v36)
      {

        v36 = v24;
        sub_1A2C62964(&v36, 0, 0, 0);
        sub_1A2C55840(v11, v13);
        sub_1A2C55840(v35, v34);

        return swift_unknownObjectRelease();
      }

      __break(1u);
    }

    v32 = swift_unexpectedError();
    __break(1u);
    sub_1A2C55840(v32, v33);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v25 = sub_1A2D08094();
    __swift_project_value_buffer(v25, qword_1ED709870);
    v26 = sub_1A2D08074();
    v27 = sub_1A2D08684();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1A2C51000, v26, v27, "Remote target does not exist", v28, 2u);
      MEMORY[0x1A58E5180](v28, -1, -1);
    }

    sub_1A2CA0368();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1A2C619C0@<X0>(char *a1@<X8>)
{
  v3 = sub_1A2D08344();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1A2D08364();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
    result = swift_beginAccess();
    v12 = 0;
    v13 = *(v1 + v11);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = v12;
LABEL_11:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      if (*(*(v13 + 56) + (v19 | (v18 << 6))) == 1)
      {
        v20 = 1;
LABEL_14:
        *a1 = v20;
        return result;
      }
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        v20 = 0;
        goto LABEL_14;
      }

      v16 = *(v13 + 64 + 8 * v18);
      ++v12;
      if (v16)
      {
        v12 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A2C61B90()
{
  result = qword_1ED709450;
  if (!qword_1ED709450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709450);
  }

  return result;
}

uint64_t sub_1A2C61BE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C00, &qword_1A2D0D480);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C61DDC();
  sub_1A2D08C74();
  sub_1A2D08AC4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A2C61D30()
{
  result = qword_1ED709458;
  if (!qword_1ED709458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709458);
  }

  return result;
}

unint64_t sub_1A2C61D88()
{
  result = qword_1ED709460;
  if (!qword_1ED709460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709460);
  }

  return result;
}

unint64_t sub_1A2C61DDC()
{
  result = qword_1ED709468;
  if (!qword_1ED709468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709468);
  }

  return result;
}

uint64_t static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1A2D087E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = *(a2 - 8);
  result = (*(v15 + 56))(&v17 - v13, 1, 1, a2, v12);
  if (a1)
  {
    sub_1A2D089B4();
    (*(v8 + 16))(v10, v14, v7);
    result = (*(v15 + 48))(v10, 1, a2);
    if (result != 1)
    {
      (*(v8 + 8))(v14, v7);
      return (*(v15 + 32))(a4, v10, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C62024(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v4 = sub_1A2D07F44();
  v6 = v5;
  sub_1A2C620FC();
  sub_1A2D07E64();
  sub_1A2C55840(v4, v6);

  *a2 = v8;
  return result;
}

unint64_t sub_1A2C620FC()
{
  result = qword_1EB09F088;
  if (!qword_1EB09F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F088);
  }

  return result;
}

uint64_t ActivitySubscriptionOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C08, &qword_1A2D0D488);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C61DDC();
  sub_1A2D08C64();
  if (!v2)
  {
    v9 = sub_1A2D08A34();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for ActivitySubscriptionOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t XPCCodableActivityChanges.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0898, &qword_1A2D0C620);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C62540();

  sub_1A2D08C74();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08A0, &qword_1A2D0C628);
  sub_1A2C62594(&qword_1EB09EE80, sub_1A2CADAD4, MEMORY[0x1E69E6300]);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A2C62540()
{
  result = qword_1ED709508;
  if (!qword_1ED709508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709508);
  }

  return result;
}

uint64_t sub_1A2C62594(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A08A0, &qword_1A2D0C628);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2C62624()
{
  result = qword_1ED7094F0;
  if (!qword_1ED7094F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7094F0);
  }

  return result;
}

uint64_t XPCCodableActivityChanges.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08A8, &qword_1A2D0C630);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C62540();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08A0, &qword_1A2D0C628);
    sub_1A2C62594(&qword_1ED709288, sub_1A2C62910, MEMORY[0x1E69E6330]);
    sub_1A2D08A54();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2C62854()
{
  result = qword_1ED7094F8;
  if (!qword_1ED7094F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7094F8);
  }

  return result;
}

unint64_t sub_1A2C628AC()
{
  result = qword_1ED709500;
  if (!qword_1ED709500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709500);
  }

  return result;
}

unint64_t sub_1A2C62910()
{
  result = qword_1ED7092E0;
  if (!qword_1ED7092E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7092E0);
  }

  return result;
}

uint64_t sub_1A2C62964(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v142 = a4;
  v141 = a3;
  LODWORD(v156) = a2;
  v148 = sub_1A2D082D4();
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v145 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1A2D08314();
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C8, &qword_1A2D0AA28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v155 = &v141 - v8;
  v162 = type metadata accessor for SubscribedActivity(0);
  v165 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v163 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v161 = &v141 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v166 = &v141 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v157 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D0, &qword_1A2D0AA30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v158 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v160 = (&v141 - v19);
  v20 = *a1;
  v164 = *(*a1 + 16);
  if (!v164)
  {
    v23 = MEMORY[0x1E69E7CC8];
LABEL_17:
    if (qword_1ED709860 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_18;
  }

  v21 = 0;
  v22 = (v20 + 48);
  v23 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v21 >= *(v20 + 16))
    {
      goto LABEL_75;
    }

    v26 = *(v22 - 2);
    v25 = *(v22 - 1);
    v27 = *v22;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v23;
    v29 = sub_1A2C64868(v26, v25);
    v31 = v23[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      break;
    }

    v35 = v30;
    if (v23[3] < v34)
    {
      sub_1A2C7A34C(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_1A2C64868(v26, v25);
      if ((v35 & 1) != (v36 & 1))
      {
LABEL_81:
        result = sub_1A2D08B84();
        __break(1u);
        return result;
      }

LABEL_11:
      v23 = aBlock;
      if (v35)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v41 = v29;
    sub_1A2CB36E4();
    v29 = v41;
    v23 = aBlock;
    if (v35)
    {
LABEL_3:
      v24 = (v23[7] + 24 * v29);
      *v24 = v26;
      v24[1] = v25;
      v24[2] = v27;

      goto LABEL_4;
    }

LABEL_12:
    v23[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v23[6] + 16 * v29);
    *v37 = v26;
    v37[1] = v25;
    v38 = (v23[7] + 24 * v29);
    *v38 = v26;
    v38[1] = v25;
    v38[2] = v27;

    v39 = v23[2];
    v33 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v33)
    {
      goto LABEL_77;
    }

    v23[2] = v40;
LABEL_4:
    v21 = (v21 + 1);
    v22 += 3;
    if (v164 == v21)
    {
      goto LABEL_17;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  swift_once();
LABEL_18:
  v42 = sub_1A2D08094();
  v43 = __swift_project_value_buffer(v42, qword_1ED709870);

  v154 = v43;
  v44 = sub_1A2D08074();
  v45 = sub_1A2D086A4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136446210;

    v48 = sub_1A2D083B4();
    v50 = v49;

    v51 = sub_1A2C55558(v48, v50, &aBlock);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_1A2C51000, v44, v45, "Activities changed: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1A58E5180](v47, -1, -1);
    MEMORY[0x1A58E5180](v46, -1, -1);
  }

  v52 = sub_1A2C59ED4(MEMORY[0x1E69E7CC0]);
  v53 = v23[8];
  v174 = v52;
  v54 = 1 << *(v23 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v53;
  v57 = (v54 + 63) >> 6;

  v58 = 0;
  if (v56)
  {
    while (1)
    {
      v59 = v58;
LABEL_28:
      v60 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v61 = v60 | (v59 << 6);
      v62 = (v23[6] + 16 * v61);
      v63 = *v62;
      v64 = v62[1];
      v65 = (v23[7] + 24 * v61);
      v66 = *v65;
      v67 = v65[1];
      v68 = v65[2];
      aBlock = v63;
      v169 = v64;
      v170 = v66;
      v171 = v67;
      v172 = v68;

      sub_1A2C7A360(v63, v64, &v170, v159, &v174);

      if (!v56)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_74;
    }

    if (v59 >= v57)
    {
      break;
    }

    v56 = v23[v59 + 8];
    ++v58;
    if (v56)
    {
      v58 = v59;
      goto LABEL_28;
    }
  }

  if ((v156 & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
    v153 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
    v70 = v159;
    swift_beginAccess();
    v71 = *(v70 + v69);
    v72 = v71 + 64;
    v73 = 1 << *(v71 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v75 = v74 & *(v71 + 64);
    v150 = (v73 + 63) >> 6;
    v151 = (v165 + 56);
    v156 = v71;

    v76 = 0;
    *&v77 = 136446210;
    v149 = v77;
    v78 = v158;
    v152 = v72;
    v164 = v23;
    while (1)
    {
      if (!v75)
      {
        if (v150 <= v76 + 1)
        {
          v82 = v76 + 1;
        }

        else
        {
          v82 = v150;
        }

        v83 = v82 - 1;
        v84 = v160;
        while (1)
        {
          v81 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            break;
          }

          if (v81 >= v150)
          {
            v23 = &qword_1A2D0AA38;
            v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
            (*(*(v118 - 8) + 56))(v78, 1, 1, v118);
            v75 = 0;
            v76 = v83;
            goto LABEL_49;
          }

          v75 = *(v72 + 8 * v81);
          ++v76;
          if (v75)
          {
            v76 = v81;
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v81 = v76;
LABEL_48:
      v85 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v86 = v85 | (v81 << 6);
      v87 = (*(v156 + 48) + 16 * v86);
      v89 = *v87;
      v88 = v87[1];
      v90 = v157;
      sub_1A2C7BFE4(*(v156 + 56) + *(v165 + 72) * v86, v157, type metadata accessor for SubscribedActivity);
      v23 = &qword_1A2D0AA38;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
      v92 = *(v91 + 48);
      *v78 = v89;
      v78[1] = v88;
      sub_1A2C725C0(v90, v78 + v92, type metadata accessor for SubscribedActivity);
      (*(*(v91 - 8) + 56))(v78, 0, 1, v91);

      v84 = v160;
LABEL_49:
      sub_1A2C639DC(v78, v84, &qword_1EB0A02D0, &qword_1A2D0AA30);
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
      if ((*(*(v93 - 8) + 48))(v84, 1, v93) == 1)
      {

        goto LABEL_72;
      }

      v95 = *v84;
      v94 = v84[1];
      sub_1A2C725C0(v84 + *(v93 + 48), v166, type metadata accessor for SubscribedActivity);
      if (v164[2])
      {
        sub_1A2C64868(v95, v94);
        if (v96)
        {

          v78 = v158;
          goto LABEL_37;
        }
      }

      v97 = sub_1A2D08074();
      v98 = sub_1A2D086A4();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        aBlock = v100;
        *v99 = v149;
        *(v99 + 4) = sub_1A2C55558(v95, v94, &aBlock);
        _os_log_impl(&dword_1A2C51000, v97, v98, "Activity disappeared from daemon: %{public}s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        MEMORY[0x1A58E5180](v100, -1, -1);
        MEMORY[0x1A58E5180](v99, -1, -1);
      }

      v102 = v161;
      v101 = v162;
      v103 = v166;
      sub_1A2C7BFE4(v166 + *(v162 + 24), v161 + *(v162 + 24), type metadata accessor for ActivityDescriptor);
      v104 = *(v101 + 28);
      v105 = *(v103 + v104);
      *v102 = v95;
      *(v102 + 8) = v94;
      *(v102 + 16) = 3;
      *(v102 + v104) = v105;
      sub_1A2C7BFE4(v102, v163, type metadata accessor for SubscribedActivity);

      v106 = v174;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v106;
      v109 = sub_1A2C64868(v95, v94);
      v110 = *(v106 + 16);
      v111 = (v108 & 1) == 0;
      v112 = v110 + v111;
      if (__OFADD__(v110, v111))
      {
        goto LABEL_78;
      }

      v113 = v108;
      if (*(v106 + 24) >= v112)
      {
        if (v107)
        {
          v116 = aBlock;
          if ((v108 & 1) == 0)
          {
            goto LABEL_65;
          }
        }

        else
        {
          sub_1A2CB36A8();
          v116 = aBlock;
          if ((v113 & 1) == 0)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
        sub_1A2C7D508(v112, v107);
        v114 = sub_1A2C64868(v95, v94);
        if ((v113 & 1) != (v115 & 1))
        {
          goto LABEL_81;
        }

        v109 = v114;
        v116 = aBlock;
        if ((v113 & 1) == 0)
        {
LABEL_65:
          v116[(v109 >> 6) + 8] |= 1 << v109;
          v119 = (v116[6] + 16 * v109);
          *v119 = v95;
          v119[1] = v94;
          v117 = *(v165 + 72);
          sub_1A2C725C0(v163, v116[7] + v117 * v109, type metadata accessor for SubscribedActivity);
          v120 = v116[2];
          v33 = __OFADD__(v120, 1);
          v121 = v120 + 1;
          if (v33)
          {
            goto LABEL_79;
          }

          v116[2] = v121;

          goto LABEL_67;
        }
      }

      v117 = *(v165 + 72);
      sub_1A2CA02FC(v163, v116[7] + v117 * v109);
LABEL_67:
      v174 = v116;
      v122 = v159;
      v123 = v153;
      swift_beginAccess();
      v124 = sub_1A2C64868(v95, v94);
      if (v125)
      {
        v126 = v124;
        v127 = swift_isUniquelyReferenced_nonNull_native();
        v128 = *(v122 + v123);
        v167 = v128;
        v78 = v158;
        if (!v127)
        {
          sub_1A2CB36A8();
          v128 = v167;
        }

        v129 = *(v128 + 56) + v117 * v126;
        v80 = v155;
        sub_1A2C725C0(v129, v155, type metadata accessor for SubscribedActivity);
        sub_1A2CA8DFC(v126, v128);
        v79 = 0;
        *(v122 + v123) = v128;
      }

      else
      {
        v79 = 1;
        v80 = v155;
        v78 = v158;
      }

      (*v151)(v80, v79, 1, v162);

      sub_1A2C54E38(v80, &qword_1EB0A02C8, &qword_1A2D0AA28);
      swift_endAccess();
      sub_1A2C73F50(v161, type metadata accessor for SubscribedActivity);
      v72 = v152;
LABEL_37:
      sub_1A2C73F50(v166, type metadata accessor for SubscribedActivity);
    }
  }

LABEL_72:
  v130 = v159;
  v131 = v174;
  v132 = swift_allocObject();
  v132[2] = v131;
  v132[3] = v130;
  v133 = v141;
  v134 = v142;
  v132[4] = v141;
  v132[5] = v134;
  v172 = sub_1A2C63B08;
  v173 = v132;
  aBlock = MEMORY[0x1E69E9820];
  v169 = 1107296256;
  v170 = sub_1A2C5E5B8;
  v171 = &block_descriptor;
  v135 = _Block_copy(&aBlock);

  v136 = v130;
  sub_1A2C63A44(v133, v134);
  v137 = v143;
  sub_1A2D082E4();
  v167 = MEMORY[0x1E69E7CC0];
  sub_1A2C586F0(&qword_1ED709AD0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C56A78(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40, MEMORY[0x1E69E6328]);
  v138 = v145;
  v139 = v148;
  sub_1A2D08804();
  MEMORY[0x1A58E43D0](0, v137, v138, v135);
  _Block_release(v135);
  (*(v147 + 8))(v138, v139);
  (*(v144 + 8))(v137, v146);
}

uint64_t sub_1A2C6398C()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2C639DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A2C63A44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1A2C63A54()
{
  result = qword_1ED709138;
  if (!qword_1ED709138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0A0190, &qword_1A2D0A890);
    sub_1A2C586F0(&qword_1ED709280, type metadata accessor for SubscribedActivity, &protocol conformance descriptor for SubscribedActivity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709138);
  }

  return result;
}

uint64_t sub_1A2C63B14(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v7 = sub_1A2D08094();
  __swift_project_value_buffer(v7, qword_1ED709870);

  v8 = sub_1A2D08074();
  v9 = sub_1A2D086A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    type metadata accessor for SubscribedActivity(0);
    v12 = sub_1A2D083A4();
    v14 = sub_1A2C55558(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1A2C51000, v8, v9, "Sending activity changes: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1A58E5180](v11, -1, -1);
    MEMORY[0x1A58E5180](v10, -1, -1);
  }

  v16 = a1;
  result = sub_1A2D08124();
  if (a3)
  {

    a3(0);
    return sub_1A2C80A04(a3, a4);
  }

  return result;
}

unint64_t sub_1A2C63CE0()
{
  result = qword_1ED708EF8;
  if (!qword_1ED708EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    sub_1A2C586F0(qword_1ED709038, type metadata accessor for ActivityDescriptorContentState, &protocol conformance descriptor for ActivityDescriptorContentState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708EF8);
  }

  return result;
}

uint64_t sub_1A2C63DF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0378, &qword_1A2D0AA90);
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v27 - v3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0400, &qword_1A2D0AAE8);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v27 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
  MEMORY[0x1EEE9AC00](v35);
  v6 = (&v27 - v5);
  v7 = *a1;
  v37 = MEMORY[0x1E69E7CC0];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v36 = v7;

  for (i = 0; v11; i = v14)
  {
    v14 = i;
LABEL_8:
    v15 = __clz(__rbit64(v11)) | (v14 << 6);
    v16 = *(v36 + 56);
    v17 = (*(v36 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = type metadata accessor for SubscribedActivity(0);
    sub_1A2C7BFE4(v16 + *(*(v20 - 8) + 72) * v15, v6 + *(v35 + 48), type metadata accessor for SubscribedActivity);
    *v6 = v19;
    v6[1] = v18;

    sub_1A2C7D7C0(&v37, v6);
    v11 &= v11 - 1;
    sub_1A2C54E38(v6, &qword_1EB0A02D8, &qword_1A2D0AA38);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
      v21 = v29;
      sub_1A2D081D4();
      v22 = v28;
      v23 = v33;
      sub_1A2D081C4();
      (*(v31 + 8))(v21, v23);
      sub_1A2C56A78(&unk_1ED708EC8, &unk_1EB0A0400, &qword_1A2D0AAE8, MEMORY[0x1E695C0C8]);
      v24 = v32;
      v25 = sub_1A2D081F4();
      result = (*(v30 + 8))(v22, v24);
      *v34 = v25;
      return result;
    }

    v11 = *(v8 + 8 * v14);
    ++i;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_1A2C54E38(v6, &qword_1EB0A02D8, &qword_1A2D0AA38);

  __break(1u);
  return result;
}

double sub_1A2C641E0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void sub_1A2C641EC(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0378, &qword_1A2D0AA90);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v30 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0380, &qword_1A2D0AA98);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - v6;
  v7 = type metadata accessor for ActivityDescriptorContentState(0);
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
      sub_1A2C7BFE4(v14 + v17 + v18 * v15, v13, type metadata accessor for ActivityDescriptorContentState);
      v19 = a2[1];
      v40 = *a2;
      v41 = v19;
      v42 = a2[2];
      v43 = *(a2 + 6);
      ActivityPredicate.matches(descriptor:)(v13);
      if (v20)
      {
        sub_1A2C725C0(v13, v10, type metadata accessor for ActivityDescriptorContentState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A2C7E858(0, *(v16 + 16) + 1, 1);
          v16 = v44;
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1A2C7E858((v22 > 1), v23 + 1, 1);
          v16 = v44;
        }

        *(v16 + 16) = v23 + 1;
        v24 = v16 + v17 + v23 * v18;
        v10 = v37;
        sub_1A2C725C0(v37, v24, type metadata accessor for ActivityDescriptorContentState);
        v8 = v38;
      }

      else
      {
        sub_1A2C73F50(v13, type metadata accessor for ActivityDescriptorContentState);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    v25 = v30;
    sub_1A2D081D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
    v26 = v31;
    v27 = v34;
    sub_1A2D081C4();
    (*(v32 + 8))(v25, v27);
    sub_1A2C56A78(&qword_1ED708ED8, &unk_1EB0A0380, &qword_1A2D0AA98, MEMORY[0x1E695C0C8]);
    v28 = v35;
    v29 = sub_1A2D081F4();
    (*(v33 + 8))(v26, v28);
    *v36 = v29;
  }
}

uint64_t sub_1A2C64638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A2C5E3C4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1A2C64708(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1A2C54E38(a1, &qword_1EB0A0698, &unk_1A2D0B770);
    sub_1A2CA8CA8(a2, a3, v9);

    return sub_1A2C54E38(v9, &qword_1EB0A0698, &unk_1A2D0B770);
  }

  return result;
}

void sub_1A2C64708(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A2C64868(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A2CB3F60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A2C64940(v16, a4 & 1);
    v11 = sub_1A2C64868(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1A2D08B84();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1A2C5E3C4(a1, v22);
  }

  else
  {
    sub_1A2C64CBC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1A2C64868(uint64_t a1, uint64_t a2)
{
  sub_1A2D08C14();
  sub_1A2D08484();
  v4 = sub_1A2D08C54();

  return sub_1A2C64C04(a1, a2, v4);
}

uint64_t sub_1A2C648E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A2C64DD8(v2);
  }

  return result;
}

uint64_t sub_1A2C64940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A8, &unk_1A2D0D100);
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1A2C5E3C4(v24, v34);
      }

      else
      {
        sub_1A2C53CD8(v24, v34);
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
      result = sub_1A2C5E3C4(v34, *(v7 + 56) + 40 * v15);
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

unint64_t sub_1A2C64C04(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A2D08B34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A2C64CBC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A2C5E3C4(a4, a5[7] + 40 * a1);
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

uint64_t sub_1A2C64D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Activity(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A2D08154();
  swift_getWitnessTable();
  return sub_1A2D081F4();
}

uint64_t sub_1A2C64DD8(uint64_t a1)
{
  v3 = *(v1[9] + 16);

  os_unfair_lock_lock(v3);
  sub_1A2C64E80(a1, v1);
  os_unfair_lock_unlock(v3);
}

uint64_t Activity.ActivityUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  type metadata accessor for Activity(255, *(a1 + 16), *(a1 + 24), a2);
  sub_1A2D08054();
  result = sub_1A2D08024();
  *a3 = result;
  return result;
}

uint64_t sub_1A2C64E80(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v30 = type metadata accessor for ActivityDescriptorContentState(0);
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v26 = a1;
    v9 = a1 + v8;
    swift_beginAccess();
    v33 = *(v4 + 72);
    v28 = "isher";
    *&v10 = 136446978;
    v27 = v10;
    v29 = v3;
    do
    {
      sub_1A2C7C04C(v9, v6, type metadata accessor for ActivityDescriptorContentState);
      v11 = v6[1];
      v34[0] = *v6;
      v34[1] = v11;
      v12 = *(v3 + 80);
      v31 = *(v3 + 88);
      v32 = v12;
      type metadata accessor for Activity(0, v12, v31, v13);

      sub_1A2D083D4();

      if (v34[2])
      {

        sub_1A2C95A6C(v6);
      }

      else
      {
        v14 = *(v30 + 28);
        LOBYTE(v34[0]) = *(v6 + *(v30 + 20));
        sub_1A2C7F36C(v6, v6 + v14, v34);
      }

      sub_1A2C73FB0(v6, type metadata accessor for ActivityDescriptorContentState);
      v9 += v33;
      --v7;
    }

    while (v7);
    a1 = v26;
    v16 = v31;
    v15 = v32;
  }

  else
  {
    v15 = *(v3 + 80);
    v16 = *(v3 + 88);
  }

  v34[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
  type metadata accessor for Activity(0, v15, v16, v17);
  sub_1A2C56A78(&qword_1ED708D70, &unk_1EB0A0200, &unk_1A2D0A8E0, MEMORY[0x1E69E6328]);
  v18 = sub_1A2D084C4();
  sub_1A2C65934(a1);
  if (sub_1A2D085C4())
  {
    v19 = 4;
    do
    {
      v20 = v19 - 4;
      v21 = sub_1A2D085A4();
      sub_1A2D08574();
      if (v21)
      {
        v22 = *(v18 + 8 * v19);

        v23 = v19 - 3;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v22 = sub_1A2D08874();
        v23 = v19 - 3;
        if (__OFADD__(v20, 1))
        {
LABEL_17:
          __break(1u);
        }
      }

      v34[0] = v22;

      sub_1A2D08124();

      ++v19;
    }

    while (v23 != sub_1A2D085C4());
  }
}

uint64_t sub_1A2C6556C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDescriptor(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 251)
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  else
  {
    v11 = type metadata accessor for OpaqueActivityContent(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A2C656A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A2D07F94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2C65758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDescriptor(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 251)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for OpaqueActivityContent(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A2C65888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A2D07F94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void sub_1A2C65934(uint64_t a1)
{
  v2 = v1;
  v35 = *v2;
  v4 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ActivityDescriptorContentState(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(v2[9] + 16));
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    swift_beginAccess();
    v34 = *(v8 + 72);
    *&v13 = 136446466;
    v30 = v13;
    v33 = v2;
    do
    {
      sub_1A2C7C04C(v12, v10, type metadata accessor for ActivityDescriptorContentState);
      sub_1A2C7C04C(v10, v6, type metadata accessor for ActivityDescriptor);
      sub_1A2C73FB0(v10, type metadata accessor for ActivityDescriptorContentState);
      v15 = *v6;
      v16 = v6[1];

      sub_1A2C73FB0(v6, type metadata accessor for ActivityDescriptor);
      v36[0] = v15;
      v36[1] = v16;
      type metadata accessor for Activity(0, *(v35 + 80), *(v35 + 88), v17);

      sub_1A2D083D4();

      v18 = v37;
      if (v37)
      {
        sub_1A2C8081C();
        if (LOBYTE(v36[0]) == 3)
        {
          if (qword_1ED708BB8 != -1)
          {
            swift_once();
          }

          v19 = sub_1A2D08094();
          __swift_project_value_buffer(v19, qword_1ED708BC0);

          v20 = sub_1A2D08074();
          v21 = sub_1A2D086A4();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v36[0] = v32;
            *v22 = v30;
            v31 = v21;
            v23 = v33[2];
            v24 = v33[3];

            v25 = sub_1A2C55558(v23, v24, v36);

            *(v22 + 4) = v25;
            *(v22 + 12) = 2082;
            v26 = *(v18 + 16);
            v27 = *(v18 + 24);

            v28 = sub_1A2C55558(v26, v27, v36);

            *(v22 + 14) = v28;
            _os_log_impl(&dword_1A2C51000, v20, v31, "[%{public}s] Removing dismissed activity: %{public}s", v22, 0x16u);
            v29 = v32;
            swift_arrayDestroy();
            MEMORY[0x1A58E5180](v29, -1, -1);
            MEMORY[0x1A58E5180](v22, -1, -1);
          }

          v14 = *(v18 + 16);
          v38 = *(v18 + 24);
          v39 = 0;
          v37 = v14;
          swift_beginAccess();
          sub_1A2D083C4();

          sub_1A2D083E4();
          swift_endAccess();
        }
      }

      v12 += v34;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1A2C65DBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A2CCBAEC;

  return Activity.ActivityUpdates.Iterator.next()();
}

uint64_t Activity.ActivityUpdates.Iterator.next()()
{
  v3 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A2CCB9D8;

  return v3(v0 + 16);
}

uint64_t ActivityContent.init(state:staleDate:relevanceScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = type metadata accessor for ActivityContent(0, v17);
  result = sub_1A2C639DC(a2, a7 + *(v15 + 52), &qword_1EB0A0E28, &unk_1A2D0EC10);
  *(a7 + *(v15 + 56)) = a8;
  return result;
}

uint64_t static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(char *a1, uint64_t a2, __int128 *a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v71 = a8;
  v72 = a7;
  LODWORD(v67) = a6;
  v69 = a5;
  v68 = a4;
  v66 = a2;
  v63 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v59 - v13;
  v14 = sub_1A2D07F94();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v10 + 80);
  v16 = *(v10 + 88);
  v74 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  *&v78 = AssociatedTypeWitness;
  *(&v78 + 1) = AssociatedConformanceWitness;
  v65 = v20;
  v79 = v20;
  v80 = v21;
  v64 = v21;
  v22 = type metadata accessor for ActivityContent(0, &v78);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v59 - v24;
  v25 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ActivityRequest(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = (&v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = *a3;
  v82 = *(a3 + 2);
  if (*(v81 + 16))
  {
    v60 = a10;
    v61 = a9;
    v32 = *(v25 + 16);
    v62 = v28;
    v33 = v63;
    v63 = v31;
    v32(v28, v33, v17);
    ActivityAttributesType.init<A>(from:)(v77);
    v76[0] = v77[0];
    v76[1] = v77[1];
    (*(v23 + 16))(v83, v66, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    v34 = AssociatedConformanceWitness;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v36 = v68;
    v37 = v69;
    *(inited + 40) = v68;
    *(inited + 48) = v37;
    v38 = v67 & 1;
    *(inited + 56) = v67 & 1;
    sub_1A2C66A94(v36, v37, v38);
    v69 = sub_1A2C66AAC(inited);
    swift_setDeallocating();
    sub_1A2C54E38(inited + 32, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v68 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v78 = v81;
    v79 = v82;
    sub_1A2C66F58(&v81, v75);
    v39 = *(v16 + 8);
    v40 = *(v16 + 16);
    v41 = v72;

    v42 = v70;
    v67 = v16;
    v43 = v34;
    v44 = v65;
    v45 = v64;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v17, v46);
    v58 = v44;
    v47 = v63;
    v48 = v73;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v62, v76, v83, v69, v68, &v78, v41, v71 & 1, v63, v61 & 1, v60 & 1, 0, 0, 0, 4u, v42, 0, 0, v17, AssociatedTypeWitness, v39, v40, v43, v58, v45);
    if (v48)
    {
      v49 = v74;
      sub_1A2CC6E68(v48);
      swift_willThrow();
    }

    else
    {
      v54 = v67;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for AlertConfiguration(0);
      v56 = v59;
      (*(*(v55 - 8) + 56))(v59, 1, 1, v55);
      v49 = sub_1A2C67380(v47, v56, v17, v54);
      sub_1A2C54E38(v56, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v47, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v50 = sub_1A2D08094();
    __swift_project_value_buffer(v50, qword_1EB09F570);
    v51 = sub_1A2D08074();
    v49 = sub_1A2D08684();
    if (os_log_type_enabled(v51, v49))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1A2C51000, v51, v49, "Cannot specify presentationOptions with no visual destinations", v52, 2u);
      MEMORY[0x1A58E5180](v52, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v53 = xmmword_1A2D0EBF0;
    *(v53 + 16) = 0u;
    *(v53 + 32) = 0u;
    *(v53 + 48) = 0u;
    *(v53 + 64) = 0;
    swift_willThrow();
  }

  return v49;
}

uint64_t type metadata accessor for ActivityRequest(uint64_t a1)
{
  result = qword_1ED7096A0;
  if (!qword_1ED7096A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivityUIDismissalPolicy(uint64_t a1)
{
  result = qword_1ED709478;
  if (!qword_1ED709478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2C66840(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CF8, &qword_1A2D0DFC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6697C();
  sub_1A2D08C74();
  sub_1A2D08AB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A2C6697C()
{
  result = qword_1ED709B88;
  if (!qword_1ED709B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709B88);
  }

  return result;
}

unint64_t sub_1A2C669D0()
{
  result = qword_1ED7093B8[0];
  if (!qword_1ED7093B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7093B8);
  }

  return result;
}

unint64_t sub_1A2C66A24()
{
  result = qword_1ED708CC0;
  if (!qword_1ED708CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CC0);
  }

  return result;
}

double sub_1A2C66A98(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1A2C66AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0788, &qword_1A2D0BDD0);
    v3 = sub_1A2D08994();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1A2C66A94(v6, v7, *i);
      result = sub_1A2C66BC0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1A2C66BC0(uint64_t a1)
{
  v1 = a1;
  sub_1A2D08C14();
  sub_1A2D08484();

  v2 = sub_1A2D08C54();

  return sub_1A2C66CF4(v1, v2);
}

unint64_t sub_1A2C66CF4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v10 = 0x63536C6C7566;
          goto LABEL_18;
        }

        if (v7 == 4)
        {
          v8 = 0x746E6569626D61;
        }

        else
        {
          v8 = 0x79616C50726163;
        }

        v9 = 0xE700000000000000;
      }

      else
      {
        if (!*(*(v2 + 48) + v4))
        {
          v10 = 0x63736B636F6CLL;
LABEL_18:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
          v9 = 0xEA00000000006E65;
          goto LABEL_19;
        }

        if (v7 == 1)
        {
          v8 = 0x72656E6E6162;
        }

        else
        {
          v8 = 0x70416D6574737973;
        }

        if (v7 == 1)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xEE00657275747265;
        }
      }

LABEL_19:
      v11 = 0x79616C50726163;
      if (v6 == 4)
      {
        v11 = 0x746E6569626D61;
      }

      v12 = 0xE700000000000000;
      if (v6 == 3)
      {
        v11 = 0x657263536C6C7566;
        v12 = 0xEA00000000006E65;
      }

      v13 = 0x70416D6574737973;
      if (v6 == 1)
      {
        v13 = 0x72656E6E6162;
      }

      v14 = 0xEE00657275747265;
      if (v6 == 1)
      {
        v14 = 0xE600000000000000;
      }

      if (!v6)
      {
        v13 = 0x657263736B636F6CLL;
        v14 = 0xEA00000000006E65;
      }

      if (v6 <= 2)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v6 <= 2)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v8 == v15 && v9 == v16)
      {

        return v4;
      }

      v17 = sub_1A2D08B34();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t OpaqueActivityContent.init<A>(encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v13 = type metadata accessor for OpaqueActivityContent(0);
  v14 = *(v13 + 20);
  v15 = sub_1A2D07F94();
  (*(*(v15 - 8) + 56))(&a6[v14], 1, 1, v15);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v16 = type metadata accessor for ActivityContent(0, v22);
  sub_1A2C851E0(a1 + *(v16 + 52), &a6[v14]);
  *&a6[*(v13 + 24)] = *(a1 + *(v16 + 56));
  sub_1A2D07D84();
  swift_allocObject();
  sub_1A2D07D74();
  v17 = sub_1A2D07D64();
  if (v6)
  {
    (*(*(v16 - 8) + 8))(a1, v16);

    return sub_1A2C54E38(&a6[v14], &qword_1EB0A0E28, &unk_1A2D0EC10);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    (*(*(v16 - 8) + 8))(a1, v16);

    *a6 = v20;
    *(a6 + 1) = v21;
  }

  return result;
}

uint64_t sub_1A2C67178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C671E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C67248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C672C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A2D07EF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void *sub_1A2C67380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v8 = sub_1A2D07F94();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityDescriptor(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v24 = *(v4 + 24);
  v25 = a1;
  v26 = a2;
  v15 = v24;
  sub_1A2D08704();

  if (!v5)
  {
    v16 = type metadata accessor for ActivityRequest(0);
    _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
    v17 = sub_1A2D07F64();
    (v9[1])(v11, v8);
    v18 = *(v16 + 28);
    v27 = (v17 & 1) == 0;
    v9 = sub_1A2C838B4(v14, a1 + v18, &v27, v21, v22);
    sub_1A2C74010(v14, type metadata accessor for ActivityDescriptor);
  }

  return v9;
}

uint64_t sub_1A2C6758C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v4 = v3;
  v128 = a2;
  v131 = a1;
  v121 = a3;
  v135 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v104 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v123 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v129 = (&v104 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v104 - v15;
  v127 = type metadata accessor for AlertConfiguration(0);
  v17 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for ActivityRequest(0);
  v119 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v120 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - v21;
  v23 = sub_1A2D08344();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = (&v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v4 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23, v25);
  v29 = v28;
  LOBYTE(v28) = sub_1A2D08364();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_4;
  }

  v30 = sub_1A2C68B54();
  if (!v30)
  {
    sub_1A2CA1590();
    swift_allocError();
    *v41 = xmmword_1A2D0AC20;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    *(v41 + 48) = 0u;
    *(v41 + 64) = 0;
    return swift_willThrow();
  }

  v125 = v30;
  if (qword_1ED709838 != -1)
  {
    goto LABEL_22;
  }

LABEL_4:
  v31 = sub_1A2D08094();
  __swift_project_value_buffer(v31, qword_1ED709840);
  sub_1A2C68E98(v131, v22, type metadata accessor for ActivityRequest);
  v32 = sub_1A2D08074();
  v33 = sub_1A2D086A4();
  v34 = os_log_type_enabled(v32, v33);
  v118 = v4;
  v117 = v7;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v133 = v36;
    *v35 = 136446210;
    v37 = ActivityRequest.description.getter();
    v39 = v38;
    sub_1A2C69F24(v22, type metadata accessor for ActivityRequest);
    v40 = sub_1A2C55558(v37, v39, &v133);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1A2C51000, v32, v33, "Requesting an activity: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1A58E5180](v36, -1, -1);
    MEMORY[0x1A58E5180](v35, -1, -1);
  }

  else
  {

    sub_1A2C69F24(v22, type metadata accessor for ActivityRequest);
  }

  v43 = sub_1A2D07EB4();
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C5AD40(&qword_1ED708D38, type metadata accessor for ActivityRequest, &protocol conformance descriptor for ActivityRequest);
  v44 = v126;
  v45 = sub_1A2D07E94();
  if (v44)
  {
    goto LABEL_24;
  }

  v47 = v45;
  v48 = v46;
  v49 = sub_1A2D07F24();
  sub_1A2C55840(v47, v48);

  v50 = sub_1A2D07F44();
  v52 = v51;

  sub_1A2C6BD18(v128, v16, &qword_1EB0A04D0, &unk_1A2D15640);
  if ((*(v17 + 48))(v16, 1, v127) == 1)
  {
    sub_1A2C54E38(v16, &qword_1EB0A04D0, &unk_1A2D15640);
    v53 = sub_1A2D07F24();
    v54 = 0;
    v55 = 0;
    v128 = 0xF000000000000000;
    v56 = v125;
    v57 = v129;
  }

  else
  {
    v95 = v16;
    v96 = v124;
    sub_1A2C7C528(v95, v124, type metadata accessor for AlertConfiguration);
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2C5AD40(&qword_1EB09F308, type metadata accessor for AlertConfiguration, &protocol conformance descriptor for AlertConfiguration);
    v97 = sub_1A2D07E94();
    v56 = v125;
    v57 = v129;
    v54 = v97;
    v100 = v96;
    v101 = v98;
    sub_1A2C69F24(v100, type metadata accessor for AlertConfiguration);

    v102 = sub_1A2D07F24();
    v103 = v101;
    v53 = v102;
    v128 = v103;
    if (v103 >> 60 == 15)
    {
      v55 = 0;
    }

    else
    {
      v55 = sub_1A2D07F24();
    }
  }

  *&v133 = 0;
  v58 = [v56 requestActivityWithRequest:v53 alertConfiguration:v55 error:&v133];

  v59 = v133;
  if (!v58)
  {
    v99 = v59;
    sub_1A2D07ED4();

    swift_willThrow();
    sub_1A2C55840(v50, v52);
    swift_unknownObjectRelease();
    return sub_1A2C5DE40(v54, v128);
  }

  v116 = v54;
  v124 = v50;
  v126 = v52;
  v60 = sub_1A2D07F44();
  v62 = v61;

  v114 = v60;
  v115 = v62;
  v63 = sub_1A2D07F24();
  v64 = type metadata accessor for ActivityDescriptor(0);
  v65 = *(v64 - 8);
  v66 = v122;
  v129 = *(v65 + 56);
  (v129)(v122, 1, 1, v64);
  sub_1A2D07E84();
  swift_allocObject();
  sub_1A2D07E74();
  v113 = v63;
  v33 = sub_1A2D07F44();
  v43 = v67;
  sub_1A2C5AD40(&qword_1ED709430, type metadata accessor for ActivityDescriptor, &protocol conformance descriptor for ActivityDescriptor);
  sub_1A2D07E64();
  v127 = 0;
  sub_1A2C54E38(v66, &qword_1EB0A0210, &unk_1A2D0ACA0);
  sub_1A2C55840(v33, v43);

  (v129)(v57, 0, 1, v64);
  sub_1A2C639DC(v57, v66, &qword_1EB0A0210, &unk_1A2D0ACA0);
  v68 = v123;
  sub_1A2C6BD18(v66, v123, &qword_1EB0A0210, &unk_1A2D0ACA0);
  if ((*(v65 + 48))(v68, 1, v64) == 1)
  {
    __break(1u);
LABEL_24:
    swift_unexpectedError();
    __break(1u);
    sub_1A2C55840(v33, v43);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_1A2C54E38(v66, &qword_1EB0A0210, &unk_1A2D0ACA0);
  v69 = v121;
  sub_1A2C7C528(v68, v121, type metadata accessor for ActivityDescriptor);

  v71 = v130;
  v70 = v131;
  if (v131[*(v130 + 48)] == 1)
  {
    v72 = *v69;
    v122 = v69[1];
    v123 = v72;
    v73 = *(v131 + 3);
    v109 = *(v131 + 2);
    v110 = v73;
    v111 = *(v131 + 4);
    v74 = v111;
    v129 = *(v131 + 5);
    v75 = v120;
    sub_1A2C68E98(&v131[*(v130 + 28)], &v120[*(v130 + 28)], type metadata accessor for OpaqueActivityContent);
    v76 = v71[9];
    v112 = *&v70[v71[8]];
    v77 = v112;
    v113 = *&v70[v76];
    v78 = v113;
    v79 = v71[11];
    v80 = &v70[v71[10]];
    v133 = *v80;
    v134 = *(v80 + 2);
    v121 = *&v70[v79];
    v81 = v121;
    v82 = v71[14];
    v106 = v70[v71[13]];
    v107 = v70[v82];
    v83 = v71[16];
    v105 = v70[v71[15]];
    v108 = v70[v83];
    v84 = v71[17];
    v85 = sub_1A2D07F94();
    (*(*(v85 - 8) + 16))(&v75[v84], &v70[v84], v85);
    v86 = &v70[v71[18]];
    v87 = *v86;
    v88 = *(v86 + 1);
    *(v75 + 2) = v109;
    *(v75 + 3) = v73;
    v89 = v129;
    *(v75 + 4) = v74;
    *(v75 + 5) = v89;
    *&v75[v71[8]] = v77;
    *&v75[v71[9]] = v78;
    v90 = &v75[v71[10]];
    *(v90 + 2) = v134;
    *v90 = v133;
    *&v75[v71[11]] = v81;
    v75[v71[12]] = 1;
    v75[v71[13]] = v106;
    v75[v71[14]] = v107;
    v75[v71[15]] = v105;
    v92 = v122;
    v91 = v123;
    *v75 = v123;
    *(v75 + 1) = v92;
    v75[v71[16]] = v108;
    v93 = &v75[v71[18]];
    *v93 = v87;
    *(v93 + 1) = v88;
    v94 = v117;
    sub_1A2C68E98(v75, v117, type metadata accessor for ActivityRequest);
    (*(v119 + 56))(v94, 0, 1, v71);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1A2C5E63C(v111, v129);

    sub_1A2C66F58(&v133, v132);

    sub_1A2C834FC(v94, v91, v92);
    swift_endAccess();
    sub_1A2C55840(v124, v126);
    sub_1A2C55840(v114, v115);
    sub_1A2C5DE40(v116, v128);
    swift_unknownObjectRelease();
    return sub_1A2C69F24(v75, type metadata accessor for ActivityRequest);
  }

  else
  {
    sub_1A2C55840(v124, v126);
    sub_1A2C55840(v114, v115);
    swift_unknownObjectRelease();
    return sub_1A2C5DE40(v116, v128);
  }
}

uint64_t SceneTarget.Request.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1760, "ʫ");
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1768, &qword_1A2D135D8);
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1770, &qword_1A2D135E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6D588();
  sub_1A2D08C74();
  v15 = (v12 + 8);
  if (v21)
  {
    LOBYTE(v24) = 1;
    sub_1A2C6D5DC();
    sub_1A2D08A84();
    v24 = v22;
    v25 = v23;
    sub_1A2C6D630();
    v16 = v20;
    sub_1A2D08AE4();
    (*(v19 + 8))(v7, v16);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_1A2CE9948();
    sub_1A2D08A84();
    v24 = v22;
    v25 = v23;
    sub_1A2C6D630();
    sub_1A2D08AE4();
    (*(v18 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t ProcessDescriptor.Request.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17A8, &qword_1A2D13620);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v23 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17B0, &qword_1A2D13628);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17B8, &qword_1A2D13630);
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17C0, &qword_1A2D13638);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6AC28();
  v15 = v27;
  sub_1A2D08C74();
  if (!v15)
  {
    v28 = 0;
    sub_1A2CE9D78();
    sub_1A2D08A84();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_1A2CE9D24();
    sub_1A2D08A84();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_1A2C6AC7C();
  v17 = v23;
  sub_1A2D08A84();
  v18 = v26;
  sub_1A2D08AB4();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1A2C68B54()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
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

  sub_1A2C58800();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection);
  if (!v8)
  {
    if (qword_1ED709838 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1ED709840);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "ActivityInputClient: Failed to establish a connection", v11, 2u);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0500, &unk_1A2D0ACB0);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1ED709838 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1ED709840);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "ActivityInputClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_1A2C68E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C68F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityRequest.description.getter()
{
  v1 = type metadata accessor for OpaqueActivityContent(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(&v70, "Identifier: ");
  BYTE13(v70) = 0;
  HIWORD(v70) = -5120;
  v4 = v0[1];
  *&v68 = *v0;
  *(&v68 + 1) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B0, &qword_1A2D14A10);
  v5 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v5);

  v62 = *(&v70 + 1);
  v63 = v70;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v70 = 0xD000000000000011;
  *(&v70 + 1) = 0x80000001A2D1A330;
  v6 = v0[2];
  v7 = v0[3];
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v68 = 0xD000000000000011;
  *(&v68 + 1) = 0x80000001A2D1A330;
  MEMORY[0x1A58E4150](v6, v7);
  MEMORY[0x1A58E4150](v68, *(&v68 + 1));

  v60 = *(&v70 + 1);
  v61 = v70;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v70 = 0xD000000000000024;
  *(&v70 + 1) = 0x80000001A2D1AF10;
  v8 = type metadata accessor for ActivityRequest(0);
  sub_1A2C69790(v0 + v8[7], v3, type metadata accessor for OpaqueActivityContent);
  v9 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v9);

  v58 = *(&v70 + 1);
  v59 = v70;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v70 = 0xD000000000000016;
  *(&v70 + 1) = 0x80000001A2D1AF40;
  sub_1A2C5604C();
  v10 = sub_1A2D083A4();
  MEMORY[0x1A58E4150](v10);

  v56 = *(&v70 + 1);
  v57 = v70;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v70 = 0xD00000000000001CLL;
  *(&v70 + 1) = 0x80000001A2D1AF60;
  v11 = sub_1A2D083A4();
  MEMORY[0x1A58E4150](v11);

  v54 = *(&v70 + 1);
  v55 = v70;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  v66 = 0xD000000000000016;
  v67 = 0x80000001A2D1AF80;
  v12 = v0 + v8[10];
  v68 = *v12;
  v69 = *(v12 + 2);
  v64 = *v12;
  v65 = *(v12 + 2);
  sub_1A2C66F58(&v68, &v70);
  v13 = ActivityPresentationOptions.description.getter();
  v15 = v14;
  v70 = v64;
  v71 = v65;
  sub_1A2C69EAC(&v70);
  MEMORY[0x1A58E4150](v13, v15);

  v53 = v66;
  v52 = v67;
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v64 = 0xD000000000000019;
  *(&v64 + 1) = 0x80000001A2D1AFA0;
  v16 = MEMORY[0x1A58E4220](*(v0 + v8[11]), &type metadata for ActivityContentSource.Request);
  MEMORY[0x1A58E4150](v16);

  v50 = *(&v64 + 1);
  v51 = v64;
  *&v64 = 0x6172656D65687045;
  *(&v64 + 1) = 0xEB00000000203A6CLL;
  if (*(v0 + v8[12]))
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (*(v0 + v8[12]))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v17, v18);

  v48 = *(&v64 + 1);
  v49 = v64;
  *&v64 = 0x65646E756F626E55;
  *(&v64 + 1) = 0xEB00000000203A64;
  if (*(v0 + v8[13]))
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (*(v0 + v8[13]))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v19, v20);

  v46 = *(&v64 + 1);
  v47 = v64;
  *&v64 = 0x7261746E656D6F4DLL;
  *(&v64 + 1) = 0xEB00000000203A79;
  if (*(v0 + v8[14]))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v0 + v8[14]))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v21, v22);

  v44 = *(&v64 + 1);
  v45 = v64;
  *&v64 = 0x6E6174726F706D49;
  *(&v64 + 1) = 0xEB00000000203A74;
  if (*(v0 + v8[15]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v0 + v8[15]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v23, v24);

  v25 = v64;
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v64 = 0xD000000000000012;
  *(&v64 + 1) = 0x80000001A2D1AFC0;
  LOBYTE(v66) = *(v0 + v8[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
  v26 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v26);

  v27 = v64;
  strcpy(&v64, "Start Date: ");
  BYTE13(v64) = 0;
  HIWORD(v64) = -5120;
  sub_1A2D07F94();
  sub_1A2C69EDC(&qword_1EB09F690, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v28 = sub_1A2D08B04();
  MEMORY[0x1A58E4150](v28);

  v29 = v64;
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v64 = 0xD00000000000001BLL;
  *(&v64 + 1) = 0x80000001A2D1AFE0;

  MEMORY[0x1A58E4150](v29, *(&v29 + 1));

  v30 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1A2D14A00;
  v32 = v60;
  *(v31 + 32) = v61;
  *(v31 + 40) = v32;
  v33 = v58;
  *(v31 + 48) = v59;
  *(v31 + 56) = v33;
  v34 = v56;
  *(v31 + 64) = v57;
  *(v31 + 72) = v34;
  v35 = v54;
  *(v31 + 80) = v55;
  *(v31 + 88) = v35;
  v36 = v52;
  *(v31 + 96) = v53;
  *(v31 + 104) = v36;
  v37 = v50;
  *(v31 + 112) = v51;
  *(v31 + 120) = v37;
  v38 = v48;
  *(v31 + 128) = v49;
  *(v31 + 136) = v38;
  v39 = v46;
  *(v31 + 144) = v47;
  *(v31 + 152) = v39;
  v40 = v62;
  *(v31 + 160) = v63;
  *(v31 + 168) = v40;
  v41 = v44;
  *(v31 + 176) = v45;
  *(v31 + 184) = v41;
  *(v31 + 192) = v25;
  *(v31 + 208) = v27;
  *(v31 + 224) = v29;
  *(v31 + 240) = v30;
  v42 = MEMORY[0x1A58E4220]();

  return v42;
}

uint64_t sub_1A2C69728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C69790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A2C6980C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t SceneTarget.Request.debugDescription.getter(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_1A2D08864();

    v18 = 0xD000000000000015;
    v5 = 0x80000001A2D1AD20;
    if (a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = a2;
    }

    if (a2 == 1)
    {
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 1)
    {
      v8 = 0x80000001A2D1AD00;
    }

    else
    {
      v8 = v5;
    }

    v9 = sub_1A2C66A98(a1, a2);
    MEMORY[0x1A58E4150](v7, v8, v9);

    v10 = 10530;
    v11 = 0xE200000000000000;
  }

  else
  {
    sub_1A2D08864();

    v18 = 0xD00000000000002FLL;
    v12 = 0x80000001A2D1AD20;
    if (a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (a2)
    {
      v12 = a2;
    }

    if (a2 == 1)
    {
      v14 = 0xD00000000000001FLL;
    }

    else
    {
      v14 = v13;
    }

    if (a2 == 1)
    {
      v15 = 0x80000001A2D1AD00;
    }

    else
    {
      v15 = v12;
    }

    v16 = sub_1A2C66A98(a1, a2);
    MEMORY[0x1A58E4150](v14, v15, v16);

    v10 = 41;
    v11 = 0xE100000000000000;
  }

  MEMORY[0x1A58E4150](v10, v11);
  return v18;
}

uint64_t sub_1A2C699F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t ActivityPresentationOptions.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v35 = *(v0 + 11);
  v38 = *(v0 + 12);
  v27 = *(v0 + 14);
  sub_1A2D08864();

  strcpy(v39, "Destinations: ");
  HIBYTE(v39[1]) = -18;
  v5 = MEMORY[0x1A58E4220](v1, &type metadata for ActivityPresentationOptions.ActivityPresentationDestination);
  MEMORY[0x1A58E4150](v5);

  v36 = v39[1];
  v37 = v39[0];
  sub_1A2D08864();

  v39[0] = 0xD000000000000018;
  v39[1] = 0x80000001A2D197B0;
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v6, v7);

  v33 = v39[1];
  v34 = v39[0];
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1A2D08864();
  MEMORY[0x1A58E4150](0xD000000000000038, 0x80000001A2D197D0);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v8, v9);

  v31 = v39[1];
  v32 = v39[0];
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1A2D08864();
  MEMORY[0x1A58E4150](0xD000000000000033, 0x80000001A2D19810);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v10, v11);

  v29 = v39[1];
  v30 = v39[0];
  sub_1A2D08864();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0878, &unk_1A2D0C170);
  v12 = sub_1A2D087D4();
  MEMORY[0x1A58E4150](v12);

  sub_1A2D08864();

  v39[0] = 0xD00000000000001CLL;
  v39[1] = 0x80000001A2D19870;
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v14 = 0x80000001A2D198D0;
      v13 = 0xD000000000000015;
    }

    else
    {
      v14 = 0xEA0000000000736ELL;
      v13 = 0x6F6974704F206F4ELL;
    }
  }

  else
  {
    if (v27)
    {
      v13 = 0xD000000000000011;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (v27)
    {
      v14 = 0x80000001A2D198F0;
    }

    else
    {
      v14 = 0x80000001A2D19910;
    }
  }

  MEMORY[0x1A58E4150](v13, v14);

  v15 = v39[1];
  v28 = v39[0];
  sub_1A2D08864();

  v39[0] = 0xD000000000000019;
  v39[1] = 0x80000001A2D19890;
  if (v35)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v35)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v16, v17);

  v18 = v39[0];
  v19 = v39[1];
  sub_1A2D08864();

  v39[0] = 0xD00000000000001DLL;
  v39[1] = 0x80000001A2D198B0;
  if (v38)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v38)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v20, v21);

  v22 = v39[0];
  v23 = v39[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A2D0C140;
  *(v24 + 32) = v37;
  *(v24 + 40) = v36;
  *(v24 + 48) = v34;
  *(v24 + 56) = v33;
  *(v24 + 64) = v32;
  *(v24 + 72) = v31;
  *(v24 + 80) = v30;
  *(v24 + 88) = v29;
  *(v24 + 96) = 0xD000000000000014;
  *(v24 + 104) = 0x80000001A2D19850;
  *(v24 + 112) = v28;
  *(v24 + 120) = v15;
  *(v24 + 128) = v18;
  *(v24 + 136) = v19;
  *(v24 + 144) = v22;
  *(v24 + 152) = v23;
  v25 = MEMORY[0x1A58E4220]();

  return v25;
}

uint64_t sub_1A2C69EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A2C69F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C69F84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivityRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18D8, &qword_1A2D14A30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6A740();
  sub_1A2D08C74();
  v32 = *v3;
  LOBYTE(v30) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B0, &qword_1A2D14A10);
  sub_1A2C6A794();
  sub_1A2D08AE4();
  if (!v2)
  {
    v9 = *(v3 + 3);
    *&v32 = *(v3 + 2);
    *(&v32 + 1) = v9;
    LOBYTE(v30) = 1;
    sub_1A2C6ABA0();

    sub_1A2D08AE4();

    v10 = *(v3 + 5);
    *&v32 = *(v3 + 4);
    *(&v32 + 1) = v10;
    LOBYTE(v30) = 2;
    sub_1A2C5E63C(v32, v10);
    sub_1A2C669D0();
    sub_1A2D08AE4();
    sub_1A2C55840(v32, *(&v32 + 1));
    v24 = type metadata accessor for ActivityRequest(0);
    LOBYTE(v32) = 3;
    type metadata accessor for OpaqueActivityContent(0);
    sub_1A2C69EDC(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent, &protocol conformance descriptor for OpaqueActivityContent);
    sub_1A2D08AE4();
    v11 = *(v3 + v24[8]);
    v12 = *(v11 + 16);
    v22[0] = v11;
    if (v12)
    {
      v13 = sub_1A2C66BC0(0);
      if (v14)
      {
        v15 = *(v11 + 56) + 24 * v13;
        v16 = *v15;
        v23 = *(v15 + 8);
        v17 = *(v15 + 16);
        sub_1A2C66A94(v16, v23, v17);
        v12 = v23;
LABEL_8:
        v22[1] = v16;
        v23 = v12;
        *&v32 = v16;
        *(&v32 + 1) = v12;
        LOBYTE(v33) = v17;
        LOBYTE(v30) = 4;
        sub_1A2C66A24();
        sub_1A2D08AE4();
        sub_1A2C6AE9C();
        *&v32 = v22[0];
        LOBYTE(v30) = 13;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18C8, &qword_1A2D14A20);
        sub_1A2C6AEA0(&qword_1ED708A50, sub_1A2CAA9F0, sub_1A2C66A24, MEMORY[0x1E69E5E38]);
        v23 = v18;
        sub_1A2D08AE4();
        v35 = *(v3 + v24[9]);
        v34 = 14;
        sub_1A2D08AE4();
        v19 = v24;
        v20 = (v3 + v24[10]);
        v32 = *v20;
        v33 = *(v20 + 2);
        v30 = *v20;
        v31 = *(v20 + 2);
        v29 = 5;
        sub_1A2C66F58(&v32, &v27);
        sub_1A2C6B09C();
        sub_1A2D08AE4();
        v27 = v30;
        v28 = v31;
        sub_1A2C69EAC(&v27);
        *&v25 = *(v3 + v19[11]);
        v26 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18D0, &qword_1A2D14A28);
        sub_1A2C6BCA0(&qword_1ED708B80, sub_1A2CEC5B8, MEMORY[0x1E69E6300]);
        sub_1A2D08AE4();
        LOBYTE(v25) = 7;
        sub_1A2D08AC4();
        LOBYTE(v25) = 8;
        sub_1A2D08AC4();
        LOBYTE(v25) = 9;
        sub_1A2D08AC4();
        LOBYTE(v25) = 10;
        sub_1A2D08AC4();
        LOBYTE(v25) = *(v3 + v24[16]);
        v26 = 11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
        sub_1A2CEC60C();
        sub_1A2D08AE4();
        LOBYTE(v25) = 12;
        sub_1A2D07F94();
        sub_1A2C69EDC(&qword_1ED7093B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
        sub_1A2D08AE4();
        v25 = *(v3 + v24[18]);
        v26 = 15;
        sub_1A2D08AE4();
        return (*(v6 + 8))(v8, v5);
      }

      v16 = 0;
      v12 = 0;
    }

    else
    {
      v16 = 0;
    }

    v17 = 0;
    goto LABEL_8;
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A2C6A740()
{
  result = qword_1ED708D50;
  if (!qword_1ED708D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708D50);
  }

  return result;
}

unint64_t sub_1A2C6A794()
{
  result = qword_1ED709128;
  if (!qword_1ED709128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A18B0, &qword_1A2D14A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709128);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ActivityRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}