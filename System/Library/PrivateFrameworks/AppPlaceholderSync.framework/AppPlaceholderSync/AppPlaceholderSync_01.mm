uint64_t sub_2225836D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_222590088();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_222583978(uint64_t *a1, uint64_t a2, void *a3, size_t *a4)
{
  v38 = a4;
  v35 = a3;
  v5 = sub_222590018();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v37 = sub_222590038();
  v11 = *(v37 - 8);
  v12 = MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = (*a1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
  v17 = *v16;
  v18 = v16[1];
  if (v17 == sub_22257A8F4() && v18 == v19)
  {
  }

  else
  {
    v21 = sub_2225908C8();

    if ((v21 & 1) == 0 && (*v16 != qword_27D00EEC8 || v16[1] != off_27D00EED0))
    {
      result = sub_2225908C8();
      if ((result & 1) == 0)
      {
        return result;
      }
    }
  }

  sub_22258FDD8();
  v24 = sub_22258FDF8();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  sub_22258588C(v10, v8, MEMORY[0x277D46788]);
  sub_22258FFE8();
  sub_2225858F4(v10, MEMORY[0x277D46788]);

  v26 = v35;
  MEMORY[0x223DB9AA0](v25);
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_222590588();
  }

  sub_222590598();
  v28 = v36;
  v27 = v37;
  (*(v11 + 16))(v36, v15, v37);
  v29 = v38;
  v30 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_222580AA4(0, v30[2] + 1, 1, v30, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
    *v29 = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    *v29 = sub_222580AA4((v32 > 1), v33 + 1, 1, v30, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
  }

  (*(v11 + 8))(v15, v27);
  v34 = *v29;
  *(v34 + 16) = v33 + 1;
  return (*(v11 + 32))(v34 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v28, v27);
}

unint64_t sub_222583DB8(unint64_t result, uint64_t a2, void *a3, size_t *a4)
{
  v6 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DB9CC0](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v13 = v9;
        sub_222583978(&v13, a2, a3, a4);

        if (!v4)
        {
          ++v8;
          if (v10 != v7)
          {
            continue;
          }
        }

        return result;
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2225907F8();
      v7 = result;
    }

    while (result);
  }

  return result;
}

void sub_222583ED0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2225906F8();
    sub_222585984(0, &qword_28130F7A0, 0x277D54C08);
    sub_2225859CC();
    sub_222590618();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        sub_222573338(&v25, a2, a3);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_222590708())
        {
          break;
        }

        sub_222585984(0, &qword_28130F7A0, 0x277D54C08);
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_222568DEC(v5);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2225840D4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      v5 = sub_22257A8F4();
      v7 = StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(v4, v3, v5, v6);

      sub_22257E190(v7);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_22258418C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2225907F8())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DB9CC0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_222576FD4(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
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

uint64_t sub_222584290(uint64_t a1)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;

  *(v1 + 24) = sub_22258EF30();
  v2 = *MEMORY[0x277CCA1A0];
  v3 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v4 = v2;
  v5 = sub_222590498();
  v6 = [v3 initWithName:v5 protectionClass:v4];

  *(v1 + 32) = v6;
  return v1;
}

uint64_t sub_22258433C()
{
  v72 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for Defaults(0);
  MEMORY[0x28223BE20](v0);
  v2 = v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = v51 - v4;
  v68 = sub_22258FCA8();
  v5 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22258FD68();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v66 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v51 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_28130F8F8);
  swift_beginAccess();
  v15 = v14 + *(v0 + 40);
  v64 = *(v8 + 16);
  v65 = v8 + 16;
  v64(v12, v15, v7);
  v70 = v12;
  sub_22258FD28();
  v16 = sub_222590498();

  v71 = 0;
  v59 = v13;
  v17 = [v13 contentsOfDirectoryAtPath:v16 error:&v71];

  v18 = v71;
  if (v17)
  {
    v19 = sub_222590568();
    v20 = v18;

    v22 = v19;
    v23 = *(v19 + 16);
    if (v23)
    {
      v52 = v14;
      v54 = v2;
      v55 = v0;
      v63 = *MEMORY[0x277CC91D0];
      v25 = v5 + 104;
      v24 = *(v5 + 104);
      v61 = (v8 + 56);
      v62 = v24;
      v53 = v8;
      v60 = (v8 + 8);
      v51[1] = v22;
      v26 = (v22 + 40);
      *&v21 = 136315394;
      v56 = v21;
      v27 = v59;
      v57 = v7;
      v58 = v25;
      do
      {
        v30 = *(v26 - 1);
        v29 = *v26;
        v62(v67, v63, v68);
        v31 = v69;
        v64(v69, v70, v7);
        (*v61)(v31, 0, 1, v7);
        swift_bridgeObjectRetain_n();
        v32 = v66;
        sub_22258FD38();
        v33 = sub_22258FCD8();
        (*v60)(v32, v7);
        v71 = 0;
        v34 = [v27 removeItemAtURL:v33 error:&v71];

        if (v34)
        {
          v28 = v71;
        }

        else
        {
          v35 = v71;
          v36 = sub_22258FC68();

          swift_willThrow();
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v37 = sub_2225901D8();
          __swift_project_value_buffer(v37, qword_28130F918);

          v38 = v36;
          v39 = sub_2225901B8();
          v40 = sub_222590668();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v71 = v43;
            *v41 = v56;
            v44 = sub_222580F0C(v30, v29, &v71);

            *(v41 + 4) = v44;
            *(v41 + 12) = 2112;
            v45 = v36;
            v46 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 14) = v46;
            *v42 = v46;
            _os_log_impl(&dword_222567000, v39, v40, "error removing %s: %@", v41, 0x16u);
            sub_22256EA7C(v42, &qword_27D00EDB0, &unk_222591A20);
            v47 = v42;
            v7 = v57;
            MEMORY[0x223DBA5D0](v47, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v43);
            MEMORY[0x223DBA5D0](v43, -1, -1);
            MEMORY[0x223DBA5D0](v41, -1, -1);
          }

          else
          {
          }

          v27 = v59;
        }

        v26 += 2;
        --v23;
      }

      while (v23);

      v2 = v54;
      v8 = v53;
      v14 = v52;
    }

    else
    {
    }
  }

  else
  {
    v48 = v71;
    v49 = sub_22258FC68();

    swift_willThrow();
  }

  sub_22258588C(v14, v2, type metadata accessor for Defaults);
  sub_222571A3C();
  sub_222571A3C();

  sub_2225858F4(v2, type metadata accessor for Defaults);
  return (*(v8 + 8))(v70, v7);
}

