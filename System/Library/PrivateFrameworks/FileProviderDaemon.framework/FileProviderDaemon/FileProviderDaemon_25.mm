void sub_1CF2E8E2C(void *a1, void (*a2)(void), int a3, int a4, id a5)
{
  v7 = [a5 timeoutState];
  if (a1)
  {
    if (v7)
    {
      if (v7 == 2)
      {
        v8 = -3;
      }

      else
      {
        if (v7 != 1)
        {
          type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
          v11 = a1;
          sub_1CF9E80C8();
          __break(1u);
          return;
        }

        v8 = -2;
      }

      sub_1CF2F462C();
      v7 = swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = v8;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;
  a2();
}

void sub_1CF2E8F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  v13 = sub_1CF9E6118();
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = sub_1CF95F71C(a3, ObjectType, a4, a2, a5);
  if (v6 || (v74 = 0, v19 = *(v5 + 328), v20 = *(v5 + 336), *(v5 + 328) = v17, *(v5 + 336) = v18, v19, v20, v21 = v74, v22 = sub_1CF95F840(a3, ObjectType, a4, a2, a5), (v7 = v21) != 0))
  {
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = v7;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_getErrorValue();
      v29 = Error.prettyDescription.getter(v77, v78);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "could not decode the previous sync anchor, starting working set enumerator from scratch: %@", v27, 0xCu);
      sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    (*(v75 + 8))(v15, v76);
    v30 = *(v5 + 16);
    if (v30)
    {
      v31 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
      v32 = *(type metadata accessor for SyncState(0) - 8);
      v33 = v7;
      v34 = v8;
      v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1CF9FA450;
      v37 = (v36 + v35);
      v38 = *(v34 + 328);
      v39 = *(v34 + 336);
      *v37 = v38;
      v37[1] = v39;
      swift_storeEnumTagMultiPayload();
      sub_1CF03C63C(v30, v31);
      v40 = v39;
      v41 = v38;
      v30(&unk_1F4BED558, v36, 0, 0);

      sub_1CEFF7124(v30, v31);
      v36, v42, v43, v44, v45, v46, v47, v48;
    }

    else
    {
    }
  }

  else
  {
    *(v5 + 192) = v22 & 1;
    v49 = *(v5 + 328);
    v50 = *(v5 + 336);
    v51 = v5;
    v52 = qword_1EDEA5AD8;
    v53 = v49;
    v54 = v50;
    if (v52 != -1)
    {
      swift_once();
    }

    v55 = sub_1CF040418(v49, v50, qword_1EDEBB820, *algn_1EDEBB828);

    v56 = v51;
    if (v55)
    {
      v57 = v51[2];
      if (v57)
      {
        v58 = v51[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
        v59 = *(type metadata accessor for SyncState(0) - 8);
        v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1CF9FA450;
        v62 = (v61 + v60);
        v63 = v51[41];
        v64 = v51[42];
        *v62 = v63;
        v62[1] = v64;
        swift_storeEnumTagMultiPayload();
        sub_1CF03C63C(v57, v58);
        v65 = v64;
        v66 = v63;
        v56 = v51;
        v57(&unk_1F4BED518, v61, 0, 0);
        sub_1CEFF7124(v57, v58);
        v61, v67, v68, v69, v70, v71, v72, v73;
      }
    }

    if (v56[18])
    {

      sub_1CF2CF910(sub_1CF2CFA4C, sub_1CF1C5288, sub_1CF1C5290, sub_1CF1C5468);
    }
  }
}

void *sub_1CF2E9478()
{
  fp_task_tracker_cancel(*(*(v0 + 168) + 16));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    v4 = [v2 session];
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v5 = [v2 log];

    sub_1CF01001C(v5, "cancel()", 8, 2, sub_1CF2F46DC, v3);
  }

  if (*(v0 + 200))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1CF2E95C4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result cancelAsync];
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1CF2E9630(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF2F46C4, v5);

  return result;
}

uint64_t sub_1CF2E96E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v12 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v8 = [v7 session];
  v9 = [objc_opt_self() defaultStore];
  if ([v9 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v10 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v9 upcallExecutionTimeLimitBase];
    v10 = v11;
  }

  v12 = [v8 newFileProviderProxyWithTimeout:0 pid:v10];
  swift_unknownObjectRelease();
LABEL_11:
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v16[4] = sub_1CF2F46D0;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1CF00A468;
  v16[3] = &block_descriptor_172;
  v14 = _Block_copy(v16);

  [v12 waitForStabilizationWithCompletionHandler_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

double sub_1CF2E98EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = *(a2 + 24);
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    sub_1CF03C63C(v4, v7);

    v4(&unk_1F4BED5B8, MEMORY[0x1E69E7CC0], sub_1CEFFD05C, v8);
    sub_1CEFF7124(v4, v7);
  }

  return result;
}

