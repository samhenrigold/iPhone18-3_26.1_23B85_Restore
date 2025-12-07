void *sub_185B27254()
{
  result = sub_185B27274();
  off_1EA8CD3B8 = result;
  return result;
}

uint64_t sub_185B27274()
{
  v0 = sub_185B67A0C();
  v1 = *(v0 - 8);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD3C8, &unk_185B6E268);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_185B6E230;
  if (qword_1EA8CB930 != -1)
  {
    v19 = v7;
    swift_once();
    v7 = v19;
  }

  v21 = v7;
  v8 = v7 + v6;
  v9 = __swift_project_value_buffer(v0, qword_1EA8CB938);
  v10 = *(v2 + 16);
  v10(v8, v9, v0);
  v10(v4, v9, v0);
  v11 = sub_185B679CC();
  v13 = v12;
  v14 = *(v2 + 8);
  v14(v4, v0);
  v22 = v11;
  v23 = v13;

  MEMORY[0x1865FCF60](1818326829, 0xE400000000000000);

  sub_185B6797C();

  v10(v4, v9, v0);
  v15 = sub_185B679DC();
  v17 = v16;
  v14(v4, v0);
  v22 = v15;
  v23 = v17;

  MEMORY[0x1865FCF60](1835561773, 0xE400000000000000);

  sub_185B6797C();

  return v21;
}

id sub_185B27508(uint64_t a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = sub_185B67A0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v102 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v102 - v13;
  if (qword_1EA8CB718 != -1)
  {
    v101 = v12;
    swift_once();
    v12 = v101;
  }

  v113 = v11;
  v114 = v12;
  v15 = sub_185B67B8C();
  v115 = __swift_project_value_buffer(v15, qword_1EA8D2278);
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_185AC1000, v16, v17, "creating container for daemon", v18, 2u);
    MEMORY[0x1865FE2F0](v18, -1, -1);
  }

  v19 = [objc_allocWithZone(type metadata accessor for APDaemonPersistentContainer()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_185B6C470;
  v21 = v19;
  *(v20 + 32) = sub_185B28628();
  sub_185B28C9C();
  v22 = sub_185B67F5C();

  [v21 setPersistentStoreDescriptions_];

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = (v23 + 16);
  aBlock[4] = sub_185B28CE8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185B28470;
  aBlock[3] = &block_descriptor_15;
  v25 = _Block_copy(aBlock);

  [v21 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v25);
  swift_beginAccess();
  if (!*(v23 + 16))
  {
    goto LABEL_38;
  }

  v111 = v8;
  v107 = v23;

  v26 = sub_185B67B6C();
  v27 = sub_185B6809C();
  v28 = os_log_type_enabled(v26, v27);
  if (a1 <= 0)
  {
    if (v28)
    {
      v105 = v21;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v123 = v49;
      *v48 = 136315138;
      if (!*v24)
      {
        goto LABEL_40;
      }

      ErrorValue = swift_getErrorValue();
      v120 = &v102;
      v51 = v122;
      v52 = *(v122 - 8);
      MEMORY[0x1EEE9AC00](ErrorValue);
      v54 = &v102 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v54);

      v55 = sub_185B685EC();
      v57 = v56;
      (*(v52 + 8))(v54, v51);
      v58 = sub_185ACB2C4(v55, v57, &v123);

      *(v48 + 4) = v58;
      _os_log_impl(&dword_185AC1000, v26, v27, "Couldn't load persistent store after all retries: %s, marking container as unavailable. Disk is likely full.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x1865FE2F0](v49, -1, -1);
      MEMORY[0x1865FE2F0](v48, -1, -1);

      v21 = v105;
    }

    else
    {
    }

    *(v21 + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) = 0;
LABEL_38:

    return v21;
  }

  v29 = &unk_185B6B000;
  v105 = v21;
  v104 = v2;
  v103 = a1;
  if (!v28)
  {

    v47 = v113;
LABEL_17:
    if (qword_1EA8CC3E8 != -1)
    {
      swift_once();
    }

    v59 = off_1EA8CD3B8;
    v60 = *(off_1EA8CD3B8 + 2);
    v61 = v114;
    if (v60)
    {
      v62 = objc_opt_self();
      v65 = *(v5 + 16);
      v64 = v5 + 16;
      v63 = v65;
      v66 = &v59[(*(v64 + 64) + 32) & ~*(v64 + 64)];
      v120 = *(v64 + 56);
      v116 = *MEMORY[0x1E696A250];
      v119 = (v64 - 8);
      v102 = v59;

      *&v67 = v29[361];
      v106 = v67;
      v112 = v64;
      v117 = v62;
      v118 = v65;
      while (1)
      {
        v63(v47, v66, v61);
        v70 = [v62 defaultManager];
        v71 = sub_185B6799C();
        v123 = 0;
        v72 = [v70 removeItemAtURL:v71 error:&v123];

        if (v72)
        {
          v68 = *v119;
          v69 = v123;
          v68(v47, v61);
        }

        else
        {
          v73 = v123;
          v74 = sub_185B6792C();

          swift_willThrow();
          v75 = sub_185B6791C();
          v76 = [v75 domain];
          v77 = sub_185B67E4C();
          v79 = v78;

          if (v77 == sub_185B67E4C() && v79 == v80)
          {
          }

          else
          {
            v81 = sub_185B6859C();

            if ((v81 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          if ([v75 code] != 4)
          {
LABEL_30:
            v82 = v111;
            v63 = v118;
            v118(v111, v47, v61);
            v83 = v74;
            v84 = sub_185B67B6C();
            v85 = sub_185B6809C();

            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v108 = v85;
              v88 = v82;
              v109 = v87;
              v123 = v87;
              *v86 = v106;
              sub_185B28CF0();
              v89 = sub_185B6856C();
              v91 = v90;
              v92 = *v119;
              v110 = v75;
              v92(v88, v114);
              v93 = sub_185ACB2C4(v89, v91, &v123);

              *(v86 + 4) = v93;
              *(v86 + 12) = 2080;
              swift_getErrorValue();
              v94 = sub_185B685EC();
              v96 = sub_185ACB2C4(v94, v95, &v123);

              *(v86 + 14) = v96;
              v61 = v114;
              _os_log_impl(&dword_185AC1000, v84, v108, "Could not remove store file %s: %s", v86, 0x16u);
              v97 = v109;
              swift_arrayDestroy();
              MEMORY[0x1865FE2F0](v97, -1, -1);
              v98 = v86;
              v63 = v118;
              MEMORY[0x1865FE2F0](v98, -1, -1);

              v47 = v113;
              v92(v113, v61);
            }

            else
            {

              v99 = *v119;
              (*v119)(v82, v61);
              v47 = v113;
              v99(v113, v61);
            }

            v62 = v117;
            goto LABEL_22;
          }

          (*v119)(v47, v61);

          v62 = v117;
          v63 = v118;
        }

LABEL_22:
        v66 += v120;
        if (!--v60)
        {

          break;
        }
      }
    }

    v21 = sub_185B27508(v103 - 1);

    goto LABEL_38;
  }

  v112 = v5;
  v30 = swift_slowAlloc();
  v120 = swift_slowAlloc();
  v123 = v120;
  *v30 = 136315394;
  if (*v24)
  {
    v31 = swift_getErrorValue();
    v32 = v121;
    v33 = *(v121 - 8);
    MEMORY[0x1EEE9AC00](v31);
    v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v35);

    v36 = sub_185B685EC();
    v38 = v37;
    (*(v33 + 8))(v35, v32);
    v39 = sub_185ACB2C4(v36, v38, &v123);

    *(v30 + 4) = v39;
    *(v30 + 12) = 2080;
    if (qword_1EA8CB930 != -1)
    {
      swift_once();
    }

    v40 = v114;
    v41 = __swift_project_value_buffer(v114, qword_1EA8CB938);
    v5 = v112;
    (*(v112 + 16))(v14, v41, v40);
    sub_185B28CF0();
    v42 = sub_185B6856C();
    v44 = v43;
    (*(v5 + 8))(v14, v40);
    v45 = sub_185ACB2C4(v42, v44, &v123);

    *(v30 + 14) = v45;
    _os_log_impl(&dword_185AC1000, v26, v27, "Couldn't load persistent store: %s, deleting %s and retrying", v30, 0x16u);
    v46 = v120;
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v46, -1, -1);
    MEMORY[0x1865FE2F0](v30, -1, -1);

    v47 = v113;
    v29 = &unk_185B6B000;
    goto LABEL_17;
  }

  __break(1u);
LABEL_40:

  __break(1u);
  return result;
}

void sub_185B2829C(void *a1, void *a2, uint64_t a3)
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = a1;
  v8 = a2;
  v9 = sub_185B67B6C();
  v10 = sub_185B680AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v7;
    *v12 = v7;
    *(v11 + 12) = 2112;
    v13 = v7;
    if (a2)
    {
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v11 + 14) = v15;
    v12[1] = v16;
    _os_log_impl(&dword_185AC1000, v9, v10, "container description %@ load error %@", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v12, -1, -1);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  swift_beginAccess();
  v17 = *(a3 + 16);
  *(a3 + 16) = a2;
  v18 = a2;
}

void sub_185B28470(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_185B285CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for APDaemonPersistentContainer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_185B28628()
{
  v0 = sub_185B67A0C();
  v1 = *(v0 - 1);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
LABEL_20:
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1EA8D2278);
  v5 = sub_185B67B6C();
  v6 = sub_185B680AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136315138;
    if (qword_1EA8CB930 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v0, qword_1EA8CB938);
    (v1[2])(v3, v9, v0);
    sub_185B28CF0();
    v10 = sub_185B6856C();
    v12 = v11;
    (v1[1])(v3, v0);
    v13 = sub_185ACB2C4(v10, v12, &v33);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_185AC1000, v5, v6, "creating store description for store at %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD3D0, &qword_185B6E278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB70;
  *(inited + 32) = sub_185B67E4C();
  v15 = *MEMORY[0x1E696A3A8];
  *(inited + 40) = v16;
  *(inited + 48) = v15;
  v17 = v15;
  v18 = sub_185B52D3C(inited);
  swift_setDeallocating();
  sub_185B28D48(inited + 32);
  if (qword_1EA8CB930 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v0, qword_1EA8CB938);
  (v1[2])(v3, v19, v0);
  v20 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
  v21 = sub_185B6799C();
  v22 = [v20 initWithURL_];

  (v1[1])(v3, v0);
  v23 = 0;
  v24 = 1 << *(v18 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v18 + 64);
  v27 = (v24 + 63) >> 6;
  v1 = &off_1E6EE9000;
  if (v26)
  {
    while (1)
    {
      v28 = v23;
LABEL_16:
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v30 = v29 | (v28 << 6);
      v3 = *(*(v18 + 48) + 16 * v30 + 8);
      v31 = *(*(v18 + 56) + 8 * v30);

      v0 = sub_185B67E1C();

      [v22 setOption:v31 forKey:v0];

      if (!v26)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = *(v18 + 64 + 8 * v28);
    ++v23;
    if (v26)
    {
      v23 = v28;
      goto LABEL_16;
    }
  }

  return v22;
}

void sub_185B28A90()
{
  v0 = sub_185B67A0C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  if (qword_1EA8CB958 != -1)
  {
    swift_once();
  }

  v7 = qword_1EA8CB960;
  v8 = sub_185B67E1C();
  v9 = sub_185B67E1C();
  v10 = [v7 URLForResource:v8 withExtension:v9];

  if (v10)
  {
    sub_185B679BC();

    (*(v1 + 32))(v6, v4, v0);
    v11 = objc_allocWithZone(MEMORY[0x1E695D638]);
    v12 = sub_185B6799C();
    v13 = [v11 initWithContentsOfURL_];

    if (v13)
    {
      (*(v1 + 8))(v6, v0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_185B28C9C()
{
  result = qword_1EA8CB628;
  if (!qword_1EA8CB628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CB628);
  }

  return result;
}

unint64_t sub_185B28CF0()
{
  result = qword_1EA8CBFF0;
  if (!qword_1EA8CBFF0)
  {
    sub_185B67A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CBFF0);
  }

  return result;
}

uint64_t sub_185B28D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD3D8, &unk_185B6E280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B28DB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_185B28E50(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

void sub_185B29064(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 104));
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v7));
  sub_185B29860(v3 + v6, v25);
  os_unfair_lock_unlock((v3 + v7));
  v8 = LOBYTE(v25[0]);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v9 = sub_185B67B8C();
  __swift_project_value_buffer(v9, qword_1EA8D2278);
  v10 = sub_185B67B6C();
  v11 = sub_185B680AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136446210;
    v14 = v8 == 0;
    if (v8)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2125678;
    }

    v24 = v8;
    v16 = v5;
    v17 = v4;
    v18 = a1;
    if (v14)
    {
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v20 = sub_185ACB2C4(v15, v19, v25);
    a1 = v18;
    v4 = v17;
    v5 = v16;
    v8 = v24;

    *(v12 + 4) = v20;
    _os_log_impl(&dword_185AC1000, v10, v11, "%{public}sneed to kick off authentication for queued provider.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1865FE2F0](v13, -1, -1);
    MEMORY[0x1865FE2F0](v12, -1, -1);
  }

  if (v8)
  {
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v4;
    v22[3] = v5;
    v22[4] = v21;
    v23 = *(v5 + 40);

    v23(a1, sub_185B29880, v22, v4, v5);
  }
}