void _s18AppPlaceholderSync0C7ManagerC5resetyyFZ_0()
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Defaults(0);
  __swift_project_value_buffer(v0, qword_28130F8F8);
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = sub_222590498();
  [v2 setBool:1 forKey:v3];

  sub_22258433C();
  if (qword_28130FDB8 != -1)
  {
    swift_once();
  }

  sub_2225902B8();
  swift_allocObject();

  sub_2225902C8();
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  StoreContext.purgeAllItems()();
  swift_setDeallocating();

  sub_2225791F0();
  v5 = [v1 standardUserDefaults];
  v6 = sub_222590498();
  [v5 setBool:0 forKey:v6];
}

void sub_222584CA0(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22258FD68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_22258FCD8();
  v28 = 0;
  v8 = [v6 removeItemAtURL:v7 error:&v28];

  v9 = v28;
  if (v8)
  {

    v10 = v9;
  }

  else
  {
    v26 = v28;
    v11 = v28;
    v12 = sub_22258FC68();

    swift_willThrow();
    v28 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
    sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
    swift_dynamicCast();
    v13 = v27[0];
    if ([v27[0] code] == 4)
    {
    }

    else
    {
      if (qword_28130F910 != -1)
      {
        swift_once();
      }

      v14 = sub_2225901D8();
      __swift_project_value_buffer(v14, qword_28130F918);
      (*(v3 + 16))(v5, a1, v2);
      v15 = v13;
      v16 = sub_2225901B8();
      v17 = sub_222590668();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29[0] = v26;
        *v18 = 136315394;
        v20 = sub_22258FD28();
        v22 = v21;
        (*(v3 + 8))(v5, v2);
        v23 = sub_222580F0C(v20, v22, v29);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v15;
        *v19 = v15;
        v24 = v15;
        _os_log_impl(&dword_222567000, v16, v17, "Error removing placeholder at %s: %@", v18, 0x16u);
        sub_22256EA7C(v19, &qword_27D00EDB0, &unk_222591A20);
        MEMORY[0x223DBA5D0](v19, -1, -1);
        v25 = v26;
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x223DBA5D0](v25, -1, -1);
        MEMORY[0x223DBA5D0](v18, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }
    }
  }
}

uint64_t sub_2225850A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2225850F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2225851A4;

  return sub_22257EDD8(a1, v4, v5, v6);
}

uint64_t sub_2225851A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222585504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22258556C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2225855C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_222585614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF8, &qword_222591AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222585684(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222585A3C;

  return sub_2225808B4(a1, v4);
}

uint64_t sub_22258573C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225851A4;

  return sub_2225808B4(a1, v4);
}

