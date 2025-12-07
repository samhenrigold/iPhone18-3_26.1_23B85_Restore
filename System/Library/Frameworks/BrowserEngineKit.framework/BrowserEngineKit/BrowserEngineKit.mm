uint64_t sub_19D500DD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19D500E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19D500EE4(uint64_t a1)
{
  result = sub_19D51E10C();
  if (v2 <= 0x3F)
  {
    type metadata accessor for LaunchAssertionInvalidator();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19D501124()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D50116C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_19D5011CC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19D5047B8;

  return v6(a1);
}

uint64_t sub_19D5012C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19D5041BC;

  return sub_19D5013B0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19D5013B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v17;
  type metadata accessor for WebContentProcess(0);
  v8[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[7] = v13;

  v14 = swift_task_alloc();
  v8[8] = v14;
  *v14 = v8;
  v14[1] = sub_19D503788;

  return WebContentProcess.init(bundleIdentifier:onInterruption:)(v13, a4, a5, a6, a7);
}

uint64_t sub_19D5014D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D5041BC;

  return sub_19D5011CC(a1, v4);
}

uint64_t sub_19D501588()
{
  v124 = v0;
  sub_19D5024C0(0, &qword_1ED6578F8, 0x1E69635F8);
  v1 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 applicationExtensionRecords];

      sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
      sub_19D502508();
      v5 = sub_19D51E38C();

      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = v0[18];
  if (!v6)
  {
    if (v5)
    {
      v116 = v0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_19D51E43C();
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        sub_19D502508();
        sub_19D51E39C();
        v13 = v0[2];
        v12 = v0[3];
        v14 = v0[4];
        v15 = v0[5];
        v16 = v0[6];
      }

      else
      {
        v58 = -1 << *(v5 + 32);
        v12 = (v5 + 56);
        v59 = ~v58;
        v60 = -v58;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        else
        {
          v61 = -1;
        }

        v16 = v61 & *(v5 + 56);

        v14 = v59;
        v15 = 0;
        v13 = v5;
      }

      v0 = ((v14 + 64) >> 6);
      v62 = 0x800000019D522030;
      v119 = v12;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_56:
      v63 = sub_19D51E44C();
      if (v63)
      {
        v116[13] = v63;
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        swift_dynamicCast();
        v31 = v116[12];
        i = v15;
        v6 = v16;
        if (v31)
        {
          while (1)
          {
            v67 = v62;
            v68 = [v31 extensionPointRecord];
            v69 = [v68 identifier];

            v70 = sub_19D51E28C();
            v72 = v71;

            if (v70 == 0xD000000000000024 && 0x800000019D522000 == v72)
            {
              break;
            }

            v74 = sub_19D51E4BC();

            if (v74)
            {
              goto LABEL_90;
            }

            v75 = [v31 extensionPointRecord];
            v76 = [v75 identifier];

            v77 = sub_19D51E28C();
            v79 = v78;

            if (v77 == 0xD000000000000027 && v67 == v79)
            {
              break;
            }

            v62 = v67;
            v81 = sub_19D51E4BC();

            if (v81)
            {
              goto LABEL_90;
            }

            v15 = i;
            v16 = v6;
            v12 = v119;
            if (v13 < 0)
            {
              goto LABEL_56;
            }

LABEL_59:
            v65 = v15;
            v66 = v16;
            for (i = v15; !v66; ++v65)
            {
              i = v65 + 1;
              if (__OFADD__(v65, 1))
              {
                goto LABEL_101;
              }

              if (i >= v0)
              {
                goto LABEL_76;
              }

              v66 = *(v12 + i);
            }

            v6 = (v66 - 1) & v66;
            v31 = *(*(v13 + 48) + ((i << 9) | (8 * __clz(__rbit64(v66)))));
            if (!v31)
            {
              goto LABEL_76;
            }
          }

LABEL_90:
          sub_19D502570(v13);
          v0 = v116;
LABEL_91:

          v20 = v31;
LABEL_92:

          v0[42] = v20;
          if (qword_1ED658138 != -1)
          {
            swift_once();
          }

          v95 = sub_19D51E1BC();
          __swift_project_value_buffer(v95, qword_1ED658160);
          v96 = v20;
          v97 = sub_19D51E19C();
          v98 = sub_19D51E3AC();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            *v99 = 138412290;
            *(v99 + 4) = v96;
            *v100 = v96;
            v101 = v96;
            _os_log_impl(&dword_19D4FF000, v97, v98, "WebContentProcess: Found matching appex record %@", v99, 0xCu);
            sub_19D50116C(v100, &qword_1EB0159E8, &qword_19D520C10);
            MEMORY[0x19EAFD8D0](v100, -1, -1);
            MEMORY[0x19EAFD8D0](v99, -1, -1);
          }

          v103 = v0[40];
          v102 = v0[41];
          v104 = v0[39];
          v105 = v0[37];
          v114 = v0[38];
          v115 = v0[36];
          v106 = v0[35];
          v107 = v0[33];
          v108 = v0[31];
          v120 = v0[30];
          v122 = v0[32];
          v117 = v0[34];

          [objc_allocWithZone(MEMORY[0x1E6966CB0]) initWithApplicationExtensionRecord_];
          sub_19D51E14C();
          (*(v104 + 16))(v103, v102, v114);
          sub_19D51E12C();
          (*(v106 + 16))(v115, v105, v117);

          sub_19D51E06C();
          sub_19D51E0BC();
          sub_19D51E08C();
          (*(v108 + 16))(v122, v107, v120);
          v109 = swift_task_alloc();
          v0[43] = v109;
          *v109 = v0;
          v109[1] = sub_19D5028BC;
          v110 = v0[32];
          v111 = v0[28];

          return MEMORY[0x1EEDC0888](v111, v110);
        }
      }

LABEL_76:
      sub_19D502570(v13);

      v0 = v116;
      v6 = 0;
    }

LABEL_77:
    if (qword_1ED658138 != -1)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (!v5)
  {
    v17 = v0[17];
    objc_allocWithZone(MEMORY[0x1E69635D0]);
    swift_bridgeObjectRetain_n();
    v18 = sub_19D502578(v17, v6);
LABEL_14:
    v19 = v18;

    if (sub_19D502644())
    {
      v20 = v19;
      goto LABEL_92;
    }

    goto LABEL_77;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_19D51E43C();
    sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
    sub_19D502508();
    sub_19D51E39C();
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[11];
  }

  else
  {
    v21 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v22 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v11 = v24 & *(v5 + 56);

    v9 = v22;
    v10 = 0;
    v8 = v5;
  }

  v112 = v9;
  v25 = (v9 + 64) >> 6;
  v113 = v25;
  while (v8 < 0)
  {
    v32 = sub_19D51E44C();
    if (!v32 || (v0[15] = v32, sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0), swift_dynamicCast(), v31 = v0[14], v29 = v10, v30 = v11, !v31))
    {
LABEL_49:
      v57 = v0[17];
      sub_19D502570(v8);

      objc_allocWithZone(MEMORY[0x1E69635D0]);

      v18 = sub_19D502578(v57, v6);
      goto LABEL_14;
    }