uint64_t sub_185B2935C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_185B3CF3C(0, v9[2] + 1, 1, v9);
    v9 = result;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    result = sub_185B3CF3C((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = sub_185B298A8;
  v13[5] = v8;
  *(a1 + 8) = v9;
  LOBYTE(v13) = *a1;
  *a1 = 1;
  *a4 = (v13 & 1) == 0;
  return result;
}

uint64_t sub_185B29460(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + *(*result + 104));
    MEMORY[0x1EEE9AC00](result);
    v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v6 + v8));
    sub_185B2988C(v6 + v7, &v14);
    os_unfair_lock_unlock((v6 + v8));

    v9 = *(v14 + 16);
    if (v9)
    {
      v10 = a1 & 1;
      v11 = v14 + 40;
      do
      {
        v12 = *(v11 - 8);
        v13[0] = v10;
        v14 = a2;

        v12(v13, &v14);

        v11 += 16;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

uint64_t sub_185B2965C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t sub_185B296E8()
{
  sub_185B2965C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_185B29758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_185B2988C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = *(result + 8);
  *(result + 8) = MEMORY[0x1E69E7CC0];
  *result = 0;
  return result;
}

void sub_185B298D8(uint64_t a1)
{
  v46 = a1;
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v45 = v1;
  v14 = *(**&v1[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  explicit = atomic_load_explicit(v14(v15), memory_order_acquire);

  if (explicit)
  {
    v30 = v46;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v31 = sub_185B67B8C();
    __swift_project_value_buffer(v31, qword_1ED6F5130);
    (*(v3 + 16))(v13, v30, v2);
    v32 = sub_185B67B6C();
    v33 = sub_185B6809C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v34 = 136315138;
      sub_185AE9C80();
      v36 = sub_185B6856C();
      v38 = v37;
      (*(v3 + 8))(v13, v2);
      v39 = sub_185ACB2C4(v36, v38, &v47);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_185AC1000, v32, v33, "invalidating already invalidated assertion with uuid: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1865FE2F0](v35, -1, -1);
      MEMORY[0x1865FE2F0](v34, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v13, v2);
    }
  }

  else
  {
    v17 = *(v3 + 16);
    v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v46;
    v17(v11, v46, v2);
    v17(v8, v11, v2);
    v43 = v8;
    v44 = v3;
    v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v20 = v19 + v4;
    v42 = swift_allocObject();
    v21 = v3;
    v22 = v2;
    v23 = *(v21 + 32);
    v23(v42 + v19, v11, v2);
    v24 = v41;
    v17(v41, v18, v2);
    v25 = swift_allocObject();
    v23(v25 + v19, v24, v2);
    v26 = v45;
    *(v25 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = sub_185B2B930;
    v27[4] = v42;
    v27[5] = sub_185B2B9B0;
    v27[6] = v25;
    v28 = v26;

    v29 = v43;
    sub_185B29D68(v43, sub_185AE8710, v27);

    (*(v44 + 8))(v29, v22);
  }
}

void sub_185B29D68(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v14 = sub_185B0FA08;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B6657C;
  v13 = &block_descriptor_16;
  v6 = _Block_copy(&v10);

  v7 = APGetAsyncGuardProxy(v6);
  _Block_release(v6);
  v8 = sub_185B67ABC();
  v14 = a2;
  v15 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B2AF84;
  v13 = &block_descriptor_13_0;
  v9 = _Block_copy(&v10);

  [v7 endAuthTimeoutExtensionTransactionWithUUID:v8 completion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_185B29EF0(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v44 - v11);
  if (!a1)
  {
    if (qword_1ED6F4CB0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v13 = a1;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v14 = sub_185B67B8C();
  __swift_project_value_buffer(v14, qword_1ED6F5130);
  (*(v7 + 16))(v10, a2, v6);
  v15 = a1;
  v12 = sub_185B67B6C();
  v16 = sub_185B6808C();

  if (os_log_type_enabled(v12, v16))
  {
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v17 = 136315394;
    sub_185AE9C80();
    v18 = sub_185B6856C();
    v20 = v19;
    v21 = *(v7 + 8);
    v7 += 8;
    v21(v10, v6);
    v22 = sub_185ACB2C4(v18, v20, v47);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = a1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    v25 = v45;
    *v45 = v24;
    _os_log_impl(&dword_185AC1000, v12, v16, "could not invalidate auth assertion %s: %@", v17, 0x16u);
    sub_185AC3F6C(v25);
    MEMORY[0x1865FE2F0](v25, -1, -1);
    v26 = v46;
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x1865FE2F0](v26, -1, -1);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  else
  {

    v37 = *(v7 + 8);
    v7 += 8;
    v37(v10, v6);
  }

  while (1)
  {
    v39 = OBJC_IVAR___APAuthAssertion_observers;
    result = swift_beginAccess();
    a2 = *(a3 + v39);
    if (a2 >> 62)
    {
      break;
    }

    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }

LABEL_13:
    if (v6 >= 1)
    {

      v41 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x1865FD3E0](v41, a2);
          if (!a1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v43 = *(a2 + 8 * v41 + 32);
          swift_unknownObjectRetain();
          if (!a1)
          {
LABEL_21:
            v42 = 0;
            goto LABEL_16;
          }
        }

        v42 = sub_185B6791C();
LABEL_16:
        ++v41;
        [v43 assertion:a3 didInvalidateWithError:v42];
        swift_unknownObjectRelease();

        if (v6 == v41)
        {
        }
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_7:
    v27 = sub_185B67B8C();
    __swift_project_value_buffer(v27, qword_1ED6F5130);
    (*(v7 + 16))(v12, a2, v6);
    v28 = sub_185B67B6C();
    v29 = sub_185B680AC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47[0] = v46;
      *v30 = 136315138;
      sub_185AE9C80();
      v31 = sub_185B6856C();
      v33 = v32;
      v34 = *(v7 + 8);
      v7 += 8;
      v34(v12, v6);
      v35 = sub_185ACB2C4(v31, v33, v47);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_185AC1000, v28, v29, "invalidated auth assertion %s", v30, 0xCu);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x1865FE2F0](v36, -1, -1);
      MEMORY[0x1865FE2F0](v30, -1, -1);
    }

    else
    {

      v38 = *(v7 + 8);
      v7 += 8;
      v38(v12, v6);
    }
  }

  result = sub_185B6844C();
  v6 = result;
  if (result)
  {
    goto LABEL_13;
  }

  return result;
}

void sub_185B2A4EC(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v59 = sub_185B67AFC();
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v59);
  v13 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  if (a1)
  {
    v16 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1ED6F5130);
    v18 = v59;
    (*(v10 + 16))(v15, a2, v59);
    v19 = a1;
    v20 = sub_185B67B6C();
    v21 = sub_185B6808C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v58 = a3;
      v56 = v23;
      aBlock = v23;
      *v22 = 136315394;
      sub_185AE9C80();
      v24 = sub_185B6856C();
      v26 = v25;
      (*(v10 + 8))(v15, v18);
      v27 = sub_185ACB2C4(v24, v26, &aBlock);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2112;
      v28 = a1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      v30 = v55;
      *v55 = v29;
      _os_log_impl(&dword_185AC1000, v20, v21, "failed to acquire auth assertion %s: %@", v22, 0x16u);
      sub_185AC3F6C(v30);
      MEMORY[0x1865FE2F0](v30, -1, -1);
      v31 = v56;
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      a3 = v58;
      MEMORY[0x1865FE2F0](v31, -1, -1);
      MEMORY[0x1865FE2F0](v22, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v15, v18);
    }

    v53 = a1;
    a3(0, a1);
  }

  else
  {
    v32 = sub_185B67ABC();
    v33 = [objc_allocWithZone(APAuthAssertion) initWithSubject:a5 uuid:v32];

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v34 = sub_185B67B8C();
    __swift_project_value_buffer(v34, qword_1ED6F5130);
    v35 = v33;
    v36 = sub_185B67B6C();
    v37 = sub_185B680AC();

    v38 = os_log_type_enabled(v36, v37);
    v57 = a4;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v35;
      *v40 = v35;
      v41 = v35;
      _os_log_impl(&dword_185AC1000, v36, v37, "acquired auth assertion %@", v39, 0xCu);
      sub_185AC3F6C(v40);
      MEMORY[0x1865FE2F0](v40, -1, -1);
      v42 = v39;
      a4 = v57;
      MEMORY[0x1865FE2F0](v42, -1, -1);
    }

    v43 = swift_allocObject();
    *(v43 + 16) = a3;
    *(v43 + 24) = a4;
    v64 = sub_185B06F74;
    v65 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v58 = a3;
    v62 = sub_185B6657C;
    v63 = &block_descriptor_34_0;
    v44 = _Block_copy(&aBlock);

    v56 = APGetAsyncGuardProxy(v44);
    _Block_release(v44);
    v45 = sub_185B67ABC();
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = v35;
    v48 = v59;
    (*(v10 + 16))(v13, a2, v59);
    v49 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    (*(v10 + 32))(v50 + v49, v13, v48);
    *(v50 + ((v11 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
    v64 = sub_185B2C068;
    v65 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_185B2AF84;
    v63 = &block_descriptor_43_0;
    v51 = _Block_copy(&aBlock);
    v52 = v47;

    [v56 monitorTransactionWithUUID:v45 invalidationBlock:v51];
    _Block_release(v51);
    swift_unknownObjectRelease();

    v58(v47, 0);
  }
}

void sub_185B2AB5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v13 = sub_185B67B8C();
  __swift_project_value_buffer(v13, qword_1ED6F5130);
  (*(v8 + 16))(v10, a3, v7);
  v14 = a1;
  v15 = sub_185B67B6C();
  v16 = sub_185B680AC();

  if (os_log_type_enabled(v15, v16))
  {
    v39 = v16;
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40[0] = v38;
    *v17 = 136315394;
    sub_185AE9C80();
    v18 = sub_185B6856C();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_185ACB2C4(v18, v20, v40);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    if (a1)
    {
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v25 = v39;
    *(v17 + 14) = v23;
    v26 = v37;
    *v37 = v24;
    _os_log_impl(&dword_185AC1000, v15, v25, "auth assertion: %s was invalidated with error: %@", v17, 0x16u);
    sub_185AC3F6C(v26);
    MEMORY[0x1865FE2F0](v26, -1, -1);
    v27 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x1865FE2F0](v27, -1, -1);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v28 = *(**&v12[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  atomic_store(1u, v28(v29));

  v30 = OBJC_IVAR___APAuthAssertion_observers;
  swift_beginAccess();
  v31 = *&v12[v30];
  if (v31 >> 62)
  {
    v32 = sub_185B6844C();
    if (v32)
    {
      goto LABEL_12;
    }

LABEL_23:

    return;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v32 >= 1)
  {

    v33 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1865FD3E0](v33, v31);
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v35 = *(v31 + 8 * v33 + 32);
        swift_unknownObjectRetain();
        if (!a4)
        {
LABEL_20:
          v34 = 0;
          goto LABEL_15;
        }
      }

      v34 = sub_185B6791C();
LABEL_15:
      ++v33;
      [v35 assertion:v12 didInvalidateWithError:v34];
      swift_unknownObjectRelease();

      if (v32 == v33)
      {

        return;
      }
    }
  }

  __break(1u);
}

void sub_185B2AF84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_185B2B07C()
{
  v1 = v0;
  v2 = sub_185B67AFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(**&v0[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  LOBYTE(v6) = atomic_load_explicit(v6(v7), memory_order_acquire);

  if ((v6 & 1) == 0)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v8 = sub_185B67B8C();
    __swift_project_value_buffer(v8, qword_1ED6F5130);
    v9 = v0;
    v10 = sub_185B67B6C();
    v11 = sub_185B6809C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_185AC1000, v10, v11, "deallocating valid auth assertion %@!", v12, 0xCu);
      sub_185AC3F6C(v13);
      MEMORY[0x1865FE2F0](v13, -1, -1);
      MEMORY[0x1865FE2F0](v12, -1, -1);
    }

    sub_185B67ADC();
    sub_185B298D8(v5);
    (*(v3 + 8))(v5, v2);
  }

  v16.receiver = v1;
  v16.super_class = APAuthAssertion;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

unint64_t APAuthAssertion.description.getter()
{
  v1 = v0;
  sub_185B6836C();

  v2 = [*(v0 + OBJC_IVAR___APAuthAssertion_subject) description];
  v3 = sub_185B67E4C();
  v5 = v4;

  MEMORY[0x1865FCF60](v3, v5);

  MEMORY[0x1865FCF60](0x203A6469757520, 0xE700000000000000);
  v6 = [*(v1 + OBJC_IVAR___APAuthAssertion_uuid) description];
  v7 = sub_185B67E4C();
  v9 = v8;

  MEMORY[0x1865FCF60](v7, v9);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_185B2B504()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v5 = sub_185B67B8C();
  __swift_project_value_buffer(v5, qword_1ED6F5130);
  v6 = v0;
  v7 = sub_185B67B6C();
  v8 = sub_185B680AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_185AC1000, v7, v8, "invalidating %@", v9, 0xCu);
    sub_185AC3F6C(v10);
    MEMORY[0x1865FE2F0](v10, -1, -1);
    MEMORY[0x1865FE2F0](v9, -1, -1);
  }

  sub_185B67ADC();
  sub_185B298D8(v4);
  (*(v2 + 8))(v4, v1);
  v12 = *(**&v6[OBJC_IVAR___APAuthAssertion_invalidated] + 136);

  atomic_store(1u, v12(v13));
}

void __swiftcall APAuthAssertion.init()(APAuthAssertion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for APAuthAssertion()
{
  result = qword_1EA8CD400;
  if (!qword_1EA8CD400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CD400);
  }

  return result;
}

void sub_185B2B930(uint64_t (*a1)(), uint64_t a2)
{
  v5 = *(sub_185B67AFC() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_185B29D68(v6, a1, a2);
}

uint64_t sub_185B2B9B0(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_185B29EF0(a1, v1 + v4, v5);
}

uint64_t sub_185B2BA4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v56 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  v55 = v13;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v48 - v14;
  sub_185B67AEC();
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v16 = sub_185B67B8C();
  __swift_project_value_buffer(v16, qword_1ED6F5130);
  v52 = *(v7 + 16);
  v53 = v7 + 16;
  v52(v12, v15, v6);
  v17 = a1;
  v18 = sub_185B67B6C();
  v19 = sub_185B680AC();

  v20 = os_log_type_enabled(v18, v19);
  v57 = v15;
  v58 = v7;
  v59 = a2;
  v60 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v6;
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    sub_185AE9C80();
    v25 = v17;
    v51 = v17;
    v26 = sub_185B6856C();
    v28 = v27;
    v54 = *(v7 + 8);
    v54(v12, v23);
    v29 = sub_185ACB2C4(v26, v28, &aBlock);
    v30 = v51;

    *(v21 + 14) = v29;
    _os_log_impl(&dword_185AC1000, v18, v19, "Acquiring auth assertion for %@ uuid %s", v21, 0x16u);
    sub_185AC3F6C(v22);
    MEMORY[0x1865FE2F0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v31 = v24;
    v6 = v23;
    a2 = v59;
    MEMORY[0x1865FE2F0](v31, -1, -1);
    v32 = v21;
    a3 = v60;
    MEMORY[0x1865FE2F0](v32, -1, -1);
  }

  else
  {

    v54 = *(v7 + 8);
    v54(v12, v6);
    v30 = v17;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  v65 = sub_185B126F8;
  v66 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v50 = &v63;
  v63 = sub_185B6657C;
  v64 = &block_descriptor_22_2;
  v34 = _Block_copy(&aBlock);

  v51 = APGetAsyncGuardProxy(v34);
  _Block_release(v34);
  v35 = [v30 effectiveBundleIdentifier];
  if (!v35)
  {
    sub_185B67E4C();
    v35 = sub_185B67E1C();
  }

  v36 = v57;
  v49 = sub_185B67ABC();
  v37 = v56;
  v52(v56, v36, v6);
  v38 = v58;
  v39 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  (*(v38 + 32))(v41 + v39, v37, v6);
  v42 = (v41 + v40);
  v43 = v60;
  *v42 = v59;
  v42[1] = v43;
  *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v65 = sub_185B2BFBC;
  v66 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_185B2AF84;
  v64 = &block_descriptor_28_2;
  v44 = _Block_copy(&aBlock);
  v45 = v30;

  v46 = v49;
  [v51 beginAuthTimeoutExtensionTransactionForBundle:v35 transactionUUID:v49 completion:v44];
  _Block_release(v44);
  swift_unknownObjectRelease();

  return (v54)(v36, v6);
}

void sub_185B2BFBC(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_185B2A4EC(a1, v1 + v4, v9, v10, v8);
}

void sub_185B2C068(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_185B2AB5C(a1, v5, v1 + v4, v6);
}

uint64_t sub_185B2C170(uint64_t a1)
{
  result = sub_185B6829C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_185B2C228()
{

  v1 = *(*v0 + 14);
  v2 = sub_185B6829C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_185B2C2C4()
{
  sub_185B2C228();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_185B2C334(void *a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_185B67C9C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67CDC();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B6815C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD410, &qword_185B6E468);
  v15 = swift_allocObject();
  *(v15 + 28) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v3 + v14) = v15;
  sub_185B2CD3C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_185B2CD88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD418, &unk_185B6E470);
  sub_185B2CDE0();
  sub_185B682CC();
  v16 = sub_185B6818C();
  (*(v11 + 8))(v13, v10);
  *(v3 + 16) = v16;
  v17 = OBJC_IVAR____TtC13AppProtection15SaturatingTimer_duration;
  v18 = sub_185B67C8C();
  v19 = *(v18 - 8);
  v20 = v26;
  (*(v19 + 16))(v3 + v17, v26, v18);
  ObjectType = swift_getObjectType();
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_185B2CE44;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_17;
  v23 = _Block_copy(aBlock);

  sub_185AF8638(ObjectType);
  sub_185AF863C(ObjectType);
  sub_185B681AC();
  _Block_release(v23);

  (*(v19 + 8))(v20, v18);
  (*(v29 + 8))(v6, v30);
  (*(v27 + 8))(v9, v28);

  return v3;
}

void sub_185B2C740(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state);
    os_unfair_lock_lock((v2 + 28));
    *(v2 + 24) = 0;
    v3 = *(v2 + 16);
    _Block_copy(v3);
    os_unfair_lock_unlock((v2 + 28));
    if (v3)
    {
      v3[2](v3);

      _Block_release(v3);
    }

    else
    {
    }
  }
}

void sub_185B2C7F0(const void **a1, void *aBlock)
{
  v4 = *a1;
  _Block_copy(aBlock);
  _Block_release(v4);
  *a1 = aBlock;
}

uint64_t sub_185B2C83C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_185B67C8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = sub_185B67CFC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = v21 - v16;
  v23 = a1;
  if ((*(a1 + 8) & 1) == 0)
  {
    v18 = v22;
    v21[1] = *(v22 + 16);
    v21[0] = swift_getObjectType();
    sub_185B67CEC();
    MEMORY[0x1865FCDA0](v14, v18 + OBJC_IVAR____TtC13AppProtection15SaturatingTimer_duration);
    v22 = *(v11 + 8);
    (v22)(v14, v10);
    v19 = *(v4 + 104);
    v19(v9, *MEMORY[0x1E69E7F40], v3);
    *v7 = 0;
    v19(v7, *MEMORY[0x1E69E7F28], v3);
    MEMORY[0x1865FD280](v17, v9, v7, v21[0]);
    v20 = *(v4 + 8);
    v20(v7, v3);
    v20(v9, v3);
    result = (v22)(v17, v10);
    *(v23 + 8) = 1;
  }

  return result;
}

uint64_t sub_185B2CACC()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13AppProtection15SaturatingTimer_duration;
  v2 = sub_185B67C8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for SaturatingTimer(uint64_t a1)
{
  result = qword_1EA8CC058;
  if (!qword_1EA8CC058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_185B2CBD4(uint64_t a1)
{
  result = sub_185B67C8C();
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

uint64_t sub_185B2CC7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_185B2CCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_185B2CD3C()
{
  result = qword_1EA8CB640;
  if (!qword_1EA8CB640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA8CB640);
  }

  return result;
}

unint64_t sub_185B2CD88()
{
  result = qword_1EA8CB650;
  if (!qword_1EA8CB650)
  {
    sub_185B6815C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB650);
  }

  return result;
}

unint64_t sub_185B2CDE0()
{
  result = qword_1EA8CB6A0[0];
  if (!qword_1EA8CB6A0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD418, &unk_185B6E470);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA8CB6A0);
  }

  return result;
}

void sub_185B2CE74(void *a1, const char *a2, ...)
{
  if (a1)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v4 = sub_185B67B8C();
    __swift_project_value_buffer(v4, qword_1ED6F5130);
    v5 = a1;
    oslog = sub_185B67B6C();
    v6 = sub_185B6808C();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_185AC1000, oslog, v6, a2, v7, 0xCu);
      sub_185AC3F6C(v8);
      MEMORY[0x1865FE2F0](v8, -1, -1);
      MEMORY[0x1865FE2F0](v7, -1, -1);
    }
  }
}

void *sub_185B2D0B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
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

void *sub_185B2D134(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE78, &qword_185B6C5B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_185B2D1BC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_185B2D310(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

void sub_185B2D468(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 16);
    if (v11)
    {
      v17 = a2;
      aBlock[7] = v4;
      v12 = sub_185B2D0B0(v11, 0);
      v13 = sub_185B2D310(aBlock, v12 + 4, v11, a1);
      v14 = aBlock[0];

      sub_185AF36FC(v14);
      if (v13 != v11)
      {
        __break(1u);
        return;
      }

      a2 = v17;
    }

    v15 = sub_185B67F5C();

    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185B2AF84;
    aBlock[3] = a3;
    v16 = _Block_copy(aBlock);
    [v10 *a4];
    _Block_release(v16);
  }
}

void sub_185B2D604(uint64_t a1, uint64_t a2, char a3, const char *a4, void (*a5)(void *, BOOL), ...)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v8 = sub_185B67B8C();
  __swift_project_value_buffer(v8, qword_1ED6F5130);
  v9 = sub_185B67B6C();
  v10 = sub_185B6807C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a3 & 1;
    _os_log_impl(&dword_185AC1000, v9, v10, a4, v11, 8u);
    MEMORY[0x1865FE2F0](v11, -1, -1);
  }

  v12 = sub_185B67E1C();
  a5(v12, (a3 & 1) == 0);
}

uint64_t sub_185B2D748(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD420, &unk_185B6E520);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = (v6 + 24);
  *(v6 + 16) = 0;
  v8 = (v6 + 16);
  *(v3 + 16) = a1;
  *(v3 + 24) = v6;

  v9 = a1;
  os_unfair_lock_lock(v7);
  sub_185B2D9AC(v8);
  os_unfair_lock_unlock(v7);

  return v3;
}

void sub_185B2D80C(id **a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = type metadata accessor for NotificationReceiverObjCShim();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v8 = sub_185B2D9C8;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  *a1 = v9;
  v10 = sub_185B67E1C();
  [a3 addObserver:v9 selector:sel_receivedNotification_ name:v10 object:0];
}

uint64_t sub_185B2D918(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B2D9D0(a1);
  }

  return result;
}

void sub_185B2D9D0(uint64_t a1)
{
  v2 = sub_185B6781C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B677FC();
  v7 = sub_185B67E1C();
  v8 = sub_185B67E4C();
  v10 = v9;
  v11 = sub_185B67E4C();
  v13 = v12;

  if (v8 == v11 && v10 == v13)
  {
  }

  else
  {
    v15 = sub_185B6859C();

    if ((v15 & 1) == 0)
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v17 = sub_185B67B8C();
      __swift_project_value_buffer(v17, qword_1EA8D2278);
      (*(v3 + 16))(v5, a1, v2);
      v18 = sub_185B67B6C();
      v19 = sub_185B680AC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        sub_185B2DCE0();
        v22 = sub_185B6856C();
        v24 = v23;
        (*(v3 + 8))(v5, v2);
        v25 = sub_185ACB2C4(v22, v24, &v27);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_185AC1000, v18, v19, "LanguageChangeManager: unknown notification: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x1865FE2F0](v21, -1, -1);
        MEMORY[0x1865FE2F0](v20, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      return;
    }
  }

  MEMORY[0x1EEE75030](v16);
}