uint64_t sub_2225857F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DB9B60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_222582928(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22258588C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225858F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_222585984(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2225859CC()
{
  result = qword_28130F798;
  if (!qword_28130F798)
  {
    sub_222585984(255, &qword_28130F7A0, 0x277D54C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130F798);
  }

  return result;
}

uint64_t sub_222585BF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDB0, &unk_222591A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

APSLaunchUtil __swiftcall APSLaunchUtil.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_222585DE8(uint64_t a1)
{
  sub_2225904C8();
  sub_222590948();
  sub_2225904F8();
  v2 = sub_222590968();

  return sub_2225860E0(a1, v2);
}

unint64_t sub_222585E7C(uint64_t a1, uint64_t a2)
{
  sub_222590948();
  sub_2225904F8();
  v4 = sub_222590968();

  return sub_2225861E4(a1, a2, v4);
}

unint64_t sub_222585EF4(uint64_t a1)
{
  sub_222590038();
  v2 = MEMORY[0x277D46798];
  sub_222586790(&qword_27D00EF40, MEMORY[0x277D46798], MEMORY[0x277D467A0]);
  v3 = sub_222590478();
  return sub_22258629C(a1, v3, MEMORY[0x277D46798], &qword_27D00EFE8, v2, MEMORY[0x277D467B0]);
}

unint64_t sub_222585FC8(uint64_t a1)
{
  sub_22258FDF8();
  v2 = MEMORY[0x277CC95F0];
  sub_222586790(&qword_281310190, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_222590478();
  return sub_22258629C(a1, v3, MEMORY[0x277CC95F0], &qword_281310188, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_22258609C(uint64_t a1)
{
  v2 = sub_222590938();

  return sub_22258643C(a1, v2);
}

unint64_t sub_2225860E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2225904C8();
      v8 = v7;
      if (v6 == sub_2225904C8() && v8 == v9)
      {
        break;
      }

      v11 = sub_2225908C8();

      if ((v11 & 1) == 0)
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

unint64_t sub_2225861E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2225908C8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22258629C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_222586790(v23, v24, v25);
      v19 = sub_222590488();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_22258643C(uint64_t a1, uint64_t a2)
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

id sub_2225864A8(uint64_t a1, uint64_t a2)
{
  sub_222585984(0, &qword_27D00EFB8, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFC0, &qword_222591C30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222591C20;
  *(v3 + 32) = sub_222585984(0, &qword_27D00EFC8, 0x277CBEAC0);
  *(v3 + 40) = sub_222585984(0, &qword_27D00EFD0, 0x277CCACA8);
  sub_222590688();

  if (!v2)
  {
    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFE0, &unk_222591C40);
      if (swift_dynamicCast())
      {
        if (*(v17 + 16))
        {
          v4 = sub_222585E7C(0x4449656C646E7562, 0xE800000000000000);
          if (v5)
          {
            v6 = (*(v17 + 56) + 16 * v4);
            v7 = *v6;
            v8 = v6[1];

            v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);
            return sub_222580584(v7, v8, 0);
          }
        }
      }
    }

    else
    {
      sub_22256EA7C(v18, &qword_27D00EFD8, &qword_222591C38);
    }

    v11 = *MEMORY[0x277CCA5B8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEB8, &unk_222591A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222591200;
    *(inited + 32) = sub_2225904C8();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v13;
    *(inited + 48) = 0xD000000000000022;
    *(inited + 56) = 0x8000000222593E30;
    v14 = v11;
    sub_22258CC5C(inited);
    swift_setDeallocating();
    sub_22256EA7C(inited + 32, &qword_27D00EEC0, &unk_222592390);
    v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v16 = sub_222590448();

    [v15 initWithDomain:v14 code:2 userInfo:v16];

    swift_willThrow();
  }

  return swift_willThrow();
}

uint64_t sub_222586790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PublisherStore.defaultURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults(0);
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  v4 = *(v2 + 20);
  v5 = sub_22258FD68();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2225868A4()
{
  v0 = sub_22258FD68();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PublisherStore(0);
  swift_allocObject();
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Defaults(0);
  v5 = __swift_project_value_buffer(v4, qword_28130F8F8);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5 + *(v4 + 20), v0);
  result = sub_222569460(v3);
  qword_28130FAE8 = result;
  return result;
}

uint64_t static PublisherStore.shared.getter()
{
  if (qword_28130FAE0 != -1)
  {
    swift_once();
  }
}

uint64_t static PublisherStore.reset()()
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Defaults(0);
  v1 = __swift_project_value_buffer(v0, qword_28130F8F8);
  swift_beginAccess();
  return sub_222586DEC(*v1);
}

uint64_t static PublisherStore.upgrade()()
{
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v1 = sub_2225901D8();
  __swift_project_value_buffer(v1, qword_28130F918);
  v2 = sub_2225901B8();
  v3 = sub_222590678();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_6;
  }

  v0 = swift_slowAlloc();
  *v0 = 134217984;
  if (qword_28130F8F0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = type metadata accessor for Defaults(0);
    v5 = __swift_project_value_buffer(v4, qword_28130F8F8);
    swift_beginAccess();
    *(v0 + 4) = *v5;
    _os_log_impl(&dword_222567000, v2, v3, "Attempting to upgrade to %ld", v0, 0xCu);
    MEMORY[0x223DBA5D0](v0, -1, -1);
LABEL_6:

    if (qword_28130F8F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Defaults(0);
    v7 = __swift_project_value_buffer(v6, qword_28130F8F8);
    result = swift_beginAccess();
    v2 = *v7;
    if (v2 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  if (v2 != 1)
  {
    result = 1;
    do
    {
      v9 = result + 1;
      sub_222586DEC(result);
      result = v9;
    }

    while (v2 != v9);
  }

  return result;
}

uint64_t PublisherStore.deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t PublisherStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_222586DEC(void *a1)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  MEMORY[0x28223BE20](v2 - 8);
  v91 = &v80 - v3;
  v90 = sub_22258FCA8();
  v4 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22258FD68();
  v7 = *(v98 - 8);
  v8 = MEMORY[0x28223BE20](v98);
  v89 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v80 - v10;
  v92 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_222590758();

  v103 = 0xD000000000000010;
  v104 = 0x8000000222593A50;
  v105 = a1;
  v12 = sub_2225908B8();
  MEMORY[0x223DB9A60](v12);

  v13 = MEMORY[0x223DB9A60](0x726F74737370612ELL, 0xE900000000000065);
  v14 = 0;
  v88 = (v4 + 104);
  v15 = (v7 + 16);
  v87 = (v7 + 56);
  v97 = (v7 + 8);
  v86 = v103;
  v93 = v104;
  v85 = *MEMORY[0x277CC91C0];
  v100 = *MEMORY[0x277CCA5B8];
  v13.n128_u64[0] = 136315138;
  v81 = v13;
  v13.n128_u64[0] = 136315394;
  v80 = v13;
  v84 = v6;
  v83 = (v7 + 16);
  do
  {
    v96 = v14;
    v16 = &unk_2835BD7B0 + 16 * v14;
    v17 = *(v16 + 4);
    v18 = *(v16 + 5);
    v105 = v86;
    v106 = v93;

    MEMORY[0x223DB9A60](v17, v18);
    v20 = v105;
    v19 = v106;
    (*v88)(v6, v85, v90);
    v21 = qword_28130F8F0;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Defaults(0);
    v23 = __swift_project_value_buffer(v22, qword_28130F8F8);
    swift_beginAccess();
    v24 = *(v22 + 44);
    v25 = *v15;
    v26 = v23 + v24;
    v27 = v91;
    v28 = v98;
    (*v15)(v91, v26, v98);
    (*v87)(v27, 0, 1, v28);
    v99 = v19;
    sub_22258FD38();
    v29 = v89;
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v30 = sub_2225901D8();
    v31 = __swift_project_value_buffer(v30, qword_28130F918);
    v25(v29, v11, v28);
    v95 = v31;
    v32 = v29;
    v33 = sub_2225901B8();
    v34 = sub_222590678();
    v35 = os_log_type_enabled(v33, v34);
    v94 = v20;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v105 = v37;
      *v36 = v81.n128_u32[0];
      sub_2225878C0();
      v38 = v11;
      v39 = sub_2225908B8();
      v82 = v18;
      v41 = v40;
      v42 = *v97;
      (*v97)(v32, v28);
      v43 = v39;
      v11 = v38;
      v44 = v42;
      v45 = sub_222580F0C(v43, v41, &v105);

      *(v36 + 4) = v45;
      _os_log_impl(&dword_222567000, v33, v34, "attempting to remove %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v46 = v37;
      v6 = v84;
      MEMORY[0x223DBA5D0](v46, -1, -1);
      MEMORY[0x223DBA5D0](v36, -1, -1);
    }

    else
    {

      v44 = *v97;
      (*v97)(v32, v28);
    }

    v47 = sub_22258FCD8();
    v105 = 0;
    v48 = [v92 removeItemAtURL:v47 error:&v105];

    v49 = v105;
    if (v48)
    {
      v44(v11, v98);

      v15 = v83;
      goto LABEL_3;
    }

    v50 = v49;
    v51 = sub_22258FC68();

    swift_willThrow();
    v105 = v51;
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
    sub_222587874();
    swift_dynamicCast();

    v82 = v101[0];
    v53 = [v101[0] underlyingErrors];
    v54 = sub_222590568();

    v55 = 0;
    v56 = *(v54 + 16);
    while (1)
    {
      if (v56 == v55)
      {

        v6 = v84;
        v78 = v98;
        v15 = v83;
        goto LABEL_27;
      }

      if (v55 >= *(v54 + 16))
      {
        __break(1u);
      }

      v58 = *(v54 + 8 * v55 + 32);
      v59 = v58;
      v60 = sub_22258FC58();
      v61 = [v60 domain];
      v62 = sub_2225904C8();
      v64 = v63;

      if (v62 != sub_2225904C8() || v64 != v65)
      {
        break;
      }

LABEL_14:
      v57 = [v60 code];

      ++v55;
      if (v57 != 2)
      {
        goto LABEL_23;
      }
    }

    v67 = sub_2225908C8();

    if (v67)
    {
      goto LABEL_14;
    }

LABEL_23:

    v68 = v99;

    v69 = v82;
    v70 = sub_2225901B8();
    v71 = sub_222590668();

    v72 = os_log_type_enabled(v70, v71);
    v6 = v84;
    v15 = v83;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v102 = v74;
      *v73 = v80.n128_u32[0];
      v75 = sub_222580F0C(v94, v68, &v102);
      v95 = v44;
      v76 = v6;
      v77 = v75;

      *(v73 + 4) = v77;
      v6 = v76;
      *(v73 + 12) = 2048;
      *(v73 + 14) = [v69 code];

      _os_log_impl(&dword_222567000, v70, v71, "error removing %s: %ld", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x223DBA5D0](v74, -1, -1);
      MEMORY[0x223DBA5D0](v73, -1, -1);

      v95(v11, v98);
      goto LABEL_28;
    }

    v78 = v98;
LABEL_27:

    v44(v11, v78);
LABEL_28:

LABEL_3:
    v14 = v96 + 1;
  }

  while (v96 != 2);

  return swift_arrayDestroy();
}

uint64_t type metadata accessor for PublisherStore(uint64_t a1)
{
  result = qword_28130FAD0;
  if (!qword_28130FAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222587874()
{
  result = qword_28130F790;
  if (!qword_28130F790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130F790);
  }

  return result;
}

unint64_t sub_2225878C0()
{
  result = qword_2813101C0;
  if (!qword_2813101C0)
  {
    sub_22258FD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101C0);
  }

  return result;
}

uint64_t sub_222587950@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590348();

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_222587A78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE18();
}

uint64_t sub_222587BB0(uint64_t a1)
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590348();

  return v1;
}