LABEL_32:
    v121 = v30;
    v33 = [v31 bundleIdentifier];
    if (!v33)
    {
      goto LABEL_22;
    }

    v118 = v31;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v38 = v0[17];
    v37 = v0[18];
    v39 = v33;
    v40 = sub_19D51E28C();
    v42 = v41;

    if (v40 == v38 && v37 == v42)
    {

      v6 = v36;
      v7 = v35;
      v8 = v34;
      v31 = v118;
      v25 = v113;
    }

    else
    {
      v6 = v36;
      v44 = sub_19D51E4BC();

      v7 = v35;
      v8 = v34;
      v31 = v118;
      v25 = v113;
      if ((v44 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v45 = [v31 extensionPointRecord];
    v46 = [v45 identifier];

    v47 = sub_19D51E28C();
    v49 = v48;

    if (v47 == 0xD000000000000024 && 0x800000019D522000 == v49)
    {
      goto LABEL_47;
    }

    v51 = sub_19D51E4BC();

    if (v51)
    {
      goto LABEL_48;
    }

    v52 = [v31 extensionPointRecord];
    v53 = [v52 identifier];

    v54 = sub_19D51E28C();
    v56 = v55;

    if (v54 == 0xD000000000000027 && 0x800000019D522030 == v56)
    {
LABEL_47:

LABEL_48:
      sub_19D502570(v8);

      goto LABEL_91;
    }

    v26 = sub_19D51E4BC();

    if (v26)
    {
      goto LABEL_48;
    }

LABEL_22:

    v10 = v29;
    v11 = v121;
  }

  v27 = v10;
  v28 = v11;
  v29 = v10;
  if (v11)
  {
LABEL_28:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v8 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      goto LABEL_49;
    }

    v28 = *(v7 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  swift_once();
LABEL_78:
  v82 = v0[18];
  v83 = sub_19D51E1BC();
  __swift_project_value_buffer(v83, qword_1ED658160);

  v84 = sub_19D51E19C();
  v85 = sub_19D51E3CC();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = v0[17];
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v123 = v88;
    *v87 = 136315138;
    if (v6)
    {
      v89 = v86;
    }

    else
    {
      v89 = 7104878;
    }

    if (!v6)
    {
      v82 = 0xE300000000000000;
    }

    v90 = sub_19D514768(v89, v82, &v123);

    *(v87 + 4) = v90;
    _os_log_impl(&dword_19D4FF000, v84, v85, "WebContentProcess: Could not find matching appex record for bundleIdentifier %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x19EAFD8D0](v88, -1, -1);
    MEMORY[0x19EAFD8D0](v87, -1, -1);
  }

  else
  {
  }

  v91 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v92 = sub_19D51E27C();
  [v91 initWithDomain:v92 code:1 userInfo:0];

  swift_willThrow();

  v93 = v0[1];

  return v93();
}

uint64_t sub_19D5024C0(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_19D502508()
{
  result = qword_1ED657870;
  if (!qword_1ED657870)
  {
    sub_19D5024C0(255, &unk_1ED657878, 0x1E69635D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED657870);
  }

  return result;
}

id sub_19D502578(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_19D51E27C();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_19D51DEAC();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_19D502644()
{
  v1 = [v0 extensionPointRecord];
  v2 = [v1 identifier];

  v3 = sub_19D51E28C();
  v5 = v4;

  if (v3 == 0xD000000000000024 && 0x800000019D522000 == v5)
  {
    goto LABEL_9;
  }

  v7 = sub_19D51E4BC();

  if ((v7 & 1) == 0)
  {
    v9 = [v0 extensionPointRecord];
    v10 = [v9 identifier];

    v11 = sub_19D51E28C();
    v13 = v12;

    if (v11 != 0xD000000000000027 || 0x800000019D522030 != v13)
    {
      v8 = sub_19D51E4BC();
      goto LABEL_10;
    }

LABEL_9:
    v8 = 1;
LABEL_10:

    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_19D5027A8()
{
  v0 = sub_19D51E1BC();
  __swift_allocate_value_buffer(v0, qword_1ED658160);
  __swift_project_value_buffer(v0, qword_1ED658160);
  return sub_19D51E1AC();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_19D5028BC()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_19D519690;
  }

  else
  {
    v2 = sub_19D5029D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D5029D0()
{
  v14 = v0[42];
  v24 = v0[41];
  v22 = v0[39];
  v23 = v0[38];
  v21 = v0[37];
  v20 = v0[34];
  v17 = v0[33];
  v18 = v0[35];
  v15 = v0[31];
  v16 = v0[30];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v13 = v0[21];
  v19 = v0[16];
  v7 = *(v3 + 16);
  v7();
  (v7)(v1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v5);
  *v4 = 1;
  (*(v6 + 104))(v4, *MEMORY[0x1E69E7F48], v13);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v10 = sub_19D502C88(sub_19D5196E8, v9, v4);

  (*(v3 + 8))(v2, v5);
  (*(v15 + 8))(v17, v16);
  (*(v18 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  *(v19 + *(type metadata accessor for WebContentProcess(0) + 20)) = v10;

  v11 = v0[1];

  return v11();
}

void *sub_19D502C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v8 = sub_19D51E20C();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_19D51E22C();
  v22 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v4[2] = 0;
  v4[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v4[3] = a2;
  v4[4] = v16;
  v4[2] = a1;
  sub_19D5024C0(0, &qword_1ED657C10, 0x1E69E9610);

  v17 = sub_19D51E3FC();
  sub_19D51E21C();
  MEMORY[0x19EAFCDB0](v13, a3);
  v18 = *(v10 + 8);
  v18(v13, v9);
  aBlock[4] = sub_19D51962C;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D516DA4;
  aBlock[3] = &block_descriptor_0;
  _Block_copy(aBlock);
  v24 = MEMORY[0x1E69E7CC0];
  sub_19D5032BC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A90, &unk_19D5210C0);
  sub_19D503314();
  sub_19D51E42C();
  sub_19D51E24C();
  swift_allocObject();
  sub_19D51E23C();

  sub_19D51E3EC();

  v19 = sub_19D51E1FC();
  (*(*(v19 - 8) + 8))(v23, v19);
  v18(v15, v22);
  return v4;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ED657C18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED657C18);
    }
  }
}

uint64_t WebContentProcess.init(bundleIdentifier:onInterruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_19D51E1FC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_19D51E10C();
  v5[24] = v7;
  v8 = *(v7 - 8);
  v5[25] = v8;
  v5[26] = *(v8 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  sub_19D51E0CC();
  v5[29] = swift_task_alloc();
  v9 = sub_19D51E09C();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = sub_19D51E11C();
  v5[34] = v10;
  v5[35] = *(v10 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v11 = sub_19D51E13C();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D501588, 0, 0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19D5032BC()
{
  result = qword_1ED657C48[0];
  if (!qword_1ED657C48[0])
  {
    sub_19D51E20C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED657C48);
  }

  return result;
}

unint64_t sub_19D503314()
{
  result = qword_1ED657C30;
  if (!qword_1ED657C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB015A90, &unk_19D5210C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED657C30);
  }

  return result;
}

uint64_t sub_19D503378()
{
  receiver = v0[3].receiver;
  super_class = v0[3].super_class;
  v3 = v0[2].receiver;
  sub_19D503498(super_class, receiver, type metadata accessor for WebContentProcess);
  v4 = type metadata accessor for __BEWebContentProcess(0);
  v5 = objc_allocWithZone(v4);
  sub_19D503498(receiver, v5 + OBJC_IVAR___BEWebContentProcess_inner, type metadata accessor for WebContentProcess);
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_19D503568(receiver, type metadata accessor for WebContentProcess);
  v3(v6, 0);

  sub_19D503568(super_class, type metadata accessor for WebContentProcess);

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_19D503498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19D503500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19D503568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19D503618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_19D5036CC(uint64_t a1)
{
  sub_19D503740();
  if (v1 <= 0x3F)
  {
    sub_19D503920();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_19D503740()
{
  if (!qword_1ED658148)
  {
    v0 = type metadata accessor for MediaEnvironment(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1ED658148);
    }
  }
}

uint64_t sub_19D503788()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19D519680;
  }

  else
  {
    v2 = sub_19D503378;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D5038A4(uint64_t a1)
{
  result = sub_19D51DF6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_19D503920()
{
  if (!qword_1ED657C40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED657C40);
    }
  }
}

uint64_t sub_19D5039A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19D503A64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v7 = type metadata accessor for ProcessCapability.MediaPlaybackCapability(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MediaEnvironment(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProcessCapability(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  sub_19D503500(v4, &v34 - v20, type metadata accessor for ProcessCapability);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_19D503500(v4, v19, type metadata accessor for ProcessCapability);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      sub_19D5041C0(v19, type metadata accessor for ProcessCapability);
    }

    sub_19D503500(v4, v16, type metadata accessor for ProcessCapability);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
      }

      else
      {
        sub_19D5041C0(v16, type metadata accessor for MediaEnvironment);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015B90, &unk_19D521560);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_19D5213A0;
    v26 = sub_19D51E27C();

    v27 = sub_19D51E27C();

    v28 = [objc_opt_self() attributeWithDomain:v26 name:v27];

    *(v25 + 32) = v28;
    v29 = v36;
    v30 = sub_19D503EDC(a1, 0, 0, v25);

    if (!v29)
    {
      v32 = v34;
      v31 = v35;
      sub_19D504C18(v34, v35);
      sub_19D504C30(v30, v32, v31, a4);
    }

    v22 = type metadata accessor for ProcessCapability;
    v23 = v21;
  }

  else
  {
    sub_19D51C494(v21, v12);
    sub_19D503500(v12, v9, type metadata accessor for MediaEnvironment);
    sub_19D51BE00(a1, a4);
    sub_19D5041C0(v9, type metadata accessor for ProcessCapability.MediaPlaybackCapability);
    v22 = type metadata accessor for MediaEnvironment;
    v23 = v12;
  }

  return sub_19D5041C0(v23, v22);
}

id sub_19D503EDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  sub_19D51E46C();

  v24[0] = 0xD00000000000002ELL;
  v24[1] = 0x800000019D522530;
  v7 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  v8 = *(v6 + 8);
  v8(v7, v6);
  v9 = sub_19D51E4AC();
  MEMORY[0x19EAFCE50](v9);

  if (a3)
  {
    v10 = (v8)(v7, v6);
    v11 = sub_19D51E27C();
    v12 = [objc_opt_self() targetWithPid:v10 environmentIdentifier:v11];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
  }

  v23 = (v8)(v7, v6);
  v12 = [objc_opt_self() targetWithPid_];
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = objc_allocWithZone(MEMORY[0x1E69C7548]);
  v14 = v12;
  v15 = sub_19D51E27C();

  sub_19D5024C0(0, &qword_1ED657C28, 0x1E69C7550);
  v16 = sub_19D51E32C();
  v17 = [v13 initWithExplanation:v15 target:v14 attributes:v16];

  v24[0] = 0;
  if ([v17 acquireWithError_])
  {
    v18 = v24[0];
  }

  else
  {
    v19 = v24[0];
    v20 = sub_19D51DEAC();

    swift_willThrow();
    [v17 invalidate];
    v21 = sub_19D51DE9C();
    sub_19D51C738(v21);

    swift_willThrow();
  }

  return v17;
}

uint64_t sub_19D5041C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19D504380()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t WebContentExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_19D50465C;
  a3[1] = v10;
  return result;
}

uint64_t sub_19D5044F4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_19D50458C(void *a1)
{
  v1 = a1;
  v2 = sub_19D51E0DC();

  return v2;
}

uint64_t sub_19D5046C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_19D5047B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19D504938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  v13 = *a4;
  v18[3] = a5(0);
  v18[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_19D503500(v7 + v13, boxed_opaque_existential_1, a7);
  sub_19D503A64(v18, a2, a3, v19);
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  if (!v8)
  {
    v16 = v19[0];
    v17 = v19[1];
    type metadata accessor for _BEProcessCapabilityGrant();
    result = swift_allocObject();
    *(result + 16) = v16;
    *(result + 24) = v17;
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t _s16BrowserEngineKit16RenderingProcessV17processIdentifiers5Int32Vvg_0()
{
  *v7.val = sub_19D51E05C();
  v7.val[2] = v0;
  v7.val[3] = v1;
  v7.val[4] = v2;
  v7.val[5] = v3;
  v7.val[6] = v4;
  v7.val[7] = v5;
  return audit_token_to_pid(&v7);
}

id sub_19D504B0C()
{
  v0 = type metadata accessor for ProcessCapability(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for BEProcessCapability(0);
  v4 = objc_allocWithZone(v3);
  sub_19D503500(v2, v4 + OBJC_IVAR___BEProcessCapability_inner, type metadata accessor for ProcessCapability);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_19D5041C0(v2, type metadata accessor for ProcessCapability);

  return v5;
}

uint64_t sub_19D504C18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_19D504C30@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result;
  if (a2)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = type metadata accessor for ProcessCapability.AssertionObserver();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate];
    *v11 = 0;
    v11[1] = 0;
    v12 = OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver_invalidationLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *&v10[v12] = v13;
    *v11 = sub_19D50511C;
    v11[1] = v8;
    v14 = v4;
    sub_19D504C18(a2, a3);
    v17.receiver = v10;
    v17.super_class = v9;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    v16 = v15;
    [v14 addObserver_];

    result = sub_19D504D74(a2, a3);
  }

  else
  {
    v15 = 0;
  }

  *a4 = v4;
  a4[1] = v15;
  return result;
}

uint64_t sub_19D504D74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19D504D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D504E24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    [v3 removeObserver_];
    [v3 invalidate];
    v5 = v4;
    sub_19D504F00(v3);
  }

  else
  {
    v5 = v1;
    [v5 invalidate];
  }

  return 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_19D504F00(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver_invalidationLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = (v1 + OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate);
  v5 = *(v1 + OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate);
  if (v5)
  {
    v6 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v5(a1);
    sub_19D504D74(v5, v6);
  }

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_19D505370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19D5041BC;

  return sub_19D5054F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19D50545C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_19D5054F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v17;
  type metadata accessor for NetworkingProcess(0);
  v8[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[7] = v13;

  v14 = swift_task_alloc();
  v8[8] = v14;
  *v14 = v8;
  v14[1] = sub_19D506CDC;

  return NetworkingProcess.init(bundleIdentifier:onInterruption:)(v13, a4, a5, a6, a7);
}

uint64_t NetworkingProcess.init(bundleIdentifier:onInterruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_19D51E1FC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_19D51E10C();
  v5[24] = v7;
  v8 = *(v7 - 8);
  v5[25] = v8;
  v5[26] = *(v8 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  sub_19D51E0CC();
  v5[29] = swift_task_alloc();
  v9 = sub_19D51E09C();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = sub_19D51E11C();
  v5[34] = v10;
  v5[35] = *(v10 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v11 = sub_19D51E13C();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D5058AC, 0, 0);
}

uint64_t sub_19D5058AC()
{
  v117 = v0;
  sub_19D5024C0(0, &qword_1ED6578F8, 0x1E69635F8);
  v1 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    v7 = v0[18];
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    goto LABEL_8;
  }

  v4 = [v3 applicationExtensionRecords];

  sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
  sub_19D502508();
  v5 = sub_19D51E38C();

  v6 = v5;
  v7 = v0[18];
  if (v7)
  {
LABEL_9:
    if (!v6)
    {
      v17 = v0[17];
      objc_allocWithZone(MEMORY[0x1E69635D0]);
      swift_bridgeObjectRetain_n();
      v18 = sub_19D502578(v17, v7);

      v19 = 0x800000019D521FD0;
      goto LABEL_43;
    }

    v109 = v7;
    if ((v6 & 0xC000000000000001) != 0)
    {

      sub_19D51E43C();
      sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
      sub_19D502508();
      sub_19D51E39C();
      v7 = v0[7];
      v13 = v0[8];
      v15 = v0[9];
      v14 = v0[10];
      v16 = v0[11];
    }

    else
    {
      v20 = -1 << *(v6 + 32);
      v13 = v6 + 56;
      v15 = ~v20;
      v21 = -v20;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v16 = v22 & *(v6 + 56);
      v23 = v6;

      v14 = 0;
      v7 = v23;
    }

    v24 = (v15 + 64) >> 6;
    v19 = 0x800000019D521FD0;
    v106 = v7;
    v111 = v24;
    while (1)
    {
      if (v7 < 0)
      {
        v29 = sub_19D51E44C();
        if (!v29)
        {
          goto LABEL_42;
        }

        v0[15] = v29;
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        swift_dynamicCast();
        v18 = v0[14];
        v27 = v14;
        v28 = v16;
        if (!v18)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v25 = v14;
        v26 = v16;
        v27 = v14;
        if (!v16)
        {
          while (1)
          {
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              __break(1u);
              goto LABEL_98;
            }

            if (v27 >= v24)
            {
              break;
            }

            v26 = *(v13 + 8 * v27);
            ++v25;
            if (v26)
            {
              goto LABEL_24;
            }
          }

LABEL_42:
          v49 = v0[17];
          sub_19D502570(v7);

          objc_allocWithZone(MEMORY[0x1E69635D0]);
          v7 = v109;

          v18 = sub_19D502578(v49, v109);

LABEL_43:
          v50 = [v18 extensionPointRecord];
          v51 = [v50 identifier];

          v52 = sub_19D51E28C();
          v54 = v53;

          if (v52 == 0xD000000000000027 && v19 == v54)
          {
            goto LABEL_89;
          }

          v56 = sub_19D51E4BC();

          if (v56)
          {
            goto LABEL_90;
          }

LABEL_72:
          if (qword_1ED658138 != -1)
          {
            goto LABEL_99;
          }

          goto LABEL_73;
        }

LABEL_24:
        v28 = (v26 - 1) & v26;
        v18 = *(*(v7 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v18)
        {
          goto LABEL_42;
        }
      }

      v113 = v28;
      v30 = [v18 bundleIdentifier];
      if (v30)
      {
        v31 = v30;
        v32 = v18;
        v33 = v13;
        v34 = v19;
        v36 = v0[17];
        v35 = v0[18];
        v37 = sub_19D51E28C();
        v39 = v38;

        if (v37 == v36 && v35 == v39)
        {

          v19 = v34;
          v13 = v33;
          v18 = v32;
          v7 = v106;
        }

        else
        {
          v41 = sub_19D51E4BC();

          v19 = v34;
          v13 = v33;
          v18 = v32;
          v7 = v106;
          if ((v41 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v42 = [v18 extensionPointRecord];
        v43 = [v42 identifier];

        v44 = sub_19D51E28C();
        v46 = v45;

        if (v44 == 0xD000000000000027 && v19 == v46)
        {

LABEL_88:
          sub_19D502570(v7);

LABEL_89:

LABEL_90:
          v0[42] = v18;
          v87 = v18;

          if (qword_1ED658138 != -1)
          {
            swift_once();
          }

          v88 = sub_19D51E1BC();
          __swift_project_value_buffer(v88, qword_1ED658160);
          v89 = v87;
          v90 = sub_19D51E19C();
          v91 = sub_19D51E3AC();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *v92 = 138412290;
            *(v92 + 4) = v89;
            *v93 = v89;
            v94 = v89;
            _os_log_impl(&dword_19D4FF000, v90, v91, "NetworkingProcess: Found matching appex record %@", v92, 0xCu);
            sub_19D50116C(v93, &qword_1EB0159E8, &qword_19D520C10);
            MEMORY[0x19EAFD8D0](v93, -1, -1);
            MEMORY[0x19EAFD8D0](v92, -1, -1);
          }

          v96 = v0[40];
          v95 = v0[41];
          v97 = v0[39];
          v98 = v0[37];
          v105 = v0[38];
          v107 = v0[36];
          v99 = v0[35];
          v100 = v0[33];
          v101 = v0[31];
          v112 = v0[30];
          v115 = v0[32];
          v110 = v0[34];

          [objc_allocWithZone(MEMORY[0x1E6966CB0]) initWithApplicationExtensionRecord_];
          sub_19D51E14C();
          (*(v97 + 16))(v96, v95, v105);
          sub_19D51E12C();
          (*(v99 + 16))(v107, v98, v110);

          sub_19D51E07C();
          sub_19D51E0BC();
          sub_19D51E08C();
          (*(v101 + 16))(v115, v100, v112);
          v102 = swift_task_alloc();
          v0[43] = v102;
          *v102 = v0;
          v102[1] = sub_19D506910;
          v103 = v0[32];
          v104 = v0[28];

          return MEMORY[0x1EEDC0888](v104, v103);
        }

        v48 = sub_19D51E4BC();

        if (v48)
        {
          goto LABEL_88;
        }
      }

LABEL_18:

      v14 = v27;
      v24 = v111;
      v16 = v113;
    }
  }

LABEL_4:
  if (!v6)
  {
    goto LABEL_72;
  }

  v108 = v7;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_19D51E43C();
    sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
    sub_19D502508();
    sub_19D51E39C();
    v8 = v0[2];
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[6];
  }

  else
  {
    v57 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v12 = v59 & *(v6 + 56);
    v8 = v6;

    v11 = 0;
  }

  v7 = (v10 + 64) >> 6;
  v114 = v0;
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_58;
  }

LABEL_55:
  v60 = sub_19D51E44C();
  if (!v60)
  {
    goto LABEL_71;
  }

  v0[13] = v60;
  sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
  swift_dynamicCast();
  v18 = v0[12];
  v61 = v11;
  v62 = v12;
  if (!v18)
  {
LABEL_70:
    v0 = v114;
LABEL_71:
    sub_19D502570(v8);

    v7 = v108;
    goto LABEL_72;
  }

  while (1)
  {
    v65 = v8;
    v66 = [v18 extensionPointRecord];
    v67 = [v66 identifier];

    v68 = sub_19D51E28C();
    v70 = v69;

    if (v68 == 0xD000000000000027 && 0x800000019D521FD0 == v70)
    {

      v86 = v65;
LABEL_86:
      sub_19D502570(v86);

      v0 = v114;
      goto LABEL_90;
    }

    v72 = sub_19D51E4BC();

    v8 = v65;
    if (v72)
    {
      v86 = v65;
      goto LABEL_86;
    }

    v11 = v61;
    v12 = v62;
    v0 = v114;
    if (v8 < 0)
    {
      goto LABEL_55;
    }

LABEL_58:
    v63 = v11;
    v64 = v12;
    v61 = v11;
    if (!v12)
    {
      break;
    }

LABEL_62:
    v62 = (v64 - 1) & v64;
    v18 = *(*(v8 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v64)))));
    if (!v18)
    {
      goto LABEL_70;
    }
  }

  while (1)
  {
    v61 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v61 >= v7)
    {
      goto LABEL_70;
    }

    v64 = *(v9 + 8 * v61);
    ++v63;
    if (v64)
    {
      goto LABEL_62;
    }
  }

LABEL_98:
  __break(1u);
LABEL_99:
  swift_once();
LABEL_73:
  v73 = v0[18];
  v74 = sub_19D51E1BC();
  __swift_project_value_buffer(v74, qword_1ED658160);

  v75 = sub_19D51E19C();
  v76 = sub_19D51E3CC();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = v0[17];
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v116 = v79;
    *v78 = 136315138;
    if (v7)
    {
      v80 = v77;
    }

    else
    {
      v80 = 7104878;
    }

    if (!v7)
    {
      v73 = 0xE300000000000000;
    }

    v81 = sub_19D514768(v80, v73, &v116);

    *(v78 + 4) = v81;
    _os_log_impl(&dword_19D4FF000, v75, v76, "NetworkingProcess: Could not find matching appex record for bundleIdentifier %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x19EAFD8D0](v79, -1, -1);
    MEMORY[0x19EAFD8D0](v78, -1, -1);
  }

  else
  {
  }

  v82 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v83 = sub_19D51E27C();
  [v82 initWithDomain:v83 code:1 userInfo:0];

  swift_willThrow();

  v84 = v0[1];

  return v84();
}

