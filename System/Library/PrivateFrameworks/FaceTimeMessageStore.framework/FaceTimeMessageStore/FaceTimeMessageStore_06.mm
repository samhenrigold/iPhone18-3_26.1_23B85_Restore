uint64_t sub_1BC821024()
{
  type metadata accessor for FTLocalMessageProperties();
  v1 = static FTLocalMessageProperties.fetchRequest()();
  v2 = sub_1BC7E61F8([v1 setFetchBatchSize_]);
  [v1 setPredicate_];

  v3 = sub_1BC8F8314();
  if (v0)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v4 = sub_1BC8F7734();
    __swift_project_value_buffer(v4, qword_1EDC2B268);
    v5 = v0;
    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F81E4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v0;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BC7A3000, v6, v7, "Got an error while attempting to fetch all local properties: %{public}@", v8, 0xCu);
      sub_1BC7C1744(v9, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
      MEMORY[0x1BFB2AA50](v8, -1, -1);
    }

    swift_willThrow();
  }

  return v3;
}

void sub_1BC821208(void *a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  v3 = a1;
  v16[0] = sub_1BC8F7714();
  v4 = sub_1BC8F81E4();

  if (os_log_type_enabled(v16[0], v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = v16[2];
    v8 = sub_1BC8F83F4();
    v9 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = v16 - v10;
    (*(*(v7 - 1) + 16))(v16 - v10, v16[1], v7);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    v12 = sub_1BC8073F0(v11, v7);
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v15 = sub_1BC7A9A4C(v12, v14, &v17);

    *(v5 + 4) = v15;
    _os_log_impl(&dword_1BC7A3000, v16[0], v4, "Error fetching voicemailIDs in storeDidSave: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BC8214C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1BC8F6D24();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  sub_1BC8F6D04();

  a4(v8);

  v9 = OUTLINED_FUNCTION_79();
  return v10(v9);
}

uint64_t sub_1BC8215A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = swift_task_alloc();
  *(v4 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_1BC821634;

  return sub_1BC810F5C();
}

uint64_t sub_1BC821634()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 72) = v10;
    *v10 = v5;
    v10[1] = sub_1BC821784;

    return sub_1BC810798();
  }
}

uint64_t sub_1BC821784()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC821864()
{
  v34 = v0;
  if (qword_1EDC1E1C0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B250);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = v0[8];
  if (v5)
  {
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = v0[2];
    v10 = v0[3];
    v11 = sub_1BC8F83F4();
    OUTLINED_FUNCTION_0();
    v32 = v6;
    v13 = v12;
    v14 = OUTLINED_FUNCTION_47_3();
    (*(*(v10 - 8) + 16))(v14, v9, v10);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
    v18 = sub_1BC8073F0(v14, v10);
    v20 = v19;
    (*(v13 + 8))(v14, v11);

    v21 = sub_1BC7A9A4C(v18, v20, &v33);

    *(v7 + 4) = v21;
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v22, v23, v24, v25, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v28 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v28);
    v29 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v29);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v30();
}

uint64_t sub_1BC821AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC821ADC, 0, 0);
}

uint64_t sub_1BC821ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v13 = *(v10 + 48);
  v12 = *(v10 + 56);
  v14 = OUTLINED_FUNCTION_114_0();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v13 + 88, *(v13 + 112));
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_16_6();
  v11();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_1BC821BC8(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v114 = a3;
  *(&v100 + 1) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v113 = &v98 - v9;
  v112 = sub_1BC8F71E4();
  v10 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC8F7264();
  v121 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v110 = &v98 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v98 - v18;
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1BC8F7734();
  v20 = __swift_project_value_buffer(v19, qword_1EDC2B268);
  sub_1BC7A5AB4(a2);
  v104 = v20;
  v21 = sub_1BC8F7714();
  v22 = sub_1BC8F8204();
  sub_1BC7B0EFC(a2);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v120 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v123 = v10;
    v124[0] = v25;
    v26 = v25;
    *v24 = 136315138;
    v125 = a2;
    v27 = sub_1BC7A5AB4(a2);
    MessageStoreQuery.description.getter(v27, v28, v29, v30, v31, v32, v33, v34, v98, v99, v100, v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    v36 = v35;
    v122 = v4;
    v37 = a2;
    v39 = v38;
    sub_1BC7B0EFC(v125);
    v40 = sub_1BC7A9A4C(v36, v39, v124);
    a2 = v37;
    v5 = v122;

    *(v24 + 4) = v40;
    _os_log_impl(&dword_1BC7A3000, v21, v22, "MessageStoreManager: Marking messages with query to be deleted: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v41 = v26;
    v10 = v123;
    MEMORY[0x1BFB2AA50](v41, -1, -1);
    MEMORY[0x1BFB2AA50](v24, -1, -1);
  }

  v124[0] = a2;
  v43 = sub_1BC7BC4A4(v42);
  type metadata accessor for FTStoredMessage();
  v44 = sub_1BC8F8314();
  v45 = v116;
  if (v5)
  {
    sub_1BC822660(v5, a2);
    swift_willThrow();

    return;
  }

  v46 = v44;
  *&v100 = 0;
  v47 = sub_1BC7C0454(v44);
  if (v47)
  {
    v49 = v47;
    v99 = v43;
    if (v47 < 1)
    {
      __break(1u);
      return;
    }

    v50 = 0;
    v106 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v120 = v46 & 0xC000000000000001;
    v103 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_analyticsManager;
    v118 = (v121 + 16);
    v119 = v121 + 32;
    v105 = (v10 + 8);
    v107 = (v121 + 8);
    *&v48 = 138543362;
    v101 = v48;
    v122 = MEMORY[0x1E69E7CC0];
    v123 = MEMORY[0x1E69E7CC0];
    v117 = v12;
    v108 = v15;
    v109 = v46;
    v115 = v47;
    do
    {
      if (v120)
      {
        v51 = MEMORY[0x1BFB29A00](v50, v46);
      }

      else
      {
        v51 = *(v46 + 8 * v50 + 32);
      }

      v52 = v51;
      v53 = [v51 recordUUID];
      if (v53)
      {
        v54 = v53;
        sub_1BC8F7244();

        v55 = objc_allocWithZone(type metadata accessor for Message(0));
        v56 = v52;
        LOBYTE(v124[0]) = 1;
        sub_1BC86A9C0(v56, 0x100000000, 0, v57, v58, v59, v60, v61, v98, v99, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107);
        v63 = v62;
        v64 = [v56 messageType];
        v65 = *v118;
        if (v64 == 1)
        {
          v65(v110, v45, v12);
          v66 = v122;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BC7F7144();
            v66 = v91;
          }

          v67 = *(v66 + 16);
          if (v67 >= *(v66 + 24) >> 1)
          {
            sub_1BC7F7144();
            v66 = v92;
          }

          *(v66 + 16) = v67 + 1;
          v68 = v66 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v67;
          v12 = v117;
          (*(v121 + 32))(v68, v110, v117);
        }

        else
        {
          v66 = v122;
        }

        v65(v15, v45, v12);
        v77 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BC7F7144();
          v77 = v89;
        }

        v79 = *(v77 + 16);
        v78 = *(v77 + 24);
        v122 = v66;
        if (v79 >= v78 >> 1)
        {
          sub_1BC7F7144();
          v77 = v90;
        }

        *(v77 + 16) = v79 + 1;
        v80 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v123 = v77;
        (*(v121 + 32))(v77 + v80 + *(v121 + 72) * v79, v15, v12);
        v81 = v111;
        sub_1BC8F71D4();
        v82 = sub_1BC8F7174();
        v83 = *v105;
        v84 = v12;
        v85 = v112;
        (*v105)(v81, v112);
        [v56 setDateDeleted_];

        sub_1BC8F71D4();
        v86 = sub_1BC8F7174();
        v83(v81, v85);
        [v56 setDateModified_];

        [v56 setMailboxType_];
        [v56 setMessageFile_];
        sub_1BC7C3588(0, 0xE000000000000000, v56, &selRef_setFileType_);
        sub_1BC7C3588(0, 0xE000000000000000, v56, &selRef_setFrom_);
        sub_1BC7C3588(0, 0xE000000000000000, v56, &selRef_setSimID_);
        sub_1BC7C3588(0, 0xE000000000000000, v56, &selRef_setRecipient_);
        [v56 setTranscript_];
        sub_1BC7C3588(0, 0xE000000000000000, v56, &selRef_setTranscriptType_);
        [v56 setMessageThumbnail_];
        sub_1BC7C3588(0, 0xE000000000000000, v56, &selRef_setThumbnailType_);
        [v56 setTranscriptData_];
        memset(v124, 0, 24);
        sub_1BC8511D8(v124);
        v87 = v113;
        v45 = v116;
        sub_1BC8227E0();
        sub_1BC7C1744(v87, &qword_1EBCF58E0, &qword_1BC904880);
        if (v63)
        {
          Strong = swift_weakLoadStrong();
          v49 = v115;
          if (Strong)
          {
            sub_1BC8EC824(1, v63);
          }

          else
          {
          }

          v12 = v117;
          (*v107)(v45, v117);
          v15 = v108;
          v46 = v109;
        }

        else
        {
          (*v107)(v45, v84);

          v12 = v84;
          v15 = v108;
          v46 = v109;
          v49 = v115;
        }
      }

      else
      {
        v69 = v52;
        v70 = sub_1BC8F7714();
        v71 = sub_1BC8F81E4();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = v101;
          *(v72 + 4) = v69;
          *v73 = v69;
          v74 = v69;
          _os_log_impl(&dword_1BC7A3000, v70, v71, "Stored message had no recordUUID: %{public}@", v72, 0xCu);
          sub_1BC7C1744(v73, &unk_1EBCF5DB0, &unk_1BC900410);
          v75 = v73;
          v12 = v117;
          MEMORY[0x1BFB2AA50](v75, -1, -1);
          v76 = v72;
          v49 = v115;
          MEMORY[0x1BFB2AA50](v76, -1, -1);
        }

        else
        {
        }
      }

      ++v50;
    }

    while (v49 != v50);

    v43 = v99;
    v93 = v122;
    v94 = v123;
  }

  else
  {

    v93 = MEMORY[0x1E69E7CC0];
    v94 = MEMORY[0x1E69E7CC0];
  }

  sub_1BC81F2CC(v93);

  v95 = sub_1BC8F7714();
  v96 = sub_1BC8F8204();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_1BC7A3000, v95, v96, "MessageStoreManager: Finished deleting voicemails", v97, 2u);
    MEMORY[0x1BFB2AA50](v97, -1, -1);
  }

  **(&v100 + 1) = v94;
}

void sub_1BC8227E0()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC830558(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC82B048();
}

uint64_t sub_1BC82285C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC822880, 0, 0);
}

uint64_t sub_1BC822880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_114_0();
  v11 = OUTLINED_FUNCTION_117();
  v12[1] = v11;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5928, &qword_1BC902B88);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_16_6();
  v10();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t (*sub_1BC822960@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t (**a3)(unint64_t, char *, uint64_t)@<X8>))(unint64_t, char *, uint64_t)
{
  result = sub_1BC822998(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t (*sub_1BC822998(char *a1, uint64_t a2))(unint64_t, char *, uint64_t)
{
  v46 = a2;
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC8FC230;
  v9 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v44 = a1;
  v11 = v10(v8 + v7, &a1[v9], v3);
  *(v6 + 16) = v8;
  v47 = (v6 | 0x2000000000000000);
  v12 = sub_1BC7BC4A4(v11);
  v13 = v46;

  type metadata accessor for FTStoredMessage();
  v14 = v45;
  v15 = sub_1BC8F8314();
  if (v14)
  {
  }

  else
  {
    v17 = v15;
    v41 = v10;
    v42 = v4;
    v45 = v9;
    v18 = v44;
    if (sub_1BC7C0454(v15))
    {
      v19 = v12;
      sub_1BC8E2358();
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1BFB29A00](0, v17);
      }

      else
      {
        v20 = *(v17 + 32);
      }

      v21 = v20;

      sub_1BC822DD8(v21, v18, v13);

      return 0;
    }

    else
    {
      v40 = v12;

      if (qword_1EDC1E1F8 != -1)
      {
        swift_once();
      }

      v22 = sub_1BC8F7734();
      __swift_project_value_buffer(v22, qword_1EDC2B2B0);
      v23 = v18;
      v24 = sub_1BC8F7714();
      v25 = sub_1BC8F8204();

      v39 = v25;
      v26 = os_log_type_enabled(v24, v25);
      v27 = v45;
      if (v26)
      {
        v28 = v3;
        v29 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v47 = v38;
        *v29 = 136446210;
        v30 = v43;
        v41(v43, &v18[v27], v3);
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v31 = sub_1BC8F8A54();
        v33 = v32;
        (*(v42 + 8))(v30, v28);
        v34 = sub_1BC7A9A4C(v31, v33, &v47);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_1BC7A3000, v24, v39, "No existing message found for conversation ID %{public}s, inserting now", v29, 0xCu);
        v35 = v38;
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1BFB2AA50](v35, -1, -1);
        MEMORY[0x1BFB2AA50](v29, -1, -1);
      }

      sub_1BC81A514();
      v10 = v36;
    }
  }

  return v10;
}

void sub_1BC822DD8(void *a1, char *a2, uint64_t a3)
{
  sub_1BC7C31BC(a1);
  if (!v5 || (v6 = sub_1BC8F8804(), , v6 > 3))
  {
    if (qword_1EDC1E1F8 != -1)
    {
      swift_once();
    }

    v8 = sub_1BC8F7734();
    __swift_project_value_buffer(v8, qword_1EDC2B2B0);
    v9 = a1;
    v10 = sub_1BC8F7714();
    v11 = sub_1BC8F81E4();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_17;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    sub_1BC7C31BC(v9);
    if (v14)
    {
      v15 = sub_1BC8F7C94();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v20 = sub_1BC7A9A4C(v15, v17, &v21);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "Unable to convert string%{public}s to MessageQuality", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB2AA50](v13, -1, -1);
    goto LABEL_16;
  }

  v7 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  swift_beginAccess();
  if (v6 < a2[v7])
  {
    sub_1BC823090(a1, a2);
    return;
  }

  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v18 = sub_1BC8F7734();
  __swift_project_value_buffer(v18, qword_1EDC2B2B0);
  v10 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  if (os_log_type_enabled(v10, v19))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BC7A3000, v10, v19, "Dropping message as incoming quality is worse than existing quality", v12, 2u);
LABEL_16:
    MEMORY[0x1BFB2AA50](v12, -1, -1);
  }

LABEL_17:
}

void sub_1BC823090(void *a1, char *a2)
{
  v85[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1BC8F71E4();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC8F7264();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC8F7014();
  v80 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v79 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v82 = v72 - v14;
  if (qword_1EDC1E1F8 != -1)
  {
    swift_once();
  }

  v81 = v11;
  v74 = sub_1BC8F7734();
  __swift_project_value_buffer(v74, qword_1EDC2B2B0);
  v15 = sub_1BC8F7714();
  v16 = sub_1BC8F8204();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1BC7A3000, v15, v16, "Replacing existing message as incoming quality is higher", v17, 2u);
    MEMORY[0x1BFB2AA50](v17, -1, -1);
  }

  v18 = [a1 recordUUID];
  if (!v18)
  {
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v19 = v18;
  sub_1BC8F7244();

  v75 = a1;
  v20 = sub_1BC805F68(a1);
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v20;
  v23 = v21;
  v24 = MEMORY[0x1BFB2A220]();
  sub_1BC7C1A54(v22, v23, v82);
  if (v2)
  {
    objc_autoreleasePoolPop(v24);
    __break(1u);
  }

  else
  {

    objc_autoreleasePoolPop(v24);
    (*(v8 + 8))(v10, v7);
    v25 = objc_opt_self();
    v26 = [v25 defaultManager];
    v27 = sub_1BC8F6F44();
    v85[0] = 0;
    v28 = [v26 removeItemAtURL:v27 error:v85];

    if (v28)
    {
      v29 = v85[0];
      v30 = [v25 defaultManager];
      v31 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
      swift_beginAccess();
      v32 = v79;
      v33 = v80;
      v34 = *(v80 + 2);
      v73 = v31;
      v35 = v81;
      v72[1] = v80 + 16;
      v72[0] = v34;
      v34(v79, &a2[v31], v81);
      v36 = sub_1BC8F6F44();
      v37 = *(v33 + 1);
      v37(v32, v35);
      v38 = sub_1BC8F6F44();
      v84[0] = 0;
      v39 = [v30 moveItemAtURL:v36 toURL:v38 error:v84];

      v40 = v84[0];
      if (v39)
      {
        v80 = v37;
        v41 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
        swift_beginAccess();
        v42 = a2[v41];
        v43 = 7827308;
        v44 = 0xE300000000000000;
        v45 = a2;
        switch(v42)
        {
          case 1:
            v44 = 0xE600000000000000;
            v43 = 0x6D756964656DLL;
            break;
          case 2:
            v44 = 0xE400000000000000;
            v43 = 1751607656;
            break;
          case 3:
            v43 = 7823730;
            break;
          default:
            break;
        }

        v48 = v40;
        v49 = v75;
        sub_1BC7C3588(v43, v44, v75, &selRef_setQuality_);
        v50 = v76;
        sub_1BC8F71D4();
        v51 = sub_1BC8F7174();
        (*(v77 + 8))(v50, v78);
        [v49 setDateModified_];

        v52 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
        swift_beginAccess();
        [v49 setIsSensitive_];
        v53 = objc_opt_self();
        v54 = sub_1BC8F6F44();
        v55 = [v53 createFutureForFileAtURL_];

        if (v55)
        {
          swift_unknownObjectRetain();
          v56 = sub_1BC8F7BE4();
          [v49 setValue:v55 forKey:v56];
          swift_unknownObjectRelease_n();

          v80(v82, v81);
        }

        else
        {
          if (qword_1EDC1E1D0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v74, qword_1EDC2B268);
          v57 = v45;
          v58 = sub_1BC8F7714();
          v59 = sub_1BC8F81E4();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v83 = v61;
            *v60 = 136446210;
            v62 = &v45[v73];
            v63 = v79;
            v64 = v81;
            (v72[0])(v79, v62, v81);
            sub_1BC7AAAD0(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
            v65 = sub_1BC8F8A54();
            v67 = v66;
            v68 = v63;
            v69 = v80;
            v80(v68, v64);
            v70 = sub_1BC7A9A4C(v65, v67, &v83);

            *(v60 + 4) = v70;
            _os_log_impl(&dword_1BC7A3000, v58, v59, "MessageStoreManager: Failed to create future for asset at URL %{public}s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v61);
            MEMORY[0x1BFB2AA50](v61, -1, -1);
            MEMORY[0x1BFB2AA50](v60, -1, -1);
          }

          else
          {

            v69 = v80;
            v64 = v81;
          }

          sub_1BC82EF30();
          swift_allocError();
          *v71 = 0;
          swift_willThrow();
          v69(v82, v64);
        }
      }

      else
      {
        v47 = v84[0];
        sub_1BC8F6EA4();

        swift_willThrow();
        v37(v82, v35);
      }
    }

    else
    {
      v46 = v85[0];
      sub_1BC8F6EA4();

      swift_willThrow();
      (*(v80 + 1))(v82, v81);
    }
  }
}

uint64_t sub_1BC823970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC823994, 0, 0);
}