uint64_t sub_222587CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590358();
}

uint64_t sub_222587D68@<X0>(_DWORD *a2@<X8>)
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590348();

  *a2 = v4;
  return result;
}

uint64_t sub_222587E74(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE18();
}

uint64_t sub_222587F44()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590348();

  return v1;
}

uint64_t sub_222588048(uint64_t a1, int a2)
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590358();
}

uint64_t sub_2225880F0()
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_222590348();
}

uint64_t sub_222588228(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_22258A970(&qword_2813101B0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_222590358();
}

uint64_t sub_222588320()
{
  v1 = *v0;
  sub_222590948();
  MEMORY[0x223DB9EB0](v1);
  return sub_222590968();
}

uint64_t sub_222588394(uint64_t a1)
{
  v2 = *v1;
  sub_222590948();
  MEMORY[0x223DB9EB0](v2);
  return sub_222590968();
}

unint64_t sub_2225883D8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_2225884A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22258A1F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2225884E4(uint64_t a1)
{
  v2 = sub_22258A91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222588520(uint64_t a1)
{
  v2 = sub_22258A91C();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_22258855C(void *a1)
{
  v2 = v1;
  v4 = sub_22258FDB8();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F010, &qword_222592040);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for PlaceholderRecord(0);
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F008, &qword_2225924E0);
  v11 = sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  v38 = v10;
  v39 = v10;
  v40 = v11;
  v41 = v11;
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_222590308();
  v36 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
  sub_22258FE38();
  v12 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_22258A91C();
  v35 = v9;
  v13 = v37;
  sub_222590978();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    v23 = sub_22258FE48();
    (*(*(v23 - 8) + 8))(v1 + v36, v23);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v6;
    LOBYTE(v38) = 0;
    v14 = sub_222590858();
    v16 = v15;
    v31 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v38 = v14;
    v39 = v16;
    sub_222590238();

    LOBYTE(v38) = 1;
    v17 = sub_222590858();
    v19 = v18;
    v31 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v38 = v17;
    v39 = v19;
    sub_222590238();

    LOBYTE(v38) = 2;
    v20 = sub_222590858();
    v22 = v21;
    v31 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v38 = v20;
    v39 = v22;
    sub_222590238();

    LOBYTE(v38) = 3;
    LODWORD(v20) = sub_222590878();
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    LODWORD(v38) = v20;
    sub_222590238();

    LOBYTE(v38) = 4;
    sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v25 = v37;
    sub_222590868();
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    sub_22258A970(&qword_2813101B0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_222590238();
    v26 = v34;

    (*(v32 + 8))(v25, v4);
    LOBYTE(v38) = 5;
    v27 = sub_222590858();
    v29 = v28;
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    swift_getKeyPath();
    v38 = v27;
    v39 = v29;
    sub_222590238();

    (*(v33 + 8))(v35, v26);
  }

  __swift_destroy_boxed_opaque_existential_0(v42);
  return v2;
}

uint64_t sub_222588C60(void *a1)
{
  v2 = v1;
  v4 = sub_22258FDB8();
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F020, &qword_222592048);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22258A91C();
  sub_222590988();
  v11 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
  v25 = v2;
  swift_getKeyPath();
  v22 = sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  v23 = v11;
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  v24 = v2;
  sub_222590348();

  LOBYTE(v25) = 0;
  v12 = v26;
  sub_222590888();
  if (v12)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v13 = v21;
    v26 = v8;

    v25 = v24;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v25) = 1;
    sub_222590888();

    v25 = v24;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v25) = 2;
    sub_222590888();

    v25 = v24;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v25) = 3;
    sub_2225908A8();
    v25 = v24;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    v18 = MEMORY[0x277CC9578];
    sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_222590348();
    v15 = v13;

    LOBYTE(v25) = 4;
    sub_22258A970(&qword_2813101B0, v18, MEMORY[0x277CC9580]);
    v16 = v19;
    sub_222590898();
    (*(v20 + 8))(v15, v16);
    v25 = v24;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    LOBYTE(v25) = 5;
    sub_222590888();
    (*(v26 + 8))(v10, v7);
  }
}