uint64_t NetworkingExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_19D51CB74;
  a3[1] = v10;
  return result;
}

uint64_t sub_19D506890()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19D506910()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_19D519690;
  }

  else
  {
    v2 = sub_19D506A24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D506A24()
{
  v14 = v0[42];
  v24 = v0[41];
  v22 = v0[39];
  v23 = v0[38];
  v21 = v0[37];
  v20 = v0[34];
  v17 = v0[33];
  v18 = v0[35];
  v15 = v0[31];
  v16 = v0[30];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v13 = v0[21];
  v19 = v0[16];
  v7 = *(v3 + 16);
  v7();
  (v7)(v1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v5);
  *v4 = 1;
  (*(v6 + 104))(v4, *MEMORY[0x1E69E7F48], v13);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v10 = sub_19D502C88(sub_19D5196E8, v9, v4);

  (*(v3 + 8))(v2, v5);
  (*(v15 + 8))(v17, v16);
  (*(v18 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  *(v19 + *(type metadata accessor for NetworkingProcess(0) + 20)) = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_19D506CDC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19D519680;
  }

  else
  {
    v2 = sub_19D506DF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D506DF0()
{
  receiver = v0[3].receiver;
  super_class = v0[3].super_class;
  v3 = v0[2].receiver;
  sub_19D503498(super_class, receiver, type metadata accessor for NetworkingProcess);
  v4 = type metadata accessor for __BENetworkingProcess(0);
  v5 = objc_allocWithZone(v4);
  sub_19D503498(receiver, v5 + OBJC_IVAR___BENetworkingProcess_inner, type metadata accessor for NetworkingProcess);
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_19D503568(receiver, type metadata accessor for NetworkingProcess);
  v3(v6, 0);

  sub_19D503568(super_class, type metadata accessor for NetworkingProcess);

  v7 = v0->super_class;

  return v7();
}

uint64_t sub_19D50729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v17;
  type metadata accessor for RenderingProcess(0);
  v8[6] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[7] = v13;

  v14 = swift_task_alloc();
  v8[8] = v14;
  *v14 = v8;
  v14[1] = sub_19D508CB8;

  return RenderingProcess.init(bundleIdentifier:onInterruption:)(v13, a4, a5, a6, a7);
}

uint64_t RenderingProcess.init(bundleIdentifier:onInterruption:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_19D51E1FC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_19D51E10C();
  v5[24] = v7;
  v8 = *(v7 - 8);
  v5[25] = v8;
  v5[26] = *(v8 + 64);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  sub_19D51E0CC();
  v5[29] = swift_task_alloc();
  v9 = sub_19D51E09C();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = sub_19D51E11C();
  v5[34] = v10;
  v5[35] = *(v10 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v11 = sub_19D51E13C();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D507658, 0, 0);
}

uint64_t sub_19D507658()
{
  v124 = v0;
  sub_19D5024C0(0, &qword_1ED6578F8, 0x1E69635F8);
  v1 = [swift_getObjCClassFromMetadata() bundleRecordForCurrentProcess];
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 applicationExtensionRecords];

      sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
      sub_19D502508();
      v5 = sub_19D51E38C();

      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = v0[18];
  if (!v6)
  {
    if (v5)
    {
      v116 = v0;
      if ((v5 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_19D51E43C();
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        sub_19D502508();
        sub_19D51E39C();
        v13 = v0[2];
        v12 = v0[3];
        v14 = v0[4];
        v15 = v0[5];
        v16 = v0[6];
      }

      else
      {
        v58 = -1 << *(v5 + 32);
        v12 = (v5 + 56);
        v59 = ~v58;
        v60 = -v58;
        if (v60 < 64)
        {
          v61 = ~(-1 << v60);
        }

        else
        {
          v61 = -1;
        }

        v16 = v61 & *(v5 + 56);

        v14 = v59;
        v15 = 0;
        v13 = v5;
      }

      v0 = ((v14 + 64) >> 6);
      v62 = 0x800000019D5220B0;
      v119 = v12;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_59;
      }

LABEL_56:
      v63 = sub_19D51E44C();
      if (v63)
      {
        v116[13] = v63;
        sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
        swift_dynamicCast();
        v31 = v116[12];
        i = v15;
        v6 = v16;
        if (v31)
        {
          while (1)
          {
            v67 = v62;
            v68 = [v31 extensionPointRecord];
            v69 = [v68 identifier];

            v70 = sub_19D51E28C();
            v72 = v71;

            if (v70 == 0xD000000000000026 && 0x800000019D522080 == v72)
            {
              break;
            }

            v74 = sub_19D51E4BC();

            if (v74)
            {
              goto LABEL_90;
            }

            v75 = [v31 extensionPointRecord];
            v76 = [v75 identifier];

            v77 = sub_19D51E28C();
            v79 = v78;

            if (v77 == 0xD000000000000020 && v67 == v79)
            {
              break;
            }

            v62 = v67;
            v81 = sub_19D51E4BC();

            if (v81)
            {
              goto LABEL_90;
            }

            v15 = i;
            v16 = v6;
            v12 = v119;
            if (v13 < 0)
            {
              goto LABEL_56;
            }

LABEL_59:
            v65 = v15;
            v66 = v16;
            for (i = v15; !v66; ++v65)
            {
              i = v65 + 1;
              if (__OFADD__(v65, 1))
              {
                goto LABEL_101;
              }

              if (i >= v0)
              {
                goto LABEL_76;
              }

              v66 = *(v12 + i);
            }

            v6 = (v66 - 1) & v66;
            v31 = *(*(v13 + 48) + ((i << 9) | (8 * __clz(__rbit64(v66)))));
            if (!v31)
            {
              goto LABEL_76;
            }
          }

LABEL_90:
          sub_19D502570(v13);
          v0 = v116;
LABEL_91:

          v20 = v31;
LABEL_92:

          v0[42] = v20;
          if (qword_1ED658138 != -1)
          {
            swift_once();
          }

          v95 = sub_19D51E1BC();
          __swift_project_value_buffer(v95, qword_1ED658160);
          v96 = v20;
          v97 = sub_19D51E19C();
          v98 = sub_19D51E3AC();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            *v99 = 138412290;
            *(v99 + 4) = v96;
            *v100 = v96;
            v101 = v96;
            _os_log_impl(&dword_19D4FF000, v97, v98, "RenderingProcess: Found matching appex record %@", v99, 0xCu);
            sub_19D50116C(v100, &qword_1EB0159E8, &qword_19D520C10);
            MEMORY[0x19EAFD8D0](v100, -1, -1);
            MEMORY[0x19EAFD8D0](v99, -1, -1);
          }

          v103 = v0[40];
          v102 = v0[41];
          v104 = v0[39];
          v105 = v0[37];
          v114 = v0[38];
          v115 = v0[36];
          v106 = v0[35];
          v107 = v0[33];
          v108 = v0[31];
          v120 = v0[30];
          v122 = v0[32];
          v117 = v0[34];

          [objc_allocWithZone(MEMORY[0x1E6966CB0]) initWithApplicationExtensionRecord_];
          sub_19D51E14C();
          (*(v104 + 16))(v103, v102, v114);
          sub_19D51E12C();
          (*(v106 + 16))(v115, v105, v117);

          sub_19D51E07C();
          sub_19D51E0BC();
          sub_19D51E08C();
          (*(v108 + 16))(v122, v107, v120);
          v109 = swift_task_alloc();
          v0[43] = v109;
          *v109 = v0;
          v109[1] = sub_19D5088EC;
          v110 = v0[32];
          v111 = v0[28];

          return MEMORY[0x1EEDC0888](v111, v110);
        }
      }

LABEL_76:
      sub_19D502570(v13);

      v0 = v116;
      v6 = 0;
    }

LABEL_77:
    if (qword_1ED658138 != -1)
    {
      goto LABEL_102;
    }

    goto LABEL_78;
  }

  if (!v5)
  {
    v17 = v0[17];
    objc_allocWithZone(MEMORY[0x1E69635D0]);
    swift_bridgeObjectRetain_n();
    v18 = sub_19D502578(v17, v6);
LABEL_14:
    v19 = v18;

    if (sub_19D508590())
    {
      v20 = v19;
      goto LABEL_92;
    }

    goto LABEL_77;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_19D51E43C();
    sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0);
    sub_19D502508();
    sub_19D51E39C();
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[11];
  }

  else
  {
    v21 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v22 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v11 = v24 & *(v5 + 56);

    v9 = v22;
    v10 = 0;
    v8 = v5;
  }

  v112 = v9;
  v25 = (v9 + 64) >> 6;
  v113 = v25;
  while (v8 < 0)
  {
    v32 = sub_19D51E44C();
    if (!v32 || (v0[15] = v32, sub_19D5024C0(0, &unk_1ED657878, 0x1E69635D0), swift_dynamicCast(), v31 = v0[14], v29 = v10, v30 = v11, !v31))
    {
LABEL_49:
      v57 = v0[17];
      sub_19D502570(v8);

      objc_allocWithZone(MEMORY[0x1E69635D0]);

      v18 = sub_19D502578(v57, v6);
      goto LABEL_14;
    }

LABEL_32:
    v121 = v30;
    v33 = [v31 bundleIdentifier];
    if (!v33)
    {
      goto LABEL_22;
    }

    v118 = v31;
    v34 = v8;
    v35 = v7;
    v36 = v6;
    v38 = v0[17];
    v37 = v0[18];
    v39 = v33;
    v40 = sub_19D51E28C();
    v42 = v41;

    if (v40 == v38 && v37 == v42)
    {

      v6 = v36;
      v7 = v35;
      v8 = v34;
      v31 = v118;
      v25 = v113;
    }

    else
    {
      v6 = v36;
      v44 = sub_19D51E4BC();

      v7 = v35;
      v8 = v34;
      v31 = v118;
      v25 = v113;
      if ((v44 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v45 = [v31 extensionPointRecord];
    v46 = [v45 identifier];

    v47 = sub_19D51E28C();
    v49 = v48;

    if (v47 == 0xD000000000000026 && 0x800000019D522080 == v49)
    {
      goto LABEL_47;
    }

    v51 = sub_19D51E4BC();

    if (v51)
    {
      goto LABEL_48;
    }

    v52 = [v31 extensionPointRecord];
    v53 = [v52 identifier];

    v54 = sub_19D51E28C();
    v56 = v55;

    if (v54 == 0xD000000000000020 && 0x800000019D5220B0 == v56)
    {
LABEL_47:

LABEL_48:
      sub_19D502570(v8);

      goto LABEL_91;
    }

    v26 = sub_19D51E4BC();

    if (v26)
    {
      goto LABEL_48;
    }

LABEL_22:

    v10 = v29;
    v11 = v121;
  }

  v27 = v10;
  v28 = v11;
  v29 = v10;
  if (v11)
  {
LABEL_28:
    v30 = (v28 - 1) & v28;
    v31 = *(*(v8 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_49;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      goto LABEL_49;
    }

    v28 = *(v7 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  swift_once();
LABEL_78:
  v82 = v0[18];
  v83 = sub_19D51E1BC();
  __swift_project_value_buffer(v83, qword_1ED658160);

  v84 = sub_19D51E19C();
  v85 = sub_19D51E3CC();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = v0[17];
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v123 = v88;
    *v87 = 136315138;
    if (v6)
    {
      v89 = v86;
    }

    else
    {
      v89 = 7104878;
    }

    if (!v6)
    {
      v82 = 0xE300000000000000;
    }

    v90 = sub_19D514768(v89, v82, &v123);

    *(v87 + 4) = v90;
    _os_log_impl(&dword_19D4FF000, v84, v85, "RenderingProcess: Could not find matching appex record for bundleIdentifier %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x19EAFD8D0](v88, -1, -1);
    MEMORY[0x19EAFD8D0](v87, -1, -1);
  }

  else
  {
  }

  v91 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v92 = sub_19D51E27C();
  [v91 initWithDomain:v92 code:1 userInfo:0];

  swift_willThrow();

  v93 = v0[1];

  return v93();
}

uint64_t sub_19D508590()
{
  v1 = [v0 extensionPointRecord];
  v2 = [v1 identifier];

  v3 = sub_19D51E28C();
  v5 = v4;

  if (v3 == 0xD000000000000026 && 0x800000019D522080 == v5)
  {
    goto LABEL_9;
  }

  v7 = sub_19D51E4BC();

  if ((v7 & 1) == 0)
  {
    v9 = [v0 extensionPointRecord];
    v10 = [v9 identifier];

    v11 = sub_19D51E28C();
    v13 = v12;

    if (v11 != 0xD000000000000020 || 0x800000019D5220B0 != v13)
    {
      v8 = sub_19D51E4BC();
      goto LABEL_10;
    }

LABEL_9:
    v8 = 1;
LABEL_10:

    return v8 & 1;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_19D5088EC()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_19D517170;
  }

  else
  {
    v2 = sub_19D508A00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D508A00()
{
  v14 = v0[42];
  v24 = v0[41];
  v22 = v0[39];
  v23 = v0[38];
  v21 = v0[37];
  v20 = v0[34];
  v17 = v0[33];
  v18 = v0[35];
  v15 = v0[31];
  v16 = v0[30];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  v13 = v0[21];
  v19 = v0[16];
  v7 = *(v3 + 16);
  v7();
  (v7)(v1, v2, v5);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v1, v5);
  *v4 = 1;
  (*(v6 + 104))(v4, *MEMORY[0x1E69E7F48], v13);
  type metadata accessor for LaunchAssertionInvalidator();
  swift_allocObject();
  v10 = sub_19D502C88(sub_19D518BD0, v9, v4);

  (*(v3 + 8))(v2, v5);
  (*(v15 + 8))(v17, v16);
  (*(v18 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  *(v19 + *(type metadata accessor for RenderingProcess(0) + 20)) = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_19D508CB8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19D51812C;
  }

  else
  {
    v2 = sub_19D508DCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D508DCC()
{
  receiver = v0[3].receiver;
  super_class = v0[3].super_class;
  v3 = v0[2].receiver;
  sub_19D503498(super_class, receiver, type metadata accessor for RenderingProcess);
  v4 = type metadata accessor for __BERenderingProcess(0);
  v5 = objc_allocWithZone(v4);
  sub_19D503498(receiver, v5 + OBJC_IVAR___BERenderingProcess_inner, type metadata accessor for RenderingProcess);
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  sub_19D503568(receiver, type metadata accessor for RenderingProcess);
  v3(v6, 0);

  sub_19D503568(super_class, type metadata accessor for RenderingProcess);

  v7 = v0->super_class;

  return v7();
}

uint64_t RenderingExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_19D5169F0;
  a3[1] = v10;
  return result;
}

uint64_t sub_19D5091A0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19D509268()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19D5092B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D5092F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_19D50932C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_19D509360()
{
  MEMORY[0x19EAFD970](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D509398()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_19D5093D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

id sub_19D509404@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_19D509438()
{
  v1 = sub_19D51DF6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_19D509524()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D50955C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19D509594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19D50967C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19D509704(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_19D51DF6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19D5097B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_19D51DF6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

uint64_t sub_19D50D450(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_19D50D498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_19D50D4F0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_19D50D564(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D50D584(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_19D50D5AC()
{
  v0 = sub_19D51E1BC();
  __swift_allocate_value_buffer(v0, qword_1EB016580);
  __swift_project_value_buffer(v0, qword_1EB016580);
  return sub_19D51E1AC();
}

uint64_t BEDownloadMonitor.Location.bookmarkData.getter()
{
  v1 = *(v0 + OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData);
  sub_19D50D728(v1, *(v0 + OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData + 8));
  return v1;
}

uint64_t sub_19D50D728(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id BEDownloadMonitor.Location.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BEDownloadMonitor.Location.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BEDownloadMonitor.Location(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BEDownloadMonitor.__allocating_init(sourceURL:destinationURL:observedProgress:liveActivityAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = objc_allocWithZone(v6);
  sub_19D51DFCC();
  v9[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] = 0;
  v10 = &v9[OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler];
  *v10 = 0;
  v10[1] = 0;
  sub_19D51E17C();
  *&v9[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData] = xmmword_19D520910;
  v11 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *&v9[v11] = v12;
  *&v9[OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation] = 0;
  v9[OBJC_IVAR___BEDownloadMonitor_didBegin] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_lastSavedProgress] = -1082130432;
  *&v9[OBJC_IVAR___BEDownloadMonitor_backgroundTask] = 0;
  *&v9[OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle] = 0;
  v13 = OBJC_IVAR___BEDownloadMonitor_sourceURL;
  v14 = sub_19D51DF6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = &v9[v13];
  v18 = a1;
  v16(v17, a1, v14);
  v16(&v9[OBJC_IVAR___BEDownloadMonitor_destinationURL], a2, v14);
  [v12 setCancellable_];
  [*&v9[v11] setKind_];
  [*&v9[v11] setFileOperationKind_];
  v19 = *&v9[v11];
  v20 = sub_19D51DF0C();
  [v19 setFileURL_];

  *&v9[OBJC_IVAR___BEDownloadMonitor_observedProgress] = a3;
  v21 = &v9[OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken];
  *v21 = a4;
  v21[1] = a5;
  v29.receiver = v9;
  v29.super_class = v26;
  v22 = objc_msgSendSuper2(&v29, sel_init);
  v23 = *(v15 + 8);
  v23(a2, v14);
  v23(v18, v14);
  return v22;
}

id BEDownloadMonitor.init(sourceURL:destinationURL:observedProgress:liveActivityAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_19D51DFCC();
  v6[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] = 0;
  v9 = &v6[OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler];
  *v9 = 0;
  v9[1] = 0;
  sub_19D51E17C();
  *&v6[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData] = xmmword_19D520910;
  v10 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  *&v6[v10] = v11;
  *&v6[OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation] = 0;
  v6[OBJC_IVAR___BEDownloadMonitor_didBegin] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_lastSavedProgress] = -1082130432;
  *&v6[OBJC_IVAR___BEDownloadMonitor_backgroundTask] = 0;
  *&v6[OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle] = 0;
  v12 = OBJC_IVAR___BEDownloadMonitor_sourceURL;
  v13 = sub_19D51DF6C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(&v6[v12], a1, v13);
  v15(&v6[OBJC_IVAR___BEDownloadMonitor_destinationURL], a2, v13);
  [v11 setCancellable_];
  [*&v6[v10] setKind_];
  [*&v6[v10] setFileOperationKind_];
  v16 = *&v6[v10];
  v17 = sub_19D51DF0C();
  [v16 setFileURL_];

  *&v6[OBJC_IVAR___BEDownloadMonitor_observedProgress] = a3;
  v18 = &v6[OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken];
  *v18 = a4;
  v18[1] = a5;
  v25.receiver = v6;
  v25.super_class = type metadata accessor for BEDownloadMonitor(0);
  v19 = objc_msgSendSuper2(&v25, sel_init);
  v20 = *(v14 + 8);
  v20(a2, v13);
  v20(a1, v13);
  return v19;
}

uint64_t sub_19D50DF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015980, &qword_19D520970);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = sub_19D51E18C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v23 = &v35 - v22;
  if (*(v4 + OBJC_IVAR___BEDownloadMonitor_didBegin))
  {
    __break(1u);
  }

  else
  {
    v36 = v11;
    v37 = v21;
    *(v4 + OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder) = 1;
    v24 = (v4 + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler);
    v25 = a1;
    v26 = a2;
    v27 = *(v4 + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler);
    v28 = *(v4 + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler + 8);
    *v24 = v26;
    v24[1] = a3;

    sub_19D504D74(v27, v28);
    sub_19D516124(v25, v13, &qword_1EB015980, &qword_19D520970);
    v29 = *(v15 + 48);
    if (v29(v13, 1, v14) == 1)
    {
      sub_19D50116C(v13, &qword_1EB015980, &qword_19D520970);
      sub_19D51DEDC();
      sub_19D51E17C();
      v30 = v36;
      sub_19D51E15C();
      if (v29(v30, 1, v14) == 1)
      {
        v31 = v37;
        sub_19D51E17C();
        if (v29(v30, 1, v14) != 1)
        {
          sub_19D50116C(v30, &qword_1EB015980, &qword_19D520970);
        }
      }

      else
      {
        v31 = v37;
        (*(v15 + 32))(v37, v30, v14);
      }

      v34 = OBJC_IVAR___BEDownloadMonitor_placeholderType;
      swift_beginAccess();
      (*(v15 + 40))(v4 + v34, v31, v14);
    }

    else
    {
      v32 = *(v15 + 32);
      v32(v23, v13, v14);
      v32(v19, v23, v14);
      v33 = OBJC_IVAR___BEDownloadMonitor_placeholderType;
      swift_beginAccess();
      (*(v15 + 40))(v4 + v33, v19, v14);
    }

    return swift_endAccess();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19D50E4F0()
{
  v1[22] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015AD0, &qword_19D520980);
  v1[23] = swift_task_alloc();
  v2 = sub_19D51DF6C();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D50E60C, 0, 0);
}

uint64_t sub_19D50E60C()
{
  v1 = v0[22];
  if (*(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin))
  {

    v2 = v0[1];

    return v2(0);
  }

  else
  {
    *(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin) = 1;
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_19D50E730;
    v5 = v0[22];

    return sub_19D514D20(v5);
  }
}

uint64_t sub_19D50E730()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19D50E8AC, 0, 0);
  }
}

uint64_t sub_19D50E8AC()
{
  v44 = v0;
  receiver = v0[11].receiver;
  v2 = OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder;
  v0[16].receiver = OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder;
  if ((receiver[v2] & 1) == 0)
  {
    super_class = v0[15].super_class;
LABEL_11:
    v18 = sub_19D51DF4C();
    v19 = *&receiver[OBJC_IVAR___BEDownloadMonitor_innerProgress];
    v20 = sub_19D51DF0C();
    [v19 setFileURL_];

    [v19 publish];
    if (v18)
    {
      sub_19D51DF2C();
    }

    goto LABEL_14;
  }

  v3 = sub_19D515354();
  v0[16].super_class = v3;
  if (v3)
  {
    v4 = v3;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v5 = v0[11].receiver;
    v6 = sub_19D51E1BC();
    v0[17].receiver = __swift_project_value_buffer(v6, qword_1EB016580);
    v7 = v5;
    v8 = sub_19D51E19C();
    v9 = sub_19D51E3AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43 = v11;
      *v10 = 136315138;
      v12 = sub_19D51DEFC();
      v14 = sub_19D514768(v12, v13, &v43);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_19D4FF000, v8, v9, "proxy.createPlaceholder to %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x19EAFD8D0](v11, -1, -1);
      MEMORY[0x19EAFD8D0](v10, -1, -1);
    }

    sub_19D51DEFC();
    v15 = sub_19D51E27C();
    v0[17].super_class = v15;

    v0[1].receiver = v0;
    v0[3].super_class = &v0[10];
    v0[1].super_class = sub_19D50EE28;
    v16 = swift_continuation_init();
    v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015988, &qword_19D520990);
    v0[5].receiver = MEMORY[0x1E69E9820];
    v0[5].super_class = 1107296256;
    v0[6].receiver = sub_19D50F644;
    v0[6].super_class = &block_descriptor;
    v0[7].receiver = v16;
    [v4 createPlaceholderWithFilename:v15 completionHandler:&v0[5]];

    return MEMORY[0x1EEE6DEC8](&v0[1]);
  }

  super_class = v0[15].super_class;
  receiver = v0[11].receiver;
  if ((receiver[v0[16].receiver] & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  sub_19D5104DC();
  if (super_class)
  {

    v21 = v0->super_class;

    return v21();
  }

  v22 = v0[11].receiver;
  v23 = *&v22[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper];
  if (v23)
  {
    v24 = v0[13].receiver;
    v25 = v0[13].super_class;
    v26 = v0[12].receiver;
    v27 = v0[12].super_class;
    v28 = [v23 url];
    sub_19D51DF3C();

    (*(v27 + 4))(v25, v24, v26);
    v29 = *&v22[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData + 8];
    if (v29 >> 60 != 15)
    {
      v31 = v0[14].super_class;
      v42 = v0[13].super_class;
      v32 = v0[12].receiver;
      v33 = v0[12].super_class;
      v34 = *&v22[OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData];
      v35 = *(v33 + 2);
      v35(v31);
      v36 = type metadata accessor for BEDownloadMonitor.Location(0);
      v37 = objc_allocWithZone(v36);
      (v35)(&v37[OBJC_IVAR___BEDownloadMonitorLocation_url], v31, v32);
      v38 = &v37[OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData];
      *v38 = v34;
      v38[1] = v29;
      sub_19D50D728(v34, v29);
      v0[9].receiver = v37;
      v0[9].super_class = v36;
      v30 = objc_msgSendSuper2(v0 + 9, sel_init);
      v39 = *(v33 + 1);
      v39(v31, v32);
      v39(v42, v32);
      goto LABEL_23;
    }

    (*(v0[12].super_class + 1))(v0[13].super_class, v0[12].receiver);
  }

  v30 = 0;
LABEL_23:

  v40 = v0->super_class;

  return v40(v30);
}

uint64_t sub_19D50EE28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_19D50F590;
  }

  else
  {
    v2 = sub_19D50EF38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D50EF38()
{
  v71 = v0;
  v1 = *(v0 + 160);

  v2 = v1;
  v3 = sub_19D51E19C();
  v4 = sub_19D51E3AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v70 = v6;
    *v5 = 136315138;
    *(v0 + 168) = v1;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015990, &qword_19D520998);
    v8 = sub_19D51E2CC();
    v10 = sub_19D514768(v8, v9, &v70);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_19D4FF000, v3, v4, "proxy.createPlaceholder returned %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x19EAFD8D0](v6, -1, -1);
    MEMORY[0x19EAFD8D0](v5, -1, -1);
  }

  v11 = 0x1E762C000;
  if (v1)
  {
    v67 = *(v0 + 248);
    v12 = *(v0 + 232);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    v17 = *(v15 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper);
    *(v15 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper) = v1;
    v18 = v2;

    v19 = [v18 url];
    sub_19D51DF3C();

    v68 = sub_19D51DF4C();
    v20 = *(v14 + 8);
    v20(v12, v13);
    v21 = [v18 url];
    sub_19D51DF3C();

    (*(v14 + 56))(v16, 1, 1, v13);
    v22 = sub_19D51DECC();
    if (v67)
    {
      v24 = v18;

      v25 = 0;
      v26 = 0xF000000000000000;
    }

    else
    {
      v25 = v22;
      v26 = v23;
      v24 = v18;
    }

    v30 = *(v0 + 224);
    v29 = *(v0 + 232);
    v31 = *(v0 + 192);
    v32 = *(v0 + 176);
    sub_19D50116C(*(v0 + 184), &qword_1EB015AD0, &qword_19D520980);
    v20(v30, v31);
    v33 = (v32 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData);
    v34 = *(v32 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData);
    v35 = *(v32 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData + 8);
    *v33 = v25;
    v33[1] = v26;
    sub_19D5155C4(v34, v35);
    v36 = *(v32 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
    v37 = [v24 url];
    sub_19D51DF3C();

    v38 = sub_19D51DF0C();
    v20(v29, v31);
    v28 = 0x1E762C000uLL;
    [v36 setFileURL_];

    v11 = 0x1E762C000uLL;
    [v36 publish];
    if (v68)
    {
      v39 = *(v0 + 232);
      v40 = *(v0 + 192);
      v41 = [v24 url];
      sub_19D51DF3C();

      sub_19D51DF2C();
      swift_unknownObjectRelease();

      v20(v39, v40);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v27 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    v27 = *(v0 + 248);
    v28 = 0x1E762C000;
  }

  v42 = *(v0 + 176);
  if ((*(v42 + *(v0 + 256)) & 1) == 0)
  {
    v43 = sub_19D51DF4C();
    v44 = *(v42 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
    v45 = sub_19D51DF0C();
    [v44 *(v28 + 2096)];

    [v44 *(v11 + 2104)];
    if (v43)
    {
      sub_19D51DF2C();
    }
  }

  sub_19D5104DC();
  if (v27)
  {

    v46 = *(v0 + 8);

    return v46();
  }

  v48 = *(v0 + 176);
  v49 = *(v48 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper);
  if (v49)
  {
    v50 = *(v0 + 208);
    v51 = *(v0 + 216);
    v52 = *(v0 + 192);
    v53 = *(v0 + 200);
    v54 = [v49 url];
    sub_19D51DF3C();

    (*(v53 + 32))(v51, v50, v52);
    v55 = *(v48 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData + 8);
    if (v55 >> 60 != 15)
    {
      v57 = *(v0 + 232);
      v69 = *(v0 + 216);
      v58 = *(v0 + 192);
      v59 = *(v0 + 200);
      v60 = *(v48 + OBJC_IVAR___BEDownloadMonitor_placeholderURLBookmarkData);
      v61 = *(v59 + 16);
      v61(v57);
      v62 = type metadata accessor for BEDownloadMonitor.Location(0);
      v63 = objc_allocWithZone(v62);
      (v61)(&v63[OBJC_IVAR___BEDownloadMonitorLocation_url], v57, v58);
      v64 = &v63[OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData];
      *v64 = v60;
      v64[1] = v55;
      sub_19D50D728(v60, v55);
      *(v0 + 144) = v63;
      *(v0 + 152) = v62;
      v56 = objc_msgSendSuper2((v0 + 144), sel_init);
      v65 = *(v59 + 8);
      v65(v57, v58);
      v65(v69, v58);
      goto LABEL_24;
    }

    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  }

  v56 = 0;
LABEL_24:

  v66 = *(v0 + 8);

  return v66(v56);
}

uint64_t sub_19D50F590()
{
  v1 = *(v0 + 280);
  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D50F644(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159D0, &unk_19D520B48);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_19D50F888(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_19D50F930;

  return sub_19D50E4F0();
}

uint64_t sub_19D50F930(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_19D51DE9C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_19D50FAD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_19D51DF6C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D50FB90, 0, 0);
}

uint64_t sub_19D50FB90()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + OBJC_IVAR___BEDownloadMonitor_didBegin) = 1;
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_19D50FC7C;
    v5 = v0[3];

    return sub_19D514D20(v5);
  }
}

uint64_t sub_19D50FC7C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_19D50FDC8, 0, 0);
  }
}

uint64_t sub_19D50FDC8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = objc_allocWithZone(MEMORY[0x1E696AE98]);
  v6 = sub_19D51DF0C();
  v7 = [v5 initWithURL_];

  v8 = *(v3 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper);
  *(v3 + OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper) = v7;
  v9 = v7;

  v10 = [v9 url];
  sub_19D51DF3C();

  v20 = sub_19D51DF4C();
  v11 = *(v2 + 8);
  v11(v1, v4);
  v12 = *(v3 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
  v13 = [v9 url];
  sub_19D51DF3C();

  v14 = sub_19D51DF0C();
  v11(v1, v4);
  [v12 setFileURL_];

  [v12 publish];
  sub_19D5104DC();
  if (v20)
  {
    v15 = v0[6];
    v16 = v0[4];
    v17 = [v9 url];
    sub_19D51DF3C();

    sub_19D51DF2C();
    v11(v15, v16);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_19D510158(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_19D51DF6C();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_19D51DF3C();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_19D510284;

  return sub_19D50FAD0(v7);
}

uint64_t sub_19D510284()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = sub_19D51DE9C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

void sub_19D5104DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___BEDownloadMonitor_observedProgress;
  v4 = *(v0 + OBJC_IVAR___BEDownloadMonitor_observedProgress);
  swift_getKeyPath();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = v4;
  v8 = sub_19D51DEBC();

  v9 = *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFractionObservation) = v8;

  v10 = *(v1 + v3);
  swift_getKeyPath();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  v13 = v10;
  v14 = sub_19D51DEBC();

  v15 = *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressFinishedObservation) = v14;

  v16 = *(v1 + v3);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v16;
  v18 = sub_19D51DEBC();

  v19 = *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_clientProgressCancelObservation) = v18;

  v20 = *(v1 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v20;
  v22 = sub_19D51DEBC();

  v23 = *(v1 + OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation);
  *(v1 + OBJC_IVAR___BEDownloadMonitor_innerProgressCancelObservation) = v22;
}

void sub_19D5107E8(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_19D51DF6C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v44 - v9;
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v14 = sub_19D51E1BC();
    __swift_project_value_buffer(v14, qword_1EB016580);
    v15 = v11;
    v16 = sub_19D51E19C();
    v17 = sub_19D51E3BC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_19D4FF000, v16, v17, "Progress: %@", v18, 0xCu);
      sub_19D50116C(v19, &qword_1EB0159E8, &qword_19D520C10);
      MEMORY[0x19EAFD8D0](v19, -1, -1);
      MEMORY[0x19EAFD8D0](v18, -1, -1);
    }

    v21 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
    v22 = *&v13[OBJC_IVAR___BEDownloadMonitor_innerProgress];
    [v22 setTotalUnitCount_];

    v23 = *&v13[v21];
    [v23 setCompletedUnitCount_];

    v24 = -1.0;
    if (([v15 isIndeterminate] & 1) == 0)
    {
      [v15 fractionCompleted];
      v24 = v25;
    }

    v26 = OBJC_IVAR___BEDownloadMonitor_lastSavedProgress;
    v27 = *&v13[OBJC_IVAR___BEDownloadMonitor_lastSavedProgress];
    if (vabds_f32(v24, v27) >= 0.01 || v27 < 0.0 || [v15 isFinished])
    {
      v45 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159F8, &qword_19D520C38);
      v28 = swift_allocObject();
      v29 = MEMORY[0x1E69E6448];
      *(v28 + 16) = xmmword_19D520920;
      v30 = MEMORY[0x1E69E64A8];
      *(v28 + 56) = v29;
      *(v28 + 64) = v30;
      *(v28 + 32) = v24;
      v31 = sub_19D51E29C();
      v33 = v32;
      v34 = *&v13[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper];
      if (v34)
      {
        v44 = v26;
        v35 = [v34 url];
        sub_19D51DF3C();

        (*(v5 + 32))(v10, v8, v45);
        v36 = sub_19D51DF4C();
        v37 = v36;
        MEMORY[0x1EEE9AC00](v36);
        *(&v44 - 4) = v31;
        *(&v44 - 3) = v33;
        *(&v44 - 2) = v10;
        sub_19D51DF1C();
        if (v37)
        {
          sub_19D51DF2C();
        }

        (*(v5 + 8))(v10, v45);
        v26 = v44;
      }

      v38 = *&v13[OBJC_IVAR___BEDownloadMonitor_backgroundTask];
      if (v38)
      {
        v39 = *&v13[v21];
        v40 = v38;
        if ([v39 isFinished])
        {

          [v40 setTaskCompletedWithSuccess_];
        }

        else
        {
          [v40 updateProgress_];
          v41 = [v40 title];
          if (!v41)
          {
            sub_19D51E28C();
            v41 = sub_19D51E27C();
          }

          v42 = [*&v13[v21] localizedAdditionalDescription];
          if (!v42)
          {
            __break(1u);
            return;
          }

          v43 = v42;

          [v40 updateTitle:v41 withReason:v43];
        }
      }

      else
      {
      }

      *&v13[v26] = v24;
    }
  }
}

void sub_19D510D38(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v43 = a4;
  v7 = sub_19D51DF6C();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = sub_19D51E2BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = a2;
  v46[1] = a3;
  sub_19D51E2AC();
  sub_19D5165F0();
  v17 = sub_19D51E40C();
  (*(v14 + 8))(v16, v13);
  v42 = a2;
  v18 = sub_19D51E2DC();
  LODWORD(v17) = setxattr(a1, "com.apple.progress.fractionCompleted", (v18 + 32), v17, 0, 0);

  if ((v17 & 0x80000000) != 0)
  {
    v30 = v12;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v31 = sub_19D51E1BC();
    __swift_project_value_buffer(v31, qword_1EB016580);
    v32 = v44;
    v33 = v45;
    (*(v44 + 16))(v30, v43, v45);

    v34 = sub_19D51E19C();
    v35 = sub_19D51E3CC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46[0] = v37;
      *v36 = 136315650;
      *(v36 + 4) = sub_19D514768(v42, a3, v46);
      *(v36 + 12) = 1024;
      *(v36 + 14) = MEMORY[0x19EAFCD30]();
      *(v36 + 18) = 2080;
      sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v38 = sub_19D51E4AC();
      v40 = v39;
      (*(v32 + 8))(v30, v33);
      v41 = sub_19D514768(v38, v40, v46);

      *(v36 + 20) = v41;
      _os_log_impl(&dword_19D4FF000, v34, v35, "Failed to set xattr %s: %{darwin.errno}d on %s", v36, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x19EAFD8D0](v37, -1, -1);
      MEMORY[0x19EAFD8D0](v36, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v30, v33);
    }
  }

  else
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v19 = sub_19D51E1BC();
    __swift_project_value_buffer(v19, qword_1EB016580);
    v20 = v44;
    v21 = v45;
    (*(v44 + 16))(v10, v43, v45);

    v22 = sub_19D51E19C();
    v23 = sub_19D51E3BC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_19D514768(v42, a3, v46);
      *(v24 + 12) = 2080;
      sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v26 = sub_19D51E4AC();
      v28 = v27;
      (*(v20 + 8))(v10, v21);
      v29 = sub_19D514768(v26, v28, v46);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_19D4FF000, v22, v23, "set xattr %s: on %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19EAFD8D0](v25, -1, -1);
      MEMORY[0x19EAFD8D0](v24, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v10, v21);
    }
  }
}