uint64_t sub_1BC823994()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_114_0();
  v0 = OUTLINED_FUNCTION_117();
  v1[1] = vextq_s8(v0, v0, 8uLL);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_16_6();
  v2();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BC823A74(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = v3;
  v306 = a3;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58D8, &unk_1BC902A50);
  MEMORY[0x1EEE9AC00](v295);
  v294 = &v275 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v290 = &v275 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v288 = &v275 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v297 = &v275 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v296 = &v275 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v308 = &v275 - v17;
  v304 = type metadata accessor for MessageAssetInfo(0);
  v18 = MEMORY[0x1EEE9AC00](v304);
  v287 = &v275 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v303 = &v275 - v20;
  v313 = sub_1BC8F71E4();
  *&v291 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v302 = &v275 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v301 = &v275 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v293 = &v275 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v300 = &v275 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v299 = &v275 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v292 = &v275 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v305 = &v275 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v298 = &v275 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v312 = &v275 - v37;
  v38 = sub_1BC8F7264();
  v323 = *(v38 - 8);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v289 = &v275 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v307 = &v275 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v275 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v311 = &v275 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v310 = &v275 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v322 = &v275 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v275 - v52;
  v324 = a2;
  v54 = sub_1BC7C0454(a2);
  v55 = MEMORY[0x1E69E7CC0];
  v327 = v38;
  v314 = v45;
  if (v54)
  {
    *&v325 = MEMORY[0x1E69E7CC0];
    v321 = v54;
    sub_1BC7DDB5C(0, v54 & ~(v54 >> 63), 0);
    v56 = v321;
    if (v321 < 0)
    {
      goto LABEL_171;
    }

    v319 = a1;
    v320 = v3;
    v57 = 0;
    v55 = v325;
    v58 = v324 & 0xC000000000000001;
    v59 = (v323 + 16);
    do
    {
      if (v58)
      {
        v60 = MEMORY[0x1BFB29A00](v57, v324);
        (*v59)(v53, v60 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v38);
        v56 = v321;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v59)(v53, *(v324 + 8 * v57 + 32) + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v38);
      }

      *&v325 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1BC7DDB5C(v61 > 1, v62 + 1, 1);
        v56 = v321;
        v55 = v325;
      }

      ++v57;
      *(v55 + 16) = v62 + 1;
      v63 = v55 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v62;
      v38 = v327;
      (*(v323 + 32))(v63, v53, v327);
    }

    while (v56 != v57);
    v45 = v314;
    v4 = v320;
  }

  v64 = swift_allocObject();
  *(v64 + 16) = v55;
  *&v325 = v64 | 0x1000000000000000;

  v66 = sub_1BC7BC4A4(v65);

  type metadata accessor for FTStoredMessage();
  v309 = v66;
  v67 = sub_1BC8F8314();
  if (v4)
  {
    sub_1BC82926C(v4, v55);

    v68 = v309;
    goto LABEL_13;
  }

  v69 = v67;
  v286 = 0;
  if (sub_1BC7C0454(v67) <= 0)
  {

    if (qword_1EDC1E1D0 != -1)
    {
      goto LABEL_172;
    }

    goto LABEL_163;
  }

  v315 = v69;

  v70 = v324;
  v71 = sub_1BC7C0454(v324);
  v55 = 0;
  v318 = (v70 & 0xC000000000000001);
  v319 = v71;
  *&v317 = v70 & 0xFFFFFFFFFFFFFF8;
  v321 = v323 + 16;
  v72 = MEMORY[0x1E69E7CC8];
  v320 = (v323 + 8);
  while (1)
  {
    if (v319 == v55)
    {
      v91 = v315;
      v92 = sub_1BC7C0454(v315);
      if (!v92)
      {
LABEL_161:

        return;
      }

      v94 = v92;
      if (v92 < 1)
      {
        __break(1u);
LABEL_174:
        v251 = sub_1BC8F8B44();
        __break(1u);
LABEL_175:
        os_unfair_lock_unlock(v251);
        __break(1u);
        return;
      }

      v95 = 0;
      v281 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
      v278 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_analyticsManager;
      v322 = (v91 & 0xC000000000000001);
      v323 += 32;
      v280 = (v291 + 8);
      v276 = "move voicemail to the trash";
      v277 = "analyticsManager";
      v275 = "remove voicemail from the trash";
      *&v93 = 138543362;
      v291 = v93;
      *&v93 = 136446210;
      v317 = v93;
      v96 = v310;
      v319 = v92;
      v316 = v72;
      while (1)
      {
        if (v322)
        {
          v97 = MEMORY[0x1BFB29A00](v95, v315);
        }

        else
        {
          v97 = *(v315 + 8 * v95 + 32);
        }

        v98 = v97;
        v99 = [v97 recordUUID];
        if (!v99)
        {
          if (qword_1EDC1E1D0 != -1)
          {
            swift_once();
          }

          v118 = sub_1BC8F7734();
          __swift_project_value_buffer(v118, qword_1EDC2B268);
          v119 = v98;
          v120 = sub_1BC8F7714();
          v121 = sub_1BC8F81E4();

          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            *v122 = v291;
            *(v122 + 4) = v119;
            *v123 = v119;
            v124 = v119;
            _os_log_impl(&dword_1BC7A3000, v120, v121, "Skipping message because we found a nil recordUUID %{public}@", v122, 0xCu);
            sub_1BC7C1744(v123, &unk_1EBCF5DB0, &unk_1BC900410);
            v125 = v123;
            v96 = v310;
            MEMORY[0x1BFB2AA50](v125, -1, -1);
            MEMORY[0x1BFB2AA50](v122, -1, -1);
          }

          else
          {
          }

          goto LABEL_156;
        }

        v100 = v99;
        v324 = v95;
        v101 = v311;
        sub_1BC8F7244();

        v102 = *v323;
        (*v323)(v96, v101, v38);
        v103 = [v98 dateDeleted];
        if (v103)
        {
          break;
        }

        v126 = v312;
        __swift_storeEnumTagSinglePayload(v312, 1, 1, v313);
        sub_1BC7C1744(v126, &unk_1EBCF5D80, &qword_1BC8FEA60);
        v127 = v316;
        if (v316[2])
        {
          v128 = sub_1BC83C928();
          if (v129)
          {
            v130 = *(v127[7] + 8 * v128);
            v131 = *&v130[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID];
            v132 = v130[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_voicemailID + 4];
            v133 = *&v306[v281];
            v283 = type metadata accessor for Message(0);
            v134 = objc_allocWithZone(v283);
            v135 = v130;
            v136 = v98;

            LOBYTE(v325) = v132;
            sub_1BC86A9C0(v136, v131 | (v132 << 32), v133, v137, v138, v139, v140, v141, v275, v276, v277, v278, v279, v280, v281, v282, v283, v133, v285, v286);
            v143 = v142;
            if (qword_1EDC1E1D0 != -1)
            {
              swift_once();
            }

            v144 = sub_1BC8F7734();
            __swift_project_value_buffer(v144, qword_1EDC2B268);
            v145 = v135;
            v146 = sub_1BC8F7714();
            v147 = sub_1BC8F8204();

            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              *v148 = v291;
              *(v148 + 4) = v145;
              *v149 = v145;
              v150 = v145;
              _os_log_impl(&dword_1BC7A3000, v146, v147, "Applying update: %{public}@", v148, 0xCu);
              sub_1BC7C1744(v149, &unk_1EBCF5DB0, &unk_1BC900410);
              MEMORY[0x1BFB2AA50](v149, -1, -1);
              MEMORY[0x1BFB2AA50](v148, -1, -1);
            }

            v151 = MessageType.init(rawValue:)([v136 messageType]);
            v152 = [v136 mailboxType];
            v153 = v145[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete];
            v154 = v300;
            v285 = v143;
            v282 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_undelete;
            HIDWORD(v279) = v152;
            if (v153)
            {
              v155 = v151;
              v156 = 0;
              v157 = v305;
            }

            else
            {
              v157 = v305;
              v155 = v151;
              if (v145[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2])
              {
                v156 = [v136 mailboxType];
              }

              else
              {
                v156 = *&v145[OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType];
              }
            }

            sub_1BC830400();
            v173 = v327;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v157, 1, v327);
            v318 = v145;
            if (EnumTagSinglePayload == 1)
            {
              v175 = [v136 callUUID];
              if (v175)
              {
                v176 = v175;
                v177 = v292;
                sub_1BC8F7244();

                v178 = 0;
              }

              else
              {
                v178 = 1;
                v177 = v292;
              }

              v180 = v177;
              v173 = v327;
              __swift_storeEnumTagSinglePayload(v180, v178, 1, v327);
              v179 = v298;
              sub_1BC830458();
              v181 = v305;
              if (__swift_getEnumTagSinglePayload(v305, 1, v173) != 1)
              {
                sub_1BC7C1744(v181, &unk_1EBCF5D70, &qword_1BC8FC740);
              }
            }

            else
            {
              v179 = v298;
              v102(v298, v157, v173);
              __swift_storeEnumTagSinglePayload(v179, 0, 1, v173);
            }

            if (__swift_getEnumTagSinglePayload(v179, 1, v173) == 1)
            {
              v182 = 0;
            }

            else
            {
              v182 = sub_1BC8F7214();
              (*v320)(v179, v173);
            }

            [v136 setCallUUID_];

            v183 = v318;
            sub_1BC830400();
            if (__swift_getEnumTagSinglePayload(v154, 1, v173) == 1)
            {
              v184 = [v136 conversationID];
              if (v184)
              {
                v185 = v184;
                v186 = v293;
                sub_1BC8F7244();

                v187 = 0;
              }

              else
              {
                v187 = 1;
                v186 = v293;
              }

              v189 = v186;
              v173 = v327;
              __swift_storeEnumTagSinglePayload(v189, v187, 1, v327);
              v188 = v299;
              sub_1BC830458();
              if (__swift_getEnumTagSinglePayload(v154, 1, v173) != 1)
              {
                sub_1BC7C1744(v154, &unk_1EBCF5D70, &qword_1BC8FC740);
              }
            }

            else
            {
              v188 = v299;
              v102(v299, v154, v173);
              __swift_storeEnumTagSinglePayload(v188, 0, 1, v173);
            }

            if (__swift_getEnumTagSinglePayload(v188, 1, v173) == 1)
            {
              v190 = 0;
            }

            else
            {
              v191 = v188;
              v190 = sub_1BC8F7214();
              (*v320)(v191, v173);
            }

            [v136 setConversationID_];

            if (*(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_simID + 8))
            {
LABEL_89:

              v194 = sub_1BC8F7BE4();
            }

            else
            {
              v192 = [v136 simID];
              if (v192)
              {
                v193 = v192;
                sub_1BC8F7C24();

                goto LABEL_89;
              }

              v194 = 0;
            }

            [v136 setSimID_];

            v195 = OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead;
            v196 = *(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRead);
            if (v196 == 2)
            {
              LOBYTE(v196) = [v136 isRead];
            }

            [v136 setIsRead_];
            if (*(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus + 2))
            {
              v197 = [v136 transcriptionStatus];
            }

            else
            {
              v197 = *(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_transcriptionStatus);
            }

            [v136 setTranscriptionStatus_];
            [v136 setMailboxType_];
            v198 = v302;
            sub_1BC8F71D4();
            v199 = sub_1BC8F7174();
            (*v280)(v198, v313);
            [v136 setDateModified_];

            v200 = v301;
            sub_1BC830400();
            v201 = v327;
            if (__swift_getEnumTagSinglePayload(v200, 1, v327) == 1)
            {
              v202 = 0;
            }

            else
            {
              v202 = sub_1BC8F7214();
              (*v320)(v200, v201);
            }

            [v136 setReminderUUID_];

            v203 = *(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary + 16);
            v325 = *(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_summary);
            v326 = v203;

            v204 = sub_1BC8511D8(&v325);
            if ((v155 & 0x1FFFF) == 1)
            {
              v205 = *(v183 + v195);
              v206 = v308;
              v96 = v310;
              v207 = v285;
              if (v205 != 2 && (v205 & 1) != 0)
              {
                MEMORY[0x1EEE9AC00](v204);
                *(&v275 - 2) = v306;
                *(&v275 - 1) = v208;
                v204 = sub_1BC829428(0xD000000000000016, v276 | 0x8000000000000000, sub_1BC82F01C);
                v206 = v308;
              }

              v209 = v282;
              if ((*(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType + 2) & 1) == 0 && *(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_mailboxType) != WORD2(v279))
              {
                MEMORY[0x1EEE9AC00](v204);
                *(&v275 - 2) = v306;
                *(&v275 - 1) = v210;
                if (v211 == 2)
                {
                  v212 = 0xD00000000000001BLL;
                  v213 = sub_1BC82EFEC;
                  v214 = v275 | 0x8000000000000000;
                }

                else
                {
                  v213 = sub_1BC830574;
                  v214 = v277 | 0x8000000000000000;
                  v212 = 0xD00000000000001FLL;
                }

                v204 = sub_1BC829428(v212, v214, v213);
                v206 = v308;
              }

              v226 = *(v183 + v209);
              v38 = v327;
              if (v226 == 1)
              {
                MEMORY[0x1EEE9AC00](v204);
                *(&v275 - 2) = v306;
                *(&v275 - 1) = v227;
                sub_1BC829428(0xD00000000000001FLL, v277 | 0x8000000000000000, sub_1BC82EFBC);
                [v136 setMailboxType_];
                goto LABEL_130;
              }

              goto LABEL_131;
            }

            v96 = v310;
            v207 = v285;
            if (*(v183 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_from + 8))
            {
              v38 = v327;
              goto LABEL_110;
            }

            v215 = [v136 from];
            v38 = v327;
            if (v215)
            {
              v216 = v215;
              sub_1BC8F7C24();

LABEL_110:

              v217 = sub_1BC8F7BE4();
            }

            else
            {
              v217 = 0;
            }

            [v136 setFrom_];

            if (*(v318 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_provider + 8))
            {
LABEL_114:

              v220 = sub_1BC8F7BE4();
            }

            else
            {
              v218 = [v136 provider];
              if (v218)
              {
                v219 = v218;
                sub_1BC8F7C24();

                goto LABEL_114;
              }

              v220 = 0;
            }

            [v136 setProvider_];

            if (*(v318 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration + 8))
            {
              [v136 duration];
            }

            else
            {
              v221 = *(v318 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_duration);
            }

            [v136 setDuration_];
            if (*(v318 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recipient + 8))
            {
LABEL_121:

              v224 = sub_1BC8F7BE4();
            }

            else
            {
              v222 = [v136 recipient];
              if (v222)
              {
                v223 = v222;
                sub_1BC8F7C24();

                goto LABEL_121;
              }

              v224 = 0;
            }

            [v136 setRecipient_];

            v225 = *(v318 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_isRTT);
            if (v225 == 2)
            {
              LOBYTE(v225) = [v136 isRTT];
            }

            [v136 setIsRTT_];
LABEL_130:
            v206 = v308;
LABEL_131:
            if (v207)
            {
              v228 = objc_allocWithZone(v283);
              v229 = v136;
              v230 = v207;
              LOBYTE(v325) = 1;
              sub_1BC86A9C0(v229, 0x100000000, 0, v231, v232, v233, v234, v235, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286);
              if (v236)
              {
                v237 = v236;
                v238 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
                swift_beginAccess();
                if ((v230[v238] & 1) == 0)
                {
                  v239 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
                  swift_beginAccess();
                  if (*(v237 + v239) == 1)
                  {
                    if (swift_weakLoadStrong())
                    {
                      sub_1BC8EC824(2, v237);
                    }
                  }
                }

                if (swift_weakLoadStrong())
                {
                  sub_1BC8EC824(3, v237);

                  v240 = v237;
                }

                else
                {
                  v240 = v230;
                  v230 = v237;
                }
              }

              v206 = v308;
            }

            sub_1BC803F84();
            v241 = v304;
            if (__swift_getEnumTagSinglePayload(v206, 1, v304) == 1)
            {
              (*v320)(v96, v38);

              sub_1BC7C1744(v206, &qword_1EBCF58E0, &qword_1BC904880);
              goto LABEL_154;
            }

            sub_1BC8303A8();
            v242 = v296;
            sub_1BC8302F8();
            v243 = __swift_storeEnumTagSinglePayload(v242, 0, 1, v241);
            v244 = *(v284 + 32);
            v245 = MEMORY[0x1EEE9AC00](v243);
            *(&v275 - 2) = v246;
            *(&v275 - 1) = v96;
            MEMORY[0x1EEE9AC00](v245);
            *(&v275 - 2) = sub_1BC82EF84;
            *(&v275 - 1) = v247;
            os_unfair_lock_lock(v244 + 4);
            v248 = v297;
            v249 = v286;
            sub_1BC82EFA0(v250);
            v286 = v249;
            v251 = v244 + 4;
            if (v249)
            {
              goto LABEL_175;
            }

            os_unfair_lock_unlock(v251);
            v252 = *(v295 + 48);
            v253 = v294;
            sub_1BC830400();
            sub_1BC830400();
            if (__swift_getEnumTagSinglePayload(v253, 1, v241) == 1)
            {
              sub_1BC7C1744(v248, &qword_1EBCF58E0, &qword_1BC904880);
              sub_1BC7C1744(v242, &qword_1EBCF58E0, &qword_1BC904880);
              if (__swift_getEnumTagSinglePayload(v253 + v252, 1, v241) == 1)
              {
                sub_1BC7C1744(v253, &qword_1EBCF58E0, &qword_1BC904880);
                v38 = v327;
                v94 = v319;
                v254 = v285;
                goto LABEL_153;
              }

LABEL_150:
              sub_1BC7C1744(v253, &qword_1EBCF58D8, &unk_1BC902A50);
              v38 = v327;
              v94 = v319;
              v254 = v285;
              goto LABEL_151;
            }

            v255 = v288;
            sub_1BC830400();
            if (__swift_getEnumTagSinglePayload(v253 + v252, 1, v241) == 1)
            {
              sub_1BC7C1744(v297, &qword_1EBCF58E0, &qword_1BC904880);
              sub_1BC7C1744(v296, &qword_1EBCF58E0, &qword_1BC904880);
              sub_1BC830350(v255, type metadata accessor for MessageAssetInfo);
              goto LABEL_150;
            }

            v262 = v287;
            sub_1BC8303A8();
            static MessageAssetInfo.== infix(_:_:)();
            v264 = v263;
            sub_1BC830350(v262, type metadata accessor for MessageAssetInfo);
            sub_1BC7C1744(v297, &qword_1EBCF58E0, &qword_1BC904880);
            sub_1BC7C1744(v296, &qword_1EBCF58E0, &qword_1BC904880);
            sub_1BC830350(v255, type metadata accessor for MessageAssetInfo);
            sub_1BC7C1744(v253, &qword_1EBCF58E0, &qword_1BC904880);
            v38 = v327;
            v94 = v319;
            v254 = v285;
            if (v264)
            {
LABEL_153:
              sub_1BC830350(v303, type metadata accessor for MessageAssetInfo);

              v96 = v310;
              (*v320)(v310, v38);
            }

            else
            {
LABEL_151:
              v256 = v289;
              v257 = v310;
              (*v321)(v289, v310, v38);
              v258 = v303;
              v259 = v290;
              sub_1BC8302F8();
              __swift_storeEnumTagSinglePayload(v259, 0, 1, v304);
              sub_1BC82A374(v259, v256);

              sub_1BC7C1744(v259, &qword_1EBCF58E0, &qword_1BC904880);
              v260 = *v320;
              v261 = v256;
              v96 = v257;
              (*v320)(v261, v38);
              sub_1BC830350(v258, type metadata accessor for MessageAssetInfo);
              v260(v257, v38);
            }

LABEL_154:
            v45 = v314;
LABEL_155:
            v95 = v324;
            goto LABEL_156;
          }
        }

        v159 = v94;
        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v160 = sub_1BC8F7734();
        __swift_project_value_buffer(v160, qword_1EDC2B268);
        v161 = v307;
        (*v321)(v307, v96, v38);
        v162 = sub_1BC8F7714();
        v163 = v96;
        v164 = sub_1BC8F8204();
        if (os_log_type_enabled(v162, v164))
        {
          v165 = swift_slowAlloc();
          v318 = swift_slowAlloc();
          *&v325 = v318;
          *v165 = v317;
          sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
          v166 = sub_1BC8F8A54();
          v168 = v167;
          v169 = *v320;
          (*v320)(v161, v327);
          v170 = sub_1BC7A9A4C(v166, v168, &v325);

          *(v165 + 4) = v170;
          _os_log_impl(&dword_1BC7A3000, v162, v164, "Failed to find message update for recordUUID %{public}s", v165, 0xCu);
          v171 = v318;
          __swift_destroy_boxed_opaque_existential_1(v318);
          v38 = v327;
          MEMORY[0x1BFB2AA50](v171, -1, -1);
          MEMORY[0x1BFB2AA50](v165, -1, -1);

          v96 = v310;
          v169(v310, v38);
          v94 = v319;
          goto LABEL_154;
        }

        v172 = *v320;
        (*v320)(v161, v38);
        v172(v163, v38);
        v96 = v163;
        v95 = v324;
        v94 = v159;
        v45 = v314;
LABEL_156:
        if (v94 == ++v95)
        {
          goto LABEL_161;
        }
      }

      v104 = v103;
      v105 = v312;
      sub_1BC8F71B4();

      __swift_storeEnumTagSinglePayload(v105, 0, 1, v313);
      sub_1BC7C1744(v105, &unk_1EBCF5D80, &qword_1BC8FEA60);
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v106 = sub_1BC8F7734();
      __swift_project_value_buffer(v106, qword_1EDC2B268);
      (*v321)(v45, v96, v38);
      v107 = sub_1BC8F7714();
      v108 = v96;
      v109 = sub_1BC8F81F4();
      if (os_log_type_enabled(v107, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&v325 = v111;
        *v110 = v317;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v112 = sub_1BC8F8A54();
        v114 = v113;
        v318 = v98;
        v115 = *v320;
        (*v320)(v314, v327);
        v116 = sub_1BC7A9A4C(v112, v114, &v325);

        *(v110 + 4) = v116;
        _os_log_impl(&dword_1BC7A3000, v107, v109, "Skipping message with recordUUID %{public}s because it was marked as deleted", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v111);
        v117 = v111;
        v38 = v327;
        MEMORY[0x1BFB2AA50](v117, -1, -1);
        MEMORY[0x1BFB2AA50](v110, -1, -1);

        v115(v108, v38);
        v45 = v314;
      }

      else
      {

        v158 = *v320;
        (*v320)(v45, v38);
        v158(v108, v38);
      }

      v96 = v108;
      v94 = v319;
      goto LABEL_155;
    }

    if (v318)
    {
      v73 = MEMORY[0x1BFB29A00](v55, v324);
    }

    else
    {
      if (v55 >= *(v317 + 16))
      {
        goto LABEL_168;
      }

      v73 = *(v324 + 8 * v55 + 32);
    }

    v74 = v73;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    v75 = *v321;
    (*v321)(v322, v73 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v38);
    v76 = v74;
    swift_isUniquelyReferenced_nonNull_native();
    *&v325 = v72;
    v77 = sub_1BC83C928();
    if (__OFADD__(v72[2], (v78 & 1) == 0))
    {
      goto LABEL_169;
    }

    v79 = v77;
    v80 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58F0, &unk_1BC902A60);
    if (sub_1BC8F8734())
    {
      v81 = sub_1BC83C928();
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_174;
      }

      v79 = v81;
    }

    v72 = v325;
    if (v80)
    {
      v83 = *(v325 + 56);
      v84 = *(v83 + 8 * v79);
      *(v83 + 8 * v79) = v76;

      v38 = v327;
      (*v320)(v322, v327);
    }

    else
    {
      *(v325 + 8 * (v79 >> 6) + 64) |= 1 << v79;
      v86 = v322;
      v85 = v323;
      v87 = v327;
      v75((v72[6] + *(v323 + 72) * v79), v322, v327);
      *(v72[7] + 8 * v79) = v76;
      v38 = v87;

      (*(v85 + 8))(v86, v87);
      v88 = v72[2];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_170;
      }

      v72[2] = v90;
    }

    ++v55;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  swift_once();
LABEL_163:
  v265 = sub_1BC8F7734();
  __swift_project_value_buffer(v265, qword_1EDC2B268);

  v266 = sub_1BC8F7714();
  v267 = sub_1BC8F81E4();

  if (os_log_type_enabled(v266, v267))
  {
    v268 = swift_slowAlloc();
    v269 = swift_slowAlloc();
    *&v325 = v269;
    *v268 = 136446210;
    v270 = MEMORY[0x1BFB29280](v55, v38);
    v272 = v271;

    v273 = sub_1BC7A9A4C(v270, v272, &v325);

    *(v268 + 4) = v273;
    _os_log_impl(&dword_1BC7A3000, v266, v267, "MessageStoreManager: Failed to fetch any core data messages for recordUUIDs: %{public}s", v268, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v269);
    MEMORY[0x1BFB2AA50](v269, -1, -1);
    MEMORY[0x1BFB2AA50](v268, -1, -1);
  }

  else
  {
  }

  v68 = v309;
  sub_1BC82EF30();
  swift_allocError();
  *v274 = 3;