unint64_t sub_185B2DCE0()
{
  result = qword_1EA8CC000;
  if (!qword_1EA8CC000)
  {
    sub_185B6781C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CC000);
  }

  return result;
}

void *sub_185B2DD48(void *a1)
{
  v13 = a1;
  v2 = sub_185B680EC();
  v11 = *(v2 - 8);
  v12 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v10 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_185B680DC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_185B67CDC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCC28, &qword_185B6BBC8);
  swift_allocObject();
  v1[3] = sub_185B67C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD428, &unk_185B6E680);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  v1[4] = v6;
  sub_185AC7294();
  sub_185B67CBC();
  v16 = MEMORY[0x1E69E7CC0];
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC7370(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0, MEMORY[0x1E69E6328]);
  sub_185B682CC();
  (*(v11 + 104))(v10, *MEMORY[0x1E69E8090], v12);
  v1[2] = sub_185B6813C();
  v7 = v1[4];
  v8 = v13;
  v14 = v1;
  v15 = v13;

  os_unfair_lock_lock((v7 + 24));
  sub_185B2E544((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  return v1;
}

void sub_185B2E024(id **a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = type metadata accessor for NotificationReceiverObjCShim();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13AppProtection28NotificationReceiverObjCShim_callback];
  *v8 = sub_185B2E560;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  *a1 = v9;
  v10 = sub_185B67E1C();
  [a3 addObserver:v9 selector:sel_receivedNotification_ name:v10 object:0];
}

uint64_t sub_185B2E130(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B2E188();
  }

  return result;
}