void sub_19D511300(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - v7;
  v9 = sub_19D51DF6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  v18 = *a1;
  if ([v18 isFinished])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v59 = v9;
      v61 = v8;
      v57 = a4;
      if (qword_1EB015890 != -1)
      {
        swift_once();
      }

      v21 = sub_19D51E1BC();
      v22 = __swift_project_value_buffer(v21, qword_1EB016580);
      v23 = v18;
      v24 = v20;
      v58 = v22;
      v25 = sub_19D51E19C();
      v26 = sub_19D51E3AC();
      v60 = v24;

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v56 = v10;
        v28 = v27;
        v29 = swift_slowAlloc();
        v54 = v29;
        v55 = swift_slowAlloc();
        v63 = v55;
        *v28 = 138412802;
        *(v28 + 4) = v23;
        *v29 = v23;
        *(v28 + 12) = 1024;
        *(v28 + 14) = [v23 isFinished];
        *(v28 + 18) = 2080;
        sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v31 = v59;
        v30 = v60;
        v32 = sub_19D51E4AC();
        v34 = sub_19D514768(v32, v33, &v63);

        *(v28 + 20) = v34;
        _os_log_impl(&dword_19D4FF000, v25, v26, "Finished observer: %@ finished: %{BOOL}d with destinationURL %s", v28, 0x1Cu);
        v35 = v54;
        sub_19D50116C(v54, &qword_1EB0159E8, &qword_19D520C10);
        v36 = v35;
        v37 = v31;
        MEMORY[0x19EAFD8D0](v36, -1, -1);
        v38 = v55;
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x19EAFD8D0](v38, -1, -1);
        v39 = v28;
        v10 = v56;
        MEMORY[0x19EAFD8D0](v39, -1, -1);
      }

      else
      {

        v37 = v59;
        v30 = v60;
      }

      v40 = *&v30[OBJC_IVAR___BEDownloadMonitor_placeholderURLWrapper];
      v41 = v61;
      if (v40)
      {
        v42 = [v40 url];
        sub_19D51DF3C();

        v43 = *(v10 + 32);
        v43(v17, v15, v37);
        if (v30[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] == 1)
        {
          v59 = v43;
          LODWORD(v60) = sub_19D51DF4C();
          v44 = sub_19D51E37C();
          (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
          v45 = v62;
          (*(v10 + 16))(v62, v17, v37);
          v46 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v47 = swift_allocObject();
          *(v47 + 16) = 0;
          *(v47 + 24) = 0;
          v59(v47 + v46, v45, v37);
          v48 = v47 + ((v46 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v48 = v30;
          *(v48 + 8) = v60 & 1;
          *(v47 + ((v46 + v11 + 23) & 0xFFFFFFFFFFFFFFF8)) = v57;
          v49 = v30;
          sub_19D512DBC(0, 0, v61, &unk_19D520C08, v47);

          (*(v10 + 8))(v17, v37);
          return;
        }

        (*(v10 + 8))(v17, v37);
      }

      if (v30[OBJC_IVAR___BEDownloadMonitor_useDownloadsFolder] == 1)
      {
        v50 = sub_19D51E19C();
        v51 = sub_19D51E3CC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_19D4FF000, v50, v51, "Finished, but placeholderURL is nil", v52, 2u);
          MEMORY[0x19EAFD8D0](v52, -1, -1);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_19D5118F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 320) = a6;
  *(v6 + 184) = a4;
  *(v6 + 192) = a5;
  v7 = sub_19D51DE5C();
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  *(v6 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015AD0, &qword_19D520980);
  *(v6 + 232) = swift_task_alloc();
  v8 = sub_19D51DF6C();
  *(v6 + 240) = v8;
  *(v6 + 248) = *(v8 - 8);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19D511ABC, 0, 0);
}