LABEL_13:
  swift_willThrow();
}

uint64_t sub_1BC825FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC826014, 0, 0);
}

uint64_t sub_1BC826014()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_114_0();
  v0 = OUTLINED_FUNCTION_117();
  v1[1] = vextq_s8(v0, v0, 8uLL);
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_16_6();
  v2();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BC8260F4(uint64_t (**a1)(char *, uint64_t, uint64_t), char *a2, uint64_t a3)
{
  v390 = a3;
  v402 = a1;
  v426 = *MEMORY[0x1E69E9840];
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58D8, &unk_1BC902A50);
  MEMORY[0x1EEE9AC00](v374);
  v373 = &v353 - v4;
  v385 = type metadata accessor for MessageAssetInfo(0);
  v5 = MEMORY[0x1EEE9AC00](v385);
  v367 = &v353 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v383 = &v353 - v7;
  v407 = sub_1BC8F71E4();
  *&v392 = *(v407 - 8);
  MEMORY[0x1EEE9AC00](v407);
  v372 = &v353 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = sub_1BC8F7014();
  *&v387 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375);
  v384 = &v353 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  MEMORY[0x1EEE9AC00](v377);
  v376 = (&v353 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v371 = &v353 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v386 = &v353 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v382 = &v353 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v369 = &v353 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v353 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v353 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v353 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v393 = &v353 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v381 = &v353 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v380 = &v353 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v379 = &v353 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v405 = &v353 - v37;
  v397 = type metadata accessor for VoicemailUpdate(0);
  v38 = *(v397 - 1);
  v39 = MEMORY[0x1EEE9AC00](v397);
  v389 = &v353 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v388 = &v353 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v408 = &v353 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v412 = (&v353 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v411 = (&v353 - v48);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v353 - v49;
  v414 = sub_1BC8F7264();
  v51 = *(v414 - 8);
  v52 = MEMORY[0x1EEE9AC00](v414);
  v404 = &v353 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v378 = &v353 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v368 = &v353 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v391 = &v353 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v406 = &v353 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v410 = &v353 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v413 = &v353 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v353 - v66;
  v68 = a2;
  v69 = *(a2 + 2);
  v417 = v51;
  v399 = v38;
  v400 = v68;
  v409 = v69;
  if (v69)
  {
    v396 = v28;
    v395 = v25;
    v394 = v22;
    *&v424 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDB5C(0, v69, 0);
    v70 = v414;
    v71 = v424;
    v72 = &v68[(*(v38 + 80) + 32) & ~*(v38 + 80)];
    v73 = *(v38 + 72);
    v74 = (v51 + 16);
    v415 = (v51 + 32);
    v416 = v73;
    v75 = v69;
    do
    {
      sub_1BC8302F8();
      (*v74)(v67, v50, v70);
      sub_1BC830350(v50, type metadata accessor for VoicemailUpdate);
      *&v424 = v71;
      v77 = *(v71 + 16);
      v76 = *(v71 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1BC7DDB5C(v76 > 1, v77 + 1, 1);
        v70 = v414;
        v71 = v424;
      }

      *(v71 + 16) = v77 + 1;
      (*(v417 + 32))(v71 + ((*(v417 + 80) + 32) & ~*(v417 + 80)) + *(v417 + 72) * v77, v67, v70);
      v72 += v416;
      --v75;
    }

    while (v75);
    v401 = v71;
    v78 = v394;
    v25 = v395;
    v28 = v396;
  }

  else
  {
    v401 = MEMORY[0x1E69E7CC0];
    v78 = v22;
  }

  v79 = swift_allocObject();
  v80 = v401;
  *(v79 + 16) = v401;
  *&v424 = v79 | 0x1000000000000000;

  v82 = sub_1BC7BC4A4(v81);

  type metadata accessor for FTStoredMessage();
  v83 = v403;
  v84 = sub_1BC8F8314();
  v85 = v399;
  if (v83)
  {
    sub_1BC82926C(v83, v80);

LABEL_10:
    swift_willThrow();

    return;
  }

  v86 = v84;
  v370 = 0;
  if (sub_1BC7C0454(v84) <= 0)
  {
    isUniquelyReferenced_nonNull_native = &unk_1BC8FB000;

    if (qword_1EDC1E1D0 == -1)
    {
LABEL_26:
      v108 = sub_1BC8F7734();
      __swift_project_value_buffer(v108, qword_1EDC2B268);
      v109 = v401;

      v110 = sub_1BC8F7714();
      v111 = sub_1BC8F81E4();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        *&v424 = v113;
        *v112 = isUniquelyReferenced_nonNull_native[438];
        v114 = MEMORY[0x1BFB29280](v109, v414);
        v116 = v115;

        v117 = sub_1BC7A9A4C(v114, v116, &v424);

        *(v112 + 4) = v117;
        _os_log_impl(&dword_1BC7A3000, v110, v111, "MessageStoreManager: Failed to fetch any core data messages for recordUUIDs: %{public}s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x1BFB2AA50](v113, -1, -1);
        MEMORY[0x1BFB2AA50](v112, -1, -1);
      }

      else
      {
      }

      sub_1BC82EF30();
      swift_allocError();
      *v352 = 3;
      goto LABEL_10;
    }

LABEL_169:
    swift_once();
    goto LABEL_26;
  }

  v403 = v86;
  v366 = v82;
  v396 = v28;
  v395 = v25;
  v394 = v78;
  v87 = v409;
  if (v409)
  {
    v82 = &v400[(*(v85 + 80) + 32) & ~*(v85 + 80)];
    v88 = *(v85 + 72);
    v416 = v417 + 16;
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
    v415 = (v417 + 8);
    while (1)
    {
      v90 = v411;
      sub_1BC8302F8();
      v91 = *v416;
      (*v416)(v413, v90, v414);
      sub_1BC8302F8();
      v92 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v424 = v92;
      v93 = sub_1BC83C928();
      if (__OFADD__(v92[2], (v94 & 1) == 0))
      {
        break;
      }

      v95 = v93;
      v96 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF59B8, &qword_1BC902D88);
      if (sub_1BC8F8734())
      {
        v97 = v424;
        v98 = sub_1BC83C928();
        v100 = v410;
        if ((v96 & 1) != (v99 & 1))
        {
          v209 = sub_1BC8F8B44();
          __break(1u);
LABEL_171:
          os_unfair_lock_unlock(v209);
          __break(1u);
          objc_autoreleasePoolPop(v97);
          __break(1u);
          return;
        }

        v95 = v98;
        v101 = v414;
      }

      else
      {
        v101 = v414;
        v100 = v410;
      }

      isUniquelyReferenced_nonNull_native = v424;
      if (v96)
      {
        sub_1BC8304B0(v412, *(v424 + 56) + v95 * v88);
        (*v415)(v413, v101);
        sub_1BC830350(v411, type metadata accessor for VoicemailUpdate);
      }

      else
      {
        v409 = v87;
        v102 = v100;
        *(v424 + 8 * (v95 >> 6) + 64) |= 1 << v95;
        v103 = v417;
        v104 = v413;
        v91(isUniquelyReferenced_nonNull_native[6] + *(v417 + 72) * v95, v413, v101);
        sub_1BC8303A8();
        (*(v103 + 8))(v104, v101);
        sub_1BC830350(v411, type metadata accessor for VoicemailUpdate);
        v105 = isUniquelyReferenced_nonNull_native[2];
        v106 = __OFADD__(v105, 1);
        v107 = v105 + 1;
        if (v106)
        {
          goto LABEL_167;
        }

        isUniquelyReferenced_nonNull_native[2] = v107;
        v100 = v102;
        v87 = v409;
      }

      v82 += v88;
      if (!--v87)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC8];
  v100 = v410;
LABEL_29:
  v118 = v403;
  v416 = sub_1BC7C0454(v403);
  if (v416)
  {
    v120 = 0;
    v365 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v415 = (v118 & 0xC000000000000001);
    v363 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_analyticsManager;
    v398 = v118 & 0xFFFFFFFFFFFFFF8;
    v411 = (v417 + 32);
    v402 = (v417 + 16);
    v409 = (v417 + 8);
    v360 = (v392 + 32);
    v364 = (v392 + 8);
    v362 = (v387 + 8);
    *&v119 = 138543362;
    v387 = v119;
    *&v119 = 136446210;
    v392 = v119;
    v121 = v407;
    v412 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v415)
      {
        v122 = MEMORY[0x1BFB29A00](v120, v118);
      }

      else
      {
        if (v120 >= *(v398 + 16))
        {
          goto LABEL_168;
        }

        v122 = *(v118 + 8 * v120 + 32);
      }

      v123 = v122;
      v82 = (v120 + 1);
      if (__OFADD__(v120, 1))
      {
        goto LABEL_166;
      }

      v124 = [v122 recordUUID];
      if (!v124)
      {
        v149 = v118;
        v150 = (v120 + 1);
        v151 = v120;
        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v152 = sub_1BC8F7734();
        __swift_project_value_buffer(v152, qword_1EDC2B268);
        v153 = v123;
        v154 = sub_1BC8F7714();
        v155 = sub_1BC8F81E4();

        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          *v156 = v387;
          *(v156 + 4) = v153;
          *v157 = v153;
          v158 = v153;
          _os_log_impl(&dword_1BC7A3000, v154, v155, "Skipping message because we found a nil recordUUID %{public}@", v156, 0xCu);
          sub_1BC7C1744(v157, &unk_1EBCF5DB0, &unk_1BC900410);
          MEMORY[0x1BFB2AA50](v157, -1, -1);
          v159 = v156;
          v100 = v410;
          MEMORY[0x1BFB2AA50](v159, -1, -1);
        }

        else
        {
        }

        v179 = v151;
        v82 = v150;
        v118 = v149;
        goto LABEL_60;
      }

      v125 = v124;
      v417 = v120;
      v126 = v406;
      sub_1BC8F7244();

      v127 = *v411;
      (*v411)(v100, v126, v414);
      v128 = [v123 dateDeleted];
      v129 = v123;
      if (v128)
      {
        break;
      }

      v160 = v405;
      __swift_storeEnumTagSinglePayload(v405, 1, 1, v121);
      sub_1BC7C1744(v160, &unk_1EBCF5D80, &qword_1BC8FEA60);
      v161 = v129;
      if ([v129 messageType] != 1)
      {
        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v180 = sub_1BC8F7734();
        __swift_project_value_buffer(v180, qword_1EDC2B268);
        v181 = sub_1BC8F7714();
        v182 = sub_1BC8F8204();
        v183 = os_log_type_enabled(v181, v182);
        isUniquelyReferenced_nonNull_native = v412;
        if (v183)
        {
          v184 = swift_slowAlloc();
          *v184 = 0;
          _os_log_impl(&dword_1BC7A3000, v181, v182, "Not updating message as it isn't a voicemail", v184, 2u);
          v185 = v184;
          v100 = v410;
          MEMORY[0x1BFB2AA50](v185, -1, -1);
        }

        else
        {
        }

        (*v409)(v100, v414);
        goto LABEL_57;
      }

      if (!v412[2] || (sub_1BC83C928(), (v162 & 1) == 0))
      {
        if (qword_1EDC1E1D0 != -1)
        {
          swift_once();
        }

        v186 = sub_1BC8F7734();
        __swift_project_value_buffer(v186, qword_1EDC2B268);
        v133 = v391;
        v134 = v414;
        (*v402)(v391, v100, v414);
        v187 = sub_1BC8F7714();
        v188 = sub_1BC8F8204();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v400 = v82;
          v191 = v190;
          *&v424 = v190;
          *v189 = v392;
          sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
          v192 = sub_1BC8F8A54();
          v193 = v133;
          v195 = v194;
          v413 = v161;
          v196 = *v409;
          (*v409)(v193, v134);
          v197 = sub_1BC7A9A4C(v192, v195, &v424);

          *(v189 + 4) = v197;
          _os_log_impl(&dword_1BC7A3000, v187, v188, "Failed to find message update for recordUUID %{public}s", v189, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v191);
          v198 = v191;
          v82 = v400;
          v147 = v407;
          MEMORY[0x1BFB2AA50](v198, -1, -1);
          v199 = v189;
          v100 = v410;
          MEMORY[0x1BFB2AA50](v199, -1, -1);

          v196(v100, v134);
LABEL_42:
          v121 = v147;
LABEL_56:
          v118 = v403;
          isUniquelyReferenced_nonNull_native = v412;
          goto LABEL_57;
        }

LABEL_55:
        v178 = *v409;
        (*v409)(v133, v134);
        v178(v100, v134);
        goto LABEL_56;
      }

      v413 = v129;
      sub_1BC8302F8();
      sub_1BC8303A8();
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v400 = sub_1BC8F7734();
      __swift_project_value_buffer(v400, qword_1EDC2B268);
      v163 = v389;
      sub_1BC8302F8();
      v164 = sub_1BC8F7714();
      v165 = sub_1BC8F8204();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = v118;
        v167 = v163;
        v168 = swift_slowAlloc();
        v361 = swift_slowAlloc();
        *&v424 = v361;
        *v168 = v392;
        sub_1BC87DDDC();
        v170 = v169;
        v171 = v82;
        v173 = v172;
        v174 = v167;
        v118 = v166;
        sub_1BC830350(v174, type metadata accessor for VoicemailUpdate);
        v175 = sub_1BC7A9A4C(v170, v173, &v424);
        v82 = v171;
        v121 = v407;

        *(v168 + 4) = v175;
        _os_log_impl(&dword_1BC7A3000, v164, v165, "Applying voicemail update: %{public}s", v168, 0xCu);
        v176 = v361;
        __swift_destroy_boxed_opaque_existential_1(v361);
        MEMORY[0x1BFB2AA50](v176, -1, -1);
        MEMORY[0x1BFB2AA50](v168, -1, -1);
      }

      else
      {

        v177 = sub_1BC830350(v163, type metadata accessor for VoicemailUpdate);
      }

      v200 = *(*(v390 + v365) + 32);
      v201 = MEMORY[0x1EEE9AC00](v177);
      v361 = v202;
      v203 = v410;
      *(&v353 - 2) = v202;
      *(&v353 - 1) = v203;
      MEMORY[0x1EEE9AC00](v201);
      v97 = &v353 - 4;
      *(&v353 - 2) = sub_1BC830520;
      *(&v353 - 1) = v204;
      os_unfair_lock_lock(v200 + 4);
      v205 = v370;
      sub_1BC830558(v206);
      v207 = v408;
      v370 = v205;
      v208 = v413;
      v209 = v200 + 4;
      if (v205)
      {
        goto LABEL_171;
      }

      os_unfair_lock_unlock(v209);
      sub_1BC87D064();
      if (v210)
      {
        if (qword_1EDC1E1A0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v400, qword_1EDC2B208);
        v211 = v378;
        v100 = v410;
        v212 = v414;
        (*v402)(v378, v410, v414);
        v213 = sub_1BC8F7714();
        v214 = sub_1BC8F8204();
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          v400 = v82;
          v217 = v216;
          *&v424 = v216;
          *v215 = v392;
          sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
          v218 = sub_1BC8F8A54();
          v219 = v211;
          v221 = v220;
          v361 = *v409;
          v361(v219, v212);
          v222 = sub_1BC7A9A4C(v218, v221, &v424);

          *(v215 + 4) = v222;
          _os_log_impl(&dword_1BC7A3000, v213, v214, "Not applying update to message with recordUUID: %{public}s because nothing was changed", v215, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v217);
          v223 = v217;
          v82 = v400;
          MEMORY[0x1BFB2AA50](v223, -1, -1);
          v224 = v215;
          v100 = v410;
          MEMORY[0x1BFB2AA50](v224, -1, -1);

          sub_1BC7C1744(v393, &qword_1EBCF58E0, &qword_1BC904880);
          v361(v100, v212);
        }

        else
        {

          v226 = *v409;
          (*v409)(v211, v212);
          sub_1BC7C1744(v393, &qword_1EBCF58E0, &qword_1BC904880);
          v226(v100, v212);
        }

        sub_1BC830350(v408, type metadata accessor for VoicemailUpdate);
        isUniquelyReferenced_nonNull_native = v412;
        v179 = v417;