uint64_t sub_185B2E188()
{
  v1 = v0;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1EA8D2278);
  v3 = sub_185B67B6C();
  v4 = sub_185B680AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_185AC1000, v3, v4, "received accountsd event", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_185B2E504;
  *(v7 + 24) = v1;
  v10[4] = sub_185AE7934;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_185AD94F4;
  v10[3] = &block_descriptor_19;
  v8 = _Block_copy(v10);

  dispatch_sync(v6, v8);
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B2E374()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for AccountsEvent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_185B2E568(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v8 <= 0x3F)
              {
                result = swift_checkMetadataState();
                if (v9 <= 0x3F)
                {
                  result = swift_checkMetadataState();
                  if (v10 <= 0x3F)
                  {
                    result = sub_185B6829C();
                    if (v11 <= 0x3F)
                    {
                      return swift_initClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_185B2E880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_185B52078(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_185AC9F40(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_185B50F84();
        v14 = v16;
      }

      result = sub_185B3D81C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_185B2E978(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD498, &qword_185B6E820);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AuthAssertion(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_185ACF5CC(a1, &unk_1EA8CD498, &qword_185B6E820);
    sub_185B3E24C(a2, v7);
    v12 = sub_185B67AFC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_185ACF5CC(v7, &unk_1EA8CD498, &qword_185B6E820);
  }

  else
  {
    sub_185B40E60(a1, v10, type metadata accessor for AuthAssertion);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_185B524DC(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_185B67AFC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_185B2EB98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_185B528A0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_185AF6F20(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_185B51940();
        v11 = v13;
      }

      result = sub_185B3E030(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

id sub_185B2EC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_185B6792C();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_185B2ED60(uint64_t a1)
{
  v2 = v1;
  v3 = sub_185AF6E20(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_185B516C0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_185B67AFC();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_185B3DD10(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_185B2EE3C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_185B3C668, v4);
}

uint64_t sub_185B2EED0(uint64_t a1, void (*a2)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    a2();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *(*v7 + 112);
    swift_beginAccess();
    sub_185B40A44(v5, v7 + v9);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_185B2F014@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD478, &qword_185B6E808);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_185B67D3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 24);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_185B67D5C();
  result = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v2 + 32))
  {
LABEL_5:
    v14 = *(*v2 + 112);
    swift_beginAccess();
    sub_185B40B80(v2 + v14, v6);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
    result = (*(*(v15 - 8) + 48))(v6, 1, v15);
    if (result != 1)
    {
      return sub_185B40C1C(v6, a1, &unk_1EA8CD2D8, &qword_185B6D8C0);
    }

    goto LABEL_8;
  }

  if (*(v2 + 16))
  {

    sub_185B67D0C();

    *(v2 + 32) = 1;
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_185B2F250()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7542746567726174;
  }
}

uint64_t sub_185B2F2C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_185B4127C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_185B2F2F8(uint64_t a1)
{
  v2 = sub_185B3C248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B2F334(uint64_t a1)
{
  v2 = sub_185B3C248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B2F370@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_185B67A8C();
  v19 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD438, &qword_185B6E7E0);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = v17 - v6;
  v8 = type metadata accessor for AuthAssertion(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B3C248();
  sub_185B686EC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = a1;
  v11 = v10;
  v13 = v21;
  v12 = v22;
  v26 = 0;
  v14 = v23;
  *v11 = sub_185B6849C();
  *(v11 + 8) = v15;
  v17[1] = v15;
  v25 = 1;
  *(v11 + 16) = sub_185B684DC();
  v24 = 2;
  sub_185B41234(&unk_1EA8CD448, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_185B684BC();
  (*(v13 + 8))(v7, v14);
  (*(v19 + 32))(v11 + *(v8 + 24), v5, v12);
  sub_185B40B18(v11, v20, type metadata accessor for AuthAssertion);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return sub_185B40AB8(v11, type metadata accessor for AuthAssertion);
}

uint64_t sub_185B2F6DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD4C0, &qword_185B6E840);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B3C248();
  sub_185B686FC();
  v8[15] = 0;
  sub_185B684EC();
  if (!v1)
  {
    v8[14] = 1;
    sub_185B6853C();
    type metadata accessor for AuthAssertion(0);
    v8[13] = 2;
    sub_185B67A8C();
    sub_185B41234(&qword_1EA8CD9C0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_185B6851C();
  }

  return (*(v4 + 8))(v6, v3);
}

double sub_185B2F928()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = 3.0;
  if (has_internal_content)
  {
    if (qword_1EA8CBFD0 != -1)
    {
      has_internal_content = swift_once();
    }

    v2 = *(*(qword_1EA8D2330 + 16) + 104);
    MEMORY[0x1EEE9AC00](has_internal_content);

    os_unfair_lock_lock(v2 + 4);
    sub_185B40FE4(&v4);
    os_unfair_lock_unlock(v2 + 4);

    v1 = v4;
  }

  return v1;
}

uint64_t sub_185B2FA38@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 336));
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD4B0, &qword_185B6BF08);
  a1[4] = sub_185AC7370(&unk_1EA8CB700, &unk_1EA8CD4B0, &qword_185B6BF08, MEMORY[0x1E695BF88]);
  *a1 = v3;
}

id sub_185B2FADC(void *a1, uint64_t a2)
{
  result = [a1 raw_accessor_type];
  if (result == 1)
  {
    result = [a1 accessed_bundle_id];
    if (result)
    {
      v5 = result;
      v6 = sub_185B67E4C();
      v8 = v7;

      v9 = sub_185AC3A7C(v6, v8, a2);

      if (v9)
      {
        result = [a1 accessor_bundle_id];
        if (result)
        {
          v10 = result;
          v11 = sub_185B67E4C();
          v13 = v12;

          sub_185AC407C(&v14, v11, v13);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_185B2FBCC(void *a1, uint64_t a2)
{
  result = [a1 raw_accessor_type];
  if (result == 2)
  {
    result = [a1 accessed_bundle_id];
    if (result)
    {
      v5 = result;
      v6 = sub_185B67E4C();
      v8 = v7;

      v9 = sub_185AC3A7C(v6, v8, a2);

      if (v9)
      {
        result = [a1 accessor_bundle_id];
        if (result)
        {
          v10 = result;
          v11 = sub_185B67E4C();
          v13 = v12;

          sub_185AC407C(&v14, v11, v13);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_185B2FCBC(uint64_t a1, uint64_t a2, int a3)
{
  *&v91 = a2;
  v4 = v3;
  v89 = a3;
  v97 = a1;
  v88 = *v3;
  v5 = v88;
  v6 = v88[10];
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v84 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v85 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v77 - v12;
  sub_185B308C8();
  v15 = v7 + 16;
  v14 = *(v7 + 16);
  v86 = *(*v3 + 256);
  v87 = v14;
  v14(v13, &v3[v86], v6);
  v16 = v5[20];
  v17 = v90;
  LODWORD(v90) = (*(v16 + 8))(v97, v91, v6, v16);
  v20 = *(v7 + 8);
  v19 = v7 + 8;
  v18 = v20;
  v20(v13, v6);
  if (v17)
  {
    return;
  }

  v78 = v18;
  v79 = v16;
  v80 = v15;
  v81 = v19;
  v82 = v6;
  v83 = 0;
  v21 = v90;
  v22 = v89 & 1;
  v23 = v97;
  v24 = v91;
  if ((*(v88[29] + 40))(v89 & 1, v97, v91, v90 & 0x10101, v88[19]))
  {
LABEL_19:
    swift_willThrow();
    return;
  }

  if ((v21 & 0x100) != 0)
  {
    sub_185AD0148(3uLL, 0xD000000000000026, 0x8000000185B77BF0, 215, 0xD000000000000021, 0x8000000185B77C20);
    goto LABEL_19;
  }

  LODWORD(v90) = v22;
  v25 = v85;
  v26 = v82;
  v87(v85, &v3[v86], v82);
  v27 = v23;
  v28 = *(v79 + 16);
  v29 = v83;
  v30 = v28(v27, v24, v89 & 1, v26);
  v31 = v25;
  v32 = v78;
  v78(v31, v26);
  v83 = v29;
  if (v29)
  {
    return;
  }

  v85 = v4;
  if ((v30 & 1) == 0)
  {
    return;
  }

  v33 = v97;
  v34 = sub_185B67E1C();
  v35 = _AXSClarityBundleIdentifierForStandardBundleIdentifier();

  if (!v35)
  {
    goto LABEL_10;
  }

  v37 = sub_185B67E4C();
  v39 = v38;

  if (v37 == v33 && v39 == v91)
  {

LABEL_10:
    LOBYTE(v40) = v89;
LABEL_11:
    v41 = v83;
    goto LABEL_12;
  }

  v64 = sub_185B6859C();
  LOBYTE(v40) = v89;
  if (v64)
  {

    goto LABEL_11;
  }

  v65 = v84;
  v66 = v82;
  v87(v84, &v85[v86], v82);
  v87 = v39;
  v67 = v83;
  (v28)(v37, v39, v40 & 1, v66, v79);
  v41 = v67;
  if (v67)
  {
    v32(v65, v66);

    v43 = v91;
    if (qword_1ED6F4CB0 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_43;
  }

  v32(v65, v66);

  while (1)
  {
LABEL_12:
    if (v40)
    {
      v42 = v91;
      if (qword_1EA8CBFD0 != -1)
      {
        v36 = swift_once();
      }

      v43 = &v77;
      v40 = *(qword_1EA8D2330 + 48);
      v44 = *(v40 + 104);
      MEMORY[0x1EEE9AC00](v36);
      *(&v77 - 2) = sub_185B42CBC;
      *(&v77 - 1) = v40;

      os_unfair_lock_lock(v44 + 4);
      sub_185B42CD4(v96);
      if (v41)
      {
        goto LABEL_44;
      }

      os_unfair_lock_unlock(v44 + 4);
      v45 = *&v96[0];

      v47 = v45 + 1;
      if (!__OFADD__(v45, 1))
      {
        break;
      }

      __break(1u);
      goto LABEL_42;
    }

    v42 = v91;
    if (qword_1EA8CBFD0 != -1)
    {
      v36 = swift_once();
    }

    v43 = &v77;
    v40 = *(qword_1EA8D2330 + 64);
    v44 = *(v40 + 104);
    MEMORY[0x1EEE9AC00](v36);
    *(&v77 - 2) = sub_185B42CBC;
    *(&v77 - 1) = v40;

    os_unfair_lock_lock(v44 + 4);
    sub_185B42CD4(v96);
    if (v41)
    {
LABEL_44:
      os_unfair_lock_unlock(v44 + 4);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock(v44 + 4);
    v48 = *&v96[0];

    v47 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_36:
    v68 = sub_185B67B8C();
    __swift_project_value_buffer(v68, qword_1ED6F5130);

    v69 = v41;
    v70 = sub_185B67B6C();
    v71 = sub_185B680AC();

    if (os_log_type_enabled(v70, v71))
    {
      v40 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v96[0] = v73;
      *v40 = 136315394;
      *(v40 + 4) = sub_185ACB2C4(v97, v43, v96);
      *(v40 + 12) = 2112;
      v74 = v41;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v75;
      *v72 = v75;
      _os_log_impl(&dword_185AC1000, v70, v71, "Could not set clarity version of %s error: %@", v40, 0x16u);
      sub_185ACF5CC(v72, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x1865FE2F0](v73, -1, -1);
      v76 = v40;
      LOBYTE(v40) = v89;
      MEMORY[0x1865FE2F0](v76, -1, -1);
    }

    else
    {
    }

    v41 = 0;
  }

  *&v96[0] = v47;
  v49 = *(v40 + 104);
  v50 = MEMORY[0x1EEE9AC00](v46);
  *(&v77 - 2) = v40;
  *(&v77 - 1) = v96;
  MEMORY[0x1EEE9AC00](v50);
  *(&v77 - 2) = sub_185B42D34;
  *(&v77 - 1) = v51;

  os_unfair_lock_lock(v49 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v49 + 4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
  inited = swift_initStackObject();
  v91 = xmmword_185B6BB70;
  *(inited + 16) = xmmword_185B6BB70;
  v53 = v97;
  *(inited + 32) = v97;
  *(inited + 40) = v42;

  v54 = sub_185AD0524(inited);
  swift_setDeallocating();
  sub_185ADF744(inited + 32);
  if (v89)
  {
    v55 = swift_initStackObject();
    *(v55 + 16) = v91;
    *(v55 + 32) = v53;
    *(v55 + 40) = v42;

    v56 = sub_185AD0524(v55);
    swift_setDeallocating();
    sub_185ADF744(v55 + 32);
    v57 = 0;
  }

  else
  {
    v58 = swift_initStackObject();
    *(v58 + 16) = v91;
    *(v58 + 32) = v53;
    *(v58 + 40) = v42;

    v57 = sub_185AD0524(v58);
    swift_setDeallocating();
    sub_185ADF744(v58 + 32);
    v56 = 0;
  }

  LODWORD(v92) = 2;
  *(&v92 + 1) = v54;
  v93 = 0uLL;
  *&v94 = v56;
  v95 = 0uLL;
  *(&v94 + 1) = v57;
  sub_185B67C2C();
  v96[0] = v92;
  v96[1] = v93;
  v96[2] = v94;
  v96[3] = v95;
  sub_185ADF798(v96);
  if (v89)
  {
    (*(*(*v85 + 184) + 8))(v97, v42, 1, nullsub_1, 0, *(*v85 + 104));
  }

  v59 = v85;
  v60 = v88;
  (*(v88[27] + 8))(v88[17]);
  (*(v60[21] + 32))(v60[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD18, &unk_185B6E830);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_185B6BB60;
  *(v61 + 32) = sub_185B42D4C;
  *(v61 + 40) = v59;
  v62 = swift_allocObject();
  v63 = v97;
  *(v62 + 16) = v59;
  *(v62 + 24) = v63;
  *(v62 + 32) = v42;
  *(v62 + 40) = v90;
  *(v61 + 48) = sub_185B41144;
  *(v61 + 56) = v62;
  swift_retain_n();

  sub_185B21D18(v61);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD20, &unk_185B6BF20);
  swift_arrayDestroy();
}

uint64_t sub_185B308C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v8 = type metadata accessor for Backup(0);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v13 = sub_185B67D3C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 3);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  v19 = sub_185B67D5C();
  (*(v14 + 8))(v16, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v17 = 0x1EA8CB000;
  if (!*(v1 + 2))
  {
    goto LABEL_13;
  }

  v20 = qword_1EA8CB718;

  if (v20 != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v21 = sub_185B67B8C();
  __swift_project_value_buffer(v21, qword_1EA8D2278);
  v22 = sub_185B67B6C();
  v23 = sub_185B680AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v17;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_185AC1000, v22, v23, "Waiting for remote backup info.", v25, 2u);
    v26 = v25;
    v17 = v24;
    MEMORY[0x1865FE2F0](v26, -1, -1);
  }

  sub_185B2F014(v7);
  if ((*(v53 + 48))(v7, 1, v54) == 1)
  {
    sub_185ACF5CC(v7, &unk_1EA8CD2D8, &qword_185B6D8C0);
    v27 = sub_185B67B6C();
    v28 = sub_185B680AC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_185AC1000, v27, v28, "Waited for remote backup info but there was none.", v29, 2u);
      MEMORY[0x1865FE2F0](v29, -1, -1);
    }
  }

  else
  {
    sub_185B40E60(v7, v12, type metadata accessor for Backup);
    sub_185B38D38(v12);
    (*(v2[27] + 40))(v2[17]);
    v30 = sub_185B67B6C();
    v31 = sub_185B680AC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v17;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_185AC1000, v30, v31, "removed current backup info.", v33, 2u);
      v34 = v33;
      v17 = v32;
      MEMORY[0x1865FE2F0](v34, -1, -1);
    }

    sub_185B40AB8(v12, type metadata accessor for Backup);
  }

LABEL_13:
  *(v1 + 2) = 0;

  v35 = v2[27];
  v36 = v2[17];
  result = (*(v35 + 24))(v36, v35);
  if ((result & 1) == 0)
  {
    if (v17[227] != -1)
    {
      swift_once();
    }

    v38 = sub_185B67B8C();
    __swift_project_value_buffer(v38, qword_1EA8D2278);
    v39 = sub_185B67B6C();
    v40 = sub_185B680AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_185AC1000, v39, v40, "Backup does not exist on disk, writing one out now", v41, 2u);
      MEMORY[0x1865FE2F0](v41, -1, -1);
    }

    v42 = *(*v1 + 256);
    v44 = v2[20];
    v56 = v2[10];
    v43 = v56;
    v57 = v44;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    (*(*(v43 - 8) + 16))(boxed_opaque_existential_1, &v1[v42], v43);
    v46 = v52;
    sub_185B1A874(v55, v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    if ((*(v53 + 48))(v46, 1, v54) == 1)
    {
      return sub_185ACF5CC(v46, &unk_1EA8CD2D8, &qword_185B6D8C0);
    }

    else
    {
      v47 = v51;
      sub_185B40E60(v46, v51, type metadata accessor for Backup);
      (*(v35 + 32))(v47, v36, v35);
      v48 = sub_185B67B6C();
      v49 = sub_185B680AC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_185AC1000, v48, v49, "Successfully wrote backup.", v50, 2u);
        MEMORY[0x1865FE2F0](v50, -1, -1);
      }

      return sub_185B40AB8(v47, type metadata accessor for Backup);
    }
  }

  return result;
}

void sub_185B312CC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v58 = a3;
  v67 = a2;
  v59 = *v3;
  v6 = v59;
  v7 = v59[10];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  *&v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  sub_185B308C8();
  v13 = *(v8 + 16);
  v55 = *(*v3 + 256);
  v56 = v13;
  v13(v12, v3 + v55, v7);
  v14 = v6[20];
  v15 = *(v14 + 8);
  v60 = a1;
  v16 = v61;
  v17 = v15(a1, v67, v7, v14);
  v19 = *(v8 + 8);
  v18 = v8 + 8;
  v20 = v12;
  v21 = v19;
  v19(v20, v7);
  if (!v16)
  {
    v52 = v21;
    v53 = v7;
    v54 = v18;
    v61 = 0;
    v22 = v58;
    v23 = v67;
    if ((*(v59[29] + 40))(v58 & 1 | 0x40u, v60, v67, v17 & 0x10101, v59[19]))
    {
      swift_willThrow();
      return;
    }

    v24 = v57;
    v25 = v53;
    v56(v57, v4 + v55, v53);
    v26 = (v22 & 1) != 0 ? 256 : 0;
    v27 = v61;
    v28 = (*(v14 + 16))(v60, v23, v26 | v22 & 1u, v25, v14);
    v29 = v52(v24, v25);
    if (!v27)
    {
      v30 = v22;
      if ((v28 & 1) == 0)
      {
        v61 = 0;
LABEL_23:
        v47 = v59;
        (*(v59[27] + 8))(v59[17]);
        (*(v47[21] + 32))(v47[11]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD18, &unk_185B6E830);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_185B6E230;
        *(inited + 32) = sub_185B41028;
        *(inited + 40) = v4;
        *(inited + 48) = sub_185B41044;
        *(inited + 56) = v4;
        v49 = swift_allocObject();
        v50 = v60;
        *(v49 + 16) = v4;
        *(v49 + 24) = v50;
        *(v49 + 32) = v67;
        *(v49 + 40) = v30 & 1;
        *(inited + 64) = sub_185B41060;
        *(inited + 72) = v49;
        swift_retain_n();

        sub_185B21D18(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD20, &unk_185B6BF20);
        swift_arrayDestroy();
        return;
      }

      if (v22)
      {
        if (qword_1EA8CBFD0 != -1)
        {
          v29 = swift_once();
        }

        v31 = *(qword_1EA8D2330 + 40);
        v32 = *(v31 + 104);
        MEMORY[0x1EEE9AC00](v29);
        *(&v51 - 2) = sub_185B42CBC;
        *(&v51 - 1) = v31;

        os_unfair_lock_lock(v32 + 4);
        sub_185B42CD4(v66);
        os_unfair_lock_unlock(v32 + 4);
        v33 = *&v66[0];

        if (!__OFADD__(v33, 1))
        {
LABEL_18:
          *&v66[0] = v33 + 1;
          v35 = *(v31 + 104);
          v36 = MEMORY[0x1EEE9AC00](v34);
          *(&v51 - 2) = v31;
          *(&v51 - 1) = v66;
          MEMORY[0x1EEE9AC00](v36);
          *(&v51 - 2) = sub_185B42D34;
          *(&v51 - 1) = v37;

          os_unfair_lock_lock(v35 + 4);
          sub_185B42D64();
          v61 = 0;
          os_unfair_lock_unlock(v35 + 4);

          v38 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
          v39 = swift_initStackObject();
          v57 = xmmword_185B6BB70;
          *(v39 + 16) = xmmword_185B6BB70;
          v40 = v60;
          *(v39 + 32) = v60;
          v41 = v67;
          *(v39 + 40) = v67;

          v42 = sub_185AD0524(v39);
          swift_setDeallocating();
          sub_185ADF744(v39 + 32);
          if (v58)
          {
            v43 = swift_initStackObject();
            *(v43 + 16) = v57;
            *(v43 + 32) = v40;
            *(v43 + 40) = v41;

            v44 = sub_185AD0524(v43);
            swift_setDeallocating();
            sub_185ADF744(v43 + 32);
            v45 = 0;
          }

          else
          {
            v46 = swift_initStackObject();
            *(v46 + 16) = v57;
            *(v46 + 32) = v40;
            *(v46 + 40) = v41;

            v45 = sub_185AD0524(v46);
            swift_setDeallocating();
            sub_185ADF744(v46 + 32);
            v44 = 0;
          }

          LODWORD(v62) = 3;
          *(&v62 + 1) = v42;
          *&v63 = v44;
          *(&v63 + 1) = v45;
          v64 = 0u;
          v65 = 0u;
          sub_185B67C2C();
          v66[0] = v62;
          v66[1] = v63;
          v66[2] = v64;
          v66[3] = v65;
          sub_185ADF798(v66);
          v4 = v38;
          v30 = v58;
          if (v58)
          {
            (*(*(*v38 + 184) + 8))(v60, v67, 1, nullsub_1, 0, *(*v38 + 104));
          }

          goto LABEL_23;
        }

        __break(1u);
      }

      else
      {
        if (qword_1EA8CBFD0 != -1)
        {
          v29 = swift_once();
        }

        v31 = *(qword_1EA8D2330 + 56);
        v32 = *(v31 + 104);
        MEMORY[0x1EEE9AC00](v29);
        *(&v51 - 2) = sub_185B42CBC;
        *(&v51 - 1) = v31;

        os_unfair_lock_lock(v32 + 4);
        sub_185B42CD4(v66);
        os_unfair_lock_unlock(v32 + 4);
        v33 = *&v66[0];

        if (!__OFADD__(v33, 1))
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      os_unfair_lock_unlock(v32 + 4);
      __break(1u);
    }
  }
}

uint64_t sub_185B31BBC(uint64_t *a1)
{
  v1 = *a1;
  sub_185ACAF9C(a1);
  (*(*(v1 + 208) + 16))();
}

uint64_t sub_185B31C64(uint64_t *a1)
{
  v1 = *a1;
  sub_185ACAA28();
  (*(*(v1 + 208) + 8))();
}

BOOL sub_185B31D0C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 368);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16) || (v9 = sub_185AC9F40(a1, a2), (v10 & 1) == 0))
  {
    swift_endAccess();
LABEL_10:
    v17 = *(v6 + 168);
    v18 = *(v6 + 88);
    (*(v17 + 16))(v18, v17);
    v20 = v19;
    if (v19 >= sub_185B2F928())
    {
      return 0;
    }

    (*(v17 + 24))(v18, v17);
    return v20 < v22;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  if (v11 <= 0)
  {
    goto LABEL_10;
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v12 = sub_185B67B8C();
  __swift_project_value_buffer(v12, qword_1EA8D2278);

  v13 = sub_185B67B6C();
  v14 = sub_185B6807C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_185ACB2C4(a1, a2, v23);
    _os_log_impl(&dword_185AC1000, v13, v14, "Have active auth assertion for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x1865FE2F0](v16, -1, -1);
    MEMORY[0x1865FE2F0](v15, -1, -1);
  }

  return 1;
}

uint64_t sub_185B321AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = a7;
  v14[4] = a8;
  v15 = *(v13 + 192);
  v16 = *(v15 + 8);
  v17 = *(v13 + 112);

  v16(a1, a2, a3, a4, a5, a6, sub_185B40F70, v14, v17, v15);
}

uint64_t sub_185B322D0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_185B67D3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 + 24);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8018], v10);
  v15 = v14;
  v16 = sub_185B67D5C();
  result = (*(v11 + 8))(v13, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_185B40F80;
  *(v19 + 24) = v18;
  aBlock[4] = sub_185AE7C88;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AD94F4;
  aBlock[3] = &block_descriptor_75_0;
  v20 = _Block_copy(aBlock);

  sub_185B06F30(a1, a2 & 1);

  dispatch_sync(v15, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_185B325B0(void (*a1)(void))
{
  v3 = v1;
  v5 = sub_185ACC3B8(sub_185ADF860);
  v6 = sub_185ACC3B8(sub_185B40F28);
  a1();
  if (v2)
  {
  }

  v8 = sub_185ACC3B8(sub_185ADF860);
  v9 = sub_185ACC3B8(sub_185B40F28);
  *&v39[0] = v5;

  sub_185B4042C(v10);
  if ((sub_185B3C6B8(v5, v8) & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = sub_185B3C6B8(v6, v9);

  if ((v11 & 1) == 0)
  {
LABEL_7:
    LODWORD(v37) = 4;
    *(&v37 + 1) = v5;
    v38 = sub_185ACC3B8(sub_185B40F28);
    sub_185B67C2C();
    v39[0] = v37;
    memset(&v39[1], 0, 32);
    v39[3] = v38;
    sub_185ADF798(v39);
    goto LABEL_8;
  }

LABEL_8:
  v36 = v3;
  if (*(v8 + 16) <= *(v5 + 16) >> 3)
  {
    *&v39[0] = v5;
    sub_185ACC0B0(v8);

    result = *&v39[0];
  }

  else
  {
    v12 = sub_185B3FA60(v8, v5);

    result = v12;
  }

  v13 = 0;
  v14 = result + 56;
  v15 = 1 << *(result + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(result + 56);
  v18 = (v15 + 63) >> 6;
  v34 = result + 56;
  v35 = result;
  v33 = v18;
  while (v17)
  {
LABEL_20:
    v24 = (*(result + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v17)))));
    v25 = *v24;
    v26 = v24[1];
    v27 = qword_1ED6F4CB0;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_185B67B8C();
    __swift_project_value_buffer(v28, qword_1ED6F5130);

    v29 = sub_185B67B6C();
    v30 = sub_185B680AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v39[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_185ACB2C4(v25, v26, v39);
      _os_log_impl(&dword_185AC1000, v29, v30, "trying to unshield %s as it is no longer effectively locked", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1865FE2F0](v32, -1, -1);
      MEMORY[0x1865FE2F0](v31, -1, -1);
    }

    v17 &= v17 - 1;
    v19 = swift_allocObject();
    *(v19 + 16) = v25;
    *(v19 + 24) = v26;
    v20 = *v36;
    v21 = *(*v36 + 184);
    v40 = *(v21 + 8);
    v22 = *(v20 + 104);

    v40(v25, v26, 0, sub_185B40EE4, v19, v22, v21);

    v14 = v34;
    result = v35;
    v18 = v33;
  }

  while (1)
  {
    v23 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v23 >= v18)
    {
    }

    v17 = *(v14 + 8 * v23);
    ++v13;
    if (v17)
    {
      v13 = v23;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B32A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13)
{
  v45 = a7;
  v46 = a8;
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v42 = a4;
  v39 = a13;
  v40 = a2;
  v37 = *a1;
  v14 = v37;
  v15 = v37[10];
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v34 - v18;
  (*(v16 + 16))(&v34 - v18, v17 + v37[32], v15);
  v20 = *(v14[20] + 64);
  v33 = v14[20];
  v38 = a10;
  v21 = v46;
  v46 = a9;
  v22 = v48;
  v20(v40, v41, v42, v43, v44, v45, v21, a9, a10, a11, a12, v39, v15, v33);
  if (v22)
  {
    return (*(v16 + 8))(v19, v15);
  }

  v35 = a11;
  v36 = a12;
  v44 = HIDWORD(a11);
  v45 = HIDWORD(a12);
  v24 = HIDWORD(v38);
  v25 = v38;
  v26 = v46;
  v27 = HIDWORD(v46);
  (*(v16 + 8))(v19, v15);
  v48 = *(*a1 + 272);
  atoken.val[0] = v26;
  atoken.val[1] = v27;
  atoken.val[2] = v25;
  atoken.val[3] = v24;
  v28 = v35;
  v29 = v36;
  v30 = v44;
  v31 = v45;
  atoken.val[4] = v35;
  atoken.val[5] = v44;
  atoken.val[6] = v36;
  atoken.val[7] = v45;
  LODWORD(v43) = audit_token_to_pid(&atoken);
  atoken.val[0] = v26;
  atoken.val[1] = v27;
  atoken.val[2] = v38;
  atoken.val[3] = v24;
  atoken.val[4] = v28;
  atoken.val[5] = v30;
  atoken.val[6] = v29;
  atoken.val[7] = v31;
  v32 = audit_token_to_pidversion(&atoken);
  return (*(v37[22] + 24))(v43 | (v32 << 32), v37[12]);
}

uint64_t sub_185B32D00(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = *(v1 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 20) = v4;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_185B41210;
  *(v7 + 24) = v6;
  v10[4] = sub_185AE7C88;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_185AD94F4;
  v10[3] = &block_descriptor_107;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B32E60()
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1EA8D2278);
  v1 = sub_185B67B6C();
  v2 = sub_185B680AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = sub_185AF7AB4();
    v7 = sub_185ACB2C4(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_185AC1000, v1, v2, "removing accesses matching %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x1865FE2F0](v4, -1, -1);
    MEMORY[0x1865FE2F0](v3, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v8);
  return sub_185B325B0(sub_185B41218);
}

void sub_185B32FFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, v7 + *(v4 + 256), v5);
  (*(*(v4 + 160) + 96))(a2, v5);
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v10 = sub_185B67B8C();
    __swift_project_value_buffer(v10, qword_1EA8D2278);
    v11 = v2;
    v12 = sub_185B67B6C();
    v13 = sub_185B6808C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v14 = 136315394;
      v17 = sub_185AF7AB4();
      v19 = sub_185ACB2C4(v17, v18, &v23);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_185AC1000, v12, v13, "Could not remove access record matching %s: %@", v14, 0x16u);
      sub_185ACF5CC(v15, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1865FE2F0](v16, -1, -1);
      MEMORY[0x1865FE2F0](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_185B33338(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, v6 + *(v3 + 256), v4);
  (*(*(v3 + 160) + 88))(a2, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_185B33488(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10[-v7];
  (*(v6 + 16))(&v10[-v7], v3 + *(v4 + 256), v5);
  (*(*(v4 + 160) + 80))(v5);
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  *v10 = 4;
  memset(&v10[8], 0, 56);
  sub_185B67C2C();
  v11[0] = *v10;
  v11[1] = *&v10[16];
  v11[2] = *&v10[32];
  v11[3] = *&v10[48];
  return sub_185ADF798(v11);
}

uint64_t sub_185B3363C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8[-v5];
  v10 = MEMORY[0x1E69E7CC0];
  (*(v4 + 16))(&v8[-v5], v1 + *(v2 + 256), v3);
  v9 = &v10;
  (*(*(v2 + 160) + 72))(sub_185B40E58, v8, v3);
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_185B337A4(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DataAccessRecord(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185AE314C(a1, v7);
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_185B3D0C8(0, v8[2] + 1, 1, v8, &qword_1EA8CD4A8, &qword_185B6E828, type metadata accessor for DataAccessRecord);
    *a2 = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_185B3D0C8((v10 > 1), v11 + 1, 1, v8, &qword_1EA8CD4A8, &qword_185B6E828, type metadata accessor for DataAccessRecord);
    *a2 = v8;
  }

  v8[2] = v11 + 1;
  return sub_185B40E60(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, type metadata accessor for DataAccessRecord);
}

uint64_t sub_185B339B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, v1 + *(v2 + 256), v3);
  (*(*(v2 + 160) + 72))(sub_185B40C14, v1, v3);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_185B33AFC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = sub_185B4A660();
  if ((v4 & 1) == 0)
  {
    return (*(*(v2 + 176) + 24))(result, *(v2 + 96));
  }

  return result;
}

void sub_185B33B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v7 = v6;
  v42 = a6;
  v43 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD498, &qword_185B6E820);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_185B67AFC();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a4, v15);
  v19 = type metadata accessor for AuthAssertion(0);
  sub_185B67A7C();
  *v14 = a1;
  *(v14 + 1) = a2;
  *(v14 + 4) = a3;
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  v20 = *(*v7 + 360);
  swift_beginAccess();

  sub_185B2E978(v14, v17);
  swift_endAccess();
  v21 = *(*v7 + 368);
  swift_beginAccess();
  v22 = *(v7 + v21);
  if (*(v22 + 16) && (v23 = sub_185AC9F40(a1, a2), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
  }

  else
  {
    v25 = 0;
  }

  swift_endAccess();
  if (__OFADD__(v25, 1))
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v7 + v21);
  *(v7 + v21) = 0x8000000000000000;
  sub_185B52378(v25 + 1, a1, a2, isUniquelyReferenced_nonNull_native);
  v27 = v44;
  *(v7 + v21) = v44;
  swift_endAccess();
  if (*(*(v7 + v20) + 16) == *(v27 + 16))
  {
    v43(0);
    return;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v28 = sub_185B67B8C();
  __swift_project_value_buffer(v28, qword_1EA8D2278);
  swift_retain_n();
  v29 = sub_185B67B6C();
  v30 = sub_185B6809C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45[0] = v32;
    *v31 = 136315394;
    sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

    v33 = sub_185B67D9C();
    v35 = v34;

    v36 = sub_185ACB2C4(v33, v35, v45);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;

    v37 = sub_185B67D9C();
    v39 = v38;

    v40 = sub_185ACB2C4(v37, v39, v45);

    *(v31 + 14) = v40;
    _os_log_impl(&dword_185AC1000, v29, v30, "Assertion count is off %s %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v32, -1, -1);
    MEMORY[0x1865FE2F0](v31, -1, -1);
  }

  else
  {
  }

  v41 = sub_185AD0148(0xFuLL, 0xD000000000000016, 0x8000000185B77B70, 461, 0xD00000000000005DLL, 0x8000000185B77B90);
  v43(v41);
}