uint64_t sub_19D511ABC()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696AE98]);
  v2 = sub_19D51DF0C();
  v3 = [v1 initWithURL_];
  v0[34] = v3;

  v0[35] = OBJC_IVAR___BEDownloadMonitor_destinationURL;
  v4 = objc_allocWithZone(MEMORY[0x1E696AE98]);
  v5 = sub_19D51DF0C();
  v6 = [v4 initWithURL_];
  v0[36] = v6;

  v7 = sub_19D515354();
  v0[37] = v7;
  if (v7)
  {
    v8 = v7;
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v9 = sub_19D51E1BC();
    v0[38] = __swift_project_value_buffer(v9, qword_1EB016580);
    v10 = v3;
    v11 = v6;
    v12 = sub_19D51E19C();
    v13 = sub_19D51E3AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v10;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v10;
      v15[1] = v11;
      v16 = v10;
      v17 = v11;
      _os_log_impl(&dword_19D4FF000, v12, v13, "proxy.replacePlaceholder %@ to %@", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159E8, &qword_19D520C10);
      swift_arrayDestroy();
      MEMORY[0x19EAFD8D0](v15, -1, -1);
      MEMORY[0x19EAFD8D0](v14, -1, -1);
    }

    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_19D511F14;
    v18 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015988, &qword_19D520990);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_19D50F644;
    v0[13] = &block_descriptor_124;
    v0[14] = v18;
    [v8 replacePlaceholderWithPlaceholderFileWrapper:v10 downloadedFileWrapper:v11 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v19 = sub_19D51E1BC();
    __swift_project_value_buffer(v19, qword_1EB016580);
    v20 = sub_19D51E19C();
    v21 = sub_19D51E3CC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_19D4FF000, v20, v21, "Failed to get intermediary proxy", v22, 2u);
      MEMORY[0x19EAFD8D0](v22, -1, -1);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_19D511F14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_19D51296C;
  }

  else
  {
    v2 = sub_19D512050;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D512050()
{
  v83 = v0;
  v82[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 160);
  v2 = v1;
  v3 = sub_19D51E19C();
  v4 = sub_19D51E3AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v82[0] = v6;
    *v5 = 136315138;
    *(v0 + 176) = v1;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015990, &qword_19D520998);
    v8 = sub_19D51E2CC();
    v10 = sub_19D514768(v8, v9, v82);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_19D4FF000, v3, v4, "proxy.replacePlaceholder returned %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x19EAFD8D0](v6, -1, -1);
    MEMORY[0x19EAFD8D0](v5, -1, -1);
  }

  if (v1)
  {
    v11 = [objc_opt_self() defaultManager];
    v12 = sub_19D51DF0C();
    *(v0 + 168) = 0;
    v13 = [v11 removeItemAtURL:v12 error:v0 + 168];

    v14 = *(v0 + 168);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v27 = *(v0 + 208);
      v28 = *(v0 + 216);
      v29 = *(v0 + 200);
      v30 = v14;
      v31 = sub_19D51DEAC();

      swift_willThrow();
      v32 = v31;
      sub_19D51DE4C();
      sub_19D5164D4(&qword_1EB0159F0, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
      v33 = sub_19D51DE8C();

      (*(v27 + 8))(v28, v29);
      if (v33)
      {
      }

      else
      {
        v34 = *(v0 + 192);
        v35 = sub_19D51E19C();
        v36 = sub_19D51E3CC();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v82[0] = v38;
          *v37 = 136315138;
          sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v39 = sub_19D51E4AC();
          v41 = sub_19D514768(v39, v40, v82);

          *(v37 + 4) = v41;
          _os_log_impl(&dword_19D4FF000, v35, v36, "FAILED to delete local file %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x19EAFD8D0](v38, -1, -1);
          MEMORY[0x19EAFD8D0](v37, -1, -1);
        }
      }
    }

    v42 = *(v0 + 192) + OBJC_IVAR___BEDownloadMonitor_finalFileCreatedHandler;
    if (*v42)
    {
      v43 = *(v0 + 264);
      v44 = v2;
      v45 = *(v0 + 240);
      v46 = *(v0 + 248);
      v47 = *(v0 + 232);
      v79 = *(v42 + 8);
      v80 = *v42;

      v48 = [v44 url];
      sub_19D51DF3C();

      v78 = sub_19D51DF4C();
      v49 = *(v46 + 8);
      v49(v43, v45);
      v50 = [v44 &selRef_title];
      sub_19D51DF3C();

      (*(v46 + 56))(v47, 1, 1, v45);
      v51 = sub_19D51DECC();
      v56 = *(v0 + 256);
      v55 = *(v0 + 264);
      v58 = *(v0 + 240);
      v57 = *(v0 + 248);
      v77 = v51;
      v60 = v59;
      sub_19D50116C(*(v0 + 232), &qword_1EB015AD0, &qword_19D520980);
      v49(v56, v58);
      v61 = [v44 &selRef_title];
      sub_19D51DF3C();

      v62 = type metadata accessor for BEDownloadMonitor.Location(0);
      v63 = objc_allocWithZone(v62);
      (*(v57 + 16))(&v63[OBJC_IVAR___BEDownloadMonitorLocation_url], v55, v58);
      v64 = &v63[OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData];
      *v64 = v77;
      v64[1] = v60;
      sub_19D50D728(v77, v60);
      *(v0 + 144) = v63;
      *(v0 + 152) = v62;
      v65 = objc_msgSendSuper2((v0 + 144), sel_init);
      v49(v55, v58);
      v66 = v65;
      v80(v65);

      sub_19D5155D8(v77, v60);
      if (v78)
      {
        v52 = *(v0 + 264);
        v53 = *(v0 + 240);
        v2 = v44;
        v54 = [v44 url];
        sub_19D51DF3C();

        sub_19D51DF2C();
        sub_19D504D74(v80, v79);
        v49(v52, v53);
      }

      else
      {
        sub_19D504D74(v80, v79);
        v2 = v44;
      }
    }

    v67 = *(v0 + 224);
    v68 = *(v0 + 320);
    v69 = *(v0 + 192);
    v70 = sub_19D51E37C();
    (*(*(v70 - 8) + 56))(v67, 1, 1, v70);
    v71 = swift_allocObject();
    v71[2] = 0;
    v71[3] = 0;
    v71[4] = v69;
    v72 = v69;
    sub_19D512AFC(0, 0, v67, &unk_19D520C20, v71);

    sub_19D50116C(v67, &qword_1EB0159C0, &qword_19D520AD0);
    v73 = *(v0 + 288);
    v74 = *(v0 + 272);
    if (v68 == 1)
    {
      sub_19D51DF2C();
    }
  }

  else
  {
    v16 = *(v0 + 192);
    v17 = sub_19D51E19C();
    v18 = sub_19D51E3CC();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 288);
    if (v19)
    {
      v81 = *(v0 + 272);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v82[0] = v22;
      *v21 = 136315138;
      sub_19D5164D4(&qword_1EB0159E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v23 = sub_19D51E4AC();
      v25 = sub_19D514768(v23, v24, v82);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_19D4FF000, v17, v18, "FAILED to finish download. Left %s in place.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x19EAFD8D0](v22, -1, -1);
      MEMORY[0x19EAFD8D0](v21, -1, -1);
      v26 = v81;
    }

    else
    {
      v26 = *(v0 + 272);
    }
  }

  swift_unknownObjectRelease();

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_19D51296C()
{
  v1 = v0[36];
  v2 = v0[34];
  swift_willThrow();

  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_19D512A88()
{
  [*(*(v0 + 16) + OBJC_IVAR___BEDownloadMonitor_innerProgress) unpublish];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19D512AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19D516124(a3, v25 - v10, &qword_1EB0159C0, &qword_19D520AD0);
  v12 = sub_19D51E37C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19D50116C(v11, &qword_1EB0159C0, &qword_19D520AD0);
  }

  else
  {
    sub_19D51E36C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19D51E33C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19D51E2DC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19D512DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_19D516124(a3, v22 - v9, &qword_1EB0159C0, &qword_19D520AD0);
  v11 = sub_19D51E37C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_19D50116C(v10, &qword_1EB0159C0, &qword_19D520AD0);
  }

  else
  {
    sub_19D51E36C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_19D51E33C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_19D51E2DC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_19D513068(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([v3 isCancelled])
    {
      if (qword_1EB015890 != -1)
      {
        swift_once();
      }

      v6 = sub_19D51E1BC();
      __swift_project_value_buffer(v6, qword_1EB016580);
      v7 = sub_19D51E19C();
      v8 = sub_19D51E3AC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_19D4FF000, v7, v8, "Client progress cancelled", v9, 2u);
        MEMORY[0x19EAFD8D0](v9, -1, -1);
      }

      v10 = OBJC_IVAR___BEDownloadMonitor_innerProgress;
      if (([*&v5[OBJC_IVAR___BEDownloadMonitor_innerProgress] isCancelled] & 1) == 0)
      {
        [*&v5[v10] cancel];
      }

      [*&v5[v10] unpublish];
    }
  }
}