LABEL_60:
        v121 = v407;
        goto LABEL_61;
      }

      v225 = v381;
      if (*(v207 + v397[5] + 8) || (sub_1BC7C3174(v208), v227))
      {

        v228 = sub_1BC8F7BE4();
      }

      else
      {
        v228 = 0;
      }

      [v208 setFrom_];

      v229 = *(v207 + v397[6]);
      if (v229 == 2)
      {
        LOBYTE(v229) = [v208 isRead];
      }

      [v208 setIsRead_];
      if (*(v207 + v397[11] + 8) || (sub_1BC7C31B0(v208), v230))
      {

        v231 = sub_1BC8F7BE4();
      }

      else
      {
        v231 = 0;
      }

      [v208 setSimID_];

      v232 = v380;
      sub_1BC830400();
      if (__swift_getEnumTagSinglePayload(v232, 1, v121) == 1)
      {
        v233 = [v208 dateCreated];
        if (v233)
        {
          v234 = v233;
          sub_1BC8F71B4();

          v235 = 0;
        }

        else
        {
          v235 = 1;
        }

        __swift_storeEnumTagSinglePayload(v225, v235, 1, v121);
        v236 = v379;
        sub_1BC830458();
        if (__swift_getEnumTagSinglePayload(v232, 1, v121) != 1)
        {
          sub_1BC7C1744(v232, &unk_1EBCF5D80, &qword_1BC8FEA60);
        }
      }

      else
      {
        v236 = v379;
        (*v360)(v379, v232, v121);
        __swift_storeEnumTagSinglePayload(v236, 0, 1, v121);
      }

      if (__swift_getEnumTagSinglePayload(v236, 1, v121) == 1)
      {
        v237 = 0;
      }

      else
      {
        v237 = sub_1BC8F7174();
        (*v364)(v236, v121);
      }

      [v208 setDateCreated_];

      v238 = v207 + v397[9];
      if (*(v238 + 2))
      {
        v239 = [v208 transcriptionStatus];
      }

      else
      {
        v239 = *v238;
      }

      [v208 setTranscriptionStatus_];
      v240 = v207 + v397[7];
      if (*(v240 + 2))
      {
        v241 = [v208 mailboxType];
      }

      else
      {
        v241 = *v240;
      }

      [v208 setMailboxType_];
      v242 = v207 + v397[14];
      v243 = *(v242 + 16);
      if (v243)
      {
        v244 = *v242;
        *&v424 = *v242;
        v245 = v243;
      }

      else
      {
        sub_1BC7C31C8();
        v244 = v424;
        v245 = v425;
      }

      v422 = v244;
      v423 = v245;

      sub_1BC8511D8(&v422);
      v246 = v386;
      sub_1BC830400();
      v247 = v414;
      if (__swift_getEnumTagSinglePayload(v246, 1, v414) == 1)
      {
        v248 = [v208 reminderUUID];
        v249 = v371;
        if (v248)
        {
          v250 = v248;
          sub_1BC8F7244();

          v251 = 0;
        }

        else
        {
          v251 = 1;
        }

        isUniquelyReferenced_nonNull_native = v412;
        v247 = v414;
        __swift_storeEnumTagSinglePayload(v249, v251, 1, v414);
        v252 = v382;
        sub_1BC830458();
        v253 = v386;
        if (__swift_getEnumTagSinglePayload(v386, 1, v247) != 1)
        {
          sub_1BC7C1744(v253, &unk_1EBCF5D70, &qword_1BC8FC740);
        }
      }

      else
      {
        v252 = v382;
        v127(v382, v246, v247);
        __swift_storeEnumTagSinglePayload(v252, 0, 1, v247);
        isUniquelyReferenced_nonNull_native = v412;
      }

      if (__swift_getEnumTagSinglePayload(v252, 1, v247) == 1)
      {
        v254 = 0;
      }

      else
      {
        v254 = sub_1BC8F7214();
        (*v409)(v252, v247);
      }

      [v208 setReminderUUID_];

      if (*(v207 + v397[8] + 8) || (sub_1BC7C318C(v208), v255))
      {

        v256 = sub_1BC8F7BE4();
      }

      else
      {
        v256 = 0;
      }

      [v208 setRecipient_];

      v257 = (v207 + v397[10]);
      v258 = *v257;
      if (*v257)
      {
        v260 = v257[1];
        v259 = v257[2];
        *&v424 = *v257;
        *(&v424 + 1) = v260;
        v359 = v260;
        v425 = v259;
        v358 = v259;

        v261 = v376;
        sub_1BC8CE5F4(&v424, v376);
        sub_1BC7AAAD0(qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript);
        v262 = v370;
        v263 = sub_1BC8F7544();
        if (v262)
        {
          sub_1BC830350(v261, type metadata accessor for FaceTimeMessageStore_Transcript);
          if (qword_1EDC1E1A0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v400, qword_1EDC2B208);
          v265 = v262;
          v266 = sub_1BC8F7714();
          v267 = sub_1BC8F81F4();

          v370 = v266;
          if (os_log_type_enabled(v266, v267))
          {
            v268 = swift_slowAlloc();
            v356 = v268;
            v357 = swift_slowAlloc();
            *&v424 = v357;
            *v268 = v392;
            swift_getErrorValue();
            v269 = v418;
            v270 = v419;
            v271 = v82;
            v272 = sub_1BC8F83F4();
            v354 = &v353;
            v273 = *(v272 - 8);
            MEMORY[0x1EEE9AC00](v272);
            HIDWORD(v355) = v267;
            v275 = &v353 - v274;
            (*(*(v270 - 8) + 16))(&v353 - v274, v269, v270);
            __swift_storeEnumTagSinglePayload(v275, 0, 1, v270);
            v276 = sub_1BC8073F0(v275, v270);
            v278 = v277;
            v279 = v272;
            v82 = v271;
            v280 = v407;
            (*(v273 + 8))(v275, v279);
            v121 = v280;
            v281 = sub_1BC7A9A4C(v276, v278, &v424);

            v282 = v356;
            *(v356 + 1) = v281;
            v283 = v370;
            v284 = v282;
            _os_log_impl(&dword_1BC7A3000, v370, BYTE4(v355), "Failed to archive voicemail transcript %{public}s", v282, 0xCu);
            v285 = v357;
            __swift_destroy_boxed_opaque_existential_1(v357);
            MEMORY[0x1BFB2AA50](v285, -1, -1);
            MEMORY[0x1BFB2AA50](v284, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v286 = v263;
          v287 = v264;
          sub_1BC830350(v261, type metadata accessor for FaceTimeMessageStore_Transcript);
          sub_1BC82EE28(v286, v287, v413, &selRef_setTranscriptData_);
        }

        v288 = MEMORY[0x1BFB2A220]();
        sub_1BC7C1A54(0x697263736E617274, 0xEA00000000007470, v384);
        objc_autoreleasePoolPop(v288);
        v289 = objc_opt_self();
        *&v424 = v258;
        *(&v424 + 1) = v359;
        v425 = v358;
        v290 = sub_1BC7DA680();
        *&v424 = 0;
        v291 = [v289 archivedDataWithRootObject:v290 requiringSecureCoding:1 error:&v424];

        v292 = v424;
        if (v291)
        {
          v293 = sub_1BC8F70D4();
          v295 = v294;

          v296 = v384;
          sub_1BC8F70F4();
          isUniquelyReferenced_nonNull_native = v412;
          v370 = 0;
          v208 = v413;
          sub_1BC82EDD0(v293, v295, v413);
          v319 = sub_1BC8F6EE4();
          sub_1BC7C3588(v319, v320, v208, &selRef_setTranscriptType_);
          sub_1BC7D4C94(v293, v295);
          (*v362)(v296, v375);
          v207 = v408;
        }

        else
        {
          v297 = v292;
          v298 = sub_1BC8F6EA4();

          swift_willThrow();
          (*v362)(v384, v375);
          v370 = 0;
          isUniquelyReferenced_nonNull_native = v412;
          if (qword_1EDC1E1A0 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v400, qword_1EDC2B208);
          v299 = v298;
          v300 = sub_1BC8F7714();
          v301 = sub_1BC8F81F4();

          if (os_log_type_enabled(v300, v301))
          {
            v302 = swift_slowAlloc();
            v359 = v302;
            v400 = swift_slowAlloc();
            *&v424 = v400;
            *v302 = v392;
            swift_getErrorValue();
            v304 = v420;
            v303 = v421;
            v305 = sub_1BC8F83F4();
            LODWORD(v358) = v301;
            v306 = v82;
            v307 = v305;
            v357 = &v353;
            v308 = *(v305 - 8);
            MEMORY[0x1EEE9AC00](v305);
            v310 = &v353 - v309;
            (*(*(v303 - 8) + 16))(&v353 - v309, v304, v303);
            __swift_storeEnumTagSinglePayload(v310, 0, 1, v303);
            v311 = sub_1BC8073F0(v310, v303);
            v313 = v312;
            v314 = v307;
            v82 = v306;
            v315 = v407;
            (*(v308 + 8))(v310, v314);
            v121 = v315;
            v316 = sub_1BC7A9A4C(v311, v313, &v424);

            v317 = v359;
            *(v359 + 1) = v316;
            isUniquelyReferenced_nonNull_native = v412;
            _os_log_impl(&dword_1BC7A3000, v300, v358, "Failed to archive legacy voicemail transcript %{public}s", v317, 0xCu);
            v318 = v400;
            __swift_destroy_boxed_opaque_existential_1(v400);
            MEMORY[0x1BFB2AA50](v318, -1, -1);
            MEMORY[0x1BFB2AA50](v317, -1, -1);
          }

          else
          {
          }

          v207 = v408;
          v208 = v413;
        }
      }

      if ([v208 hasPersistentChangedValues])
      {
        v321 = v372;
        sub_1BC8F71D4();
        v322 = sub_1BC8F7174();
        (*v364)(v321, v121);
        [v208 setDateModified_];
      }

      v323 = objc_allocWithZone(type metadata accessor for Message(0));
      v324 = v208;
      LOBYTE(v424) = 1;
      sub_1BC86A9C0(v324, 0x100000000, 0, v325, v326, v327, v328, v329, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364);
      if (v330)
      {
        v331 = v330;
        if (swift_weakLoadStrong())
        {
          sub_1BC8EC824(4, v331);
        }
      }

      v332 = v396;
      sub_1BC803F84();
      v333 = v385;
      if (__swift_getEnumTagSinglePayload(v332, 1, v385) != 1)
      {
        v413 = v324;
        v400 = v82;
        sub_1BC8303A8();
        v336 = v395;
        sub_1BC8302F8();
        __swift_storeEnumTagSinglePayload(v336, 0, 1, v333);
        v337 = *(v374 + 48);
        v338 = v373;
        sub_1BC830400();
        sub_1BC830400();
        if (__swift_getEnumTagSinglePayload(v338, 1, v333) == 1)
        {
          sub_1BC7C1744(v336, &qword_1EBCF58E0, &qword_1BC904880);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v338 + v337, 1, v333);
          v340 = v413;
          if (EnumTagSinglePayload == 1)
          {

            sub_1BC7C1744(v338, &qword_1EBCF58E0, &qword_1BC904880);
            v100 = v410;
            v179 = v417;
            goto LABEL_160;
          }

LABEL_153:
          sub_1BC7C1744(v338, &qword_1EBCF58D8, &unk_1BC902A50);
          goto LABEL_154;
        }

        v341 = v394;
        sub_1BC830400();
        if (__swift_getEnumTagSinglePayload(v338 + v337, 1, v333) == 1)
        {
          sub_1BC7C1744(v395, &qword_1EBCF58E0, &qword_1BC904880);
          sub_1BC830350(v341, type metadata accessor for MessageAssetInfo);
          v340 = v413;
          goto LABEL_153;
        }

        v349 = v367;
        sub_1BC8303A8();
        static MessageAssetInfo.== infix(_:_:)();
        v351 = v350;
        sub_1BC830350(v349, type metadata accessor for MessageAssetInfo);
        sub_1BC7C1744(v395, &qword_1EBCF58E0, &qword_1BC904880);
        sub_1BC830350(v341, type metadata accessor for MessageAssetInfo);
        sub_1BC7C1744(v338, &qword_1EBCF58E0, &qword_1BC904880);
        v340 = v413;
        if (v351)
        {

          v100 = v410;
          isUniquelyReferenced_nonNull_native = v412;
          v179 = v417;
LABEL_160:
          sub_1BC830350(v383, type metadata accessor for MessageAssetInfo);
          sub_1BC7C1744(v393, &qword_1EBCF58E0, &qword_1BC904880);
          (*v409)(v100, v414);
          sub_1BC830350(v408, type metadata accessor for VoicemailUpdate);
        }

        else
        {
LABEL_154:
          v342 = v368;
          v343 = v410;
          v344 = v414;
          (*v402)(v368, v410, v414);
          v345 = v383;
          v346 = v369;
          sub_1BC8302F8();
          __swift_storeEnumTagSinglePayload(v346, 0, 1, v385);
          sub_1BC82A374(v346, v342);

          v347 = v346;
          v100 = v343;
          v118 = v403;
          sub_1BC7C1744(v347, &qword_1EBCF58E0, &qword_1BC904880);
          v348 = *v409;
          (*v409)(v342, v344);
          sub_1BC830350(v345, type metadata accessor for MessageAssetInfo);
          sub_1BC7C1744(v393, &qword_1EBCF58E0, &qword_1BC904880);
          v348(v100, v344);
          sub_1BC830350(v408, type metadata accessor for VoicemailUpdate);
          isUniquelyReferenced_nonNull_native = v412;
          v179 = v417;
        }

        v82 = v400;
        goto LABEL_61;
      }

      sub_1BC7C1744(v393, &qword_1EBCF58E0, &qword_1BC904880);

      v334 = v410;
      (*v409)(v410, v414);
      sub_1BC830350(v207, type metadata accessor for VoicemailUpdate);
      v335 = v332;
      v100 = v334;
      sub_1BC7C1744(v335, &qword_1EBCF58E0, &qword_1BC904880);
LABEL_57:
      v179 = v417;
LABEL_61:
      v120 = v179 + 1;
      if (v82 == v416)
      {
        goto LABEL_162;
      }
    }

    v130 = v128;
    v413 = v123;
    v131 = v405;
    sub_1BC8F71B4();

    __swift_storeEnumTagSinglePayload(v131, 0, 1, v121);
    sub_1BC7C1744(v131, &unk_1EBCF5D80, &qword_1BC8FEA60);
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v132 = sub_1BC8F7734();
    __swift_project_value_buffer(v132, qword_1EDC2B268);
    v133 = v404;
    v134 = v414;
    (*v402)(v404, v100, v414);
    v135 = sub_1BC8F7714();
    v136 = sub_1BC8F81F4();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v400 = v82;
      v139 = v138;
      *&v424 = v138;
      *v137 = v392;
      sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
      v140 = sub_1BC8F8A54();
      v141 = v133;
      v143 = v142;
      v144 = *v409;
      (*v409)(v141, v134);
      v145 = sub_1BC7A9A4C(v140, v143, &v424);

      *(v137 + 4) = v145;
      _os_log_impl(&dword_1BC7A3000, v135, v136, "Skipping message with recordUUID %{public}s because it was marked as deleted", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v146 = v139;
      v82 = v400;
      v147 = v407;
      MEMORY[0x1BFB2AA50](v146, -1, -1);
      v148 = v137;
      v100 = v410;
      MEMORY[0x1BFB2AA50](v148, -1, -1);

      v144(v100, v134);
      goto LABEL_42;
    }

    goto LABEL_55;
  }

LABEL_162:
}

void sub_1BC82926C(void *a1, uint64_t a2)
{
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v4 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B268);

  v5 = a1;
  oslog = sub_1BC8F7714();
  v6 = sub_1BC8F81E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136446466;
    v10 = sub_1BC8F7264();
    v11 = MEMORY[0x1BFB29280](a2, v10);
    v13 = sub_1BC7A9A4C(v11, v12, &v19);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2114;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_1BC7A3000, oslog, v6, "MessageStoreManager: Got an error while fetching messages with UUIDs %{public}s: %{public}@", v7, 0x16u);
    sub_1BC7C1744(v8, &unk_1EBCF5DB0, &unk_1BC900410);
    v16 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v16);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }
}

BOOL sub_1BC82977C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC830400();
  v5 = v9;
  if (v9)
  {
    sub_1BC7A792C(v8, v7);
    sub_1BC7C1744(v8, &qword_1EBCF58F8, &qword_1BC9034D0);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    a3(a2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1BC7C1744(v8, &qword_1EBCF58F8, &qword_1BC9034D0);
  }

  return v5 == 0;
}

uint64_t sub_1BC82986C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC829890, 0, 0);
}

uint64_t sub_1BC829890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v13 = v10[7];
  v12 = v10[8];
  v14 = v10[6];
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 28) = BYTE4(v13) & 1;
  *(v15 + 32) = v12;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v14 + 88, *(v14 + 112));
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5968, &qword_1BC902CB0);
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_16_6();
  v11();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

void sub_1BC829994(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1BC8299E4(a1, a2 | ((HIDWORD(a2) & 1) << 32), a3);
  if (!v4)
  {
    *a4 = v6;
    *(a4 + 4) = BYTE4(v6) & 1;
  }
}

void sub_1BC8299E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 9)
  {
    v5 = a2;
    if ((a2 & 0x100000000) != 0)
    {
      v5 = sub_1BC82EA28(0x7FFE7960uLL) + 100000;
    }

    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v30 = a1;
    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B268);
    v8 = sub_1BC8F7714();
    v9 = sub_1BC8F8204();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      *(v10 + 4) = v5;
      _os_log_impl(&dword_1BC7A3000, v8, v9, "Checking if generated voicemailID is unique: %{public}d", v10, 8u);
      MEMORY[0x1BFB2AA50](v10, -1, -1);
    }

    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5970, &qword_1BC902CB8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC8FC230;
    *(v12 + 32) = v5;
    *(v11 + 16) = v12;
    type metadata accessor for FTLocalMessageProperties();
    v13 = static FTLocalMessageProperties.fetchRequest()();
    v14 = sub_1BC7E61F8([v13 setFetchBatchSize_]);
    [v13 setPredicate_];

    v15 = sub_1BC8F7714();
    v16 = sub_1BC8F8204();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BC7A3000, v15, v16, "Getting count for fetch request", v17, 2u);
      MEMORY[0x1BFB2AA50](v17, -1, -1);
    }

    v18 = v30;
    v19 = sub_1BC8F8304();
    if (v3)
    {
      sub_1BC829E38(v3, v13);
      swift_willThrow();
    }

    else
    {
      v20 = v19;
      v21 = sub_1BC8F7714();
      v22 = sub_1BC8F8204();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134349056;
        *(v23 + 4) = v20;
        _os_log_impl(&dword_1BC7A3000, v21, v22, "Got count %{public}ld for fetch request", v23, 0xCu);
        v24 = v23;
        v18 = v30;
        MEMORY[0x1BFB2AA50](v24, -1, -1);
      }

      v25 = sub_1BC8F7714();
      v26 = sub_1BC8F8204();
      v27 = os_log_type_enabled(v25, v26);
      if (v20 < 1)
      {
        if (v27)
        {
          v29 = swift_slowAlloc();
          *v29 = 67240192;
          *(v29 + 4) = v5;
          _os_log_impl(&dword_1BC7A3000, v25, v26, "Generated voicemailID was unique. Final voicemailID: %{public}d", v29, 8u);
          MEMORY[0x1BFB2AA50](v29, -1, -1);
        }
      }

      else
      {
        if (v27)
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_1BC7A3000, v25, v26, "Generated voicemailID was not unique. Re-rolling", v28, 2u);
          MEMORY[0x1BFB2AA50](v28, -1, -1);
        }

        sub_1BC8299E4(v18, 0x100000000, a3 + 1);
      }
    }
  }
}

void sub_1BC829E38(void *a1, void *a2)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EDC2B268);
  v5 = a2;
  v6 = a1;
  oslog = sub_1BC8F7714();
  v7 = sub_1BC8F81E4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2114;
    v10 = v5;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    v9[1] = v12;
    _os_log_impl(&dword_1BC7A3000, oslog, v7, "MessageStoreManager: Failed to get count with fetchRequest: %{public}@: %{public}@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    MEMORY[0x1BFB2AA50](v9, -1, -1);
    MEMORY[0x1BFB2AA50](v8, -1, -1);
  }
}

uint64_t sub_1BC829FF0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v1 + 88), *(v1 + 112));
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_133(v2);
  *v3 = v4;
  v3[1] = sub_1BC82A094;

  return sub_1BC8E9F34();
}

uint64_t sub_1BC82A094()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC82A194()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = v1;
  sub_1BC8103A8(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 56);
  if (Strong)
  {
    sub_1BC87BBFC(*(v0 + 56));

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v5();
}

uint64_t sub_1BC82A230()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1D8 != -1)
  {
    OUTLINED_FUNCTION_66(&qword_1EDC1E1D8);
  }

  v1 = *(v0 + 64);
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B280);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = *(v0 + 64);
  if (v5)
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_61_1();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_125_0(5.8381e-34);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v9);
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_1BC7C1744(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v16 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v16);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1BC82A374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = type metadata accessor for MessageAssetInfo(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v10);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v58 = v12;
  OUTLINED_FUNCTION_19_6();
  v13 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF58E0, &qword_1BC904880);
  v21 = OUTLINED_FUNCTION_25(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31();
  v59 = v22;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v52 - v24;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  if (qword_1EDC1E1E8 != -1)
  {
    OUTLINED_FUNCTION_50_1();
    swift_once();
  }

  v28 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v28, qword_1EDC2B298);
  v61 = a1;
  sub_1BC830400();
  v29 = *(v15 + 16);
  v29(v19, a2, v13);
  v30 = sub_1BC8F7714();
  v57 = sub_1BC8F81C4();
  v31 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v55 = v9;
    v34 = v33;
    v54 = swift_slowAlloc();
    v63 = v54;
    *v34 = 136446466;
    v35 = sub_1BC863800();
    v53 = v30;
    v36 = v35;
    v56 = v3;
    v38 = v37;
    sub_1BC7C1744(v27, &qword_1EBCF58E0, &qword_1BC904880);
    v39 = sub_1BC7A9A4C(v36, v38, &v63);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2082;
    v40 = v58;
    v29(v58, v19, v13);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v13);
    v44 = sub_1BC863940(v40);
    v46 = v45;
    sub_1BC7C1744(v40, &unk_1EBCF5D70, &qword_1BC8FC740);
    (*(v15 + 8))(v19, v13);
    v47 = sub_1BC7A9A4C(v44, v46, &v63);

    *(v34 + 14) = v47;
    v48 = v53;
    _os_log_impl(&dword_1BC7A3000, v53, v57, "Setting %{public}s to the cache with key %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v9 = v55;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    (*(v15 + 8))(v19, v13);
    sub_1BC7C1744(v27, &qword_1EBCF58E0, &qword_1BC904880);
  }

  v49 = v60;
  sub_1BC830400();
  if (__swift_getEnumTagSinglePayload(v49, 1, v62) == 1)
  {
    sub_1BC7C1744(v49, &qword_1EBCF58E0, &qword_1BC904880);
    v50 = v59;
    sub_1BC8227E0();
    return sub_1BC7C1744(v50, &qword_1EBCF58E0, &qword_1BC904880);
  }

  else
  {
    OUTLINED_FUNCTION_51_1();
    sub_1BC8303A8();
    sub_1BC82AC84();
    return sub_1BC830350(v9, type metadata accessor for MessageAssetInfo);
  }
}

uint64_t sub_1BC82A834()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F470(&v4, v2);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_1BC82A8E8()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  swift_beginAccess();
  v18 = sub_1BC8E7208(v2, *(v4 + 56));
  if (v18)
  {
    v19 = v18;
    swift_endAccess();
    sub_1BC82AC30(v19);
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    OUTLINED_FUNCTION_51_1();
    sub_1BC8302F8();

    v20 = 0;
  }

  else
  {
    v42 = v6;
    swift_endAccess();
    if (qword_1EDC1E1E8 != -1)
    {
      OUTLINED_FUNCTION_50_1();
      swift_once();
    }

    v21 = sub_1BC8F7734();
    v22 = __swift_project_value_buffer(v21, qword_1EDC2B298);
    v23 = *(v13 + 16);
    v23(v17, v2, v11);
    v24 = sub_1BC8F7714();
    sub_1BC8F8204();
    v25 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_9();
      v27 = swift_slowAlloc();
      v40 = v0;
      v28 = v27;
      OUTLINED_FUNCTION_8_2();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v28 = 136446210;
      v23(v10, v17, v11);
      v20 = 1;
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v11);
      v32 = sub_1BC863940(v10);
      HIDWORD(v38) = v22;
      v33 = v32;
      v35 = v34;
      sub_1BC7C1744(v10, &unk_1EBCF5D70, &qword_1BC8FC740);
      (*(v13 + 8))(v17, v11);
      v36 = sub_1BC7A9A4C(v33, v35, &v41);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_1BC7A3000, v24, BYTE4(v38), "Cache miss for %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {

      (*(v13 + 8))(v17, v11);
      v20 = 1;
    }

    v6 = v42;
  }

  v37 = type metadata accessor for MessageAssetInfo(0);
  __swift_storeEnumTagSinglePayload(v6, v20, 1, v37);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC82AC30(uint64_t result)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = v2 == result;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    v4 = result;
    sub_1BC82B328(result);

    return sub_1BC82AF70(v4);
  }

  return result;
}

void sub_1BC82AC84()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC7A9F74(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BC82B048();
  sub_1BC82B0A8();
}

uint64_t sub_1BC82AD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessageAssetInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC8F7264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = sub_1BC8E7208(a2, *(a1 + 56));
  if (v13)
  {
    v14 = v13;
    swift_endAccess();
    v15 = *(*v14 + 144);
    swift_beginAccess();
    sub_1BC82F48C(a3, v14 + v15);
    swift_endAccess();
    sub_1BC82AC30(v14);
  }

  else
  {
    swift_endAccess();
    (*(v10 + 16))(v12, a2, v9);
    sub_1BC8302F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
    swift_allocObject();
    v16 = sub_1BC82BCC0(v12, v8);
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a1 + 56);
    sub_1BC83D958();
    *(a1 + 56) = v19;
    swift_endAccess();
    sub_1BC82AF70(v16);
  }
}

uint64_t sub_1BC82AF70(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v3 + *(*v3 + 152)) = a1;
    swift_retain_n();

    swift_weakAssign();
    *(v1 + 48) = a1;
  }

  else
  {
    *(v1 + 40) = a1;

    *(v1 + 48) = a1;
  }
}

void sub_1BC82B048()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC830540(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BC82B0A8()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F354(&v3, v2);
  os_unfair_lock_unlock(v1 + 4);
  if (v3 == 1)
  {
    sub_1BC82B048();
  }
}

uint64_t sub_1BC82B124@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v5 = sub_1BC83C928();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
    sub_1BC8F8734();
    v8 = *(v14 + 48);
    v9 = sub_1BC8F7264();
    (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = *(*(v14 + 56) + 8 * v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
    sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
    sub_1BC8F8754();
    *(a1 + 56) = v14;
    swift_endAccess();
    sub_1BC82B328(v10);
    swift_beginAccess();
    sub_1BC8302F8();

    v11 = 0;
  }

  else
  {
    swift_endAccess();
    v11 = 1;
  }

  v12 = type metadata accessor for MessageAssetInfo(0);
  return __swift_storeEnumTagSinglePayload(a3, v11, 1, v12);
}

uint64_t sub_1BC82B328(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    *(v1 + 40) = *(a1 + *(*a1 + 152));
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    *(v1 + 48) = swift_weakLoadStrong();
  }

  Strong = swift_weakLoadStrong();
  v8 = *(*a1 + 152);
  v9 = *(a1 + v8);
  *(a1 + v8) = 0;
  swift_weakAssign();
  if (Strong)
  {
    *(Strong + *(*Strong + 152)) = v9;
  }

  if (v9)
  {
    swift_weakAssign();
  }
}