void sub_185B340AC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v85 = a3;
  v86 = a2;
  v6 = sub_185B67AFC();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD498, &qword_185B6E820);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v81 - v10;
  v12 = type metadata accessor for AuthAssertion(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v81 - v17);
  v19 = *(*v3 + 360);
  swift_beginAccess();
  v82 = v19;
  sub_185B3E24C(a1, v11);
  swift_endAccess();
  v20 = *(v13 + 48);
  v81 = v12;
  if (v20(v11, 1, v12) != 1)
  {
    sub_185B40E60(v11, v18, type metadata accessor for AuthAssertion);
    v34 = *v18;
    v33 = v18[1];
    v35 = *(*v4 + 368);
    swift_beginAccess();
    v36 = *(v4 + v35);
    v37 = v18;
    if (*(v36 + 16) && (v38 = sub_185AC9F40(v34, v33), (v39 & 1) != 0))
    {
      v40 = *(*(v36 + 56) + 8 * v38);
      swift_endAccess();
      if (v40 > 0)
      {
        if (v40 == 1)
        {
          swift_beginAccess();
          sub_185B3E1A0(v34, v33);
          goto LABEL_29;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = *(v4 + v35);
        v53 = v87;
        *(v4 + v35) = 0x8000000000000000;
        v54 = sub_185AC9F40(v34, v33);
        v56 = *(v53 + 16);
        v57 = (v55 & 1) == 0;
        v58 = __OFADD__(v56, v57);
        v59 = v56 + v57;
        if (v58)
        {
          __break(1u);
          goto LABEL_37;
        }

        v60 = v55;
        if (*(v53 + 24) < v59)
        {
          sub_185B4F8E8(v59, isUniquelyReferenced_nonNull_native);
          v54 = sub_185AC9F40(v34, v33);
          if ((v60 & 1) == (v61 & 1))
          {
LABEL_26:
            if ((v60 & 1) == 0)
            {
LABEL_40:
              __break(1u);
              return;
            }

            while (1)
            {
              v62 = v87;
              v63 = *(v87 + 56);
              v64 = *(v63 + 8 * v54);
              v58 = __OFSUB__(v64, 1);
              v65 = v64 - 1;
              if (!v58)
              {
                break;
              }

              __break(1u);
LABEL_39:
              v80 = v54;
              sub_185B51254();
              v54 = v80;
              if ((v60 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            *(v63 + 8 * v54) = v65;
            *(v4 + v35) = v62;
LABEL_29:
            swift_endAccess();
            if (*(*(v4 + v82) + 16) == *(*(v4 + v35) + 16))
            {
              (v86)(0);
LABEL_20:
              sub_185B40AB8(v37, type metadata accessor for AuthAssertion);
              return;
            }

            if (qword_1EA8CB718 == -1)
            {
LABEL_32:
              v66 = sub_185B67B8C();
              __swift_project_value_buffer(v66, qword_1EA8D2278);
              swift_retain_n();
              v67 = sub_185B67B6C();
              v68 = sub_185B6809C();
              if (os_log_type_enabled(v67, v68))
              {
                v69 = swift_slowAlloc();
                v83 = swift_slowAlloc();
                v88 = v83;
                *v69 = 136315394;
                sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

                v70 = sub_185B67D9C();
                v72 = v71;

                v73 = sub_185ACB2C4(v70, v72, &v88);

                *(v69 + 4) = v73;
                *(v69 + 12) = 2080;

                v74 = sub_185B67D9C();
                v76 = v75;

                v77 = sub_185ACB2C4(v74, v76, &v88);

                *(v69 + 14) = v77;
                _os_log_impl(&dword_185AC1000, v67, v68, "Assertion count is off %s %s", v69, 0x16u);
                v78 = v83;
                swift_arrayDestroy();
                MEMORY[0x1865FE2F0](v78, -1, -1);
                MEMORY[0x1865FE2F0](v69, -1, -1);
              }

              else
              {
              }

              v79 = sub_185AD0148(0xFuLL, 0xD000000000000016, 0x8000000185B77B70, 487, 0xD000000000000034, 0x8000000185B77B00);
              v86();

              goto LABEL_20;
            }

LABEL_37:
            swift_once();
            goto LABEL_32;
          }

          v54 = sub_185B685DC();
          __break(1u);
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }
    }

    else
    {
      swift_endAccess();
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v41 = sub_185B67B8C();
    __swift_project_value_buffer(v41, qword_1EA8D2278);
    sub_185B40B18(v18, v16, type metadata accessor for AuthAssertion);
    v42 = sub_185B67B6C();
    v43 = sub_185B6809C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v88 = v45;
      *v44 = 136315138;
      v47 = *v16;
      v46 = v16[1];

      sub_185B40AB8(v16, type metadata accessor for AuthAssertion);
      v48 = sub_185ACB2C4(v47, v46, &v88);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_185AC1000, v42, v43, "Assertion count for %s should not be zero while outstanding assertions are active", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x1865FE2F0](v45, -1, -1);
      MEMORY[0x1865FE2F0](v44, -1, -1);
    }

    else
    {

      sub_185B40AB8(v16, type metadata accessor for AuthAssertion);
    }

    v88 = 0;
    v89 = 0xE000000000000000;
    sub_185B6836C();

    v88 = 0xD000000000000026;
    v89 = 0x8000000185B77B40;
    MEMORY[0x1865FCF60](v34, v33);
    v51 = sub_185AD0148(0xFuLL, v88, v89, 476, 0xD000000000000034, 0x8000000185B77B00);

    (v86)(v51);

    goto LABEL_20;
  }

  sub_185ACF5CC(v11, &unk_1EA8CD498, &qword_185B6E820);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v21 = sub_185B67B8C();
  __swift_project_value_buffer(v21, qword_1EA8D2278);
  v22 = v83;
  v23 = v84;
  (*(v83 + 16))(v8, a1, v84);
  v24 = sub_185B67B6C();
  v25 = sub_185B680AC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v22;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v88 = v28;
    *v27 = 136315138;
    sub_185B41234(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v29 = sub_185B6856C();
    v31 = v30;
    (*(v26 + 8))(v8, v23);
    v32 = sub_185ACB2C4(v29, v31, &v88);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_185AC1000, v24, v25, "Could not find assertion with uuid: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x1865FE2F0](v28, -1, -1);
    MEMORY[0x1865FE2F0](v27, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v8, v23);
  }

  v88 = 0;
  v89 = 0xE000000000000000;
  sub_185B6836C();

  v88 = 0xD00000000000001ALL;
  v89 = 0x8000000185B77AE0;
  sub_185B41234(&qword_1ED6F4640, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v49 = sub_185B6856C();
  MEMORY[0x1865FCF60](v49);

  MEMORY[0x1865FCF60](0x756F6620746F6E20, 0xEA0000000000646ELL);
  v50 = sub_185AD0148(0xFuLL, v88, v89, 471, 0xD000000000000034, 0x8000000185B77B00);

  (v86)(v50);
}

uint64_t sub_185B34BEC(uint64_t a1)
{
  v3 = *(*v1 + 360);
  swift_beginAccess();

  v5 = sub_185B3E3E8(v4, a1);

  *(v1 + v3) = v5;
}

uint64_t sub_185B34C7C(uint64_t a1)
{
  v3 = *(*v1 + 360);
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {

    sub_185AF6E20(a1);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_185B34D08(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v35[2] = *(a1 + 32);
  v35[3] = a2;
  v41 = a2;
  v35[4] = a3;

  sub_185B4B0C4(sub_185B41AC8, v35);
  if (v3)
  {

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v12 = sub_185B67B8C();
    __swift_project_value_buffer(v12, qword_1EA8D2278);

    v13 = v3;
    v14 = sub_185B67B6C();
    v15 = sub_185B6808C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v40[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_185ACB2C4(v41, a3, v40);
      *(v16 + 12) = 2112;
      v19 = v3;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_185AC1000, v14, v15, "Couldn't handle app %s no longer lockable: %@", v16, 0x16u);
      sub_185ACF5CC(v17, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1865FE2F0](v18, -1, -1);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v7 = v6;

    v9 = (v7 >> 8) & 1;
    if (v7 == 2)
    {
      v9 = 0;
    }

    LODWORD(v34) = v9;
    v10 = *(a1 + 32);
    MEMORY[0x1EEE9AC00](v8);
    v33[2] = v10;
    v33[3] = v41;
    v33[4] = a3;

    v11 = sub_185B4B524(sub_185ADF724, v33);
    v21 = v11;

    if (v21)
    {
      v22 = v34;
      if (v34)
      {
        v23 = sub_185ADB68C();
        sub_185B2D00C(v23);

        v24 = sub_185ADB840(a1);
        v25 = sub_185ADB68C();
        v26 = sub_185ACB848(v25, v24);
        sub_185B2CFD0(v26);

        v22 = v34;
      }

      if (v7 != 2 && ((v7 | ((v7 & 0x100) >> 8)) & 1) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
        inited = swift_initStackObject();
        v34 = xmmword_185B6BB70;
        *(inited + 16) = xmmword_185B6BB70;
        *(inited + 32) = v41;
        *(inited + 40) = a3;

        v28 = v22;
        v29 = sub_185AD0524(inited);
        swift_setDeallocating();
        sub_185ADF744(inited + 32);
        if (v28)
        {
          v30 = swift_initStackObject();
          *(v30 + 16) = v34;
          *(v30 + 32) = v41;
          *(v30 + 40) = a3;

          v31 = sub_185AD0524(v30);
          swift_setDeallocating();
          sub_185ADF744(v30 + 32);
          v32 = 3;
        }

        else
        {
          v31 = MEMORY[0x1E69E7CD0];
          v32 = 2;
        }

        LODWORD(v36) = v32;
        *(&v36 + 1) = v29;
        *&v37 = 0;
        *(&v37 + 1) = v31;
        *&v38 = 0;
        v39 = 0uLL;
        *(&v38 + 1) = v29;

        sub_185B67C2C();
        v40[0] = v36;
        v40[1] = v37;
        v40[2] = v38;
        v40[3] = v39;
        sub_185ADF798(v40);
      }
    }
  }
}

void sub_185B3518C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v31 = *(a1 + 32);
  v32 = a2;
  v33 = a3;

  sub_185B4B0C4(sub_185B42CEC, v30);
  if (v3)
  {

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v8 = sub_185B67B8C();
    __swift_project_value_buffer(v8, qword_1EA8D2278);

    v9 = v3;
    v10 = sub_185B67B6C();
    v11 = sub_185B6808C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v38[0] = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_185ACB2C4(a2, a3, v38);
      *(v12 + 12) = 2112;
      v15 = v3;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&dword_185AC1000, v10, v11, "Couldn't handle app %s no longer hideable: %@", v12, 0x16u);
      sub_185ACF5CC(v13, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x1865FE2F0](v14, -1, -1);
      MEMORY[0x1865FE2F0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v17 = v7;

    v19 = v17 != 2;
    if (v17 != 2 && (v17 & 0x100) != 0)
    {
      v21 = *(a1 + 32);
      v22 = v19 & v17;
      if ((v19 & v17) != 0)
      {

        sub_185B4BA2C(a2, a3, v17 & 0x10000 | 1);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v18);
        v29[2] = v21;
        v29[3] = a2;
        v29[4] = a3;

        sub_185B4B524(sub_185B42D04, v29);
      }

      v23 = sub_185ADB68C();
      sub_185B2D00C(v23);

      if (v22)
      {
        v24 = sub_185ADB840(a1);
        v25 = sub_185ADB68C();
        v26 = sub_185ACB848(v25, v24);
        sub_185B2CFD0(v26);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_185B6BB70;
      *(inited + 32) = a2;
      *(inited + 40) = a3;

      v28 = sub_185AD0524(inited);
      swift_setDeallocating();
      sub_185ADF744(inited + 32);
      LODWORD(v34) = 3;
      *&v35 = 0;
      *(&v35 + 1) = v28;
      *(&v34 + 1) = 0;
      v36 = 0u;
      v37 = 0u;
      sub_185B67C2C();
      v38[0] = v34;
      v38[1] = v35;
      v38[2] = v36;
      v38[3] = v37;
      sub_185ADF798(v38);
    }
  }
}

void sub_185B355C0(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v11[2] = sub_185B4290C;
  v11[3] = &v12;

  sub_185ACCE00(sub_185B42920, v11);
  if (v2)
  {

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v3 = sub_185B67B8C();
    __swift_project_value_buffer(v3, qword_1EA8D2278);
    v4 = v2;
    v5 = sub_185B67B6C();
    v6 = sub_185B6808C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_185AC1000, v5, v6, "could not clear preferences for non hideable apps! %@", v7, 0xCu);
      sub_185ACF5CC(v8, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v8, -1, -1);
      MEMORY[0x1865FE2F0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_185B3578C(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 0x100) == 0)
  {
    return a3 & 0x10001;
  }

  v8[6] = v3;
  v8[7] = v4;

  sub_185AC407C(v8, a1, a2);

  return 2;
}

void sub_185B35824(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (a1)
  {
    v13 = a1;
    if (*a4 != -1)
    {
      swift_once();
    }

    v14 = sub_185B67B8C();
    __swift_project_value_buffer(v14, a5);
    v15 = a1;

    v16 = sub_185B67B6C();
    v17 = sub_185B6808C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_185ACB2C4(a2, a3, &v23);
      *(v18 + 12) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_185AC1000, v16, v17, a6, v18, 0x16u);
      sub_185ACF5CC(v19, &unk_1EA8CC820, &unk_185B6B2A0);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v18, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_185B35A24(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v70 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v62 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v62 - v11;
  v13 = MEMORY[0x1E69E7CD0];
  v92 = MEMORY[0x1E69E7CD0];
  v93 = MEMORY[0x1E69E7CD0];
  v90 = MEMORY[0x1E69E7CD0];
  v91 = MEMORY[0x1E69E7CD0];
  v14 = *(v5 + 16);
  v74 = *(v2 + 256);
  v73 = v5 + 16;
  v72 = v14;
  v14(v62 - v11, v1 + v74, v4);
  v79 = v1;
  v80 = &v93;
  v81 = &v91;
  v82 = &v92;
  v83 = &v90;
  v76 = v1;
  v15 = *(*(v2 + 160) + 56);
  v77 = *(v2 + 160);
  v15(sub_185B40BF0, v78, v4);
  v71 = v4;
  v25 = *(v5 + 8);
  v26 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v12, v4);
LABEL_6:
  v89 = v13;
  v27 = v72(v10, v76 + v74, v4);
  MEMORY[0x1EEE9AC00](v27);
  v62[-2] = &v89;
  (*(v77 + 72))(sub_185B40C0C);
  v75 = v26;
  v25(v10, v4);
  v28 = *(v3 + 200);
  v29 = *(v28 + 24);
  v10 = *(v3 + 120);
  v30 = v89;

  v31 = v29(v30, v10, v28);
  v32 = *(v31 + 16);
  v33 = *(v30 + 16);
  v69 = v25;
  v62[1] = v30;
  if (v32 > v33 >> 3)
  {
    v34 = sub_185B3FA60(v31, v30);
  }

  else
  {
    *&v88[0] = v30;
    sub_185ACC0B0(v31);

    v34 = *&v88[0];
  }

  v35 = v34 + 56;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v13 = v37 & *(v34 + 56);
  v38 = (v36 + 63) >> 6;
  v65 = v77 + 104;

  v39 = 0;
  *&v40 = 136315138;
  v64 = v40;
  *&v40 = 136315394;
  v63 = v40;
  v4 = v71;
  v67 = v34 + 56;
  v66 = v38;
  v68 = v34;
  while (v13)
  {
    v3 = v39;
LABEL_17:
    v41 = (*(v34 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v13)))));
    v42 = *v41;
    v25 = v41[1];
    v43 = qword_1EA8CB718;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = sub_185B67B8C();
    v10 = __swift_project_value_buffer(v44, qword_1EA8D2278);

    v45 = sub_185B67B6C();
    v46 = sub_185B680AC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v88[0] = v48;
      *v47 = v64;
      *(v47 + 4) = sub_185ACB2C4(v42, v25, v88);
      _os_log_impl(&dword_185AC1000, v45, v46, "removing access for uninstalled application %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x1865FE2F0](v48, -1, -1);
      v49 = v47;
      v4 = v71;
      MEMORY[0x1865FE2F0](v49, -1, -1);
    }

    v50 = v70;
    v13 &= v13 - 1;
    v72(v70, v76 + v74, v4);
    (*(v77 + 104))(v42, v25, v4);
    v69(v50, v4);

    v39 = v3;
    v34 = v68;
    v35 = v67;
    v38 = v66;
  }

  while (1)
  {
    v3 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      swift_once();
      v16 = sub_185B67B8C();
      __swift_project_value_buffer(v16, qword_1EA8D2278);
      v17 = 0;
      v18 = sub_185B67B6C();
      v19 = sub_185B6808C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        v22 = 0;
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 4) = v23;
        *v21 = v23;
        _os_log_impl(&dword_185AC1000, v18, v19, "Could not map preferences! %@", v20, 0xCu);
        sub_185ACF5CC(v21, &unk_1EA8CC820, &unk_185B6B2A0);
        v24 = v21;
        v4 = v71;
        MEMORY[0x1865FE2F0](v24, -1, -1);
        MEMORY[0x1865FE2F0](v20, -1, -1);
      }

      else
      {
      }

      v26 = v75;
      goto LABEL_6;
    }

    if (v3 >= v38)
    {
      break;
    }

    v13 = *(v35 + 8 * v3);
    ++v39;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  v51 = v93;
  if (*(v93 + 16) || (v52 = *(v91 + 16)) != 0)
  {
    LODWORD(v52) = 2;
  }

  v53 = v92;
  if (*(v92 + 16) || *(v90 + 16))
  {
    LODWORD(v52) = v52 | 1;
  }

  if (*(v34 + 16))
  {
    v54 = v52 | 4;
  }

  else
  {
    v54 = v52;
  }

  if (v54)
  {
    swift_bridgeObjectRetain_n();
    v55 = sub_185ACB848(v51, v34);
    v56 = v91;
    swift_bridgeObjectRetain_n();
    v57 = sub_185ACB848(v56, v55);
    swift_bridgeObjectRetain_n();
    v58 = sub_185ACB848(v53, v57);
    v59 = v90;
    swift_bridgeObjectRetain_n();
    v60 = sub_185ACB848(v59, v58);
    LODWORD(v84) = v54;
    *(&v84 + 1) = v60;
    *&v85 = v53;
    *(&v85 + 1) = v59;
    *&v86 = v51;
    *(&v86 + 1) = v56;
    v87 = 0uLL;
    sub_185B67C2C();
    v88[0] = v84;
    v88[1] = v85;
    v88[2] = v86;
    v88[3] = v87;
    sub_185ADF798(v88);
  }

  else
  {
  }
}