void sub_19D5131CC(id *a1, uint64_t a2, uint64_t a3)
{
  if ([*a1 isCancelled])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (qword_1EB015890 != -1)
      {
        swift_once();
      }

      v5 = sub_19D51E1BC();
      __swift_project_value_buffer(v5, qword_1EB016580);
      v6 = sub_19D51E19C();
      v7 = sub_19D51E3AC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_19D4FF000, v6, v7, "Inner progress cancelled", v8, 2u);
        MEMORY[0x19EAFD8D0](v8, -1, -1);
      }

      v9 = OBJC_IVAR___BEDownloadMonitor_backgroundTask;
      v10 = *&v4[OBJC_IVAR___BEDownloadMonitor_backgroundTask];
      if (v10)
      {
        [v10 setTaskCompletedWithSuccess_];
        v11 = *&v4[v9];
      }

      else
      {
        v11 = 0;
      }

      *&v4[v9] = 0;

      v12 = OBJC_IVAR___BEDownloadMonitor_observedProgress;
      if (([*&v4[OBJC_IVAR___BEDownloadMonitor_observedProgress] isCancelled] & 1) == 0)
      {
        [*&v4[v12] cancel];
      }

      [*&v4[OBJC_IVAR___BEDownloadMonitor_innerProgress] unpublish];
    }
  }
}

uint64_t sub_19D513368(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_19D51E37C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = a1;
  sub_19D516AB4(0, 0, v4, &unk_19D520C48, v6);
}

uint64_t sub_19D513490()
{
  if (qword_1EB015890 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_19D51E1BC();
  __swift_project_value_buffer(v2, qword_1EB016580);
  v3 = v1;
  v4 = sub_19D51E19C();
  v5 = sub_19D51E3DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = *(v6 + OBJC_IVAR___BEDownloadMonitor_backgroundTask);
    *(v7 + 4) = v9;
    *v8 = v9;
    v10 = v9;
    _os_log_impl(&dword_19D4FF000, v4, v5, "Task expired: %@", v7, 0xCu);
    sub_19D50116C(v8, &qword_1EB0159E8, &qword_19D520C10);
    MEMORY[0x19EAFD8D0](v8, -1, -1);
    MEMORY[0x19EAFD8D0](v7, -1, -1);
  }

  v11 = *(v0 + 16);

  [*(v11 + OBJC_IVAR___BEDownloadMonitor_innerProgress) cancel];
  v12 = *(v0 + 8);

  return v12();
}

void sub_19D513634(uint64_t a1, uint64_t a2)
{
  v3 = sandbox_extension_consume();
  *(a2 + OBJC_IVAR___BEDownloadMonitor_liveActivitySandboxExtensionHandle) = v3;
  if (v3 == -1)
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v4 = sub_19D51E1BC();
    __swift_project_value_buffer(v4, qword_1EB016580);
    v5 = sub_19D51E19C();
    v6 = sub_19D51E3CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19D4FF000, v5, v6, "Failed to consume sandbox extension for Live Activity", v7, 2u);
      MEMORY[0x19EAFD8D0](v7, -1, -1);
    }
  }
}