uint64_t sub_1BC82B494()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1BC8F7014();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC830400();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_1BC7C1744(v2, &qword_1EBCF5A20, &qword_1BC901BF0);
  }

  (*(v4 + 32))(v6, v2, v3);
  type metadata accessor for OSTransaction();
  if (qword_1EDC1DF70 != -1)
  {
    swift_once();
  }

  v8 = sub_1BC8F76B4();
  v9 = __swift_project_value_buffer(v8, qword_1EDC2B1D0);
  MEMORY[0x1EEE9AC00](v9);
  v11[3] = v11;
  static OSTransaction.transaction(withID:with:beginInterval:endInterval:block:)("com.apple.facetimemessagestored.fileCacheSave", 45, 2, v10, "Saving asset cache to disk", 26, 2, "Finished saving asset cache to disk", 35, 2, sub_1BC82F41C);
  return (*(v4 + 8))(v6, v3);
}

void sub_1BC82B708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  MEMORY[0x1EEE9AC00](v4);
  v33 = v32 - v5;
  v6 = sub_1BC8F7014();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1E8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BC8F7734();
  v11 = __swift_project_value_buffer(v10, qword_1EDC2B298);
  (*(v7 + 16))(v9, a2, v6);

  v32[2] = v11;
  v12 = sub_1BC8F7714();
  v13 = sub_1BC8F8204();
  v14 = os_log_type_enabled(v12, v13);
  v32[1] = a2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v34 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v32[0] = v4;
    v18 = v17;
    v35 = v17;
    *v16 = 134349314;
    *(v16 + 4) = sub_1BC82A834();

    *(v16 + 12) = 2082;
    sub_1BC7AAAD0(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
    v19 = sub_1BC8F8A54();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_1BC7A9A4C(v19, v21, &v35);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1BC7A3000, v12, v13, "Saving %{public}ld cached values to %{public}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFB2AA50](v18, -1, -1);
    v23 = v16;
    a1 = v34;
    MEMORY[0x1BFB2AA50](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_1BC8F6CB4();
  swift_allocObject();
  v24 = sub_1BC8F6CA4();
  v25 = *(a1 + 32);
  MEMORY[0x1EEE9AC00](v24);
  v32[-2] = sub_1BC82F438;
  v32[-1] = a1;
  os_unfair_lock_lock(v25 + 4);
  v26 = v32[3];
  v27 = v33;
  sub_1BC82EFA0(v28);
  if (v26)
  {
    os_unfair_lock_unlock(v25 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v25 + 4);
    sub_1BC82F8EC(qword_1EDC1E000, &qword_1EBCF5910, &unk_1BC903510);
    v29 = sub_1BC8F6C94();
    v31 = v30;
    sub_1BC7C1744(v27, &qword_1EBCF5910, &unk_1BC903510);

    sub_1BC8F70F4();
    sub_1BC7D4C94(v29, v31);
    if (*(a1 + 64))
    {

      sub_1BC8F8024();
    }

    *(a1 + 64) = 0;
  }
}

uint64_t sub_1BC82BCC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_80();
  *(v2 + *(v4 + 152)) = 0;
  OUTLINED_FUNCTION_80();
  swift_weakInit();
  OUTLINED_FUNCTION_80();
  v6 = *(v5 + 136);
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v7 + 32))(v2 + v6, a1);
  OUTLINED_FUNCTION_80();
  sub_1BC8303A8();
  OUTLINED_FUNCTION_80();
  swift_weakAssign();
  OUTLINED_FUNCTION_80();
  *(v2 + *(v8 + 152)) = 0;

  return v2;
}

uint64_t sub_1BC82BDCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  sub_1BC8F7264();
  type metadata accessor for MessageAssetInfo(0);
  v4 = MEMORY[0x1E69695A8];
  sub_1BC7AAAD0(&unk_1EDC20FB0, MEMORY[0x1E69695A8]);
  sub_1BC7AAAD0(&unk_1EDC20FC0, v4);
  sub_1BC7AAAD0(&unk_1EDC20600, v4);
  sub_1BC7AAAD0(&qword_1EDC1F990, type metadata accessor for MessageAssetInfo);
  sub_1BC7AAAD0(&qword_1EDC1F998, type metadata accessor for MessageAssetInfo);
  KeyPath = swift_getKeyPath();

  v7 = sub_1BC82EAB0(v6, KeyPath);

  v8 = sub_1BC82BFE4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  result = sub_1BC830400();
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  *a2 = v7;
  a2[1] = v8;
  v13 = a2 + *(v9 + 84);
  *v13 = v11;
  v13[8] = v12;
  return result;
}

uint64_t sub_1BC82BFE4()
{
  v1 = sub_1BC8F7264();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    do
    {
      (*(v2 + 16))(v4, v5 + *(*v5 + 136), v1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v6 = v9;
      }

      v7 = *(v6 + 16);
      if (v7 >= *(v6 + 24) >> 1)
      {
        sub_1BC7F7144();
        v6 = v10;
      }

      *(v6 + 16) = v7 + 1;
      (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v4, v1);
      v8 = *(v5 + *(*v5 + 152));

      v5 = v8;
    }

    while (v8);
  }

  return v6;
}

void sub_1BC82C1C4(uint64_t a1)
{
  v77 = sub_1BC8F7264();
  v3 = *(v77 - 8);
  v4 = MEMORY[0x1EEE9AC00](v77);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v70 - v9;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v71 = v1;
  v72 = a1;
  if (v12)
  {
    swift_beginAccess();
    v13 = *(*(a1 + 56) + 16);
    v14 = *(a1 + qword_1EDC2B1E8);
    v15 = v13 * v14;
    if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v16 = MEMORY[0x1E69E7CC0];
    v17 = v77;
    if (v11 < v15)
    {
      v18 = __OFSUB__(v15, v11);
      v19 = v15 - v11;
      if (v18)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v18 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (v18)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v18 = __OFSUB__(v20, 1);
      v21 = v20 - 1;
      if (v18)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (!v14)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v76 = v3;
      if (v21 == 0x8000000000000000 && v14 == -1)
      {
        goto LABEL_55;
      }

      v23 = MEMORY[0x1E69E7CC0];
      v24 = v21 / v14;
      v25 = sub_1BC82BFE4();
      v26 = sub_1BC8101C8(v24, v25);
      v74 = v28;
      v30 = v29 >> 1;
      v31 = (v29 >> 1) - v27;
      if (__OFSUB__(v29 >> 1, v27))
      {
        goto LABEL_52;
      }

      if (v31)
      {
        v32 = v27;
        v70 = v26;
        v78 = v23;
        sub_1BC7DDB5C(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return;
        }

        v33 = v78;
        v3 = v76;
        v73 = v76 + 16;
        while (v32 < v30)
        {
          v34 = *(v3 + 72);
          (*(v3 + 16))(v6, &v74[v34 * v32], v17);
          v35 = v33;
          v78 = v33;
          v36 = v17;
          v38 = *(v33 + 16);
          v37 = *(v33 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1BC7DDB5C(v37 > 1, v38 + 1, 1);
            v3 = v76;
            v35 = v78;
          }

          *(v35 + 16) = v38 + 1;
          v33 = v35;
          (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + v38 * v34, v6, v36);
          ++v32;
          v17 = v36;
          if (v30 == v32)
          {
            swift_unknownObjectRelease();
            a1 = v72;
            goto LABEL_33;
          }
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_unknownObjectRelease();
      v16 = MEMORY[0x1E69E7CC0];
      a1 = v72;
      v3 = v76;
    }
  }

  else
  {
    swift_beginAccess();
    v39 = *(*(a1 + 56) + 16);
    v18 = __OFSUB__(v39, v11);
    v40 = v39 - v11;
    if (v18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v16 = MEMORY[0x1E69E7CC0];
    if (v40 <= 0)
    {
      v17 = v77;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
      v76 = v3;
      v42 = sub_1BC82BFE4();
      v43 = sub_1BC8101C8(v40, v42);
      v74 = v45;
      v47 = v46 >> 1;
      v48 = (v46 >> 1) - v44;
      if (__OFSUB__(v46 >> 1, v44))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v48)
      {
        v49 = v44;
        v70 = v43;
        v78 = v41;
        sub_1BC7DDB5C(0, v48 & ~(v48 >> 63), 0);
        if (v48 < 0)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v33 = v78;
        v3 = v76;
        v73 = v76 + 16;
        do
        {
          if (v49 >= v47)
          {
            __break(1u);
            goto LABEL_44;
          }

          v50 = *(v3 + 72);
          v51 = v77;
          (*(v3 + 16))(v10, &v74[v50 * v49], v77);
          v52 = v33;
          v78 = v33;
          v54 = *(v33 + 16);
          v53 = *(v33 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_1BC7DDB5C(v53 > 1, v54 + 1, 1);
            v3 = v76;
            v52 = v78;
          }

          *(v52 + 16) = v54 + 1;
          v33 = v52;
          (*(v3 + 32))(v52 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + v54 * v50, v10, v51);
          ++v49;
        }

        while (v47 != v49);
        swift_unknownObjectRelease();
        a1 = v72;
        v17 = v77;
LABEL_33:
        v16 = v33;
      }

      else
      {
        swift_unknownObjectRelease();
        v16 = MEMORY[0x1E69E7CC0];
        a1 = v72;
        v3 = v76;
        v17 = v77;
      }
    }
  }

  v55 = *(v16 + 16);
  if (v55)
  {
    v57 = *(v3 + 16);
    v56 = v3 + 16;
    v58 = *(v56 + 64);
    v70 = v16;
    v59 = v16 + ((v58 + 32) & ~v58);
    v60 = (v56 - 8);
    v61 = *(v56 + 56);
    v76 = v56;
    v73 = v61;
    v74 = v57;
    do
    {
      v62 = v75;
      (v74)(v75, v59, v17);
      swift_beginAccess();
      v63 = sub_1BC83C928();
      v65 = v64;
      v66 = *v60;
      (*v60)(v62, v17);
      if (v65)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v79 = *(a1 + 56);
        *(a1 + 56) = 0x8000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
        sub_1BC8F8734();
        v67 = v79;
        v68 = v73;
        v66((*(v79 + 48) + v63 * v73), v77);
        v69 = *(*(v67 + 56) + 8 * v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
        sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
        a1 = v72;
        sub_1BC8F8754();
        *(a1 + 56) = v67;
        swift_endAccess();
        sub_1BC82B328(v69);
        v17 = v77;
      }

      else
      {
        swift_endAccess();
        v68 = v73;
      }

      v59 += v68;
      --v55;
    }

    while (v55);
  }
}

uint64_t sub_1BC82C814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  sub_1BC830400();
  v8 = sub_1BC8F7014();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  result = sub_1BC7C1744(v7, &qword_1EBCF5A20, &qword_1BC901BF0);
  if (EnumTagSinglePayload != 1 && !*(a1 + 64))
  {
    v11 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;

    sub_1BC8333D4();
    *(a1 + 64) = v13;
  }

  return result;
}

uint64_t sub_1BC82C9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BC8F86F4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC82CA90, 0, 0);
}

uint64_t sub_1BC82CA90()
{
  OUTLINED_FUNCTION_5();
  sub_1BC8F8B74();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_133(v0);
  *v1 = v2;
  v1[1] = sub_1BC82CB50;
  OUTLINED_FUNCTION_13();

  return sub_1BC82D814();
}

uint64_t sub_1BC82CB50()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC82CCC8()
{
  OUTLINED_FUNCTION_5();
  sub_1BC82B494();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC82CD2C(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1BC82CE20;

  return v5(v2 + 16);
}

uint64_t sub_1BC82CE20()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC82CF18()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 32);
  v2 = *(*(*(v0 + 40) + 64) + 40);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v1;
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC82CF94()
{
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  OUTLINED_FUNCTION_76();
  v0 = swift_allocError();
  OUTLINED_FUNCTION_54_1(v0, v1);
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC82D014(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BC82D100;

  return v5();
}

uint64_t sub_1BC82D100()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC82D1F8()
{
  OUTLINED_FUNCTION_5();
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC82D250()
{
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  OUTLINED_FUNCTION_76();
  v0 = swift_allocError();
  OUTLINED_FUNCTION_54_1(v0, v1);
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC82D2D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BC82D3C4;

  return v5(v2 + 40);
}

uint64_t sub_1BC82D3C4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC82D4BC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 44);
  v2 = *(*(*(v0 + 16) + 64) + 40);
  *v2 = *(v0 + 40);
  *(v2 + 4) = v1;
  swift_continuation_throwingResume();
  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC82D540(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1BC82D634;

  return v5(v2 + 16);
}

uint64_t sub_1BC82D634()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC82D72C()
{
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  OUTLINED_FUNCTION_76();
  v0 = swift_allocError();
  OUTLINED_FUNCTION_54_1(v0, v1);
  OUTLINED_FUNCTION_27();

  return v2();
}

uint64_t sub_1BC82D7B8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for FTStoredMessage();
      result = sub_1BC8F7EB4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1BC82D814()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1BC8F86E4();
  *(v1 + 64) = v12;
  OUTLINED_FUNCTION_26(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BC82D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v11 = v10[10];
  v12 = v10[8];
  v13 = v10[9];
  sub_1BC8F86F4();
  sub_1BC7AAAD0(&qword_1EDC210B8, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_30();
  sub_1BC8F8B54();
  sub_1BC7AAAD0(&unk_1EDC210C0, MEMORY[0x1E69E87E8]);
  sub_1BC8F8704();
  v14 = *(v13 + 8);
  v10[12] = v14;
  v10[13] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v10[14] = v15;
  *v15 = v10;
  v15[1] = sub_1BC82DA7C;
  OUTLINED_FUNCTION_111();

  return MEMORY[0x1EEE6DE58](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1BC82DA7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v14();
  }
}

uint64_t sub_1BC82DC14()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC82DC78()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC823970(v3, v4, v5);
}

uint64_t sub_1BC82DD08()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82D014(v3, v4);
}

uint64_t sub_1BC82DD94()
{
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19(v3);
  *v4 = v5;
  v4[1] = sub_1BC7B0248;

  return sub_1BC813F88(v2, v0);
}

uint64_t sub_1BC82DE24()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82CD2C(v3, v4);
}

uint64_t sub_1BC82DEB0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16(v1);

  return v4(v3);
}

uint64_t sub_1BC82DF7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BC8DC0B8();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BC82DFF8(v6);
  return sub_1BC8F8664();
}

void sub_1BC82DFF8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1BC8F8A44();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1BC82D7B8(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1BC82E1C0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1BC82E0D8(0, v3, 1, a1);
  }
}

void sub_1BC82E0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    type metadata accessor for FTStoredMessage();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v27 = v7;
      do
      {
        v11 = *v7;
        v12 = v9;
        v13 = v11;
        static FTStoredMessage.< infix(_:_:)(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v22 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v22;
        v7 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 = v27 + 8;
      --v8;
      if (v4 != v25)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1BC82E1C0(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v130 = a3;
  v5 = v4;
  v122 = a1;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v132 = *v122;
    if (!*v122)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v110 = v8 + 16;
      v109 = *(v8 + 2);
      while (v109 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_130;
        }

        v111 = v8;
        v112 = &v8[16 * v109];
        v113 = *v112;
        v114 = &v110[2 * v109];
        v115 = *(v114 + 1);
        sub_1BC82E804((*v130 + 8 * *v112), (*v130 + 8 * *v114), (*v130 + 8 * v115), v132);
        if (v5)
        {
          break;
        }

        if (v115 < v113)
        {
          goto LABEL_118;
        }

        if (v109 - 2 >= *v110)
        {
          goto LABEL_119;
        }

        *v112 = v113;
        *(v112 + 1) = v115;
        v116 = *v110 - v109;
        if (*v110 < v109)
        {
          goto LABEL_120;
        }

        v109 = *v110 - 1;
        sub_1BC8D950C(v114 + 16, v116, v114);
        *v110 = v109;
        v8 = v111;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_1BC8D94F4();
    goto LABEL_94;
  }

  v118 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v133 = v5;
    v11 = v7 + 1;
    v12 = *(*v130 + 8 * v10);
    v13 = (*v130 + 8 * v7);
    v14 = 8 * v7;
    v16 = *v13;
    v15 = v13 + 2;
    v126 = v6;
    type metadata accessor for FTStoredMessage();
    v17 = v12;
    v5 = v16;
    static FTStoredMessage.< infix(_:_:)(v17, v5, v18, v19, v20, v21, v22, v23, v117, v118, v8, v121, v122, v123, v126, v130, v131, v133, v134, v135);
    v25 = v24;

    v26 = v127;
    v121 = v9;
    v27 = v9 + 2;
    do
    {
      v28 = v27;
      if (v11 + 1 >= v26)
      {
        v11 = v26;
        if (v25)
        {
          goto LABEL_8;
        }

LABEL_20:
        v5 = v132;
        v8 = v119;
        v9 = v121;
        v10 = v11;
        goto LABEL_22;
      }

      ++v11;
      v29 = *(v15 - 1);
      v30 = *v15;
      v5 = v29;
      static FTStoredMessage.< infix(_:_:)(v30, v5, v31, v32, v33, v34, v35, v36, v117, v118, v119, v121, v122, v124, v127, v130, v131, v132, v134, v135);
      LODWORD(v29) = v37 & 1;

      ++v15;
      v27 = v28 + 1;
      v26 = v127;
    }

    while ((v25 & 1) == v29);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v121;
    if (v11 < v121)
    {
      goto LABEL_124;
    }

    v10 = v11;
    if (v121 >= v11)
    {
      v5 = v132;
      v8 = v119;
    }

    else
    {
      v38 = v26 >= v28 ? v28 : v26;
      v39 = 8 * v38 - 8;
      v40 = v11;
      v41 = v121;
      v5 = v132;
      v8 = v119;
      do
      {
        if (v41 != --v40)
        {
          v42 = *v130;
          if (!*v130)
          {
            goto LABEL_131;
          }

          v43 = *(v42 + v14);
          *(v42 + v14) = *(v42 + v39);
          *(v42 + v39) = v43;
        }

        ++v41;
        v39 -= 8;
        v14 += 8;
      }

      while (v41 < v40);
    }

LABEL_22:
    v44 = v130[1];
    if (v10 < v44)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (v10 - v9 < v118)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    v129 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BC7F6FCC();
      v8 = v107;
    }

    v65 = *(v8 + 2);
    v66 = v65 + 1;
    v132 = v5;
    if (v65 >= *(v8 + 3) >> 1)
    {
      sub_1BC7F6FCC();
      v8 = v108;
    }

    *(v8 + 2) = v66;
    v5 = (v8 + 32);
    v67 = &v8[16 * v65 + 32];
    *v67 = v9;
    *(v67 + 1) = v10;
    v123 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if (v65)
    {
      while (1)
      {
        v68 = v66 - 1;
        v69 = &v5[2 * v66 - 2];
        v70 = &v8[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v71 = *(v8 + 4);
          v72 = *(v8 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_59:
          if (v74)
          {
            goto LABEL_109;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_112;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_117;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v66 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v66 < 2)
        {
          goto LABEL_111;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_74:
        if (v89)
        {
          goto LABEL_114;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_116;
        }

        if (v96 < v88)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v68 - 1 >= v66)
        {
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
          goto LABEL_126;
        }

        if (!*v130)
        {
          goto LABEL_129;
        }

        v100 = &v5[2 * v68 - 2];
        v101 = *v100;
        v102 = &v5[2 * v68];
        v103 = v102[1];
        sub_1BC82E804((*v130 + 8 * *v100), (*v130 + 8 * *v102), (*v130 + 8 * v103), v123);
        if (v132)
        {
          goto LABEL_102;
        }

        if (v103 < v101)
        {
          goto LABEL_104;
        }

        v104 = v8;
        v105 = *(v8 + 2);
        if (v68 > v105)
        {
          goto LABEL_105;
        }

        *v100 = v101;
        v100[1] = v103;
        if (v68 >= v105)
        {
          goto LABEL_106;
        }

        v66 = v105 - 1;
        sub_1BC8D950C(v102 + 16, v105 - 1 - v68, &v5[2 * v68]);
        *(v104 + 2) = v105 - 1;
        v106 = v105 > 2;
        v8 = v104;
        if (!v106)
        {
          goto LABEL_88;
        }
      }

      v75 = &v5[2 * v66];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_107;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_108;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_110;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_113;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_121;
        }

        if (v73 < v99)
        {
          v68 = v66 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v129;
    v6 = v130[1];
    v5 = v132;
    if (v129 >= v6)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v9, v118))
  {
    goto LABEL_125;
  }

  if (v9 + v118 >= v44)
  {
    v45 = v130[1];
  }

  else
  {
    v45 = v9 + v118;
  }

  if (v45 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v45)
  {
    goto LABEL_39;
  }

  v120 = v8;
  v132 = v5;
  v46 = *v130;
  type metadata accessor for FTStoredMessage();
  v47 = v46 + 8 * v10 - 8;
  v121 = v9;
  v48 = v9 - v10;
  v125 = v45;
LABEL_32:
  v128 = v10;
  v49 = *(v46 + 8 * v10);
  v50 = v48;
  v51 = v47;
  while (1)
  {
    v52 = *v51;
    v53 = v49;
    v54 = v52;
    static FTStoredMessage.< infix(_:_:)(v53, v54, v55, v56, v57, v58, v59, v60, v117, v118, v120, v121, v122, v125, v128, v130, v131, v132, v134, v135);
    v62 = v61;

    if ((v62 & 1) == 0)
    {
LABEL_37:
      v10 = v128 + 1;
      v47 += 8;
      --v48;
      if (v128 + 1 == v125)
      {
        v10 = v125;
        v5 = v132;
        v8 = v120;
        v9 = v121;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v46)
    {
      break;
    }

    v63 = *v51;
    v49 = *(v51 + 8);
    *v51 = v49;
    *(v51 + 8) = v63;
    v51 -= 8;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1BC82E804(char *a1, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1BC7DD644(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      type metadata accessor for FTStoredMessage();
      v15 = v13;
      v16 = v14;
      static FTStoredMessage.< infix(_:_:)(v15, v16, v17, v18, v19, v20, v21, v22, v51, v52, v53, v54, v56, v57, v58, v59, v60, v61, v62, v63);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = v6;
      v26 = v7 == v6++;
      if (!v26)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v25 = v4;
    v26 = v7 == v4++;
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v25;
    goto LABEL_13;
  }

  sub_1BC7DD644(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v55 = v4;
LABEL_15:
  v27 = v6 - 1;
  v28 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v30 = v6;
    v31 = v28;
    v32 = v7;
    v33 = *(v10 - 1);
    v34 = v27;
    v35 = *v27;
    type metadata accessor for FTStoredMessage();
    v36 = v33;
    v37 = v35;
    static FTStoredMessage.< infix(_:_:)(v36, v37, v38, v39, v40, v41, v42, v43, v51, v52, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    v45 = v44;

    v5 = v31;
    v46 = v31 + 1;
    if (v45)
    {
      v47 = v34;
      v6 = v34;
      v7 = v32;
      v4 = v55;
      if (v46 != v30)
      {
        *v5 = *v47;
        v6 = v47;
      }

      goto LABEL_15;
    }

    if (v10 != v46)
    {
      *v31 = *(v10 - 1);
    }

    v28 = v31 - 1;
    --v10;
    v27 = v34;
    v7 = v32;
    v4 = v55;
  }

LABEL_28:
  v48 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v48])
  {
    memmove(v6, v4, 8 * v48);
  }

  return 1;
}

unint64_t sub_1BC82EA28(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1BFB2AA70](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      while (v4 > v3)
      {
        v5 = 0;
        MEMORY[0x1BFB2AA70](&v5, 8);
        v3 = v5 * v2;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC82EAB0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for MessageAssetInfo(0);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BC8F7264();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5918, &qword_1BC902AC0);
  result = sub_1BC8F87B4();
  v8 = 0;
  v38 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v30 = result + 64;
  v31 = v5 + 16;
  v34 = v5;
  v29[1] = v5 + 32;
  v16 = result;
  v32 = result;
  if (v14)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
LABEL_10:
      v20 = v17 | (v8 << 6);
      v21 = v38;
      v22 = *(v38 + 48);
      v23 = v33;
      v24 = v34;
      v41 = *(v34 + 72) * v20;
      v25 = v35;
      (*(v34 + 16))(v33, v22 + v41, v35);
      v42 = *(*(v21 + 56) + 8 * v20);

      swift_getAtKeyPath();

      *(v30 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v16 = v32;
      (*(v24 + 32))(*(v32 + 48) + v41, v23, v25);
      result = sub_1BC8303A8();
      v26 = *(v16 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      *(v16 + 16) = v28;
      v14 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v15)
      {

        return v16;
      }

      v19 = *(v10 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BC82EDD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BC8F70C4();
  [a3 setTranscript_];
}

void sub_1BC82EE28(uint64_t a1, unint64_t a2, void *a3, SEL *a4)
{
  v8 = sub_1BC8F70C4();
  sub_1BC7D4C94(a1, a2);
  [a3 *a4];
}

void (*sub_1BC82EE9C(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1BC82D7AC(a3);
  sub_1BC8E2358();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1BFB29A00](a2, a3);
  }

  *a1 = v7;
  return sub_1BC82EF28;
}

unint64_t sub_1BC82EF30()
{
  result = qword_1EBCF58E8;
  if (!qword_1EBCF58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58E8);
  }

  return result;
}

uint64_t sub_1BC82F06C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1BC82F0B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1BC8F8504();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BC7C0454(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for FTStoredMessage();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1BC82F8EC(&qword_1EBCF5958, &qword_1EBCF5950, &unk_1BC902C10);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5950, &unk_1BC902C10);
          v9 = sub_1BC82EE9C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BC82F280@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void *(*a3)(uint64_t *__return_ptr)@<X1>)
{
  result = sub_1BC850194(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BC82F2AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BC82A89C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BC82F2D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X1>)
{
  result = sub_1BC8501CC(a2, a3);
  if (!v3)
  {
    *a1 = result & 1;
  }

  return result;
}

void sub_1BC82F308(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1BC82C1C4(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
  }
}

uint64_t sub_1BC82F38C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC82C9D0(v3, v4, v5, v6);
}

uint64_t sub_1BC82F48C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAssetInfo(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC82F50C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0168;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC82285C(v3, v4, v5);
}

uint64_t sub_1BC82F59C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82D540(v3, v4);
}

uint64_t sub_1BC82F644()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC821AB8(v3, v4, v5);
}