uint64_t sub_185B364E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v6 = a3 & 0x10101;
  v7 = (*(*(*a4 + 232) + 48))(a1, a2, a3 & 0x10101, *(*a4 + 152));
  v64 = *(v7 + 16);
  if (!v64)
  {
LABEL_66:

    return v6 & 0xFFFFFF;
  }

  v8 = 0;
  v62 = v4 & 0x100;
  v63 = v4;
  v68 = v7 + 32;
  v9 = 2;
  v66 = 2;
  v67 = v5;
  v10 = *(v7 + 16);
  do
  {
    v12 = *(v68 + v8);
    v13 = v8 + 1;
    v14 = v12 >> 6;
    if (v12 >> 6 > 1)
    {
      if (v14 == 2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v14)
      {
        goto LABEL_43;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v15 = sub_185B67B8C();
      __swift_project_value_buffer(v15, qword_1EA8D2278);

      v16 = sub_185B67B6C();
      v17 = sub_185B680AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v9;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v69 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_185ACB2C4(a1, v67, &v69);
        *(v19 + 12) = 1024;
        *(v19 + 14) = v12 & 1;
        _os_log_impl(&dword_185AC1000, v16, v17, "Setting %s locked: %{BOOL}d", v19, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        v21 = v20;
        v10 = v64;
        MEMORY[0x1865FE2F0](v21, -1, -1);
        v22 = v19;
        v9 = v18;
        v5 = v67;
        MEMORY[0x1865FE2F0](v22, -1, -1);
      }

      if (v6 != 2)
      {
        goto LABEL_26;
      }

      if ((v12 & 1) == 0)
      {

        v38 = sub_185B67B6C();
        v39 = sub_185B680AC();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v69 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_185ACB2C4(a1, v5, &v69);
          v42 = v39;
          v43 = v38;
          v44 = "not setting locked to false for deleted preference for %s";
          goto LABEL_53;
        }

LABEL_54:

        goto LABEL_9;
      }

      if (v13 == v10)
      {

        v6 = 1;
        goto LABEL_63;
      }

      v12 = *(v68 + v13);
      v23 = v12 >> 6;
      if (v12 >> 6 <= 1)
      {
        if (!v23)
        {
          if (qword_1EA8CB718 != -1)
          {
            swift_once();
          }

          v24 = sub_185B67B8C();
          __swift_project_value_buffer(v24, qword_1EA8D2278);

          v25 = sub_185B67B6C();
          v26 = sub_185B680AC();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v69 = v28;
            *v27 = 136315394;
            *(v27 + 4) = sub_185ACB2C4(a1, v5, &v69);
            *(v27 + 12) = 1024;
            *(v27 + 14) = v12 & 1;
            _os_log_impl(&dword_185AC1000, v25, v26, "Setting %s locked: %{BOOL}d", v27, 0x12u);
            __swift_destroy_boxed_opaque_existential_0Tm(v28);
            MEMORY[0x1865FE2F0](v28, -1, -1);
            v29 = v27;
            v10 = v64;
            MEMORY[0x1865FE2F0](v29, -1, -1);
          }

          v13 = v8 + 2;
          v6 = 1;
LABEL_26:
          v6 = v6 & 0x10100 | v12 & 1;
          v66 = (v12 & 1) == 0;
          goto LABEL_9;
        }

        v66 = 0;
        v13 = v8 + 2;
        v6 = 1;
LABEL_43:
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v46 = sub_185B67B8C();
        __swift_project_value_buffer(v46, qword_1EA8D2278);

        v47 = sub_185B67B6C();
        v48 = sub_185B680AC();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = v9;
          v51 = swift_slowAlloc();
          v69 = v51;
          *v49 = 136315394;
          *(v49 + 4) = sub_185ACB2C4(a1, v67, &v69);
          *(v49 + 12) = 1024;
          *(v49 + 14) = v12 & 1;
          _os_log_impl(&dword_185AC1000, v47, v48, "Setting %s hidden: %{BOOL}d", v49, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          v52 = v51;
          v9 = v50;
          v5 = v67;
          MEMORY[0x1865FE2F0](v52, -1, -1);
          v53 = v49;
          v10 = v64;
          MEMORY[0x1865FE2F0](v53, -1, -1);
        }

        if (v6 != 2)
        {
          v6 = v6 & 0x10001 | ((v12 & 1) << 8);
          v9 = (v12 & 1) == 0;
          goto LABEL_9;
        }

        if (v12)
        {
          v9 = 0;
          v6 = 256;
          goto LABEL_9;
        }

        v38 = sub_185B67B6C();
        v54 = sub_185B680AC();

        if (!os_log_type_enabled(v38, v54))
        {
          goto LABEL_54;
        }

        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v69 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_185ACB2C4(a1, v5, &v69);
        v42 = v54;
        v43 = v38;
        v44 = "not setting hidden to false for deleted preference for %s";
        goto LABEL_53;
      }

      if (v23 == 2)
      {
        v66 = 0;
        v13 = v8 + 2;
        v6 = 1;
LABEL_28:
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v30 = sub_185B67B8C();
        __swift_project_value_buffer(v30, qword_1EA8D2278);

        v31 = sub_185B67B6C();
        v32 = sub_185B680AC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = v9;
          v35 = swift_slowAlloc();
          v69 = v35;
          *v33 = 136315394;
          *(v33 + 4) = sub_185ACB2C4(a1, v67, &v69);
          *(v33 + 12) = 1024;
          *(v33 + 14) = v12 & 1;
          _os_log_impl(&dword_185AC1000, v31, v32, "Setting %s provisional: %{BOOL}d", v33, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          v36 = v35;
          v9 = v34;
          v5 = v67;
          MEMORY[0x1865FE2F0](v36, -1, -1);
          v37 = v33;
          v10 = v64;
          MEMORY[0x1865FE2F0](v37, -1, -1);
        }

        if (v6 != 2)
        {
          v6 = v6 & 0x101 | ((v12 & 1) << 16);
          goto LABEL_9;
        }

        if (v12)
        {
          v6 = 0x10000;
          goto LABEL_9;
        }

        v38 = sub_185B67B6C();
        v45 = sub_185B680AC();

        if (!os_log_type_enabled(v38, v45))
        {
          goto LABEL_54;
        }

        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v69 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_185ACB2C4(a1, v5, &v69);
        v42 = v45;
        v43 = v38;
        v44 = "not setting provisional to false for deleted preference for %s";
LABEL_53:
        _os_log_impl(&dword_185AC1000, v43, v42, v44, v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x1865FE2F0](v41, -1, -1);
        v55 = v40;
        v10 = v64;
        MEMORY[0x1865FE2F0](v55, -1, -1);
        goto LABEL_54;
      }

      v66 = 0;
      v13 = v8 + 2;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v56 = sub_185B67B8C();
    __swift_project_value_buffer(v56, qword_1EA8D2278);

    v57 = sub_185B67B6C();
    v58 = sub_185B680AC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_185ACB2C4(a1, v5, &v69);
      _os_log_impl(&dword_185AC1000, v57, v58, "removing preference for %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x1865FE2F0](v60, -1, -1);
      MEMORY[0x1865FE2F0](v59, -1, -1);
    }

    v11 = v66;
    if (v63)
    {
      v11 = 1;
    }

    v66 = v11;
    if (v62)
    {
      v9 = 1;
    }

    else
    {
      v9 = v9;
    }

    v6 = 2;
LABEL_9:
    v8 = v13;
  }

  while (v13 != v10);

  if (v66 == 2)
  {
    goto LABEL_64;
  }

LABEL_63:

  sub_185AC407C(&v69, a1, v5);

LABEL_64:
  if (v9 != 2)
  {

    sub_185AC407C(&v69, a1, v5);
    goto LABEL_66;
  }

  return v6 & 0xFFFFFF;
}

id sub_185B36F78(void *a1)
{
  v2 = [a1 accessed_bundle_id];
  if (v2)
  {
    v3 = v2;
    v4 = sub_185B67E4C();
    v6 = v5;

    sub_185AC407C(&v12, v4, v6);
  }

  result = [a1 accessor_bundle_id];
  if (result)
  {
    v8 = result;
    v9 = sub_185B67E4C();
    v11 = v10;

    sub_185AC407C(&v12, v9, v11);
  }

  return result;
}

void sub_185B37040()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + *(*v0 + 320)), *(v0 + *(*v0 + 320) + 24)) + 16);

  v2 = sub_185B67E1C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_185B3C638;
  *(v3 + 24) = v0;
  v5[4] = sub_185B3C640;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_185B2EE3C;
  v5[3] = &block_descriptor_20;
  v4 = _Block_copy(v5);

  [v1 registerWeeklyActivityWithName:v2 work:v4];
  _Block_release(v4);
}

uint64_t sub_185B37190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = sub_185B67B6C();
  v8 = sub_185B680AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_185AC1000, v7, v8, "Sending appprotection analytics", v9, 2u);
    MEMORY[0x1865FE2F0](v9, -1, -1);
  }

  v10 = *(a3 + 24);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_185B3C678;
  *(v12 + 24) = v11;
  v16[4] = sub_185AE7934;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_185AD94F4;
  v16[3] = &block_descriptor_19;
  v13 = _Block_copy(v16);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_185B373A4(uint64_t a1)
{
  v2 = v1;
  v84 = *v1;
  v86 = *(v84 + 80);
  v3 = *&v86[-2]._os_unfair_lock_opaque;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v82 - v5;
  if (qword_1EA8CBFD0 != -1)
  {
    v4 = swift_once();
  }

  v85 = v3;
  v7 = qword_1EA8D2330;
  v8 = *(qword_1EA8D2330 + 40);
  v9 = *(v8 + 104);
  MEMORY[0x1EEE9AC00](v4);
  *(&v82 - 2) = sub_185B40614;
  *(&v82 - 1) = v8;

  os_unfair_lock_lock(v9 + 4);
  sub_185B4064C(aBlock);
  os_unfair_lock_unlock(v9 + 4);

  v10 = sub_185B6803C();
  v11 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v11;
  v83 = 0xD00000000000001ALL;
  sub_185B52B40(v10, 0xD00000000000001ALL, 0x8000000185B77980, isUniquelyReferenced_nonNull_native);
  v13 = aBlock[0];
  v14 = v7[6];
  v15 = *(v14 + 104);
  MEMORY[0x1EEE9AC00](v16);
  *(&v82 - 2) = sub_185B42CBC;
  *(&v82 - 1) = v14;

  os_unfair_lock_lock(v15 + 4);
  sub_185B42CD4(aBlock);
  os_unfair_lock_unlock(v15 + 4);

  v17 = sub_185B6803C();
  v18 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v13;
  sub_185B52B40(v17, 0xD00000000000001CLL, 0x8000000185B779A0, v18);
  v19 = aBlock[0];
  v20 = v7[7];
  v21 = *(v20 + 104);
  MEMORY[0x1EEE9AC00](v22);
  *(&v82 - 2) = sub_185B42CBC;
  *(&v82 - 1) = v20;

  os_unfair_lock_lock(v21 + 4);
  sub_185B42CD4(aBlock);
  os_unfair_lock_unlock(v21 + 4);

  v23 = sub_185B6803C();
  v24 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v19;
  sub_185B52B40(v23, 0xD00000000000001CLL, 0x8000000185B779C0, v24);
  v25 = aBlock[0];
  v26 = v7[8];
  v27 = *(v26 + 104);
  MEMORY[0x1EEE9AC00](v28);
  *(&v82 - 2) = sub_185B42CBC;
  *(&v82 - 1) = v26;

  os_unfair_lock_lock(v27 + 4);
  sub_185B42CD4(aBlock);
  os_unfair_lock_unlock(v27 + 4);

  v29 = sub_185B6803C();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v25;
  sub_185B52B40(v29, 0xD00000000000001CLL, 0x8000000185B779E0, v30);
  v31 = aBlock[0];
  v32 = v7[5];
  aBlock[0] = 0;
  v33 = *(v32 + 104);
  v35 = MEMORY[0x1EEE9AC00](v34);
  *(&v82 - 2) = v32;
  *(&v82 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v35);
  *(&v82 - 2) = sub_185B40664;
  *(&v82 - 1) = v36;

  os_unfair_lock_lock(v33 + 4);
  sub_185B4068C();
  os_unfair_lock_unlock(v33 + 4);

  v38 = v7[6];
  aBlock[0] = 0;
  v39 = *(v38 + 104);
  v40 = MEMORY[0x1EEE9AC00](v37);
  *(&v82 - 2) = v38;
  *(&v82 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v40);
  *(&v82 - 2) = sub_185B42D34;
  *(&v82 - 1) = v41;

  os_unfair_lock_lock(v39 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v39 + 4);

  v43 = v7[7];
  aBlock[0] = 0;
  v44 = *(v43 + 104);
  v45 = MEMORY[0x1EEE9AC00](v42);
  *(&v82 - 2) = v43;
  *(&v82 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v45);
  *(&v82 - 2) = sub_185B42D34;
  *(&v82 - 1) = v46;

  os_unfair_lock_lock(v44 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v44 + 4);

  v48 = v7[8];
  aBlock[0] = 0;
  v49 = *(v48 + 104);
  v50 = MEMORY[0x1EEE9AC00](v47);
  *(&v82 - 2) = v48;
  *(&v82 - 1) = aBlock;
  MEMORY[0x1EEE9AC00](v50);
  *(&v82 - 2) = sub_185B42D34;
  *(&v82 - 1) = v51;

  os_unfair_lock_lock(v49 + 4);
  sub_185B42D64();
  os_unfair_lock_unlock(v49 + 4);

  v88 = 0;
  v89 = 0;
  v53 = v85;
  v52 = v86;
  (*(v85 + 16))(v6, v2 + *(*v2 + 256), v86);
  v54 = sub_185B4A790(v52, *(v84 + 160));
  (*(v53 + 8))(v6, v52);
  v55 = [objc_opt_self() enumeratorWithOptions_];
  v56 = swift_allocObject();
  v56[2] = v54;
  v56[3] = v2;
  v56[4] = &v89;
  v56[5] = &v88;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_185B40988;
  *(v57 + 24) = v56;
  aBlock[4] = sub_185B40994;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185AD7364;
  aBlock[3] = &block_descriptor_40_0;
  v58 = _Block_copy(aBlock);

  [(os_unfair_lock_s *)v55 swift_forEach:v58];
  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    os_unfair_lock_unlock((isEscapingClosureAtFileLocation + 16));
    __break(1u);
    os_unfair_lock_unlock(v55 + 4);
    __break(1u);
  }

  else
  {
    v60 = sub_185B6803C();
    v61 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v31;
    sub_185B52B40(v60, 0xD000000000000012, 0x8000000185B77A00, v61);
    v62 = aBlock[0];
    v86 = v55;
    v63 = sub_185B6803C();
    v64 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v62;
    sub_185B52B40(v63, 0xD000000000000012, 0x8000000185B77A20, v64);
    v65 = aBlock[0];

    sub_185B3E554(v66, sub_185B3ED14, sub_185B3ED14);

    v67 = sub_185B6803C();
    v68 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v65;
    sub_185B52B40(v67, 0xD000000000000013, 0x8000000185B77A40, v68);
    v69 = aBlock[0];

    sub_185B3E554(v70, sub_185B3EC18, sub_185B3EC18);

    v71 = sub_185B6803C();
    v72 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v69;
    sub_185B52B40(v71, 0xD000000000000013, 0x8000000185B77A60, v72);
    v73 = aBlock[0];

    sub_185B3E6C4(sub_185B4099C, v2, v54);

    v74 = sub_185B6803C();
    v75 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v73;
    sub_185B52B40(v74, 0xD00000000000001ELL, 0x8000000185B77A80, v75);
    v76 = aBlock[0];
    sub_185B3E6C4(sub_185B409BC, v2, v54);

    v77 = sub_185B6803C();
    v78 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v76;
    sub_185B52B40(v77, v83, 0x8000000185B77AA0, v78);
    v79 = aBlock[0];
    v80 = sub_185B67E1C();
    sub_185B38490(v79);

    sub_185ADF590(0, &qword_1EA8CB620, 0x1E69E58C0);
    v81 = sub_185B67D7C();

    AnalyticsSendEvent();
  }
}

void sub_185B37FD4(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v7 = *a3;
  v8 = [a1 bundleIdentifier];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = sub_185B67E4C();
  v12 = v11;

  v13 = *(a2 + 16);
  v25 = a5;
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = sub_185AC9F40(v10, v12);
  if ((v15 & 1) == 0)
  {
    LODWORD(v13) = 0;
LABEL_11:
    v18 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v16 = (*(a2 + 56) + 3 * v14);
  LODWORD(v13) = *v16;
  if (v16[2])
  {
    v17 = 0x10000;
  }

  else
  {
    v17 = 0;
  }

  if (v16[1])
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

LABEL_12:
  v19 = *(v7 + 232);
  v20 = *(v19 + 40);
  v21 = *(v7 + 152);
  v22 = v18 | v13;
  v23 = v20(1, v10, v12, v18 | v13 | v17, v21, v19);
  if (v23)
  {
  }

  else
  {
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    ++*a4;
  }

  v24 = v20(65, v10, v12, v22 | v17, v21, v19);

  if (!v24)
  {
    if (!__OFADD__(*v25, 1))
    {
      ++*v25;
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }
}

uint64_t sub_185B381D4(uint64_t *a1, _BYTE *a2)
{
  if (*a2 != 1)
  {
    v7 = 0;
    return v7 & 1;
  }

  v4 = *a1;
  v3 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v6 = sub_185AD006C(v4, v3, 0);
  if (v2)
  {

LABEL_4:
    v7 = 1;
    return v7 & 1;
  }

  if (!v6)
  {
    goto LABEL_4;
  }

  v9 = v6;
  v10 = [v6 typeForInstallMachinery];
  if (!v10)
  {
    sub_185B67E4C();
    goto LABEL_16;
  }

  v11 = v10;
  v12 = sub_185B67E4C();
  v14 = v13;

  v15 = sub_185B67E4C();
  if (!v14)
  {
LABEL_16:

    v7 = 1;
    return v7 & 1;
  }

  if (v12 == v15 && v14 == v16)
  {

    v7 = 0;
  }

  else
  {
    v18 = sub_185B6859C();

    v7 = v18 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_185B38338(uint64_t *a1, _BYTE *a2)
{
  if (*a2 != 1)
  {
    goto LABEL_12;
  }

  v4 = *a1;
  v3 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v6 = sub_185AD006C(v4, v3, 0);
  if (v2)
  {

    v7 = 0;
    return v7 & 1;
  }

  if (!v6)
  {
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  v8 = v6;
  v9 = [v6 typeForInstallMachinery];
  if (!v9)
  {
    sub_185B67E4C();
    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_185B67E4C();
  v13 = v12;

  v14 = sub_185B67E4C();
  if (!v13)
  {
LABEL_15:

    v7 = 0;
    return v7 & 1;
  }

  if (v11 == v14 && v13 == v15)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_185B6859C();
  }

  return v7 & 1;
}

void sub_185B38490(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD458, &qword_185B6E7E8);
    v2 = sub_185B6847C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_185AC9F40(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_185B38670()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = sub_185B67CAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F88], v4);
  v8 = sub_185B6814C();
  (*(v5 + 8))(v7, v4);
  v9 = v0[3];
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v3[5];
  *(v11 + 32) = v2[12];
  *(v11 + 40) = *(v3 + 104);
  *(v11 + 56) = v2[15];
  *(v11 + 64) = v3[8];
  *(v11 + 80) = v2[18];
  *(v11 + 88) = v2[19];
  *(v11 + 96) = v2[20];
  *(v11 + 104) = v2[21];
  *(v11 + 112) = v2[22];
  *(v11 + 120) = v2[23];
  *(v11 + 128) = v2[24];
  *(v11 + 136) = v2[25];
  *(v11 + 144) = v2[26];
  *(v11 + 152) = v2[27];
  *(v11 + 160) = v2[28];
  *(v11 + 168) = v2[29];
  *(v11 + 176) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD470, &qword_185B6E800);
  swift_allocObject();
  v12 = v9;
  v13 = sub_185B406B4(v8, v12, sub_185B409DC, v11);

  v1[2] = v13;
}

uint64_t sub_185B389D0@<X0>(uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = sub_185B67C9C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_185B67CDC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    (*(a13 + 16))(a3);
    v29 = *(v23 + 24);
    aBlock[4] = sub_185B40AB4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_58_2;
    v28 = _Block_copy(aBlock);

    sub_185B67CBC();
    v30 = MEMORY[0x1E69E7CC0];
    sub_185B41234(&qword_1ED6F45B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    v27 = v18;
    sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580, MEMORY[0x1E69E6328]);
    sub_185B682CC();
    v24 = v28;
    MEMORY[0x1865FD170](0, v21, v17, v28);
    _Block_release(v24);
    (*(v15 + 8))(v17, v14);
    (*(v19 + 8))(v21, v27);
  }

  else
  {
    v26 = type metadata accessor for Backup(0);
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }
}

uint64_t sub_185B38D38(uint64_t a1)
{
  v178 = *v1;
  v180 = v1;
  v3 = v178[10];
  v174 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](0);
  v6 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v168 = &v160 - v8;
  v171 = 0;
  v181 = type metadata accessor for Backup(v7);
  MEMORY[0x1EEE9AC00](v181);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_141;
  }