id BEDownloadMonitor.__deallocating_deinit()
{
  sandbox_extension_release();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BEDownloadMonitor(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_19D513A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = (a3)(0, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = (*(v9 + 16))(&v15 - v10, a1 + *a4, v8);
  v13 = a5(v12);
  (*(v9 + 8))(v11, v8);

  return v13;
}

uint64_t sub_19D513BBC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_19D513C94@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = OBJC_IVAR___BEDownloadMonitor_id;
  v6 = sub_19D51DFDC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_19D513D18()
{
  sub_19D51E51C();
  MEMORY[0x19EAFD080](0);
  return sub_19D51E53C();
}

uint64_t sub_19D513D84(uint64_t a1)
{
  sub_19D51E51C();
  MEMORY[0x19EAFD080](0);
  return sub_19D51E53C();
}

id sub_19D513DD4(uint64_t a1, void *a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - v6;
  v8 = objc_opt_self();
  v9 = [v8 sharedScheduler];
  v10 = [a2 identifier];
  if (!v10)
  {
    sub_19D51E28C();
    v10 = sub_19D51E27C();
  }

  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(&v12[v11], v7, v4);
  aBlock[4] = sub_19D5167C8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19D514164;
  aBlock[3] = &block_descriptor_156;
  v13 = _Block_copy(aBlock);

  LODWORD(v12) = [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v13];
  _Block_release(v13);

  if (!v12)
  {
    sub_19D516844();
    v18 = swift_allocError();
LABEL_10:
    swift_willThrow();
    aBlock[0] = v18;
    return sub_19D51E34C();
  }

  v14 = [v8 sharedScheduler];
  aBlock[0] = 0;
  v15 = [v14 submitTaskRequest:a2 error:aBlock];

  v16 = aBlock[0];
  if (!v15)
  {
    v20[1] = aBlock[0];
    v19 = aBlock[0];
    v18 = sub_19D51DEAC();

    goto LABEL_10;
  }

  return v16;
}

uint64_t sub_19D514114(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50);
  return sub_19D51E35C();
}

void sub_19D514164(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_19D5141CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_19D514218(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_19D5041BC;

  return v6();
}

uint64_t sub_19D514300(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_19D5046C4;

  return v7();
}

uint64_t sub_19D5143E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_19D516124(a3, v23 - v10, &qword_1EB0159C0, &qword_19D520AD0);
  v12 = sub_19D51E37C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_19D50116C(v11, &qword_1EB0159C0, &qword_19D520AD0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_19D51E36C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_19D51E33C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_19D51E2DC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);

    return v21;
  }

LABEL_8:
  sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_19D51470C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_19D514768(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_19D514768(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_19D514834(v11, 0, 0, 1, a1, a2);
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
    sub_19D515560(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_19D514834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_19D514940(a5, a6);
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
    result = sub_19D51E47C();
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

void *sub_19D514940(uint64_t a1, unint64_t a2)
{
  v3 = sub_19D51498C(a1, a2);
  sub_19D514ABC(&unk_1F10D1F90);
  return v3;
}

void *sub_19D51498C(uint64_t a1, unint64_t a2)
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

  v6 = sub_19D514BA8(v5, 0);
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

  result = sub_19D51E47C();
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
        v10 = sub_19D51E31C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19D514BA8(v10, 0);
        result = sub_19D51E45C();
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

uint64_t sub_19D514ABC(uint64_t result)
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

  result = sub_19D514C1C(result, v11, 1, v3);
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

void *sub_19D514BA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C8, &qword_19D520B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_19D514C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C8, &qword_19D520B40);
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

_BYTE **sub_19D514D10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_19D514D40()
{
  sub_19D51DFBC();
  if (qword_1EB015890 != -1)
  {
    swift_once();
  }

  v1 = sub_19D51E1BC();
  __swift_project_value_buffer(v1, qword_1EB016580);
  v2 = sub_19D51E19C();
  v3 = sub_19D51E3AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19D4FF000, v2, v3, "submitBackgroundTask", v4, 2u);
    MEMORY[0x19EAFD8D0](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = *(v5 + OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken);
  v7 = *(v5 + OBJC_IVAR___BEDownloadMonitor_liveActivityAccessToken + 8);
  *(swift_task_alloc() + 16) = v5;
  sub_19D50D728(v6, v7);
  sub_19D51DF8C();
  sub_19D5155D8(v6, v7);

  v8 = objc_allocWithZone(MEMORY[0x1E695A9F8]);
  v9 = sub_19D51E27C();
  v10 = [v8 initWithIdentifier_];
  v0[10] = v10;

  v11 = *(v5 + OBJC_IVAR___BEDownloadMonitor_innerProgress);
  v12 = [v11 localizedDescription];
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v12;
  [v10 setTitle_];

  v12 = [v11 localizedAdditionalDescription];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v12, v13, v14, v15, v16, v17, v18, v19);
  }

  v21 = v12;

  [v10 setReason_];

  v22 = swift_task_alloc();
  v0[11] = v22;
  *(v22 + 16) = v10;
  v23 = swift_task_alloc();
  v0[12] = v23;
  v19 = sub_19D516668();
  *v23 = v0;
  v23[1] = sub_19D515064;
  v17 = sub_19D516660;
  v12 = v0 + 8;
  v16 = 0x800000019D521F70;
  v13 = 0;
  v14 = 0;
  v15 = 0xD000000000000013;
  v18 = v22;

  return MEMORY[0x1EEE6DE38](v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_19D515064()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_19D5152EC;
  }

  else
  {

    v2 = sub_19D515180;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D515180()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v0[6] = sub_19D5166B4;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_19D516DA4;
  v0[5] = &block_descriptor_145;
  v6 = _Block_copy(v0 + 2);
  v7 = v3;
  v8 = v1;

  [v4 setExpirationHandler_];

  _Block_release(v6);
  v9 = *&v8[OBJC_IVAR___BEDownloadMonitor_backgroundTask];
  *&v8[OBJC_IVAR___BEDownloadMonitor_backgroundTask] = v4;

  v10 = v0[1];

  return v10();
}

uint64_t sub_19D5152EC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19D515354()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v1 = sub_19D51E27C();
  v2 = [v0 initWithServiceName_];

  v3 = [objc_opt_self() interfaceWithProtocol_];
  [v2 setRemoteObjectInterface_];

  [v2 resume];
  v4 = [v2 remoteObjectProxy];
  sub_19D51E41C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159D8, qword_19D520B58);
  if (swift_dynamicCast())
  {

    return v10;
  }

  else
  {
    if (qword_1EB015890 != -1)
    {
      swift_once();
    }

    v6 = sub_19D51E1BC();
    __swift_project_value_buffer(v6, qword_1EB016580);
    v7 = sub_19D51E19C();
    v8 = sub_19D51E3CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19D4FF000, v7, v8, "Failed to get intermediary proxy", v9, 2u);
      MEMORY[0x19EAFD8D0](v9, -1, -1);
    }

    [v2 invalidate];
    return 0;
  }
}

uint64_t sub_19D515560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19D5155C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19D5155D8(result, a2);
  }

  return result;
}