uint64_t sub_1BC82F6D4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC8215A0(v3, v4, v5, v6);
}

uint64_t sub_1BC82F764()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC814418(v3, v4, v5);
}

uint64_t sub_1BC82F830(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_1BC82F874(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BC8F8504();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x1EEE6A410](0, v2, 0, a1);
}

unint64_t sub_1BC82F8D8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1BC7B0EFC(result);
  }

  return result;
}

uint64_t sub_1BC82F8EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_121();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC82F950()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC7BA51C(v3, v4);
}

uint64_t objectdestroy_127Tm()
{
  v1 = (type metadata accessor for MessageStoreFetchRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 8))(v0 + v3);
  sub_1BC7B0EFC(*(v0 + v3 + v1[7]));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC82FB20()
{
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_40_4();

  return sub_1BC82986C(v3, v4, v5, v6);
}

uint64_t sub_1BC82FBD0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC82D2D0(v3, v4);
}

uint64_t sub_1BC82FC98()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC812250(v3, v4, v5);
}

uint64_t sub_1BC82FD54()
{
  OUTLINED_FUNCTION_32();
  v1 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_25(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_7(v5);
  *v6 = v7;
  v6[1] = sub_1BC7B0248;

  return sub_1BC81FDC0(v4, v0 + v3);
}

uint64_t sub_1BC82FE20()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  OUTLINED_FUNCTION_4_12();

  return sub_1BC8E4808();
}

uint64_t sub_1BC82FECC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BC7D9730(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC82FF1C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_53_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_7(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_15(v1);

  return sub_1BC81D8F8(v3, v4, v5);
}

uint64_t sub_1BC830078()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC829FD0(v3, v4, v5, v6);
}

uint64_t sub_1BC830108()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_13(v1);
  OUTLINED_FUNCTION_95();

  return sub_1BC810C70();
}

id sub_1BC8301B4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroyTm(void (*a1)(void))
{

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BC83024C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0248;
  v3 = OUTLINED_FUNCTION_4_12();

  return sub_1BC825FF0(v3, v4, v5);
}

uint64_t sub_1BC8302F8()
{
  OUTLINED_FUNCTION_131();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_29();
  v3(v2);
  return v0;
}

uint64_t sub_1BC830350(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BC8303A8()
{
  OUTLINED_FUNCTION_131();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_29();
  v3(v2);
  return v0;
}

uint64_t sub_1BC830400()
{
  OUTLINED_FUNCTION_131();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_29();
  v4(v3);
  return v0;
}

uint64_t sub_1BC830458()
{
  OUTLINED_FUNCTION_131();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_29();
  v4(v3);
  return v0;
}

uint64_t sub_1BC8304B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailUpdate(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_106(uint64_t a1)
{
  v4 = *(v1 + 16);

  sub_1BC81BD54(v4, a1);
}

uint64_t OUTLINED_FUNCTION_107()
{
}

uint64_t OUTLINED_FUNCTION_108()
{
  v2 = *(v0 + 112);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 88, v2);
}

uint64_t OUTLINED_FUNCTION_134(uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

unint64_t sub_1BC8307A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC7CB90C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BC8307D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7C58F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BC8307FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7CB90C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC830824(uint64_t a1)
{
  v2 = sub_1BC7C56A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC830860(uint64_t a1)
{
  v2 = sub_1BC7C56A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8308A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004449)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BC8F8AA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BC830944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8308A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BC830970(uint64_t a1)
{
  v2 = sub_1BC830C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8309AC(uint64_t a1)
{
  v2 = sub_1BC830C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8309E8(uint64_t a1)
{
  v2 = sub_1BC830C5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC830A24(uint64_t a1)
{
  v2 = sub_1BC830C5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SandboxExtendedURL.DecodingError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59C8, &qword_1BC902DA0);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59D0, &qword_1BC902DA8);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_1BC830C08();
  sub_1BC8F8CA4();
  sub_1BC830C5C();
  sub_1BC8F8934();
  (*(v27 + 8))(v30, v25);
  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_23();
}

unint64_t sub_1BC830C08()
{
  result = qword_1EBCF59D8;
  if (!qword_1EBCF59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF59D8);
  }

  return result;
}

unint64_t sub_1BC830C5C()
{
  result = qword_1EBCF59E0;
  if (!qword_1EBCF59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF59E0);
  }

  return result;
}

uint64_t SandboxExtendedURL.DecodingError.hashValue.getter()
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](0);
  return sub_1BC8F8C64();
}

void SandboxExtendedURL.DecodingError.init(from:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59E8, &qword_1BC902DB0);
  OUTLINED_FUNCTION_0();
  v35 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF59F0, &unk_1BC902DB8);
  OUTLINED_FUNCTION_0();
  v36 = v9;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BC830C08();
  sub_1BC8F8C84();
  if (v0)
  {
    goto LABEL_9;
  }

  v33 = v7;
  v34 = v2;
  v13 = sub_1BC8F8914();
  sub_1BC7B7A64(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v35 = v14;
LABEL_8:
    v27 = v8;
    v28 = sub_1BC8F8624();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0);
    *v30 = &type metadata for SandboxExtendedURL.DecodingError;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v17, v27);
    v2 = v34;
LABEL_9:
    v31 = v2;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_1BC7B85D0(v15 + 1);
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v34;
    v25 = v35;
    if (v23)
    {
      sub_1BC830C5C();
      v26 = v33;
      sub_1BC8F8814();
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v36 + 8))(v17, v8);
      v31 = v24;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_23();
      return;
    }

    v35 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1BC8310F8()
{
  if (*MEMORY[0x1E69E9BA8])
  {
    v0 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];
    if (v0)
    {
      qword_1EDC1EF10 = v0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id SandboxExtendedURL.__allocating_init(with:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_10_2();
  return SandboxExtendedURL.init(with:)();
}

id SandboxExtendedURL.__allocating_init(url:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_10_2();
  return SandboxExtendedURL.init(url:)(v2);
}

id SandboxExtendedURL.init(url:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8_15(&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle]);
  *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = sub_1BC8F6F44();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SandboxExtendedURL();
  v4 = objc_msgSendSuper2(&v7, sel_init);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_42();
  (*(v5 + 8))(a1);
  return v4;
}

id SandboxExtendedURL.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_10_2();
  return SandboxExtendedURL.init(coder:)(v2);
}

id SandboxExtendedURL.init(coder:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8_15(&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle]);
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken;
  *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
  sub_1BC7D9730(0, &qword_1EDC1FF38, 0x1E695DFF8);
  v5 = sub_1BC8F8364();
  if (v5)
  {
    v6 = v5;
    *&v2[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url] = v5;
    sub_1BC7D9730(0, &qword_1EDC20640, 0x1E696AEC0);
    v7 = v6;
    v8 = sub_1BC8F8364();
    v9 = *&v2[v4];
    *&v2[v4] = v8;
    v10 = v8;

    v13.receiver = v2;
    v13.super_class = type metadata accessor for SandboxExtendedURL();
    v11 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {

    type metadata accessor for SandboxExtendedURL();
    OUTLINED_FUNCTION_14_9();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

void sub_1BC8313F8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url];
  v4 = sub_1BC8F7BE4();
  [a1 encodeObject:v3 forKey:v4];

  if (qword_1EDC1EF08 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  [qword_1EDC1EF10 UTF8String];
  [v3 fileSystemRepresentation];
  v5 = sandbox_extension_issue_file();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithUTF8String_];
    v8 = sub_1BC8F7BE4();
    [a1 encodeObject:v7 forKey:v8];

    free(v6);
  }

  else
  {
    if (qword_1EDC1E1B8 != -1)
    {
      OUTLINED_FUNCTION_1_15(&qword_1EDC1E1B8);
    }

    v9 = sub_1BC8F7734();
    __swift_project_value_buffer(v9, qword_1EDC2B238);
    v10 = v1;
    oslog = sub_1BC8F7714();
    v11 = sub_1BC8F8204();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = OUTLINED_FUNCTION_21_1();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      *(v12 + 4) = v3;
      *v13 = v3;
      v14 = v3;
      _os_log_impl(&dword_1BC7A3000, oslog, v11, "Unable to issue sandbox extension for file with URL: %{public}@", v12, 0xCu);
      sub_1BC7F1790(v13, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }
  }
}

void *sub_1BC8316B8()
{
  v2 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_13();
  v6 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url];
  sub_1BC8F6FB4();
  sub_1BC7ED3FC();
  v8 = v7;
  (*(v4 + 8))(v1, v2);
  if (v8)
  {
    v9 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    if (v10)
    {
      if (v9 == 0xD00000000000001FLL && v10 == 0x80000001BC90BCA0)
      {
      }

      else
      {
        v12 = sub_1BC8F8AA4();

        if ((v12 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v31 = v6;
      return v6;
    }
  }

LABEL_8:
  v13 = &v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle];
  if (v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionHandle + 8] == 1)
  {
    v14 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken];
    if (!v14)
    {
      if (qword_1EDC1E1B8 != -1)
      {
        OUTLINED_FUNCTION_1_15(&qword_1EDC1E1B8);
      }

      v32 = sub_1BC8F7734();
      __swift_project_value_buffer(v32, qword_1EDC2B238);
      v25 = v0;
      v26 = sub_1BC8F7714();
      sub_1BC8F8204();

      if (!OUTLINED_FUNCTION_18_7())
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_21_1();
      v27 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_10_12(v27, 5.8381e-34);
      v30 = "Sandbox token for URL: %{public}@ was nil!";
      goto LABEL_28;
    }

    v15 = v14;
    [v15 UTF8String];
    v16 = sandbox_extension_consume();

    *v13 = v16;
    v13[8] = 0;
  }

  else
  {
    v16 = *v13;
  }

  if (v16 == -1)
  {
    if (qword_1EDC1E1B8 != -1)
    {
      OUTLINED_FUNCTION_1_15(&qword_1EDC1E1B8);
    }

    v24 = sub_1BC8F7734();
    __swift_project_value_buffer(v24, qword_1EDC2B238);
    v25 = v0;
    v26 = sub_1BC8F7714();
    sub_1BC8F8204();

    if (!OUTLINED_FUNCTION_18_7())
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_21_1();
    v27 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_10_12(v27, 5.8381e-34);
    v30 = "Error while consuming sandbox extension for URL: %{public}@";
LABEL_28:
    OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v28, v29, v30);
    sub_1BC7F1790(v27, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
LABEL_29:

    sub_1BC831A78(v25);
    return 0;
  }

  if (qword_1EDC1E1B8 != -1)
  {
    OUTLINED_FUNCTION_1_15(&qword_1EDC1E1B8);
  }

  v17 = sub_1BC8F7734();
  __swift_project_value_buffer(v17, qword_1EDC2B238);
  v18 = v0;
  v19 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_18_7())
  {
    OUTLINED_FUNCTION_21_1();
    v20 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_10_12(v20, 5.8381e-34);
    OUTLINED_FUNCTION_5_14(&dword_1BC7A3000, v21, v22, "Successfully consumed sandbox extension for URL: %{public}@");
    sub_1BC7F1790(v20, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v23 = v6;
  sub_1BC831A78(v18);
  return v6;
}

void sub_1BC831A78(void *a1)
{
  if (qword_1EDC1E1B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B238);
  v3 = a1;
  v4 = sub_1BC8F7714();
  v5 = sub_1BC8F8204();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_url];
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_1BC7A3000, v4, v5, "Clearing out sandbox token for URL: %{public}@", v6, 0xCu);
    sub_1BC7F1790(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v7, -1, -1);
    MEMORY[0x1BFB2AA50](v6, -1, -1);
  }

  v10 = *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken];
  *&v3[OBJC_IVAR____TtC20FaceTimeMessageStore18SandboxExtendedURL_sandboxExtensionToken] = 0;
}

uint64_t sub_1BC831C48()
{
  v0 = sub_1BC8F7C64();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_2_13();
  v1 = sub_1BC8F6C74();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  type metadata accessor for SandboxExtendedURL();
  sub_1BC832070();
  v2 = sub_1BC8F6C94();
  v4 = v3;
  sub_1BC8F7C54();
  v5 = sub_1BC8F7C34();
  if (v6)
  {
    v7 = v5;
    sub_1BC7D4C94(v2, v4);
  }

  else
  {
    sub_1BC7D4C94(v2, v4);

    return 0xD000000000000012;
  }

  return v7;
}

id SandboxExtendedURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1BC83201C()
{
  result = qword_1EBCF5A38;
  if (!qword_1EBCF5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A38);
  }

  return result;
}

unint64_t sub_1BC832070()
{
  result = qword_1EDC20108;
  if (!qword_1EDC20108)
  {
    type metadata accessor for SandboxExtendedURL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20108);
  }

  return result;
}

unint64_t sub_1BC8320C8()
{
  result = qword_1EBCF5A50;
  if (!qword_1EBCF5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A50);
  }

  return result;
}

_BYTE *sub_1BC832258(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BC832318()
{
  result = qword_1EBCF5A60;
  if (!qword_1EBCF5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A60);
  }

  return result;
}

unint64_t sub_1BC832370()
{
  result = qword_1EBCF5A68;
  if (!qword_1EBCF5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A68);
  }

  return result;
}

unint64_t sub_1BC8323C8()
{
  result = qword_1EBCF5A70;
  if (!qword_1EBCF5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A70);
  }

  return result;
}

unint64_t sub_1BC832420()
{
  result = qword_1EBCF5A78;
  if (!qword_1EBCF5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A78);
  }

  return result;
}

unint64_t sub_1BC832478()
{
  result = qword_1EBCF5A80;
  if (!qword_1EBCF5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A80);
  }

  return result;
}

unint64_t sub_1BC8324D0()
{
  result = qword_1EBCF5A88;
  if (!qword_1EBCF5A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5A88);
  }

  return result;
}

uint64_t sub_1BC832528()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v13 - v2;
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_17_1(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead, v16);
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript;
  OUTLINED_FUNCTION_17_1(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message__transcript, v15);
  sub_1BC7EB644(v0 + v6, v3);
  v7 = sub_1BC8F7014();
  v8 = (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1) << 8;
  sub_1BC83336C(v3);
  v9 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_17_1(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType, v14);
  v10 = *(v0 + v9);
  if (v10 == 2)
  {
    v11 = 11;
    return v8 | v11;
  }

  if (v10 == 1)
  {
    v11 = 131;
    return v8 | v11;
  }

  if (!*(v0 + v9))
  {
    return v8 | v5 | 2u;
  }

  v13[3] = *(v0 + v9);
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

id sub_1BC83267C(char *a1)
{
  v101 = sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v100 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v99 = v5 - v4;
  v6 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  v98 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v18 = v17 - v16;
  v19 = &off_1E7FF5000;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v21 = result;
  v22 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  OUTLINED_FUNCTION_2_14(result, v112);
  if ((v22[4] & 1) == 0)
  {
    v23 = *v22;
    if ((v23 & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    [v21 setIdentifier_];
    [v21 setRemoteUID_];
  }

  v102 = [objc_allocWithZone(MEMORY[0x1E69E0690]) init];
  if (v102)
  {
    v95 = v8;
    v93 = v14;
    Message.getTranscriptString()();
    v97 = v18;
    v96 = v6;
    v94 = v12;
    if (!v14)
    {
      if (qword_1EDC1E1A0 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_1EDC1E1A0);
      }

      v42 = sub_1BC8F7734();
      __swift_project_value_buffer(v42, qword_1EDC2B208);
      v43 = sub_1BC8F7714();
      v44 = sub_1BC8F8204();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1BC7A3000, v43, v44, "Successfully got transcript string", v45, 2u);
        v19 = &off_1E7FF5000;
        OUTLINED_FUNCTION_6();
      }

LABEL_16:
      v46 = [objc_allocWithZone(MEMORY[0x1E697B9D8]) v19[75]];
      sub_1BC833250();
      v47 = sub_1BC8F7E34();
      v48 = sub_1BC8F7BE4();
      v49 = [v46 _initWithSegments_formattedString_speakingRate_averagePauseDuration_];

      v50 = objc_allocWithZone(MEMORY[0x1E69E06B0]);
      v92 = v49;
      v51 = [v50 initWithTranscription_];
      v52 = v102;
      [v102 setProtocolVersion_];
      v91 = v51;
      v53 = [v51 archivedData];
      v54 = sub_1BC8F70D4();
      v56 = v55;

      sub_1BC833294(v54, v56, v52);
      v57 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      OUTLINED_FUNCTION_17_1(&a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID], v105);
      v58 = v95;
      v59 = v94;
      v60 = v96;
      v61 = (*(v95 + 16))(v94, &a1[v57], v96);
      v62 = MEMORY[0x1BFB2A220](v61);
      v63 = v97;
      sub_1BC7C1A54(0x697263736E617274, 0xEA00000000007470, v97);
      objc_autoreleasePoolPop(v62);
      (*(v58 + 8))(v59, v60);
      result = sub_1BC833308(v52);
      if (v64 >> 60 != 15)
      {
        v65 = result;
        v66 = v64;

        sub_1BC8F70F4();
        sub_1BC7ECAC8(v65, v66);
        v67 = sub_1BC8F6EF4();
        sub_1BC7C3588(v67, v68, v21, &selRef_setTranscriptionURL_);
        v69 = v102;
        [v21 setTranscript_];

        v93[1](v63, v98);
        goto LABEL_18;
      }

LABEL_28:
      __break(1u);
      return result;
    }

    if (qword_1EDC1E1A0 == -1)
    {
LABEL_8:
      v24 = sub_1BC8F7734();
      __swift_project_value_buffer(v24, qword_1EDC2B208);
      v25 = OUTLINED_FUNCTION_3_3();
      v26 = sub_1BC8F7714();
      v27 = sub_1BC8F81E4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v111 = v92;
        *v28 = 136446210;
        swift_getErrorValue();
        v29 = v103;
        v30 = v104;
        v31 = sub_1BC8F83F4();
        v90 = &v90;
        OUTLINED_FUNCTION_0();
        LODWORD(v91) = v27;
        v33 = v32;
        MEMORY[0x1EEE9AC00](v34);
        v36 = &v90 - v35;
        (*(*(v30 - 8) + 16))(&v90 - v35, v29, v30);
        __swift_storeEnumTagSinglePayload(v36, 0, 1, v30);
        sub_1BC8073F0(v36, v30);
        v38 = v37;
        (*(v33 + 8))(v36, v31);
        v39 = OUTLINED_FUNCTION_8_16();
        v41 = sub_1BC7A9A4C(v39, v38, v40);
        v19 = &off_1E7FF5000;

        *(v28 + 4) = v41;
        OUTLINED_FUNCTION_5_15(&dword_1BC7A3000, "Error getting transcript %{public}s", v109);
        __swift_destroy_boxed_opaque_existential_1(v92);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }

      goto LABEL_16;
    }