LABEL_2:
  v11 = sub_185B67B8C();
  v12 = __swift_project_value_buffer(v11, qword_1EA8D2278);
  sub_185B40B18(a1, v10, type metadata accessor for Backup);
  v176 = v12;
  v13 = sub_185B67B6C();
  v14 = sub_185B680AC();
  v15 = os_log_type_enabled(v13, v14);
  v177 = v3;
  v164 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v187[0] = v17;
    *v16 = 136315138;
    v18 = sub_185B1A6D8();
    v20 = v19;
    sub_185B40AB8(v10, type metadata accessor for Backup);
    v21 = sub_185ACB2C4(v18, v20, v187);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_185AC1000, v13, v14, "processing backup: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x1865FE2F0](v17, -1, -1);
    MEMORY[0x1865FE2F0](v16, -1, -1);
  }

  else
  {

    sub_185B40AB8(v10, type metadata accessor for Backup);
  }

  v22 = *(v181 + 24);
  v175 = a1;
  v23 = *(a1 + v22);
  v3 = v23 + 56;
  v6 = 1;
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v10 = v25 & *(v23 + 56);
  v26 = (v24 + 63) >> 6;

  v27 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  v179 = v23;
  for (i = v23 + 56; ; v3 = i)
  {
    if (!v10)
    {
      while (1)
      {
        a1 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (a1 >= v26)
        {
          break;
        }

        v10 = *(v3 + 8 * a1);
        ++v27;
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v47 = *(v175 + *(v181 + 20));
      a1 = v47 + 56;
      v48 = 1 << *(v47 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v10 = v49 & *(v47 + 56);
      v50 = (v48 + 63) >> 6;

      v51 = 0;
      v172 = v47;
      v181 = v47 + 56;
      while (v10)
      {
        v53 = v51;
LABEL_34:
        v54 = (*(v47 + 48) + ((v53 << 10) | (16 * __clz(__rbit64(v10)))));
        a1 = *v54;
        v55 = v54[1];
        v3 = v28[2];

        if (v3 && (v56 = sub_185AC9F40(a1, v55), (v57 & 1) != 0))
        {
          v6 = *(v28[7] + 3 * v56 + 1);
        }

        else
        {
          v6 = 0;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v187[0] = v28;
        v59 = sub_185AC9F40(a1, v55);
        v61 = v28[2];
        v62 = (v60 & 1) == 0;
        v39 = __OFADD__(v61, v62);
        v63 = v61 + v62;
        if (v39)
        {
          goto LABEL_134;
        }

        v3 = v60;
        if (v28[3] >= v63)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v70 = v59;
            sub_185B51C20();
            v59 = v70;
          }
        }

        else
        {
          sub_185B5060C(v63, isUniquelyReferenced_nonNull_native);
          v59 = sub_185AC9F40(a1, v55);
          if ((v3 & 1) != (v64 & 1))
          {
            goto LABEL_142;
          }
        }

        v47 = v172;
        v10 &= v10 - 1;
        v65 = 3 * v59;
        if (v3)
        {

          v28 = *&v187[0];
          v52 = (*(*&v187[0] + 56) + v65);
          *v52 = 1;
          v52[1] = v6;
          v52[2] = 1;
        }

        else
        {
          v28 = *&v187[0];
          *(*&v187[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
          v66 = (v28[6] + 16 * v59);
          *v66 = a1;
          v66[1] = v55;
          v67 = (v28[7] + v65);
          *v67 = 1;
          v67[1] = v6;
          v67[2] = 1;
          v68 = v28[2];
          v39 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v39)
          {
            goto LABEL_140;
          }

          v28[2] = v69;
        }

        v51 = v53;
        a1 = v181;
      }

      while (1)
      {
        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_130;
        }

        if (v53 >= v50)
        {
          break;
        }

        v10 = *(a1 + 8 * v53);
        ++v51;
        if (v10)
        {
          goto LABEL_34;
        }
      }

      sub_185B4A814(v71);
      v72 = (*(v178[25] + 24))();

      v74 = sub_185B4A814(v73);
      if (*(v72 + 16) <= *(v74 + 16) >> 3)
      {
        *&v187[0] = v74;
        sub_185ACC0B0(v72);
        v169 = *&v187[0];
      }

      else
      {
        v169 = sub_185B3FA60(v72, v74);
      }

      v6 = v171;
      v75 = v174;
      v3 = v72 + 56;
      v76 = 1 << *(v72 + 32);
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v78 = v77 & *(v72 + 56);
      v174 = *(*v180 + 256);
      v79 = (v76 + 63) >> 6;
      v173 = (v75 + 16);
      v175 = (v75 + 8);

      v80 = 0;
      *&v81 = 136315394;
      v165 = v81;
      v170 = v72;
      v167 = v72 + 56;
      v166 = v79;
      while (v78)
      {
        v82 = v80;
LABEL_61:
        if (!v28[2])
        {
          goto LABEL_135;
        }

        v83 = (*(v72 + 48) + ((v82 << 10) | (16 * __clz(__rbit64(v78)))));
        a1 = *v83;
        v84 = v83[1];

        v85 = sub_185AC9F40(a1, v84);
        if ((v86 & 1) == 0)
        {
          goto LABEL_136;
        }

        v78 &= v78 - 1;
        v87 = (v28[7] + 3 * v85);
        v88 = *v87;
        v89 = v87[1];
        v162 = v87[2];
        v90 = v168;
        v10 = v177;
        (*v173)(v168, &v180[v174], v177);
        if (v89)
        {
          v91 = 256;
        }

        else
        {
          v91 = 0;
        }

        (*(v178[20] + 16))(a1, v84, v91 | v88, v10);
        if (v6)
        {
          (*v175)(v90, v10);

          v92 = v6;
          v93 = sub_185B67B6C();
          v94 = sub_185B6808C();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v171 = v93;
            v96 = v95;
            v97 = swift_slowAlloc();
            v10 = v6;
            v98 = swift_slowAlloc();
            *&v187[0] = v98;
            *v96 = v165;
            v99 = sub_185ACB2C4(a1, v84, v187);

            *(v96 + 4) = v99;
            *(v96 + 12) = 2112;
            v100 = v10;
            v101 = _swift_stdlib_bridgeErrorToNSError();
            *(v96 + 14) = v101;
            *v97 = v101;
            v102 = v171;
            _os_log_impl(&dword_185AC1000, v171, v94, "could not set recover preferences for %s: %@", v96, 0x16u);
            sub_185ACF5CC(v97, &unk_1EA8CC820, &unk_185B6B2A0);
            MEMORY[0x1865FE2F0](v97, -1, -1);
            __swift_destroy_boxed_opaque_existential_0Tm(v98);
            MEMORY[0x1865FE2F0](v98, -1, -1);
            MEMORY[0x1865FE2F0](v96, -1, -1);
          }

          else
          {
          }

          v6 = 0;
          v80 = v82;
        }

        else
        {
          v161 = v88;
          v171 = 0;
          (*v175)(v90, v10);

          v10 = sub_185B67B6C();
          v103 = sub_185B680AC();

          if (os_log_type_enabled(v10, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            *&v187[0] = v105;
            *v104 = v165;
            v106 = sub_185ACB2C4(a1, v84, v187);

            *(v104 + 4) = v106;
            *(v104 + 12) = 2080;
            if (v162)
            {
              v107 = 0x10000;
            }

            else
            {
              v107 = 0;
            }

            v108 = sub_185B4AE78(v107 | v161 | v91);
            v110 = sub_185ACB2C4(v108, v109, v187);

            *(v104 + 14) = v110;
            _os_log_impl(&dword_185AC1000, v10, v103, "Recovered preferences for %s: %s", v104, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865FE2F0](v105, -1, -1);
            MEMORY[0x1865FE2F0](v104, -1, -1);
          }

          else
          {
          }

          v80 = v82;
          v6 = v171;
        }

        a1 = v181;
        v72 = v170;
        v3 = v167;
        v79 = v166;
      }

      while (1)
      {
        v82 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_131;
        }

        if (v82 >= v79)
        {
          break;
        }

        v78 = *(v3 + 8 * v82);
        ++v80;
        if (v78)
        {
          goto LABEL_61;
        }
      }

      v188 = MEMORY[0x1E69E7CD0];
      v189 = MEMORY[0x1E69E7CD0];
      v3 = v169;
      v111 = (v169 + 56);
      v112 = 1 << *(v169 + 32);
      if (v112 < 64)
      {
        v113 = ~(-1 << v112);
      }

      else
      {
        v113 = -1;
      }

      v10 = v113 & *(v169 + 56);
      v114 = (v112 + 63) >> 6;

      v115 = 0;
      v116 = v179;
      v168 = v111;
      v167 = v114;
      for (j = v28; ; v28 = j)
      {
        if (!v10)
        {
          while (1)
          {
            v117 = v115 + 1;
            if (__OFADD__(v115, 1))
            {
              break;
            }

            if (v117 >= v114)
            {

              if (*(v3 + 16))
              {
                LODWORD(v183) = 3;
                *(&v183 + 1) = v3;
                *&v184 = 0;
                *(&v184 + 1) = v189;
                *&v185 = 0;
                v186 = 0uLL;
                *(&v185 + 1) = v188;
                sub_185B67C2C();
                v187[0] = v183;
                v187[1] = v184;
                v187[2] = v185;
                v187[3] = v186;
                sub_185ADF798(v187);
              }

              else
              {
              }
            }

            v10 = *&v111[8 * v117];
            ++v115;
            if (v10)
            {
              goto LABEL_88;
            }
          }

LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          swift_once();
          goto LABEL_2;
        }

        v117 = v115;
LABEL_88:
        v118 = (*(v3 + 48) + ((v117 << 10) | (16 * __clz(__rbit64(v10)))));
        v119 = *v118;
        v120 = v118[1];
        if (*(v116 + 16))
        {
          sub_185B6866C();

          sub_185B67EEC();
          v121 = sub_185B686AC();
          v122 = -1 << *(v116 + 32);
          v3 = v121 & ~v122;
          if ((*(i + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
          {
            v123 = ~v122;
            do
            {
              v124 = (*(v116 + 48) + 16 * v3);
              v125 = *v124 == v119 && v124[1] == v120;
              if (v125 || (sub_185B6859C() & 1) != 0)
              {
                goto LABEL_109;
              }

              v3 = (v3 + 1) & v123;
            }

            while (((*(i + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) != 0);
          }
        }

        else
        {
        }

        v126 = v172;
        if (*(v172 + 16))
        {
          sub_185B6866C();
          sub_185B67EEC();
          v127 = sub_185B686AC();
          v128 = -1 << *(v126 + 32);
          v3 = v127 & ~v128;
          if ((*(a1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
          {
            v129 = ~v128;
            while (1)
            {
              v130 = (*(v126 + 48) + 16 * v3);
              v131 = *v130 == v119 && v130[1] == v120;
              if (v131 || (sub_185B6859C() & 1) != 0)
              {
                break;
              }

              v3 = (v3 + 1) & v129;
              if (((*(a1 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
              {
                goto LABEL_110;
              }
            }

LABEL_109:

            sub_185AC407C(v187, v119, v120);
          }
        }

LABEL_110:
        if (!v28[2])
        {
          goto LABEL_137;
        }

        v132 = sub_185AC9F40(v119, v120);
        if ((v133 & 1) == 0)
        {
          goto LABEL_138;
        }

        v10 &= v10 - 1;
        v134 = (v28[7] + 3 * v132);
        v135 = *v134;
        v136 = v134[1];
        LODWORD(v166) = v134[2];
        v137 = v164;
        v138 = v177;
        (*v173)(v164, &v180[v174], v177);
        if (v136)
        {
          v139 = 256;
        }

        else
        {
          v139 = 0;
        }

        (*(v178[20] + 16))(v119, v120, v139 | v135 | 0x10000u, v138);
        if (v6)
        {
          (*v175)(v137, v138);

          v140 = v6;
          v141 = sub_185B67B6C();
          v142 = sub_185B6808C();

          if (os_log_type_enabled(v141, v142))
          {
            v143 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v145 = v6;
            v146 = swift_slowAlloc();
            *&v187[0] = v146;
            *v143 = v165;
            v147 = sub_185ACB2C4(v119, v120, v187);

            *(v143 + 4) = v147;
            *(v143 + 12) = 2112;
            v148 = v145;
            v149 = _swift_stdlib_bridgeErrorToNSError();
            *(v143 + 14) = v149;
            *v144 = v149;
            _os_log_impl(&dword_185AC1000, v141, v142, "could not set provisional preferences for %s: %@", v143, 0x16u);
            sub_185ACF5CC(v144, &unk_1EA8CC820, &unk_185B6B2A0);
            MEMORY[0x1865FE2F0](v144, -1, -1);
            __swift_destroy_boxed_opaque_existential_0Tm(v146);
            MEMORY[0x1865FE2F0](v146, -1, -1);
            MEMORY[0x1865FE2F0](v143, -1, -1);
          }

          else
          {
          }

          v6 = 0;
          v115 = v117;
        }

        else
        {
          v161 = v139;
          v162 = v135;
          v171 = 0;
          (*v175)(v137, v138);

          v150 = sub_185B67B6C();
          v151 = sub_185B680AC();

          if (os_log_type_enabled(v150, v151))
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            *&v187[0] = v153;
            *v152 = v165;
            v154 = sub_185ACB2C4(v119, v120, v187);

            *(v152 + 4) = v154;
            *(v152 + 12) = 2080;
            if (v166)
            {
              v155 = 0x10000;
            }

            else
            {
              v155 = 0;
            }

            v156 = sub_185B4AE78(v155 | v162 | v161);
            v158 = sub_185ACB2C4(v156, v157, v187);

            *(v152 + 14) = v158;
            _os_log_impl(&dword_185AC1000, v150, v151, "Set provisional preferences for %s to %s", v152, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1865FE2F0](v153, -1, -1);
            MEMORY[0x1865FE2F0](v152, -1, -1);
          }

          else
          {
          }

          v115 = v117;
          v6 = v171;
        }

        v116 = v179;
        a1 = v181;
        v3 = v169;
        v111 = v168;
        v114 = v167;
      }
    }

    a1 = v27;
LABEL_15:
    v31 = (*(v23 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v10)))));
    v32 = *v31;
    v33 = v31[1];

    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v187[0] = v28;
    v35 = sub_185AC9F40(v32, v33);
    v37 = v28[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      goto LABEL_133;
    }

    v3 = v36;
    if (v28[3] < v40)
    {
      break;
    }

    if ((v34 & 1) == 0)
    {
      v46 = v35;
      sub_185B51C20();
      v35 = v46;
    }

LABEL_21:
    v23 = v179;
    v10 &= v10 - 1;
    if (v3)
    {
      v29 = v35;

      v28 = *&v187[0];
      v30 = *(*&v187[0] + 56) + 3 * v29;
      *v30 = 256;
      *(v30 + 2) = 1;
    }

    else
    {
      v28 = *&v187[0];
      *(*&v187[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
      v42 = (v28[6] + 16 * v35);
      *v42 = v32;
      v42[1] = v33;
      v43 = v28[7] + 3 * v35;
      *v43 = 256;
      *(v43 + 2) = 1;
      v44 = v28[2];
      v39 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v39)
      {
        goto LABEL_139;
      }

      v28[2] = v45;
    }

    v27 = a1;
  }

  sub_185B5060C(v40, v34);
  v35 = sub_185AC9F40(v32, v33);
  if ((v3 & 1) == (v41 & 1))
  {
    goto LABEL_21;
  }

LABEL_142:
  result = sub_185B685DC();
  __break(1u);
  return result;
}

uint64_t sub_185B3A170()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 144);
  v41 = sub_185B6829C();
  v4 = *(v41 - 8);
  v5 = MEMORY[0x1EEE9AC00](v41);
  v7 = &v40 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v40 - v9;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1EA8D2278);
  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_185AC1000, v11, v12, "start monitoring interesting pids", v13, 2u);
    MEMORY[0x1865FE2F0](v13, -1, -1);
  }

  sub_185B339B8(v14);
  v15 = sub_185B67B6C();
  v16 = sub_185B680AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_185AC1000, v15, v16, "resuming shield state manager", v17, 2u);
    MEMORY[0x1865FE2F0](v17, -1, -1);
  }

  (*(v2[23] + 24))(v2[13]);
  v18 = DMIsMigrationNeeded();
  v19 = sub_185B67B6C();
  v20 = sub_185B680AC();
  v21 = os_log_type_enabled(v19, v20);
  if (v18)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_185AC1000, v19, v20, "skipping required settings actions check because migration is in flight", v22, 2u);
      MEMORY[0x1865FE2F0](v22, -1, -1);
    }
  }

  else
  {
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_185AC1000, v19, v20, "checking for required settings actions and pruning irrelevant access records", v23, 2u);
      MEMORY[0x1865FE2F0](v23, -1, -1);
    }

    sub_185B35A24(v24);
  }

  v25 = sub_185B67B6C();
  v26 = sub_185B680AC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_185AC1000, v25, v26, "kicking off backup load", v27, 2u);
    MEMORY[0x1865FE2F0](v27, -1, -1);
  }

  sub_185B38670();
  v28 = sub_185B67B6C();
  v29 = sub_185B680AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_185AC1000, v28, v29, "registering analytics background task", v30, 2u);
    MEMORY[0x1865FE2F0](v30, -1, -1);
  }

  sub_185B37040();
  v31 = v41;
  (*(v4 + 16))(v7, v1 + *(*v1 + 344), v41);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v4 + 8))(v7, v31);
  }

  else
  {
    v32 = v40;
    (*(v8 + 32))(v40, v7, v3);
    v33 = sub_185B67B6C();
    v34 = sub_185B680AC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_185AC1000, v33, v34, "setting up change event service", v35, 2u);
      MEMORY[0x1865FE2F0](v35, -1, -1);
    }

    (*(v2[28] + 32))(v3);
    (*(v8 + 8))(v32, v3);
  }

  v36 = sub_185B67B6C();
  v37 = sub_185B680AC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_185AC1000, v36, v37, "Asking settings authority to generate startup events", v38, 2u);
    MEMORY[0x1865FE2F0](v38, -1, -1);
  }

  return (*(v2[29] + 32))(v2[19]);
}