uint64_t sub_1CF2E99C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v90 = a8;
  v96 = a7;
  v77 = a6;
  v93 = a3;
  v94 = a4;
  v92 = a2;
  v85 = a1;
  v91 = a10;
  v89 = a9;
  v73 = sub_1CF9E63D8();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ItemMetadata(0);
  v87 = *(v13 - 8);
  v14 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v76 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1CF9E5A58();
  v81 = *(v97 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v78 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v75 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v80 = *(v19 - 8);
  v20 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v70 - v21;
  v74 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v86 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  v79 = &v70 - v26;
  v82 = a5;
  v28 = *(a5 + 160);
  v84 = *(a5 + 168);
  v95 = v28;
  v83 = sub_1CF9E6448();
  v88 = *(v83 - 8);
  (*(v88 + 56))(v27, 1, 1, v83);
  v29 = swift_allocObject();
  v98 = v29;
  v30 = v96;
  *(v29 + 16) = a6;
  *(v29 + 24) = v30;
  sub_1CEFCCBDC(v85, v22, &unk_1EC4BE310, qword_1CF9FCBE0);
  v31 = v81;
  v32 = *(v81 + 16);
  v33 = v97;
  v32(v18, v90, v97);
  sub_1CEFF4408(v89, &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32(&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v91, v33);
  v34 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v35 = (v20 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v31 + 80);
  v39 = (v38 + v37 + 8) & ~v38;
  v40 = (v15 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v87 + 80) + v40 + 8) & ~*(v87 + 80);
  v91 = (v14 + v38 + v41) & ~v38;
  v42 = swift_allocObject();
  sub_1CEFE55D0(v74, v42 + v34, &unk_1EC4BE310, qword_1CF9FCBE0);
  v43 = (v42 + v35);
  v44 = v93;
  *v43 = v92;
  v43[1] = v44;
  v45 = (v42 + v36);
  v46 = v96;
  *v45 = v77;
  v45[1] = v46;
  v47 = v94;
  *(v42 + v37) = v94;
  v48 = *(v31 + 32);
  v49 = v42 + v39;
  v50 = v97;
  v48(v49, v75, v97);
  *(v42 + v40) = v82;
  sub_1CF2F63E4(v76, v42 + v41, type metadata accessor for ItemMetadata);
  v51 = v42;
  v48(v42 + v91, v78, v50);
  v52 = swift_allocObject();
  v53 = v98;
  v52[2] = sub_1CF2F4DDC;
  v52[3] = v53;
  v54 = v84;
  v52[4] = v84;
  swift_retain_n();

  v55 = v47;
  v56 = v83;
  v57 = v86;
  v58 = v55;

  v59 = fpfs_current_log();
  v60 = *(v54 + 16);
  v61 = v79;
  v62 = v88;
  sub_1CEFCCBDC(v79, v57, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v62 + 48))(v57, 1, v56) == 1)
  {
    sub_1CEFCCC44(v57, &unk_1EC4BE370, qword_1CFA01B30);
    v63 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v64 = v71;
    sub_1CF9E6438();
    (*(v62 + 8))(v57, v56);
    v63 = sub_1CF9E63C8();
    (*(v72 + 8))(v64, v73);
  }

  v65 = swift_allocObject();
  v65[2] = v59;
  v65[3] = sub_1CF2F4E28;
  v65[4] = v51;
  v103 = sub_1CF2BA17C;
  v104 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = sub_1CEFCA444;
  v102 = &block_descriptor_354;
  v66 = _Block_copy(&aBlock);
  v67 = v59;

  v103 = sub_1CF2F4FD8;
  v104 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = sub_1CEFCA444;
  v102 = &block_descriptor_357;
  v68 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v60, v95, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v63, v66, v68);
  _Block_release(v68);
  _Block_release(v66);

  return sub_1CEFCCC44(v61, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2EA218(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, char *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v66 = a7;
  v67 = a8;
  v69 = a3;
  v70 = a5;
  v65 = a2;
  v13 = sub_1CF9E53C8();
  v64 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  v24 = a1;
  v26 = v25;
  v28 = v27;
  sub_1CEFCCBDC(v24, v18, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v26 + 48))(v18, 1, v28) == 1)
  {
    sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (a6)
    {
LABEL_3:
      v29 = a6;
LABEL_8:
      v36 = a6;
      (a4)(v29, 1, nullsub_1, 0);

      return;
    }

LABEL_7:
    LODWORD(v85[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v29 = sub_1CF9E53A8();
    (*(v64 + 8))(v15, v13);
    goto LABEL_8;
  }

  (*(v26 + 32))(v23, v18, v28);
  if (!v69)
  {
    (*(v26 + 8))(v23, v28);
    if (a6)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  v64 = v26;
  v30 = v65;
  sub_1CF9E5968();
  v63 = v23;
  v31 = sub_1CF9E59E8();
  v32 = *(v67 + 136);
  v33 = sub_1CF9E5A18();
  v35 = v34;
  (*(*v32 + 408))(&v87, v33);
  v35, v37, v38, v39, v40, v41, v42, v43;
  v84[0] = v87;
  v84[1] = v88;
  v84[2] = v89;
  v84[3] = v90;
  v80 = v87;
  v81 = v88;
  v82 = v89;
  v83 = v90;
  sub_1CEFE528C(v85);
  v78[12] = v85[12];
  v78[13] = v85[13];
  v78[14] = v85[14];
  v79 = v86;
  v78[8] = v85[8];
  v78[9] = v85[9];
  v78[10] = v85[10];
  v78[11] = v85[11];
  v78[4] = v85[4];
  v78[5] = v85[5];
  v78[6] = v85[6];
  v78[7] = v85[7];
  v78[0] = v85[0];
  v78[1] = v85[1];
  v78[2] = v85[2];
  v78[3] = v85[3];
  v76 = v30;
  v77 = v69;
  v74 = 58;
  v75 = 0xE100000000000000;
  v72 = 47;
  v73 = 0xE100000000000000;
  sub_1CF1AE1DC(v84, v71);
  v61 = sub_1CEFE4E68();
  v62 = v61;
  v59 = MEMORY[0x1E69E6158];
  v60 = v61;
  v76 = sub_1CF9E7668();
  v77 = v44;
  v45 = (*(*v32 + 448))(&v80, a9, v78, &v76, 0, 0);
  LODWORD(v69) = v31;
  v77, v46, v47, v48, v49, v50, v51, v52;
  v71[0] = v80;
  v71[1] = v81;
  v71[2] = v82;
  v71[3] = v83;
  v53 = sub_1CEFCCC44(v71, &unk_1EC4BF260, &unk_1CFA01B60);
  if (*&v84[0])
  {
    MEMORY[0x1EEE9AC00](v53);
    v59 = v32;
    LODWORD(v60) = 0;
    v61 = v54;
    v53 = sub_1CEFE1894(sub_1CF2B9F78);
    *(v32 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v32 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      v53 = swift_unknownObjectRelease();
    }
  }

  MEMORY[0x1EEE9AC00](v53);
  *(&v63 - 6) = v67;
  *(&v63 - 5) = a4;
  v59 = v70;
  v60 = a10;
  v61 = v45;
  sub_1CF2EF290(v45, 0x200000, sub_1CF2F500C, (&v63 - 8), &v63);
  sub_1CF1AE25C(v84);

  v58 = v68;
  v56 = v63;
  sub_1CF2EAA04(v66, v63, v69 & 1);
  v57 = *(v64 + 8);
  v57(v58, v28);
  v57(v56, v28);
}

void sub_1CF2EAA04(uint64_t a1, uint64_t a2, char a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v5 = sub_1CF9E5928();
  v16[0] = 0;
  v6 = [v4 removeItemAtURL:v5 error:v16];

  if (v6)
  {
    v7 = v16[0];
  }

  else
  {
    v8 = v16[0];
    v9 = sub_1CF9E57F8();

    swift_willThrow();
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v11 = sub_1CF9E5928();
  v16[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v16];

  if (!v12)
  {
    v14 = v16[0];
    v15 = sub_1CF9E57F8();

    swift_willThrow();
    if ((a3 & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v13 = v16[0];
  if (a3)
  {
LABEL_8:
    sub_1CF9E59C8();
  }
}

uint64_t sub_1CF2EAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, void, uint64_t (*)(), uint64_t), uint64_t a7, char *a8, uint64_t a9)
{
  v43 = a8;
  v40 = a7;
  v41 = a6;
  v42 = a3;
  v12 = sub_1CF9E53C8();
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5A58();
  v45 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  if (a4 && (v24 = &v38 - v23, v25 = *(a5 + 136), v39 = a5, v26 = v22, v27 = *(a2 + 8), v28 = v25 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle, swift_beginAccess(), v27 == *(v28 + 32)))
  {
    v29 = v24;
    sub_1CF9E58B8();
    v30 = v45;
    v31 = *(v45 + 16);
    v31(v20, v29, v26);
    v31(v17, v43, v26);
    v32 = objc_allocWithZone(MEMORY[0x1E6967348]);
    v33 = v44;
    v34 = sub_1CF2F1080(v20, v17);
    if (!v33)
    {
      v35 = v34;
      v36 = swift_allocObject();
      *(v36 + 16) = v39;
      *(v36 + 24) = a9;

      v41(v35, 0, sub_1CF2F503C, v36);
    }

    return (*(v30 + 8))(v29, v26);
  }

  else
  {
    v47 = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v46 + 8))(v14, v12);
    return swift_willThrow();
  }
}

double sub_1CF2EAF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF2EAFD8(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1CF9E59D8();
    v12 = sub_1CF9E5A58();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_1CF9E5A58();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (a3)
  {
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    a3 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a4;
  v11(v10, v14, a3, a4);

  a3, v17, v18, v19, v20, v21, v22, v23;
  return sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF2EB164(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v68 = a6;
  v69 = a5;
  v70 = a4;
  v71 = a3;
  v65 = a2;
  v72[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E53C8();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v61 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v61 - v14;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - v24;
  sub_1CEFCCBDC(a1, v15, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v29 = *(v17 + 32);
    v29(v25, v15, v16);
    LODWORD(v65) = sub_1CF9E59E8();
    v30 = sub_1CF9E5928();
    v72[0] = 0;
    v31 = [v71 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:0 options:5 error:v72];

    v32 = v72[0];
    if (v31)
    {
      v33 = sub_1CF9E6D48();
      v34 = v32;

      if (*v33->tree)
      {
        v42 = *(v17 + 16);
        v42(v19, v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
        v33, v43, v44, v45, v46, v47, v48, v49;
        v29(v22, v19, v16);
        v50 = v66;
        v42(v66, v22, v16);
        swift_storeEnumTagMultiPayload();
        v69(v50);
        sub_1CEFCCC44(v50, &unk_1EC4C5270, &unk_1CFA01BC0);
        (*(v17 + 8))(v22, v16);
        if ((v65 & 1) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v33, v35, v36, v37, v38, v39, v40, v41;
      LODWORD(v72[0]) = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v57 = v62;
      v58 = v64;
      sub_1CF9E57D8();
      v56 = sub_1CF9E53A8();
      (*(v63 + 8))(v57, v58);
    }

    else
    {
      v55 = v72[0];
      v56 = sub_1CF9E57F8();
    }

    swift_willThrow();
    v59 = v66;
    *v66 = v56;
    swift_storeEnumTagMultiPayload();
    v60 = v56;
    v69(v59);

    sub_1CEFCCC44(v59, &unk_1EC4C5270, &unk_1CFA01BC0);
    if ((v65 & 1) == 0)
    {
LABEL_14:
      (*(v17 + 8))(v25, v16);
      v54 = v71;
      goto LABEL_15;
    }

LABEL_13:
    sub_1CF9E59C8();
    goto LABEL_14;
  }

  v26 = v71;
  sub_1CEFCCC44(v15, &unk_1EC4BE310, qword_1CF9FCBE0);
  v27 = v65;
  if (v65)
  {
    v28 = v65;
  }

  else
  {
    LODWORD(v72[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v51 = v62;
    v52 = v64;
    sub_1CF9E57D8();
    v28 = sub_1CF9E53A8();
    (*(v63 + 8))(v51, v52);
  }

  *v12 = v28;
  swift_storeEnumTagMultiPayload();
  v53 = v27;
  v69(v12);
  sub_1CEFCCC44(v12, &unk_1EC4C5270, &unk_1CFA01BC0);
  v54 = v26;
LABEL_15:
  sub_1CF2EB7CC(v54);
}

void sub_1CF2EB7CC(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5928();
  v7[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v7];

  v3 = v7[0];
  if (a1)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_1CF9E57F8();

    swift_willThrow();
  }
}

void sub_1CF2EB8C8(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(void **, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a6;
  v13 = sub_1CF9E5CF8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CC8();
  sub_1CF9E5C28();
  v18 = v17;
  v19 = (*(v14 + 8))(v16, v13);
  a4(v19);
  if (a2)
  {
    v20 = *(a9 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
    if (!v20)
    {
      v28 = a2;
      v22 = a2;
LABEL_11:
      v49 = v22;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 1;
      v29 = a2;
      v48(&v49, MEMORY[0x1E69E7CC0]);

      return;
    }

    if (v20 == 1)
    {
      sub_1CF2F462C();
      v22 = swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0;
      v23 = -2;
LABEL_10:
      *(v21 + 16) = v23;
      goto LABEL_11;
    }

    if (v20 == 2)
    {
      sub_1CF2F462C();
      v22 = swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 0;
      v23 = -3;
      goto LABEL_10;
    }

    type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
    v49 = v20;
    v47 = a2;
    sub_1CF9E80C8();
    __break(1u);
  }

  else
  {
    v24 = *(a8 + 328);
    v25 = v24;
    if (a1)
    {
      v26 = v25;
      v27 = a1;
    }

    else
    {
      v27 = sub_1CF9E5B48();
      v26 = *(a8 + 328);
    }

    v30 = *(a8 + 336);
    *(a8 + 328) = v24;
    *(a8 + 336) = v27;
    v31 = a1;

    v49 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
    v51 = 1;
    v52 = v18;
    v53 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v32 = *(type metadata accessor for SyncState(0) - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1CF9FA450;
    v35 = (v34 + v33);
    v36 = *(a8 + 328);
    v37 = *(a8 + 336);
    *v35 = v36;
    v35[1] = v37;
    swift_storeEnumTagMultiPayload();
    v38 = v37;
    v39 = v36;
    v48(&v49, v34);
    v34, v40, v41, v42, v43, v44, v45, v46;
  }
}

void sub_1CF2EBC20(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v43 = a2;
  v44 = a1;
  v41 = a13;
  v42 = a14;
  v38 = a10;
  v39 = a12;
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CC8();
  sub_1CF9E5C28();
  v23 = v22;
  (*(v19 + 8))(v21, v18);
  v40 = *(a7 + 160);
  v24 = [a8 log];
  v25 = swift_allocObject();
  v25[2] = a7;
  v25[3] = a4;
  v27 = v38;
  v26 = v39;
  v25[4] = a9;
  v25[5] = v27;
  v25[6] = a11;
  v25[7] = a5;
  v29 = v41;
  v28 = v42;
  v25[8] = v26;
  v25[9] = v29;
  v30 = v43;
  v31 = v44;
  v25[10] = v28;
  v25[11] = v30;
  v25[12] = v31;
  v25[13] = v23;

  v32 = a4;
  v33 = a9;

  v34 = a5;
  v35 = v30;

  v36 = v28;
  sub_1CF01001C(v24, "fetchEventStream(domainVersion:completion:)", 43, 2, sub_1CF2F4680, v25);
}

void sub_1CF2EBE1C(uint64_t a1, void *a2, double a3, void *a4, void (*a5)(void), uint64_t a6, void *a7, void (*a8)(uint64_t *, uint64_t), uint64_t a9, uint64_t a10, void *a11, unint64_t a12)
{
  v112 = a8;
  v19 = sub_1CF9E5FF8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF041B2C(a2, a4);
  a5();
  v115 = a1;
  if (!a7)
  {
    v114 = v19;
    v48 = a12;
    v49 = *(a1 + 328);
    *(a1 + 328) = a11;
    v50 = a11;

    v110 = a2;
    v111 = a9;
    if (a12 >> 62)
    {
LABEL_35:
      v51 = sub_1CF9E7818();
    }

    else
    {
      v51 = *((a12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v48;
    swift_retain_n();
    v119 = v51;
    if (!v51)
    {
LABEL_24:
      v81 = v115;

      v120 = v52;
      v121 = MEMORY[0x1E69E7CC0];
      v122 = 1;
      v123 = a3;
      v124 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
      v82 = *(type metadata accessor for SyncState(0) - 8);
      v83 = *(v82 + 72);
      v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1CF9FA440;
      v86 = (v85 + v84);
      v88 = *(v81 + 328);
      v87 = *(v81 + 336);
      *v86 = v88;
      v86[1] = v87;
      swift_storeEnumTagMultiPayload();
      v89 = v87;

      v90 = v88;
      *(v86 + v83) = [v110 domainVersion];
      swift_storeEnumTagMultiPayload();
      v112(&v120, v85);
      v52, v91, v92, v93, v94, v95, v96, v97;
      v85, v98, v99, v100, v101, v102, v103, v104;
      return;
    }

    v53 = 0;
    v117 = v48 & 0xFFFFFFFFFFFFFF8;
    v118 = v48 & 0xC000000000000001;
    v113 = v20 + 1;
    v116 = v48;
    while (1)
    {
      if (v118)
      {
        v55 = MEMORY[0x1D3869C30](v53, v52);
        v52 = (v53 + 1);
        if (__OFADD__(v53, 1))
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        if (v53 >= *(v117 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v55 = *(&v52[1].super.isa + v53);
        v52 = (v53 + 1);
        if (__OFADD__(v53, 1))
        {
          goto LABEL_23;
        }
      }

      v20 = v55;
      v56 = [v20 extendedAttributes];
      if (v56)
      {
        v57 = v56;
        v58 = sub_1CF9E6638();

        v59 = v22;
        v60 = v115;

        v48 = sub_1CF045428(v58, v60);
        v58, v61, v62, v63, v64, v65, v66, v67;
        v22 = v59;

        v68 = sub_1CF9E6618();

        [v20 setExtendedAttributes_];
      }

      if ([v20 isFlattenedPackage])
      {
        v69 = [v20 filename];
        if (!v69)
        {
          __break(1u);
LABEL_37:
          type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
          v120 = v53;
          sub_1CF9E80C8();
          __break(1u);
          return;
        }

        v70 = v69;
        v71 = [v69 stringByDeletingPathExtension];

        if (!v71)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v73 = v72;
          v71 = sub_1CF9E6888();
          v73, v74, v75, v76, v77, v78, v79, v80;
        }

        [v20 setFilename_];

        sub_1CF9E5FA8();
        v48 = sub_1CF9E5F38();
        (*v113)(v22, v114);
        [v20 setContentType_];
      }

      ++v53;
      v54 = v52 == v119;
      v52 = v116;
      if (v54)
      {
        goto LABEL_24;
      }
    }
  }

  _s3__C4CodeOMa_1(0);
  v120 = -1002;
  v23 = a7;
  sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
  if (sub_1CF9E5658())
  {
    if (qword_1EDEA5AD8 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDEBB820;
    v25 = *algn_1EDEBB828;
    v26 = v115;
    v27 = *(v115 + 328);
    v28 = *(v115 + 336);
    *(v115 + 328) = qword_1EDEBB820;
    *(v26 + 336) = v25;
    v29 = v24;
    v30 = v25;

    v120 = a7;
    v121 = 0;
    v122 = 0;
    v123 = 0.0;
    v124 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE00, &qword_1CF9FE720);
    v31 = *(type metadata accessor for SyncState(0) - 8);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1CF9FA450;
    v34 = (v33 + v32);
    v35 = *(v26 + 328);
    v36 = *(v26 + 336);
    *v34 = v35;
    v34[1] = v36;
    swift_storeEnumTagMultiPayload();
    v37 = a7;
    v38 = v36;
    v39 = v35;
    v112(&v120, v33);
    v33, v40, v41, v42, v43, v44, v45, v46;

    v47 = a7;
  }

  else
  {
    v53 = *(a10 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
    if (v53)
    {
      if (v53 == 1)
      {
        sub_1CF2F462C();
        v106 = swift_allocError();
        *v105 = 0;
        *(v105 + 8) = 0;
        v107 = -2;
      }

      else
      {
        if (v53 != 2)
        {
          goto LABEL_37;
        }

        sub_1CF2F462C();
        v106 = swift_allocError();
        *v105 = 0;
        *(v105 + 8) = 0;
        v107 = -3;
      }

      *(v105 + 16) = v107;
    }

    else
    {
      v108 = a7;
      v106 = a7;
    }

    v120 = v106;
    v121 = 0;
    v122 = 0;
    v123 = 0.0;
    v124 = 1;
    v112(&v120, MEMORY[0x1E69E7CC0]);

    v47 = v106;
  }
}

uint64_t sub_1CF2EC58C(char a1)
{
  v2 = v1;
  v25 = sub_1CF9E63D8();
  v4 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = *(v2 + 168);
  v26 = *(v2 + 160);
  v14 = sub_1CF9E6448();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v12, 1, 1, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1 & 1;

  v17 = fpfs_current_log();
  v18 = *(v13 + 16);
  sub_1CEFCCBDC(v12, v9, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BE370, qword_1CFA01B30);
    v19 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v15 + 8))(v9, v14);
    v19 = sub_1CF9E63C8();
    (*(v4 + 8))(v6, v25);
  }

  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = sub_1CF2F42CC;
  v20[4] = v16;
  v31 = sub_1CEFCA438;
  v32 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1CEFCA444;
  v30 = &block_descriptor_10;
  v21 = _Block_copy(&aBlock);
  v22 = v17;

  v31 = nullsub_1;
  v32 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1CEFCA444;
  v30 = &block_descriptor_110;
  v23 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v18, v26, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v19, v21, v23);
  _Block_release(v23);
  _Block_release(v21);

  return sub_1CEFCCC44(v12, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2EC968(uint64_t a1, char a2)
{
  v4 = sub_1CF9E6388();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v50 - v8);
  v61 = sub_1CF9E6498();
  v55 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v53 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v12;
  v13 = sub_1CF9E6448();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E73D8();
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6118();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 192) = a2 & 1;
  *(a1 + 208) = 0;
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 200))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }

    *(a1 + 200) = 0;

    swift_unknownObjectRelease();
    return;
  }

  swift_beginAccess();
  if (!*(*(a1 + 184) + 16))
  {
    return;
  }

  v50 = v5;
  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7288();
  v25 = os_log_type_enabled(v23, v24);
  v51 = v4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    *v26 = 134349056;
    *(v26 + 4) = *(*(a1 + 184) + 16);

    _os_log_impl(&dword_1CEFC7000, v23, v24, "interrupting %{public}ld uploads", v26, 0xCu);
    MEMORY[0x1D386CDC0](v26, -1, -1);
  }

  else
  {
  }

  (*(v19 + 8))(v21, v18);
  v52 = a1;
  v27 = *(a1 + 184);
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  if (v30)
  {
    while (1)
    {
      v33 = v32;
LABEL_19:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      [*(*(v27 + 56) + ((v33 << 9) | (8 * v34))) cancel];
      if (!v30)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v33 >= v31)
    {
      break;
    }

    v30 = *(v27 + 64 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_19;
    }
  }

  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v62 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v35 = sub_1CF9E73E8();
  (*(v57 + 8))(v17, v15);
  ObjectType = swift_getObjectType();
  v37 = swift_allocObject();
  swift_weakInit();

  v38 = v58;
  sub_1CF042F9C();
  sub_1CEFD5828(0, v38, sub_1CF2F42D8, v37, ObjectType);

  (*(v59 + 8))(v38, v60);

  v39 = [objc_opt_self() defaultStore];
  [v39 upcallExcutionTimeLimitProgressCancellationGracePeriod];
  v41 = v40;
  v42 = v40;

  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v41 < 9.22337204e18)
  {
    v43 = v53;
    sub_1CF9E6478();
    *v9 = v41;
    v45 = v50;
    v44 = v51;
    (*(v50 + 104))(v9, *MEMORY[0x1E69E7F48], v51);
    v46 = v54;
    MEMORY[0x1D3868740](v43, v9);
    v47 = *(v45 + 8);
    v47(v9, v44);
    v48 = *(v55 + 8);
    v48(v43, v61);
    sub_1CEFD5B64(v9);
    v49 = v56;
    sub_1CEFD5BD8(v56);
    MEMORY[0x1D3869770](v46, v9, v49, ObjectType);
    v47(v49, v44);
    v47(v9, v44);
    v48(v46, v61);
    sub_1CF9E7428();
    *(v52 + 200) = v35;
    swift_unknownObjectRelease();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1CF2ED1AC(uint64_t a1)
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    if (*(*(v6 + 184) + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        v9 = [Strong session];

        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1CF9E7948();
        v48, v10, v11, v12, v13, v14, v15, v16;
        v49 = 0x207364616F6C7075;
        v50 = 0xEB0000000020666FLL;
        v17 = *(v6 + 184);
        v18 = *(v17 + 16);
        if (v18)
        {
          v46 = v9;
          v19 = sub_1CF1F8AC0(v18, 0);
          v20 = sub_1CF1F9918(&v47, v19 + 4, v18, v17);
          v21 = v47;

          result = sub_1CEFCB59C(v21);
          if (v20 != v18)
          {
            __break(1u);
            return result;
          }

          v9 = v46;
        }

        else
        {
          v19 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for NSFileProviderItemIdentifier(0);
        v27 = MEMORY[0x1D3868FE0](v19, v26);
        v29 = v28;

        MEMORY[0x1D3868CC0](v27, v29);
        v29, v30, v31, v32, v33, v34, v35, v36;
        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA3E420);
        v37 = v50;
        v38 = sub_1CF9E6888();
        v37, v39, v40, v41, v42, v43, v44, v45;
        [v9 terminateWithReason_];

        swift_unknownObjectRelease();
      }

      *(v6 + 208) = 1;
      if (!*(v6 + 200))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v22 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v23 = sub_1CF9E6108();
      v24 = sub_1CF9E7288();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1CEFC7000, v23, v24, "all the uploads completed in time", v25, 2u);
        MEMORY[0x1D386CDC0](v25, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      if (!*(v6 + 200))
      {
        goto LABEL_15;
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
LABEL_15:
    *(v6 + 200) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1CF2ED518()
{
  MEMORY[0x1D386CEF0](v0 + 152);

  *(v0 + 176), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 184), v8, v9, v10, v11, v12, v13, v14;
  swift_unknownObjectRelease();
  sub_1CEFF7124(*(v0 + 216), *(v0 + 224));
  sub_1CF2F4268(*(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));

  sub_1CF00D644(*(v0 + 288));
  sub_1CF24D114(*(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), v15, v16, v17, v18);
  v19 = *(v0 + 336);
}

void *sub_1CF2ED5B8()
{
  v0 = sub_1CF2D0000(sub_1CF045404, sub_1CF045404, sub_1CF045404, sub_1CF045404);
  MEMORY[0x1D386CEF0](v0 + 19);

  v0[22], v1, v2, v3, v4, v5, v6, v7;
  v0[23], v8, v9, v10, v11, v12, v13, v14;
  swift_unknownObjectRelease();
  sub_1CEFF7124(v0[27], v0[28]);
  sub_1CF2F4268(v0[29], v0[30], v0[31], v0[32], v0[33]);

  sub_1CF00D644(v0[36]);
  sub_1CF24D114(v0[37], v0[38], v0[39], v0[40], v15, v16, v17, v18);
  v19 = v0[42];

  return v0;
}

uint64_t sub_1CF2ED6A0()
{
  sub_1CF2ED5B8();

  return swift_deallocClassInstance();
}

double sub_1CF2ED78C(void **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;

  sub_1CF2F1774(v10, a2, a3, sub_1CEFF9944, v11);

  return result;
}

void sub_1CF2ED860(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = FPNotSupportedError();
  a3();
}

double sub_1CF2ED934(void **a1, int a2, __int128 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;

  sub_1CF2E752C(v12, a2, a3, a4, v14, sub_1CF2F470C, v13);

  return result;
}

void sub_1CF2ED9E4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1CF9E5268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5108();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1CF9E57D8();
  v9 = sub_1CF9E50D8();
  (*(v6 + 8))(v8, v5);
  a3(v9);
}

id sub_1CF2EDD40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CF2EDE18(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1CF2CA194();
  v9 = swift_allocError();
  v10 = 1;
  a1(&v9);
  v5 = v9;
  v6 = v10;

  return a4(v5, v6);
}

uint64_t sub_1CF2EDEAC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v12 - v9);
  sub_1CF2CA194();
  *v10 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v10);
  return sub_1CEFCCC44(v10, a4, a5);
}

void sub_1CF2EDF84(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1CF2CA194();
  v6 = swift_allocError();
  v7 = 1;
  a1(&v6);
  sub_1CF2F6458(v6, v7, a4);
}

void sub_1CF2EE050(void (*a1)(void *))
{
  sub_1CF2CA194();
  v6[0] = swift_allocError();
  v8 = 1;
  a1(v6);
  v2 = v6[0];
  v3 = v6[1];
  v4 = v8;
  v5 = v7;

  sub_1CF2F63CC(v2, v3, v5, v4);
}

uint64_t sub_1CF2EE0CC(void (*a1)(_OWORD *))
{
  sub_1CF2CA194();
  *&v3[0] = swift_allocError();
  v4[24] = 1;
  a1(v3);
  v5[2] = v3[2];
  v6[0] = *v4;
  *(v6 + 9) = *&v4[9];
  v5[0] = v3[0];
  v5[1] = v3[1];
  return sub_1CEFCCC44(v5, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

uint64_t sub_1CF2EE15C(void (*a1)(_OWORD *))
{
  sub_1CF2CA194();
  *&v3[0] = swift_allocError();
  v4 = 1;
  a1(v3);
  v5[4] = v3[4];
  v5[5] = v3[5];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  v5[3] = v3[3];
  return sub_1CEFCCC44(v5, &unk_1EC4BF2A0, &unk_1CFA01B90);
}

void sub_1CF2EE20C(void (*a1)(void *))
{
  sub_1CF2CA194();
  v5[0] = swift_allocError();
  v6 = 1;
  a1(v5);
  v2 = v5[0];
  v3 = v5[1];
  v4 = v6;

  sub_1CF2F47A4(v2, v3, v4);
}

void sub_1CF2EE284(void (*a1)(void *))
{
  sub_1CF2CA194();
  v10[0] = swift_allocError();
  v11 = 1;
  a1(v10);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  v8 = v10[3];
  v9 = v11;

  sub_1CF060D50(v5, v6, v7, v8, v9, v2, v3, v4);
}

uint64_t sub_1CF2EE300@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v136 = a4;
  v137 = a3;
  v133 = a5;
  v165 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v10);
  v134 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v132 = (&v131 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v139 = (&v131 - v15);
  v145 = sub_1CF9E53C8();
  v16 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v5;
  v146 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle);
  swift_beginAccess();
  v18 = a2;
  v142 = *MEMORY[0x1E696AA08];
  v143 = (v16 + 8);
  v19 = 1000;
  v141 = xmmword_1CF9FA450;
  LODWORD(v147) = v18;
  v138 = v10;
  while (1)
  {
    v154 = -1;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(v146 + 2);
    MEMORY[0x1EEE9AC00](&v161);
    *(&v131 - 4) = v22;
    *(&v131 - 3) = v29;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    *&v161 = v25;
    *(&v161 + 1) = v26;
    v162 = __PAIR64__(v28, v27);
    if (!v21)
    {
      *&v157 = v25;
      *(&v157 + 1) = v26;
      v158 = __PAIR64__(v28, v27);
      v159 = 0;
      v160 = 0;
      LODWORD(v150[0]) = v24;
      v47 = fpfs_openfdbyhandle();
      if ((v47 & 0x80000000) == 0)
      {
        v103 = v47;
        0, v48, v49, v50, v51, v52, v53, v54;
        v102 = v136;
        v101 = v135;
        goto LABEL_49;
      }

      v55 = v150[0];
      v56 = MEMORY[0x1D38683F0]();
      if (v55 < 0)
      {
        LODWORD(v155) = 0;
        BYTE4(v155) = 1;
        BYTE8(v156[1]) = 0;
        if (v56)
        {
          v57 = sub_1CF9E6138();
          if ((v57 & 0x100000000) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        LODWORD(v155) = v150[0];
        BYTE4(v155) = 0;
        BYTE8(v156[1]) = 0;
        if (v56)
        {
          v57 = sub_1CF9E6138();
          if ((v57 & 0x100000000) == 0)
          {
LABEL_23:
            v151 = v57;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v141;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v62;
            *(inited + 72) = &type metadata for VFSFileError;
            v63 = swift_allocObject();
            *(inited + 48) = v63;
            sub_1CF19A730(&v155, v63 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            v64 = v144;
            v65 = v145;
            sub_1CF9E57D8();
            v66 = sub_1CF9E53A8();
            (*v143)(v64, v65);
            sub_1CF1969CC(&v155);
LABEL_25:
            swift_willThrow();
            0, v70, v71, v72, v73, v74, v75, v76;
            goto LABEL_36;
          }
        }
      }

      sub_1CEFDB034();
      v66 = swift_allocError();
      v67 = *(v156 + 9);
      v68 = v156[0];
      *v69 = v155;
      v69[1] = v68;
      *(v69 + 25) = v67;
      goto LABEL_25;
    }

    MEMORY[0x1EEE9AC00](v23);
    *(&v131 - 4) = v31;
    *(&v131 - 3) = sub_1CF2F6700;
    *(&v131 - 2) = v32;
    if ((v21 & 0x1000000000000000) != 0)
    {
      goto LABEL_42;
    }

    if ((v21 & 0x2000000000000000) != 0)
    {
      break;
    }

    if ((v20 & 0x1000000000000000) == 0)
    {
LABEL_42:

      sub_1CF9E7938();
      v66 = v7;
      if (!v7)
      {
        v21, v89, v90, v91, v92, v93, v94, v95;
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    v163 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v157 = v161;
    v158 = v162;
    v159 = v163;
    v160 = v164;
    LODWORD(v150[0]) = v30;

    v33 = fpfs_openfdbyhandle();
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v41 = v150[0];
    v42 = MEMORY[0x1D38683F0]();
    if ((v41 & 0x80000000) == 0)
    {
      LODWORD(v155) = v150[0];
      BYTE4(v155) = 0;
      BYTE8(v156[1]) = 0;
      if (!v42)
      {
        goto LABEL_33;
      }

      v43 = sub_1CF9E6138();
      if ((v43 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }

      v149 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v44 = swift_initStackObject();
      *(v44 + 16) = v141;
      *(v44 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v44 + 40) = v45;
      *(v44 + 72) = &type metadata for VFSFileError;
      v46 = swift_allocObject();
      *(v44 + 48) = v46;
      sub_1CF19A730(&v155, v46 + 16);
      sub_1CF4E04E8(v44);
      swift_setDeallocating();
      sub_1CEFCCC44(v44 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
LABEL_29:
      LODWORD(v140) = v19;
      v80 = v144;
      v81 = v145;
      sub_1CF9E57D8();
      v66 = sub_1CF9E53A8();
      v19 = v140;
      (*v143)(v80, v81);
      goto LABEL_34;
    }

    LODWORD(v155) = 0;
    BYTE4(v155) = 1;
    BYTE8(v156[1]) = 0;
    if (!v42)
    {
      goto LABEL_33;
    }

    v82 = sub_1CF9E6138();
    if ((v82 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    v149 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v83 = swift_allocObject();
    *(v83 + 16) = v141;
    *(v83 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v83 + 40) = v84;
    *(v83 + 72) = &type metadata for VFSFileError;
    v85 = swift_allocObject();
    *(v83 + 48) = v85;
    sub_1CF19A730(&v155, v85 + 16);
    sub_1CF4E04E8(v83);
    swift_setDeallocating();
    sub_1CEFCCC44(v83 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v140 = &v131;
    v86 = v144;
    v87 = v145;
    sub_1CF9E57D8();
    v66 = sub_1CF9E53A8();
    (*v143)(v86, v87);
LABEL_34:
    sub_1CF1969CC(&v155);
    swift_willThrow();
LABEL_35:
    v21, v89, v90, v91, v92, v93, v94, v95;
LABEL_36:
    v7 = 0;
    v96 = v66;
    LODWORD(v155) = sub_1CF9E5298();
    sub_1CF196978();
    v97 = sub_1CF9E5658();

    if ((v97 & 1) == 0)
    {
      v99 = v66;
      LODWORD(v155) = sub_1CF9E5328();
      v100 = sub_1CF9E5658();

      if (v100)
      {

        v137(0xFFFFFFFFLL, 0, 0, 0);
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    usleep(v19);
    if (2 * v19 >= 0xF4240)
    {
      v19 = 1000000;
    }

    else
    {
      v19 *= 2;
    }

    if ((v154 & 0x80000000) == 0)
    {
      close(v154);
    }
  }

  v150[0] = v20;
  v150[1] = v21 & 0xFFFFFFFFFFFFFFLL;
  v163 = v150;
  v157 = v161;
  v158 = v162;
  v159 = v150;
  v160 = v164;
  v149 = v30;

  v33 = fpfs_openfdbyhandle();
  if ((v33 & 0x80000000) != 0)
  {
    v58 = v149;
    v59 = MEMORY[0x1D38683F0]();
    if (v58 < 0)
    {
      LODWORD(v155) = 0;
      BYTE4(v155) = 1;
      BYTE8(v156[1]) = 0;
      if (!v59 || (v60 = sub_1CF9E6138(), (v60 & 0x100000000) != 0))
      {
LABEL_33:
        sub_1CEFDB034();
        v66 = swift_allocError();
        sub_1CF19A730(&v155, v88);
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v155) = v149;
      BYTE4(v155) = 0;
      BYTE8(v156[1]) = 0;
      if (!v59)
      {
        goto LABEL_33;
      }

      v60 = sub_1CF9E6138();
      if ((v60 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }
    }

    v148 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v77 = swift_initStackObject();
    *(v77 + 16) = v141;
    *(v77 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v77 + 40) = v78;
    *(v77 + 72) = &type metadata for VFSFileError;
    v79 = swift_allocObject();
    *(v77 + 48) = v79;
    sub_1CF19A730(&v155, v79 + 16);
    sub_1CF4E04E8(v77);
    swift_setDeallocating();
    sub_1CEFCCC44(v77 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    goto LABEL_29;
  }

LABEL_46:
  v151 = v33;
  v21, v34, v35, v36, v37, v38, v39, v40;
LABEL_47:
  v101 = v135;
  v102 = v136;
  v103 = v151;
LABEL_49:
  LODWORD(v147) = v103;
  v146 = &v131;
  v104 = v101 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v105 = *(v104 + 26);
  v106 = *(v104 + 25);
  v107 = *(v104 + 24);
  v108 = *(v104 + 8);
  v154 = v103;
  v109 = *(v104 + 16);
  MEMORY[0x1EEE9AC00](v98);
  *(&v131 - 4) = &v154;
  *(&v131 - 3) = v110;
  *(&v131 - 2) = v102;
  *&v156[1] = v111;
  *(&v156[1] + 1) = v108;
  *&v155 = v112;
  *(&v155 + 1) = 1107296256;
  *&v156[0] = v113;
  *(&v156[0] + 1) = &block_descriptor_870;
  v114 = _Block_copy(&v155);
  v145 = v108;
  swift_retain_n();

  v144 = v114;
  *&v161 = v114;
  *(&v161 + 1) = v109;
  LOBYTE(v162) = v107;
  BYTE1(v162) = v106;
  BYTE2(v162) = v105;
  sub_1CEFDB034();
  v115 = swift_allocError();
  *v116 = 6;
  *(v116 + 8) = 0u;
  *(v116 + 24) = 0u;
  *(v116 + 40) = 19;
  v117 = v139;
  *v139 = v115;
  swift_storeEnumTagMultiPayload();
  v118 = swift_allocObject();
  *(v118 + 16) = v117;
  *(v118 + 24) = sub_1CF2F4C14;
  *(v118 + 32) = &v131 - 6;
  v119 = swift_allocObject();
  *(v119 + 16) = sub_1CF2F644C;
  *(v119 + 24) = v118;
  v143 = v118;
  *&v156[1] = sub_1CF1DBD5C;
  *(&v156[1] + 1) = v119;
  *&v155 = MEMORY[0x1E69E9820];
  *(&v155 + 1) = 1107296256;
  *&v156[0] = sub_1CEFDB270;
  *(&v156[0] + 1) = &block_descriptor_880;
  v120 = _Block_copy(&v155);

  v121 = fpfs_fgetfileattrs_detailed();
  _Block_release(v120);
  LOBYTE(v118) = swift_isEscapingClosureAtFileLocation();

  if (v118)
  {
    __break(1u);
  }

  v122 = v139;
  if (v121)
  {
    swift_getErrorValue();
    v123 = v153;
    v147 = v152;
    v124 = swift_allocError();
    *v125 = 6;
    *(v125 + 8) = 0u;
    *(v125 + 24) = 0u;
    *(v125 + 40) = 19;
    v126 = v121;
    v127 = sub_1CF199074(v124, v123);

    v128 = v132;
    *v132 = v127;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v128, v122, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  v129 = v134;
  sub_1CEFCCBDC(v122, v134, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1CEFE55D0(v129, v133, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v122, &unk_1EC4BF310, &unk_1CF9FDB30);

    _Block_release(v144);

LABEL_57:
    result = v154;
    if ((v154 & 0x80000000) == 0)
    {
      return close(v154);
    }

    return result;
  }

  *&v155 = *v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v122, &unk_1EC4BF310, &unk_1CF9FDB30);

  _Block_release(v144);

LABEL_54:
  result = v154;
  if ((v154 & 0x80000000) == 0)
  {
    return close(v154);
  }

  return result;
}

uint64_t sub_1CF2EF290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v124 = a4;
  v125 = a3;
  v8 = a2;
  v122 = a5;
  v150 = *MEMORY[0x1E69E9840];
  v131 = sub_1CF9E53C8();
  v10 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v5;
  v132 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle);
  swift_beginAccess();
  v127 = *MEMORY[0x1E696AA08];
  v128 = (v10 + 8);
  v12 = 1000;
  v126 = xmmword_1CF9FA450;
  v129 = v8;
  while (1)
  {
    v139 = -1;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(v132 + 2);
    MEMORY[0x1EEE9AC00](&v146);
    *(&v122 - 4) = v15;
    *(&v122 - 3) = v8;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *&v146 = v18;
    *(&v146 + 1) = v19;
    v147 = __PAIR64__(v21, v20);
    if (!v14)
    {
      *&v142 = v18;
      *(&v142 + 1) = v19;
      v143 = __PAIR64__(v21, v20);
      v144 = 0;
      v145 = 0;
      LODWORD(v136[0]) = v17;
      v39 = fpfs_openfdbyhandle();
      if ((v39 & 0x80000000) == 0)
      {
        v95 = v39;
        0, v40, v41, v42, v43, v44, v45, v46;
        v94 = v124;
        v93 = v123;
        goto LABEL_50;
      }

      v47 = v136[0];
      v48 = MEMORY[0x1D38683F0]();
      if (v47 < 0)
      {
        LODWORD(v140) = 0;
        BYTE4(v140) = 1;
        BYTE8(v141[1]) = 0;
        if (v48)
        {
          v49 = sub_1CF9E6138();
          if ((v49 & 0x100000000) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        LODWORD(v140) = v136[0];
        BYTE4(v140) = 0;
        BYTE8(v141[1]) = 0;
        if (v48)
        {
          v49 = sub_1CF9E6138();
          if ((v49 & 0x100000000) == 0)
          {
LABEL_23:
            v137 = v49;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v126;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v54;
            *(inited + 72) = &type metadata for VFSFileError;
            v55 = swift_allocObject();
            *(inited + 48) = v55;
            sub_1CF19A730(&v140, v55 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            v57 = v130;
            v56 = v131;
            sub_1CF9E57D8();
            v58 = sub_1CF9E53A8();
            v59 = v57;
            v8 = v129;
            (*v128)(v59, v56);
            sub_1CF1969CC(&v140);
LABEL_25:
            swift_willThrow();
            0, v63, v64, v65, v66, v67, v68, v69;
            v7 = 0;
            goto LABEL_37;
          }
        }
      }

      sub_1CEFDB034();
      v58 = swift_allocError();
      v60 = *(v141 + 9);
      v61 = v141[0];
      *v62 = v140;
      v62[1] = v61;
      *(v62 + 25) = v60;
      goto LABEL_25;
    }

    v133 = &v122;
    MEMORY[0x1EEE9AC00](v16);
    *(&v122 - 4) = v23;
    *(&v122 - 3) = sub_1CF19BDC4;
    *(&v122 - 2) = v24;
    if ((v14 & 0x1000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if ((v14 & 0x2000000000000000) == 0)
    {
      if ((v13 & 0x1000000000000000) == 0)
      {
LABEL_43:

        sub_1CF9E7938();
        v58 = v7;
        if (!v7)
        {
          v14, v81, v82, v83, v84, v85, v86, v87;
          goto LABEL_48;
        }

        goto LABEL_36;
      }

      v148 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v142 = v146;
      v143 = v147;
      v144 = v148;
      v145 = v149;
      LODWORD(v136[0]) = v22;

      v25 = fpfs_openfdbyhandle();
      if ((v25 & 0x80000000) == 0)
      {
        break;
      }

      v33 = v136[0];
      v34 = MEMORY[0x1D38683F0]();
      if (v33 < 0)
      {
        LODWORD(v140) = 0;
        BYTE4(v140) = 1;
        BYTE8(v141[1]) = 0;
        if (!v34)
        {
          goto LABEL_34;
        }

        v73 = sub_1CF9E6138();
        if ((v73 & 0x100000000) != 0)
        {
          goto LABEL_34;
        }

        v135 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        v74 = swift_allocObject();
        *(v74 + 16) = v126;
        *(v74 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(v74 + 40) = v75;
        *(v74 + 72) = &type metadata for VFSFileError;
        v76 = swift_allocObject();
        *(v74 + 48) = v76;
        sub_1CF19A730(&v140, v76 + 16);
        sub_1CF4E04E8(v74);
        swift_setDeallocating();
        sub_1CEFCCC44(v74 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
        swift_deallocClassInstance();
      }

      else
      {
        LODWORD(v140) = v136[0];
        BYTE4(v140) = 0;
        BYTE8(v141[1]) = 0;
        if (!v34)
        {
          goto LABEL_34;
        }

        v35 = sub_1CF9E6138();
        if ((v35 & 0x100000000) != 0)
        {
          goto LABEL_34;
        }

        v135 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
        v36 = swift_initStackObject();
        *(v36 + 16) = v126;
        *(v36 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *(v36 + 40) = v37;
        *(v36 + 72) = &type metadata for VFSFileError;
        v38 = swift_allocObject();
        *(v36 + 48) = v38;
        sub_1CF19A730(&v140, v38 + 16);
        sub_1CF4E04E8(v36);
        swift_setDeallocating();
        sub_1CEFCCC44(v36 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      }

      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      goto LABEL_33;
    }

    v136[0] = v13;
    v136[1] = v14 & 0xFFFFFFFFFFFFFFLL;
    v148 = v136;
    v142 = v146;
    v143 = v147;
    v144 = v136;
    v145 = v149;
    v135 = v22;

    v25 = fpfs_openfdbyhandle();
    if ((v25 & 0x80000000) == 0)
    {
      break;
    }

    v50 = v135;
    v51 = MEMORY[0x1D38683F0]();
    if (v50 < 0)
    {
      LODWORD(v140) = 0;
      BYTE4(v140) = 1;
      BYTE8(v141[1]) = 0;
      if (!v51 || (v52 = sub_1CF9E6138(), (v52 & 0x100000000) != 0))
      {
LABEL_34:
        sub_1CEFDB034();
        v58 = swift_allocError();
        sub_1CF19A730(&v140, v80);
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v140) = v135;
      BYTE4(v140) = 0;
      BYTE8(v141[1]) = 0;
      if (!v51)
      {
        goto LABEL_34;
      }

      v52 = sub_1CF9E6138();
      if ((v52 & 0x100000000) != 0)
      {
        goto LABEL_34;
      }
    }

    v134 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v70 = swift_initStackObject();
    *(v70 + 16) = v126;
    *(v70 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v70 + 40) = v71;
    *(v70 + 72) = &type metadata for VFSFileError;
    v72 = swift_allocObject();
    *(v70 + 48) = v72;
    sub_1CF19A730(&v140, v72 + 16);
    sub_1CF4E04E8(v70);
    swift_setDeallocating();
    sub_1CEFCCC44(v70 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
LABEL_33:
    v78 = v130;
    v77 = v131;
    sub_1CF9E57D8();
    v58 = sub_1CF9E53A8();
    v79 = v78;
    v8 = v129;
    (*v128)(v79, v77);
LABEL_35:
    sub_1CF1969CC(&v140);
    swift_willThrow();
LABEL_36:
    v14, v81, v82, v83, v84, v85, v86, v87;
    v7 = 0;
LABEL_37:
    v88 = v58;
    LODWORD(v140) = sub_1CF9E5298();
    sub_1CF196978();
    v89 = sub_1CF9E5658();

    if ((v89 & 1) == 0)
    {
      v91 = v58;
      LODWORD(v140) = sub_1CF9E5328();
      v92 = sub_1CF9E5658();

      if (v92)
      {

        v125(0xFFFFFFFFLL, 0, 0, 0);
        goto LABEL_58;
      }

      goto LABEL_55;
    }

    usleep(v12);
    if (2 * v12 >= 0xF4240)
    {
      v12 = 1000000;
    }

    else
    {
      v12 *= 2;
    }

    if ((v139 & 0x80000000) == 0)
    {
      close(v139);
    }
  }

  v137 = v25;
  v14, v26, v27, v28, v29, v30, v31, v32;
LABEL_48:
  v93 = v123;
  v94 = v124;
  v95 = v137;
LABEL_50:
  LODWORD(v133) = v95;
  v132 = &v122;
  v96 = v93 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v97 = *(v96 + 26);
  v98 = *(v96 + 25);
  v99 = *(v96 + 24);
  v100 = *(v96 + 8);
  v139 = v95;
  v101 = *(v96 + 16);
  MEMORY[0x1EEE9AC00](v90);
  *(&v122 - 4) = &v139;
  *(&v122 - 3) = v102;
  *(&v122 - 2) = v94;
  *&v141[1] = v103;
  *(&v141[1] + 1) = v100;
  *&v140 = v104;
  *(&v140 + 1) = 1107296256;
  *&v141[0] = v105;
  *(&v141[0] + 1) = &block_descriptor_312;
  v106 = _Block_copy(&v140);
  v131 = v100;
  swift_retain_n();

  v130 = v106;
  *&v146 = v106;
  *(&v146 + 1) = v101;
  LOBYTE(v147) = v99;
  BYTE1(v147) = v98;
  BYTE2(v147) = v97;
  sub_1CEFDB034();
  v107 = swift_allocError();
  *v108 = 6;
  *(v108 + 8) = 0u;
  *(v108 + 24) = 0u;
  *(v108 + 40) = 19;
  *&v142 = v107;
  BYTE8(v142) = 1;
  v109 = swift_allocObject();
  v109[2] = &v142;
  v109[3] = sub_1CF2F4C14;
  v109[4] = &v122 - 6;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_1CF2B1B94;
  *(v110 + 24) = v109;
  *&v141[1] = sub_1CEFDB240;
  *(&v141[1] + 1) = v110;
  *&v140 = MEMORY[0x1E69E9820];
  *(&v140 + 1) = 1107296256;
  *&v141[0] = sub_1CEFDB270;
  *(&v141[0] + 1) = &block_descriptor_321_0;
  v111 = _Block_copy(&v140);

  v112 = fpfs_fgetfileattrs_detailed();
  _Block_release(v111);
  LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

  if (v111)
  {
    __break(1u);
  }

  if (v112)
  {
    swift_getErrorValue();
    v113 = v138;
    v114 = swift_allocError();
    *v115 = 6;
    *(v115 + 8) = 0u;
    *(v115 + 24) = 0u;
    *(v115 + 40) = 19;
    v116 = v112;
    v117 = sub_1CF199074(v114, v113);

    v118 = v142;
    v119 = BYTE8(v142);
    *&v142 = v117;
    BYTE8(v142) = 1;
    sub_1CF0BA6EC(v118, v119);
  }

  if ((BYTE8(v142) & 1) == 0)
  {

    sub_1CF0BA6EC(v142, SBYTE8(v142));

    _Block_release(v130);

LABEL_58:
    result = v139;
    if ((v139 & 0x80000000) == 0)
    {
      return close(v139);
    }

    return result;
  }

  *&v140 = v142;
  v120 = v142;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CF0BA6EC(v142, SBYTE8(v142));

  _Block_release(v130);

LABEL_55:
  result = v139;
  if ((v139 & 0x80000000) == 0)
  {
    return close(v139);
  }

  return result;
}

uint64_t sub_1CF2F005C@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(uint64_t, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v136 = a4;
  v137 = a3;
  v133 = a5;
  v165 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v10);
  v134 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v132 = (&v131 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v139 = (&v131 - v15);
  v145 = sub_1CF9E53C8();
  v16 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v5;
  v146 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle);
  swift_beginAccess();
  v18 = a2;
  v142 = *MEMORY[0x1E696AA08];
  v143 = (v16 + 8);
  v19 = 1000;
  v141 = xmmword_1CF9FA450;
  LODWORD(v147) = v18;
  v138 = v10;
  while (1)
  {
    v154 = -1;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(v146 + 2);
    MEMORY[0x1EEE9AC00](&v161);
    *(&v131 - 4) = v22;
    *(&v131 - 3) = v29;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;
    *&v161 = v25;
    *(&v161 + 1) = v26;
    v162 = __PAIR64__(v28, v27);
    if (!v21)
    {
      *&v157 = v25;
      *(&v157 + 1) = v26;
      v158 = __PAIR64__(v28, v27);
      v159 = 0;
      v160 = 0;
      LODWORD(v150[0]) = v24;
      v47 = fpfs_openfdbyhandle();
      if ((v47 & 0x80000000) == 0)
      {
        v103 = v47;
        0, v48, v49, v50, v51, v52, v53, v54;
        v102 = v136;
        v101 = v135;
        goto LABEL_49;
      }

      v55 = v150[0];
      v56 = MEMORY[0x1D38683F0]();
      if (v55 < 0)
      {
        LODWORD(v155) = 0;
        BYTE4(v155) = 1;
        BYTE8(v156[1]) = 0;
        if (v56)
        {
          v57 = sub_1CF9E6138();
          if ((v57 & 0x100000000) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        LODWORD(v155) = v150[0];
        BYTE4(v155) = 0;
        BYTE8(v156[1]) = 0;
        if (v56)
        {
          v57 = sub_1CF9E6138();
          if ((v57 & 0x100000000) == 0)
          {
LABEL_23:
            v151 = v57;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v141;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v62;
            *(inited + 72) = &type metadata for VFSFileError;
            v63 = swift_allocObject();
            *(inited + 48) = v63;
            sub_1CF19A730(&v155, v63 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            v64 = v144;
            v65 = v145;
            sub_1CF9E57D8();
            v66 = sub_1CF9E53A8();
            (*v143)(v64, v65);
            sub_1CF1969CC(&v155);
LABEL_25:
            swift_willThrow();
            0, v70, v71, v72, v73, v74, v75, v76;
            goto LABEL_36;
          }
        }
      }

      sub_1CEFDB034();
      v66 = swift_allocError();
      v67 = *(v156 + 9);
      v68 = v156[0];
      *v69 = v155;
      v69[1] = v68;
      *(v69 + 25) = v67;
      goto LABEL_25;
    }

    MEMORY[0x1EEE9AC00](v23);
    *(&v131 - 4) = v31;
    *(&v131 - 3) = sub_1CF2F6700;
    *(&v131 - 2) = v32;
    if ((v21 & 0x1000000000000000) != 0)
    {
      goto LABEL_42;
    }

    if ((v21 & 0x2000000000000000) != 0)
    {
      break;
    }

    if ((v20 & 0x1000000000000000) == 0)
    {
LABEL_42:

      sub_1CF9E7938();
      v66 = v7;
      if (!v7)
      {
        v21, v89, v90, v91, v92, v93, v94, v95;
        goto LABEL_47;
      }

      goto LABEL_35;
    }

    v163 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v157 = v161;
    v158 = v162;
    v159 = v163;
    v160 = v164;
    LODWORD(v150[0]) = v30;

    v33 = fpfs_openfdbyhandle();
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    v41 = v150[0];
    v42 = MEMORY[0x1D38683F0]();
    if ((v41 & 0x80000000) == 0)
    {
      LODWORD(v155) = v150[0];
      BYTE4(v155) = 0;
      BYTE8(v156[1]) = 0;
      if (!v42)
      {
        goto LABEL_33;
      }

      v43 = sub_1CF9E6138();
      if ((v43 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }

      v149 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v44 = swift_initStackObject();
      *(v44 + 16) = v141;
      *(v44 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v44 + 40) = v45;
      *(v44 + 72) = &type metadata for VFSFileError;
      v46 = swift_allocObject();
      *(v44 + 48) = v46;
      sub_1CF19A730(&v155, v46 + 16);
      sub_1CF4E04E8(v44);
      swift_setDeallocating();
      sub_1CEFCCC44(v44 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
LABEL_29:
      LODWORD(v140) = v19;
      v80 = v144;
      v81 = v145;
      sub_1CF9E57D8();
      v66 = sub_1CF9E53A8();
      v19 = v140;
      (*v143)(v80, v81);
      goto LABEL_34;
    }

    LODWORD(v155) = 0;
    BYTE4(v155) = 1;
    BYTE8(v156[1]) = 0;
    if (!v42)
    {
      goto LABEL_33;
    }

    v82 = sub_1CF9E6138();
    if ((v82 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    v149 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v83 = swift_allocObject();
    *(v83 + 16) = v141;
    *(v83 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v83 + 40) = v84;
    *(v83 + 72) = &type metadata for VFSFileError;
    v85 = swift_allocObject();
    *(v83 + 48) = v85;
    sub_1CF19A730(&v155, v85 + 16);
    sub_1CF4E04E8(v83);
    swift_setDeallocating();
    sub_1CEFCCC44(v83 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v140 = &v131;
    v86 = v144;
    v87 = v145;
    sub_1CF9E57D8();
    v66 = sub_1CF9E53A8();
    (*v143)(v86, v87);
LABEL_34:
    sub_1CF1969CC(&v155);
    swift_willThrow();
LABEL_35:
    v21, v89, v90, v91, v92, v93, v94, v95;
LABEL_36:
    v7 = 0;
    v96 = v66;
    LODWORD(v155) = sub_1CF9E5298();
    sub_1CF196978();
    v97 = sub_1CF9E5658();

    if ((v97 & 1) == 0)
    {
      v99 = v66;
      LODWORD(v155) = sub_1CF9E5328();
      v100 = sub_1CF9E5658();

      if (v100)
      {

        v137(0xFFFFFFFFLL, 0, 0, 0);
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    usleep(v19);
    if (2 * v19 >= 0xF4240)
    {
      v19 = 1000000;
    }

    else
    {
      v19 *= 2;
    }

    if ((v154 & 0x80000000) == 0)
    {
      close(v154);
    }
  }

  v150[0] = v20;
  v150[1] = v21 & 0xFFFFFFFFFFFFFFLL;
  v163 = v150;
  v157 = v161;
  v158 = v162;
  v159 = v150;
  v160 = v164;
  v149 = v30;

  v33 = fpfs_openfdbyhandle();
  if ((v33 & 0x80000000) != 0)
  {
    v58 = v149;
    v59 = MEMORY[0x1D38683F0]();
    if (v58 < 0)
    {
      LODWORD(v155) = 0;
      BYTE4(v155) = 1;
      BYTE8(v156[1]) = 0;
      if (!v59 || (v60 = sub_1CF9E6138(), (v60 & 0x100000000) != 0))
      {
LABEL_33:
        sub_1CEFDB034();
        v66 = swift_allocError();
        sub_1CF19A730(&v155, v88);
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v155) = v149;
      BYTE4(v155) = 0;
      BYTE8(v156[1]) = 0;
      if (!v59)
      {
        goto LABEL_33;
      }

      v60 = sub_1CF9E6138();
      if ((v60 & 0x100000000) != 0)
      {
        goto LABEL_33;
      }
    }

    v148 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v77 = swift_initStackObject();
    *(v77 + 16) = v141;
    *(v77 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v77 + 40) = v78;
    *(v77 + 72) = &type metadata for VFSFileError;
    v79 = swift_allocObject();
    *(v77 + 48) = v79;
    sub_1CF19A730(&v155, v79 + 16);
    sub_1CF4E04E8(v77);
    swift_setDeallocating();
    sub_1CEFCCC44(v77 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    goto LABEL_29;
  }

LABEL_46:
  v151 = v33;
  v21, v34, v35, v36, v37, v38, v39, v40;
LABEL_47:
  v101 = v135;
  v102 = v136;
  v103 = v151;
LABEL_49:
  LODWORD(v147) = v103;
  v146 = &v131;
  v104 = v101 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v105 = *(v104 + 26);
  v106 = *(v104 + 25);
  v107 = *(v104 + 24);
  v108 = *(v104 + 8);
  v154 = v103;
  v109 = *(v104 + 16);
  MEMORY[0x1EEE9AC00](v98);
  *(&v131 - 4) = &v154;
  *(&v131 - 3) = v110;
  *(&v131 - 2) = v102;
  *&v156[1] = v111;
  *(&v156[1] + 1) = v108;
  *&v155 = v112;
  *(&v155 + 1) = 1107296256;
  *&v156[0] = v113;
  *(&v156[0] + 1) = &block_descriptor_849;
  v114 = _Block_copy(&v155);
  v145 = v108;
  swift_retain_n();

  v144 = v114;
  *&v161 = v114;
  *(&v161 + 1) = v109;
  LOBYTE(v162) = v107;
  BYTE1(v162) = v106;
  BYTE2(v162) = v105;
  sub_1CEFDB034();
  v115 = swift_allocError();
  *v116 = 6;
  *(v116 + 8) = 0u;
  *(v116 + 24) = 0u;
  *(v116 + 40) = 19;
  v117 = v139;
  *v139 = v115;
  swift_storeEnumTagMultiPayload();
  v118 = swift_allocObject();
  *(v118 + 16) = v117;
  *(v118 + 24) = sub_1CF2F6598;
  *(v118 + 32) = &v131 - 6;
  v119 = swift_allocObject();
  *(v119 + 16) = sub_1CF2F63D8;
  *(v119 + 24) = v118;
  v143 = v118;
  *&v156[1] = sub_1CF1DBD5C;
  *(&v156[1] + 1) = v119;
  *&v155 = MEMORY[0x1E69E9820];
  *(&v155 + 1) = 1107296256;
  *&v156[0] = sub_1CEFDB270;
  *(&v156[0] + 1) = &block_descriptor_859;
  v120 = _Block_copy(&v155);

  v121 = fpfs_fgetfileattrs_detailed();
  _Block_release(v120);
  LOBYTE(v118) = swift_isEscapingClosureAtFileLocation();

  if (v118)
  {
    __break(1u);
  }

  v122 = v139;
  if (v121)
  {
    swift_getErrorValue();
    v123 = v153;
    v147 = v152;
    v124 = swift_allocError();
    *v125 = 6;
    *(v125 + 8) = 0u;
    *(v125 + 24) = 0u;
    *(v125 + 40) = 19;
    v126 = v121;
    v127 = sub_1CF199074(v124, v123);

    v128 = v132;
    *v132 = v127;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v128, v122, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v129 = v134;
  sub_1CEFCCBDC(v122, v134, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1CF2F63E4(v129, v133, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v122, &unk_1EC4BF300, &unk_1CFA006B0);

    _Block_release(v144);

LABEL_57:
    result = v154;
    if ((v154 & 0x80000000) == 0)
    {
      return close(v154);
    }

    return result;
  }

  *&v155 = *v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();

  sub_1CEFCCC44(v122, &unk_1EC4BF300, &unk_1CFA006B0);

  _Block_release(v144);

LABEL_54:
  result = v154;
  if ((v154 & 0x80000000) == 0)
  {
    return close(v154);
  }

  return result;
}

uint64_t sub_1CF2F0FF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = sub_1CF19B994(*a4);
  if (v5)
  {
  }

  else
  {
    *(a1 + 56) = v11;
    *(a1 + 20) = v12;
  }

  return a5(*a4, a1, a2, a3);
}

id sub_1CF2F1080(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5928();
  v6 = sub_1CF9E5928();
  v16[0] = 0;
  v7 = [v2 initWithURL:v5 packageURL:v6 error:v16];

  v8 = v16[0];
  if (v7)
  {
    v9 = sub_1CF9E5A58();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a2, v9);
    v10(a1, v9);
  }

  else
  {
    v12 = v16[0];
    sub_1CF9E57F8();

    swift_willThrow();
    v13 = sub_1CF9E5A58();
    v14 = *(*(v13 - 8) + 8);
    v14(a2, v13);
    v14(a1, v13);
  }

  return v7;
}

unint64_t *sub_1CF2F1214(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_1CF0455E8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1CF2F12B0(void *a1, uint64_t a2, void *a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v55 = a5;
  v52 = a3;
  v53 = a4;
  v47 = a2;
  v13 = sub_1CF9E63D8();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = *(v7 + 160);
  v21 = *(v7 + 168);
  v48 = v7;
  v54 = v20;
  v22 = sub_1CF9E6448();
  v49 = *(v22 - 8);
  (*(v49 + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  v24 = a7;
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a1;
  v26 = a1;
  v28 = v52;
  v27 = v53;
  v25[4] = v8;
  v25[5] = v28;
  v25[6] = a6;
  v25[7] = v24;
  v29 = v55;
  v25[8] = v27;
  v25[9] = v29;
  v30 = swift_allocObject();
  v30[2] = sub_1CF2B1400;
  v30[3] = v23;
  v51 = v30;
  v30[4] = v21;
  v31 = v28;
  v32 = v50;

  v52 = v23;

  swift_retain_n();

  v33 = v26;
  v34 = v49;

  v35 = fpfs_current_log();
  v53 = *(v21 + 16);
  v55 = v19;
  sub_1CEFCCBDC(v19, v32, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v34 + 48))(v32, 1, v22) == 1)
  {
    sub_1CEFCCC44(v32, &unk_1EC4BE370, qword_1CFA01B30);
    v36 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v37 = v44;
    sub_1CF9E6438();
    (*(v34 + 8))(v32, v22);
    v36 = sub_1CF9E63C8();
    (*(v45 + 8))(v37, v46);
  }

  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = sub_1CF2F6140;
  v38[4] = v25;
  v60 = sub_1CF2BA17C;
  v61 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1CEFCA444;
  v59 = &block_descriptor_759;
  v39 = _Block_copy(&aBlock);
  v40 = v35;

  v60 = sub_1CF2F6174;
  v61 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1CEFCA444;
  v59 = &block_descriptor_762;
  v41 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v53, v54, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v36, v39, v41);
  _Block_release(v41);
  _Block_release(v39);

  return sub_1CEFCCC44(v55, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2F1774(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v9 = sub_1CF9E63D8();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = *(v5 + 160);
  v43 = *(v5 + 168);
  v44 = v16;
  v17 = sub_1CF9E6448();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v15, 1, 1, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a1;
  v21 = v45;
  v20[4] = v45;
  v20[5] = a4;
  v20[6] = a5;
  v22 = swift_allocObject();
  v22[2] = sub_1CEFF9D98;
  v22[3] = v19;
  v23 = v43;
  v40 = v22;
  v22[4] = v43;
  v24 = v21;
  v42 = v19;
  v25 = v17;

  swift_retain_n();

  v26 = a1;
  v27 = v41;
  v28 = fpfs_current_log();
  v43 = v23[2];
  v45 = v15;
  sub_1CEFCCBDC(v15, v27, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v18 + 48))(v27, 1, v25) == 1)
  {
    sub_1CEFCCC44(v27, &unk_1EC4BE370, qword_1CFA01B30);
    v29 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v30 = v37;
    sub_1CF9E6438();
    (*(v18 + 8))(v27, v25);
    v29 = sub_1CF9E63C8();
    (*(v38 + 8))(v30, v39);
  }

  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = sub_1CF2F629C;
  v31[4] = v20;
  v50 = sub_1CF2BA17C;
  v51 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1CEFCA444;
  v49 = &block_descriptor_809;
  v32 = _Block_copy(&aBlock);
  v33 = v28;

  v50 = sub_1CF2F4FD8;
  v51 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1CEFCA444;
  v49 = &block_descriptor_812;
  v34 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v43, v44, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v29, v32, v34);
  _Block_release(v34);
  _Block_release(v32);

  return sub_1CEFCCC44(v45, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2F1C10(uint64_t a1)
{
  v1 = 0;
  if (!a1)
  {
    return v1;
  }

  while (1)
  {
    v4 = a1 & -a1;
    if (v4 > 3)
    {
      break;
    }

    if (v4 == 1)
    {
      v1 |= 0x10000uLL;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_12;
      }

      v1 |= 1uLL;
    }

LABEL_4:
    v3 = a1 == v4;
    a1 ^= v4;
    if (v3)
    {
      return v1;
    }
  }

  if (v4 == 4)
  {
    goto LABEL_4;
  }

  if (v4 == 32)
  {
    v1 |= 2uLL;
    goto LABEL_4;
  }

LABEL_12:
  MEMORY[0x1D3868CC0](0x726F707075736E75, 0xEC00000020646574);
  sub_1CF9E7B58();
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void *sub_1CF2F1D18(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, char a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a4 & 1) == 0)
  {
    v13 = 128;
    if (a3 < 128)
    {
      v13 = a3;
    }

    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7288();
    a2, v18, v19, v20, v21, v22, v23, v24;
    if (os_log_type_enabled(v16, v17))
    {
      v25 = swift_slowAlloc();
      v28 = a1;
      v26 = v25;
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136446722;
      *(v26 + 4) = sub_1CEFD0DF0(v28, a2, &v29);
      *(v26 + 12) = 2048;
      *(v26 + 14) = a3;
      *(v26 + 22) = 2048;
      *(v26 + 24) = v14;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "🔩  provider supports a %{public}s pipeline of %ld, setting limits to %ld", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    type metadata accessor for JobLimit();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = v14;
    result[4] = v14;
    result[5] = v14;
  }

  return result;
}

uint64_t sub_1CF2F1F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF2F1F6C()
{
  type metadata accessor for NSFileProviderError(0);
  v0 = &unk_1F4C8C390;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
  sub_1CF9E57D8();
  v1 = objc_allocWithZone(MEMORY[0x1E69674B0]);
  v2 = sub_1CF9E57E8();

  v3 = sub_1CF9E6888();
  [v1 initWithConnection:0 protocol:v0 orError:v2 name:v3 requestPid:0];

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_1CF2F20BC()
{
  type metadata accessor for NSFileProviderError(0);
  v0 = &unk_1F4C7FA50;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
  sub_1CF9E57D8();
  v1 = objc_allocWithZone(MEMORY[0x1E69674B0]);
  v2 = sub_1CF9E57E8();

  v3 = sub_1CF9E6888();
  [v1 initWithConnection:0 protocol:v0 orError:v2 name:v3 requestPid:0];

  return swift_dynamicCastObjCProtocolUnconditional();
}

double sub_1CF2F220C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v116 = *MEMORY[0x1E69E9840];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v98);
  v8 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v92 - v10);
  v107 = sub_1CF9E5A58();
  v106 = *(v107 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v99 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v92 - v19;
  v21 = swift_allocObject();
  v101 = a2;
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  v103 = v21;
  *(v21 + 4) = a4;
  v22 = objc_allocWithZone(MEMORY[0x1E6999E20]);
  v100 = a3;

  v95 = a4;

  v102 = [v22 init];
  v105 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v23 = sub_1CF9E5928();
  *aBlock = 0;
  v24 = [v23 fp:aBlock uniqueTempFolderWithError:?];
  v25 = *aBlock;
  v97 = v20;
  if (v24 && (sub_1CF9E59D8(), v26 = v25, v24, *aBlock = 0, v27 = [v23 fp:aBlock uniqueTempFolderWithError:?], v25 = *aBlock, v27))
  {
    v28 = v27;
    v94 = v24;
    sub_1CF9E59D8();
    v29 = v25;

    strcpy(aBlock, "package.");
    aBlock[9] = 0;
    *&aBlock[10] = 0;
    *&aBlock[12] = -402653184;
    v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v32 = v31;
    MEMORY[0x1D3868CC0](v30);
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = *&aBlock[8];
    sub_1CF9E5968();
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = v106;
    v49 = *(v106 + 8);
    v96 = v106 + 8;
    v93 = v49;
    v49(v15, v107);
    v50 = sub_1CF9E5928();
    v51 = sub_1CF9E5928();
    *aBlock = 0;
    v52 = v105;
    v53 = [v105 moveItemAtURL:v50 toURL:v51 error:aBlock];

    if (v53)
    {
      v54 = *aBlock;

      v101 = sub_1CF9E5928();
      v55 = v97;
      v56 = sub_1CF9E5928();
      v57 = v107;
      (*(v48 + 16))(v15, v55, v107);
      v58 = (*(v48 + 80) + 24) & ~*(v48 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = v52;
      (*(v48 + 32))(v59 + v58, v15, v57);
      v60 = (v59 + ((v12 + v58 + 7) & 0xFFFFFFFFFFFFFFF8));
      v61 = v103;
      *v60 = sub_1CF2F5A28;
      v60[1] = v61;
      *&aBlock[32] = sub_1CF2F5A34;
      *&aBlock[40] = v59;
      *aBlock = MEMORY[0x1E69E9820];
      *&aBlock[8] = 1107296256;
      *&aBlock[16] = sub_1CF90535C;
      *&aBlock[24] = &block_descriptor_570;
      v62 = _Block_copy(aBlock);
      v63 = v52;

      v64 = v102;
      v65 = v101;
      v66 = [v102 unarchiveItemAtURL:v101 passphrases:0 destinationFolderURL:v56 acceptedFormats:2 completionHandler:v62];
      _Block_release(v62);

      v67 = v93;
      v93(v104, v57);
      v67(v55, v57);
      goto LABEL_14;
    }

    v70 = *aBlock;
    v69 = sub_1CF9E57F8();

    swift_willThrow();
    LODWORD(v96) = 1;
    v24 = v94;
  }

  else
  {
    v68 = v25;
    v69 = sub_1CF9E57F8();

    swift_willThrow();
    LODWORD(v96) = 0;
  }

  *v11 = v69;
  swift_storeEnumTagMultiPayload();
  sub_1CEFCCBDC(v11, v8, &unk_1EC4C5270, &unk_1CFA01BC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v72 = v99;
  if (EnumCaseMultiPayload == 1)
  {
    v73 = *v8;
    aBlock[0] = 1;
    v74 = v69;
    v75 = aBlock[0];
    v76 = v107;
    v77 = v106;
  }

  else
  {
    v77 = v106;
    v76 = v107;
    (*(v106 + 32))(v99, v8, v107);
    v78 = *(v95 + 136);
    v79 = v69;
    v80 = sub_1CF9E5A18();
    v82 = v81;
    (*(*v78 + 408))(aBlock, v80);
    (*(v77 + 8))(v72, v76);
    v82, v83, v84, v85, v86, v87, v88, v89;
    v75 = 0;
    v115 = 0;
    v108 = *&aBlock[8];
    v109 = *&aBlock[24];
    v110 = *&aBlock[40];
    v73 = *aBlock;
    v111 = *&aBlock[56];
  }

  v90 = v105;
  *v112 = v73;
  *&v112[8] = v108;
  *&v112[24] = v109;
  *&v112[40] = v110;
  *&v112[56] = v111;
  v113 = v75;
  v101(v112);
  *&aBlock[32] = *&v112[32];
  *&aBlock[48] = *&v112[48];
  v115 = v113;
  *aBlock = *v112;
  *&aBlock[16] = *&v112[16];
  sub_1CEFCCC44(aBlock, &unk_1EC4BF2C0, &qword_1CFA01BB8);

  sub_1CEFCCC44(v11, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (v96)
  {
    (*(v77 + 8))(v104, v76);
  }

  if (v24)
  {
    (*(v77 + 8))(v97, v76);
  }

LABEL_14:

  return result;
}

uint64_t sub_1CF2F2B2C(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v34) = a3;
  v5 = sub_1CF9E5648();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a2, v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
    return 0;
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = type metadata accessor for ItemMetadata(0);
  v17 = a1;
  if (*(a1 + *(v16 + 112)) == 1 && (v34 & 1) != 0)
  {
    v34 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v19 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v20 = v19;
    sub_1CEFF8A84(inited);
    v22 = v21;
    swift_setDeallocating();
    sub_1CF007B98(inited + 32, type metadata accessor for URLResourceKey);
    sub_1CF9E58A8();
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = sub_1CF9E5618();
    v32 = v31;
    (*(v33 + 8))(v7, v5);
    (*(v12 + 8))(v14, v11);
    v17 = v34;
    if ((v32 & 1) == 0)
    {
      return v30;
    }
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }

  return *(v17 + *(v16 + 104));
}

void sub_1CF2F2E90(_OWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5, void (*a6)(void *, uint64_t), void *a7)
{
  v78 = a2;
  v79 = a7;
  v12 = sub_1CF9E63D8();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v71 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v74 = *(v14 - 8);
  v15 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v75 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = a1[1];
  v106 = *a1;
  v107 = v22;
  v23 = a1[3];
  v108 = a1[2];
  v109 = v23;
  v24 = *a3;
  v25 = a5[13];
  v102 = a5[12];
  v103 = v25;
  v104 = a5[14];
  v105 = *(a5 + 30);
  v26 = a5[9];
  v98 = a5[8];
  v99 = v26;
  v27 = a5[11];
  v100 = a5[10];
  v101 = v27;
  v28 = a5[5];
  v94 = a5[4];
  v95 = v28;
  v29 = a5[7];
  v96 = a5[6];
  v97 = v29;
  v30 = a5[1];
  v90 = *a5;
  v91 = v30;
  v31 = a5[3];
  v32 = *(&v107 + 1);
  v92 = a5[2];
  v93 = v31;
  if (*(&v107 + 1) >> 60 == 11)
  {
    if ((v24 & 8) != 0 && *(v78 + *(v14 + 40)) != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      v66 = swift_allocError();
      *v67 = 1;
      *(v67 + 8) = 0u;
      *(v67 + 24) = 0u;
      *(v67 + 40) = 0u;
      *(v67 + 56) = 0u;
      *(v67 + 72) = 0u;
      *(v67 + 88) = 11;
      a6(v66, 1);
    }

    else
    {
      type metadata accessor for StagedContext();
      v33 = swift_allocObject();
      a6(v33, 0);
    }
  }

  else
  {
    v34 = *a1;
    v89 = *(a1 + 2);
    v35 = a1[3];
    v86 = a1[2];
    v87 = v35;
    v88 = v34;
    v36 = *(v7 + 160);
    v69 = *(v7 + 168);
    v70 = v36;
    v37 = v68 - v21;
    v77 = v68 - v21;
    v38 = sub_1CF9E6448();
    v68[0] = *(v38 - 8);
    (*(v68[0] + 56))(v37, 1, 1, v38);
    v39 = swift_allocObject();
    v68[1] = v7;
    v76 = v39;
    v40 = v79;
    *(v39 + 16) = a6;
    *(v39 + 24) = v40;
    sub_1CEFCCBDC(v78, v17, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v41 = (*(v74 + 80) + 104) & ~*(v74 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v7;
    *(v42 + 24) = a6;
    v43 = v42;
    *(v42 + 32) = v40;
    v44 = v87;
    *(v42 + 40) = v88;
    *(v42 + 56) = v89;
    *(v42 + 64) = v32;
    v45 = v68[0];
    *(v42 + 72) = v86;
    *(v42 + 88) = v44;
    sub_1CEFE55D0(v17, v42 + v41, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v46 = v43 + ((v15 + v41 + 7) & 0xFFFFFFFFFFFFFFF8);
    v47 = v103;
    *(v46 + 192) = v102;
    *(v46 + 208) = v47;
    *(v46 + 224) = v104;
    *(v46 + 240) = v105;
    v48 = v99;
    *(v46 + 128) = v98;
    *(v46 + 144) = v48;
    v49 = v101;
    *(v46 + 160) = v100;
    *(v46 + 176) = v49;
    v50 = v95;
    *(v46 + 64) = v94;
    *(v46 + 80) = v50;
    v51 = v97;
    *(v46 + 96) = v96;
    *(v46 + 112) = v51;
    v52 = v91;
    *v46 = v90;
    *(v46 + 16) = v52;
    v53 = v93;
    *(v46 + 32) = v92;
    *(v46 + 48) = v53;
    v54 = swift_allocObject();
    v55 = v76;
    v54[2] = sub_1CEFF9D98;
    v54[3] = v55;
    v56 = v69;
    v54[4] = v69;
    sub_1CEFCCBDC(&v106, &v80, &unk_1EC4BF260, &unk_1CFA01B60);
    swift_retain_n();
    sub_1CEFCCBDC(&v106, &v80, &unk_1EC4BF260, &unk_1CFA01B60);

    sub_1CEFCCBDC(&v90, &v80, &qword_1EC4BECF0, &unk_1CF9FEEB0);

    v57 = v56;

    v58 = fpfs_current_log();
    v79 = *(v57 + 16);
    v59 = v75;
    sub_1CEFCCBDC(v77, v75, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v45 + 48))(v59, 1, v38) == 1)
    {
      sub_1CEFCCC44(v59, &unk_1EC4BE370, qword_1CFA01B30);
      v60 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v61 = v71;
      sub_1CF9E6438();
      (*(v45 + 8))(v59, v38);
      v60 = sub_1CF9E63C8();
      (*(v72 + 8))(v61, v73);
    }

    v62 = swift_allocObject();
    v62[2] = v58;
    v62[3] = sub_1CF2F50D0;
    v62[4] = v43;
    v84 = sub_1CF2BA17C;
    v85 = v62;
    v80 = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1CEFCA444;
    v83 = &block_descriptor_407;
    v63 = _Block_copy(&v80);
    v64 = v58;

    v84 = sub_1CF2F671C;
    v85 = v54;
    v80 = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1CEFCA444;
    v83 = &block_descriptor_410;
    v65 = _Block_copy(&v80);

    fp_task_tracker_async_and_qos(v79, v70, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v60, v63, v65);
    _Block_release(v65);
    _Block_release(v63);

    sub_1CEFCCC44(&v106, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCC44(v77, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

double sub_1CF2F36A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, void (*)(), void), uint64_t a5)
{
  v67 = a2;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for ItemMetadata(0);
  v65 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = v10;
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1CF9E5A58();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v73 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v74 = v18;
  v19 = objc_allocWithZone(MEMORY[0x1E6999E20]);

  v20 = [v19 init];
  v63 = a1;
  v21 = sub_1CF9E5928();
  aBlock[0] = 0;
  v72 = v21;
  v22 = [v21 fp:aBlock uniqueTempFolderWithError:?];
  v23 = aBlock[0];
  if (v22)
  {
    v24 = v22;
    sub_1CF9E59D8();
    v25 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
    v26 = *(v11 + 80);
    v71 = v11;
    v27 = v17;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1CF9FA450;
    v70 = a3;
    v61 = v20;
    v29 = *(v11 + 16);
    v30 = v63;
    v31 = v68;
    v29(v28 + ((v26 + 32) & ~v26), v63, v68);
    v60 = sub_1CF9E6D28();
    v28, v32, v33, v34, v35, v36, v37, v38;
    v39 = v27;
    v62 = v27;
    v59 = sub_1CF9E5928();
    v40 = v64;
    v29(v64, v39, v31);
    v41 = v69;
    sub_1CEFF4408(v67, v69);
    v29(v73, v30, v31);
    v42 = v74;
    v43 = (v26 + 40) & ~v26;
    v44 = (v43 + v12 + *(v65 + 80)) & ~*(v65 + 80);
    v45 = (v66 + v26 + v44) & ~v26;
    v46 = swift_allocObject();
    v47 = v71;
    *(v46 + 2) = v70;
    *(v46 + 3) = sub_1CF2F4C34;
    *(v46 + 4) = v42;
    v48 = *(v47 + 32);
    v48(&v46[v43], v40, v31);
    sub_1CF2F63E4(v41, &v46[v44], type metadata accessor for ItemMetadata);
    v48(&v46[v45], v73, v31);
    aBlock[4] = sub_1CF2F4CAC;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF2EAFD8;
    aBlock[3] = &block_descriptor_338;
    v49 = _Block_copy(aBlock);

    v50 = v61;
    v51 = v60;
    v52 = v59;
    v53 = [v61 archiveItemsWithURLs:v60 compressionFormat:3 destinationFolderURL:v59 completionHandler:v49];

    _Block_release(v49);
    (*(v71 + 8))(v62, v31);
  }

  else
  {
    v54 = aBlock[0];
    v55 = sub_1CF9E57F8();

    swift_willThrow();
    v56 = v55;
    a4(v55, 1, nullsub_1, 0);
  }

  return result;
}

void sub_1CF2F3C10(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v65 = a3;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0x696669746E656469;
  v73 = 0xEA00000000007265;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v11 = sub_1CF0271B0(v71), (v12 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v11, &v72);
    sub_1CF027318(v71);
    type metadata accessor for NSFileProviderItemIdentifier(0);
    if (swift_dynamicCast())
    {
      v13 = v69;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1CF027318(v71);
    v13 = 0;
  }

  v72 = 0xD000000000000017;
  v73 = 0x80000001CFA3E3E0;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v14 = sub_1CF0271B0(v71), (v15 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v14, &v72);
    sub_1CF027318(v71);
    sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
    v16 = swift_dynamicCast();
    v17 = v69;
    if (!v16)
    {
      v17 = 0;
    }

    v68 = v17;
  }

  else
  {
    sub_1CF027318(v71);
    v68 = 0;
  }

  v72 = 0x54746E65746E6F63;
  v73 = 0xEB00000000657079;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v18 = sub_1CF0271B0(v71), (v19 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v18, &v72);
    sub_1CF027318(v71);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v69;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = v70;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_1CF027318(v71);
    v21 = 0;
    v22 = 0;
  }

  v72 = 0xD000000000000011;
  v73 = 0x80000001CFA3E400;
  sub_1CF9E7898();
  if (*(a1 + 16) && (v23 = sub_1CF0271B0(v71), (v24 & 1) != 0))
  {
    sub_1CEFD1104(*(a1 + 56) + 32 * v23, &v72);
    sub_1CF027318(v71);
    v25 = swift_dynamicCast();
    v26 = v69;
    if (!v25)
    {
      v26 = 0;
    }

    v67 = v26;
    v27 = 0xF000000000000000;
    if (v25)
    {
      v27 = v70;
    }
  }

  else
  {
    sub_1CF027318(v71);
    v67 = 0;
    v27 = 0xF000000000000000;
  }

  v66 = v27;
  v69 = 0x6E6F6973726576;
  v70 = 0xE700000000000000;
  sub_1CF9E7898();
  if (*(a1 + 16))
  {
    v28 = sub_1CF0271B0(v71);
    if (v29)
    {
      sub_1CEFD1104(*(a1 + 56) + 32 * v28, &v72);
      sub_1CF027318(v71);
      sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
      if (swift_dynamicCast())
      {
        v37 = v69;
      }

      else
      {
        v37 = 0;
      }

      if (v13)
      {
        if (v37)
        {
          v38 = *&v65[OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_perThumbnailCompletionHandler];
          v39 = v13;
          v40 = v37;
          v41 = v67;
          v13 = v68;
          v42 = v21;
          v43 = v66;
          v38(v39, v40, v68, v42, v22, v67, v66, a2);
          v22, v44, v45, v46, v47, v48, v49, v50;
          (*(a4 + 16))(a4);

          sub_1CEFE48D8(v41, v43);
          goto LABEL_48;
        }

        goto LABEL_39;
      }

LABEL_41:
      v22, v30, v31, v32, v33, v34, v35, v36;
      goto LABEL_42;
    }
  }

  sub_1CF027318(v71);
  if (!v13)
  {
    v37 = 0;
    goto LABEL_41;
  }

LABEL_39:
  v22, v30, v31, v32, v33, v34, v35, v36;
  v37 = 0;
LABEL_42:
  v51 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v52 = a2;
  v53 = sub_1CF9E6108();
  v54 = sub_1CF9E72A8();

  if (os_log_type_enabled(v53, v54))
  {
    v65 = v10;
    v55 = v13;
    v56 = v8;
    v57 = v7;
    v58 = a4;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    if (a2)
    {
      v61 = a2;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      v63 = v62;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    *(v59 + 4) = v62;
    *v60 = v63;
    _os_log_impl(&dword_1CEFC7000, v53, v54, "Missing required identifier and version for perThumbnailCompletionHandler: %@", v59, 0xCu);
    sub_1CEFCCC44(v60, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v60, -1, -1);
    MEMORY[0x1D386CDC0](v59, -1, -1);
    a4 = v58;
    v7 = v57;
    v8 = v56;
    v13 = v55;
    v10 = v65;
  }

  (*(v8 + 8))(v10, v7);
  (*(a4 + 16))(a4);

  sub_1CEFE48D8(v67, v66);
  v39 = v68;
LABEL_48:
}

void *sub_1CF2F4268(void *result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result)
  {

    sub_1CEFE48D8(a2, a3);

    return sub_1CEFE48D8(a4, a5);
  }

  return result;
}

uint64_t sub_1CF2F42E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5, MEMORY[0x1E69E7CC0]);
}

uint64_t objectdestroy_140Tm()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1CF2F443C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(sub_1CF9E5CF8() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2EBC20(a1, a2, a3, a4, a5, v5 + v12, *(v5 + v13), *(v5 + v14), *(v5 + v15), *(v5 + v16), *(v5 + v16 + 8), *(v5 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF2F4554(void *a1, void *a2)
{
  v5 = *(sub_1CF9E5CF8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2EB8C8(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1CF2F462C()
{
  result = qword_1EDEA7408;
  if (!qword_1EDEA7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA7408);
  }

  return result;
}

uint64_t sub_1CF2F470C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

void sub_1CF2F47A4(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

double sub_1CF2F4954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + *(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80);
  v7 = v6 + *(*(v1 - 8) + 64);
  return sub_1CF2E4AE8(*(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + v4), (v0 + v5), v0 + v6, *(v0 + v7), *(v0 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + (((((v7 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

void sub_1CF2F4AA8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2E583C(a1, a2 & 1, a3, a4, *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), v4 + v12, *(v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), v4 + ((*(*(v9 - 8) + 80) + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(*(v9 - 8) + 80)), v9, v10);
}

void sub_1CF2F4C34(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  sub_1CF0BA8A4(a1);
  v9(a1, a2 & 1, a3, a4);

  sub_1CF091F00(a1);
}

uint64_t sub_1CF2F4CAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(sub_1CF9E5A58() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 40) & ~v10;
  v12 = *(v9 + 64);
  v13 = *(type metadata accessor for ItemMetadata(0) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  return sub_1CF2E99C4(a1, a2, a3, a4, v4[2], v4[3], v4[4], v4 + v11, v4 + v14, v4 + ((*(v13 + 64) + v10 + v14) & ~v10));
}

void sub_1CF2F4E28()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1CF9E5A58() - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + v5 + 8) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for ItemMetadata(0) - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  sub_1CF2EA218(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), v0 + v8, *(v0 + v9), v0 + v11, v0 + ((*(v10 + 64) + v7 + v11) & ~v7));
}

uint64_t sub_1CF2F50E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, void *, char *, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = &v1[(*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a1(v4, v5, v6, v1 + 5, &v1[v3], v7);
}

void sub_1CF2F51B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2E03B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), (v0 + v2), *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF2F52A8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 71) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2E151C(a1, a2 & 1, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v4 + v10, *(v4 + v11), *(v4 + v12), (v4 + v13), *(v4 + v14), *(v4 + v15), *(v4 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_439Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_165Tm()
{

  return swift_deallocObject();
}

__n128 sub_1CF2F5550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 60);
  v7 = *(v0 + 96);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v14 = *(v0 + 48);
  v15 = v5;
  v16 = v6;
  v10 = *(v0 + 80);
  v17 = *(v0 + 64);
  v18 = v10;
  v19 = v7;
  v11 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = v11;
  v12 = *(v0 + 152);
  v22 = *(v0 + 136);
  v23 = v12;
  v24 = v8;
  v25 = v9;
  sub_1CF2DB280(v1, v2, v3, v4, &v14, *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
  return result;
}

uint64_t objectdestroy_413Tm()
{

  return swift_deallocObject();
}

double sub_1CF2F5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 104);
  v23 = *(v4 + 88);
  v24 = v9;
  v10 = *(v4 + 144);
  v26 = *(v4 + 128);
  v27 = v10;
  v11 = *(v4 + 176);
  v28 = *(v4 + 160);
  v29 = v11;
  v12 = *(v4 + 48);
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  v15 = *(v4 + 84);
  v16 = *(v4 + 120);
  v17 = *(v4 + 192);
  v18 = *(v4 + 200);
  v20 = *(v4 + 72);
  v21 = v14;
  v22 = v15;
  v25 = v16;
  v30 = v17;
  v31 = v18;
  return sub_1CF2DD2E8(a1, a2, a3, a4, v5, v6, v7, v8, v12, *(&v12 + 1), v13, &v20, *(v4 + 208), *(v4 + 216), *(v4 + 224));
}

double sub_1CF2F56F0(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 104);
  v24 = *(v5 + 88);
  v25 = v9;
  v10 = *(v5 + 144);
  v27 = *(v5 + 128);
  v28 = v10;
  v11 = *(v5 + 176);
  v29 = *(v5 + 160);
  v30 = v11;
  v12 = *(v5 + 40);
  v13 = *(v5 + 56);
  v14 = *(v5 + 64);
  v15 = *(v5 + 80);
  v16 = *(v5 + 84);
  v17 = *(v5 + 120);
  v18 = *(v5 + 192);
  v19 = *(v5 + 200);
  v21 = *(v5 + 72);
  v22 = v15;
  v23 = v16;
  v26 = v17;
  v31 = v18;
  v32 = v19;
  return sub_1CF2DDC70(a1, a2, a3, a4, a5, v6, v7, v8, v12, *(&v12 + 1), v13, v14, &v21, *(v5 + 208), *(v5 + 216));
}

uint64_t sub_1CF2F578C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 104);
  v12 = *(v0 + 108);
  v13 = *(v0 + 144);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v20 = *(v0 + 96);
  v21 = v11;
  v22 = v12;
  v16 = *(v0 + 128);
  v23 = *(v0 + 112);
  v24 = v16;
  v25 = v13;
  v17 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = v17;
  v18 = *(v0 + 200);
  v28 = *(v0 + 184);
  v29 = v18;
  v30 = v14;
  v31 = v15;
  return sub_1CF2DDECC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, &v20);
}

uint64_t sub_1CF2F582C(_OWORD *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1CF2DE8F0(a1, v1 + v4, v6, v7);
}

__n128 sub_1CF2F58CC@<Q0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 60);
  v8 = *(v1 + 96);
  v9 = *(v1 + 168);
  v10 = *(v1 + 176);
  v15 = *(v1 + 48);
  v16 = v6;
  v17 = v7;
  v11 = *(v1 + 80);
  v18 = *(v1 + 64);
  v19 = v11;
  v20 = v8;
  v12 = *(v1 + 120);
  v21 = *(v1 + 104);
  v22 = v12;
  v13 = *(v1 + 152);
  v23 = *(v1 + 136);
  v24 = v13;
  v25 = v9;
  v26 = v10;
  sub_1CF2DEA2C(v2, v3, v4, v5, &v15, *(v1 + 184), *(v1 + 192), a1);
  return result;
}

uint64_t sub_1CF2F5950(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = *(v1 + 72);
  v20 = *(v1 + 56);
  v21 = v4;
  v5 = *(v1 + 112);
  v23 = *(v1 + 96);
  v24 = v5;
  v6 = *(v1 + 144);
  v25 = *(v1 + 128);
  v26 = v6;
  v7 = (*(v3 + 80) + 192) & ~*(v3 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 52);
  v13 = *(v1 + 88);
  v14 = *(v1 + 160);
  v15 = *(v1 + 168);
  v17 = *(v1 + 40);
  v18 = v11;
  v19 = v12;
  v22 = v13;
  v27 = v14;
  v28 = v15;
  return sub_1CF2DEDAC(a1, v8, v9, v10, &v17, *(v1 + 176), *(v1 + 184), v1 + v7);
}

void sub_1CF2F5A34(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1CF2EB164(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t objectdestroy_538Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1CF2F5BE4(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF2DA450(a1, v1 + v4, v7, v8, v9, v10);
}

uint64_t objectdestroy_612Tm()
{

  *(v0 + 56), v1, v2, v3, v4, v5, v6, v7;

  return swift_deallocObject();
}

uint64_t objectdestroy_377Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_576Tm()
{

  if (*(v0 + 80) != 1)
  {
    sub_1CEFE4714(*(v0 + 64), *(v0 + 72));
    *(v0 + 80), v1, v2, v3, v4, v5, v6, v7;
    sub_1CEFE4714(*(v0 + 88), *(v0 + 96));
    *(v0 + 104), v8, v9, v10, v11, v12, v13, v14;
    *(v0 + 120), v15, v16, v17, v18, v19, v20, v21;
  }

  return swift_deallocObject();
}

void sub_1CF2F5E94()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 255) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1CF2E64A8(v4, (v0 + 24), v0 + v2, v0 + v3, v6, v7);
}

unint64_t sub_1CF2F5F80()
{
  result = qword_1EDEA3420;
  if (!qword_1EDEA3420)
  {
    sub_1CEFD57E0(255, &unk_1EDEA3430, 0x1E69673A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3420);
  }

  return result;
}

uint64_t objectdestroy_466Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

id sub_1CF2F6038()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = (*(v0 + 32))();
  if (v2)
  {

    return [v2 unregisterLifetimeExtensionForObject_];
  }

  return result;
}

uint64_t objectdestroy_770Tm()
{

  return swift_deallocObject();
}

id sub_1CF2F62D8()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result unregisterLifetimeExtensionForObject_];
  }

  return result;
}

uint64_t objectdestroy_776Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

double sub_1CF2F634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_767Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

void sub_1CF2F63CC(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1CF2F63E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CF2F6458(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

void sub_1CF2F673C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3869C30](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = v6;
      sub_1CF2F9624(&v9);

      if (!v2)
      {
        ++v5;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1CF2F6830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_1CF9E77C8();
    v5 = 0;
    v25 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v26 = *(a1 + 36);
      v8 = (*(a1 + 56) + 16 * v4);
      v9 = v8[1];
      v27 = *v8;
      v10 = *(v28 + 16);
      v11 = *(v28 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1CEFE95CC((v11 > 1), v10 + 1, 1);
      }

      *(v28 + 16) = v10 + 1;
      v17 = v28 + 16 * v10;
      *(v17 + 32) = v27;
      *(v17 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v7);
      if ((v18 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v19 = v18 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v6 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7 << 6;
        v21 = v7 + 1;
        v22 = (a1 + 72 + 8 * v7);
        while (v21 < (v6 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1CF0663D8(v4, v26, 0, v12, v13, v14, v15, v16);
            v6 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1CF0663D8(v4, v26, 0, v12, v13, v14, v15, v16);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1CF2F6A58(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v4 = sub_1CF9E6638();
  }

  v6 = a3;
  v5(v4, a3);

  v4, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1CF2F6B08()
{
  type metadata accessor for GSConflictManager();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  type metadata accessor for GSRemoteVersionsManager();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(FPGSStorageManager) init];
  *(v0 + 16) = v1;
  if (qword_1EC4BCD08 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC4BCD00;
  v3 = qword_1EC4BF338;
  if (v2 != -1)
  {
    swift_once();
  }

  [v3 setUnderlyingQueue_];

  off_1EC4BF328 = v0;
}

uint64_t static GSConflictManager.instance.getter()
{
  if (qword_1EC4BCCF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1CF2F6C6C()
{
  v0 = sub_1CF9E7388();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v21 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CF9E7318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v20 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v19 = sub_1CF9E6448();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v18[0] = "FileProviderDaemon";
  v18[1] = v14;
  sub_1CF9E63F8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CF2FC9FC(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v15 = v19;
  (*(v8 + 16))(v10, v13, v19);
  (*(v3 + 16))(v20, v7, v2);
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8098], v23);
  v16 = sub_1CF9E73B8();
  (*(v3 + 8))(v7, v2);
  result = (*(v8 + 8))(v13, v15);
  qword_1EC4BF330 = v16;
  return result;
}

id sub_1CF2F6FF8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  qword_1EC4BF338 = result;
  return result;
}

void sub_1CF2F702C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v82 = a4;
  v81 = a3;
  v96 = a2;
  v6 = sub_1CF9E63A8();
  v89 = *(v6 - 8);
  v90 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1CF9E6448();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_group_create();
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC8];
  v95 = v14;
  *(v14 + 16) = MEMORY[0x1E69E7CC8];
  v94 = swift_allocObject();
  *(v94 + 16) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  v92 = swift_allocObject();
  *(v92 + 16) = v15;
  v98 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v16 = objc_opt_self();
  v17 = sub_1CF9E5928();
  v18 = [v16 writingIntentWithURL:v17 options:0];

  v91 = v13;
  dispatch_group_enter(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CFA00250;
  *(v19 + 32) = v18;
  sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
  v84 = v18;
  v80 = sub_1CF9E6D28();
  v19, v20, v21, v22, v23, v24, v25, v26;
  if (qword_1EC4BCD08 != -1)
  {
    swift_once();
  }

  v79 = qword_1EC4BF338;
  (*(v10 + 16))(&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v27 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v91;
  *(v33 + 2) = v99;
  *(v33 + 3) = v34;
  v35 = v97;
  *(v33 + 4) = v96;
  *(v33 + 5) = v35;
  (*(v10 + 32))(&v33[v27], v12, v29);
  v36 = v94;
  v37 = v95;
  *&v33[v28] = v95;
  v39 = v92;
  v38 = v93;
  *&v33[v30] = v92;
  *&v33[v31] = v36;
  *&v33[v32] = v81;
  *&v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8] = v38;
  v105 = sub_1CF2FC528;
  v106 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_1CF00A468;
  v104 = &block_descriptor_11;
  v40 = _Block_copy(&aBlock);
  v41 = v79;
  v42 = v99;

  v91 = v91;

  v43 = v80;
  [v98 coordinateAccessWithIntents:v80 queue:v41 byAccessor:v40];
  _Block_release(v40);

  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v44 = qword_1EC4BF330;
  v45 = swift_allocObject();
  v45[2] = v37;
  v45[3] = v38;
  v45[4] = v36;
  v45[5] = v42;
  v46 = v83;
  v45[6] = v82;
  v45[7] = v46;
  v45[8] = v39;

  v47 = fpfs_current_log();
  v97 = fpfs_adopt_log();
  v48 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v102 = v49;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v50 = sub_1CF9E7988();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = v102;
  sub_1CF9E6978();
  v60, v61, v62, v63, v64, v65, v66, v67;
  v68 = __fp_log_fork();

  *(v48 + 16) = v68;
  v69 = swift_allocObject();
  *(v69 + 16) = v47;
  *(v69 + 24) = v48;
  *(v69 + 32) = v44;
  *(v69 + 40) = "updateListOfConflictsToGS(url:toAdd:toRemove:completion:)";
  *(v69 + 48) = 57;
  *(v69 + 56) = 2;
  *(v69 + 64) = sub_1CF2FC600;
  *(v69 + 72) = v45;
  v105 = sub_1CEFD5064;
  v106 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v102 = 1107296256;
  v103 = sub_1CEFCA444;
  v104 = &block_descriptor_25;
  v70 = _Block_copy(&aBlock);
  v96 = v47;

  v71 = v44;

  v72 = v85;
  sub_1CF9E63F8();
  v100 = MEMORY[0x1E69E7CC0];
  sub_1CF2FC9FC(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v73 = v87;
  v74 = v90;
  sub_1CF9E77B8();
  v75 = v91;
  sub_1CF9E7308();
  _Block_release(v70);
  (*(v89 + 8))(v73, v74);
  (*(v86 + 8))(v72, v88);

  v76 = v97;
  v77 = fpfs_adopt_log();
}

void sub_1CF2F793C(void *a1, char *a2, NSObject *a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, uint64_t a8, uint64_t a9, _TtC18FileProviderDaemon8FSTester *a10, uint64_t a11)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v19 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v266 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v266 - v25;
  if (a1)
  {
    swift_beginAccess();
    v27 = *(a2 + 2);
    *(a2 + 2) = a1;
    v28 = a1;
    v29 = a1;

    dispatch_group_leave(a3);
    return;
  }

  v272 = v23;
  v273 = a7;
  v269 = v24;
  v270 = a6;
  v268 = a2;
  v30 = a11;
  v266 = a5;
  v267 = a10;
  dispatch_group_enter(a3);
  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E7298();
  v34 = os_log_type_enabled(v32, v33);
  v271 = a11;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = *a4->tree;
    a4, v36, v37, v38, v39, v40, v41, v42;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "⚔️  Adding %ld conflicts...", v35, 0xCu);
    v43 = v35;
    v30 = v271;
    MEMORY[0x1D386CDC0](v43, -1, -1);
  }

  else
  {

    a4, v44, v45, v46, v47, v48, v49, v50;
  }

  isa = v269[1].isa;
  isa(v26, v272);
  v52 = swift_allocObject();
  v53 = v273;
  v52[2] = a3;
  v52[3] = v53;
  v52[4] = a8;
  v52[5] = a4;
  v52[6] = a9;

  v54 = a3;

  v55 = a4;
  v56 = v266;
  sub_1CF2F9914(v270, v55, sub_1CF2FCA44, v52);

  v269 = v54;
  dispatch_group_enter(v54);
  v57 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v58 = v267;

  v59 = sub_1CF9E6108();
  v60 = sub_1CF9E7298();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = *v58->tree;
    v58, v62, v63, v64, v65, v66, v67, v68;
    _os_log_impl(&dword_1CEFC7000, v59, v60, "⚔️  Removing %ld conflicts...", v61, 0xCu);
    MEMORY[0x1D386CDC0](v61, -1, -1);
  }

  else
  {

    v58, v69, v70, v71, v72, v73, v74, v75;
  }

  isa(v21, v272);
  v76 = *(v56 + 16);
  sub_1CF2F6830(v58);
  v78 = v77;
  v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v81 = v80;
  v82 = swift_allocObject();
  v84 = v268;
  v83 = v269;
  *v82->tree = v269;
  *v82->tester = v84;
  v85 = v273;
  v82[1].super.isa = v273;
  *v82[1]._anon_8 = v30;
  v267 = v82;
  if (*v78->tree)
  {
    v86 = *(v76 + 16);
    v272 = v83;

    v87 = v270;
    v88 = sub_1CF9E5928();
    aBlock[0] = 0;
    v89 = [v86 permanentStorageForItemAtURL:v88 allocateIfNone:0 error:aBlock];

    if (v89)
    {
      v90 = aBlock[0];
      v243 = sub_1CF2CBDAC(v87, v78, v79, v81);
      v78, v244, v245, v246, v247, v248, v249, v250;
      v81, v251, v252, v253, v254, v255, v256, v257;
      sub_1CEFD57E0(0, &qword_1EC4C4FE0, 0x1E69A07B0);
      v258 = sub_1CF9E6D28();
      v259 = swift_allocObject();
      v259[2] = v243;
      v259[3] = v76;
      v260 = v267;
      v259[4] = sub_1CF2FCA54;
      v259[5] = v260;
      aBlock[4] = sub_1CF2FCA60;
      aBlock[5] = v259;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF2F6A58;
      aBlock[3] = &block_descriptor_71;
      v261 = _Block_copy(aBlock);

      [v89 removeAdditions:v258 completionHandler:v261];

      _Block_release(v261);

      goto LABEL_60;
    }

    v164 = aBlock[0];
    v78, v165, v166, v167, v168, v169, v170, v171;
    v81, v172, v173, v174, v175, v176, v177, v178;
    v179 = sub_1CF9E57F8();

    swift_willThrow();
    v180 = sub_1CF4E2860(MEMORY[0x1E69E7CC0]);
    v181 = v179;
    v182 = v179;
    v183 = v179;
    v184 = v272;
    sub_1CF518C30(v272, v268 + 2, v179);
    v268 = v179;

    v185 = v180 + 64;
    v186 = 1 << *(v180 + 32);
    v187 = -1;
    if (v186 < 64)
    {
      v187 = ~(-1 << v186);
    }

    v188 = v187 & *(v180 + 64);
    v189 = (v186 + 63) >> 6;
    v270 = v180;

    v190 = 0;
    v191 = v273;
    if (v188)
    {
      while (1)
      {
        v192 = v190;
LABEL_43:
        v193 = __clz(__rbit64(v188)) | (v192 << 6);
        v194 = (*v270[1].tree + 16 * v193);
        v195 = *v194;
        v196 = v194[1];
        v197 = *(*v270[1].tester + 8 * v193);

        v198 = v197;
        v199 = objc_sync_enter(v184);
        if (v199)
        {
          goto LABEL_68;
        }

        swift_beginAccess();
        v200 = v197;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v274 = *(v191 + 16);
        v202 = v274;
        *(v191 + 16) = 0x8000000000000000;
        v203 = sub_1CEFE4328(v195, v196);
        v205 = v202[2];
        v206 = (v204 & 1) == 0;
        v127 = __OFADD__(v205, v206);
        v207 = v205 + v206;
        if (v127)
        {
          goto LABEL_63;
        }

        v208 = v204;
        if (v202[3] >= v207)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v232 = v203;
            sub_1CF7D02E0();
            v203 = v232;
          }
        }

        else
        {
          sub_1CF7C59C0(v207, isUniquelyReferenced_nonNull_native);
          v203 = sub_1CEFE4328(v195, v196);
          if ((v208 & 1) != (v209 & 1))
          {
            goto LABEL_67;
          }
        }

        v30 = v271;
        v210 = v274;
        if (v208)
        {
          v211 = v274[7];
          v212 = *(v211 + 8 * v203);
          *(v211 + 8 * v203) = v197;
        }

        else
        {
          v274[(v203 >> 6) + 8] |= 1 << v203;
          v220 = (v210[6] + 16 * v203);
          *v220 = v195;
          v220[1] = v196;
          *(v210[7] + 8 * v203) = v197;
          v221 = v210[2];
          v127 = __OFADD__(v221, 1);
          v222 = v221 + 1;
          if (v127)
          {
            goto LABEL_65;
          }

          v210[2] = v222;
        }

        v191 = v273;
        v223 = *(v273 + 16);
        *(v273 + 16) = v210;
        v223, v213, v214, v215, v216, v217, v218, v219;
        swift_endAccess();
        v184 = v272;
        v224 = objc_sync_exit(v272);
        if (v224)
        {
          break;
        }

        v188 &= v188 - 1;
        v196, v225, v226, v227, v228, v229, v230, v231;

        v190 = v192;
        if (!v188)
        {
          goto LABEL_40;
        }
      }

      MEMORY[0x1EEE9AC00](v224);
      v264 = &v266 - 4;
      *(&v266 - 2) = v184;
      v265 = sub_1CF1C5290;
LABEL_73:
      fp_preconditionFailure(_:file:line:)(v265, v264, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_40:
    while (1)
    {
      v192 = v190 + 1;
      if (__OFADD__(v190, 1))
      {
        break;
      }

      if (v192 >= v189)
      {
        v233 = v270;

        v234 = *v233->tree;
        v233, v235, v236, v237, v238, v239, v240, v241;
        if (!v234)
        {
          swift_beginAccess();
          *(v30 + 16) = 1;
        }

        dispatch_group_leave(v184);

        v242 = v268;

        v83 = v269;
        goto LABEL_60;
      }

      v188 = *(v185 + 8 * v192);
      ++v190;
      if (v188)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v272 = v83;

  v78, v91, v92, v93, v94, v95, v96, v97;
  v81, v98, v99, v100, v101, v102, v103, v104;
  v105 = sub_1CF4E2860(MEMORY[0x1E69E7CC0]);
  v106 = v105 + 64;
  v107 = 1 << *(v105 + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  v109 = v108 & *(v105 + 64);
  v110 = (v107 + 63) >> 6;
  v270 = v105;

  v111 = 0;
  if (v109)
  {
    while (1)
    {
      v112 = v111;
LABEL_19:
      v113 = __clz(__rbit64(v109)) | (v112 << 6);
      v114 = (*v270[1].tree + 16 * v113);
      v115 = *v114;
      v116 = v114[1];
      v117 = *(*v270[1].tester + 8 * v113);

      v118 = v117;
      v119 = objc_sync_enter(v272);
      if (v119)
      {
        MEMORY[0x1EEE9AC00](v119);
        v262 = &v266 - 4;
        *(&v266 - 2) = v272;
        v263 = sub_1CF1C546C;
        goto LABEL_71;
      }

      swift_beginAccess();
      v120 = v117;
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v274 = *(v85 + 16);
      v122 = v274;
      *(v85 + 16) = 0x8000000000000000;
      v123 = sub_1CEFE4328(v115, v116);
      v125 = v122[2];
      v126 = (v124 & 1) == 0;
      v127 = __OFADD__(v125, v126);
      v128 = v125 + v126;
      if (v127)
      {
        goto LABEL_64;
      }

      v129 = v124;
      if (v122[3] < v128)
      {
        break;
      }

      if (v121)
      {
        goto LABEL_25;
      }

      v141 = v123;
      sub_1CF7D02E0();
      v123 = v141;
      v131 = v274;
      if (v129)
      {
LABEL_26:
        v132 = v131[7];
        v133 = *(v132 + 8 * v123);
        *(v132 + 8 * v123) = v117;

        goto LABEL_30;
      }

LABEL_28:
      v131[(v123 >> 6) + 8] |= 1 << v123;
      v142 = (v131[6] + 16 * v123);
      *v142 = v115;
      v142[1] = v116;
      *(v131[7] + 8 * v123) = v117;
      v143 = v131[2];
      v127 = __OFADD__(v143, 1);
      v144 = v143 + 1;
      if (v127)
      {
        goto LABEL_66;
      }

      v131[2] = v144;

LABEL_30:
      v85 = v273;
      v145 = *(v273 + 16);
      *(v273 + 16) = v131;
      v145, v134, v135, v136, v137, v138, v139, v140;
      swift_endAccess();
      v146 = objc_sync_exit(v272);
      if (v146)
      {
        MEMORY[0x1EEE9AC00](v146);
        v264 = &v266 - 4;
        *(&v266 - 2) = v272;
        v265 = sub_1CF1C5468;
        goto LABEL_73;
      }

      v109 &= v109 - 1;
      v116, v147, v148, v149, v150, v151, v152, v153;

      v111 = v112;
      if (!v109)
      {
        goto LABEL_16;
      }
    }

    sub_1CF7C59C0(v128, v121);
    v123 = sub_1CEFE4328(v115, v116);
    if ((v129 & 1) != (v130 & 1))
    {
LABEL_67:
      v199 = sub_1CF9E8108();
      __break(1u);
LABEL_68:
      MEMORY[0x1EEE9AC00](v199);
      v262 = &v266 - 4;
      *(&v266 - 2) = v272;
      v263 = sub_1CF1C5288;
LABEL_71:
      fp_preconditionFailure(_:file:line:)(v263, v262, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_25:
    v131 = v274;
    if (v129)
    {
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  while (1)
  {
LABEL_16:
    v112 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      goto LABEL_62;
    }

    if (v112 >= v110)
    {
      break;
    }

    v109 = *(v106 + 8 * v112);
    ++v111;
    if (v109)
    {
      goto LABEL_19;
    }
  }

  v154 = v270;

  v155 = *v154->tree;
  v154, v156, v157, v158, v159, v160, v161, v162;
  if (!v155)
  {
    v163 = v271;
    swift_beginAccess();
    *(v163 + 16) = 1;
  }

  dispatch_group_leave(v272);

  v83 = v269;
LABEL_60:
  dispatch_group_leave(v83);
}

void sub_1CF2F8610(_TtC18FileProviderDaemon8FSTester *a1, _TtC18FileProviderDaemon8FSTester *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  if (objc_sync_enter(a3))
  {
    swift_unknownObjectRetain();
    a1, v42, v43, v44, v45, v46, v47, v48;
    a2, v49, v50, v51, v52, v53, v54, v55;
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a3);
  }

  sub_1CF2F8760(a2, (a4 + 16), (a5 + 16), a1);
  if (objc_sync_exit(a3))
  {
    swift_unknownObjectRetain();
    a1, v28, v29, v30, v31, v32, v33, v34;
    a2, v35, v36, v37, v38, v39, v40, v41;
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a3);
  }

  a1, v14, v15, v16, v17, v18, v19, v20;
  a2, v21, v22, v23, v24, v25, v26, v27;
  if (*a2->tree < *(a6 + 16))
  {
    swift_beginAccess();
    *(a7 + 16) = 1;
  }

  dispatch_group_leave(a3);
}

void sub_1CF2F8760(uint64_t a1, void *a2, _TtC18FileProviderDaemon8FSTester **a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v52 = v9;
  v53 = v5;
  v54 = a2;
  while (v8)
  {
LABEL_11:
    v23 = __clz(__rbit64(v8)) | (v10 << 6);
    v24 = (*(a1 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(*(a1 + 56) + 8 * v23);
    swift_beginAccess();
    v28 = v27;
    v29 = v27;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a2;
    v56 = *a2;
    *a2 = 0x8000000000000000;
    v32 = sub_1CEFE4328(v26, v25);
    v33 = *(v31 + 16);
    v34 = (v14 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_24;
    }

    v36 = v14;
    if (*(v31 + 24) >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1CF7D02E0();
        if (v36)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1CF7C59C0(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_1CEFE4328(v26, v25);
      if ((v36 & 1) != (v14 & 1))
      {
        goto LABEL_26;
      }

      v32 = v37;
      if (v36)
      {
LABEL_4:
        v25, v14, v15, v16, v17, v18, v19, v20;
        v11 = v56;
        v12 = v56[7];
        v13 = *(v12 + 8 * v32);
        *(v12 + 8 * v32) = v27;

        goto LABEL_5;
      }
    }

    v11 = v56;
    v56[(v32 >> 6) + 8] |= 1 << v32;
    v38 = (v56[6] + 16 * v32);
    *v38 = v26;
    v38[1] = v25;
    *(v56[7] + 8 * v32) = v27;
    v39 = v56[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_25;
    }

    v56[2] = v41;
LABEL_5:
    v8 &= v8 - 1;
    a2 = v54;
    v21 = *v54;
    *v54 = v11;
    v21, v14, v15, v16, v17, v18, v19, v20;
    swift_endAccess();

    v9 = v52;
    v5 = v53;
  }

  while (1)
  {
    v22 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v22 >= v9)
    {

      swift_beginAccess();
      v42 = *a3;
      *a3 = a4;

      v42, v43, v44, v45, v46, v47, v48, v49;
      return;
    }

    v8 = *(v5 + 8 * v22);
    ++v10;
    if (v8)
    {
      v10 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF2F89F0(uint64_t a1, id a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v62 = a1;
  v63 = a5;
  if (a2)
  {
    v9 = a2;
    sub_1CF518C30(a3, (a4 + 16), a2);
  }

  v59 = 0;
  v10 = v62 + 64;
  v11 = 1 << *(v62 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v62 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v61 = a3;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v13)) | (v17 << 6);
      v19 = (*(v62 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(*(v62 + 56) + 8 * v18);

      v23 = v22;
      v15 = objc_sync_enter(a3);
      if (v15)
      {
        goto LABEL_30;
      }

      swift_beginAccess();
      v24 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v63 + 16);
      v26 = v64;
      *(v63 + 16) = 0x8000000000000000;
      v15 = sub_1CEFE4328(v21, v20);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_28;
      }

      v32 = v27;
      if (v26[3] < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v44 = v15;
      sub_1CF7D02E0();
      v15 = v44;
      v34 = v64;
      if (v32)
      {
LABEL_17:
        v35 = v34[7];
        v36 = *(v35 + 8 * v15);
        *(v35 + 8 * v15) = v22;

        goto LABEL_21;
      }

LABEL_19:
      v34[(v15 >> 6) + 8] |= 1 << v15;
      v45 = (v34[6] + 16 * v15);
      *v45 = v21;
      v45[1] = v20;
      *(v34[7] + 8 * v15) = v22;
      v46 = v34[2];
      v30 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v30)
      {
        goto LABEL_29;
      }

      v34[2] = v47;

LABEL_21:
      v48 = *(v63 + 16);
      *(v63 + 16) = v34;
      v48, v37, v38, v39, v40, v41, v42, v43;
      swift_endAccess();
      a3 = v61;
      v49 = objc_sync_exit(v61);
      if (v49)
      {
        MEMORY[0x1EEE9AC00](v49);
        v58 = v61;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v57, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v13 &= v13 - 1;
      v20, v50, v51, v52, v53, v54, v55, v56;

      v16 = v17;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    sub_1CF7C59C0(v31, isUniquelyReferenced_nonNull_native);
    v15 = sub_1CEFE4328(v21, v20);
    if ((v32 & 1) != (v33 & 1))
    {
      sub_1CF9E8108();
      __break(1u);
      return;
    }

LABEL_16:
    v34 = v64;
    if (v32)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  while (1)
  {
LABEL_7:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      MEMORY[0x1EEE9AC00](v15);
      v58 = v61;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v57, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  if (!*(v62 + 16))
  {
    swift_beginAccess();
    *(v60 + 16) = 1;
  }

  dispatch_group_leave(a3);
}

void sub_1CF2F8D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__n128), uint64_t a6, uint64_t a7)
{
  v109 = a7;
  v114 = a6;
  v115 = a5;
  v113 = a4;
  v111 = a3;
  v112 = a2;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v110 = a1;
  v12 = *(a1 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v120 = (v9 + 8);
  v121 = v12;

  v18 = 0;
  *&v19 = 136315394;
  v116 = v19;
  v118 = v8;
  v117 = v11;
  while (v16)
  {
    v20 = v18;
LABEL_11:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v20 << 6);
    v23 = *(v121 + 56);
    v24 = *(v121 + 48) + 16 * v22;
    v25 = *(v24 + 8);
    v122 = *v24;
    v26 = *(v23 + 8 * v22);

    v27 = v26;
    v28 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v29 = v26;
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E72A8();
    v25, v32, v33, v34, v35, v36, v37, v38;

    if (os_log_type_enabled(v30, v31))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v123[0] = v119;
      *v46 = v116;
      v48 = sub_1CEFD0DF0(v122, v25, v123);
      v122 = v30;
      v49 = v48;
      v25, v50, v51, v52, v53, v54, v55, v56;
      *(v46 + 4) = v49;
      *(v46 + 12) = 2112;
      swift_getErrorValue();
      v57 = Error.prettyDescription.getter(v123[4], v123[5]);
      *(v46 + 14) = v57;
      *v47 = v57;
      v58 = v122;
      _os_log_impl(&dword_1CEFC7000, v122, v31, "⚔️  Error when updating conflict loser with version %s: %@", v46, 0x16u);
      sub_1CEFCCC44(v47, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v59 = v47;
      v8 = v118;
      MEMORY[0x1D386CDC0](v59, -1, -1);
      v60 = v119;
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x1D386CDC0](v60, -1, -1);
      v61 = v46;
      v11 = v117;
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    else
    {
      v25, v39, v40, v41, v42, v43, v44, v45;
    }

    (*v120)(v11, v8);
    v18 = v20;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v62 = v112;
  swift_beginAccess();
  if (*(v62 + 16))
  {
    v63 = v111;
    swift_beginAccess();
    v64 = *(v63 + 16);
  }

  else
  {
    v64 = 1;
  }

  v65 = v113;
  swift_beginAccess();
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = v66;
    v68 = sub_1CF4E2D78(MEMORY[0x1E69E7CC0]);
    v69 = v66;
    (v115)(v68, v64, v66);

    v77 = v68;
LABEL_20:
    v77, v70, v71, v72, v73, v74, v75, v76;

    return;
  }

  v78 = v110;
  swift_beginAccess();
  v79 = *(v78 + 16);

  sub_1CF6619B0(v80);
  v82 = v81;
  v66 = v83;
  v79, v81, v83, v84, v85, v86, v87, v88;
  if (v82)
  {
    v89 = sub_1CF4E2D78(MEMORY[0x1E69E7CC0]);
    v90 = v66;
    (v115)(v89, v64, v66);

    v82, v91, v92, v93, v94, v95, v96, v97;
    v77 = v89;
    goto LABEL_20;
  }

  v98 = v109;
  swift_beginAccess();
  v99 = *(v98 + 16);

  (v115)(v100, v64, 0);
  v99, v101, v102, v103, v104, v105, v106, v107;
}

void sub_1CF2F9304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v9 = fpfs_current_log();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v14;
  v12[1] = a3;

  sub_1CF01001C(v9, "listConflicts(for:completionHandler:)", 37, 2, sub_1CF2FC614, v11);
}

void sub_1CF2F94E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v31 = sub_1CF4E0980(MEMORY[0x1E69E7CC0]);
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;
  v8 = sub_1CF2CC430(a2, v5, v6);
  v7, v9, v10, v11, v12, v13, v14, v15;
  sub_1CF2F673C(v8, &v31);
  v8, v16, v17, v18, v19, v20, v21, v22;
  v23 = v31;
  a3(v31, 0);

  v23, v24, v25, v26, v27, v28, v29, v30;
}

void sub_1CF2F9624(void **a1)
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [v8 name];
  if (!v9)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_opt_self() parseEtag_];

  if (!v11)
  {
    v39 = v4;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = v8;
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();
    if (!os_log_type_enabled(v22, v23))
    {

      (*(v39 + 8))(v7, v3);
      return;
    }

    v38 = v1;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40 = v25;
    *v24 = 136315138;
    v26 = [v21 name];

    if (v26)
    {
      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v29 = v28;

      v30 = sub_1CEFD0DF0(v27, v29, &v40);
      v29, v31, v32, v33, v34, v35, v36, v37;
      *(v24 + 4) = v30;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "⚔️  Loser %s has invalid format, ignoring it...", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D386CDC0](v25, -1, -1);
      MEMORY[0x1D386CDC0](v24, -1, -1);

      (*(v39 + 8))(v7, v3);
      return;
    }

    goto LABEL_12;
  }

  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  v15 = [v8 name];
  if (v15)
  {
    v16 = v15;
    v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_1CF1C8A44(v17, v19, v12, v14);
}

void sub_1CF2F9914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v71 = a3;
  v83 = a1;
  v5 = sub_1CF9E63A8();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1CF9E6448();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StagedRemoteVersion(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = type metadata accessor for GSConflictInfo(0);
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = dispatch_group_create();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  *(v15 + 16) = MEMORY[0x1E69E7CC8];
  v17 = swift_allocObject();
  v18 = a2;
  v19 = v17;
  *(v17 + 16) = v16;
  v20 = *(v18 + 16);
  v87 = v14;
  if (v20)
  {
    v21 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = *(v11 + 20);
    v81 = (v13 + *(v11 + 24));
    v82 = v22;
    v23 = v18 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v24 = *(v86 + 72);
    v79 = v10 + 7;
    v80 = v24;
    do
    {
      sub_1CF2FC770(v23, v13, type metadata accessor for GSConflictInfo);
      dispatch_group_enter(v14);
      v25 = *v81;
      v85 = v81[1];
      v86 = v25;
      sub_1CF2FC770(v13, v21, type metadata accessor for StagedRemoteVersion);
      v26 = v21;
      v27 = v19;
      v28 = v15;
      v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v30 = (v79 + v29) & 0xFFFFFFFFFFFFFFF8;
      v31 = v9;
      v32 = swift_allocObject();
      *(v32 + 16) = v87;
      *(v32 + 24) = v28;
      v33 = v32 + v29;
      v15 = v28;
      v19 = v27;
      v21 = v26;
      sub_1CF2FC7D8(v26, v33);
      *(v32 + v30) = v19;
      v14 = v87;
      v34 = v87;

      sub_1CF2FA4BC(v83, v13, v13 + v82, v86, v85, sub_1CF2FC83C, v32);
      v9 = v31;

      sub_1CF2FC8DC(v13, type metadata accessor for GSConflictInfo);
      v23 += v80;
      --v20;
    }

    while (v20);
  }

  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v35 = qword_1EC4BF330;
  v36 = swift_allocObject();
  v37 = v72;
  v36[2] = v71;
  v36[3] = v37;
  v36[4] = v19;
  v36[5] = v15;

  v38 = fpfs_current_log();
  v85 = fpfs_adopt_log();
  v39 = swift_allocObject();
  v86 = v15;
  v40 = v39;
  aBlock = sub_1CF9E73C8();
  v90 = v41;
  v84 = v19;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v42 = sub_1CF9E7988();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  v52 = v90;
  sub_1CF9E6978();
  v52, v53, v54, v55, v56, v57, v58, v59;
  v60 = __fp_log_fork();

  *(v40 + 16) = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = v38;
  *(v61 + 24) = v40;
  *(v61 + 32) = v35;
  *(v61 + 40) = "saveConflicts(for:conflicts:completionHandler:)";
  *(v61 + 48) = 47;
  *(v61 + 56) = 2;
  *(v61 + 64) = sub_1CF2FC93C;
  *(v61 + 72) = v36;
  v93 = sub_1CF2B9F54;
  v94 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = sub_1CEFCA444;
  v92 = &block_descriptor_55;
  v62 = _Block_copy(&aBlock);
  v83 = v38;

  v63 = v35;

  v64 = v73;
  sub_1CF9E63F8();
  v88 = MEMORY[0x1E69E7CC0];
  sub_1CF2FC9FC(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v65 = v75;
  v66 = v78;
  sub_1CF9E77B8();
  v67 = v87;
  sub_1CF9E7308();
  _Block_release(v62);
  (*(v77 + 8))(v65, v66);
  (*(v74 + 8))(v64, v76);

  v68 = v85;
  v69 = fpfs_adopt_log();
}

void sub_1CF2FA0D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v36[1] = a4;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v36 - v6;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v36 - v13);
  sub_1CEFCCBDC(a1, v36 - v13, &qword_1EC4BF008, &unk_1CFA01CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = sub_1CF93CF34();
    v17 = [v16 description];

    v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;

    v21 = v37;
    swift_beginAccess();
    v22 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *v21;
    *v21 = 0x8000000000000000;
    sub_1CF1D214C(v15, v18, v20, isUniquelyReferenced_nonNull_native);
    v20, v24, v25, v26, v27, v28, v29, v30;
    *v21 = v39;
    swift_endAccess();
  }

  else
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF010, &unk_1CFA01890) + 48);
    (*(v9 + 32))(v11, v14, v8);
    v32 = sub_1CF93D034();
    v34 = v33;
    (*(v9 + 16))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    swift_beginAccess();
    sub_1CF1C8FC0(v7, v32, v34);
    swift_endAccess();
    v35 = *(v9 + 8);
    v35(v11, v8);
    v35(v14 + v31, v8);
  }
}

void sub_1CF2FA414(void (*a1)(_TtC18FileProviderDaemon8FSTester *, _TtC18FileProviderDaemon8FSTester *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);

  a1(v7, v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v8, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1CF2FA4BC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v428 = a7;
  v426 = a6;
  v395 = a5;
  v393 = a4;
  v403 = a3;
  v434 = a2;
  v430 = a1;
  v447 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v404 = &v393 - v8;
  v429 = sub_1CF9E5A58();
  v420 = *(v429 - 8);
  MEMORY[0x1EEE9AC00](v429);
  v399 = &v393 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v410 = &v393 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v397 = &v393 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v396 = &v393 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v394 = &v393 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v406 = &v393 - v19;
  v398 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v416 = &v393 - v22;
  v414 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v414);
  v413 = &v393 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = type metadata accessor for StagedRemoteVersion(0);
  MEMORY[0x1EEE9AC00](v412);
  v425 = (&v393 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1CF9E6118();
  v432 = *(v25 - 8);
  v433 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v405 = &v393 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v415 = &v393 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v409 = &v393 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v408 = &v393 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v417 = &v393 - v34;
  v35 = sub_1CF9E53C8();
  v401 = *(v35 - 8);
  v402 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v400 = &v393 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF008, &unk_1CFA01CB0);
  MEMORY[0x1EEE9AC00](v418);
  v419 = (&v393 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v421 = &v393 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v393 - v41;
  v43 = sub_1CF9E5748();
  v423 = *(v43 - 8);
  v424 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v422 = &v393 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v393 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v393 - v49;
  v51 = sub_1CF9E5CF8();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v393 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  v411 = xmmword_1CF9FA450;
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = 0x534650467369;
  v56 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = MEMORY[0x1E69E6370];
  v57 = 1;
  *(inited + 48) = 1;
  v435 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(v56, &unk_1EC4BE300, &unk_1CF9FC5D0);
  isa = v434->super.isa;
  v58 = [isa contentModificationDate];
  if (v58)
  {
    v59 = v58;
    sub_1CF9E5CB8();

    v57 = 0;
  }

  (*(v52 + 56))(v47, v57, 1, v51);
  sub_1CEFE55D0(v47, v50, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_1CEFCCC44(v50, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v60 = v435;
  }

  else
  {
    (*(v52 + 32))(v54, v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF340, &qword_1CFA01CC8);
    v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D30, &qword_1CFA01CD0) - 8);
    v62 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v411;
    v64 = (v63 + v62);
    v65 = v61[14];
    *v64 = 0xD000000000000010;
    *(v64 + 1) = 0x80000001CFA3ED40;
    (*(v52 + 16))(&v64[v65], v54, v51);
    v66 = sub_1CF4E2B8C(v63);
    swift_setDeallocating();
    sub_1CEFCCC44(v64, &qword_1EC4C0D30, &qword_1CFA01CD0);
    swift_deallocClassInstance();
    v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF348, qword_1CFA01CD8);
    *&v442 = v66;
    sub_1CEFE9EB8(&v442, v441);
    v67 = v435;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v438 = v67;
    sub_1CF1D154C(v441, 0x656D75636F44534ELL, 0xEE006F666E49746ELL, isUniquelyReferenced_nonNull_native);
    (*(v52 + 8))(v54, v51);
    v60 = v438;
  }

  v69 = v424;
  v70 = v425;
  v72 = v422;
  v71 = v423;
  v73 = v421;
  v74 = [isa mostRecentEditorNameComponents];
  if (v74)
  {
    v75 = v74;
    sub_1CF9E5738();

    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  (v71)[7](v73, v76, 1, v69);
  sub_1CEFE55D0(v73, v42, &qword_1EC4C1180, &unk_1CFA18170);
  if ((v71[6])(v42, 1, v69) == 1)
  {
    sub_1CEFCCC44(v42, &qword_1EC4C1180, &unk_1CFA18170);
  }

  else
  {
    (v71[4])(v72, v42, v69);
    v77 = objc_opt_self();
    v78 = sub_1CF9E5728();
    *&v442 = 0;
    v79 = [v77 archivedDataWithRootObject:v78 requiringSecureCoding:1 error:&v442];

    v80 = v442;
    if (!v79)
    {
      v215 = v80;
      v60, v81, v82, v83, v84, v85, v86, v87;
      v216 = sub_1CF9E57F8();

      swift_willThrow();
      (v71[1])(v72, v69);
      v217 = fpfs_current_or_default_log();
      v218 = v405;
      sub_1CF9E6128();
      v219 = v420;
      v220 = v399;
      v221 = v429;
      (*(v420 + 16))(v399, v430, v429);
      v222 = v216;
      v223 = sub_1CF9E6108();
      v224 = sub_1CF9E72A8();

      if (os_log_type_enabled(v223, v224))
      {
        v225 = swift_slowAlloc();
        LODWORD(v434) = v224;
        v226 = v225;
        isa = swift_slowAlloc();
        v435 = swift_slowAlloc();
        *&v442 = v435;
        *v226 = 136446466;
        v227 = sub_1CF9E5928();
        v228 = [v227 fp_shortDescription];

        v229 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v231 = v230;

        (*(v219 + 8))(v220, v221);
        v232 = sub_1CEFD0DF0(v229, v231, &v442);
        v231, v233, v234, v235, v236, v237, v238, v239;
        *(v226 + 4) = v232;
        *(v226 + 12) = 2112;
        swift_getErrorValue();
        v240 = Error.prettyDescription.getter(v436, v437);
        *(v226 + 14) = v240;
        v241 = isa;
        *isa = v240;
        _os_log_impl(&dword_1CEFC7000, v223, v434, "failed to add conflict to %{public}s: %@", v226, 0x16u);
        sub_1CEFCCC44(v241, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v241, -1, -1);
        v242 = v435;
        __swift_destroy_boxed_opaque_existential_1(v435);
        MEMORY[0x1D386CDC0](v242, -1, -1);
        MEMORY[0x1D386CDC0](v226, -1, -1);

        (*(v432 + 8))(v405, v433);
      }

      else
      {

        (*(v219 + 8))(v220, v221);
        (*(v432 + 8))(v218, v433);
      }

      v112 = v419;
      *v419 = v216;
      swift_storeEnumTagMultiPayload();
      v281 = v216;
      v426(v112);

      goto LABEL_35;
    }

    v88 = sub_1CF9E5B88();
    v90 = v89;

    v444 = MEMORY[0x1E6969080];
    *&v442 = v88;
    *(&v442 + 1) = v90;
    sub_1CEFE9EB8(&v442, v441);
    sub_1CEFE42D4(v88, v90);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v438 = v60;
    sub_1CF1D154C(v441, 0xD000000000000021, 0x80000001CFA3ED10, v91);
    sub_1CEFE4714(v88, v90);
    (v71[1])(v72, v69);
    v60 = v438;
  }

  v92 = v434;
  v93 = sub_1CF93CF34();
  v94 = [v93 lastEditorDeviceName];

  v95 = MEMORY[0x1E69E6158];
  if (v94)
  {
    v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v98 = v97;

    v444 = v95;
    *&v442 = v96;
    *(&v442 + 1) = v98;
    sub_1CEFE9EB8(&v442, v441);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v438 = v60;
    sub_1CF1D154C(v441, 0xD00000000000001DLL, 0x80000001CFA3ECF0, v99);
    v60 = v438;
  }

  v100 = v430;
  v101 = v417;
  if (os_variant_has_internal_content() && v427->tester[0] == 1)
  {
    v60, v102, v103, v104, v105, v106, v107, v108;
    LODWORD(v442) = 12;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2FC9FC(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v109 = v400;
    v110 = v402;
    sub_1CF9E57D8();
    v111 = sub_1CF9E53A8();
    (*(v401 + 8))(v109, v110);
    v112 = v419;
    *v419 = v111;
    swift_storeEnumTagMultiPayload();
    v426(v112);
LABEL_35:
    sub_1CEFCCC44(v112, &qword_1EC4BF008, &unk_1CFA01CB0);
    return;
  }

  v113 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CF2FC770(v92, v70, type metadata accessor for StagedRemoteVersion);
  v114 = sub_1CF9E6108();
  v115 = sub_1CF9E7288();
  v116 = os_log_type_enabled(v114, v115);
  v435 = v60;
  if (v116)
  {
    v117 = v101;
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v442 = v119;
    *v118 = 136315138;
    v120 = sub_1CF93D034();
    v121 = v70;
    v123 = v122;
    sub_1CF2FC8DC(v121, type metadata accessor for StagedRemoteVersion);
    v124 = sub_1CEFD0DF0(v120, v123, &v442);
    v123, v125, v126, v127, v128, v129, v130, v131;
    *(v118 + 4) = v124;
    _os_log_impl(&dword_1CEFC7000, v114, v115, "⚔️  Putting loser %s into the Genstore...", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x1D386CDC0](v119, -1, -1);
    MEMORY[0x1D386CDC0](v118, -1, -1);

    v132 = *(v432 + 8);
    v133 = v117;
  }

  else
  {

    sub_1CF2FC8DC(v70, type metadata accessor for StagedRemoteVersion);
    v132 = *(v432 + 8);
    v133 = v101;
  }

  v425 = v132;
  v132(v133, v433);
  v134 = *v427->tree;
  v135 = sub_1CF93D034();
  v137 = v136;
  v138 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v140 = v139;
  v141 = v413;
  v423 = *(v412 + 20);
  sub_1CEFF54BC(v413);
  v142 = v141[*(v414 + 52)];
  sub_1CF2FC8DC(v141, type metadata accessor for ItemMetadata);
  v143 = *(v134 + 16);
  v144 = sub_1CF9E5928();
  *&v442 = 0;
  v145 = [v143 permanentStorageForItemAtURL:v144 allocateIfNone:1 error:&v442];

  v146 = v442;
  isa = v145;
  v427 = v137;
  if (!v145)
  {
    v210 = v146;
    v211 = sub_1CF9E57F8();

    swift_willThrow();
    v212 = v429;
    v213 = v410;
    v214 = v415;
LABEL_45:
    v351 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v352 = v420;
    (*(v420 + 16))(v213, v100, v212);
    v353 = v211;
    v354 = sub_1CF9E6108();
    v355 = sub_1CF9E72A8();

    if (os_log_type_enabled(v354, v355))
    {
      v356 = swift_slowAlloc();
      isa = swift_slowAlloc();
      v434 = swift_slowAlloc();
      *&v442 = v434;
      *v356 = 136446466;
      v357 = sub_1CF9E5928();
      v358 = [v357 fp_shortDescription];
      LODWORD(v430) = v355;
      v359 = v140;
      v360 = v358;

      v361 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v362 = v213;
      v364 = v363;

      v140 = v359;
      (*(v352 + 8))(v362, v429);
      v365 = sub_1CEFD0DF0(v361, v364, &v442);
      v364, v366, v367, v368, v369, v370, v371, v372;
      *(v356 + 4) = v365;
      *(v356 + 12) = 2112;
      swift_getErrorValue();
      v373 = Error.prettyDescription.getter(v439, v440);
      *(v356 + 14) = v373;
      v374 = isa;
      *isa = v373;
      _os_log_impl(&dword_1CEFC7000, v354, v430, "failed to add version to %{public}s: %@", v356, 0x16u);
      sub_1CEFCCC44(v374, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v374, -1, -1);
      v375 = v434;
      __swift_destroy_boxed_opaque_existential_1(v434);
      MEMORY[0x1D386CDC0](v375, -1, -1);
      MEMORY[0x1D386CDC0](v356, -1, -1);

      v376 = v415;
    }

    else
    {

      (*(v352 + 8))(v213, v212);
      v376 = v214;
    }

    v425(v376, v433);
    v377 = v419;
    *v419 = v211;
    swift_storeEnumTagMultiPayload();
    v378 = v211;
    v426(v377);

    sub_1CEFCCC44(v377, &qword_1EC4BF008, &unk_1CFA01CB0);
    v435, v379, v380, v381, v382, v383, v384, v385;
    v427, v386, v387, v388, v389, v390, v391, v392;
    v341 = v140;
    goto LABEL_49;
  }

  sub_1CF9E58E8();
  v148 = v147;
  v149 = sub_1CF9E6888();
  v148, v150, v151, v152, v153, v154, v155, v156;
  v157 = [v149 fp:v142 displayNameFromFilenameWithHiddenPathExtension:0 isFolder:?];

  v158 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v424 = v140;
  v160 = v159;

  v161 = swift_initStackObject();
  *(v161 + 16) = xmmword_1CFA001F0;
  *(v161 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v161 + 40) = v162;
  v163 = sub_1CF9E58E8();
  v164 = MEMORY[0x1E69E6158];
  *(v161 + 72) = MEMORY[0x1E69E6158];
  *(v161 + 48) = v163;
  *(v161 + 56) = v165;
  *(v161 + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v161 + 88) = v166;
  *(v161 + 120) = v164;
  *(v161 + 96) = v135;
  *(v161 + 104) = v137;
  *(v161 + 128) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v161 + 136) = v167;
  *(v161 + 168) = v164;
  *(v161 + 144) = v158;
  *(v161 + 152) = v160;
  v168 = v424;
  *(v161 + 176) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v161 + 184) = v169;
  *(v161 + 216) = MEMORY[0x1E69E6370];
  *(v161 + 192) = 1;
  *(v161 + 224) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v161 + 232) = v170;
  *(v161 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
  *(v161 + 240) = v435;
  *(v161 + 272) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v161 + 280) = v171;
  *(v161 + 312) = v164;
  *(v161 + 288) = v138;
  *(v161 + 296) = v168;

  v172 = sub_1CF4E04E8(v161);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v173 = fpfs_current_or_default_log();
  v174 = v408;
  sub_1CF9E6128();

  v175 = sub_1CF9E6108();
  v176 = sub_1CF9E7288();
  v137, v177, v178, v179, v180, v181, v182, v183;
  v184 = os_log_type_enabled(v175, v176);
  v422 = v135;
  if (v184)
  {
    v185 = v172;
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    *&v442 = v187;
    *v186 = 136315138;
    *(v186 + 4) = sub_1CEFD0DF0(v135, v137, &v442);
    _os_log_impl(&dword_1CEFC7000, v175, v176, "⚔️  Putting remote version %s into Genstore...", v186, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v187);
    MEMORY[0x1D386CDC0](v187, -1, -1);
    v188 = v186;
    v172 = v185;
    MEMORY[0x1D386CDC0](v188, -1, -1);
  }

  v189 = *(v432 + 8);
  v189(v174, v433);
  v190 = v420;
  v191 = v409;
  v192 = isa;
  v193 = sub_1CF9E5928();
  sub_1CF7BA9CC(v172);
  v195 = v194;
  v196 = v172;
  v197 = sub_1CF9E6618();
  v195, v198, v199, v200, v201, v202, v203, v204;
  *&v442 = 0;
  v205 = [v192 prepareAdditionCreationWithItemAtURL:v193 byMoving:1 creationInfo:v197 error:&v442];

  v206 = v442;
  v100 = v430;
  if (!v205)
  {
    v425 = v189;
    v243 = v442;
    v196, v244, v245, v246, v247, v248, v249, v250;
    v211 = sub_1CF9E57F8();

    swift_willThrow();
    v212 = v429;
    v213 = v410;
LABEL_44:
    v214 = v415;
    v140 = v424;
    goto LABEL_45;
  }

  v434 = v196;
  sub_1CF9E59D8();
  v207 = v206;

  v208 = v404;
  sub_1CEFCCBDC(v403, v404, &unk_1EC4BE310, qword_1CF9FCBE0);
  v209 = v429;
  if ((*(v190 + 48))(v208, 1, v429) != 1)
  {
    v425 = v189;
    v251 = v406;
    (*(v190 + 32))(v406, v208, v209);
    v252 = fpfs_current_or_default_log();
    v253 = v191;
    sub_1CF9E6128();
    v254 = v394;
    (*(v190 + 16))(v394, v251, v209);
    v255 = v427;

    v256 = sub_1CF9E6108();
    v257 = v190;
    v258 = sub_1CF9E7288();
    v255, v259, v260, v261, v262, v263, v264, v265;
    if (os_log_type_enabled(v256, v258))
    {
      v266 = v254;
      v267 = swift_slowAlloc();
      v421 = swift_slowAlloc();
      *&v442 = v421;
      *v267 = 136315394;
      sub_1CF2FC9FC(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v268 = sub_1CF9E7F98();
      v270 = v269;
      v423 = *(v257 + 8);
      (v423)(v266, v209);
      v271 = sub_1CEFD0DF0(v268, v270, &v442);
      v270, v272, v273, v274, v275, v276, v277, v278;
      *(v267 + 4) = v271;
      *(v267 + 12) = 2080;
      *(v267 + 14) = sub_1CEFD0DF0(v422, v255, &v442);
      _os_log_impl(&dword_1CEFC7000, v256, v258, "⚔️  associate thumbnail %s for loser %s", v267, 0x16u);
      v279 = v421;
      swift_arrayDestroy();
      v100 = v430;
      MEMORY[0x1D386CDC0](v279, -1, -1);
      MEMORY[0x1D386CDC0](v267, -1, -1);

      v280 = v409;
    }

    else
    {

      v423 = *(v257 + 8);
      (v423)(v254, v209);
      v280 = v253;
    }

    v425(v280, v433);
    v190 = v257;
    v282 = sub_1CF9E5928();
    v283 = sub_1CF9E5928();
    v213 = v410;
    if (v395 >> 60 == 15)
    {
      v284 = 0;
    }

    else
    {
      v284 = sub_1CF9E5B48();
    }

    *&v442 = 0;
    v285 = [v282 fp:v283 associateThumbnailToVersionAtURL:v284 thumbnailMetadata:&v442 error:?];

    if (v285)
    {
      v286 = v442;
      (v423)(v406, v429);
      goto LABEL_42;
    }

    v342 = v442;
    v434, v343, v344, v345, v346, v347, v348, v349;
    v211 = sub_1CF9E57F8();

    swift_willThrow();
    v212 = v429;
    v350 = v423;
    (v423)(v406, v429);
    v350(v416, v212);
    goto LABEL_44;
  }

  sub_1CEFCCC44(v208, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_42:
  v287 = v434;
  v288 = v416;
  v434 = sub_1CF9E5928();
  sub_1CF7BA9CC(v287);
  v290 = v289;
  v287, v291, v292, v293, v294, v295, v296, v297;
  v433 = sub_1CF9E6618();
  v290, v298, v299, v300, v301, v302, v303, v304;
  v305 = *(v190 + 16);
  v306 = v190;
  v307 = v396;
  v308 = v429;
  v305(v396, v100, v429);
  v309 = v397;
  v305(v397, v288, v308);
  v310 = *(v306 + 80);
  v311 = (v310 + 32) & ~v310;
  v312 = (v398 + v310 + v311) & ~v310;
  v313 = swift_allocObject();
  v314 = v428;
  *(v313 + 16) = v426;
  *(v313 + 24) = v314;
  v315 = *(v306 + 32);
  v315(v313 + v311, v307, v308);
  v315(v313 + v312, v309, v308);
  v445 = sub_1CF2FC6C0;
  v446 = v313;
  *&v442 = MEMORY[0x1E69E9820];
  *(&v442 + 1) = 1107296256;
  v443 = sub_1CEFF99E0;
  v444 = &block_descriptor_39;
  v316 = _Block_copy(&v442);

  v317 = isa;
  v319 = v433;
  v318 = v434;
  [isa createAdditionStagedAtURL:v434 creationInfo:v433 completionHandler:v316];
  _Block_release(v316);

  (*(v306 + 8))(v416, v308);
  v435, v320, v321, v322, v323, v324, v325, v326;
  v427, v327, v328, v329, v330, v331, v332, v333;
  v341 = v424;
LABEL_49:
  v341, v334, v335, v336, v337, v338, v339, v340;
}

uint64_t sub_1CF2FC298(char a1)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    *(v1 + 24) = a1 & 1;
  }

  return result;
}

uint64_t GSConflictManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1CF2FC34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *v3;
  if (qword_1EC4BCD00 != -1)
  {
    swift_once();
  }

  v10 = fpfs_current_log();
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  (*(v7 + 32))(v12 + v11, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = (v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v15;
  v13[1] = a3;

  sub_1CF01001C(v10, "listConflicts(for:completionHandler:)", 37, 2, sub_1CF2FCA7C, v12);
}

void sub_1CF2FC528(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF2F793C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1CF2FC6C0(void *a1, void *a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_1CF2CB8C8(a1, a2, v8, v9, v2 + v7, v10);
}

uint64_t sub_1CF2FC770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF2FC7D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StagedRemoteVersion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CF2FC83C(uint64_t a1)
{
  type metadata accessor for StagedRemoteVersion(0);
  v3 = *(v1 + 16);

  sub_1CF2FA06C(a1, v3);
}

uint64_t sub_1CF2FC8DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CF2FC968()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF2F94E0(v3, v0 + v2, v4);
}

uint64_t sub_1CF2FC9FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF2FCAB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1CF9E59D8();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

id sub_1CF2FCB9C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1CF9E5A58();
  v111 = *(v0 - 8);
  v112 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v108 = v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v109 = v99 - v3;
  v110 = type metadata accessor for LocalDomain(0) - 8;
  MEMORY[0x1EEE9AC00](v110);
  v5 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E7388();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v104 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E7318();
  v103 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v101 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v99 - v11;
  v100 = sub_1CF9E6448();
  v13 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v15 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v99 - v17;
  v102 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue;
  v99[1] = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  sub_1CF9E63F8();
  v115 = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v19 = v100;
  (*(v13 + 16))(v15, v18, v100);
  v20 = v103;
  (*(v103 + 16))(v101, v12, v8);
  (*(v105 + 104))(v104, *MEMORY[0x1E69E8098], v106);
  v21 = sub_1CF9E73B8();
  (*(v20 + 8))(v12, v8);
  (*(v13 + 8))(v18, v19);
  v22 = v107;
  *&v107[v102] = v21;
  v23 = [objc_opt_self() legacyDefaultManager];
  v24 = [v23 documentStorageURL];
  v25 = v108;
  sub_1CF9E59D8();

  v26 = v109;
  sub_1CEFFBA1C(v109);
  v27 = v111;
  v28 = *(v111 + 8);
  v29 = v25;
  v30 = v112;
  v28(v29, v112);
  *(v5 + 2) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v5 + 3) = v31;
  *(v5 + 4) = 0x6C75616665645F5FLL;
  *(v5 + 5) = 0xEB000000005F5F74;
  v32 = v110;
  v33 = *(v110 + 40);
  v34 = *(v27 + 16);
  v35 = v26;
  v36 = v26;
  v37 = v30;
  v34(&v5[v33], v35, v30);
  v5[*(v32 + 44)] = 1;
  LODWORD(v33) = sub_1CEFFBB54(&v5[v33]);
  v39 = v38;

  v28(v36, v37);
  *v5 = v39;
  *(v5 + 2) = v33;
  sub_1CEFFC48C(v5, v22 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, type metadata accessor for LocalDomain);
  v117.receiver = v22;
  v117.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v117, sel_init);
  sub_1CEFFC55C();
  sub_1CEFFC714();
  if ((fpfs_set_vfs_ignore_permissions_iopolicy() & 0x80000000) != 0)
  {
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_1CF9E7948();
    v41 = MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA3F890);
    v114 = MEMORY[0x1D38683F0](v41);
    v42 = sub_1CF9E7F98();
    v44 = v43;
    MEMORY[0x1D3868CC0](v42);
    v44, v45, v46, v47, v48, v49, v50, v51;
    v52 = v115;
    v53 = v116;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v54 = qword_1EDEBB5A0;
    v55 = sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1CF9FA450;
    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = sub_1CEFD51C4();
    *(v56 + 32) = v52;
    *(v56 + 40) = v53;
    sub_1CF9E6018("[CRIT] %@", 9, 2, &dword_1CEFC7000, v54, v55, v56);
    v56, v57, v58, v59, v60, v61, v62, v63;
  }

  v64 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v65 = sub_1CF9E6888();
  v66 = [v64 initWithSuiteName_];

  if (v66 && (v67 = sub_1CF9E6888(), v68 = [v66 BOOLForKey_], v66, v67, (v68 & 1) != 0) && (fpfs_set_vfs_parent_mtime_iopolicy() & 0x80000000) != 0)
  {
    v115 = 0;
    v116 = 0xE000000000000000;
    sub_1CF9E7948();
    v116, v70, v71, v72, v73, v74, v75, v76;
    v115 = 0xD00000000000002CLL;
    v116 = 0x80000001CFA3F860;
    v114 = MEMORY[0x1D38683F0]();
    v77 = sub_1CF9E7F98();
    v79 = v78;
    MEMORY[0x1D3868CC0](v77);
    v79, v80, v81, v82, v83, v84, v85, v86;
    v87 = v115;
    v88 = v116;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v89 = qword_1EDEBB5A0;
    v90 = sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1CF9FA450;
    *(v91 + 56) = MEMORY[0x1E69E6158];
    *(v91 + 64) = sub_1CEFD51C4();
    *(v91 + 32) = v87;
    *(v91 + 40) = v88;
    sub_1CF9E6018("[CRIT] %@", 9, 2, &dword_1CEFC7000, v89, v90, v91);

    v91, v92, v93, v94, v95, v96, v97, v98;
  }

  else
  {
  }

  return v40;
}

void sub_1CF2FD4F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  v54 = a1;
  v10 = NSFileProviderItemIdentifier.description.getter(a1);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBB5A0;
  v21 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v23 = sub_1CF9E7718();
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1CEFD51C4();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 64) = v27;
  *(v22 + 72) = 0x752070756B6F6F6CLL;
  *(v22 + 80) = 0xEF20726F66206C72;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v20, v21, v22);
  v22, v28, v29, v30, v31, v32, v33, v34;
  sub_1CF2FD7DC(v54, v55, a2);
  0xEF20726F66206C72, v35, v36, v37, v38, v39, v40, v41;
  v42 = sub_1CF9E7298();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1CF9FA450;
  v44 = sub_1CF9E7718();
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = v27;
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v20, v42, v43);
  v43, v46, v47, v48, v49, v50, v51, v52;
}

uint64_t sub_1CF2FD7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - v11;
  sub_1CEFFD89C((a2 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, a1, v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
  {
    sub_1CEFCCC44(v9, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v14 = sub_1CF9E5A58();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
LABEL_5:
    sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF9E5A58();
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  v54 = a3;
  v57 = v3;
  v15 = *(v13 + 48);
  v14 = sub_1CF9E5A58();
  v16 = *(v14 - 8);
  v17 = *(v16 + 32);
  v17(v12, v9, v14);
  v53 = *(v16 + 56);
  v53(v12, 0, 1, v14);
  sub_1CEFCCC44(&v9[v15], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v16 + 48))(v12, 1, v14) == 1)
  {
    a3 = v54;
    goto LABEL_5;
  }

  v19 = v54;
  v17(v54, v12, v14);
  v55 = 0x20646E756F66;
  v56 = 0xE600000000000000;
  sub_1CF9E5A18();
  v21 = v20;
  v22 = sub_1CF9E6888();
  v21, v23, v24, v25, v26, v27, v28, v29;
  v30 = [v22 fp_prettyPath];

  v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;

  MEMORY[0x1D3868CC0](v31, v33);
  v33, v34, v35, v36, v37, v38, v39, v40;
  v42 = v55;
  v41 = v56;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDEBB5A0;
  v44 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA450;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = sub_1CEFD51C4();
  *(v45 + 32) = v42;
  *(v45 + 40) = v41;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v43, v44, v45);
  v45, v46, v47, v48, v49, v50, v51, v52;
  return (v53)(v19, 0, 1, v14);
}

uint64_t sub_1CF2FDD8C(uint64_t a1)
{
  sub_1CF9E7948();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  v68[1] = 0x80000001CFA3F530;
  v66 = a1;
  sub_1CF9E5A18();
  v10 = v9;
  v11 = sub_1CF9E6888();
  v10, v12, v13, v14, v15, v16, v17, v18;
  v19 = [v11 fp_prettyPath];

  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v21;

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v31 = qword_1EDEBB5A0;
  v32 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1CF9FA440;
  v68[0] = v30;
  sub_1CEFFD0A8();
  v34 = sub_1CF9E7718();
  v36 = v35;
  v37 = MEMORY[0x1E69E6158];
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1CEFD51C4();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  v39 = v31;
  *(v33 + 96) = v37;
  *(v33 + 104) = v38;
  *(v33 + 64) = v38;
  *(v33 + 72) = 0xD000000000000013;
  *(v33 + 80) = 0x80000001CFA3F530;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v31, v32, v33);
  v33, v40, v41, v42, v43, v44, v45, v46;
  sub_1CF2FE0B4(v66, v67, v68);
  0x80000001CFA3F530, v47, v48, v49, v50, v51, v52, v53;
  v54 = sub_1CF9E7298();
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1CF9FA450;
  v56 = sub_1CF9E7718();
  *(v55 + 56) = v37;
  *(v55 + 64) = v38;
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v39, v54, v55);
  v55, v58, v59, v60, v61, v62, v63, v64;
  return v68[0];
}

void sub_1CF2FE0B4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v51 = a2;
  v53 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v50 - v5;
  v6 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = *(v13 + 16);
  v20(&v50 - v18, a1, v12, v17);
  sub_1CEFFD30C(v51 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v11, type metadata accessor for LocalDomain);
  (v20)(v15, v19, v12);
  sub_1CEFFD30C(v11, v8, type metadata accessor for LocalDomain);
  v21 = type metadata accessor for VFSItem(0);
  v22 = v52;
  (*(*(v21 - 8) + 56))(v52, 1, 1, v21);
  v23 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v24 = sub_1CF001704(v15, v8, v22);
  sub_1CF007BF8(v11, type metadata accessor for LocalDomain);
  (*(v13 + 8))(v19, v12);
  if (v24)
  {
    v54 = 0x20646E756F66;
    v55 = 0xE600000000000000;
    v25 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier;
    v26 = *&v24[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v27 = NSFileProviderItemIdentifier.description.getter(v26);
    v29 = v28;
    MEMORY[0x1D3868CC0](v27);

    v29, v30, v31, v32, v33, v34, v35, v36;
    v37 = v54;
    v38 = v55;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v39 = qword_1EDEBB5A0;
    v40 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1CF9FA450;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1CEFD51C4();
    *(v41 + 32) = v37;
    *(v41 + 40) = v38;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v39, v40, v41);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v49 = *&v24[v25];
  }

  else
  {
    v49 = 0;
  }

  *v53 = v49;
}

uint64_t sub_1CF2FE598(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a4);
  sub_1CF9E59D8();
  v9[2](v9, 0);
  _Block_release(v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF2FE8E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1CF9E59D8();
    v12 = sub_1CF9E5A58();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_1CF9E5A58();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  swift_unknownObjectRetain();
  v14 = a4;
  v11(v10, a3, a4);
  swift_unknownObjectRelease();

  return sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF2FEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1CEFCCBDC(a1, &v15 - v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_1CF9E5928();
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v14 = sub_1CF9E57E8();
  }

  else
  {
    v14 = 0;
  }

  (*(a4 + 16))(a4, v13, a2, v14);
}

void sub_1CF2FEE60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v60 = a4;
  v61 = a5;
  v59 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  if (a2)
  {
    swift_getErrorValue();
    v26 = sub_1CF7DBA58(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v62, v63);
    v27 = v26;
LABEL_3:
    v60(0, v27);
LABEL_9:

    return;
  }

  sub_1CEFCCBDC(v59, &v56 - v24, &unk_1EC4BE310, qword_1CF9FCBE0);
  v57 = *(v11 + 48);
  v58 = v11 + 48;
  if (v57(v25, 1, v10) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1CEFFD30C(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v19, type metadata accessor for LocalDomain);
    (*(v11 + 16))(v13, v25, v10);
    sub_1CEFFD30C(v19, v16, type metadata accessor for LocalDomain);
    v28 = type metadata accessor for VFSItem(0);
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v30 = sub_1CF001704(v13, v16, v9);
    sub_1CF007BF8(v19, type metadata accessor for LocalDomain);
    v31 = *(v11 + 8);
    v31(v25, v10);
    if (v30)
    {
      v64 = 2113085;
      v65 = 0xE300000000000000;
      v32 = [v30 description];
      v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v34;

      MEMORY[0x1D3868CC0](v33, v35);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v43 = v64;
      v44 = v65;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v45 = qword_1EDEBB5A0;
      v46 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1CF9FA450;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      *(v47 + 64) = sub_1CEFD51C4();
      *(v47 + 32) = v43;
      *(v47 + 40) = v44;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v45, v46, v47);
      v47, v48, v49, v50, v51, v52, v53, v54;
      v26 = v30;
      v60(v30, 0);

      goto LABEL_9;
    }

    sub_1CEFCCBDC(v59, v22, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v57(v22, 1, v10) != 1)
    {
      v55 = sub_1CF9E5928();
      v31(v22, v10);
      v26 = FPInvalidURLError();

      v27 = v26;
      goto LABEL_3;
    }
  }

  __break(1u);
}

void sub_1CF2FF458(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v103 = a3;
  v104 = a4;
  v108 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v106 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v103 - v10;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v109 = v11;
  v110 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1CF9E5268();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = swift_allocObject();
  *(v112 + 16) = a5;
  v111 = a1;
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;
  if (v19 == v22 && v21 == v23)
  {
    _Block_copy(a5);
LABEL_4:
    v21, v25, v26, v27, v28, v29, v30, v31;
    v24, v32, v33, v34, v35, v36, v37, v38;
LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v64 = sub_1CF9E50D8();
    (*(v16 + 8))(v18, v15);
    goto LABEL_8;
  }

  v39 = sub_1CF9E8048();
  _Block_copy(a5);
  v21, v40, v41, v42, v43, v44, v45, v46;
  v24, v47, v48, v49, v50, v51, v52, v53;
  if (v39)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v55 = v54;
  v56 = sub_1CF9E6AE8();
  v55, v57, v58, v59, v60, v61, v62, v63;
  if (v56)
  {
    goto LABEL_7;
  }

  v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v67;
  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v68 = v66;
  v24 = v25;
  if (v68 == v26 && v21 == v25)
  {
    goto LABEL_4;
  }

  v69 = sub_1CF9E8048();
  v21, v70, v71, v72, v73, v74, v75, v76;
  v24, v77, v78, v79, v80, v81, v82, v83;
  if (v69)
  {
    goto LABEL_7;
  }

  v84 = v108;
  v85 = v106;
  sub_1CEFFD89C(&v108[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1u, v111, v106);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
  {
    sub_1CEFCCC44(v85, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v87 = v107;
    (*(v110 + 56))(v107, 1, 1, v109);
    goto LABEL_17;
  }

  v88 = *(v86 + 48);
  v90 = v109;
  v89 = v110;
  v91 = *(v110 + 32);
  v87 = v107;
  v91(v107, v85, v109);
  (*(v89 + 56))(v87, 0, 1, v90);
  sub_1CEFCCC44(&v85[v88], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v89 + 48))(v87, 1, v90) == 1)
  {
LABEL_17:
    sub_1CEFCCC44(v87, &unk_1EC4BE310, qword_1CF9FCBE0);
    v64 = FPItemNotFoundError();
    if (!v64)
    {
      v65 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v65 = sub_1CF9E57E8();
LABEL_9:
    (a5)[2](a5, 0, v65);

    goto LABEL_10;
  }

  v91(v105, v87, v90);
  v92 = sub_1CF9E5928();
  v93 = sub_1CF9E6888();
  v94 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v95 = sub_1CF9E6888();
  v96 = [v94 initWithSuiteName_];

  if (v96)
  {
    v97 = sub_1CF9E6888();
    v98 = [v96 BOOLForKey_];

    v99 = v98 ^ 1;
  }

  else
  {
    v99 = 1;
  }

  v100 = swift_allocObject();
  v100[2] = v84;
  v100[3] = sub_1CF024BB0;
  v100[4] = v112;
  aBlock[4] = sub_1CF32723C;
  aBlock[5] = v100;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF90535C;
  aBlock[3] = &block_descriptor_344;
  v101 = _Block_copy(aBlock);
  v102 = v84;

  [v92 fp:v93 renameWithNewName:v99 allowCoordination:v101 completionHandler:?];
  _Block_release(v101);

  (*(v110 + 8))(v105, v90);

LABEL_10:
  _Block_release(a5);
}

double sub_1CF2FFD5C(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t, id), uint64_t a5)
{
  v100 = a3;
  v114 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v102 = &v92 - v10;
  v104 = sub_1CF9E5A58();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v97 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v92 - v16);
  v18 = type metadata accessor for LocalContainer(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v105 = &v92 - v22;
  v23 = swift_allocObject();
  v101 = a4;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v106 = v23;
  v24 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;

  v99 = a2;
  v98 = a1;
  sub_1CF0047A0(a2 + v24, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4C1110, &qword_1CFA08100);
    v25 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v27;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v28 = v25;
    v29 = sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v31 = sub_1CF9E6618();
    v29, v32, v33, v34, v35, v36, v37, v38;
    v39 = [v30 initWithDomain:v28 code:3328 userInfo:v31];

    v40 = v102;
    (*(v103 + 56))(v102, 1, 1, v104);
    v41 = v39;
    v101(v40, v39);

    sub_1CEFCCC44(v40, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v94 = a5;
    sub_1CEFFC48C(v17, v105, type metadata accessor for LocalContainer);
    sub_1CF9E5958();
    v42 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v43 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v44 = swift_initStackObject();
    v45 = *MEMORY[0x1E696A370];
    *(v44 + 32) = *MEMORY[0x1E696A370];
    v92 = xmmword_1CF9FA450;
    *(v44 + 16) = xmmword_1CF9FA450;
    *(v44 + 64) = MEMORY[0x1E69E6530];
    *(v44 + 40) = 493;
    v46 = v45;
    v47 = v14;
    v48 = sub_1CF4E2F64(v44);
    swift_setDeallocating();
    sub_1CEFCCC44(v44 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
    v49 = sub_1CF9E6618();
    v48, v50, v51, v52, v53, v54, v55, v56;
    aBlock = 0;
    LOBYTE(v48) = [v42 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:v49 error:&aBlock];

    v93 = v47;
    if (v48)
    {
      v57 = aBlock;
      v58 = v98;
      v102 = sub_1CF9E5928();
      v101 = sub_1CF9E5928();
      v59 = v103;
      v60 = v97;
      (*(v103 + 16))(v97, v58, v104);
      v61 = v95;
      sub_1CEFFD30C(v105, v95, type metadata accessor for LocalContainer);
      v62 = (*(v59 + 80) + 40) & ~*(v59 + 80);
      v63 = (v96 + *(v19 + 80) + v62) & ~*(v19 + 80);
      v64 = swift_allocObject();
      v65 = v106;
      *(v64 + 2) = sub_1CF326F80;
      *(v64 + 3) = v65;
      v66 = v99;
      *(v64 + 4) = v99;
      v67 = v60;
      v68 = v104;
      (*(v59 + 32))(&v64[v62], v67, v104);
      sub_1CEFFC48C(v61, &v64[v63], type metadata accessor for LocalContainer);
      v111 = sub_1CF32743C;
      v112 = v64;
      aBlock = MEMORY[0x1E69E9820];
      v108 = 1107296256;
      v109 = sub_1CF90535C;
      v110 = &block_descriptor_324;
      v69 = _Block_copy(&aBlock);

      v70 = v66;

      v71 = v102;
      v72 = v101;
      [v102 fp:v101 trashUnderFolder:v100 & 1 allowCoordination:v69 completionHandler:?];
      _Block_release(v69);

      (*(v59 + 8))(v93, v68);
      sub_1CF007BF8(v105, type metadata accessor for LocalContainer);
    }

    else
    {
      v73 = aBlock;
      v74 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v108 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v113 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v75 = aBlock;
      v76 = v108;
      v77 = v104;
      v78 = v103;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v79 = qword_1EDEBB5A0;
      v80 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v81 = swift_allocObject();
      *(v81 + 16) = v92;
      *(v81 + 56) = MEMORY[0x1E69E6158];
      *(v81 + 64) = sub_1CEFD51C4();
      *(v81 + 32) = v75;
      *(v81 + 40) = v76;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v79, v80, v81);
      v81, v82, v83, v84, v85, v86, v87, v88;
      v89 = v102;
      (*(v78 + 56))(v102, 1, 1, v77);
      v90 = v74;
      v101(v89, v74);

      sub_1CEFCCC44(v89, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*(v78 + 8))(v93, v77);
      sub_1CF007BF8(v105, type metadata accessor for LocalContainer);
    }
  }

  return result;
}

void sub_1CF300898(uint64_t a1, void *a2, int a3, void (**a4)(void, void, void))
{
  v99 = a3;
  v111 = *MEMORY[0x1E69E9840];
  v102 = sub_1CF9E5A58();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v87 - v11);
  v13 = type metadata accessor for LocalContainer(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v87 - v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF024BB0;
  *(v19 + 24) = v18;
  v20 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  _Block_copy(a4);
  _Block_copy(a4);

  v98 = a2;
  v95 = a1;
  sub_1CF0047A0(a2 + v20, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4C1110, &qword_1CFA08100);
    v21 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v23;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v24 = v21;
    v25 = sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = sub_1CF9E6618();
    v25, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v26 initWithDomain:v24 code:3328 userInfo:v27];

    _Block_copy(a4);
    v36 = v35;
    v37 = sub_1CF9E57E8();
    (a4)[2](a4, 0, v37);

    _Block_release(a4);
  }

  else
  {
    v90 = a4;
    v91 = v19;
    v92 = v18;
    v38 = v101;
    sub_1CEFFC48C(v12, v101, type metadata accessor for LocalContainer);
    sub_1CF9E5958();
    v39 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v40 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v41 = swift_initStackObject();
    v42 = *MEMORY[0x1E696A370];
    *(v41 + 32) = *MEMORY[0x1E696A370];
    v89 = xmmword_1CF9FA450;
    *(v41 + 16) = xmmword_1CF9FA450;
    *(v41 + 64) = MEMORY[0x1E69E6530];
    *(v41 + 40) = 493;
    v43 = v42;
    v44 = sub_1CF4E2F64(v41);
    swift_setDeallocating();
    sub_1CEFCCC44(v41 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
    v45 = sub_1CF9E6618();
    v44, v46, v47, v48, v49, v50, v51, v52;
    aBlock = 0;
    LOBYTE(v44) = [v39 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:v45 error:&aBlock];

    if (v44)
    {
      v53 = aBlock;
      v54 = v95;
      *&v89 = sub_1CF9E5928();
      v88 = sub_1CF9E5928();
      v55 = v100;
      v56 = v97;
      (*(v100 + 16))(v97, v54, v102);
      v57 = v94;
      sub_1CEFFD30C(v38, v94, type metadata accessor for LocalContainer);
      v58 = (*(v55 + 80) + 40) & ~*(v55 + 80);
      v59 = (v96 + *(v14 + 80) + v58) & ~*(v14 + 80);
      v60 = swift_allocObject();
      v61 = v91;
      v60[2] = sub_1CF327470;
      v60[3] = v61;
      v62 = v98;
      v60[4] = v98;
      v63 = v60 + v58;
      v64 = v102;
      (*(v55 + 32))(v63, v56, v102);
      sub_1CEFFC48C(v57, v60 + v59, type metadata accessor for LocalContainer);
      v108 = sub_1CF32743C;
      v109 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v105 = 1107296256;
      v106 = sub_1CF90535C;
      v107 = &block_descriptor_311;
      v65 = _Block_copy(&aBlock);

      v66 = v62;

      v67 = v89;
      v68 = v88;
      [v89 fp:v88 trashUnderFolder:v99 & 1 allowCoordination:v65 completionHandler:?];
      _Block_release(v65);

      (*(v55 + 8))(v103, v64);
      sub_1CF007BF8(v101, type metadata accessor for LocalContainer);

      a4 = v90;
    }

    else
    {
      v69 = v38;
      v70 = v103;
      v71 = aBlock;
      v72 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v105 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v110 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v73 = aBlock;
      v74 = v105;
      a4 = v90;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v75 = qword_1EDEBB5A0;
      v76 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v77 = swift_allocObject();
      *(v77 + 16) = v89;
      *(v77 + 56) = MEMORY[0x1E69E6158];
      *(v77 + 64) = sub_1CEFD51C4();
      *(v77 + 32) = v73;
      *(v77 + 40) = v74;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v75, v76, v77);
      v77, v78, v79, v80, v81, v82, v83, v84;
      _Block_copy(a4);
      v85 = v72;
      v86 = sub_1CF9E57E8();
      (a4)[2](a4, 0, v86);

      _Block_release(a4);
      (*(v100 + 8))(v70, v102);
      sub_1CF007BF8(v69, type metadata accessor for LocalContainer);
    }
  }

  _Block_release(a4);
  _Block_release(a4);
}

void sub_1CF3013B4(uint64_t a1, char *a2, int a3, void *a4)
{
  v99 = a3;
  v103 = a1;
  v112 = *MEMORY[0x1E69E9840];
  v102 = sub_1CF9E5A58();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v87 - v10);
  v12 = type metadata accessor for LocalContainer(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v87 - v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF326F6C;
  *(v18 + 24) = v17;
  v19 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v20 = a4;

  v98 = a2;
  v21 = &a2[v19];
  v22 = v103;
  sub_1CF0047A0(v21, v11);
  v93 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4C1110, &qword_1CFA08100);
    v23 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v25;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v26 = v23;
    v27 = sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = sub_1CF9E6618();
    v27, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v28 initWithDomain:v26 code:3328 userInfo:v29];

    v38 = v20;
    v39 = v37;
    sub_1CF3195D4(v37);
  }

  else
  {
    v90 = v18;
    v91 = v17;
    v92 = v20;
    v40 = v104;
    sub_1CEFFC48C(v11, v104, type metadata accessor for LocalContainer);
    v41 = v101;
    sub_1CF9E5958();
    v42 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v43 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v44 = swift_initStackObject();
    v45 = *MEMORY[0x1E696A370];
    *(v44 + 32) = *MEMORY[0x1E696A370];
    v89 = xmmword_1CF9FA450;
    *(v44 + 16) = xmmword_1CF9FA450;
    *(v44 + 64) = MEMORY[0x1E69E6530];
    *(v44 + 40) = 493;
    v46 = v45;
    v47 = sub_1CF4E2F64(v44);
    swift_setDeallocating();
    sub_1CEFCCC44(v44 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
    v48 = sub_1CF9E6618();
    v47, v49, v50, v51, v52, v53, v54, v55;
    aBlock = 0;
    LOBYTE(v47) = [v42 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:v48 error:&aBlock];

    if (v47)
    {
      v56 = aBlock;
      *&v89 = sub_1CF9E5928();
      v88 = sub_1CF9E5928();
      v57 = v100;
      v58 = v97;
      (*(v100 + 16))(v97, v22, v102);
      v59 = v95;
      sub_1CEFFD30C(v40, v95, type metadata accessor for LocalContainer);
      v60 = (*(v57 + 80) + 40) & ~*(v57 + 80);
      v61 = (v96 + *(v93 + 80) + v60) & ~*(v93 + 80);
      v62 = swift_allocObject();
      v63 = v90;
      v62[2] = sub_1CF327470;
      v62[3] = v63;
      v64 = v98;
      v62[4] = v98;
      v65 = v62 + v60;
      v66 = v102;
      (*(v57 + 32))(v65, v58, v102);
      sub_1CEFFC48C(v59, v62 + v61, type metadata accessor for LocalContainer);
      v109 = sub_1CF32743C;
      v110 = v62;
      aBlock = MEMORY[0x1E69E9820];
      v106 = 1107296256;
      v107 = sub_1CF90535C;
      v108 = &block_descriptor_267;
      v67 = _Block_copy(&aBlock);

      v68 = v64;

      v69 = v89;
      v70 = v88;
      [v89 fp:v88 trashUnderFolder:v99 & 1 allowCoordination:v67 completionHandler:?];
      _Block_release(v67);

      (*(v57 + 8))(v101, v66);
      sub_1CF007BF8(v104, type metadata accessor for LocalContainer);
      v20 = v92;
    }

    else
    {
      v71 = aBlock;
      v72 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v106 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v111 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v73 = aBlock;
      v74 = v106;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v75 = qword_1EDEBB5A0;
      v76 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v77 = swift_allocObject();
      *(v77 + 16) = v89;
      *(v77 + 56) = MEMORY[0x1E69E6158];
      *(v77 + 64) = sub_1CEFD51C4();
      *(v77 + 32) = v73;
      *(v77 + 40) = v74;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v75, v76, v77);
      v77, v78, v79, v80, v81, v82, v83, v84;
      v20 = v92;
      v85 = v92;
      v86 = v72;
      sub_1CF3195D4(v72);

      (*(v100 + 8))(v41, v102);
      sub_1CF007BF8(v104, type metadata accessor for LocalContainer);
    }
  }
}

double sub_1CF301E8C(uint64_t a1, void *a2, int a3, void (*a4)(void, id), uint64_t a5)
{
  v101 = a5;
  v96 = a3;
  v109 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5A58();
  v98 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v88 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v88 - v13);
  v15 = type metadata accessor for LocalContainer(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - v19;
  v21 = swift_allocObject();
  v100 = a4;
  *(v21 + 16) = a4;
  *(v21 + 24) = v101;
  v22 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;

  v95 = a2;
  v93 = a1;
  sub_1CF0047A0(a2 + v22, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4C1110, &qword_1CFA08100);
    v23 = *MEMORY[0x1E696A250];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v25;
    *(inited + 48) = 0xD00000000000003DLL;
    *(inited + 56) = 0x80000001CFA3F380;
    v26 = v23;
    v27 = sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = sub_1CF9E6618();
    v27, v30, v31, v32, v33, v34, v35, v36;
    v37 = [v28 initWithDomain:v26 code:3328 userInfo:v29];

    v38 = v37;
    v100(0, v37);
  }

  else
  {
    v97 = v8;
    v89 = v21;
    v40 = v20;
    sub_1CEFFC48C(v14, v20, type metadata accessor for LocalContainer);
    v41 = v99;
    sub_1CF9E5958();
    v42 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v43 = sub_1CF9E5928();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF610, &qword_1CFA01DD0);
    v44 = swift_initStackObject();
    v45 = *MEMORY[0x1E696A370];
    *(v44 + 32) = *MEMORY[0x1E696A370];
    v88 = xmmword_1CF9FA450;
    *(v44 + 16) = xmmword_1CF9FA450;
    *(v44 + 64) = MEMORY[0x1E69E6530];
    *(v44 + 40) = 493;
    v46 = v45;
    v47 = sub_1CF4E2F64(v44);
    swift_setDeallocating();
    sub_1CEFCCC44(v44 + 32, &unk_1EC4C1120, &qword_1CFA07BA0);
    type metadata accessor for FileAttributeKey(0);
    sub_1CEFD5B1C(&unk_1EC4BF620, type metadata accessor for FileAttributeKey, &unk_1CF9F9AE0);
    v48 = sub_1CF9E6618();
    v47, v49, v50, v51, v52, v53, v54, v55;
    aBlock = 0;
    LOBYTE(v47) = [v42 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:v48 error:&aBlock];

    if (v47)
    {
      v56 = aBlock;
      v57 = v93;
      v100 = sub_1CF9E5928();
      *&v88 = sub_1CF9E5928();
      v58 = v98;
      v59 = v94;
      (*(v98 + 16))(v94, v57, v97);
      v60 = v91;
      sub_1CEFFD30C(v40, v91, type metadata accessor for LocalContainer);
      v61 = (*(v58 + 80) + 40) & ~*(v58 + 80);
      v62 = (v92 + *(v16 + 80) + v61) & ~*(v16 + 80);
      v63 = swift_allocObject();
      v64 = v89;
      v63[2] = sub_1CF3262C8;
      v63[3] = v64;
      v93 = v40;
      v65 = v95;
      v63[4] = v95;
      v66 = v63 + v61;
      v67 = v97;
      (*(v58 + 32))(v66, v59, v97);
      sub_1CEFFC48C(v60, v63 + v62, type metadata accessor for LocalContainer);
      v106 = sub_1CF3262F4;
      v107 = v63;
      aBlock = MEMORY[0x1E69E9820];
      v103 = 1107296256;
      v104 = sub_1CF90535C;
      v105 = &block_descriptor_121;
      v68 = _Block_copy(&aBlock);

      v69 = v65;

      v70 = v100;
      v71 = v88;
      [v100 fp:v88 trashUnderFolder:v96 & 1 allowCoordination:v68 completionHandler:?];
      _Block_release(v68);

      (*(v58 + 8))(v99, v67);
      sub_1CF007BF8(v93, type metadata accessor for LocalContainer);
    }

    else
    {
      v72 = v41;
      v73 = aBlock;
      v74 = sub_1CF9E57F8();

      swift_willThrow();
      aBlock = 0;
      v103 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3F3C0);
      v108 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v75 = aBlock;
      v76 = v103;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v77 = qword_1EDEBB5A0;
      v78 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v79 = swift_allocObject();
      *(v79 + 16) = v88;
      *(v79 + 56) = MEMORY[0x1E69E6158];
      *(v79 + 64) = sub_1CEFD51C4();
      *(v79 + 32) = v75;
      *(v79 + 40) = v76;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v77, v78, v79);
      v79, v80, v81, v82, v83, v84, v85, v86;
      v87 = v74;
      v100(0, v74);

      (*(v98 + 8))(v72, v97);
      sub_1CF007BF8(v40, type metadata accessor for LocalContainer);
    }
  }

  return result;
}

void sub_1CF302914(uint64_t a1, void *a2, void (*a3)(id, uint64_t, id), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a6;
  v78 = a7;
  v80 = a4;
  v81 = a5;
  v79 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v73 - v10;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v73 - v25;
  v31 = MEMORY[0x1EEE9AC00](v27);
  v32 = v73 - v28;
  if (a2)
  {
    (*(v13 + 56))(v26, 1, 1, v12, v31);
    swift_getErrorValue();
    v33 = v82;
    v34 = v83;
    v35 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
    v36 = a2;
    v37 = sub_1CF7DBA58(v81 + v35, v33, v34);
    a3(0, v26, v37);

    v38 = v26;
LABEL_3:
    sub_1CEFCCC44(v38, &unk_1EC4BE310, qword_1CF9FCBE0);
    return;
  }

  v74 = v30;
  v75 = v29;
  v39 = v81;
  v76 = a3;
  sub_1CEFCCBDC(v79, v73 - v28, &unk_1EC4BE310, qword_1CF9FCBE0);
  v73[0] = *(v13 + 48);
  v73[1] = v13 + 48;
  if ((v73[0])(v32, 1, v12) == 1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  sub_1CEFFD30C(v39 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v21, type metadata accessor for LocalDomain);
  (*(v13 + 16))(v15, v32, v12);
  sub_1CEFFD30C(v21, v18, type metadata accessor for LocalDomain);
  v40 = type metadata accessor for VFSItem(0);
  (*(*(v40 - 8) + 56))(v11, 1, 1, v40);
  v41 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v42 = sub_1CF001704(v15, v18, v11);
  sub_1CF007BF8(v21, type metadata accessor for LocalDomain);
  v43 = *(v13 + 8);
  v43(v32, v12);
  if (!v42)
  {
    v69 = v75;
    (*(v13 + 56))(v75, 1, 1, v12);
    v70 = v74;
    sub_1CEFCCBDC(v79, v74, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((v73[0])(v70, 1, v12) != 1)
    {
      v71 = sub_1CF9E5928();
      v43(v70, v12);
      v72 = FPInvalidURLError();

      v76(0, v69, v72);
      v38 = v69;
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  sub_1CF4F1430();
  v84 = 2113085;
  v85 = 0xE300000000000000;
  v44 = [v42 description];
  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;

  MEMORY[0x1D3868CC0](v45, v47);
  v47, v48, v49, v50, v51, v52, v53, v54;
  v55 = v84;
  v56 = v85;
  v57 = v79;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v58 = qword_1EDEBB5A0;
  v59 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1CF9FA450;
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = sub_1CEFD51C4();
  *(v60 + 32) = v55;
  *(v60 + 40) = v56;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v58, v59, v60);
  v60, v61, v62, v63, v64, v65, v66, v67;
  v68 = v42;
  v76(v42, v57, 0);
}

void sub_1CF3030B4(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v3 = NSFileProviderItemIdentifier.description.getter(a1);
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDEBB5A0;
  v14 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v16 = sub_1CF9E7718();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1CEFD51C4();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = v19;
  *(v15 + 104) = v20;
  *(v15 + 64) = v20;
  *(v15 + 72) = 0x7469206873617274;
  *(v15 + 80) = 0xEB00000000206D65;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v13, v14, v15);
  v15, v21, v22, v23, v24, v25, v26, v27;
  sub_1CF304090(a1, a2, a3, v49);
  0xEB00000000206D65, v28, v29, v30, v31, v32, v33, v34;
  v35 = sub_1CF9E7298();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  v37 = sub_1CF9E7718();
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = v20;
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v13, v35, v36);
  v36, v39, v40, v41, v42, v43, v44, v45;
}

void sub_1CF303370(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v103 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v97 - v8;
  v9 = sub_1CF9E5A58();
  v101 = *(v9 - 8);
  v102 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1CF9E5268();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a1;
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;
  if (v16 == v19 && v18 == v20)
  {
    _Block_copy(a3);
LABEL_4:
    v18, v22, v23, v24, v25, v26, v27, v28;
    v21, v29, v30, v31, v32, v33, v34, v35;
LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v61 = sub_1CF9E50D8();
    (*(v13 + 8))(v15, v12);
    v62 = sub_1CF9E57E8();
    (a3)[2](a3, 0, v62);

    goto LABEL_8;
  }

  v36 = sub_1CF9E8048();
  _Block_copy(a3);
  v18, v37, v38, v39, v40, v41, v42, v43;
  v21, v44, v45, v46, v47, v48, v49, v50;
  if (v36)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v51;
  v53 = sub_1CF9E6AE8();
  v52, v54, v55, v56, v57, v58, v59, v60;
  if (v53)
  {
    goto LABEL_7;
  }

  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v64;
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v22;
  if (v63 == v23 && v18 == v22)
  {
    goto LABEL_4;
  }

  v65 = sub_1CF9E8048();
  v18, v66, v67, v68, v69, v70, v71, v72;
  v21, v73, v74, v75, v76, v77, v78, v79;
  if (v65)
  {
    goto LABEL_7;
  }

  v80 = v103;
  v81 = v99;
  sub_1CEFFD89C((v103 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, v104, v99);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
  {
    sub_1CEFCCC44(v81, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v83 = v100;
    (*(v101 + 56))(v100, 1, 1, v102);
LABEL_15:
    sub_1CEFCCC44(v83, &unk_1EC4BE310, qword_1CF9FCBE0);
    v88 = FPItemNotFoundError();
    if (v88)
    {
      v89 = sub_1CF9E57E8();
    }

    else
    {
      v89 = 0;
    }

    (a3)[2](a3, 0, v89);

    goto LABEL_8;
  }

  v84 = *(v82 + 48);
  v83 = v100;
  v85 = v101;
  v86 = *(v101 + 32);
  v87 = v102;
  v86(v100, v81, v102);
  (*(v85 + 56))(v83, 0, 1, v87);
  sub_1CEFCCC44(&v81[v84], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v85 + 48))(v83, 1, v87) == 1)
  {
    goto LABEL_15;
  }

  v90 = v98;
  v86(v98, v83, v87);
  v91 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v92 = sub_1CF9E6888();
  v93 = [v91 initWithSuiteName_];

  if (v93)
  {
    v94 = sub_1CF9E6888();
    v95 = [v93 BOOLForKey_];

    v96 = v95 ^ 1;
  }

  else
  {
    v96 = 1;
  }

  _Block_copy(a3);
  sub_1CF319228(v90, v96, v80, a3);
  _Block_release(a3);
  (*(v85 + 8))(v90, v87);
LABEL_8:
  _Block_release(a3);
  _Block_release(a3);
}

void sub_1CF303A28(uint64_t a1, uint64_t a2, void *a3)
{
  v102 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v96 - v8;
  v9 = sub_1CF9E5A58();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1CF9E5268();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a1;
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;
  if (v16 == v19 && v18 == v20)
  {
    v22 = a3;
LABEL_4:
    v18, v23, v24, v25, v26, v27, v28, v29;
    v21, v30, v31, v32, v33, v34, v35, v36;
LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v62 = sub_1CF9E50D8();
    (*(v13 + 8))(v15, v12);
    sub_1CF3195D4(v62);

    goto LABEL_8;
  }

  v37 = sub_1CF9E8048();
  v96 = a3;
  v18, v38, v39, v40, v41, v42, v43, v44;
  v21, v45, v46, v47, v48, v49, v50, v51;
  if (v37)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v53 = v52;
  v54 = sub_1CF9E6AE8();
  v53, v55, v56, v57, v58, v59, v60, v61;
  if (v54)
  {
    goto LABEL_7;
  }

  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v64;
  v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v23;
  if (v63 == v24 && v18 == v23)
  {
    goto LABEL_4;
  }

  v65 = sub_1CF9E8048();
  v18, v66, v67, v68, v69, v70, v71, v72;
  v21, v73, v74, v75, v76, v77, v78, v79;
  if (v65)
  {
    goto LABEL_7;
  }

  v80 = v102;
  v81 = v98;
  sub_1CEFFD89C((v102 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, v103, v98);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
  {
    sub_1CEFCCC44(v81, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v83 = v99;
    (*(v100 + 56))(v99, 1, 1, v101);
LABEL_15:
    sub_1CEFCCC44(v83, &unk_1EC4BE310, qword_1CF9FCBE0);
    v62 = FPItemNotFoundError();
    v88 = v96;
    sub_1CF3195D4(v62);

    goto LABEL_8;
  }

  v84 = *(v82 + 48);
  v83 = v99;
  v85 = v100;
  v86 = *(v100 + 32);
  v87 = v101;
  v86(v99, v81, v101);
  (*(v85 + 56))(v83, 0, 1, v87);
  sub_1CEFCCC44(&v81[v84], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v85 + 48))(v83, 1, v87) == 1)
  {
    goto LABEL_15;
  }

  v89 = v97;
  v86(v97, v83, v87);
  v90 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v91 = sub_1CF9E6888();
  v92 = [v90 initWithSuiteName_];

  if (v92)
  {
    v93 = sub_1CF9E6888();
    v94 = [v92 BOOLForKey_];

    v95 = v94 ^ 1;
  }

  else
  {
    v95 = 1;
  }

  v62 = v96;
  sub_1CF319A8C(v89, v95, v80, v62);

  (*(v85 + 8))(v89, v87);
LABEL_8:
}

void sub_1CF304090(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4)
{
  v96 = a4;
  v99 = a2;
  v100 = a3;
  v5 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CF9E5268();
  v98 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v93 - v13;
  v15 = sub_1CF9E5A58();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v20;
  if (v17 == v21 && v19 == v20)
  {
    goto LABEL_3;
  }

  v35 = sub_1CF9E8048();
  v19, v36, v37, v38, v39, v40, v41, v42;
  v27, v43, v44, v45, v46, v47, v48, v49;
  if (v35)
  {
    goto LABEL_6;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v50;
  v52 = sub_1CF9E6AE8();
  v51, v53, v54, v55, v56, v57, v58, v59;
  if (v52)
  {
    goto LABEL_6;
  }

  v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v62;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v20;
  if (v61 == v21 && v19 == v20)
  {
LABEL_3:
    v19, v20, v21, v22, v23, v24, v25, v26;
    v27, v28, v29, v30, v31, v32, v33, v34;
LABEL_6:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v60 = sub_1CF9E50D8();
    (*(v98 + 8))(v8, v6);
    v99(0, v60);

    return;
  }

  v63 = sub_1CF9E8048();
  v19, v64, v65, v66, v67, v68, v69, v70;
  v27, v71, v72, v73, v74, v75, v76, v77;
  if (v63)
  {
    goto LABEL_6;
  }

  v78 = v96;
  sub_1CEFFD89C((v96 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, v97, v11);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v79 - 8) + 48))(v11, 1, v79) == 1)
  {
    sub_1CEFCCC44(v11, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v94 + 56))(v14, 1, 1, v95);
LABEL_13:
    sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
    v84 = FPItemNotFoundError();
    v99(0, v84);

    return;
  }

  v80 = *(v79 + 48);
  v82 = v94;
  v81 = v95;
  v83 = *(v94 + 32);
  v83(v14, v11, v95);
  (*(v82 + 56))(v14, 0, 1, v81);
  sub_1CEFCCC44(&v11[v80], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v82 + 48))(v14, 1, v81) == 1)
  {
    goto LABEL_13;
  }

  v85 = v93;
  v83(v93, v14, v81);
  v86 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v87 = sub_1CF9E6888();
  v88 = [v86 initWithSuiteName_];

  if (v88)
  {
    v89 = sub_1CF9E6888();
    v90 = [v88 BOOLForKey_];

    v91 = v90 ^ 1;
  }

  else
  {
    v91 = 1;
  }

  v92 = v100;

  sub_1CF319E34(v85, v91, v78, v99, v92, sub_1CF301E8C);

  (*(v82 + 8))(v85, v81);
}

void sub_1CF304734(void *a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  strcpy(v54, "untrash item ");
  HIWORD(v54[1]) = -4864;
  v4 = NSFileProviderItemIdentifier.description.getter(a1);
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = v54[1];
  v48 = v54[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDEBB5A0;
  v16 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v18 = sub_1CF9E7718();
  v20 = v19;
  v21 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v22 = sub_1CEFD51C4();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = v21;
  *(v17 + 104) = v22;
  *(v17 + 64) = v22;
  *(v17 + 72) = v48;
  *(v17 + 80) = v14;

  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v15, v16, v17);
  v17, v23, v24, v25, v26, v27, v28, v29;
  sub_1CF306B48(a1, a3, a4, v53, a2);
  v14, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1CF9E7298();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CF9FA450;
  v39 = sub_1CF9E7718();
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 64) = v22;
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v15, v37, v38);
  v38, v41, v42, v43, v44, v45, v46, v47;
}

void sub_1CF3049FC(void *a1, char *a2, uint64_t a3, const void *a4)
{
  v458 = a3;
  v461 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v450 = (v420 - v7);
  v449 = type metadata accessor for LocalContainer(0);
  v443 = *(v449 - 8);
  MEMORY[0x1EEE9AC00](v449);
  v438 = v420 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v444 = v420 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v460 = v420 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v457 = v420 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v456 = v420 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v455 = v420 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v459 = v420 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v442 = v420 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v446 = v420 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v465 = v420 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v454 = v420 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v420 - v30;
  v448 = sub_1CF9E5A58();
  v464 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v440 = v420 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v445 = v420 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v462 = v420 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v451 = v420 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v453 = v420 - v40;
  v447 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v447);
  v441 = v420 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v439 = v420 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v452 = (v420 - v45);
  v46 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v47 = sub_1CF9E5268();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = v420 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_allocObject();
  v468 = a4;
  v466 = v51;
  *(v51 + 16) = a4;
  v52 = *MEMORY[0x1E6967258];
  v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v55 = v54;
  v463 = v52;
  v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v58 = v57;
  if (v53 == v56 && v55 == v57)
  {
    _Block_copy(v468);
LABEL_4:
    v55, v59, v60, v61, v62, v63, v64, v65;
    v58, v66, v67, v68, v69, v70, v71, v72;
LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v98 = sub_1CF9E50D8();
    (*(v48 + 8))(v50, v47);
    v99 = sub_1CF9E57E8();
    v100 = v468;
    (*(v468 + 2))(v468, 0, v99);

    goto LABEL_8;
  }

  v73 = sub_1CF9E8048();
  _Block_copy(v468);
  v55, v74, v75, v76, v77, v78, v79, v80;
  v58, v81, v82, v83, v84, v85, v86, v87;
  if (v73)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v89 = v88;
  v90 = sub_1CF9E6AE8();
  v89, v91, v92, v93, v94, v95, v96, v97;
  if (v90)
  {
    goto LABEL_7;
  }

  v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v55 = v102;
  v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v103 = v101;
  v58 = v59;
  if (v103 == v60 && v55 == v59)
  {
    goto LABEL_4;
  }

  v104 = sub_1CF9E8048();
  v55, v105, v106, v107, v108, v109, v110, v111;
  v58, v112, v113, v114, v115, v116, v117, v118;
  if (v104)
  {
    goto LABEL_7;
  }

  v429 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v119 = v452;
  sub_1CEFFD30C(&v461[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], v452, type metadata accessor for LocalDomain);
  v120 = a1;
  v121 = sub_1CEFFD444(v120, v119);
  if (v121)
  {
    v426 = v120;
    v122 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
    v123 = v121;
    swift_beginAccess();
    v435 = v123;
    v430 = v122;
    sub_1CEFCCBDC(v123 + v122, v31, &unk_1EC4BE310, qword_1CF9FCBE0);
    v124 = v464;
    v125 = v464 + 48;
    v126 = *(v464 + 48);
    v127 = v448;
    if (v126(v31, 1, v448) == 1)
    {
      goto LABEL_93;
    }

    v128 = *(v124 + 32);
    v432 = v124 + 32;
    v431 = v128;
    v128(v453, v31, v127);
    v130 = *(v124 + 56);
    v129 = v124 + 56;
    v131 = v454;
    v434 = v130;
    v130(v454, 1, 1, v127);
    v428 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain;
    v433 = (v129 - 48);
    v132 = v465;
    sub_1CEFCCBDC(v131, v465, &unk_1EC4BE310, qword_1CF9FCBE0);
    v133 = v127;
    v436 = v125;
    v437 = v126;
    v134 = v126(v132, 1, v127);
    sub_1CEFCCC44(v132, &unk_1EC4BE310, qword_1CF9FCBE0);
    v135 = v467;
    if (v134 == 1)
    {
      v136 = 0;
      v428 += v435;
      v423 = (v129 - 40);
      tester = v443[1].tester;
      v422 = &v471;
      tree = v443[1].tree;
      v464 = v129;
      v137 = v460;
      v138 = v459;
      v139 = v454;
      while (1)
      {
        if (v136 > 1)
        {
          if (v136 != 2)
          {
            v262 = v439;
            sub_1CEFFD30C(&v461[v429], v439, type metadata accessor for LocalDomain);
            v263 = *v423;
            (*v423)(v440, v262 + *(v447 + 32), v133);
            sub_1CEFFD30C(v262, v441, type metadata accessor for LocalDomain);
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v265 = v264;
            v266 = sub_1CF9E6AE8();
            v265, v267, v268, v269, v270, v271, v272, v273;
            if ((v266 & 1) == 0)
            {
              v274 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v276 = v275;
              v278 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v284 = v274;
              v285 = v277;
              if (v284 == v278 && v276 == v277)
              {
                v276, v277, v278, v279, v280, v281, v282, v283;
                v285, v286, v287, v288, v289, v290, v291, v292;
              }

              else
              {
                v293 = sub_1CF9E8048();
                v276, v294, v295, v296, v297, v298, v299, v300;
                v285, v301, v302, v303, v304, v305, v306, v307;
                if ((v293 & 1) == 0)
                {

                  _Block_release(v468);
                  sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
                }
              }
            }

            v308 = v440;
            if ((sub_1CF9E5848() & 1) == 0)
            {

              _Block_release(v468);
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
            }

            v309 = v438;
            *(v438 + 1) = 0;
            *(v309 + 2) = 0;
            v310 = v463;
            *v309 = v463;
            v311 = v449;
            sub_1CEFFD30C(v441, &v309[*(v449 + 24)], type metadata accessor for LocalDomain);
            v312 = v310;
            if ((sub_1CF9E5848() & 1) == 0)
            {
LABEL_98:

              _Block_release(v468);
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
            }

            v313 = *(v311 + 28);
            sub_1CF9E5A18();
            v315 = v314;
            v316 = sub_1CF9E6AE8();
            v315, v317, v318, v319, v320, v321, v322, v323;
            if (v316)
            {
              v324 = sub_1CF9E5A18();
              v326 = v325;
              aBlock = 0x657461766972702FLL;
              v470 = 0xE800000000000000;
              MEMORY[0x1D3868CC0](v324);
              v326, v327, v328, v329, v330, v331, v332, v333;
              v334 = v470;
              sub_1CF9E58C8();
              v334, v335, v336, v337, v338, v339, v340, v341;
              sub_1CF007BF8(v441, type metadata accessor for LocalDomain);
              v342 = v308;
              v343 = v133;
              (*v433)(v342, v133);
              sub_1CF007BF8(v439, type metadata accessor for LocalDomain);
            }

            else
            {
              sub_1CF007BF8(v441, type metadata accessor for LocalDomain);
              sub_1CF007BF8(v439, type metadata accessor for LocalDomain);
              v344 = v308;
              v343 = v133;
              v431(&v309[v313], v344, v133);
            }

            v309[*(v449 + 32)] = 1;
            v345 = v454;
            sub_1CEFCCC44(v454, &unk_1EC4BE310, qword_1CF9FCBE0);
            v263(v345, &v309[v313], v343);
            v139 = v345;
            sub_1CF007BF8(v309, type metadata accessor for LocalContainer);
            v434(v345, 0, 1, v343);
            goto LABEL_80;
          }

          v150 = sub_1CF4F1CC8();
          sub_1CEFCCC44(v139, &unk_1EC4BE310, qword_1CF9FCBE0);
          if (v150)
          {
            v140 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
            swift_beginAccess();
            v141 = v150 + v140;
            v142 = v457;
            sub_1CEFCCBDC(v141, v457, &unk_1EC4BE310, qword_1CF9FCBE0);
          }

          else
          {
            v142 = v457;
            v434(v457, 1, 1, v133);
          }

          sub_1CEFE55D0(v142, v139, &unk_1EC4BE310, qword_1CF9FCBE0);
          v136 = 3;
          goto LABEL_18;
        }

        v148 = v133;
        if (!v136)
        {
          if (v458)
          {
            sub_1CEFFD89C(&v461[v429], 1u, v458, v137);
            sub_1CEFCCC44(v139, &unk_1EC4BE310, qword_1CF9FCBE0);
            v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
            if ((*(*(v149 - 8) + 48))(v137, 1, v149) == 1)
            {
              sub_1CEFCCC44(v137, &qword_1EC4BF5F8, &qword_1CFA01DB8);
              goto LABEL_34;
            }

            v198 = *(v149 + 48);
            v431(v138, v137, v133);
            v434(v138, 0, 1, v133);
            sub_1CEFCCC44(&v137[v198], &unk_1EC4BEC00, &unk_1CF9FCB60);
          }

          else
          {
            sub_1CEFCCC44(v139, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_34:
            v434(v138, 1, 1, v133);
          }

          sub_1CEFE55D0(v138, v139, &unk_1EC4BE310, qword_1CF9FCBE0);
          v136 = 1;
          goto LABEL_18;
        }

        v151 = v456;
        sub_1CEFCCBDC(v435 + v430, v456, &unk_1EC4BE310, qword_1CF9FCBE0);
        if (v437(v151, 1, v133) == 1)
        {
          sub_1CEFCCC44(v151, &unk_1EC4BE310, qword_1CF9FCBE0);
          aBlock = 0;
          v470 = 0xE000000000000000;
          sub_1CF9E7948();
          v470, v400, v401, v402, v403, v404, v405, v406;
          aBlock = 0x20676E697373696DLL;
          v470 = 0xEF206E6F204C5255;
          v407 = [v435 description];
          v408 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v410 = v409;

          MEMORY[0x1D3868CC0](v408, v410);

          v410, v411, v412, v413, v414, v415, v416, v417;
          _Block_release(v468);
          LODWORD(v419) = 0;
          p_aBlock = 608;
          sub_1CF9E7B68();
          __break(1u);
LABEL_97:

          _Block_release(v468);
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 67);
        }

        v152 = v462;
        v153 = (v431)(v462, v151, v133);
        aBlock = 0;
        v470 = 0;
        MEMORY[0x1EEE9AC00](v153);
        p_aBlock = &aBlock;
        v154 = sub_1CF9E5848();
        if ((v154 & 1) == 0)
        {
          goto LABEL_95;
        }

        MEMORY[0x1EEE9AC00](v154);
        p_aBlock = sub_1CF32747C;
        v419 = &v420[-4];
        sub_1CF9E59B8();
        if (v135)
        {
          break;
        }

        v165 = v470;
        v166 = v437;
        if (v470)
        {
          v167 = aBlock;
          if ((sub_1CF9E5848() & 1) == 0)
          {

            _Block_release(v468);
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 236);
          }

          v168 = sub_1CF9E5848();
          v169 = v445;
          if ((v168 & 1) == 0)
          {
            goto LABEL_98;
          }

          sub_1CF9E5A18();
          v171 = v170;
          v172 = sub_1CF9E6AE8();
          v171, v173, v174, v175, v176, v177, v178, v179;
          v443 = v165;
          if (v172)
          {
            v180 = sub_1CF9E5A18();
            v182 = v181;
            aBlock = 0x657461766972702FLL;
            v470 = 0xE800000000000000;
            MEMORY[0x1D3868CC0](v180);
            v182, v183, v184, v185, v186, v187, v188, v189;
            v190 = v470;
            sub_1CF9E58C8();
            v190, v191, v192, v193, v194, v195, v196, v197;
          }

          else
          {
            (*v423)(v169, v152, v148);
          }

          v199 = sub_1CF9E5A18();
          v201 = v200;
          v155 = *v433;
          (*v433)(v169, v148);
          v202 = v428;
          sub_1CF9E5A18();
          v204 = v203;
          v205 = sub_1CF9E6AE8();
          v204, v206, v207, v208, v209, v210, v211, v212;
          v427 = v167;
          if (v205)
          {
            v424 = v155;
            v201, v213, v214, v215, v216, v217, v218, v219;
            v220 = v202;
            v221 = v452;
            sub_1CEFFD30C(v220, v452, type metadata accessor for LocalDomain);
            v222 = v450;
            sub_1CF000318(v221, v450);
            (*tester)(v222, 0, 1, v449);
            v139 = v454;
            goto LABEL_52;
          }

          v424 = v201;
          (*tester)(v450, 1, 1, v449);
          v223 = type metadata accessor for LocalContainerMonitor(0);
          if (qword_1EDEA56B8 != -1)
          {
            v223 = swift_once();
          }

          MEMORY[0x1EEE9AC00](v223);
          v224 = v428;
          v225 = sub_1CF9E7398();
          v467 = 0;
          v420[1] = v420;
          v226 = aBlock;
          MEMORY[0x1EEE9AC00](v225);
          v227 = v424;
          v420[-4] = v199;
          v420[-3] = v227;
          p_aBlock = v450;
          v419 = v224;
          v228 = *&v226[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
          v229 = swift_allocObject();
          v229[2] = v226;
          v229[3] = sub_1CF3272E4;
          v229[4] = &v420[-6];
          v230 = swift_allocObject();
          *(v230 + 16) = sub_1CF327480;
          *(v230 + 24) = v229;
          v473 = sub_1CF1C0B54;
          v474 = v230;
          aBlock = MEMORY[0x1E69E9820];
          v470 = 1107296256;
          v471 = sub_1CEFFD02C;
          v472 = &block_descriptor_289;
          v231 = _Block_copy(&aBlock);
          v232 = v226;

          dispatch_sync(v228, v231);

          v227, v233, v234, v235, v236, v237, v238, v239;
          _Block_release(v231);
          LOBYTE(v224) = swift_isEscapingClosureAtFileLocation();

          if (v224)
          {
            __break(1u);
LABEL_93:
            _Block_release(v468);
            __break(1u);
LABEL_94:
            _Block_release(v468);
            __break(1u);
LABEL_95:

            _Block_release(v468);
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
          }

          v222 = v450;
          v240 = (*tree)(v450, 1, v449);
          v148 = v448;
          v139 = v454;
          if (v240 == 1)
          {
            (v155)(v462, v448);
            v443, v241, v242, v243, v244, v245, v246, v247;
            sub_1CEFCCC44(v222, &unk_1EC4C1110, &qword_1CFA08100);
            v163 = 1;
            v135 = v467;
LABEL_32:
            v164 = v455;
          }

          else
          {
            v424 = v155;
            v135 = v467;
LABEL_52:
            v248 = v444;
            sub_1CEFFC48C(v222, v444, type metadata accessor for LocalContainer);
            v164 = v455;
            v249 = v443;
            sub_1CF9E5958();
            v249, v250, v251, v252, v253, v254, v255, v256;
            sub_1CF007BF8(v248, type metadata accessor for LocalContainer);
            v155 = v424;
            (v424)(v462, v148);
            v163 = 0;
          }

          v166 = v437;
          goto LABEL_54;
        }

        v155 = *v433;
        (*v433)(v152, v133);
        v163 = 1;
        v164 = v455;
LABEL_54:
        v434(v164, v163, 1, v148);
        if (v166(v164, 1, v148) == 1)
        {
          v133 = v148;
          sub_1CEFCCC44(v164, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        else
        {
          v257 = v451;
          v431(v451, v164, v148);
          v258 = sub_1CF9E5848();
          if ((v258 & 1) == 0)
          {
            goto LABEL_97;
          }

          MEMORY[0x1EEE9AC00](v258);
          LODWORD(p_aBlock) = 4;
          sub_1CF9E59B8();
          if (v135)
          {

            v133 = v148;
            (v155)(v257, v148);
            v135 = 0;
LABEL_63:
            v136 = 2;
            v137 = v460;
            v138 = v459;
            goto LABEL_18;
          }

          if ((aBlock & 1) == 0)
          {
            v133 = v148;
            (v155)(v257, v148);
            goto LABEL_63;
          }

          sub_1CEFCCC44(v139, &unk_1EC4BE310, qword_1CF9FCBE0);
          v431(v139, v257, v148);
          v133 = v148;
          v434(v139, 0, 1, v148);
        }

        v136 = 2;
        v137 = v460;
        v138 = v459;
LABEL_18:
        v143 = v139;
        v144 = v139;
        v145 = v465;
        sub_1CEFCCBDC(v143, v465, &unk_1EC4BE310, qword_1CF9FCBE0);
        v146 = v437(v145, 1, v133);
        v147 = v145;
        v139 = v144;
        sub_1CEFCCC44(v147, &unk_1EC4BE310, qword_1CF9FCBE0);
        if (v146 != 1)
        {
          goto LABEL_80;
        }
      }

      v155 = *v433;
      (*v433)(v152, v133);

      v470, v156, v157, v158, v159, v160, v161, v162;
      v135 = 0;
      v163 = 1;
      goto LABEL_32;
    }

    v139 = v454;
LABEL_80:
    v346 = v446;
    sub_1CEFCCBDC(v139, v446, &unk_1EC4BE310, qword_1CF9FCBE0);
    v347 = v139;
    v348 = v437;
    v349 = v437(v346, 1, v133);
    sub_1CEFCCC44(v346, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v349 == 1)
    {
      v350 = v133;
      aBlock = 0;
      v470 = 0xE000000000000000;
      sub_1CF9E7948();
      v470, v351, v352, v353, v354, v355, v356, v357;
      aBlock = 0xD000000000000027;
      v470 = 0x80000001CFA3F4B0;
      v358 = [v435 description];
      v359 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v361 = v360;

      MEMORY[0x1D3868CC0](v359, v361);
      v361, v362, v363, v364, v365, v366, v367, v368;
      v369 = aBlock;
      v370 = v470;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v371 = qword_1EDEBB5A0;
      v372 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v373 = swift_allocObject();
      *(v373 + 16) = xmmword_1CF9FA450;
      *(v373 + 56) = MEMORY[0x1E69E6158];
      *(v373 + 64) = sub_1CEFD51C4();
      *(v373 + 32) = v369;
      *(v373 + 40) = v370;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v371, v372, v373);
      v373, v374, v375, v376, v377, v378, v379, v380;
      v381 = sub_1CF9E6888();
      v382 = FPInvalidParameterError();

      if (v382)
      {
        v383 = sub_1CF9E57E8();
      }

      else
      {
        v383 = 0;
      }

      v100 = v468;
      v394 = v435;
      (*(v468 + 2))(v468, 0, v383);

      sub_1CEFCCC44(v347, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*v433)(v453, v350);
    }

    else
    {
      v467 = sub_1CF9E5928();
      v384 = v442;
      sub_1CEFCCBDC(v347, v442, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v348(v384, 1, v133) == 1)
      {
        goto LABEL_94;
      }

      v385 = v133;
      v386 = sub_1CF9E5928();
      v387 = *v433;
      (*v433)(v384, v133);
      v388 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v389 = sub_1CF9E6888();
      v390 = [v388 initWithSuiteName_];

      if (v390)
      {
        v391 = sub_1CF9E6888();
        v392 = [v390 BOOLForKey_];

        v393 = v392 ^ 1;
      }

      else
      {
        v393 = 1;
      }

      v395 = swift_allocObject();
      v396 = v461;
      v395[2] = v461;
      v395[3] = sub_1CEFFA830;
      v395[4] = v466;
      v473 = sub_1CF327390;
      v474 = v395;
      aBlock = MEMORY[0x1E69E9820];
      v470 = 1107296256;
      v471 = sub_1CF90535C;
      v472 = &block_descriptor_296;
      v397 = _Block_copy(&aBlock);
      v398 = v396;

      v399 = v467;
      [v467 fp:v386 reparentUnderFolder:1 allowBouncing:v393 allowCoordination:v397 completionHandler:?];
      _Block_release(v397);

      sub_1CEFCCC44(v454, &unk_1EC4BE310, qword_1CF9FCBE0);
      (v387)(v453, v385);

      v100 = v468;
    }
  }

  else
  {
    v259 = sub_1CF9E6888();
    v260 = FPInvalidParameterError();

    v100 = v468;
    if (v260)
    {
      v261 = sub_1CF9E57E8();
    }

    else
    {
      v261 = 0;
    }

    v100[2](v100, 0, v261);
  }

LABEL_8:
  _Block_release(v100);
}