LABEL_26:
    OUTLINED_FUNCTION_1_1(&qword_1EDC1E1A0);
    goto LABEL_8;
  }

LABEL_18:
  v70 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_17_1(&a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration], &v111);
  [v21 setDuration_];
  v71 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_17_1(&a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated], v110);
  v72 = v100;
  v73 = &a1[v71];
  v74 = v99;
  v75 = v101;
  (*(v100 + 16))(v99, v73, v101);
  sub_1BC8F7114();
  v77 = v76;
  (*(v72 + 8))(v74, v75);
  v78 = [v21 setDate_];
  v79 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  OUTLINED_FUNCTION_2_14(v78, v108);
  v80 = *v79;
  v81 = v79[1];

  sub_1BC7C3588(v80, v81, v21, &selRef_setSenderDestinationID_);
  v83 = *v79;
  v82 = v79[1];

  sub_1BC7C3588(v83, v82, v21, &selRef_setCallbackDestinationID_);
  v84 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
  OUTLINED_FUNCTION_2_14(v85, v107);
  if (*(v84 + 1))
  {
    v86 = *v84;

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    v86 = 0;
  }

  [v21 setReceiverDestinationID_];

  v87 = &a1[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
  OUTLINED_FUNCTION_2_14(v88, v106);
  if (*(v87 + 1))
  {
    v89 = *v87;

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    v89 = 0;
  }

  [v21 setReceiverLabelID_];

  [v21 setFlags_];
  [v21 setProtocolVersion_];

  return v21;
}

unint64_t sub_1BC833250()
{
  result = qword_1EDC1DDB8;
  if (!qword_1EDC1DDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC1DDB8);
  }

  return result;
}

void sub_1BC833294(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1BC8F70C4();
  sub_1BC7D4C94(a1, a2);
  [a3 setTranscriptionData_];
}

uint64_t sub_1BC833308(void *a1)
{
  v1 = [a1 transcriptionData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F70D4();

  return v3;
}

uint64_t sub_1BC83336C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BC8333D4()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v9 = OUTLINED_FUNCTION_25(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_1BC83A95C(v5, v22 - v10, &qword_1EBCF63D0, &qword_1BC902140);
  v12 = sub_1BC8F7FC4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BC7C1744(v11, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BC8F7F54();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v18 = sub_1BC8F7CA4() + 32;
      OUTLINED_FUNCTION_34();
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      *(v19 + 24) = v1;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v20 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v22[1] = 7;
      v22[2] = v20;
      v22[3] = v18;
      swift_task_create();

      sub_1BC7C1744(v5, &qword_1EBCF63D0, &qword_1BC902140);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1BC7C1744(v5, &qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_34();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC83369C(void *a1, uint64_t a2, int a3)
{
  v51 = a3;
  v52 = a2;
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = v46 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  MEMORY[0x1EEE9AC00](v49);
  v7 = (v46 - v6);
  v8 = sub_1BC8F7014();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46[2] = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v46 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v46 - v15;
  if (qword_1EDC1E1E8 != -1)
  {
    swift_once();
  }

  v17 = sub_1BC8F7734();
  v18 = __swift_project_value_buffer(v17, qword_1EDC2B298);
  v54 = *(v9 + 16);
  v55 = a1;
  (v54)(v16, a1, v8);
  v53 = v18;
  v19 = sub_1BC8F7714();
  v20 = sub_1BC8F8204();
  v21 = os_log_type_enabled(v19, v20);
  v48 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46[1] = v9 + 16;
    v24 = v7;
    v25 = v23;
    v56[0] = v23;
    *v22 = 136446210;
    sub_1BC83A8CC(&qword_1EDC20610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v26 = sub_1BC8F8A54();
    v27 = v9;
    v29 = v28;
    v47 = *(v27 + 8);
    v47(v16, v8);
    v30 = sub_1BC7A9A4C(v26, v29, v56);

    *(v22 + 4) = v30;
    _os_log_impl(&dword_1BC7A3000, v19, v20, "Loading cache from %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v31 = v25;
    v7 = v24;
    MEMORY[0x1BFB2AA50](v31, -1, -1);
    MEMORY[0x1BFB2AA50](v22, -1, -1);
  }

  else
  {

    v47 = *(v9 + 8);
    v47(v16, v8);
  }

  v32 = sub_1BC8F7054();
  v34 = v33;
  sub_1BC8F6C54();
  swift_allocObject();
  sub_1BC8F6C44();
  sub_1BC83A914(&qword_1EDC1DFF8, &qword_1EBCF5910, &unk_1BC903510, &unk_1BC908010);
  sub_1BC8F6C34();

  v35 = sub_1BC8379C4(v7);
  (v54)(v14, v55, v8);

  v36 = sub_1BC8F7714();
  v37 = sub_1BC8F8204();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56[0] = v55;
    *v38 = 134349314;
    *(v38 + 4) = sub_1BC82A834();

    *(v38 + 12) = 2082;
    sub_1BC83A8CC(&qword_1EDC20610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v39 = sub_1BC8F8A54();
    v54 = v7;
    v41 = v40;
    v47(v14, v8);
    v42 = sub_1BC7A9A4C(v39, v41, v56);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1BC7A3000, v36, v37, "Loaded cache with %{public}ld cached values from %{public}s", v38, 0x16u);
    v43 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1BFB2AA50](v43, -1, -1);
    MEMORY[0x1BFB2AA50](v38, -1, -1);
    sub_1BC7D4C94(v32, v34);

    v44 = v54;
  }

  else
  {
    sub_1BC7D4C94(v32, v34);

    v47(v14, v8);
    v44 = v7;
  }

  sub_1BC7C1744(v44, &qword_1EBCF5910, &unk_1BC903510);
  return v35;
}

uint64_t MessageStoreService.__allocating_init()()
{
  v0 = swift_allocObject();
  MessageStoreService.init()();
  return v0;
}

void sub_1BC83415C(uint64_t a1)
{
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B208);
  swift_unknownObjectRetain();
  oslog = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    ObjectType = swift_getObjectType();
    v11 = a1;
    v7 = sub_1BC8073F0(&v11, ObjectType);
    v9 = sub_1BC7A9A4C(v7, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1BC7A3000, oslog, v3, "Received an xpc event %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
    MEMORY[0x1BFB2AA50](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BC8342F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall MessageStoreService.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v6 = sub_1BC8F7734();
  v7 = OUTLINED_FUNCTION_42_3(v6, qword_1EDC2B3A8);
  v8 = sub_1BC8F8204();
  v9 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_45();
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "Starting message store service", v11, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  type metadata accessor for GetMessages(0);
  OUTLINED_FUNCTION_34();
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1BC9032B8;
  *(v12 + 24) = v1;
  sub_1BC83A8CC(&qword_1EDC20AE8, type metadata accessor for GetMessages, &unk_1BC8FD2B8);

  OUTLINED_FUNCTION_45_5();

  type metadata accessor for GetMessageCount(0);
  OUTLINED_FUNCTION_34();
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1BC9032D8;
  *(v13 + 24) = v1;
  sub_1BC83A8CC(&qword_1EDC205C8, type metadata accessor for GetMessageCount, &unk_1BC8FD248);

  OUTLINED_FUNCTION_45_5();

  OUTLINED_FUNCTION_34();
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1BC9032F8;
  *(v14 + 24) = v1;
  sub_1BC809D24();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_34_5(&type metadata for GetAccountInfo);

  OUTLINED_FUNCTION_34();
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1BC903318;
  *(v15 + 24) = v1;
  sub_1BC809D78();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_34_5(&type metadata for GetTranscriptionEnabled);

  OUTLINED_FUNCTION_34();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1BC903338;
  *(v16 + 24) = v1;
  sub_1BC809E74();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_34_5(&type metadata for SaveMessage);

  type metadata accessor for SaveMessageToPhotoLibrary(0);
  sub_1BC83A8CC(&qword_1EDC1FDB8, type metadata accessor for SaveMessageToPhotoLibrary, &unk_1BC8FD0A8);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_44_5();

  sub_1BC7A9E5C();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7824();

  sub_1BC809E20();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7824();

  sub_1BC809DCC();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7824();

  type metadata accessor for ReportTranscriptAccuracy(0);
  sub_1BC83A8CC(&unk_1EDC1E430, type metadata accessor for ReportTranscriptAccuracy, &unk_1BC8FCF08);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_44_5();

  sub_1BC809CD0();
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_10_13();
  sub_1BC8F7814();

  sub_1BC8F7834();
  v17 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v1;

  sub_1BC8333D4();
}

uint64_t sub_1BC834884()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_4();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC8348E4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_7();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC834944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7BD710;

  return sub_1BC8349D4();
}

uint64_t sub_1BC8349E8()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Handling incoming GetAccountInfo message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = *(v0 + 40);

  OUTLINED_FUNCTION_19_10(v8 + 24);
  OUTLINED_FUNCTION_53_3();
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_15_9(v9);

  return sub_1BC878B94();
}

uint64_t sub_1BC834B08()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_96();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1BC834BF4(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1BC7C0828;

  return v7(a2);
}

uint64_t sub_1BC834CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC834D7C;

  return sub_1BC834E70();
}

uint64_t sub_1BC834D7C()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_96();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1BC834E84()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Handling incoming GetTranscriptionEnabled message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = *(v0 + 40);

  OUTLINED_FUNCTION_19_10(v8 + 24);
  OUTLINED_FUNCTION_53_3();
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_15_9(v9);

  return sub_1BC87889C();
}

uint64_t sub_1BC834FA4()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_96();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1BC835098(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1BC835190;

  return v7(a2);
}

uint64_t sub_1BC835190()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1BC835290(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7BD624;

  return sub_1BC835328(a1);
}

uint64_t sub_1BC835328(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC83533C()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming SaveMessage message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v7 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AC8, &qword_1BC903478);
  sub_1BC8F77C4();
  v8 = v0[5];
  v0[8] = v8;
  OUTLINED_FUNCTION_19_10(v7 + 24);
  OUTLINED_FUNCTION_53_3();
  v9 = v8;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_15_9(v10);

  return sub_1BC8744D4(v9);
}

uint64_t sub_1BC835488()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_3();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v10 = v9;
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC8355AC()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_96();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1BC83560C()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC835668(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BC7B0168;

  return sub_1BC835700();
}

uint64_t sub_1BC835700()
{
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_48_3(v1);
  v3 = type metadata accessor for SaveMessageToPhotoLibrary(v2);
  OUTLINED_FUNCTION_25(v3);
  *(v0 + 56) = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC835774()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming SaveMessageToPhotoLibrary message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v7 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AC0, &qword_1BC903468);
  sub_1BC8F77C4();
  OUTLINED_FUNCTION_19_10(v7 + 24);
  OUTLINED_FUNCTION_35_5();
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_28_6(v8);

  return sub_1BC877474();
}

uint64_t sub_1BC8358A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1BC835A08;
  }

  else
  {
    v7 = sub_1BC8359A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BC8359A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_7();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC835A08()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_7();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC835A68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0248;

  return sub_1BC835B00(a1);
}

uint64_t sub_1BC835B00(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC835B14()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming UpdateMessages message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v7 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AB0, &qword_1BC903448);
  sub_1BC8F77C4();
  v0[8] = v0[5];
  OUTLINED_FUNCTION_19_10(v7 + 24);
  OUTLINED_FUNCTION_35_5();
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1BC835C50;
  v9 = OUTLINED_FUNCTION_14();

  return sub_1BC875478(v9);
}

uint64_t sub_1BC835C50()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC835D4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC7B0248;

  return sub_1BC835DE4(a1);
}

uint64_t sub_1BC835DE4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC835DF8()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming DeleteMessages message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v7 = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AA8, &qword_1BC903438);
  sub_1BC8F77C4();
  v8 = v0[5];
  v0[9] = v8;
  OUTLINED_FUNCTION_19_10(v7 + 24);
  OUTLINED_FUNCTION_53_3();
  v0[6] = v8;
  sub_1BC7A5AB4(v8);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1BC835F48;
  v10 = OUTLINED_FUNCTION_14();

  return sub_1BC87529C(v10);
}

uint64_t sub_1BC835F48()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 88) = v0;

  sub_1BC7B0EFC(*(v3 + 48));
  if (v0)
  {
    v7 = sub_1BC8360AC;
  }

  else
  {
    v7 = sub_1BC836050;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BC836050()
{
  OUTLINED_FUNCTION_5();
  sub_1BC7B0EFC(*(v0 + 72));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8360AC()
{
  OUTLINED_FUNCTION_5();
  sub_1BC7B0EFC(*(v0 + 72));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC836108(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BC7B0248;

  return sub_1BC8361A0();
}

uint64_t sub_1BC8361A0()
{
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_48_3(v1);
  v3 = type metadata accessor for ReportTranscriptAccuracy(v2);
  *(v0 + 56) = v3;
  OUTLINED_FUNCTION_25(v3);
  *(v0 + 64) = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC836218()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_42_3(v1, qword_1EDC2B3A8);
  v3 = sub_1BC8F8204();
  if (OUTLINED_FUNCTION_25_7(v3))
  {
    OUTLINED_FUNCTION_45();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v4);
    OUTLINED_FUNCTION_7_9(&dword_1BC7A3000, v5, v6, "Handling incoming ReportTranscriptAccuracy message");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v7 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AA0, &qword_1BC903428);
  sub_1BC8F77C4();
  OUTLINED_FUNCTION_19_10(v7 + 24);
  __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1BC836370;
  OUTLINED_FUNCTION_112();

  return sub_1BC878C40();
}

uint64_t sub_1BC836370()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_1BC8364D0;
  }

  else
  {
    v7 = sub_1BC836470;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BC836470()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC8364D0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC836530()
{
  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_1();
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B3A8);
  v1 = sub_1BC8F7714();
  sub_1BC8F8204();
  v2 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_45();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_49_1();
    _os_log_impl(v4, v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  return _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
}

uint64_t sub_1BC836620()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_19_10(v1 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_15_9(v2);

  return sub_1BC873454();
}

uint64_t sub_1BC8366C0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

void sub_1BC8367A0()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1(10, v0);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      MEMORY[0x1EEE9AC00](v2);

      sub_1BC8F7844();

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t MessageStoreService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t MessageStoreService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

void sub_1BC83698C(uint64_t a1)
{
  notify_post("com.apple.FaceTimeMessageStore.changed");

  sub_1BC8367A0();
}

void sub_1BC8369F0(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, const char *a5)
{
  v19 = a2;
  a3();

  sub_1BC8F77D4();
  if (v5)
  {

    if (qword_1EDC20728 != -1)
    {
      OUTLINED_FUNCTION_1();
      swift_once();
    }

    v7 = sub_1BC8F7734();
    __swift_project_value_buffer(v7, qword_1EDC2B3A8);

    v8 = sub_1BC8F7714();
    v9 = sub_1BC8F81E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A98, &qword_1BC903408);
      v12 = sub_1BC8F7C94();
      v14 = sub_1BC7A9A4C(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1BC7A3000, v8, v9, a5, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50](v15, v16);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50](v17, v18);
    }
  }

  else
  {
  }
}

Swift::Void __swiftcall MessageStoreService.messageStoreDidDeleteMessages(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  notify_post("com.apple.FaceTimeMessageStore.changed");
  v10 = sub_1BC7C0454(v2);
  if (!v10)
  {
LABEL_10:
    notify_post("com.apple.FaceTimeMessageStore.changed");

    sub_1BC8367A0();

    OUTLINED_FUNCTION_24();
    return;
  }

  v11 = v10;
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C(0, v10 & ~(v10 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFB29A00](i, v2);
      }

      else
      {
        v13 = *(v2 + 8 * i + 32);
      }

      v14 = v13;
      v15 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      (*(v5 + 16))(v9, &v14[v15], v3);

      v17 = *(v18 + 16);
      v16 = *(v18 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1BC7DDB5C(v16 > 1, v17 + 1, 1);
      }

      *(v18 + 16) = v17 + 1;
      (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v9, v3);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1BC836EB0(uint64_t a1, uint64_t a2)
{

  sub_1BC899C68();
  v12 = v3;
  sub_1BC7A76DC();
  sub_1BC8F77D4();
  if (v2)
  {

    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v4 = sub_1BC8F7734();
    __swift_project_value_buffer(v4, qword_1EDC2B3A8);

    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F81E4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A98, &qword_1BC903408);
      v9 = sub_1BC8F7C94();
      v11 = sub_1BC7A9A4C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Failed to post deleted messageUUIDs callback for connection %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1BFB2AA50](v8, -1, -1);
      MEMORY[0x1BFB2AA50](v7, -1, -1);
    }
  }

  else
  {
  }
}

double sub_1BC8370C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v6 = sub_1BC8F7E54();

  a5(v6);

  return result;
}

void sub_1BC8371A8(uint64_t a1, void *a2)
{
  v13 = a2;
  sub_1BC7A6C40();
  v4 = a2;
  sub_1BC8F77D4();
  if (v2)
  {

    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v5 = sub_1BC8F7734();
    __swift_project_value_buffer(v5, qword_1EDC2B3A8);

    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F81E4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A98, &qword_1BC903408);
      v10 = sub_1BC8F7C94();
      v12 = sub_1BC7A9A4C(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1BC7A3000, v6, v7, "Failed to post updated account info callback for connection %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
      MEMORY[0x1BFB2AA50](v8, -1, -1);
    }
  }

  else
  {
  }
}

void sub_1BC837434(void *a1)
{
  sub_1BC7A6CE8();
  sub_1BC8F77D4();
  if (v1)
  {
    if (qword_1EDC20728 != -1)
    {
      swift_once();
    }

    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B3A8);

    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F81E4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;

      v7 = sub_1BC8F7C94();
      v9 = sub_1BC7A9A4C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "Failed to post refetch callback for connection %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1BFB2AA50](v6, -1, -1);
      MEMORY[0x1BFB2AA50](v5, -1, -1);
    }

    else
    {
    }
  }
}

id sub_1BC837650()
{
  sub_1BC7D9730(0, &unk_1EDC1DE40, 0x1E69D8C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC903280;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  return sub_1BC837714(v0);
}

id sub_1BC837714(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1BC7D9730(0, &unk_1EDC1DD90, 0x1E69D8C40);
  v2 = sub_1BC8F7E34();

  v3 = [v1 initWithDataProviders_];

  return v3;
}

id sub_1BC83779C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0, v1);
  if (!result)
  {
    v3 = [objc_opt_self() standardUserDefaults];

    return v3;
  }

  return result;
}

uint64_t sub_1BC837828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1BC83787C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_1BC903290;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 32) = v7;
  sub_1BC8F7264();
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
  sub_1BC83A8CC(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  *(v3 + 56) = sub_1BC8F7AD4();
  *(v3 + 64) = 0;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2 & 1;
  sub_1BC83AA10(a3, v3 + qword_1EDC2B1F0, &qword_1EBCF5A20, &qword_1BC901BF0);
  *(v3 + qword_1EDC2B1E8) = *(*(type metadata accessor for MessageAssetInfo(0) - 8) + 72);
  return v3;
}

uint64_t sub_1BC8379C4(uint64_t *a1)
{
  v2 = type metadata accessor for MessageAssetInfo(0);
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v95 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v96 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v82 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B20, &qword_1BC903520);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v82 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5910, &unk_1BC903510);
  v19 = a1 + *(v18 + 84);
  v20 = *v19;
  v21 = v19[8];
  sub_1BC83A95C(a1 + *(v18 + 80), v17, &qword_1EBCF5A20, &qword_1BC901BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B18, &qword_1BC9034F8);
  swift_allocObject();
  v98 = sub_1BC83787C(v20, v21, v17);
  v82 = a1;
  v22 = *a1;
  v25 = *(*a1 + 64);
  v24 = *a1 + 64;
  v23 = v25;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v30 = (v5 + 16);
  v92 = v5;
  v93 = (v5 + 32);
  v88 = (v5 + 8);
  v85 = v22;

  v31 = 0;
  v86 = v29;
  v87 = v24;
  v97 = v30;
  v89 = v4;
  if (!v28)
  {
LABEL_5:
    v33 = v91;
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v29)
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B28, &qword_1BC903528);
        __swift_storeEnumTagSinglePayload(v33, 1, 1, v66);
        v28 = 0;
        goto LABEL_11;
      }

      v28 = *(v24 + 8 * v32);
      ++v31;
      if (v28)
      {
        v31 = v32;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_1BC8F8B44();
    __break(1u);
    return result;
  }

  while (1)
  {
    v32 = v31;
LABEL_10:
    v34 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v35 = v34 | (v32 << 6);
    v36 = v85;
    v37 = v92;
    v38 = v94;
    (*(v92 + 16))(v94, *(v85 + 48) + *(v92 + 72) * v35, v4);
    v39 = v95;
    sub_1BC805B2C(*(v36 + 56) + *(v84 + 72) * v35, v95);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B28, &qword_1BC903528);
    v41 = *(v40 + 48);
    v33 = v91;
    (*(v37 + 32))(v91, v38, v4);
    sub_1BC83A9AC(v39, v33 + v41);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v40);