id *sub_185B3A868()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 32));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 33));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 34));
  (*(*(v1[13] - 8) + 8))(v0 + *(*v0 + 35));
  (*(*(v1[14] - 8) + 8))(v0 + *(*v0 + 36));
  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 37));
  (*(*(v1[16] - 8) + 8))(v0 + *(*v0 + 38));
  (*(*(v1[17] - 8) + 8))(v0 + *(*v0 + 39));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 40)));
  (*(*(v1[19] - 8) + 8))(v0 + *(*v0 + 41));

  v2 = *(*v0 + 43);
  v3 = sub_185B6829C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_185B3AC84()
{
  sub_185B3A868();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for AuthAssertion(uint64_t a1)
{
  result = qword_1EA8CBDD8;
  if (!qword_1EA8CBDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_185B3AD68(uint64_t a1)
{
  result = sub_185B67A8C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_185B3ADF4(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v6 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v7 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v8 <= 0x3F)
              {
                result = swift_checkMetadataState();
                if (v9 <= 0x3F)
                {
                  result = sub_185B6829C();
                  if (v10 <= 0x3F)
                  {
                    result = sub_185B3BE78();
                    if (v11 <= 0x3F)
                    {
                      result = swift_checkMetadataState();
                      if (v12 <= 0x3F)
                      {
                        result = sub_185ADF590(319, &qword_1ED6F48B0, 0x1E69E9610);
                        if (v13 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                          return 0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_185B3AFA0(_DWORD *a1, unsigned int a2, void *a3)
{
  v69 = a3[2];
  v68 = *(v69 - 8);
  v3 = *(a3[3] - 8);
  v4 = *(v3 + 84);
  v67 = v4;
  v71 = *(v68 + 84);
  if (v4 <= v71)
  {
    v4 = *(v68 + 84);
  }

  v5 = a3[5];
  v65 = a3[4];
  v6 = *(v65 - 8);
  v66 = *(v6 + 84);
  if (v66 > v4)
  {
    v4 = *(v6 + 84);
  }

  v7 = *(v5 - 8);
  v64 = *(v7 + 84);
  if (v64 > v4)
  {
    v4 = *(v7 + 84);
  }

  v8 = a3[7];
  v9 = *(a3[6] - 8);
  if (*(v9 + 84) > v4)
  {
    v4 = *(v9 + 84);
  }

  v10 = *(v8 - 8);
  v63 = *(v10 + 84);
  if (v63 > v4)
  {
    v4 = *(v10 + 84);
  }

  v72 = a3[8];
  v11 = *(v72 - 8);
  v12 = *(a3[9] - 8);
  v62 = *(v11 + 84);
  if (v62 > v4)
  {
    v4 = *(v11 + 84);
  }

  v61 = *(v12 + 84);
  if (v61 <= v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = a3[10];
  v15 = a3[11];
  v59 = v14;
  v16 = *(*(v14 - 8) + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v15 - 8);
  v60 = v17;
  if (v17 > v13)
  {
    v13 = v17;
  }

  v19 = *(v3 + 80);
  v76 = *(*(a3[3] - 8) + 64);
  v77 = *(v6 + 80);
  v70 = *(*(v65 - 8) + 64);
  v75 = *(v7 + 80);
  v20 = *(v9 + 80);
  v74 = *(v8 - 8);
  v21 = *(v10 + 80);
  v22 = *(v11 + 80);
  v23 = *(v12 + 80);
  v24 = *(v12 + 64);
  v25 = *(v14 - 8);
  v26 = *(v25 + 80);
  v27 = *(v25 + 64);
  v58 = *(v15 - 8);
  v28 = *(v18 + 80);
  v29 = *(v18 + 64);
  if (v13 <= *(v18 + 84))
  {
    v30 = *(v18 + 84);
  }

  else
  {
    v30 = v13;
  }

  if (v30 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v30;
  }

  if (!v16)
  {
    ++v27;
  }

  if (!a2)
  {
    return 0;
  }

  v32 = a1;
  v33 = *(*(v69 - 8) + 64) + v19;
  v34 = *(*(v5 - 8) + 64) + v20;
  v35 = *(*(a3[6] - 8) + 64) + v21;
  v36 = *(v74 + 64) + v22;
  v37 = *(*(v72 - 8) + 64) + v23;
  v38 = v24 + v26;
  v39 = v27 + 7;
  v40 = v28 + 40;
  if (v31 < a2)
  {
    v41 = ((v29 + ((v40 + ((v39 + ((v38 + ((v37 + ((v36 + ((v35 + ((v34 + ((v70 + v75 + ((v76 + v77 + (v33 & ~v19)) & ~v77)) & ~v75)) & ~v20)) & ~v21)) & ~v22)) & ~v23)) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v42 = v41 & 0xFFFFFFF8;
    if ((v41 & 0xFFFFFFF8) != 0)
    {
      v43 = 2;
    }

    else
    {
      v43 = a2 - v31 + 1;
    }

    if (v43 >= 0x10000)
    {
      v44 = 4;
    }

    else
    {
      v44 = 2;
    }

    if (v43 < 0x100)
    {
      v44 = 1;
    }

    if (v43 < 2)
    {
      v44 = 0;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v45 = *(a1 + v41);
        if (v45)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v45 = *(a1 + v41);
        if (v45)
        {
          goto LABEL_44;
        }
      }
    }

    else if (v44)
    {
      v45 = *(a1 + v41);
      if (v45)
      {
LABEL_44:
        v46 = v45 - 1;
        if (v42)
        {
          v46 = 0;
          v47 = *a1;
        }

        else
        {
          v47 = 0;
        }

        return v31 + (v47 | v46) + 1;
      }
    }
  }

  if (v71 == v31)
  {
    v48 = *(v68 + 48);
LABEL_59:

    return v48(v32);
  }

  v49 = (a1 + v33) & ~v19;
  if (v67 == v31)
  {
    v50 = *(a3[3] - 8);
LABEL_58:
    v48 = *(v50 + 48);
    v32 = v49;
    goto LABEL_59;
  }

  v49 = (v49 + v76 + v77) & ~v77;
  if (v66 == v31)
  {
    v50 = *(v65 - 8);
    goto LABEL_58;
  }

  v49 = (v49 + v70 + v75) & ~v75;
  if (v64 == v31)
  {
    v50 = *(v5 - 8);
    goto LABEL_58;
  }

  v52 = ((v34 + v49) & ~v20);
  if (*(v9 + 84) == v31)
  {
    v48 = *(v9 + 48);
    v32 = v52;
    goto LABEL_59;
  }

  v53 = ((v52 + v35) & ~v21);
  if (v63 == v31)
  {
    v48 = *(v74 + 48);
    v32 = v53;
    goto LABEL_59;
  }

  v49 = (v53 + v36) & ~v22;
  if (v62 == v31)
  {
    v50 = *(v72 - 8);
    goto LABEL_58;
  }

  if (v61 == v31)
  {
    v48 = *(*(a3[9] - 8) + 48);
    v32 = ((v37 + v49) & ~v23);
    goto LABEL_59;
  }

  v54 = (v38 + ((v37 + v49) & ~v23)) & ~v26;
  if (v60 == v31)
  {
    if (v16 >= 2)
    {
      v57 = (*(v25 + 48))(v54, v16, v59);
      if (v57 >= 2)
      {
        return v57 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v55 = (v39 + v54) & 0xFFFFFFFFFFFFFFF8;
  if ((v30 & 0x80000000) != 0)
  {
    v48 = *(v58 + 48);
    v32 = ((v40 + v55) & ~v28);
    goto LABEL_59;
  }

  v56 = *(v55 + 24);
  if (v56 >= 0xFFFFFFFF)
  {
    LODWORD(v56) = -1;
  }

  return (v56 + 1);
}

void sub_185B3B6E4(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v80 = 0;
  v5 = *(a4[2] - 8);
  v70 = v5;
  v76 = *(a4[3] - 8);
  v6 = *(v76 + 84);
  v69 = v6;
  v71 = *(v5 + 84);
  if (v6 <= v71)
  {
    v6 = *(v5 + 84);
  }

  v74 = *(a4[4] - 8);
  v7 = *(a4[5] - 8);
  v73 = v7;
  v68 = *(v74 + 84);
  if (v68 > v6)
  {
    v6 = *(v74 + 84);
  }

  v8 = *(a4[5] - 8);
  v66 = *(v7 + 84);
  if (v66 > v6)
  {
    v6 = *(v7 + 84);
  }

  v9 = a4[7];
  v72 = *(a4[6] - 8);
  v64 = *(v72 + 84);
  if (v64 > v6)
  {
    v6 = *(v72 + 84);
  }

  v10 = *(v9 - 8);
  v63 = *(v10 + 84);
  if (v63 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v10 + 84);
  }

  v12 = a4[9];
  v13 = *(a4[8] - 8);
  v14 = *(v13 + 84);
  v62 = v14;
  if (v14 <= v11)
  {
    v14 = v11;
  }

  v15 = *(v12 - 8);
  v60 = *(v15 + 84);
  if (v60 > v14)
  {
    v14 = *(v15 + 84);
  }

  v16 = *(a4[10] - 8);
  v17 = *(v16 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  v58 = v18;
  if (v18 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  v56 = a4[11];
  v20 = *(v56 - 8);
  v21 = *(v5 + 64);
  v22 = *(v76 + 80);
  v67 = v74;
  v23 = *(v74 + 64);
  v65 = v8;
  v24 = *(v73 + 64);
  v25 = *(v72 + 80);
  v26 = *(v10 + 80);
  v27 = *(*(v9 - 8) + 64);
  v61 = v13;
  v28 = *(v13 + 80);
  v29 = *(v13 + 64);
  v59 = *(v12 - 8);
  v30 = *(v15 + 80);
  v31 = *(v8 + 80);
  v32 = *(v59 + 64);
  v57 = *(a4[10] - 8);
  v33 = *(v16 + 80);
  v34 = *(v74 + 80);
  v35 = *(v20 + 80);
  v36 = v21 + v22;
  v75 = *(v76 + 64);
  v37 = v23 + v31 + ((v75 + v34 + ((v21 + v22) & ~v22)) & ~v34);
  if (v19 <= *(v20 + 84))
  {
    v38 = *(v20 + 84);
  }

  else
  {
    v38 = v19;
  }

  if (v38 <= 0x7FFFFFFF)
  {
    v39 = 0x7FFFFFFF;
  }

  else
  {
    v39 = v38;
  }

  v40 = v24 + v25;
  v41 = *(v72 + 64) + v26;
  v42 = v27 + v28;
  v43 = v29 + v30;
  v44 = (v32 + v33 + ((v29 + v30 + ((v27 + v28 + ((v41 + ((v24 + v25 + (v37 & ~v31)) & ~v25)) & ~v26)) & ~v28)) & ~v30)) & ~v33;
  if (v17)
  {
    v45 = *(*(a4[10] - 8) + 64);
  }

  else
  {
    v45 = *(*(a4[10] - 8) + 64) + 1;
  }

  v46 = ((*(*(v56 - 8) + 64) + ((v35 + 40 + ((v45 + 7 + v44) & 0xFFFFFFFFFFFFFFF8)) & ~v35) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v39 < a3)
  {
    if (((*(*(v56 - 8) + 64) + ((v35 + 40 + ((v45 + 7 + v44) & 0xFFFFFFF8)) & ~v35) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v47 = a3 - v39 + 1;
    }

    else
    {
      v47 = 2;
    }

    if (v47 >= 0x10000)
    {
      v48 = 4;
    }

    else
    {
      v48 = 2;
    }

    if (v47 < 0x100)
    {
      v48 = 1;
    }

    if (v47 >= 2)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v80 = v49;
  }

  v50 = a2;
  if (a2 > v39)
  {
    if (v46)
    {
      v51 = 1;
    }

    else
    {
      v51 = a2 - v39;
    }

    if (v46)
    {
      v52 = ~v39 + a2;
      bzero(a1, v46);
      *a1 = v52;
    }

    if (v80 > 1)
    {
      if (v80 == 2)
      {
        *(a1 + v46) = v51;
      }

      else
      {
        *(a1 + v46) = v51;
      }
    }

    else if (v80)
    {
      *(a1 + v46) = v51;
    }

    return;
  }

  if (v80 > 1)
  {
    if (v80 != 2)
    {
      *(a1 + v46) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_61;
    }

    *(a1 + v46) = 0;
    goto LABEL_60;
  }

  if (!v80)
  {
LABEL_60:
    if (!a2)
    {
      return;
    }

    goto LABEL_61;
  }

  *(a1 + v46) = 0;
  if (!a2)
  {
    return;
  }

LABEL_61:
  if (v71 == v39)
  {
    v53 = *(v70 + 56);
    v54 = a1;
  }

  else
  {
    v54 = ((a1 + v36) & ~v22);
    if (v69 == v39)
    {
      v53 = *(v76 + 56);
    }

    else if (v68 == v39)
    {
      v53 = *(v67 + 56);
      v54 = ((v54 + v75 + v34) & ~v34);
    }

    else
    {
      v54 = ((((v54 + v75 + v34) & ~v34) + v23 + v31) & ~v31);
      if (v66 == v39)
      {
        v53 = *(v65 + 56);
      }

      else
      {
        v54 = ((v54 + v40) & ~v25);
        if (v64 == v39)
        {
          v53 = *(v72 + 56);
        }

        else
        {
          v54 = ((v54 + v41) & ~v26);
          if (v63 == v39)
          {
            v53 = *(v10 + 56);
          }

          else
          {
            v54 = ((v54 + v42) & ~v28);
            if (v62 == v39)
            {
              v53 = *(v61 + 56);
            }

            else
            {
              v54 = ((v54 + v43) & ~v30);
              if (v60 == v39)
              {
                v53 = *(v59 + 56);
              }

              else
              {
                v54 = ((v54 + v32 + v33) & ~v33);
                if (v58 == v39)
                {
                  v53 = *(v57 + 56);
                  v50 = a2 + 1;
                }

                else
                {
                  v55 = (v54 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
                  if ((v38 & 0x80000000) == 0)
                  {
                    if ((a2 & 0x80000000) != 0)
                    {
                      *(v55 + 8) = 0u;
                      *(v55 + 24) = 0u;
                      *v55 = a2 & 0x7FFFFFFF;
                    }

                    else
                    {
                      *(v55 + 24) = a2 - 1;
                    }

                    return;
                  }

                  v53 = *(v20 + 56);
                  v54 = ((v35 + 40 + v55) & ~v35);
                }
              }
            }
          }
        }
      }
    }
  }

  v53(v54, v50);
}

unint64_t sub_185B3BE78()
{
  result = qword_1EA8CBBF8;
  if (!qword_1EA8CBBF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA8CBBF8);
  }

  return result;
}

double sub_185B3C1A0()
{
  sub_185B40E08();

  return result;
}

unint64_t sub_185B3C248()
{
  result = qword_1EA8CD440;
  if (!qword_1EA8CD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD440);
  }

  return result;
}

uint64_t sub_185B3C2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if (*(a1 + 72) == 1)
  {
    result = sub_185B3C500(a3);
    if (result != a2)
    {
      v11[3] = a3;
      v11[0] = a2;
      v7 = *(a1 + 16);
      v11[8] = *__swift_project_boxed_opaque_existential_1(v11, a3);
      v8 = v7;
      v9 = sub_185B685BC();

      v10 = sub_185B67E1C();

      [v8 setObject:v9 forKey:v10];

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }
  }

  return result;
}

double sub_185B3C3CC()
{
  swift_beginAccess();
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  v1 = *(v0 + 16);

  v2 = sub_185B67E1C();

  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
    sub_185AD093C(&v6, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  v5 = &v7;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = (v0 + 56);
    swift_beginAccess();
  }

  return *v5;
}

uint64_t sub_185B3C500(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 72) != 1)
  {
    return *(v1 + 64);
  }

  v2 = *(v1 + 16);

  v3 = sub_185B67E1C();

  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
    sub_185AD093C(&v7, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  v6 = &v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = (v1 + 56);
    swift_beginAccess();
  }

  return *v6;
}

uint64_t sub_185B3C678(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_185B373A4(a1);
  return v2();
}

uint64_t sub_185B3C6B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_185B6866C();

    sub_185B67EEC();
    v16 = sub_185B686AC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_185B6859C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

char *sub_185B3C8D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCD10, &unk_185B6BF10);
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

char *sub_185B3C9E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD570, &qword_185B6E8F0);
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

char *sub_185B3CB5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD210, &qword_185B6E8A0);
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

void *sub_185B3CC98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 < a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_185B3CE08(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4D8, &qword_185B6E858);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4E0, &unk_185B6E860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_185B3CF60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4D0, &unk_185B6E848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_185B3D0C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_185B3D2A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_185B6866C();
  sub_185B67EEC();
  v6 = sub_185B686AC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_185B6859C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_185B4E2E8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_185B3D4D0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_185B3D3E0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_185B6865C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_185B4E444();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_185B3D694(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_185B3D4D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_185B682EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_185B6866C();

        sub_185B67EEC();
        v10 = sub_185B686AC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_185B3D694(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_185B682EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_185B6865C() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_185B3D81C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_185B682EC() + 1) & ~v5;
    do
    {
      sub_185B6866C();

      sub_185B67EEC();
      v9 = sub_185B686AC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_185B3D9CC(int64_t a1, uint64_t a2)
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_185B682EC();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_185B67DAC();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for AuthAssertion(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_185B3DD10(int64_t a1, uint64_t a2)
{
  v40 = sub_185B67AFC();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_185B682EC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_185B41234(&qword_1EA8CD490, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_185B67DAC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_185B3E030(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_185B682EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_185B6865C();
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
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
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

uint64_t sub_185B3E1A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_185AC9F40(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_185B51254();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_185B3D81C(v6, v8);
  *v3 = v8;
  return v9;
}