uint64_t *sub_2225892F4(__int128 *a1)
{
  type metadata accessor for PlaceholderRecord(0);
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F008, &qword_2225924E0);
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  v1[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_222590308();
  sub_22258FE38();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  sub_22258A8C0(a1, (v1 + 2));
  swift_endAccess();
  return v1;
}

uint64_t sub_222589414()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
  v2 = sub_22258FE48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaceholderRecord(uint64_t a1)
{
  result = qword_281310140;
  if (!qword_281310140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22258950C(uint64_t a1)
{
  result = sub_22258FE48();
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

char *sub_2225895D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PlaceholderRecord(0);
  v5 = swift_allocObject();
  result = sub_22258855C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_222589650()
{
  v1 = sub_22258FDB8();
  v9 = *(v1 - 8);
  v10 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_222590758();
  MEMORY[0x223DB9A60](0xD00000000000001ELL, 0x8000000222593FC0);
  v11 = v0;
  swift_getKeyPath();
  sub_22258A970(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590348();

  MEMORY[0x223DB9A60](v11, v12);

  MEMORY[0x223DB9A60](0xD000000000000013, 0x8000000222593FE0);
  v11 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  MEMORY[0x223DB9A60](v11, v12);

  MEMORY[0x223DB9A60](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  v11 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  MEMORY[0x223DB9A60](v11, v12);

  MEMORY[0x223DB9A60](0x6F6674616C70202CLL, 0xEB000000003D6D72);
  v11 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  v4 = sub_2225908B8();
  MEMORY[0x223DB9A60](v4);

  MEMORY[0x223DB9A60](0x6D207473616C202CLL, 0xEB000000003D646FLL);
  v11 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  v5 = MEMORY[0x277CC9578];
  sub_22258A970(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_222590348();

  sub_22258A970(&qword_2813101A0, v5, MEMORY[0x277CC95B8]);
  v6 = v10;
  v7 = sub_2225908B8();
  MEMORY[0x223DB9A60](v7);

  (*(v9 + 8))(v3, v6);
  MEMORY[0x223DB9A60](0x656369766564202CLL, 0xE90000000000003DLL);
  v11 = v0;
  swift_getKeyPath();
  sub_22258FE28();

  swift_getKeyPath();
  sub_222590348();

  MEMORY[0x223DB9A60](v11, v12);

  return v13;
}

uint64_t sub_222589BE4(__int128 *a1)
{
  type metadata accessor for PlaceholderRecord(0);
  v2 = swift_allocObject();
  sub_2225892F4(a1);
  return v2;
}

uint64_t sub_222589C70(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_22258A8C0(a1, v1 + 16);
  return swift_endAccess();
}

void (*sub_222589CC8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_22258A85C(v1 + 16, v4);
  return sub_222589D58;
}

void sub_222589D58(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_22258A85C(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    sub_22258A8C0((v2 + 40), v3 + 16);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    sub_22258A8C0(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_222589E14()
{
  sub_222590948();
  type metadata accessor for PlaceholderRecord(0);
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590338();
  return sub_222590968();
}

uint64_t sub_222589EF8(uint64_t a1, uint64_t a2)
{
  sub_222590948();
  swift_getWitnessTable();
  sub_222590338();
  return sub_222590968();
}

uint64_t sub_222589F60()
{
  type metadata accessor for PlaceholderRecord(0);
  sub_22258A970(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  return sub_222590328();
}

uint64_t sub_222589FDC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t sub_22258A1F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2225908C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F60 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F80 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593FA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2225908C8();

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

uint64_t sub_22258A40C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFF8, &qword_222591F38);
  sub_2225903B8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222591CA0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F000, &qword_222591F68);
  sub_2225903F8();
  *(swift_allocObject() + 16) = xmmword_222591200;
  sub_2225903E8();
  sub_222590408();
  swift_allocObject();
  sub_222590418();
  sub_22258A970(&qword_28130F808, MEMORY[0x277CDD5E8], MEMORY[0x277CDD5E0]);
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  swift_getKeyPath();
  sub_2225903A8();
  return v0;
}

uint64_t sub_22258A85C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22258A8C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
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

unint64_t sub_22258A91C()
{
  result = qword_27D00F018;
  if (!qword_27D00F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F018);
  }

  return result;
}

uint64_t sub_22258A970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PlaceholderRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceholderRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22258AB28()
{
  result = qword_27D00F028;
  if (!qword_27D00F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F028);
  }

  return result;
}

unint64_t sub_22258AB80()
{
  result = qword_27D00F030;
  if (!qword_27D00F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F030);
  }

  return result;
}

unint64_t sub_22258ABD8()
{
  result = qword_27D00F038;
  if (!qword_27D00F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F038);
  }

  return result;
}

uint64_t *sub_22258AC2C()
{
  v1 = sub_22258FDB8();
  v25 = *(v1 - 8);
  v2 = v25;
  v3 = MEMORY[0x28223BE20](v1);
  v26 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v28 = &v20 - v5;
  v7 = sub_22258FDD8();
  v9 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
  v21 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);
  v22 = v10;
  v27 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform);
  v11 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
  v23 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);
  v24 = v11;
  v29 = *(v2 + 16);
  v29(v6, v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v1);
  v12 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
  v30 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);
  v31 = v12;
  v13 = type metadata accessor for PlaceholderRecord(0);
  v14 = swift_allocObject();
  v14[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F008, &qword_2225924E0);
  v15 = sub_22258EEE4(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  v32 = v13;
  v33 = v13;
  v34 = v15;
  v35 = v15;
  v14[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v14 + 2);
  sub_222590308();
  sub_22258FE38();
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  swift_getKeyPath();
  v32 = v7;
  v33 = v9;
  sub_222590238();

  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  swift_getKeyPath();
  v32 = v22;
  v33 = v21;
  sub_222590238();

  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  swift_getKeyPath();
  v32 = v24;
  v33 = v23;
  sub_222590238();

  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  swift_getKeyPath();
  LODWORD(v32) = v27;
  sub_222590238();

  v16 = v26;
  v17 = v28;
  v29(v26, v28, v1);
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  swift_getKeyPath();
  sub_22258EEE4(&qword_2813101B0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_222590238();

  v18 = *(v25 + 8);
  v18(v16, v1);
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  swift_getKeyPath();
  v32 = v31;
  v33 = v30;
  sub_222590238();

  v18(v17, v1);
  return v14;
}

uint64_t SyncItem.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);

  return v1;
}