uint64_t sub_19D5155D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_19D51562C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_19D5156E4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_19D51562C(a1, &a1[a2]);
  }

  sub_19D51DE7C();
  swift_allocObject();
  sub_19D51DE6C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_19D51DF7C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t _s16BrowserEngineKit17BEDownloadMonitorC17createAccessToken10Foundation4DataVSgyFZ_0()
{
  v0 = sandbox_extension_issue_mach();
  if (v0)
  {
    v1 = v0;
    v2 = strlen(v0);
    if (!__OFADD__(v2, 1))
    {
      return sub_19D5156E4(v1, v2 + 1);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (qword_1EB015890 != -1)
  {
LABEL_9:
    swift_once();
  }

  v4 = sub_19D51E1BC();
  __swift_project_value_buffer(v4, qword_1EB016580);
  v5 = sub_19D51E19C();
  v6 = sub_19D51E3CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19D4FF000, v5, v6, "Unable to get live activity access token", v7, 2u);
    MEMORY[0x19EAFD8D0](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_19D515900(uint64_t a1, uint64_t a2)
{
  result = sub_19D51DFDC();
  if (v3 <= 0x3F)
  {
    result = sub_19D51DF6C();
    if (v4 <= 0x3F)
    {
      result = sub_19D51E18C();
      if (v5 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of BEDownloadMonitor.beginMonitoring()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D515BF8;

  return v5();
}

uint64_t sub_19D515BF8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of BEDownloadMonitor.resumeMonitoring(placeholderURL:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D5041BC;

  return v7(a1);
}

uint64_t sub_19D515E34(uint64_t a1)
{
  result = sub_19D51DF6C();
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

uint64_t sub_19D515EE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19D5041BC;

  return sub_19D510158(v2, v3, v4);
}

uint64_t sub_19D515F98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19D5041BC;

  return sub_19D514218(v2, v3, v4);
}

uint64_t sub_19D516058(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D5041BC;

  return sub_19D514300(a1, v4, v5, v6);
}

uint64_t sub_19D516124(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_19D51618C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D5041BC;

  return sub_19D5011CC(a1, v4);
}

uint64_t sub_19D516244()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19D5041BC;

  return sub_19D50F888(v2, v3);
}

uint64_t objectdestroy_62Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19D51638C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_19D51DF6C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_19D5046C4;

  return sub_19D5118F4(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_19D5164D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19D51651C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D5046C4;

  return sub_19D512A68(a1, v4, v5, v6);
}

unint64_t sub_19D5165F0()
{
  result = qword_1EB015A00;
  if (!qword_1EB015A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A00);
  }

  return result;
}

unint64_t sub_19D516668()
{
  result = qword_1EB015A08;
  if (!qword_1EB015A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB015A08);
  }

  return result;
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_127Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19D516714(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D5041BC;

  return sub_19D513470(a1, v4, v5, v6);
}

uint64_t sub_19D5167C8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015A10, &unk_19D520C50);

  return sub_19D514114(a1);
}

unint64_t sub_19D516844()
{
  result = qword_1EB015A18;
  if (!qword_1EB015A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskRegistrationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TaskRegistrationError(_WORD *result, int a2, int a3)
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

unint64_t sub_19D516980()
{
  result = qword_1EB015A20;
  if (!qword_1EB015A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A20);
  }

  return result;
}

uint64_t sub_19D516AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19D519504(a3, v25 - v10);
  v12 = sub_19D51E37C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19D50116C(v11, &qword_1EB0159C0, &qword_19D520AD0);
  }

  else
  {
    sub_19D51E36C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19D51E33C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19D51E2DC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19D50116C(a3, &qword_1EB0159C0, &qword_19D520AD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19D516DA4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id WebContentProcess.createVisibilityPropagationInteraction()(uint64_t a1, uint64_t a2)
{
  v2 = sub_19D51E02C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D51E05C();
  sub_19D51E03C();
  v6 = sub_19D51DFFC();
  (*(v3 + 8))(v5, v2);
  v7 = sub_19D51E27C();
  v8 = [objc_opt_self() interactionWithPID:v6 environmentIdentifier:v7];

  return v8;
}

uint64_t sub_19D5170F0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  v3 = v2[4];
  os_unfair_lock_lock(v3 + 4);
  v4 = v2[2];
  if (v4)
  {
    v5 = v2[3];
    v2[2] = 0;
    v2[3] = 0;
    sub_19D504D74(v4, v5);
  }

  os_unfair_lock_unlock(v3 + 4);
  sub_19D51E04C();

  return sub_19D516DE8();
}

uint64_t sub_19D517170()
{
  v1 = v0[42];
  v12 = v0[41];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v12, v2);

  v10 = v0[1];

  return v10();
}

id RenderingProcess.createVisibilityPropagationInteraction()(uint64_t a1, uint64_t a2)
{
  v2 = sub_19D51E02C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D51E05C();
  sub_19D51E03C();
  v6 = sub_19D51DFFC();
  (*(v3 + 8))(v5, v2);
  v7 = sub_19D51E27C();
  v8 = [objc_opt_self() interactionWithPID:v6 environmentIdentifier:v7];

  return v8;
}

uint64_t _s16BrowserEngineKit16RenderingProcessV10auditToken0aB4Core05AuditG0Vvg_0(uint64_t a1)
{
  sub_19D51E05C();

  return sub_19D51E03C();
}

uint64_t sub_19D517480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  type metadata accessor for WebContentProcess(0);
  v7[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[7] = v10;

  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_19D517580;

  return WebContentProcess.init(bundleIdentifier:onInterruption:)(v10, 0, 0, a4, a5);
}

uint64_t sub_19D517580()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19D519680;
  }

  else
  {
    v2 = sub_19D519694;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D517968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  type metadata accessor for RenderingProcess(0);
  v7[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[7] = v10;

  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_19D517A68;

  return RenderingProcess.init(bundleIdentifier:onInterruption:)(v10, 0, 0, a4, a5);
}

uint64_t sub_19D517A68()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19D519680;
  }

  else
  {
    v2 = sub_19D519698;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D517D14(void *a1, uint64_t (*a2)(void))
{
  v3 = v2 + *a1;
  v4 = *(v3 + *(a2(0) + 20));
  v5 = v4[4];
  os_unfair_lock_lock(v5 + 4);
  v6 = v4[2];
  if (v6)
  {
    v7 = v4[3];
    v4[2] = 0;
    v4[3] = 0;
    sub_19D504D74(v6, v7);
  }

  os_unfair_lock_unlock(v5 + 4);
  sub_19D51E04C();

  return sub_19D516DE8();
}

void sub_19D517DB8(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = &a1[*a3];
  v6 = *&v5[*((a4)(0, a2) + 20)];
  v7 = v6[4];
  v10 = a1;
  os_unfair_lock_lock(v7 + 4);
  v8 = v6[2];
  if (v8)
  {
    v9 = v6[3];
    v6[2] = 0;
    v6[3] = 0;
    sub_19D504D74(v8, v9);
  }

  os_unfair_lock_unlock(v7 + 4);
  sub_19D51E04C();
  sub_19D516DE8();
}

id __BERenderingProcess.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_19D518094(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19D51812C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = sub_19D51DE9C();
  v2(0, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19D5181EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  v14 = sub_19D51E37C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;

  sub_19D516AB4(0, 0, v13, a6, v15);
}

uint64_t sub_19D518314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  type metadata accessor for NetworkingProcess(0);
  v7[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[7] = v10;

  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_19D518414;

  return NetworkingProcess.init(bundleIdentifier:onInterruption:)(v10, 0, 0, a4, a5);
}

uint64_t sub_19D518414()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19D519680;
  }

  else
  {
    v2 = sub_19D51969C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19D5187E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v21 - v16;
  v18 = sub_19D51E37C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a2;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = a5;
  v19[9] = a6;

  sub_19D516AB4(0, 0, v17, a8, v19);
}

void sub_19D51892C()
{
  v1 = sub_19D51E10C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[4];
  os_unfair_lock_lock(v5 + 4);
  v6 = v0[2];
  if (v6)
  {
    v7 = v0[3];

    v6(v8);
    sub_19D51E0EC();
    sub_19D504D74(v6, v7);
    (*(v2 + 8))(v4, v1);
    v9 = v0[2];
    v10 = v0[3];
    v0[2] = 0;
    v0[3] = 0;
    sub_19D504D74(v9, v10);
  }

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t sub_19D518A5C()
{
  sub_19D504D74(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_19D518A9C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_19D518AD4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_19D51E10C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19D518BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19D51E10C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_19D518C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19D5041BC;

  return sub_19D517480(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19D518D1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19D5041BC;

  return sub_19D517968(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_19D518DF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19D5041BC;

  return sub_19D50729C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_19D518EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19D5041BC;

  return sub_19D518314(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19D51E10C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19D51E10C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19D5193D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_19D5046C4;

  return sub_19D50729C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19D519504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0159C0, &qword_19D520AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19D519574(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D5046C4;

  return sub_19D5011CC(a1, v4);
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

uint64_t static RestrictedSandboxRevision.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_19D51E4BC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t RestrictedSandboxRevision.hashValue.getter()
{
  v1 = *v0;
  sub_19D51E51C();
  MEMORY[0x19EAFD080](v1);
  return sub_19D51E53C();
}

uint64_t sub_19D519818()
{
  v1 = *v0;
  sub_19D51E51C();
  MEMORY[0x19EAFD080](v1);
  return sub_19D51E53C();
}

uint64_t sub_19D51988C(uint64_t a1)
{
  v2 = *v1;
  sub_19D51E51C();
  MEMORY[0x19EAFD080](v2);
  return sub_19D51E53C();
}

uint64_t sub_19D5198E0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_19D51E4BC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_19D519950(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2)
  {
    v4 = 3157554;
  }

  else
  {
    v4 = 3157553;
  }

  if (v3 == v4)
  {
    swift_bridgeObjectRelease_n();
    v5 = 1;
  }

  else
  {
    v6 = sub_19D51E4BC();
    swift_bridgeObjectRelease_n();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_19D5199D0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

  else
  {
    v5 = sub_19D51E4BC();
    swift_bridgeObjectRelease_n();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_19D519A50(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 3157554;
  }

  else
  {
    v3 = 3157553;
  }

  if (v2)
  {
    v4 = 3157554;
  }

  else
  {
    v4 = 3157553;
  }

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_19D51E4BC();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

uint64_t sub_19D519B28()
{
  if (*v0)
  {
    v1 = 3157554;
  }

  else
  {
    v1 = 3157553;
  }

  if (byte_1F10D2028)
  {
    v2 = 3157554;
  }

  else
  {
    v2 = 3157553;
  }

  if (v1 == v2)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3 = sub_19D51E4BC();
    swift_bridgeObjectRelease_n();
    if (v3)
    {
      goto LABEL_11;
    }
  }

  sub_19D51E46C();

  MEMORY[0x19EAFCE50](v2, 0xE300000000000000);

  sub_19D51E2DC();

  sandbox_enable_local_state_flag();

LABEL_11:
  if (byte_1F10D2029)
  {
    v4 = 3157554;
  }

  else
  {
    v4 = 3157553;
  }

  if (v1 == v4)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_19D51E4BC();
    result = swift_bridgeObjectRelease_n();
    if (v5)
    {
      return result;
    }
  }

  sub_19D51E46C();

  MEMORY[0x19EAFCE50](v4, 0xE300000000000000);

  sub_19D51E2DC();

  sandbox_enable_local_state_flag();
}

uint64_t RestrictedSandboxAppliable<>.applyRestrictedSandbox(revision:)()
{
  sub_19D519B28();

  return sandbox_enable_local_state_flag();
}

uint64_t _LockdownVersion.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_19D51E49C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_19D519DDC()
{
  sub_19D51E51C();
  sub_19D51E2EC();
  return sub_19D51E53C();
}

uint64_t sub_19D519E38(uint64_t a1)
{
  sub_19D51E51C();
  sub_19D51E2EC();
  return sub_19D51E53C();
}

uint64_t sub_19D519E80@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_19D51E49C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_19D519EF8()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

uint64_t _WebContentExtension._lockdown(version:)()
{
  sandbox_enable_local_state_flag();

  return sandbox_enable_local_state_flag();
}

unint64_t sub_19D519F68()
{
  result = qword_1EB015A98;
  if (!qword_1EB015A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015A98);
  }

  return result;
}

unint64_t sub_19D519FEC()
{
  result = qword_1EB015AB0;
  if (!qword_1EB015AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB015AB0);
  }

  return result;
}

uint64_t sub_19D51A070(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for RestrictedSandboxRevision(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictedSandboxRevision(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Void __swiftcall ProcessCapability.Grant.invalidate()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {
    v3 = *v0;
    [v1 removeObserver_];
    [v3 invalidate];
    v4 = v2;
    sub_19D504F00(v3);
  }

  else
  {

    [v1 invalidate];
  }
}

uint64_t sub_19D51A34C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED6578E0 = result;
  return result;
}

uint64_t MediaEnvironment.init(webPage:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for MediaEnvironment(0) + 20);
  v5 = sub_19D51DF6C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(a2 + v4, a1, v5);
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = sub_19D51E28C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  getpid();
  if (qword_1ED6578D0 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED6578E0;

  os_unfair_lock_lock(v12 + 4);

  if (__OFADD__(qword_1ED6578E8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1ED6578E8;
    v17 = sub_19D51E4AC();
    v18 = v14;
    MEMORY[0x19EAFCE50](45, 0xE100000000000000);
    v15 = sub_19D51E4AC();
    MEMORY[0x19EAFCE50](v15);

    MEMORY[0x19EAFCE50](45, 0xE100000000000000);
    MEMORY[0x19EAFCE50](v9, v11);

    v16 = qword_1ED6578E0;

    os_unfair_lock_unlock(v16 + 4);
    (*(v6 + 8))(a1, v5);

    *a2 = v17;
    a2[1] = v18;
  }

  return result;
}

uint64_t MediaEnvironment.init(xpcRepresentation:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015AD0, &qword_19D520980);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  v7 = sub_19D51DF6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x19EAFD9F0](a1);
  if (v11 != sub_19D51E1CC() || !xpc_dictionary_get_string(a1, "identifier"))
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  *a2 = sub_19D51E30C();
  a2[1] = v13;
  if (!xpc_dictionary_get_string(a1, "url"))
  {
LABEL_8:
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  sub_19D51E30C();
  sub_19D51DF5C();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_19D50116C(v6, &qword_1EB015AD0, &qword_19D520980);
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  v14 = *(v8 + 32);
  v14(v10, v6, v7);
  v15 = type metadata accessor for MediaEnvironment(0);
  return (v14)(a2 + *(v15 + 20), v10, v7);
}

xpc_object_t MediaEnvironment.createXPCRepresentation()()
{
  empty = xpc_dictionary_create_empty();
  v1 = sub_19D51E2DC();
  xpc_dictionary_set_string(empty, "identifier", (v1 + 32));

  type metadata accessor for MediaEnvironment(0);
  sub_19D51DEEC();
  v2 = sub_19D51E2DC();

  xpc_dictionary_set_string(empty, "url", (v2 + 32));

  return empty;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaEnvironment.activate()()
{
  v0 = [objc_opt_self() sharedAVSystemController];
  if (v0)
  {
    v1 = v0;
    v2 = sub_19D51E27C();
    v3 = [v1 grantMediaEndowmentWithEnvironmentID:v2 endowmentPayload:0];

    if (v3 != sub_19D51E1EC())
    {
      [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v3 userInfo:0];
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaEnvironment.suspend()()
{
  v0 = [objc_opt_self() sharedAVSystemController];
  if (v0)
  {
    v1 = v0;
    v2 = sub_19D51E27C();
    v3 = [v1 revokeMediaEndowmentWithEnvironmentID_];

    if (v3 != sub_19D51E1EC())
    {
      [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:v3 userInfo:0];
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

AVCaptureSession __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaEnvironment.makeCaptureSession()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6987110]);
  v1 = sub_19D51E27C();
  v2 = [v0 initWithMediaEnvironment_];

  v4 = v2;
  result._internal = v3;
  result.super.isa = v4;
  return result;
}

void sub_19D51ACF8(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, void *a6@<X8>)
{
  v25 = a5;
  v11 = v6;
  v14 = type metadata accessor for ProcessCapability(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = a2(0);
  v23[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_19D503500(v11, boxed_opaque_existential_1, a4);
  sub_19D503A64(v23, 0, 0, v24);
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (!v7)
  {
    v18 = a6;
    v19 = v25;
    v20 = v24[0];
    v21 = v24[1];
    sub_19D503500(a1, v16, type metadata accessor for ProcessCapability);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v19(0);
      sub_19D51892C();
    }

    else
    {
      sub_19D5041C0(v16, type metadata accessor for ProcessCapability);
    }

    *v18 = v20;
    v18[1] = v21;
  }
}

void sub_19D51AED4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void (*a7)(void)@<X6>, void *a8@<X8>)
{
  v25 = a8;
  v26 = a7;
  v13 = v8;
  v29 = type metadata accessor for ProcessCapability(0);
  MEMORY[0x1EEE9AC00](v29);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = a4(0);
  v27[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_19D503500(v13, boxed_opaque_existential_1, a6);
  sub_19D503A64(v27, a2, a3, v28);
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (!v9)
  {
    v20 = v25;
    v21 = v26;
    v23 = v28[0];
    v22 = v28[1];
    sub_19D503500(a1, v18, type metadata accessor for ProcessCapability);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v21(0);
      sub_19D51892C();
    }

    else
    {
      sub_19D5041C0(v18, type metadata accessor for ProcessCapability);
    }

    *v20 = v23;
    v20[1] = v22;
  }
}

uint64_t sub_19D51B058@<X0>(void *a1@<X8>)
{
  v2[3] = &type metadata for Process;
  sub_19D503A64(v2, 0, 0, a1);
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_19D51B4C0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

id BEMediaEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_19D51B974(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19D51BB1C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t (*a8)(void))
{
  v13 = a3;
  v14 = a1;
  v15 = sub_19D51BCA8(v13, a5, a6, a7, a8);

  return v15;
}

uint64_t sub_19D51BCA8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v9 = *a2;
  v14[3] = a3(0);
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_19D503500(v5 + v9, boxed_opaque_existential_1, a5);
  sub_19D503A64(v14, 0, 0, v15);
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  if (!v6)
  {
    v12 = v15[0];
    v13 = v15[1];
    type metadata accessor for _BEProcessCapabilityGrant();
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 24) = v13;
  }

  return result;
}

void sub_19D51BE00(void *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015B90, &unk_19D521560);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19D5213A0;
  *(v5 + 32) = [objc_opt_self() attributeWithCompletionPolicy_];
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19D5213A0;
  v7 = *v2;
  v8 = v2[1];
  v9 = sub_19D51E27C();
  v10 = sub_19D51E27C();
  sub_19D5024C0(0, &qword_1ED657C28, 0x1E69C7550);
  v11 = sub_19D51E32C();

  v12 = [objc_opt_self() grantWithNamespace:v9 sourceEnvironment:v10 attributes:v11];

  *(v6 + 32) = v12;
  v13 = sub_19D503EDC(a1, v7, v8, v6);

  if (!v3)
  {
    v14 = type metadata accessor for ProcessCapability.AssertionObserver();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver__didInvalidate];
    *v16 = 0;
    v16[1] = 0;
    v17 = OBJC_IVAR____TtCO16BrowserEngineKit17ProcessCapabilityP33_0A18377BB6CEC07907AEB25ED9D7270217AssertionObserver_invalidationLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BA0, &qword_19D5210B8);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *&v15[v17] = v18;
    *v16 = nullsub_1;
    v16[1] = 0;
    v23.receiver = v15;
    v23.super_class = v14;
    v19 = v13;
    v20 = objc_msgSendSuper2(&v23, sel_init);
    v21 = v20;
    [v19 addObserver_];

    v22 = v24;
    *v24 = v19;
    v22[1] = v20;
  }
}

uint64_t __swift_get_extra_inhabitant_index_48Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_49Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_19D51C3C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_19D51E02C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19D51E01C();
  v6 = sub_19D51DFFC();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_19D51C494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEnvironment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19D51C4F8(uint64_t a1, uint64_t a2)
{
  sub_19D51E51C();
  sub_19D51E2EC();
  v4 = sub_19D51E53C();

  return sub_19D51C570(a1, a2, v4);
}

unint64_t sub_19D51C570(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_19D51E4BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19D51C628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015BC0, &unk_19D521580);
    v3 = sub_19D51E48C();
    v4 = a1 + 32;

    while (1)
    {
      sub_19D51C8DC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_19D51C4F8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19D51C94C(&v15, (v3[7] + 32 * result));
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

id sub_19D51C738(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB015BA8, &qword_19D521570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19D5213B0;
  *(inited + 32) = sub_19D51E28C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD00000000000001BLL;
  *(inited + 56) = 0x800000019D522590;
  *(inited + 80) = sub_19D51E28C();
  *(inited + 88) = v4;
  *(inited + 120) = sub_19D5024C0(0, &qword_1ED6578F0, 0x1E696ABC0);
  *(inited + 96) = a1;
  v5 = a1;
  sub_19D51C628(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BB8, &qword_19D521578);
  swift_arrayDestroy();
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_19D51E27C();
  v8 = sub_19D51E26C();

  v9 = [v6 initWithDomain:v7 code:2 userInfo:v8];

  return v9;
}

uint64_t sub_19D51C8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB015BB8, &qword_19D521578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_19D51C94C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::Bool __swiftcall BrowserEngineEntitlement.check(auditToken:)(audit_token_t_optional *auditToken)
{
  v2 = sub_19D51E02C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (auditToken->is_nil)
  {
    sub_19D51E01C();
    sub_19D51E00C();
    (*(v3 + 8))(v5, v2);
  }

  sub_19D51E03C();
  v6 = sub_19D51DFEC();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t _NetworkingExtension._request(capability:)@<X0>(void *a1@<X8>)
{
  v2[3] = &type metadata for Process;
  v2[4] = &off_1F10D2E00;
  sub_19D503A64(v2, 0, 0, a1);
  return __swift_destroy_boxed_opaque_existential_0(v2);
}