LABEL_11:
    v42 = v90;
    sub_1BC83AA10(v33, v90, &qword_1EBCF5B20, &qword_1BC903520);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B28, &qword_1BC903528);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
    {
      break;
    }

    v44 = *(v43 + 48);
    v45 = *v97;
    v46 = v89;
    (*v97)(v96, v42, v89);
    v47 = v94;
    v48 = v46;
    (*v93)(v94, v42, v46);
    v49 = v42 + v44;
    v50 = v95;
    sub_1BC83A9AC(v49, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5908, &qword_1BC903530);
    swift_allocObject();
    v51 = sub_1BC82BCC0(v47, v50);
    v52 = v98;
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v52 + 56);
    v53 = v99;
    *(v52 + 56) = 0x8000000000000000;
    v54 = sub_1BC83C928();
    if (__OFADD__(v53[2], (v55 & 1) == 0))
    {
      goto LABEL_35;
    }

    v56 = v54;
    v57 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5900, &unk_1BC902A70);
    if (sub_1BC8F8734())
    {
      v58 = sub_1BC83C928();
      v4 = v48;
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_37;
      }

      v56 = v58;
    }

    else
    {
      v4 = v48;
    }

    v60 = v99;
    if (v57)
    {
      *(v99[7] + 8 * v56) = v51;

      (*v88)(v96, v4);
    }

    else
    {
      v99[(v56 >> 6) + 8] |= 1 << v56;
      v61 = v92;
      v62 = v96;
      v45((v60[6] + *(v92 + 72) * v56), v96, v4);
      *(v60[7] + 8 * v56) = v51;
      (*(v61 + 8))(v62, v4);
      v63 = v60[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_36;
      }

      v60[2] = v65;
    }

    *(v98 + 56) = v60;

    swift_endAccess();
    v29 = v86;
    v24 = v87;
    if (!v28)
    {
      goto LABEL_5;
    }
  }

  v67 = v82[1];
  v68 = *(v67 + 16);
  v69 = v89;
  if (!v68)
  {
    return v98;
  }

  v70 = v67 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v71 = *(v92 + 72);
  v72 = *(v92 + 16);

  v73 = v83;
  v74 = v88;
  do
  {
    v72(v73, v70, v69);
    v75 = v98;
    swift_beginAccess();
    v76 = *(v75 + 56);
    if (*(v76 + 16))
    {
      v77 = sub_1BC83C928();
      v78 = *v74;
      if (v79)
      {
        v80 = *(*(v76 + 56) + 8 * v77);

        v78(v83, v69);
        swift_endAccess();
        sub_1BC82AF70(v80);
        v73 = v83;

        goto LABEL_31;
      }
    }

    else
    {
      v78 = *v74;
    }

    v78(v73, v69);
    swift_endAccess();
LABEL_31:
    v70 += v71;
    --v68;
  }

  while (v68);

  return v98;
}

id sub_1BC8381AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BC8F7BE4();

  v6 = sub_1BC8F7BE4();

  v7 = [v4 initWithName:v5 bundleIdentifier:v6];

  return v7;
}

uint64_t sub_1BC838234(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v48 = a2;
  v49 = a4;
  v46 = a3;
  v11 = sub_1BC8F7014();
  v44 = *(v11 - 8);
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E80, &unk_1BC8FC3C0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v44 - v18;
  v55[3] = type metadata accessor for ProtectedAppsProvider();
  v55[4] = &off_1F3B3E9A0;
  v55[0] = a1;
  v20 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v22 = sub_1BC7E5EE4(0xD00000000000001FLL, 0x80000001BC90BCA0, v21);
  if (!v22)
  {
    v22 = [objc_opt_self() standardUserDefaults];
  }

  *(a7 + 64) = v22;
  *(a7 + 72) = 0;
  v23 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
  v24 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v24);
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8650], v13);
  AsyncSerialQueue.init(priority:bufferingPolicy:)(v19, v16, a7 + v23);
  v25 = a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_voicemailController;
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo) = 0;
  v26 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_accountInfoLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B08, &qword_1BC903E10);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(a7 + v26) = v27;
  v28 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_badgeManager;
  type metadata accessor for BadgeManager(0);
  *(a7 + v28) = BadgeManager.__allocating_init(types:defaults:deviceSupport:featureFlags:queue:)(0, 0, 0, 0, 0);
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deduplicationInProgress) = 0;
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  sub_1BC7A792C(v55, a7 + 16);
  *(a7 + 56) = v46;
  v30 = v48;
  v29 = v49;
  *(a7 + 80) = v48;
  sub_1BC83A95C(v29, &v50, &qword_1EBCF5B10, &qword_1BC9034F0);
  if (v51)
  {
    sub_1BC7CF5EC(&v50, &v52);
    v31 = v30;
  }

  else
  {
    v32 = objc_opt_self();
    v33 = v30;
    v34 = a5;
    v35 = [v32 defaultCenter];
    v36 = type metadata accessor for CloudKitContextProvider();
    swift_allocObject();
    v37 = sub_1BC8E7554(v35, v34);
    v53 = v36;
    v54 = &off_1F3B3E658;
    *&v52 = v37;
    if (v51)
    {
      sub_1BC7C1744(&v50, &qword_1EBCF5B10, &qword_1BC9034F0);
    }
  }

  sub_1BC7CF5EC(&v52, a7 + 88);
  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deviceSupport) = a5;
  v38 = v47;
  if (a6)
  {
    v39 = a5;
    v40 = a6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B18, &qword_1BC9034F8);
    v41 = a5;
    sub_1BC8D3070();
    if (qword_1EDC1E198 != -1)
    {
      swift_once();
    }

    v40 = sub_1BC83369C(v38, qword_1EDC2B1F8, byte_1EDC2B200);
    (*(v44 + 8))(v38, v45);
  }

  *(a7 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache) = v40;

  sub_1BC81045C();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v24);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = a7;

  sub_1BC8333D4();

  sub_1BC811448();

  sub_1BC7C1744(v29, &qword_1EBCF5B10, &qword_1BC9034F0);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return a7;
}

uint64_t sub_1BC8387BC(uint64_t a1, uint64_t a2)
{
  v7[3] = type metadata accessor for VoicemailController();
  v7[4] = &off_1F3B3D8B8;
  v7[0] = a1;
  sub_1BC7A792C(v7, v6);
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_voicemailController;
  swift_beginAccess();

  sub_1BC83A754(v6, a2 + v4, &qword_1EBCF58F8, &qword_1BC9034D0);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1BC838864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for MessageStoreProviderDataSource();
  v18 = &off_1F3B3B938;
  v16[0] = a2;
  type metadata accessor for VoicemailController();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_1BC838998(a1, *v11, a3, a4, v8);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_1BC838998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26[-v11];
  v33[3] = sub_1BC7D9730(0, &qword_1EDC1DE20, 0x1E69E06A0);
  v33[4] = &off_1F3B3EB60;
  v33[0] = a3;
  v32[3] = type metadata accessor for MessageStoreProviderDataSource();
  v32[4] = &off_1F3B3B938;
  v32[0] = a2;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0;
  *(a5 + 16) = a1;
  sub_1BC7A792C(v33, a5 + 24);
  sub_1BC7A792C(v32, a5 + 64);
  sub_1BC83A95C(a4, &v27, &qword_1EBCF5B00, &qword_1BC9034D8);
  if (v28)
  {
    sub_1BC7CF5EC(&v27, &v29);
    sub_1BC7CF5EC(&v29, &v27);
    swift_beginAccess();
    v13 = a1;
    sub_1BC83A754(&v27, a5 + 104, &qword_1EBCF5B00, &qword_1BC9034D8);
  }

  else
  {
    v14 = a1;
    sub_1BC7C1744(&v27, &qword_1EBCF5B00, &qword_1BC9034D8);
    sub_1BC7A792C(a5 + 24, &v29);
    v15 = type metadata accessor for VoicemailDiffableDataSource();
    swift_allocObject();
    v16 = sub_1BC8D6214(&v29, v14);
    v30 = v15;
    v31 = &off_1F3B3DEA8;
    *&v29 = v16;
    swift_beginAccess();
    sub_1BC83A754(&v29, a5 + 104, &qword_1EBCF5B00, &qword_1BC9034D8);
  }

  swift_endAccess();
  result = swift_beginAccess();
  v18 = *(a5 + 128);
  if (v18)
  {
    v19 = *(a5 + 136);
    __swift_mutable_project_boxed_opaque_existential_1(a5 + 104, *(a5 + 128));
    v20 = *(v19 + 16);

    v20(sub_1BC83A7A4, a5, v18, v19);
    swift_endAccess();
    result = swift_beginAccess();
    v21 = *(a5 + 128);
    if (v21)
    {
      v22 = *(a5 + 136);
      __swift_mutable_project_boxed_opaque_existential_1(a5 + 104, *(a5 + 128));
      v23 = *(v22 + 40);

      v23(sub_1BC83A7AC, a5, v21, v22);
      swift_endAccess();
      v24 = sub_1BC8F7FC4();
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = a5;

      sub_1BC8333D4();

      sub_1BC7C1744(a4, &qword_1EBCF5B00, &qword_1BC9034D8);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v32);
      return a5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BC838D60(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager;
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_analyticsManager] = 0;
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_processingNotification] = 0;
  sub_1BC7A792C(a1, &a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_contactStore]);
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_featureFlags] = a2;
  *&a5[OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_userDefaults] = a3;
  *&a5[v11] = a4;
  v12 = a2;
  v13 = a3;

  v19.receiver = a5;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:sel_contactStoreDidChange_ name:*MEMORY[0x1E695C3D8] object:0];

  sub_1BC881D0C();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

uint64_t sub_1BC838EE4(void *a1, void *a2, uint64_t a3)
{
  sub_1BC8F7264();
  sub_1BC83A8CC(&unk_1EDC20600, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v6 = sub_1BC8F7AD4();
  *(a3 + 32) = 0;
  *(a3 + 40) = v6;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v7 = a1;
  v8 = a2;
  sub_1BC898480();

  return a3;
}

id sub_1BC838F9C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, int a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void (**a13)(void, void, void), uint64_t a14, uint64_t a15)
{
  v126 = a8;
  v129 = a5;
  v130 = a7;
  LODWORD(v127) = a6;
  v131 = a3;
  v132 = a1;
  v128 = a2;
  v16 = sub_1BC8F8274();
  v124 = *(v16 - 8);
  v125 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BC8F8254();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1BC8F78E4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v151[3] = sub_1BC7D9730(0, &qword_1EDC1DD20, 0x1E6993580);
  v151[4] = &off_1F3B3B8F8;
  v151[0] = a4;
  v150[3] = &type metadata for UserSafety;
  v150[4] = &off_1F3B3D688;
  v149[3] = &type metadata for PhysicalWatchConfiguration;
  v149[4] = &off_1F3B3BA28;
  v148[3] = &type metadata for TCCAccessHelper;
  v148[4] = &off_1F3B39A08;
  v146 = type metadata accessor for ProtectedAppsProvider();
  v147 = &off_1F3B3E9A0;
  v120 = v146;
  v145[0] = a14;
  swift_unknownObjectWeakInit();
  v20 = sub_1BC7D9730(0, &qword_1EDC20668, 0x1E69E9610);
  v121 = a15 + 424;
  v122 = "xpcHost";
  *(a15 + 424) = 0u;
  *(a15 + 440) = 0u;
  *(a15 + 456) = 0u;
  sub_1BC8F78D4();
  *&v133 = MEMORY[0x1E69E7CC0];
  sub_1BC83A8CC(&qword_1EDC20670, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5AE0, &qword_1BC9034B0);
  sub_1BC83A914(&qword_1EDC20680, &qword_1EBCF5AE0, &qword_1BC9034B0, MEMORY[0x1E69E6328]);
  sub_1BC8F84C4();
  (v124)[13](v123, *MEMORY[0x1E69E8090], v125);
  v122 = v20;
  *(a15 + 512) = sub_1BC8F82A4();
  sub_1BC83A95C(v132, &v143, &qword_1EBCF5AE8, &qword_1BC9034B8);
  if (v144)
  {
    sub_1BC7CF5EC(&v143, &v133);
  }

  else
  {
    sub_1BC7A792C(v145, &v133);
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    v21 = [objc_opt_self() defaultCenter];
    v22 = [objc_allocWithZone(MEMORY[0x1E699BE70]) init];
    v23 = __swift_mutable_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
    MEMORY[0x1EEE9AC00](v23);
    v25 = (&v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v25;
    v28 = v120;
    v139[3] = v120;
    v139[4] = &off_1F3B3E9A0;
    v139[0] = v27;
    v29 = type metadata accessor for CoreDataMessageStore(0);
    v30 = swift_allocObject();
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v139, v28);
    MEMORY[0x1EEE9AC00](v31);
    v33 = (&v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = sub_1BC838234(*v33, v21, 1, &v140, v22, 0, v30);
    __swift_destroy_boxed_opaque_existential_1(v139);
    __swift_destroy_boxed_opaque_existential_1(&v133);
    *(&v134 + 1) = v29;
    v135 = &off_1F3B39E10;
    *&v133 = v35;
    if (v144)
    {
      sub_1BC7C1744(&v143, &qword_1EBCF5AE8, &qword_1BC9034B8);
    }
  }

  sub_1BC7CF5EC(&v133, a15 + 32);
  *(a15 + 112) = &type metadata for CoreImageBlurrer;
  *(a15 + 120) = &off_1F3B3D070;
  *(a15 + 72) = sub_1BC848688;
  *(a15 + 80) = 0;
  sub_1BC7A792C(v150, a15 + 128);
  v36 = v128;
  *(a15 + 168) = v128;
  v37 = v131;
  sub_1BC7A792C(v131, a15 + 184);
  sub_1BC7A792C(v151, a15 + 224);
  v39 = v129;
  v38 = v130;
  *(a15 + 264) = v129;
  *(a15 + 280) = v127 & 1;
  *(a15 + 16) = v38;
  *(a15 + 24) = &off_1F3B3ACC8;
  v40 = v126;
  if (v126)
  {
    v41 = v36;
    v42 = v39;
    v43 = v38;
    v44 = v40;
  }

  else
  {
    v45 = objc_opt_self();
    v46 = v36;
    v47 = v39;
    v48 = v38;
    result = [v45 sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v50 = result;
    v51 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    type metadata accessor for NotificationManager();
    v52 = swift_allocObject();
    v44 = sub_1BC838EE4(v50, v51, v52);
  }

  v127 = a9;
  v53 = a11;
  *(a15 + 272) = v44;
  sub_1BC7A792C(v149, a15 + 288);
  *(a15 + 176) = a12;
  *(a15 + 368) = a13;
  sub_1BC7A792C(v148, a15 + 376);
  v125 = a10;
  sub_1BC83A95C(a10, &v143, &qword_1EBCF5AF0, &qword_1BC9034C0);
  v123 = a12;
  v124 = a13;
  if (v144)
  {
    sub_1BC7CF5EC(&v143, &v133);

    v54 = a12;
    v55 = a13;
  }

  else
  {
    swift_beginAccess();
    sub_1BC7A792C(a15 + 32, &v140);
    sub_1BC7A792C(v37, v139);

    v56 = a12;
    v57 = a13;
    v115 = sub_1BC837650();
    v58 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v59 = sub_1BC8F7C24();
    v61 = v60;
    v62 = sub_1BC8F7C24();
    v64 = v63;
    v65 = objc_allocWithZone(MEMORY[0x1E6964E78]);
    v66 = sub_1BC8381AC(v59, v61, v62, v64);
    v67 = sub_1BC83779C();
    v68 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v69 = __swift_mutable_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
    v119 = &v113;
    MEMORY[0x1EEE9AC00](v69);
    v71 = (&v113 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v72 + 16))(v71);
    v120 = a11;
    v73 = *v71;
    v74 = type metadata accessor for CoreDataMessageStore(0);
    v138[3] = v74;
    v138[4] = &off_1F3B39E10;
    v138[0] = v73;
    v118 = type metadata accessor for SpotlightIndexManager();
    v75 = swift_allocObject();
    v76 = __swift_mutable_project_boxed_opaque_existential_1(v138, v74);
    v117 = &v113;
    MEMORY[0x1EEE9AC00](v76);
    v78 = (&v113 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v79 + 16))(v78);
    v80 = *v78;
    v137[3] = v74;
    v137[4] = &off_1F3B39E10;
    v137[0] = v80;
    *(v75 + 144) = 0;
    *(v75 + 168) = 0;
    *(v75 + 176) = 0;
    *(v75 + 160) = 0;
    *(v75 + 104) = v58;
    sub_1BC7A792C(v137, v75 + 16);
    sub_1BC7A792C(v139, v75 + 56);
    *(v75 + 96) = v66;
    v81 = v67;
    *(v75 + 152) = v67;
    v82 = v115;
    *(v75 + 112) = v115;
    *(v75 + 120) = v68;
    sub_1BC7A792C(v139, &v133);
    v83 = objc_allocWithZone(type metadata accessor for ContactChangeManager());
    v84 = v58;
    v85 = v81;
    v86 = v84;
    v87 = v85;
    v116 = v66;
    v115 = v82;
    v114 = v68;
    *(v75 + 128) = sub_1BC838D60(&v133, v86, v87, 0, v83);
    *(v75 + 136) = [objc_allocWithZone(MEMORY[0x1E695AED8]) init];
    *(*(v75 + 128) + OBJC_IVAR____TtC20FaceTimeMessageStore20ContactChangeManager_delegate + 8) = &off_1F3B3AFA8;
    swift_unknownObjectWeakAssign();
    *(v75 + 160) = 0;

    *(v75 + 168) = 0;

    *(v75 + 176) = 0;

    v88 = [objc_opt_self() defaultCenter];
    [v88 addObserver:v75 selector:sel_handleLocaleChanges name:*MEMORY[0x1E695D8F0] object:0];

    v89 = *MEMORY[0x1E695AED0];
    v90 = sub_1BC8F8284();
    v91 = swift_allocObject();
    swift_weakInit();
    v135 = sub_1BC83A74C;
    v136 = v91;
    *&v133 = MEMORY[0x1E69E9820];
    *(&v133 + 1) = 1107296256;
    *&v134 = sub_1BC837828;
    *(&v134 + 1) = &block_descriptor_100;
    v92 = _Block_copy(&v133);

    swift_beginAccess();
    notify_register_dispatch(v89, (v75 + 144), v90, v92);
    swift_endAccess();
    v93 = v92;
    v53 = v120;
    _Block_release(v93);

    sub_1BC856440();
    sub_1BC856148();

    __swift_destroy_boxed_opaque_existential_1(v139);
    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(&v140);
    *(&v134 + 1) = v118;
    v135 = &off_1F3B3AFB8;
    *&v133 = v75;
    if (v144)
    {
      sub_1BC7C1744(&v143, &qword_1EBCF5AF0, &qword_1BC9034C0);
    }
  }

  sub_1BC7CF5EC(&v133, a15 + 328);
  sub_1BC7A792C(v145, a15 + 472);
  if (v53)
  {
    v94 = v53;
  }

  else
  {
    type metadata accessor for AnalyticsSender();
    v95 = swift_allocObject();
    type metadata accessor for AnalyticsManager();
    swift_allocObject();
    v94 = sub_1BC8EBC08(v95, 1);
  }

  *(&v134 + 1) = type metadata accessor for MessageStoreProviderDataSource();
  v135 = &off_1F3B3B9B8;
  *&v133 = a15;
  swift_beginAccess();

  sub_1BC83A754(&v133, v94 + 16, &qword_1EBCF5AF8, &qword_1BC9034C8);
  swift_endAccess();
  *(a15 + 464) = v94;

  *(*(a15 + 16) + OBJC_IVAR____TtC20FaceTimeMessageStore28VideoMessagingFileTransferer_incomingDelegate + 8) = &off_1F3B3B9A8;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v96 = *(a15 + 56);
  v97 = *(a15 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(a15 + 32, v96);
  v98 = *(v97 + 16);

  v98(a15, &off_1F3B3B978, v96, v97);
  v99 = *(a15 + 56);
  v100 = *(a15 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(a15 + 32, v99);
  (*(v100 + 40))(v94, v99, v100);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((a15 + 328), *(a15 + 352));
  sub_1BC8563D8(v94);
  swift_beginAccess();
  v101 = *(a15 + 496);
  v102 = *(a15 + 504);
  __swift_mutable_project_boxed_opaque_existential_1(a15 + 472, v101);
  v103 = *(v102 + 16);

  v103(v104, &off_1F3B3B928, v101, v102);
  swift_endAccess();
  sub_1BC83A95C(v127, &v143, &qword_1EBCF58F8, &qword_1BC9034D0);
  if (v144)
  {
    sub_1BC7CF5EC(&v143, &v133);
    v105 = v130;
    v106 = v128;
  }

  else
  {
    v107 = *(a15 + 512);
    v135 = 0;
    v133 = 0u;
    v134 = 0u;
    v108 = objc_allocWithZone(MEMORY[0x1E69E06A0]);

    v109 = sub_1BC838864(v107, a15, [v108 init], &v133);
    *(&v134 + 1) = type metadata accessor for VoicemailController();
    v135 = &off_1F3B3D8B8;
    *&v133 = v109;
    v105 = v130;
    v106 = v128;
    if (v144)
    {
      sub_1BC7C1744(&v143, &qword_1EBCF58F8, &qword_1BC9034D0);
    }
  }

  sub_1BC7A792C(&v133, &v143);
  v110 = v121;
  swift_beginAccess();
  sub_1BC83A754(&v143, v110, &qword_1EBCF58F8, &qword_1BC9034D0);
  swift_endAccess();
  v111 = *__swift_project_boxed_opaque_existential_1((a15 + 32), *(a15 + 56));
  v112 = __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
  sub_1BC8387BC(*v112, v111);
  sub_1BC878A64();

  sub_1BC7C1744(v125, &qword_1EBCF5AF0, &qword_1BC9034C0);
  sub_1BC7C1744(v127, &qword_1EBCF58F8, &qword_1BC9034D0);
  __swift_destroy_boxed_opaque_existential_1(v131);
  sub_1BC7C1744(v132, &qword_1EBCF5AE8, &qword_1BC9034B8);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(v148);
  __swift_destroy_boxed_opaque_existential_1(v149);
  __swift_destroy_boxed_opaque_existential_1(v150);
  __swift_destroy_boxed_opaque_existential_1(&v133);
  return a15;
}