uint64_t SyncItem.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);

  return v1;
}

uint64_t sub_22258B1A8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t SyncItem.deviceIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);

  return v1;
}

uint64_t SyncItem.launchPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
  sub_22258556C(v1, *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8));
  return v1;
}

void *createLaunchPayloadFor(bundleID:)(uint64_t a1, uint64_t a2)
{
  v11[9] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F040, &qword_222592170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  *(inited + 32) = 0x4449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_22258C63C(inited);
  swift_setDeallocating();
  sub_22256EA7C(inited + 32, &qword_27D00F048, &qword_222592178);
  v6 = sub_222590448();

  v11[0] = 0;
  v7 = [v4 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:v11];

  v8 = v11[0];
  if (v7)
  {
    v9 = sub_22258FD78();
  }

  else
  {
    v9 = v8;
    sub_22258FC68();

    swift_willThrow();
  }

  return v9;
}

unint64_t sub_22258B43C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x615068636E75616CLL;
  }

  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
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

uint64_t sub_22258B534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22258EBB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22258B568(uint64_t a1)
{
  v2 = sub_22258C750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22258B5A4(uint64_t a1)
{
  v2 = sub_22258C750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncItem.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SyncItem.init(from:)(a1);
  return v2;
}

uint64_t SyncItem.init(from:)(void *a1)
{
  v2 = sub_22258FDB8();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22258FDF8();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F050, &qword_222592180);
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v32 - v8;
  v10 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_22258C750();
  v11 = v37;
  sub_222590978();
  if (v11)
  {
    v12 = v38;
    type metadata accessor for SyncItem(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v4;
    v14 = v7;
    v37 = v2;
    LOBYTE(v40) = 0;
    sub_22258EEE4(&qword_27D00F058, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v15 = v35;
    v16 = v36;
    sub_222590868();
    v12 = v38;
    (*(v34 + 32))(v38 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v15, v5);
    LOBYTE(v40) = 1;
    v17 = sub_222590858();
    v18 = (v12 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    *v18 = v17;
    v18[1] = v19;
    LOBYTE(v40) = 2;
    v35 = 0;
    v20 = sub_222590858();
    v21 = (v12 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v40) = 3;
    v23 = sub_222590878();
    v32 = v5;
    *(v12 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform) = v23;
    LOBYTE(v40) = 4;
    sub_22258EEE4(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v24 = v37;
    sub_222590868();
    (*(v33 + 32))(v12 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v13, v24);
    LOBYTE(v40) = 5;
    v25 = sub_222590858();
    v26 = (v12 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    *v26 = v25;
    v26[1] = v27;
    v42 = 6;
    sub_22258C7F0();
    sub_222590848();
    (*(v14 + 8))(v9, v16);
    v29 = v40;
    v30 = v41;
    if (v41 >> 60 == 15)
    {
      v29 = 0;
      v30 = 0xC000000000000000;
    }

    v31 = (v12 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    *v31 = v29;
    v31[1] = v30;
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v12;
}

uint64_t sub_22258BCC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F068, &qword_222592188);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22258C750();
  sub_222590988();
  LOBYTE(v12) = 0;
  sub_22258FDF8();
  sub_22258EEE4(&qword_281310198, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222590898();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_222590888();
    LOBYTE(v12) = 2;
    sub_222590888();
    LOBYTE(v12) = 3;
    sub_2225908A8();
    LOBYTE(v12) = 4;
    sub_22258FDB8();
    sub_22258EEE4(&qword_2813101B0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_222590898();
    LOBYTE(v12) = 5;
    sub_222590888();
    v9 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8);
    v12 = *(v3 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    v13 = v9;
    v11[15] = 6;
    sub_22258556C(v12, v9);
    sub_22258C844();
    sub_222590898();
    sub_2225855C0(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SyncItem.deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier;
  v2 = sub_22258FDF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate;
  v4 = sub_22258FDB8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_2225855C0(*(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload), *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8));
  return v0;
}

uint64_t SyncItem.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier;
  v2 = sub_22258FDF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate;
  v4 = sub_22258FDB8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_2225855C0(*(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload), *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_22258C22C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SyncItem(0);
  v5 = swift_allocObject();
  result = SyncItem.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t SyncItem.description.getter()
{
  v1 = v0;
  sub_222590758();
  MEMORY[0x223DB9A60](0xD000000000000015, 0x8000000222594000);
  sub_22258FDF8();
  sub_22258EEE4(&qword_281310180, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v2 = sub_2225908B8();
  MEMORY[0x223DB9A60](v2);

  MEMORY[0x223DB9A60](0xD000000000000013, 0x8000000222593FE0);
  MEMORY[0x223DB9A60](*(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier), *(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8));
  MEMORY[0x223DB9A60](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  MEMORY[0x223DB9A60](*(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version), *(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8));
  MEMORY[0x223DB9A60](0x6F6674616C70202CLL, 0xEB000000003D6D72);
  v6 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform);
  v3 = sub_2225908B8();
  MEMORY[0x223DB9A60](v3);

  MEMORY[0x223DB9A60](0x6D207473616C202CLL, 0xEB000000003D646FLL);
  sub_22258FDB8();
  sub_22258EEE4(&qword_2813101A0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v4 = sub_2225908B8();
  MEMORY[0x223DB9A60](v4);

  MEMORY[0x223DB9A60](0x656369766564202CLL, 0xE90000000000003DLL);
  MEMORY[0x223DB9A60](*(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier), *(v1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8));
  return HIDWORD(v6);
}

unint64_t sub_22258C544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F090, &qword_2225923B0);
    v3 = sub_222590828();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_222585DE8(v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22258C63C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F088, &qword_2225923A8);
    v3 = sub_222590828();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_222585E7C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22258C750()
{
  result = qword_28130FEE0;
  if (!qword_28130FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130FEE0);
  }

  return result;
}

uint64_t type metadata accessor for SyncItem(uint64_t a1)
{
  result = qword_28130FEB8;
  if (!qword_28130FEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22258C7F0()
{
  result = qword_27D00F060;
  if (!qword_27D00F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F060);
  }

  return result;
}

unint64_t sub_22258C844()
{
  result = qword_2813101B8;
  if (!qword_2813101B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101B8);
  }

  return result;
}

uint64_t sub_22258C8A0(uint64_t a1)
{
  result = sub_22258FDF8();
  if (v2 <= 0x3F)
  {
    result = sub_22258FDB8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22258CB58()
{
  result = qword_27D00F070;
  if (!qword_27D00F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00F070);
  }

  return result;
}

unint64_t sub_22258CBB0()
{
  result = qword_28130FED0;
  if (!qword_28130FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130FED0);
  }

  return result;
}

unint64_t sub_22258CC08()
{
  result = qword_28130FED8;
  if (!qword_28130FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130FED8);
  }

  return result;
}

unint64_t sub_22258CC5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F078, &qword_222592388);
    v3 = sub_222590828();
    v4 = a1 + 32;

    while (1)
    {
      sub_22258EE7C(v4, &v13, &qword_27D00EEC0, &unk_222592390);
      v5 = v13;
      v6 = v14;
      result = sub_222585E7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22256EADC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22258CD8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0B8, &qword_2225923E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0C0, &qword_2225923E8);
    v7 = sub_222590828();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22258EE7C(v9, v5, &qword_27D00F0B8, &qword_2225923E0);
      result = sub_222585EF4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_222590038();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_22258FDF8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22258CFAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0B0, &unk_2225923D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF90, &qword_222591BF8);
    v7 = sub_222590828();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22258EE7C(v9, v5, &qword_27D00F0B0, &unk_2225923D0);
      result = sub_222585FC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22258FDF8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22258D194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF30, &qword_222591B90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F080, &qword_2225923A0);
    v7 = sub_222590828();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_22258EE7C(v9, v5, &qword_27D00EF30, &qword_222591B90);
      v11 = *v5;
      result = sub_22258609C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_222590078();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22258D370(uint64_t a1)
{
  v32 = sub_22258FDB8();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v26[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26[-v4];
  v36 = a1;
  swift_getKeyPath();
  sub_22258EEE4(&qword_281310170, type metadata accessor for PlaceholderRecord, &unk_222591EAC);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22258EEE4(&qword_281310168, type metadata accessor for PlaceholderRecord, &unk_222591EC8);
  sub_222590348();

  sub_22258FDC8();

  v6 = sub_22258FDF8();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 48);
  v31 = v5;
  result = v7(v5, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v9 = v36;
    v10 = v37;
    v36 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v28 = v37;
    v29 = v36;
    v36 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v27 = v36;
    v36 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_22258EEE4(&qword_2813101A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v11 = v35;
    sub_222590348();

    v36 = a1;
    swift_getKeyPath();
    sub_22258FE28();

    swift_getKeyPath();
    sub_222590348();

    v12 = v36;
    v13 = v37;
    type metadata accessor for SyncItem(0);
    v14 = swift_allocObject();
    v15 = v31;
    (*(v33 + 16))(v14 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v31, v34);
    v16 = (v14 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    *v16 = v9;
    v16[1] = v10;
    v17 = (v14 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v18 = v28;
    *v17 = v29;
    v17[1] = v18;
    *(v14 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform) = v27;
    v19 = v30;
    v20 = v32;
    (*(v30 + 16))(v14 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v11, v32);
    v21 = (v14 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    *v21 = v12;
    v21[1] = v13;

    v29 = v9;
    v22 = createLaunchPayloadFor(bundleID:)(v9, v10);
    v24 = v23;

    (*(v19 + 8))(v35, v20);
    (*(v33 + 8))(v15, v34);
    v25 = (v14 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    *v25 = v22;
    v25[1] = v24;
    return v14;
  }

  return result;
}

uint64_t sub_22258DAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0A8, &qword_2225923C8);
    v3 = sub_222590738();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_2225904C8();
      sub_222590948();
      v27 = v7;
      sub_2225904F8();
      v8 = sub_222590968();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_2225904C8();
        v18 = v17;
        if (v16 == sub_2225904C8() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2225908C8();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22258DCCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = a7;
  v86 = a8;
  v91 = a6;
  v98 = a5;
  v12 = sub_22258FDB8();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x28223BE20](v12);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v81 - v15;
  v17 = sub_22258FDF8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v81 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v81 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v81 - v26;
  sub_22258FDC8();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v83 = *(v18 + 32);
    v83(v27, v16, v17);
    v93 = a1;
    v94 = a2;
    v99 = a1;
    v100 = a2;

    v88 = a3;
    v92 = a4;
    MEMORY[0x223DB9A60](a3, a4);
    v29 = v18;
    v31 = v99;
    v30 = v100;
    LODWORD(v99) = v98;
    v32 = sub_2225908B8();
    v34 = v33;
    v99 = v31;
    v100 = v30;

    MEMORY[0x223DB9A60](v32, v34);

    sub_22258FFC8();
    v89 = v29;
    v90 = v27;

    v84 = *(v29 + 8);
    v84(v27, v17);
    v83(v27, v25, v17);
    v35 = v95;
    v36 = v29;
    v37 = v96;
    v38 = v27;
    v39 = v97;
    v82 = 0;
    v40 = *(v36 + 16);
    v40(v97, v38, v17);
    v41 = v17;
    v42 = *(v35 + 16);
    v43 = v87;
    v44 = v91;
    v42(v87, v91, v37);
    type metadata accessor for SyncItem(0);
    v45 = swift_allocObject();
    v46 = v39;
    v47 = v45;
    v83 = v41;
    v40((v45 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier), v46, v41);
    v48 = (v47 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v50 = v93;
    v49 = v94;
    *v48 = v93;
    v48[1] = v49;
    v51 = (v47 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v52 = v92;
    *v51 = v88;
    v51[1] = v52;
    *(v47 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_platform) = v98;
    v42((v47 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate), v43, v37);
    v53 = v49;
    v54 = (v47 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    v55 = v86;
    *v54 = v85;
    v54[1] = v55;

    v56 = v82;
    v57 = createLaunchPayloadFor(bundleID:)(v50, v49);
    if (v56)
    {
      if (qword_28130F910 != -1)
      {
        swift_once();
      }

      v59 = sub_2225901D8();
      __swift_project_value_buffer(v59, qword_28130F918);

      v60 = sub_2225901B8();
      v61 = sub_222590668();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = v53;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v99 = v64;
        *v63 = 136446210;
        v65 = sub_222580F0C(v93, v62, &v99);
        v66 = v43;
        v67 = v95;
        v68 = v65;

        *(v63 + 4) = v68;
        _os_log_impl(&dword_222567000, v60, v61, "Error creating launch payload for %{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x223DBA5D0](v64, -1, -1);
        MEMORY[0x223DBA5D0](v63, -1, -1);

        v69 = *(v67 + 8);
        v70 = v96;
        v69(v91, v96);
        v69(v66, v70);
      }

      else
      {

        v76 = v96;
        v77 = *(v95 + 8);
        v77(v44, v96);
        v77(v43, v76);
      }

      v78 = v83;
      v79 = v84;
      v84(v97, v83);
      v79(v90, v78);
      v71 = 0;
      v72 = 0xC000000000000000;
    }

    else
    {
      v71 = v57;
      v72 = v58;

      v73 = *(v35 + 8);
      v73(v44, v37);
      v73(v43, v37);
      v74 = v83;
      v75 = v84;
      v84(v97, v83);
      v75(v90, v74);
    }

    v80 = (v47 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_launchPayload);
    *v80 = v71;
    v80[1] = v72;
    return v47;
  }

  return result;
}

uint64_t sub_22258E62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v56 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F098, &qword_2225923B8);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v47 - v8;
  v9 = sub_22258FD68();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22258FBB8();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22258FDB8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v21 = sub_222580584(a1, a2, 0);
  if (v4)
  {

    return v9;
  }

  v22 = v21;
  v50 = v9;
  v51 = a2;
  v47 = v17;
  v48 = v11;
  v52 = v13;
  v53 = v14;
  sub_22258FD88();
  v23 = v22;
  v24 = [v23 URL];
  v25 = v57;
  sub_22258FD18();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0A0, &qword_2225923C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  v27 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v28 = v27;
  sub_22258DAD8(inited);
  swift_setDeallocating();
  sub_22258EE20(inited + 32);
  sub_22258FCB8();
  v49 = 0;
  (v58[1])(v25, v50);

  v29 = v55;
  sub_22258FBA8();
  v31 = v52;
  v30 = v53;
  if ((*(v53 + 48))(v29, 1, v52) == 1)
  {
    sub_22256EA7C(v29, &qword_27D00F098, &qword_2225923B8);
  }

  else
  {
    (*(v30 + 8))(v19, v31);
    (*(v30 + 32))(v19, v29, v31);
  }

  v32 = v56;
  v33 = [v23 bundleIdentifier];
  result = v51;
  if (v33)
  {
    v35 = v19;

    v36 = sub_2225904C8();
    v57 = v37;
    v58 = v36;

    v38 = v23;
    v39 = [v23 shortVersionString];
    if (v39)
    {
      v40 = v39;
      v41 = sub_2225904C8();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v44 = [v38 platform];

    v45 = v53;
    v46 = v47;
    (*(v53 + 16))(v47, v35, v31);
    v9 = sub_22258DCCC(v58, v57, v41, v43, v44, v46, v32, v60);

    (*(v54 + 8))(v59, v48);
    (*(v45 + 8))(v35, v31);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_22258EBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2225908C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F60 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_2225908C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593F80 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222593FA0 == a2 || (sub_2225908C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x615068636E75616CLL && a2 == 0xED000064616F6C79)
  {

    return 6;
  }

  else
  {
    v6 = sub_2225908C8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_22258EE20(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22258EE7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22258EEE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22258EF30()
{
  v50 = sub_2225900D8();
  v54 = *(v50 - 8);
  v0 = MEMORY[0x28223BE20](v50);
  v49 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  *&v53 = &v45 - v2;
  v3 = sub_22258FEB8();
  v46 = *(v3 - 8);
  *&v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222590148();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222590108();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2225900B8();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_222590498();
  v17 = [v15 fileExistsAtPath_];

  if (v17)
  {
    sub_22258FF88();
    v54 = 0;
    *&v18 = 138412546;
    v53 = v18;
    swift_allocObject();
    v19 = sub_22258FF28();

    sub_22258FF78();

    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v28 = sub_2225901D8();
    __swift_project_value_buffer(v28, qword_28130F918);

    v29 = sub_2225901B8();
    v30 = sub_222590658();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v19;
      v57[0] = v32;
      *v31 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0D8, &qword_222592500);
      v33 = sub_2225904D8();
      v35 = sub_222580F0C(v33, v34, v57);

      *(v31 + 4) = v35;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223DBA5D0](v32, -1, -1);
      MEMORY[0x223DBA5D0](v31, -1, -1);
    }
  }

  else
  {
    (*(v10 + 104))(v12, *MEMORY[0x277D468A0], v9);
    (*(v6 + 104))(v8, *MEMORY[0x277D46900], v5);
    if (qword_28130FA08 != -1)
    {
      swift_once();
    }

    v20 = v47;
    v21 = __swift_project_value_buffer(v47, qword_281310230);
    (*(v46 + 16))(v48, v21, v20);
    sub_2225900A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0C8, &qword_2225924F0);
    sub_2225900F8();
    v22 = swift_allocObject();
    v47 = xmmword_222591200;
    *(v22 + 16) = xmmword_222591200;
    sub_22258FE98();
    sub_2225900E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00F0D0, &qword_2225924F8);
    v23 = v51;
    v24 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v47;
    (*(v23 + 16))(v25 + v24, v55, v52);
    v26 = v53;
    sub_2225900C8();
    v27 = v50;
    (*(v54 + 16))(v49, v26, v50);
    sub_22258CD8C(MEMORY[0x277D84F90]);
    sub_22258FF88();
    swift_allocObject();
    v19 = sub_22258FEE8();
    sub_22258FF78();
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v36 = sub_2225901D8();
    __swift_project_value_buffer(v36, qword_28130F918);

    v37 = sub_2225901B8();
    v38 = sub_222590658();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v56 = v19;
      v57[0] = v40;
      *v39 = 136315138;

      v41 = sub_2225904D8();
      v43 = sub_222580F0C(v41, v42, v57);

      *(v39 + 4) = v43;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x223DBA5D0](v40, -1, -1);
      MEMORY[0x223DBA5D0](v39, -1, -1);
    }

    (*(v54 + 8))(v53, v27);
    (*(v51 + 8))(v55, v52);
  }

  return v19;
}