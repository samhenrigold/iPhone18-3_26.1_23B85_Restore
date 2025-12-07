void *sub_252CAAD54(uint64_t a1, void *a2)
{
  v3 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service(0);
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    sub_252E373E4();
    a1 = v60;
    v4 = v61;
    v5 = v62;
    v6 = v63;
    v7 = v64;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v52 = v11;
  v53 = v4;
  while (a1 < 0)
  {
    v16 = sub_252E37904();
    if (!v16 || (v58 = v16, type metadata accessor for Service(0), swift_dynamicCast(), v14 = v6, v15 = v7, (v56 = v59) == 0))
    {
LABEL_42:
      sub_25297DEB0(a1);
      return v3;
    }

LABEL_19:
    v55 = v15;
    v59 = MEMORY[0x277D84F90];
    if ([a2 taskType] == 2 || (v17 = objc_msgSend(a2, sel_taskType), v18 = MEMORY[0x277D84F90], v17 == 3))
    {
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v54 = v3;
      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_2814B0A78);
      v20 = a2;
      v21 = sub_252E36AC4();
      v22 = sub_252E374C4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v58 = v24;
        *v23 = 136315138;
        v25 = HomeAttributeType.description.getter([v20 attribute]);
        v27 = a1;
        v28 = sub_252BE2CE0(v25, v26, &v58);

        *(v23 + 4) = v28;
        a1 = v27;
        _os_log_impl(&dword_252917000, v21, v22, "Appending get %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x2530AED00](v24, -1, -1);
        MEMORY[0x2530AED00](v23, -1, -1);
      }

      v29 = [v20 attribute];
      v30 = type metadata accessor for HomeUserTask();
      v31 = objc_allocWithZone(v30);
      v32 = sub_252E36F04();
      v33 = [v31 initWithIdentifier:0 displayString:v32];

      v34 = v33;
      [v34 setTaskType_];
      [v34 setAttribute_];
      [v34 setValue_];

      MEMORY[0x2530AD700]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v18 = v59;
      v3 = v54;
      if ([v20 taskType] == 3 && objc_msgSend(v20, sel_attribute) == 2)
      {
        v35 = objc_allocWithZone(v30);
        v36 = sub_252E36F04();
        v37 = [v35 initWithIdentifier:0 displayString:v36];

        v38 = v37;
        [v38 setTaskType_];
        [v38 setAttribute_];
        [v38 setValue_];

        MEMORY[0x2530AD700]();
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v18 = v59;
        v3 = v54;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v3;
    v40 = sub_252A454C0(v56);
    v42 = v3[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_44;
    }

    v46 = v41;
    if (v3[3] < v45)
    {
      sub_252E00638(v45, isUniquelyReferenced_nonNull_native);
      v40 = sub_252A454C0(v56);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_46;
      }

LABEL_37:
      v3 = v58;
      if (v46)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v50 = v40;
    sub_252E03EC4();
    v40 = v50;
    v3 = v58;
    if (v46)
    {
LABEL_8:
      *(v3[7] + 8 * v40) = v18;

      goto LABEL_9;
    }

LABEL_38:
    v3[(v40 >> 6) + 8] |= 1 << v40;
    *(v3[6] + 8 * v40) = v56;
    *(v3[7] + 8 * v40) = v18;
    v48 = v3[2];
    v44 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v44)
    {
      goto LABEL_45;
    }

    v3[2] = v49;
LABEL_9:
    v6 = v14;
    v7 = v55;
    v11 = v52;
    v4 = v53;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_15:
    v15 = (v13 - 1) & v13;

    if (!v56)
    {
      goto LABEL_42;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_42;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  type metadata accessor for Service(0);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

unint64_t *sub_252CAB3E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);

    v25[0] = sub_252E32E24();
    v25[1] = v14;
    MEMORY[0x28223BE20](v25[0]);
    v19[2] = v25;
    v15 = v26;
    v16 = sub_2529ED970(sub_25296A724, v19, v23);
    v26 = v15;

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        return sub_252C53048(v21, v20, v22, v18);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CAB5B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v36[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = v3;
    v29 = &v29;
    v30 = v7;
    MEMORY[0x28223BE20](v9);
    v31 = &v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v8);
    v32 = 0;
    v33 = v4;
    v10 = 0;
    v12 = *(v4 + 56);
    v4 += 56;
    v11 = v12;
    v13 = 1 << *(v4 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v7 = v17 | (v10 << 6);

      v20 = sub_252E32E24();
      v8 = v21;
      v3 = &v29;
      v36[0] = v20;
      v36[1] = v21;
      MEMORY[0x28223BE20](v20);
      *(&v29 - 2) = v36;
      v22 = v35;
      v23 = sub_2529ED970(sub_25296A724, (&v29 - 4), v34);
      v35 = v22;

      if ((v23 & 1) == 0)
      {
        *&v31[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_252C53048(v31, v30, v32, v33);

          return v25;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v4 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v25 = sub_252CA8BE4(v27, v7, v4, v28, sub_252CAB3E8);

  MEMORY[0x2530AED00](v27, -1, -1);

  return v25;
}

uint64_t sub_252CAB8B0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_252CAB5B4(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v23 = MEMORY[0x277D84FA0];

  sub_252E37874();
  v4 = sub_252E37904();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Service(0);
    v6 = v5;
    do
    {
      v22[0] = v6;
      swift_dynamicCast();
      v22[0] = sub_252E32E24();
      v22[1] = v7;
      MEMORY[0x28223BE20](v22[0]);
      v21[2] = v22;
      v8 = sub_2529ED970(sub_25296A724, v21, a2);

      v9 = v22[9];
      if (v8)
      {
      }

      else
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_252DAAAAC(v10 + 1);
        }

        v3 = v23;
        sub_252E37EC4();
        sub_252E32E84();
        sub_252A19940(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_252E36E94();
        MEMORY[0x2530AE390](*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

        sub_252E37044();

        result = sub_252E37F14();
        v12 = v3 + 56;
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v3 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v3 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *(v12 + 8 * v15);
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v3 + 48) + 8 * v16) = v9;
        ++*(v3 + 16);
      }

      v6 = sub_252E37904();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_252CABBD8(void *a1, void *a2, id a3)
{
  v4 = [a3 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();

    v56 = 0x8000000252E69700;
    v8 = a3;
    v9 = [v8 description];
    v10 = sub_252E36F34();
    v12 = v11;

    MEMORY[0x2530AD570](v10, v12);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v6 = MEMORY[0x277D84F90];
  }

  v55 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v14 = 0;
    v48 = v6 & 0xFFFFFFFFFFFFFF8;
    v49 = v6 & 0xC000000000000001;
    v45 = v6;
    v46 = i;
    v47 = v6 + 32;
    while (1)
    {
      if (v49)
      {
        v15 = MEMORY[0x2530ADF00](v14, v45);
      }

      else
      {
        if (v14 >= *(v48 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(v47 + 8 * v14);
      }

      v6 = v15;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      v17 = [v15 taskResponses];
      if (v17)
      {
        v18 = v17;
        type metadata accessor for HomeUserTaskResponse();
        v19 = sub_252E37264();

        if (v19 >> 62)
        {
          v20 = sub_252E378C4();
          v50 = v6;
          if (v20)
          {
LABEL_17:
            v21 = 0;
            v6 = v19 & 0xC000000000000001;
            while (1)
            {
              if (v6)
              {
                v22 = MEMORY[0x2530ADF00](v21, v19);
              }

              else
              {
                if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v22 = *(v19 + 8 * v21 + 32);
              }

              v23 = v22;
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              v54 = v22;
              v25 = sub_252DA5D40(&v54, a2, a1, 0, 1);

              if (v25)
              {

                sub_252E37A94();
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_30;
              }

              ++v21;
              if (v24 == v20)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
LABEL_33:
            __break(1u);
            break;
          }
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v50 = v6;
          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_29:

LABEL_30:
        i = v46;
        if (v14 == v46)
        {
LABEL_31:
          v26 = v55;
          goto LABEL_38;
        }
      }

      else
      {

        if (v14 == i)
        {
          goto LABEL_31;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_38:

  if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_59;
  }

  for (j = *(v26 + 16); j; j = sub_252E378C4())
  {
    v28 = v26 & 0xC000000000000001;
    v53 = MEMORY[0x277D84F90];
    v29 = 0;
    if ((v26 & 0xC000000000000001) != 0)
    {
LABEL_56:
      v30 = MEMORY[0x2530ADF00](v29, v26);
      goto LABEL_47;
    }

    while (v29 < *(v26 + 16))
    {
      v30 = *(v26 + 8 * v29 + 32);
LABEL_47:
      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        break;
      }

      v33 = [v30 entity];
      if (v33 && (v34 = v33, v35 = [v33 entityIdentifier], v34, v35))
      {
        v36 = sub_252E36F34();
        v38 = v37;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_2529F7A80(0, *(v53 + 2) + 1, 1, v53);
        }

        v40 = *(v53 + 2);
        v39 = *(v53 + 3);
        if (v40 >= v39 >> 1)
        {
          v53 = sub_2529F7A80((v39 > 1), v40 + 1, 1, v53);
        }

        *(v53 + 2) = v40 + 1;
        v41 = &v53[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        if (v32 == j)
        {
          goto LABEL_61;
        }

        v29 = v32;
        if (v28)
        {
          goto LABEL_56;
        }
      }

      else
      {

        ++v29;
        if (v32 == j)
        {
          goto LABEL_61;
        }

        if (v28)
        {
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_59:
    ;
  }

  v53 = MEMORY[0x277D84F90];
LABEL_61:

  v43 = sub_252CAB8B0(v42, v53);

  return v43;
}

uint64_t sub_252CAC120(void *a1, void *a2)
{
  v4 = sub_252CA9EE8(a1);
  if ([a2 taskType] != 3 || objc_msgSend(a2, sel_attribute) != 2)
  {
    return v4;
  }

  v5 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setBoolValue_];
  [v8 setType_];

  v9 = sub_252CABBD8(v8, 0x1B, a1);

  return v9;
}

unint64_t sub_252CAC228(uint64_t a1, unint64_t a2, void *a3)
{
  v91 = sub_252CC6468(MEMORY[0x277D84F90]);
  v89 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service(0);
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    sub_252E373E4();
    a1 = v100;
    v4 = v101;
    v5 = v102;
    v6 = v103;
    v7 = v104;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v93 = a1;
  v94 = v4;
  v92 = v11;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  while (2)
  {
    v16 = sub_252E37904();
    if (!v16 || (v97 = v16, type metadata accessor for Service(0), swift_dynamicCast(), v15 = v98, v14 = v6, v95 = v7, !v98))
    {
LABEL_69:
      sub_25297DEB0(a1);
      if (qword_27F53F498 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    while (1)
    {
      v98 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
        break;
      }

      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_20;
      }

LABEL_9:

      v6 = v14;
      v4 = v94;
      v7 = v95;
      v11 = v92;
      a1 = v93;
      if (v93 < 0)
      {
        goto LABEL_16;
      }

LABEL_10:
      v12 = v6;
      v13 = v7;
      v14 = v6;
      if (!v7)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_69;
          }

          v13 = *(v4 + 8 * v14);
          ++v12;
          if (v13)
          {
            goto LABEL_14;
          }
        }

LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
LABEL_70:
        v82 = sub_252E36AD4();
        __swift_project_value_buffer(v82, qword_27F544C70);
        v98 = 0;
        v99 = 0xE000000000000000;
        sub_252E379F4();

        v98 = 0xD00000000000001BLL;
        v99 = 0x8000000252E915B0;
        sub_252CA888C(v89);
        v83 = MEMORY[0x2530AD730]();
        v85 = v84;

        MEMORY[0x2530AD570](v83, v85);

        sub_252CC3D90(v98, v99, 0xD000000000000080, 0x8000000252E91470);

        return v91;
      }

LABEL_14:
      v95 = (v13 - 1) & v13;
      v15 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

      if (!v15)
      {
        goto LABEL_69;
      }
    }

    v17 = sub_252E378C4();
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_20:
    v18 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2530ADF00](v18, a2);
      }

      else
      {
        if (v18 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v19 = *(a2 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v22 = [v19 entity];
      if (!v22 || (v23 = v22, v24 = [v22 entityIdentifier], v23, !v24))
      {
        sub_252E32E24();
LABEL_22:

        goto LABEL_23;
      }

      v25 = sub_252E36F34();
      v27 = v26;

      v28 = sub_252E32E24();
      if (!v27)
      {
        goto LABEL_22;
      }

      if (v25 == v28 && v27 == v29)
      {
        break;
      }

      v31 = sub_252E37DB4();

      if (v31)
      {
        goto LABEL_39;
      }

LABEL_23:

      ++v18;
      if (v21 == v17)
      {
        goto LABEL_9;
      }
    }

LABEL_39:
    result = sub_252DA0F40([a3 attribute], 4);
    if (!(result >> 62))
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

LABEL_60:

LABEL_61:
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v72 = sub_252E36AD4();
      __swift_project_value_buffer(v72, qword_27F544C70);

      v73 = sub_252E36AC4();
      v74 = sub_252E374D4();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v97 = v76;
        *v75 = 136315138;

        v77 = sub_252CDBB90();
        v79 = v78;

        v80 = sub_252BE2CE0(v77, v79, &v97);

        *(v75 + 4) = v80;
        _os_log_impl(&dword_252917000, v73, v74, "Couldn't find expected BOOLean value. Ignoring creating delta value command for %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x2530AED00](v76, -1, -1);
        MEMORY[0x2530AED00](v75, -1, -1);
      }

      v60 = v91;
      sub_2529515FC(8, 12, 0xD000000000000010, 0x8000000252E915D0);
      v59 = MEMORY[0x277D84F90];
      goto LABEL_66;
    }

    v70 = result;
    v71 = sub_252E378C4();
    result = v70;
    if (!v71)
    {
      goto LABEL_60;
    }

LABEL_41:
    if ((result & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x2530ADF00](0);
LABEL_44:
      v34 = v33;

      v35 = [v34 userTask];

      if (!v35)
      {
        goto LABEL_61;
      }

      v36 = COERCE_DOUBLE(sub_2529C7370());
      v38 = v37;
      v40 = v39;

      if (v38)
      {
        goto LABEL_61;
      }

      v41 = [a3 value];
      if (!v41)
      {
        goto LABEL_61;
      }

      v42 = v36;
      v43 = v41;
      [v41 doubleValue];
      v45 = v44;

      v46 = [a3 taskType];
      v47 = -v45;
      if (v46 != 3)
      {
        v47 = v45;
      }

      v48 = v47 + v42;
      v87 = [a3 attribute];
      v86 = type metadata accessor for HomeAttributeValue();
      v49 = objc_allocWithZone(v86);
      v50 = sub_252E36F04();
      v51 = [v49 initWithIdentifier:0 displayString:v50];

      v52 = v51;
      [v52 setDoubleValue_];
      [v52 setUnit_];
      [v52 setType_];

      v53 = type metadata accessor for HomeUserTask();
      v54 = objc_allocWithZone(v53);
      v55 = sub_252E36F04();
      v56 = [v54 initWithIdentifier:0 displayString:v55];

      v57 = v56;
      [v57 setTaskType_];
      [v57 setAttribute_];
      [v57 setValue_];

      v58 = v57;
      MEMORY[0x2530AD700]();
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v59 = v98;
      v60 = v91;
      if ([a3 attribute] == 2 && v45 != 0.0)
      {
        v88 = v58;
        v61 = objc_allocWithZone(v86);
        v62 = sub_252E36F04();
        v63 = [v61 initWithIdentifier:0 displayString:v62];

        v64 = v63;
        [v64 setBoolValue_];
        [v64 setType_];

        v65 = objc_allocWithZone(v53);
        v66 = sub_252E36F04();
        v67 = [v65 initWithIdentifier:0 displayString:v66];

        v68 = v67;
        [v68 setTaskType_];
        [v68 setAttribute_];
        [v68 setValue_];

        v69 = v68;
        MEMORY[0x2530AD700]();
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v59 = v98;
      }

      else
      {
      }

LABEL_66:
      a1 = v93;
      v4 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v60;
      sub_2529FB234(v59, v15, isUniquelyReferenced_nonNull_native);

      v91 = v97;
      v6 = v14;
      v7 = v95;
      v11 = v92;
      if ((v93 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(result + 32);
    goto LABEL_44;
  }

  __break(1u);
  return result;
}

void *sub_252CACCC8(uint64_t a1, void *a2)
{
  v4 = sub_252CC6468(MEMORY[0x277D84F90]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service(0);
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    sub_252E373E4();
    a1 = v126;
    v5 = v127;
    v6 = v128;
    v7 = v129;
    v8 = v130;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v115 = v5;
  v12 = (v6 + 64) >> 6;
  v122 = v12;
  v123 = a1;
  v121 = a2;
  while (a1 < 0)
  {
    if (!sub_252E37904() || (type metadata accessor for Service(0), swift_dynamicCast(), v17 = v124, v15 = v7, v16 = v8, !v124))
    {
LABEL_77:
      sub_25297DEB0(a1);
      return v4;
    }

LABEL_19:
    v125 = MEMORY[0x277D84F90];
    if ([a2 attribute] == 2 && objc_msgSend(a2, sel_taskType) == 1)
    {
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v18 = sub_252E36AD4();
      __swift_project_value_buffer(v18, qword_27F544CB8);
      sub_252E379F4();

      [v121 value];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
      v19 = sub_252E36F94();
      MEMORY[0x2530AD570](v19);

      sub_252CC3D90(0xD000000000000012, 0x8000000252E915F0, 0xD000000000000080, 0x8000000252E91470);

      v20 = [v121 value];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 type];

        v23 = v22 == 5;
      }

      else
      {
        v23 = 0;
      }

      v76 = &off_279711000;
      v77 = [v121 value];
      v5 = v115;
      v120 = v16;
      v118 = v23;
      if (v77 && ((v78 = v77, [v77 doubleValue], v80 = v79, v78, v80 != 0.0) ? (v81 = 1) : (v81 = v23), (v81 & 1) == 0))
      {
        v83 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v84 = sub_252E36F04();
        v85 = [v83 initWithIdentifier:0 displayString:v84];

        v86 = v85;
        [v86 setBoolValue_];
        [v86 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

        v87 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v88 = sub_252E36F04();
        v89 = [v87 initWithIdentifier:0 displayString:v88];

        v90 = v89;
        [v90 setTaskType_];
        [v90 setAttribute_];
        [v90 setValue_];

        v91 = v90;
        MEMORY[0x2530AD700]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v63 = v125;
        v92 = sub_252E36AC4();
        v93 = sub_252E374C4();
        a2 = v121;
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_252917000, v92, v93, "Converting brightness percentage task into a set power to false task", v94, 2u);
          MEMORY[0x2530AED00](v94, -1, -1);
        }

        v76 = &off_279711000;
      }

      else
      {
        a2 = v121;
        v82 = v121;
        MEMORY[0x2530AD700]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v76 = &off_279711000;
        }

        sub_252E372D4();
        v63 = v125;
      }

      v95 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v96 = sub_252E36F04();
      v97 = [v95 initWithIdentifier:0 displayString:v96];

      v98 = v97;
      [v98 setBoolValue_];
      [v98 v76[272]];

      v99 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v100 = sub_252E36F04();
      v101 = [v99 initWithIdentifier:0 displayString:v100];

      v102 = v101;
      [v102 setTaskType_];
      [v102 setAttribute_];
      [v102 setValue_];

      v103 = [a2 value];
      if (v103)
      {
        v104 = v103;
        [v103 doubleValue];
        v106 = v105;

        if (v106 != 0.0)
        {
          v107 = v102;
          MEMORY[0x2530AD700]();
          v16 = v120;
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_74:
            sub_252E372A4();
          }

LABEL_71:
          sub_252E372D4();

LABEL_44:
          v63 = v125;
          goto LABEL_45;
        }
      }

      v16 = v120;
      if (v118)
      {
        v107 = v102;
        MEMORY[0x2530AD700]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_74;
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ([a2 attribute] != 5 || objc_msgSend(a2, sel_taskType) != 1 || (*&v24 = COERCE_DOUBLE(sub_2529C70CC()), (v27 & 0x100) != 0))
      {
        v64 = a2;
        MEMORY[0x2530AD700]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        goto LABEL_44;
      }

      v28 = *&v24;
      v112 = v25;
      v114 = v27;
      v110 = v26;
      v119 = v16;
      if ([a2 taskType] == 1)
      {
        v116 = [a2 taskType];
        v29 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v30 = sub_252E36F04();
        v31 = [v29 initWithIdentifier:0 displayString:v30];

        v32 = v31;
        [v32 setBoolValue_];
        [v32 setType_];

        v33 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v34 = sub_252E36F04();
        v35 = [v33 initWithIdentifier:0 displayString:v34];

        v36 = v35;
        [v36 setTaskType_];
        [v36 setAttribute_];
        [v36 setValue_];

        MEMORY[0x2530AD700]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v111 = [a2 taskType];
      v117 = type metadata accessor for HomeAttributeValue();
      v37 = objc_allocWithZone(v117);
      v38 = sub_252E36F04();
      v39 = [v37 initWithIdentifier:0 displayString:v38];

      v40 = v39;
      [v40 setDoubleValue_];
      [v40 setUnit_];
      [v40 setType_];

      v41 = type metadata accessor for HomeUserTask();
      v42 = objc_allocWithZone(v41);
      v43 = sub_252E36F04();
      v44 = [v42 initWithIdentifier:0 displayString:v43];

      v45 = v44;
      [v45 setTaskType_];
      [v45 setAttribute_];
      [v45 setValue_];

      MEMORY[0x2530AD700]();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      v46 = v112;
      sub_252E372D4();
      v113 = [a2 taskType];
      v47 = objc_allocWithZone(v117);
      v48 = sub_252E36F04();
      v49 = [v47 initWithIdentifier:0 displayString:v48];

      v50 = v49;
      [v50 setDoubleValue_];
      [v50 setUnit_];
      [v50 setType_];

      v51 = objc_allocWithZone(v41);
      v52 = sub_252E36F04();
      v53 = [v51 initWithIdentifier:0 displayString:v52];

      v54 = v53;
      [v54 setTaskType_];
      [v54 setAttribute_];
      [v54 setValue_];

      MEMORY[0x2530AD700]();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      if ((v114 & 1) == 0)
      {
        v55 = objc_allocWithZone(v117);
        v56 = sub_252E36F04();
        v57 = [v55 initWithIdentifier:0 displayString:v56];

        v58 = v57;
        [v58 setDoubleValue_];
        [v58 setUnit_];
        [v58 setType_];

        v59 = objc_allocWithZone(v41);
        v60 = sub_252E36F04();
        v61 = [v59 initWithIdentifier:0 displayString:v60];

        v62 = v61;
        [v62 setTaskType_];
        [v62 setAttribute_];
        [v62 setValue_];

        MEMORY[0x2530AD700]();
        if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v63 = v125;
      v16 = v119;
    }

LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124 = v4;
    v66 = sub_252A454C0(v17);
    v68 = v4[2];
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_79;
    }

    v72 = v67;
    if (v4[3] < v71)
    {
      sub_252E00638(v71, isUniquelyReferenced_nonNull_native);
      v66 = sub_252A454C0(v17);
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_81;
      }

LABEL_50:
      if (v72)
      {
        goto LABEL_8;
      }

      goto LABEL_51;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_50;
    }

    v108 = v66;
    sub_252E03EC4();
    v66 = v108;
    v4 = v124;
    if (v72)
    {
LABEL_8:
      *(v4[7] + 8 * v66) = v63;

      goto LABEL_9;
    }

LABEL_51:
    v4[(v66 >> 6) + 8] |= 1 << v66;
    *(v4[6] + 8 * v66) = v17;
    *(v4[7] + 8 * v66) = v63;
    v74 = v4[2];
    v70 = __OFADD__(v74, 1);
    v75 = v74 + 1;
    if (v70)
    {
      goto LABEL_80;
    }

    v4[2] = v75;
LABEL_9:
    v7 = v15;
    v8 = v16;
    v12 = v122;
    a1 = v123;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      goto LABEL_77;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_77;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  type metadata accessor for Service(0);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t ControlHomeIntentResponse.Builder.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 16) = 4;
  *(result + 24) = v1;
  return result;
}

uint64_t ControlHomeIntentResponse.Builder.init()()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 16) = 4;
  *(v0 + 24) = v2;
  return result;
}

uint64_t sub_252CADC6C(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297A894(v2);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v8;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

char *sub_252CADD84()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v3 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = v1;
  [v2 setUserActivity_];
  swift_beginAccess();
  type metadata accessor for HomeEntityResponse();

  v4 = sub_252E37254();

  [v2 setEntityResponses_];

  return v2;
}

uint64_t sub_252CADE64()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v2 = swift_allocObject();
  *(v2 + 24) = MEMORY[0x277D84F90];
  *(v2 + 16) = v1;

  v4 = sub_25297CEB4(v3);

  swift_beginAccess();
  *(v2 + 24) = v4;

  return v2;
}

uint64_t ControlHomeIntentResponse.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252CAE074(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E34014();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CAE138, 0, 0);
}

uint64_t sub_252CAE138()
{
  v1 = sub_252B4F670();
  v0[8] = v1;
  v57 = v1;
  v2 = sub_252C2895C();
  v3 = v2;
  v59 = MEMORY[0x277D84F90];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_76:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_69;
      }

      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v11 = sub_252DA124C(0);

    ++v6;
    if (v11)
    {
      MEMORY[0x2530AD700]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v7 = v59;
      v6 = v10;
    }
  }

  type metadata accessor for HomeAutomationEntityResponses();
  v12 = swift_allocObject();
  v0[9] = v12;
  *(v12 + 16) = 0;
  *(v12 + 24) = v7;
  v56 = v12;
  v13 = [v57 entityResponses];
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v59 = v14;
    if (v3 >> 62)
    {
      v16 = sub_252E378C4();
    }

    else
    {
      v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = 0;
      v19 = v3 & 0xC000000000000001;
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
      v58 = v3 + 32;
      v54 = v3;
      v55 = v0;
      v52 = v3 & 0xFFFFFFFFFFFFFF8;
      v53 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v19)
        {
          v20 = MEMORY[0x2530ADF00](v18, v3);
        }

        else
        {
          if (v18 >= *(v4 + 16))
          {
            goto LABEL_73;
          }

          v20 = *(v58 + 8 * v18);
        }

        v21 = v20;
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_72;
        }

        v23 = [v20 entity];
        if (v23 && (v24 = v23, v25 = [v23 type], v24, v25 == 7) && (sub_252DA3CC8() & 1) != 0 && (sub_252DA5218() & 1) == 0 && (v26 = objc_msgSend(v21, sel_taskResponses)) != 0)
        {
          v27 = v26;
          type metadata accessor for HomeUserTaskResponse();
          v28 = sub_252E37264();

          v3 = v28 & 0xFFFFFFFFFFFFFF8;
          if (v28 >> 62)
          {
            v29 = sub_252E378C4();
          }

          else
          {
            v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v4 = 0;
          v0 = (v28 & 0xC000000000000001);
          while (v29 != v4)
          {
            if (v0)
            {
              v30 = MEMORY[0x2530ADF00](v4, v28);
            }

            else
            {
              if (v4 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_75;
              }

              v30 = *(v28 + 8 * v4 + 32);
            }

            v31 = v30;
            if (__OFADD__(v4, 1))
            {
              goto LABEL_74;
            }

            v32 = [v30 taskOutcome];

            ++v4;
            if (v32 == 6)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              goto LABEL_42;
            }
          }

LABEL_42:
          v3 = v54;
          v0 = v55;
          v17 = MEMORY[0x277D84F90];
          v4 = v52;
          v19 = v53;
          if (v18 == v16)
          {
LABEL_46:
            v33 = v59;
            goto LABEL_48;
          }
        }

        else
        {

          if (v18 == v16)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v33 = MEMORY[0x277D84F90];
LABEL_48:

    v59 = v17;
    if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
    {
      v3 = sub_252E378C4();
    }

    else
    {
      v3 = *(v33 + 16);
    }

    v34 = 0;
    v4 = v33 & 0xC000000000000001;
    v14 = MEMORY[0x277D84F90];
    while (v3 != v34)
    {
      if (v4)
      {
        v35 = MEMORY[0x2530ADF00](v34, v33);
      }

      else
      {
        if (v34 >= *(v33 + 16))
        {
          goto LABEL_71;
        }

        v35 = *(v33 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_70;
      }

      v38 = sub_252DA124C(0);

      ++v34;
      if (v38)
      {
        MEMORY[0x2530AD700]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v14 = v17;
        v34 = v37;
      }
    }
  }

  if (v14 >> 62)
  {
    v46 = sub_252E378C4();
    v39 = v0[4];
    if (v46)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v39 = v0[4];
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_65:
      v40 = sub_252C308A4();
      v41 = v39[6];
      v42 = v39[7];
      __swift_project_boxed_opaque_existential_1(v39 + 3, v41);
      v43 = swift_allocObject();
      *(v43 + 16) = v39;
      *(v43 + 24) = v14;
      *(v43 + 32) = v40;

      sub_252943BD0(sub_252CAF320, v43, 1, v41, v42);

      v44 = v0[1];

      return v44();
    }
  }

  v47 = v39[6];
  __swift_project_boxed_opaque_existential_1(v39 + 3, v47);
  v48 = swift_task_alloc();
  v0[10] = v48;
  *(v48 + 16) = v39;
  *(v48 + 24) = v56;
  sub_252AD7CC4();
  v49 = swift_task_alloc();
  v0[11] = v49;
  *v49 = v0;
  v49[1] = sub_252CAE854;
  v50 = v0[7];
  v51 = v0[2];

  return sub_252BDB88C(v51, &unk_252E599C8, v48, v50, 0, 0, 0, v47);
}

uint64_t sub_252CAE854()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252CAEA44;
  }

  else
  {

    v5 = sub_252CAE9D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CAE9D4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CAEA44()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CAEAC0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for HomeAutomationEntityResponses();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3C280;
  *(v7 + 32) = 0xD000000000000015;
  *(v7 + 40) = 0x8000000252E696E0;
  *(v7 + 48) = v6;
  *(v7 + 72) = v5;
  strcpy((v7 + 80), "isSceneRequest");
  v8 = MEMORY[0x277D839B0];
  *(v7 + 95) = -18;
  *(v7 + 96) = 0;
  *(v7 + 120) = v8;
  *(v7 + 128) = 0xD000000000000018;
  *(v7 + 136) = 0x8000000252E8A310;
  *(v7 + 168) = v8;
  *(v7 + 144) = a3;

  sub_252E362B4();
}

uint64_t sub_252CAEC20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CAEC40, 0, 0);
}

uint64_t sub_252CAEC40()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 64), *(v0[2] + 88));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252CAED14;
  v3 = v0[3];

  return sub_252C153EC(0, v1, v3);
}

uint64_t sub_252CAED14(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252CAEE38(uint64_t a1, uint64_t a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-v8];
  v10 = type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters(0);
  v11 = *(v10 + 32);

  *(a1 + v11) = a2;
  v12 = sub_25294833C(1u, 0, 0);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 dictionary];
  if (!v14)
  {

LABEL_7:
    v22 = sub_252E36324();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v27[0] = 0;
  v17 = [v16 dataWithPropertyList:v15 format:200 options:0 error:v27];
  v18 = v27[0];
  if (!v17)
  {
    v23 = v18;
    v24 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v19 = sub_252E32D34();
  v21 = v20;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v19, v21);
  v22 = sub_252E36324();
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
LABEL_8:
  sub_252956C98(v9, a1 + *(v10 + 28));
  sub_252E37024();
  sub_252E36324();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  return sub_252956C98(v7, a1);
}

void *sub_252CAF154@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncUnreachableResponseHandler();
  v2 = swift_allocObject();
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

BOOL sub_252CAF190()
{
  v0 = sub_252B4F670();
  v1 = sub_252C285CC();
  if (v1 >> 62)
  {
    if (sub_252E378C4())
    {
      v2 = sub_252E378C4();
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:

  v3 = sub_252C2895C();
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == v4;
}

uint64_t sub_252CAF274(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CAE074(a1, a2);
}

uint64_t sub_252CAF32C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252CAEC20(v2, v3);
}

uint64_t sub_252CAF3C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B28, &unk_252E59A80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CB0778();
  sub_252E37F84();
  v13 = 0;
  sub_252E37CF4();
  if (!v2)
  {
    v12 = 1;
    sub_252E37CF4();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252984B28(&qword_27F540B18, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252CAF5DC()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x4449656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252CAF640@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252CAFCCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252CAF668(uint64_t a1)
{
  v2 = sub_252CB0778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252CAF6A4(uint64_t a1)
{
  v2 = sub_252CB0778();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252CAF6E0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_252CAFDF4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_252CAF740(uint64_t a1, void *a2)
{
  v4 = aFaileddevices[0];
  v5 = aFaileddevices[1];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = a2;
  sub_252B51484(v4, v5, sub_252CB06DC, v6);
}

uint64_t sub_252CAF7F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  *(a2 + 16) = v3;

  return sub_252E37614();
}

void sub_252CAF868(unint64_t a1)
{
  *&v34 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v7 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_19;
  }

LABEL_17:
  v2 = sub_252E378C4();
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (sub_252DA3CC8())
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v3;
  }

  while (v6 != v2);
  v7 = v34;
  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if ((v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

  for (i = *(v7 + 16); i; i = sub_252E378C4())
  {
    v9 = v7 & 0xC000000000000001;
    v31 = MEMORY[0x277D84F90];
    v10 = 0;
    if ((v7 & 0xC000000000000001) != 0)
    {
LABEL_36:
      v11 = MEMORY[0x2530ADF00](v10, v7);
      goto LABEL_27;
    }

    while (v10 < *(v7 + 16))
    {
      v11 = *(v7 + 8 * v10 + 32);
LABEL_27:
      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        break;
      }

      v14 = [v11 entity];
      if (v14 && (v15 = v14, v16 = [v14 entityIdentifier], v15, v16))
      {
        v17 = sub_252E36F34();
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_2529F7A80(0, *(v31 + 2) + 1, 1, v31);
        }

        v21 = *(v31 + 2);
        v20 = *(v31 + 3);
        if (v21 >= v20 >> 1)
        {
          v31 = sub_2529F7A80((v20 > 1), v21 + 1, 1, v31);
        }

        *(v31 + 2) = v21 + 1;
        v22 = &v31[16 * v21];
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
        if (v13 == i)
        {
          goto LABEL_41;
        }

        v10 = v13;
        if (v9)
        {
          goto LABEL_36;
        }
      }

      else
      {

        ++v10;
        if (v13 == i)
        {
          goto LABEL_41;
        }

        if (v9)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_39:
    ;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_41:

  v34 = xmmword_27F544B00;
  strcpy(v35, "failedDevices");
  v35[7] = unk_27F544B1E;
  v36 = v31;

  sub_252DBBCA0(&v34);

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D60);

  oslog = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v27 = MEMORY[0x2530AD730](v31, MEMORY[0x277D837D0]);
    v29 = v28;

    v30 = sub_252BE2CE0(v27, v29, &v33);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_252917000, oslog, v24, "Storing the failed device ids: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_252CAFCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252CAFDF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B38, &qword_252E59A90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252CB0778();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_252E37C04();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = sub_252E37C04();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v20 = 2;
  sub_252984B28(&qword_27F540920, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_252E37C64();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v18;
  a2[1] = v11;
  v15 = v17;
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v13;
  return result;
}

uint64_t sub_252CB008C()
{
  v40 = sub_252E36C84();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = (&v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_252E36D54();
  v37 = *(v39 - 8);
  v1 = MEMORY[0x28223BE20](v39);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v34 = &v30 - v3;
  v4 = sub_252E36CA4();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36D04();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36CB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = dispatch_semaphore_create(0);
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v35 = v15 + 16;
  sub_252936DF8();
  (*(v11 + 104))(v13, *MEMORY[0x277D851C0], v10);
  v16 = sub_252E375A4();
  (*(v11 + 8))(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  aBlock[4] = sub_252CB06BC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_19;
  v18 = _Block_copy(aBlock);

  v19 = v14;
  sub_252E36CD4();
  v41 = MEMORY[0x277D84F90];
  sub_252990E98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v9, v6, v18);
  _Block_release(v18);

  (*(v32 + 8))(v6, v4);
  (*(v30 + 8))(v9, v31);

  v20 = v33;
  sub_252E36D14();
  v21 = v36;
  *v36 = 200;
  v22 = v38;
  v23 = v40;
  (*(v38 + 104))(v21, *MEMORY[0x277D85178], v40);
  v24 = v34;
  sub_252E36D24();
  (*(v22 + 8))(v21, v23);
  v25 = *(v37 + 8);
  v26 = v39;
  v25(v20, v39);
  sub_252E375F4();
  v25(v24, v26);
  if (sub_252E36C94())
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252CC4050(0xD000000000000035, 0x8000000252E916D0, 0xD000000000000080, 0x8000000252E91710, 0xD00000000000001CLL, 0x8000000252E917A0, 77);
  }

  swift_beginAccess();
  v28 = *(v15 + 16);

  return v28;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252CB06F4(uint64_t a1)
{
  *(a1 + 8) = sub_252B5C008();
  result = sub_252CB0724();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252CB0724()
{
  result = qword_27F544B20;
  if (!qword_27F544B20)
  {
    result = swift_getWitnessTable(byte_252E59A58, &type metadata for DevicesFailedRecord, v0, v1);
    atomic_store(result, &qword_27F544B20);
  }

  return result;
}

unint64_t sub_252CB0778()
{
  result = qword_27F544B30;
  if (!qword_27F544B30)
  {
    result = swift_getWitnessTable(byte_252E59B5C, &type metadata for DevicesFailedRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544B30);
  }

  return result;
}

unint64_t sub_252CB07E0()
{
  result = qword_27F544B40;
  if (!qword_27F544B40)
  {
    result = swift_getWitnessTable(byte_252E59B34, &type metadata for DevicesFailedRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544B40);
  }

  return result;
}

unint64_t sub_252CB0838()
{
  result = qword_27F544B48;
  if (!qword_27F544B48)
  {
    result = swift_getWitnessTable(byte_252E59AA4, &type metadata for DevicesFailedRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544B48);
  }

  return result;
}

unint64_t sub_252CB0890()
{
  result = qword_27F544B50;
  if (!qword_27F544B50)
  {
    result = swift_getWitnessTable(asc_252E59ACC, &type metadata for DevicesFailedRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F544B50);
  }

  return result;
}

uint64_t sub_252CB08E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        sub_252B44CD8();

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      while (v2 != v4);
      return v7;
    }
  }

  return result;
}

id sub_252CB09F0()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = sub_252A864D4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 filters];
  if (v5)
  {
    v6 = v5;
    sub_252CB0B64();
    v7 = sub_252E37264();

    v8 = sub_252CB08E4(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v1 time];
  v10 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v10 setUserTask_];
  if (v8)
  {
    type metadata accessor for HomeFilter();
    v11 = sub_252E37254();
  }

  else
  {
    v11 = 0;
  }

  [v10 setFilters_];

  [v10 setTime_];
  return v10;
}

unint64_t sub_252CB0B64()
{
  result = qword_27F540898;
  if (!qword_27F540898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540898);
  }

  return result;
}

uint64_t sub_252CB0BB0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_252E378C4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v13)
        {
          MEMORY[0x2530AD700](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252CB0D6C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x2530AD700]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_252CB0F18(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v28 = a1;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v15 = i;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v6, a3);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v27[0] = v8;
      v28(&v23, v27);
      if (v3)
      {

        return v7;
      }

      if (*(&v23 + 1))
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2529F90FC(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_2529F90FC((v10 > 1), v11 + 1, 1, v7);
        }

        v17 = v21;
        v18 = v22;
        v12 = v19;
        v16 = v20;
        *(v7 + 2) = v11 + 1;
        v13 = &v7[64 * v11];
        *(v13 + 4) = v17;
        *(v13 + 5) = v18;
        *(v13 + 2) = v12;
        *(v13 + 3) = v16;
        i = v15;
      }

      else
      {
        v19 = v23;
        v20 = v24;
        v21 = v25;
        v22 = v26;
        sub_25293847C(&v19, &qword_27F541B80, &unk_252E4E7B0);
      }

      ++v6;
      if (v9 == i)
      {
        return v7;
      }
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v8 = *(a3 + 8 * v6 + 32);

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_252CB1138(const void *a1)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v4 = *(v3 + 22);

  v1[2] = v4;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  swift_beginAccess();
  v7 = *(v6 + 23);

  v1[3] = v7;
  v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
  sub_252929E74((v9 + 136), (v1 + 4));

  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10);
  sub_252929E74((v11 + 16), (v1 + 9));

  v13 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12) + 29);

  v1[17] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[18] = &off_2864BA730;
  v1[14] = v13;
  memcpy(v1 + 19, a1, 0x1F8uLL);
  return v1;
}

uint64_t sub_252CB1250(uint64_t a1, uint64_t a2)
{
  v3[451] = v2;
  v3[450] = a2;
  v3[449] = a1;
  v3[452] = type metadata accessor for AutomationSnippetModel(0);
  v3[453] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v3[454] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3[455] = swift_task_alloc();
  v4 = type metadata accessor for IconConfiguration(0);
  v3[456] = v4;
  v3[457] = *(v4 - 8);
  v3[458] = swift_task_alloc();
  v3[459] = swift_task_alloc();
  v3[460] = swift_task_alloc();
  v3[461] = swift_task_alloc();
  v3[462] = type metadata accessor for HomeAutomationScheduleFutureActionParameters(0);
  v3[463] = swift_task_alloc();
  v5 = sub_252E34014();
  v3[464] = v5;
  v3[465] = *(v5 - 8);
  v3[466] = swift_task_alloc();
  v3[467] = swift_task_alloc();
  v3[468] = swift_task_alloc();
  v3[469] = type metadata accessor for HomeAutomationScheduleFutureSceneParameters(0);
  v3[470] = swift_task_alloc();
  v6 = sub_252E32E84();
  v3[471] = v6;
  v3[472] = *(v6 - 8);
  v3[473] = swift_task_alloc();
  v3[474] = swift_task_alloc();
  v3[475] = swift_task_alloc();
  v3[476] = swift_task_alloc();
  v3[477] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB153C, 0, 0);
}

uint64_t sub_252CB153C()
{
  v134 = v0;
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B68, &qword_252E59D58);
  v2 = sub_252E33F24();
  *(v1 + 3824) = v2;
  v131 = sub_252E33F04();
  *(v1 + 3832) = v131;
  v3 = [v2 automatableTask];
  if (!v3)
  {
LABEL_6:
    if (qword_27F53F500 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  v4 = v3;
  type metadata accessor for ControlAutomateHomeIntent();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    goto LABEL_6;
  }

  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v7 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v8 = v6;

  v9 = [v7 init];
  *(v1 + 3840) = v9;
  v10 = v9;
  [v10 setUserTask_];
  *(v1 + 3848) = type metadata accessor for HomeFilter();
  v11 = sub_252E37254();

  [v10 setFilters_];

  [v10 setTime_];
  v124 = v2;
  v12 = [v2 trigger];
  if (v12)
  {
    v13 = v12;
    v14 = sub_252DEDE18();
  }

  else
  {
    v14 = 0;
  }

  v123 = v14;
  *(v1 + 4148) = v14 & 1;
  v20 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
  sub_252929E74((v20 + 288), v1 + 3040);

  v21 = *(v1 + 3064);
  v22 = *(v1 + 3072);
  __swift_project_boxed_opaque_existential_1((v1 + 3040), v21);
  v23 = (*(v22 + 160))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1((v1 + 3040));
  if ((v23 & 1) == 0)
  {
    v24 = v124;
    goto LABEL_24;
  }

  sub_252E35F84();
  v24 = v124;
  if (sub_252E35F54())
  {
    sub_252E35F14();

    sub_252E335F4();

    if (*(v1 + 3384))
    {
      sub_252927BEC((v1 + 3360), v1 + 3320);
      v25 = [v10 filters];
      if (v25)
      {
        v26 = v25;
        v27 = sub_252E37264();

        v28 = sub_252DD5A58(v27);
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      v65 = sub_252C758E0(v28);

      v66 = sub_252DD6238(v65);

      if (v66)
      {
        v67 = *(v1 + 3816);
        v68 = *(v1 + 3808);
        v69 = *(v1 + 3776);
        v70 = *(v1 + 3768);
        v71 = *(v69 + 16);
        v71(v68, &v66[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier], v70);

        (*(v69 + 32))(v67, v68, v70);
        v72 = [v131 automationIdentifier];
        if (v72)
        {
          v73 = v72;
          sub_252E32E64();

          v75 = sub_252B680FC(v74);
          swift_beginAccess();
          v76 = *(v75 + 16);
          v77 = *(v76 + 16);
          v78 = *(v1 + 3816);
          v79 = *(v1 + 3800);
          if (v77)
          {
            v80 = *(v1 + 3816);
            v126 = v80;
            v81 = *(v1 + 3792);
            v119 = *(v1 + 3784);
            v122 = v10;
            v82 = *(v1 + 3776);
            v83 = *(v1 + 3768);
            memcpy((v1 + 1024), (v76 + 504 * v77 - 472), 0x1F8uLL);
            sub_2529353AC(v1 + 1024, v1 + 520);

            __swift_project_boxed_opaque_existential_1((v1 + 3320), *(v1 + 3344));
            memcpy(__dst, (v1 + 1024), 0x1F8uLL);
            v71(v81, v79, v83);
            v71(v119, v80, v83);
            v84 = type metadata accessor for AutomateHomeCorrectionFlow(0);
            swift_allocObject();
            sub_2529353AC(v1 + 1024, v1 + 1528);
            v85 = sub_252BE1038(__dst, v81, v119);
            *(v1 + 3464) = v84;
            *(v1 + 3472) = sub_252CBD7C8(&qword_27F543D80, 255, type metadata accessor for AutomateHomeCorrectionFlow, protocol conformance descriptor for AutomateHomeCorrectionFlow);
            *(v1 + 3440) = v85;
            sub_252E335E4();
            sub_252935408(v1 + 1024);
            v86 = *(v82 + 8);
            v86(v79, v83);
            v86(v126, v83);
            v10 = v122;
            __swift_destroy_boxed_opaque_existential_1((v1 + 3440));
            __swift_destroy_boxed_opaque_existential_1((v1 + 3320));
            v24 = v124;
            goto LABEL_24;
          }

          v87 = *(v1 + 3776);
          v88 = *(v1 + 3768);

          v89 = *(v87 + 8);
          v89(v79, v88);
          v89(v78, v88);
        }

        else
        {
          (*(*(v1 + 3776) + 8))(*(v1 + 3816), *(v1 + 3768));
        }

        __swift_destroy_boxed_opaque_existential_1((v1 + 3320));
        v24 = v124;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 3320));
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(v1 + 3392) = 0;
    *(v1 + 3360) = 0u;
    *(v1 + 3376) = 0u;
  }

  sub_25293847C(v1 + 3360, &qword_27F541E30, &qword_252E42880);
LABEL_19:
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544E68);
  v30 = sub_252E36AC4();
  v31 = sub_252E374D4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_252917000, v30, v31, "Failed to register correction client", v32, 2u);
    MEMORY[0x2530AED00](v32, -1, -1);
  }

LABEL_24:
  if (sub_252C4D664(5))
  {
    *(v1 + 3856) = sub_252C4E214();
    *(v1 + 3864) = v33;
    if (v33)
    {
      v34 = *(v1 + 3760);
      v35 = *(v1 + 3752);
      v36 = *(v1 + 3608);
      type metadata accessor for HomeAutomationAutomation.Builder();
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      v38 = v24;
      *(v37 + 16) = sub_252DF1700([v38 trigger]);
      v39 = sub_252E1DFD0(v37);
      *(v1 + 3872) = v39;

      __swift_project_boxed_opaque_existential_1((v36 + 112), *(v36 + 136));
      v40 = sub_252E36324();
      v41 = *(*(v40 - 8) + 56);
      v42 = v10;

      v41(v34, 1, 1, v40);
      v41(v34 + v35[9], 1, 1, v40);
      v41(v34 + v35[10], 1, 1, v40);
      v41(v34 + v35[11], 1, 1, v40);
      *(v34 + v35[5]) = 0;
      *(v34 + v35[6]) = 0;
      *(v34 + v35[7]) = 0;
      *(v34 + v35[8]) = v123 & 1;
      sub_252CB5208(v34, v42, v39, v36);
      v43 = sub_252C09084();
      *(v1 + 3880) = v43;
      v132 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v44 = swift_task_alloc();
      *(v1 + 3888) = v44;
      *v44 = v1;
      v44[1] = sub_252CB24F8;
      v45 = 0x8000000252E91A50;
      v46 = 0xD000000000000022;
      v47 = v43;
LABEL_76:

      return v132(v46, v45, v47);
    }
  }

  v120 = type metadata accessor for HomeStore(0);
  v48 = static HomeStore.shared.getter(v120);
  v49 = sub_2529D9D50();
  v50 = sub_2529D70E4(v49);

  __dst[0] = MEMORY[0x277D84F90];
  if (v50 >> 62)
  {
    v51 = sub_252E378C4();
    v121 = v10;
    if (v51)
    {
      goto LABEL_29;
    }

LABEL_57:
    v64 = MEMORY[0x277D84F90];
LABEL_58:
    *(v1 + 3952) = v64;

    type metadata accessor for HomeAutomationAutomation.Builder();
    v90 = swift_allocObject();
    *(v90 + 16) = 0;
    v91 = v24;
    *(v90 + 16) = sub_252DF1700([v91 trigger]);
    v92 = sub_252E1DFD0(v90);
    *(v1 + 3960) = v92;

    *(v1 + 3968) = type metadata accessor for HomeAutomationEntityResponses();
    v93 = v91;

    v94 = sub_252DE9FF0(v93, v64);
    *(v1 + 3584) = v94;
    v95 = *(v94 + 24);
    v130 = v92;
    if (v95 >> 62)
    {
      v108 = v94;
      v109 = sub_252E378C4();
      v94 = v108;
      if (v109)
      {
        goto LABEL_75;
      }
    }

    else if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_75:
      *(v1 + 3976) = v94;
      v110 = *(v1 + 3704);
      v111 = *(v1 + 3696);
      v112 = *(v1 + 3608);
      __swift_project_boxed_opaque_existential_1((v112 + 112), *(v112 + 136));
      v113 = sub_252E36324();
      v114 = *(*(v113 - 8) + 56);
      v115 = v121;

      v114(v110, 1, 1, v113);
      v114(v110 + v111[11], 1, 1, v113);
      *(v110 + v111[5]) = 0;
      *(v110 + v111[6]) = 0;
      *(v110 + v111[7]) = 0;
      *(v110 + v111[8]) = v123 & 1;
      *(v110 + v111[9]) = 0;
      *(v110 + v111[10]) = 0;
      sub_252CB56C8(v110, v130, (v1 + 3584), v115, v112);
      v116 = sub_252C08C10();
      *(v1 + 3984) = v116;
      v132 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v117 = swift_task_alloc();
      *(v1 + 3992) = v117;
      *v117 = v1;
      v117[1] = sub_252CB30FC;
      v46 = 0xD000000000000023;
      v45 = 0x8000000252E91A20;
      v47 = v116;
      goto LABEL_76;
    }

    v128 = v94;
    v96 = static HomeStore.shared.getter(v94);
    v97 = v96[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v97 != 2 && (v97 & 1) == 0 || (v98 = [v121 filters]) == 0)
    {

LABEL_74:
      v94 = v128;
      goto LABEL_75;
    }

    v99 = v98;
    v100 = sub_252E37264();

    v101 = [v121 userTask];
    v102 = HomeStore.accessories(matching:supporting:)(v100, v101);
    v104 = v103;

    if (v104)
    {
      v105 = v102;
      v106 = 1;
LABEL_73:
      sub_252929F10(v105, v106);
      goto LABEL_74;
    }

    if (v102 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_68;
      }
    }

    else if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_68:
      v107 = sub_252DEE1E8(v93, v102);

      *(v1 + 3584) = v107;
      v94 = v107;
      goto LABEL_75;
    }

    v105 = v102;
    v106 = 0;
    goto LABEL_73;
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v121 = v10;
  if (!v51)
  {
    goto LABEL_57;
  }

LABEL_29:
  v52 = v50;
  v53 = 0;
  v54 = v1;
  v55 = *(v1 + 3776);
  v127 = v52 & 0xFFFFFFFFFFFFFF8;
  v129 = v52 & 0xC000000000000001;
  v118 = v52;
  v125 = v51;
  while (v129)
  {
    MEMORY[0x2530ADF00](v53, v118);
    v56 = __OFADD__(v53++, 1);
    if (v56)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      v64 = __dst[0];
      v1 = v54;
      v24 = v124;
      goto LABEL_58;
    }

LABEL_35:
    v57 = [v131 automatedEntityIdentifiers];
    if (v57)
    {
      v58 = v57;
      v59 = sub_252E37264();

      v60 = 0;
      v61 = *(v59 + 16);
      while (v61 != v60)
      {
        v62 = v60 + 1;
        v1 = v59 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v60;
        sub_252CBD7C8(&qword_27F540D48, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v63 = sub_252E36EF4();
        v60 = v62;
        if (v63)
        {

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v51 = v125;
          goto LABEL_31;
        }
      }

      v51 = v125;
    }

    else
    {
    }

LABEL_31:
    if (v53 == v51)
    {
      goto LABEL_44;
    }
  }

  if (v53 < *(v127 + 16))
  {

    v56 = __OFADD__(v53++, 1);
    if (v56)
    {
      goto LABEL_43;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_55:
  swift_once();
LABEL_7:
  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544DA8);
  sub_252CC4050(0xD000000000000042, 0x8000000252E6E6B0, 0xD000000000000088, 0x8000000252E91830, 0xD000000000000025, 0x8000000252E919F0, 41);
  v16 = swift_task_alloc();
  *(v1 + 4128) = v16;
  *v16 = v1;
  v16[1] = sub_252CB4968;
  v17 = *(v1 + 3600);
  v18 = *(v1 + 3592);

  return sub_252CB5A54(v18, v17);
}

uint64_t sub_252CB24F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3896) = a1;
  *(v3 + 3904) = v1;

  if (v1)
  {
    v4 = sub_252CB2894;
  }

  else
  {
    v4 = sub_252CB2638;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB2638()
{
  v1 = *(v0 + 3840);
  sub_252CBD6D4(*(v0 + 3760), type metadata accessor for HomeAutomationScheduleFutureSceneParameters);

  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 288), v0 + 3200);

  v4 = *(v0 + 3224);
  v5 = *(v0 + 3232);
  __swift_project_boxed_opaque_existential_1((v0 + 3200), v4);
  v6 = (*(v5 + 120))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 3200));
  if (v6)
  {
    v7 = *(v0 + 3864);
    v8 = swift_task_alloc();
    *(v0 + 3912) = v8;
    *v8 = v0;
    v8[1] = sub_252CB2A50;
    v9 = *(v0 + 3896);
    v10 = *(v0 + 3872);
    v11 = *(v0 + 3856);
    v12 = *(v0 + 4148);
    v13 = *(v0 + 3840);

    return sub_252CB8BD0(v0 + 3280, v13, v11, v7, v10, v12, v9);
  }

  else
  {
    v15 = *(v0 + 3896);
    v16 = *(v0 + 3608);

    v17 = *(v16 + 56);
    __swift_project_boxed_opaque_existential_1((v16 + 32), v17);
    v18 = swift_task_alloc();
    *(v0 + 3928) = v18;
    *(v18 + 16) = v15;
    sub_252AD7CC4();
    v19 = swift_task_alloc();
    *(v0 + 3936) = v19;
    *v19 = v0;
    v19[1] = sub_252CB2D94;
    v20 = *(v0 + 3744);

    return sub_252BDB88C(v0 + 3240, &unk_252E59E18, v18, v20, 0, 0, 0, v17);
  }
}

uint64_t sub_252CB2894()
{
  v1 = v0[480];
  v2 = v0[479];
  v3 = v0[478];
  sub_252CBD6D4(v0[470], type metadata accessor for HomeAutomationScheduleFutureSceneParameters);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252CB2A50()
{
  *(*v1 + 3920) = v0;

  if (v0)
  {
    v2 = sub_252CB4D4C;
  }

  else
  {
    v2 = sub_252CB2B84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252CB2B84()
{
  v1 = v0[480];
  v2 = v0[451];
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = [v1 filters];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[487];
  v9 = v0[480];
  v10 = v0[479];
  v11 = v0[478];
  (*(v4 + 112))(v7, v0 + 410, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 410);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252CB2D94()
{
  v2 = *v1;
  *(*v1 + 3944) = v0;

  (*(v2[465] + 8))(v2[468], v2[464]);
  if (v0)
  {
    v3 = sub_252CB4ED4;
  }

  else
  {

    v3 = sub_252CB2EEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB2EEC()
{
  v1 = v0[480];
  v2 = v0[451];
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = [v1 filters];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[487];
  v9 = v0[480];
  v10 = v0[479];
  v11 = v0[478];
  (*(v4 + 112))(v7, v0 + 405, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 405);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252CB30FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4000) = a1;
  *(v3 + 4008) = v1;

  if (v1)
  {
    v4 = sub_252CB3890;
  }

  else
  {
    v4 = sub_252CB323C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB323C()
{
  v53 = v0;
  v1 = *(v0 + 3840);
  sub_252CBD6D4(*(v0 + 3704), type metadata accessor for HomeAutomationScheduleFutureActionParameters);

  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 288), v0 + 3400);

  v4 = *(v0 + 3424);
  v5 = *(v0 + 3432);
  __swift_project_boxed_opaque_existential_1((v0 + 3400), v4);
  v6 = (*(v5 + 120))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 3400));
  if (v6)
  {
    v7 = *(v0 + 3952);
    sub_252CBCAD0(v7, *(v0 + 3840));
    v9 = v8;
    if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
    {
      v36 = sub_252E378C4();

      if (v36)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *(*(v0 + 3952) + 16);

      if (v10)
      {
LABEL_5:
        *(v0 + 4016) = v9;
        v12 = *(v0 + 3976);
        v13 = *(v0 + 3968);
        v14 = *(v0 + 3960);
        v15 = *(v0 + 4148);
        v16 = *(v0 + 3840);
        v17 = *(v0 + 3608);
        v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
        swift_beginAccess();
        *(v0 + 4024) = *(v18 + 23);

        memcpy((v0 + 16), (v17 + 152), 0x1F8uLL);
        memcpy((v0 + 2536), (v17 + 152), 0x1F8uLL);
        GEOLocationCoordinate2DMake();
        memcpy(__dst, (v0 + 2536), 0x1F8uLL);
        v19 = v16;
        sub_2529353AC(v0 + 16, v0 + 2032);
        v20 = sub_252953488(v16, __dst, 0);
        *(v0 + 4032) = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
        v21 = swift_allocObject();
        *(v0 + 4040) = v21;
        *(v21 + 16) = xmmword_252E3EF90;
        *(v21 + 32) = 0x6974616D6F747561;
        *(v21 + 40) = 0xEA00000000006E6FLL;
        v22 = type metadata accessor for HomeAutomationAutomation();
        *(v21 + 48) = v14;
        *(v21 + 72) = v22;
        *(v21 + 80) = 0x65736E6F70736572;
        *(v21 + 88) = 0xE900000000000073;
        *(v21 + 96) = v12;
        *(v21 + 120) = v13;
        strcpy((v21 + 128), "intentContext");
        *(v21 + 142) = -4864;
        v23 = type metadata accessor for HomeAutomationIntentContext(0);
        *(v21 + 144) = v20;
        *(v21 + 168) = v23;
        *(v21 + 176) = 0xD00000000000001ALL;
        *(v21 + 184) = 0x8000000252E8A330;
        v24 = MEMORY[0x277D839B0];
        *(v21 + 192) = v15;
        *(v21 + 216) = v24;
        *(v21 + 224) = 0xD000000000000012;
        *(v21 + 232) = 0x8000000252E91930;
        *(v21 + 264) = v24;
        *(v21 + 240) = 0;
        v56 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

        v25 = swift_task_alloc();
        *(v0 + 4048) = v25;
        v26 = sub_252CBC424();
        *v25 = v0;
        v25[1] = sub_252CB3A58;
        v27 = v56;

        return v27(0xD00000000000002CLL, 0x8000000252E91900, v21, &type metadata for HomeAutomationCATsSimple.SchedulerFutureActionUILabelsDialogIds, v26);
      }
    }

    v37 = [*(v0 + 3840) userTask];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 attribute];

      if (v39 == 67)
      {
        v40 = *(v0 + 3840);
        v41 = *(v0 + 3656);
        v42 = *(v0 + 3648);
        v43 = *(v0 + 3640);
        v44 = *(v0 + 3632);
        type metadata accessor for AccessoriesCollectionDecorator();
        swift_allocObject();
        v45 = v40;
        v46 = sub_252C2436C(v45);
        v47 = type metadata accessor for DirectInvocationConfig(0);
        (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
        sub_252A307E8(v45, v46, v44, v43);

        sub_25293847C(v44, &qword_27F540068, &qword_252E3BC90);
        if ((*(v41 + 48))(v43, 1, v42) == 1)
        {
          v11 = sub_25293847C(*(v0 + 3640), &qword_27F541B50, &unk_252E47970);
        }

        else
        {
          v48 = *(v0 + 3688);
          v49 = *(v0 + 3656);
          v50 = *(v0 + 3640);

          sub_252B42FDC(v50, v48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541710, &unk_252E59D20);
          v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_252E3C290;
          v11 = sub_252B42FDC(v48, v9 + v51);
        }
      }
    }

    else
    {
      v11 = sub_252C515AC();
    }

    goto LABEL_5;
  }

  v29 = *(v0 + 4000);
  v30 = *(v0 + 3608);

  v31 = v30[7];
  v32 = v30[8];
  __swift_project_boxed_opaque_existential_1(v30 + 4, v31);
  v33 = swift_task_alloc();
  *(v0 + 4104) = v33;
  *(v33 + 16) = v29;
  sub_252AD7CC4();
  v34 = swift_task_alloc();
  *(v0 + 4112) = v34;
  *v34 = v0;
  v34[1] = sub_252CB45F0;
  v35 = *(v0 + 3728);
  v55 = v32;

  return sub_252BDB88C(v0 + 3120, &unk_252E59DE8, v33, v35, 0, 0, 0, v31);
}

uint64_t sub_252CB3890()
{
  v1 = v0[480];
  v2 = v0[479];
  v3 = v0[478];
  sub_252CBD6D4(v0[463], type metadata accessor for HomeAutomationScheduleFutureActionParameters);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252CB3A58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4056) = a1;
  *(v3 + 4064) = v1;

  if (v1)
  {
    v4 = sub_252CB4008;
  }

  else
  {

    v4 = sub_252CB3B90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB3B90()
{
  v17 = *(v0 + 4016);
  v1 = *(v0 + 3960);
  v24 = *(v0 + 4000);
  v2 = *(v0 + 3680);
  v3 = *(v0 + 3672);
  v22 = *(v0 + 3664);
  v4 = *(v0 + 3624);
  v23 = *(v0 + 3608);
  *(v0 + 4144) = 2;
  v5 = sub_252E36374();
  v7 = v6;
  sub_252CBA95C(v1, v2);
  *(v0 + 4145) = 1;
  v8 = sub_252E36374();
  v20 = v9;
  v21 = v8;
  *(v0 + 4146) = 0;
  v10 = sub_252E36374();
  v18 = v11;
  v19 = v10;
  *(v0 + 3528) = v5;
  *(v0 + 3536) = v7;
  sub_252E330C4();
  *(v0 + 3576) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252E330C4();
  sub_252BA6E60(v2, v3, type metadata accessor for IconConfiguration);
  sub_252BA6E60(v3, v22, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252CBD6D4(v3, type metadata accessor for IconConfiguration);
  *(v0 + 3560) = v21;
  *(v0 + 3568) = v20;
  sub_252E330C4();
  *(v0 + 3544) = v19;
  *(v0 + 3552) = v18;
  sub_252E330C4();
  *(v0 + 4147) = 0;
  sub_252E330C4();
  sub_252CBD6D4(v2, type metadata accessor for IconConfiguration);
  __swift_project_boxed_opaque_existential_1((v23 + 32), *(v23 + 56));
  v12 = swift_task_alloc();
  *(v0 + 4072) = v12;
  *(v12 + 16) = v24;
  v13 = swift_task_alloc();
  *(v0 + 4080) = v13;
  *(v13 + 16) = v4;
  sub_252B03B94();
  v14 = swift_task_alloc();
  *(v0 + 4088) = v14;
  *v14 = v0;
  v14[1] = sub_252CB3E9C;
  v15 = *(v0 + 3736);

  return sub_252A199A8(v0 + 3160, &unk_252E59DF8, v12, &unk_252E59E08, v13, v15, 0, 0);
}

uint64_t sub_252CB3E9C()
{
  v2 = *v1;
  *(*v1 + 4096) = v0;

  (*(v2[465] + 8))(v2[467], v2[464]);
  if (v0)
  {
    v3 = sub_252CB441C;
  }

  else
  {

    v3 = sub_252CB41C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB4008()
{

  v1 = *(v0 + 4000);
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3832);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB41C8()
{
  v1 = *(v0 + 3840);
  v2 = *(v0 + 3624);
  v3 = *(v0 + 3608);

  sub_252927BEC((v0 + 3160), v0 + 3080);
  sub_252CBD6D4(v2, type metadata accessor for AutomationSnippetModel);
  v4 = v3[7];
  v5 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
  v6 = [v1 filters];
  if (v6)
  {
    v7 = v6;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 4000);
  v10 = *(v0 + 3840);
  v11 = *(v0 + 3832);
  v12 = *(v0 + 3824);
  (*(v5 + 112))(v8, v0 + 3080, v4, v5);

  __swift_destroy_boxed_opaque_existential_1((v0 + 3080));

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252CB441C()
{
  v1 = *(v0 + 3624);

  sub_252CBD6D4(v1, type metadata accessor for AutomationSnippetModel);
  v2 = *(v0 + 4000);
  v3 = *(v0 + 3840);
  v4 = *(v0 + 3832);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252CB45F0()
{
  v2 = *v1;
  *(*v1 + 4120) = v0;

  (*(v2[465] + 8))(v2[466], v2[464]);
  if (v0)
  {
    v3 = sub_252CB5068;
  }

  else
  {

    v3 = sub_252CB4748;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB4748()
{
  v1 = v0[480];
  v2 = v0[451];
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  v5 = [v1 filters];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[500];
  v9 = v0[480];
  v10 = v0[479];
  v11 = v0[478];
  (*(v4 + 112))(v7, v0 + 390, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 390);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252CB4968()
{
  *(*v1 + 4136) = v0;

  if (v0)
  {
    v2 = sub_252CB4BE0;
  }

  else
  {
    v2 = sub_252CB4A7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252CB4A7C()
{
  v1 = *(v0 + 3824);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CB4BE0()
{
  v1 = *(v0 + 3824);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CB4D4C()
{
  v1 = *(v0 + 3896);
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3832);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB4ED4()
{
  v1 = *(v0 + 3896);
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3832);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB5068()
{
  v1 = *(v0 + 4000);
  v2 = *(v0 + 3840);
  v3 = *(v0 + 3832);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB5208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v50[63] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v44 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  sub_252C4E214();
  if (v16)
  {
    sub_252E37024();

    v17 = sub_252E36324();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  }

  else
  {
    v17 = sub_252E36324();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v18 = type metadata accessor for HomeAutomationScheduleFutureSceneParameters(0);
  sub_252956C98(v15, a1 + *(v18 + 36));
  v46 = v18;
  v19 = *(v18 + 20);

  *(a1 + v19) = a3;
  sub_252E37024();
  sub_252E36324();
  v20 = *(*(v17 - 8) + 56);
  v21 = 1;
  v20(v13, 0, 1, v17);
  sub_252956C98(v13, a1);
  v22 = sub_25294833C(0, 0, 0);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 dictionary];
    if (v24)
    {
      v25 = v24;
      v26 = objc_opt_self();
      v50[0] = 0;
      v27 = [v26 dataWithPropertyList:v25 format:200 options:0 error:v50];
      v28 = v50[0];
      if (v27)
      {
        v29 = sub_252E32D34();
        v45 = v30;

        v31 = v45;
        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v29, v31);
        v21 = 0;
      }

      else
      {
        v32 = v28;
        v33 = sub_252E32C54();

        swift_willThrow();
        v21 = 1;
      }
    }

    else
    {
    }
  }

  v34 = v49;
  v20(v49, v21, 1, v17);
  v35 = v46;
  sub_252956C98(v34, a1 + *(v46 + 44));
  sub_252E37024();
  v20(v13, 0, 1, v17);
  sub_252956C98(v13, a1);
  memcpy(v50, (v47 + 152), 0x1F8uLL);
  v36 = sub_252A0EA50();
  v37 = sub_252C75D58(v36);

  if (*(v37 + 16) != 1)
  {

    goto LABEL_14;
  }

  v38 = sub_252DB4F48();
  v40 = v39;

  if (v40)
  {
LABEL_14:
    v41 = 0;
    goto LABEL_15;
  }

  v41 = v38;
LABEL_15:
  sub_252B9C8C8(v41);
  v42 = v48;
  sub_252E37024();

  v20(v42, 0, 1, v17);
  return sub_252956C98(v42, a1 + *(v35 + 40));
}

uint64_t sub_252CB56C8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for HomeAutomationScheduleFutureActionParameters(0);
  v16 = v15[5];

  *(a1 + v16) = a2;
  v17 = *a3;
  v18 = v15[10];

  *(a1 + v18) = v17;
  v19 = *a3;
  v20 = v15[9];

  *(a1 + v20) = v19;
  memcpy(v47, (a5 + 152), sizeof(v47));
  memcpy(v48, (a5 + 152), sizeof(v48));
  GEOLocationCoordinate2DMake();
  memcpy(v46, v48, sizeof(v46));
  v21 = a4;
  sub_2529353AC(v47, &v45);
  v22 = sub_252953488(a4, v46, 0);

  v23 = v15[7];

  *(a1 + v23) = v22;
  sub_252E37024();
  v24 = sub_252E36324();
  v25 = *(*(v24 - 8) + 56);
  v26 = 1;
  v25(v14, 0, 1, v24);
  sub_252956C98(v14, a1);
  v27 = sub_25294833C(0, 0, 0);
  if (!v27)
  {
    goto LABEL_7;
  }

  v28 = v27;
  v29 = [v27 dictionary];
  if (!v29)
  {

LABEL_7:
    v37 = v44;
    goto LABEL_8;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v46[0] = 0;
  v32 = [v31 dataWithPropertyList:v30 format:200 options:0 error:v46];
  v33 = v46[0];
  if (!v32)
  {
    v39 = v33;
    v40 = sub_252E32C54();

    swift_willThrow();
    v26 = 1;
    goto LABEL_7;
  }

  v34 = sub_252E32D34();
  v43 = v25;
  v36 = v35;

  sub_252E32D24();
  v37 = v44;
  sub_252E362F4();

  v38 = v36;
  v25 = v43;
  sub_25296464C(v34, v38);
  v26 = 0;
LABEL_8:
  v25(v37, v26, 1, v24);
  return sub_252956C98(v37, a1 + v15[11]);
}

uint64_t sub_252CB5A54(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  v4 = sub_252E34014();
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB5B54, 0, 0);
}

uint64_t sub_252CB5B54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B68, &qword_252E59D58);
  v1 = sub_252E33F24();
  v0[61] = v1;
  v2 = sub_252E33F04();
  v0[62] = v2;
  v3 = [v1 automatableTask];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ControlAutomateHomeIntent();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
    }
  }

  else
  {
    v5 = 0;
  }

  v0[63] = v5;
  v6 = [v1 automatableTask];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  type metadata accessor for ControlAutomateHomeIntent();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

LABEL_12:
    v31 = v0[52];
    sub_2529515FC(3, 6, 0xD000000000000021, 0x8000000252E91950);
    v32 = v31[7];
    v33 = v31[8];
    __swift_project_boxed_opaque_existential_1(v31 + 4, v32);
    v34 = v31[2];

    sub_252943BD0(sub_2529A1790, v34, 1, v32, v33);

    v35 = v0[1];

    return v35();
  }

  v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v10 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v11 = v9;

  v12 = [v10 init];
  v0[64] = v12;
  v13 = v12;
  [v13 setUserTask_];
  type metadata accessor for HomeFilter();
  v14 = sub_252E37254();

  [v13 setFilters_];

  [v13 setTime_];
  v15 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  v16 = swift_beginAccess();
  v17 = *&v2[v15];
  v18 = v0[52];
  if (v17 == 101)
  {
    v37 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16);
    sub_252929E74((v37 + 288), (v0 + 27));

    v38 = v0[30];
    v39 = v0[31];
    __swift_project_boxed_opaque_existential_1(v0 + 27, v38);
    v40 = (*(v39 + 120))(v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
    v23 = *(v18 + 56);
    __swift_project_boxed_opaque_existential_1((v18 + 32), v23);
    if (v40)
    {
      sub_252B03B94();
      v41 = swift_task_alloc();
      v0[70] = v41;
      *v41 = v0;
      v41[1] = sub_252CB671C;
      v26 = v0[58];
      v30 = v0[52];
      v28 = &unk_252E59DA0;
      v29 = &unk_252E59DA8;
      v27 = (v0 + 37);
      goto LABEL_19;
    }

    sub_252AD7CC4();
    v53 = swift_task_alloc();
    v0[72] = v53;
    *v53 = v0;
    v53[1] = sub_252CB6A04;
    v49 = v0[57];
    v52 = v0[52];
    v51 = &unk_252E59D90;
    v50 = (v0 + 32);
  }

  else if (v17 == 100)
  {
    v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16);
    sub_252929E74((v19 + 288), (v0 + 42));

    v20 = v0[45];
    v21 = v0[46];
    __swift_project_boxed_opaque_existential_1(v0 + 42, v20);
    v22 = (*(v21 + 120))(v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
    v23 = *(v18 + 56);
    __swift_project_boxed_opaque_existential_1((v18 + 32), v23);
    v24 = swift_task_alloc();
    v0[65] = v24;
    *(v24 + 16) = v18;
    *(v24 + 24) = v13;
    if (v22)
    {
      sub_252B03B94();
      v25 = swift_task_alloc();
      v0[66] = v25;
      *v25 = v0;
      v25[1] = sub_252CB63C0;
      v26 = v0[60];
      v27 = v0[50];
      v28 = &unk_252E59DC8;
      v29 = &unk_252E59DD0;
      v30 = v24;
LABEL_19:

      return sub_252A199A8(v27, v28, v30, v29, 0, v26, 0, 0);
    }

    sub_252AD7CC4();
    v48 = swift_task_alloc();
    v0[68] = v48;
    *v48 = v0;
    v48[1] = sub_252CB65CC;
    v49 = v0[59];
    v50 = v0[50];
    v51 = &unk_252E59DB8;
    v52 = v24;
  }

  else
  {
    v42 = sub_2529515FC(3, 8, 0xD000000000000030, 0x8000000252E91980);
    v43 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v42);
    sub_252929E74((v43 + 288), (v0 + 7));

    v44 = v0[10];
    v45 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v44);
    v46 = (*(v45 + 120))(v44, v45);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v23 = *(v18 + 56);
    __swift_project_boxed_opaque_existential_1((v18 + 32), v23);
    if (v46)
    {
      sub_252B03B94();
      v47 = swift_task_alloc();
      v0[74] = v47;
      *v47 = v0;
      v47[1] = sub_252CB6CEC;
      v26 = v0[56];
      v30 = v0[52];
      v28 = &unk_252E59D78;
      v29 = &unk_252E59D80;
      v27 = (v0 + 17);
      goto LABEL_19;
    }

    sub_252AD7CC4();
    v54 = swift_task_alloc();
    v0[76] = v54;
    *v54 = v0;
    v54[1] = sub_252CB6FD4;
    v49 = v0[55];
    v52 = v0[52];
    v51 = &unk_252E59D68;
    v50 = (v0 + 12);
  }

  return sub_252BDB88C(v50, v51, v52, v49, 0, 0, 0, v23);
}

uint64_t sub_252CB63C0()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  (*(v2[54] + 8))(v2[60], v2[53]);
  if (v0)
  {
    v3 = sub_252CB72BC;
  }

  else
  {

    v3 = sub_252CB6510;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB6510()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB65CC()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  (*(v2[54] + 8))(v2[59], v2[53]);
  if (v0)
  {
    v3 = sub_252CB7384;
  }

  else
  {

    v3 = sub_252CBD83C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB671C()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[54] + 8))(v2[58], v2[53]);
  if (v0)
  {
    v3 = sub_252CB744C;
  }

  else
  {
    v3 = sub_252CB6884;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB6884()
{
  sub_252927BEC((v0 + 296), v0 + 176);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v13 = *(v0 + 512);
    v14 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
    v6 = *(v5 + 112);

    v6(v7, v0 + 176, v4, v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  else
  {
    v8 = *(v0 + 512);
    v9 = *(v0 + 496);
    v10 = *(v0 + 400);

    sub_252927BEC((v0 + 176), v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB6A04()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  (*(v2[54] + 8))(v2[57], v2[53]);
  if (v0)
  {
    v3 = sub_252CB7508;
  }

  else
  {
    v3 = sub_252CB6B6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB6B6C()
{
  sub_252927BEC((v0 + 256), v0 + 176);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v13 = *(v0 + 512);
    v14 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
    v6 = *(v5 + 112);

    v6(v7, v0 + 176, v4, v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  else
  {
    v8 = *(v0 + 512);
    v9 = *(v0 + 496);
    v10 = *(v0 + 400);

    sub_252927BEC((v0 + 176), v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB6CEC()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  (*(v2[54] + 8))(v2[56], v2[53]);
  if (v0)
  {
    v3 = sub_252CB75C4;
  }

  else
  {
    v3 = sub_252CB6E54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB6E54()
{
  sub_252927BEC((v0 + 136), v0 + 16);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v13 = *(v0 + 512);
    v14 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
    v6 = *(v5 + 112);

    v6(v7, v0 + 16, v4, v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v8 = *(v0 + 512);
    v9 = *(v0 + 496);
    v10 = *(v0 + 400);

    sub_252927BEC((v0 + 16), v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB6FD4()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  (*(v2[54] + 8))(v2[55], v2[53]);
  if (v0)
  {
    v3 = sub_252CB7680;
  }

  else
  {
    v3 = sub_252CB713C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252CB713C()
{
  sub_252927BEC((v0 + 96), v0 + 16);
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 488);
    v13 = *(v0 + 512);
    v14 = *(v0 + 496);
    v3 = *(v0 + 416);
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
    v6 = *(v5 + 112);

    v6(v7, v0 + 16, v4, v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v8 = *(v0 + 512);
    v9 = *(v0 + 496);
    v10 = *(v0 + 400);

    sub_252927BEC((v0 + 16), v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252CB72BC()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB7384()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB744C()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB7508()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB75C4()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB7680()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CB773C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB77E4, 0, 0);
}

uint64_t sub_252CB77E4()
{
  sub_252C51E70();
  if (!v1)
  {
    sub_252C51FFC();
    if (v3)
    {

      sub_252C51FFC();
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v5)
      {
        goto LABEL_10;
      }

      sub_252C4BEAC();
      if (!v6)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    sub_252E37024();

    v7 = 0;
    goto LABEL_11;
  }

  sub_252C51E70();
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = 1;
LABEL_11:
  v8 = v0[5];
  v9 = sub_252E36324();
  v10 = *(*(v9 - 8) + 56);
  v11 = 1;
  v10(v8, v7, 1, v9);
  sub_252C4BEAC();
  if (v12)
  {
    sub_252E37024();

    v11 = 0;
  }

  v13 = 1;
  v10(v0[4], v11, 1, v9);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v13 = sub_252C4B680(0x29);
  }

  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_252CB79C8;
  v15 = v0[4];
  v16 = v0[5];

  return sub_252D28554(v16, v15, v13 & 1);
}

uint64_t sub_252CB79C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  v6 = *(v4 + 40);
  sub_25293847C(*(v4 + 32), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252CB7B88, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_252CB7B88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252CB7BF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CB7C14, 0, 0);
}

uint64_t sub_252CB7C14()
{
  v1 = __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  if (sub_252C4B680(0x24))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_252C4B680(0x29);
  }

  v3 = *v1;
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_2529C4D04;
  v6 = *(v0 + 24);

  return sub_252C16070(0, v2 & 1, v3, v6);
}

uint64_t sub_252CB7D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  sub_252C51E70();
  if (!v8)
  {
    sub_252C51FFC();
    if (v10)
    {

      sub_252C51FFC();
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v12)
      {
        goto LABEL_10;
      }

      sub_252C4BEAC();
      if (!v13)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    sub_252E37024();

    v14 = sub_252E36324();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
    goto LABEL_11;
  }

  sub_252C51E70();
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = sub_252E36324();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
LABEL_11:
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  sub_252956C98(v7, a1 + *(found + 36));
  sub_252C4BEAC();
  if (v17)
  {
    sub_252E37024();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_252E36324();
  (*(*(v19 - 8) + 56))(v5, v18, 1, v19);
  return sub_252956C98(v5, a1 + *(found + 28));
}

uint64_t sub_252CB7F48()
{
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_252CB8014;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000025, 0x8000000252E919C0, v2);
}

uint64_t sub_252CB8014(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252CB8114(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationHomeKitAutomationErrorParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB81E0, 0, 0);
}

uint64_t sub_252CB81E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0x3FF0000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v7 = sub_252C07CC4();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252CB838C;

  return v10(0xD000000000000025, 0x8000000252E919C0, v7);
}

uint64_t sub_252CB838C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252CB856C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252CB84D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB84D8()
{
  sub_252CBD6D4(v0[5], type metadata accessor for HomeAutomationHomeKitAutomationErrorParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252CB856C()
{
  sub_252CBD6D4(*(v0 + 40), type metadata accessor for HomeAutomationHomeKitAutomationErrorParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252CB861C()
{
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_252CBD840;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000025, 0x8000000252E6DE10, v2);
}

uint64_t sub_252CB86E8(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationGenericAutomationErrorParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB87B4, 0, 0);
}

uint64_t sub_252CB87B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0x3FF0000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v7 = sub_252C07760();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252CB8960;

  return v10(0xD000000000000025, 0x8000000252E6DE10, v7);
}

uint64_t sub_252CB8960(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252CB8B40;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252CB8AAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CB8AAC()
{
  sub_252CBD6D4(v0[5], type metadata accessor for HomeAutomationGenericAutomationErrorParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252CB8B40()
{
  sub_252CBD6D4(*(v0 + 40), type metadata accessor for HomeAutomationGenericAutomationErrorParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252CB8BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 2104) = v7;
  *(v8 + 2096) = a7;
  *(v8 + 2336) = a6;
  *(v8 + 2088) = a5;
  *(v8 + 2080) = a4;
  *(v8 + 2072) = a3;
  *(v8 + 2064) = a2;
  *(v8 + 2056) = a1;
  v9 = sub_252E34014();
  *(v8 + 2112) = v9;
  *(v8 + 2120) = *(v9 - 8);
  *(v8 + 2128) = swift_task_alloc();
  *(v8 + 2136) = type metadata accessor for AutomationSnippetModel(0);
  *(v8 + 2144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  *(v8 + 2152) = swift_task_alloc();
  v10 = type metadata accessor for IconConfiguration(0);
  *(v8 + 2160) = v10;
  *(v8 + 2168) = *(v10 - 8);
  *(v8 + 2176) = swift_task_alloc();
  *(v8 + 2184) = swift_task_alloc();
  *(v8 + 2192) = swift_task_alloc();
  *(v8 + 2200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v8 + 2208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CB8DCC, 0, 0);
}

uint64_t sub_252CB8DCC()
{
  v85 = v0;
  type metadata accessor for HomeAutomationEntityResponse.Builder(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  v5 = 1;
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
  v4(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v6;
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v6;
  sub_252C4E214();
  if (v7)
  {
    sub_252E37024();

    v5 = 0;
  }

  v8 = *(v0 + 2208);
  v4(v8, v5, 1, v3);
  swift_beginAccess();
  sub_2529D032C(v8, v1 + v2, &qword_27F540298, &unk_252E3C270);
  swift_endAccess();
  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  type metadata accessor for HomeAutomationEntityResponse(0);
  swift_allocObject();
  v9 = sub_2529605C0(v1);
  *(v0 + 2216) = v9;
  swift_setDeallocating();
  sub_25295E9E4();
  swift_deallocClassInstance();
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3C130;
  *(v10 + 32) = v9;
  v11 = type metadata accessor for HomeAutomationEntityResponses();
  v12 = swift_allocObject();
  *(v0 + 2224) = v12;
  *(v12 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v12 + 24) = v10;
  type metadata accessor for HomeStore(0);

  v14 = static HomeStore.shared.getter(v13);
  v15 = sub_2529DA828();

  v81 = v11;
  v83 = v12;
  if (v15 >> 62)
  {
LABEL_25:
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_26:

    v18 = 0;
    goto LABEL_27;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_26;
  }

LABEL_5:
  v17 = 0;
  v80 = (v0 + 1528);
  while ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2530ADF00](v17, v15);
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_18;
    }

LABEL_9:
    v20 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v0 + 2072) && *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v0 + 2080);
    if (v20 || (sub_252E37DB4() & 1) != 0)
    {
      goto LABEL_19;
    }

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_26;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v15 + 8 * v17 + 32);

  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
LABEL_19:

  v21 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);
  type metadata accessor for DefaultHomeDataDecorator();
  swift_allocObject();
  v22 = v21;
  sub_252DD3B64(__dst);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v23 = __dst[3];
  *(v0 + 1560) = __dst[2];
  *(v0 + 1576) = v23;
  v24 = __dst[1];
  *v80 = __dst[0];
  *(v0 + 1544) = v24;
  if (*(v0 + 1536))
  {
    v25 = *(v0 + 1576);
    if (v25)
    {
      v69 = *(v0 + 1544);
      v71 = *(v0 + 1568);
      v26 = *(v0 + 2200);
      v27 = *(v0 + 2160);
      v28 = *(v0 + 2152);
      v66 = *(v0 + 1552);
      v68 = v28;
      v74 = v22;
      v59 = type metadata accessor for DirectInvocationConfig(0);
      v60 = *(*(v59 - 8) + 56);
      v60(v28, 1, 1, v59);
      v63 = v27[5];
      *(v0 + 2000) = 0;
      *(v0 + 2008) = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      sub_252E330C4();
      v62 = v27[6];
      *(v0 + 2322) = 0;
      sub_252E330C4();
      *(v0 + 2321) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
      sub_252E330C4();
      v29 = v27[10];
      *(v0 + 1680) = 0;
      *(v0 + 1688) = 0;
      sub_252E330C4();
      v64 = v27[11];
      *(v0 + 2024) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
      sub_252E330C4();
      v61 = v27[12];
      *(v0 + 1936) = 0;
      *(v0 + 1944) = 0;
      sub_252E330C4();
      v76 = v27[13];
      *(v0 + 1920) = 0;
      *(v0 + 1928) = 0;
      sub_252E330C4();
      v78 = v25;
      v30 = v27[14];
      v60(v26 + v30, 1, 1, v59);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
      v32 = *(*(v31 - 8) + 8);
      v32(v26 + v29, v31);
      *(v0 + 1840) = 0;
      *(v0 + 1848) = 0;
      sub_252E330C4();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
      (*(*(v33 - 8) + 8))(v26 + v62, v33);
      *(v0 + 2327) = 0;
      sub_252E330C4();
      sub_2529D032C(v68, v26 + v30, &qword_27F540068, &qword_252E3BC90);
      *(v0 + 1824) = v69;
      *(v0 + 1832) = v66;
      sub_252E330C4();
      v32(v26 + v63, v31);
      *(v0 + 1808) = v71;
      *(v0 + 1816) = v78;
      sub_252E330C4();
      v32(v26 + v61, v31);
      *(v0 + 1712) = 0;
      *(v0 + 1720) = 0;
      sub_252E330C4();
      v32(v26 + v76, v31);
      *(v0 + 1952) = 0;
      *(v0 + 1960) = 0;
      sub_252E330C4();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
      (*(*(v34 - 8) + 8))(v26 + v64, v34);
      *(v0 + 2032) = 0;
      sub_252E330C4();
      *(v0 + 2333) = 2;
      sub_252E330C4();
      *(v0 + 2334) = 2;
      sub_252E330C4();
      *(v0 + 2335) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
      sub_252E330F4();

      sub_25293847C(v80, &qword_27F541B80, &unk_252E4E7B0);
      v35 = sub_25293847C(v68, &qword_27F540068, &qword_252E3BC90);
      goto LABEL_28;
    }

    sub_25293847C(v80, &qword_27F541B80, &unk_252E4E7B0);
  }

LABEL_27:
  v36 = *(v0 + 2200);
  v37 = *(v0 + 2160);
  v38 = *(v0 + 2152);
  v77 = v38;
  v65 = type metadata accessor for DirectInvocationConfig(0);
  v67 = *(*(v65 - 8) + 56);
  v67(v38, 1, 1, v65);
  v75 = v37[5];
  *(v0 + 1792) = 0;
  *(v0 + 1800) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v72 = v37[6];
  *(v0 + 2332) = 0;
  sub_252E330C4();
  *(v0 + 2331) = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v39 = v37[10];
  *(v0 + 1904) = 0;
  *(v0 + 1912) = 0;
  sub_252E330C4();
  v79 = v37[11];
  *(v0 + 2048) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v70 = v37[12];
  *(v0 + 1872) = 0;
  *(v0 + 1880) = 0;
  sub_252E330C4();
  v73 = v37[13];
  *(v0 + 1856) = 0;
  *(v0 + 1864) = 0;
  sub_252E330C4();
  v40 = v37[14];
  v67(v36 + v40, 1, 1, v65);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v42 = *(*(v41 - 8) + 8);
  v42(v36 + v39, v41);
  *(v0 + 1888) = 0;
  *(v0 + 1896) = 0;
  sub_252E330C4();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  (*(*(v43 - 8) + 8))(v36 + v72, v43);
  *(v0 + 2330) = 0;
  sub_252E330C4();
  sub_2529D032C(v77, v36 + v40, &qword_27F540068, &qword_252E3BC90);
  *(v0 + 1728) = 0x69662E6573756F68;
  *(v0 + 1736) = 0xEA00000000006C6CLL;
  sub_252E330C4();
  v42(v36 + v75, v41);
  *(v0 + 1744) = xmmword_252E41BB0;
  sub_252E330C4();
  v42(v36 + v70, v41);
  *(v0 + 1760) = 0;
  *(v0 + 1768) = 0;
  sub_252E330C4();
  v42(v36 + v73, v41);
  *(v0 + 1776) = 0;
  *(v0 + 1784) = 0;
  sub_252E330C4();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  (*(*(v44 - 8) + 8))(v36 + v79, v44);
  *(v0 + 2040) = 0;
  sub_252E330C4();
  *(v0 + 2329) = 2;
  sub_252E330C4();
  *(v0 + 2328) = 2;
  sub_252E330C4();
  *(v0 + 2326) = 48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  v35 = sub_25293847C(v77, &qword_27F540068, &qword_252E3BC90);
LABEL_28:
  *(v0 + 2232) = v18;
  v45 = *(v0 + 2104);
  v46 = *(v0 + 2336);
  v47 = *(v0 + 2088);
  v48 = *(v0 + 2064);
  v49 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v35);
  swift_beginAccess();
  *(v0 + 2240) = *(v49 + 23);

  memcpy((v0 + 1024), (v45 + 152), 0x1F8uLL);
  memcpy((v0 + 16), (v45 + 152), 0x1F8uLL);
  GEOLocationCoordinate2DMake();
  memcpy(__dst, (v0 + 16), 0x1F8uLL);

  sub_2529353AC(v0 + 1024, v0 + 520);
  v50 = v48;
  v51 = sub_252953488(v48, __dst, 0);
  *(v0 + 2248) = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v52 = swift_allocObject();
  *(v0 + 2256) = v52;
  *(v52 + 16) = xmmword_252E3EF90;
  *(v52 + 32) = 0x6974616D6F747561;
  *(v52 + 40) = 0xEA00000000006E6FLL;
  v53 = type metadata accessor for HomeAutomationAutomation();
  *(v52 + 48) = v47;
  *(v52 + 72) = v53;
  *(v52 + 80) = 0x65736E6F70736572;
  *(v52 + 88) = 0xE900000000000073;
  *(v52 + 96) = v83;
  *(v52 + 120) = v81;
  strcpy((v52 + 128), "intentContext");
  *(v52 + 142) = -4864;
  v54 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v52 + 144) = v51;
  *(v52 + 168) = v54;
  *(v52 + 176) = 0xD00000000000001ALL;
  *(v52 + 184) = 0x8000000252E8A330;
  *(v52 + 192) = v46;
  v55 = MEMORY[0x277D839B0];
  *(v52 + 216) = MEMORY[0x277D839B0];
  *(v52 + 224) = 0xD000000000000012;
  *(v52 + 232) = 0x8000000252E91930;
  *(v52 + 264) = v55;
  *(v52 + 240) = 0;
  v82 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v56 = swift_task_alloc();
  *(v0 + 2264) = v56;
  v57 = sub_252CBC424();
  *v56 = v0;
  v56[1] = sub_252CB9D90;

  return v82(0xD00000000000002CLL, 0x8000000252E91900, v52, &type metadata for HomeAutomationCATsSimple.SchedulerFutureActionUILabelsDialogIds, v57);
}

uint64_t sub_252CB9D90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2272) = a1;
  *(v3 + 2280) = v1;

  if (v1)
  {
    v4 = sub_252CB9EDC;
  }

  else
  {

    v4 = sub_252CBA014;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252CB9EDC()
{
  v1 = *(v0 + 2200);

  sub_252CBD6D4(v1, type metadata accessor for IconConfiguration);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252CBA014()
{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2184);
  v23 = *(v0 + 2200);
  v25 = *(v0 + 2176);
  v3 = *(v0 + 2168);
  v4 = *(v0 + 2144);
  v26 = *(v0 + 2104);
  v27 = *(v0 + 2096);
  v5 = *(v0 + 2088);
  *(v0 + 2325) = 2;
  v6 = sub_252E36374();
  v19 = v7;
  v20 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541710, &unk_252E59D20);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C290;
  sub_252BA6E60(v23, v9 + v8, type metadata accessor for IconConfiguration);
  sub_252CBA95C(v5, v1);
  *(v0 + 2324) = 1;
  v10 = sub_252E36374();
  v22 = v11;
  v24 = v10;
  *(v0 + 2320) = 0;
  v21 = sub_252E36374();
  v13 = v12;
  *(v0 + 1968) = v20;
  *(v0 + 1976) = v19;
  sub_252E330C4();
  *(v0 + 2016) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543930, &qword_252E4FE10);
  sub_252E330C4();
  sub_252BA6E60(v1, v2, type metadata accessor for IconConfiguration);
  sub_252BA6E60(v2, v25, type metadata accessor for IconConfiguration);
  sub_252E330C4();
  sub_252CBD6D4(v2, type metadata accessor for IconConfiguration);
  *(v0 + 1696) = v24;
  *(v0 + 1704) = v22;
  sub_252E330C4();
  *(v0 + 1984) = v21;
  *(v0 + 1992) = v13;
  sub_252E330C4();
  *(v0 + 2323) = 1;
  sub_252E330C4();
  sub_252CBD6D4(v1, type metadata accessor for IconConfiguration);
  __swift_project_boxed_opaque_existential_1((v26 + 32), *(v26 + 56));
  v14 = swift_task_alloc();
  *(v0 + 2288) = v14;
  *(v14 + 16) = v27;
  v15 = swift_task_alloc();
  *(v0 + 2296) = v15;
  *(v15 + 16) = v4;
  sub_252B03B94();
  v16 = swift_task_alloc();
  *(v0 + 2304) = v16;
  *v16 = v0;
  v16[1] = sub_252CBA370;
  v17 = *(v0 + 2128);

  return sub_252A199A8(v0 + 1592, &unk_252E59D38, v14, &unk_252E59D48, v15, v17, 0, 0);
}

uint64_t sub_252CBA370()
{
  v2 = *(*v1 + 2128);
  v3 = *(*v1 + 2120);
  v4 = *(*v1 + 2112);
  *(*v1 + 2312) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252CBA654;
  }

  else
  {

    v5 = sub_252CBA4FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252CBA4FC()
{
  v1 = *(v0 + 2200);
  v2 = *(v0 + 2144);
  v3 = *(v0 + 2056);

  sub_252CBD6D4(v1, type metadata accessor for IconConfiguration);
  sub_252927BEC((v0 + 1592), v3);
  sub_252CBD6D4(v2, type metadata accessor for AutomationSnippetModel);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252CBA654()
{
  v1 = v0[275];
  v2 = v0[268];

  sub_252CBD6D4(v1, type metadata accessor for IconConfiguration);

  sub_252CBD6D4(v2, type metadata accessor for AutomationSnippetModel);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252CBA7C8()
{
  v1 = sub_252BE8FD4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_252CBA82C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CBA84C, 0, 0);
}

uint64_t sub_252CBA84C()
{
  v1 = v0[2];
  sub_252BA6E60(v0[3], v1, type metadata accessor for AutomationSnippetModel);
  v2 = type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_252CBA93C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252CBD838, 0, 0);
}

uint64_t sub_252CBA95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v3 = type metadata accessor for IconConfiguration(0);
  MEMORY[0x28223BE20](v3);
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v65 = &v45 - v6;
  v8 = type metadata accessor for DirectInvocationConfig(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 1, 1, v8);
  v60 = v3[5];
  v68 = 0;
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v59 = v3[6];
  LOBYTE(v68) = 0;
  sub_252E330C4();
  v61 = v3[9];
  LOBYTE(v68) = 48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v12 = v3[10];
  v68 = 0;
  v69 = 0;
  sub_252E330C4();
  v64 = v3[11];
  v68 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v14 = v3[12];
  v68 = 0;
  v69 = 0;
  sub_252E330C4();
  v58 = v3[13];
  v68 = 0;
  v69 = 0;
  sub_252E330C4();
  v15 = v3[14];
  v63 = v8;
  v66 = v11;
  v67 = v10;
  v10((a2 + v15), 1, 1, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v19 = v17 + 8;
  v18(a2 + v12, v16);
  v68 = 0;
  v69 = 0;
  sub_252E330C4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  v21 = *(v20 - 8);
  v54 = *(v21 + 8);
  v55 = v20;
  v53 = v21 + 8;
  v54(a2 + v59);
  LOBYTE(v68) = 0;
  sub_252E330C4();
  v22 = a2 + v15;
  v23 = v65;
  sub_2529D032C(v65, v22, &qword_27F540068, &qword_252E3BC90);
  v68 = 0x69662E6B636F6C63;
  v69 = 0xEA00000000006C6CLL;
  sub_252E330C4();
  v18(a2 + v60, v16);
  v68 = 0;
  v69 = 0;
  sub_252E330C4();
  v18(a2 + v14, v16);
  v68 = 0;
  v69 = 0;
  v24 = v23;
  sub_252E330C4();
  v60 = v19;
  v52 = v18;
  v18(v58 + a2, v16);
  v68 = 0;
  v69 = 0;
  sub_252E330C4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  v26 = *(v25 - 8);
  v58 = *(v26 + 8);
  v56 = v26 + 8;
  v58(a2 + v64, v25);
  v68 = 0;
  v64 = v13;
  sub_252E330C4();
  LOBYTE(v68) = 2;
  sub_252E330C4();
  LOBYTE(v68) = 2;
  sub_252E330C4();
  LOBYTE(v68) = 48;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  sub_25293847C(v23, &qword_27F540068, &qword_252E3BC90);
  v27 = sub_252B4E1AC();
  v59 = v25;
  if (v27)
  {
    v50 = 0x8000000252E918E0;
    v28 = v63;
    v67(v24, 1, 1, v63);
    v49 = v3[5];
    v68 = 0;
    v69 = 0;
    v29 = v57;
    sub_252E330C4();
    v46 = v16;
    v30 = v3[6];
    LOBYTE(v68) = 0;
    sub_252E330C4();
    v62 = v3[9];
    LOBYTE(v68) = 48;
    sub_252E330C4();
    v31 = v52;
    v32 = v3[10];
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v51 = v3[11];
    v68 = 0;
    sub_252E330C4();
    v47 = v3[12];
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v48 = v3[13];
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v33 = v3[14];
    v67(v29 + v33, 1, 1, v28);
    v34 = v46;
    v31(v29 + v32, v46);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    (v54)(v29 + v30, v55);
    LOBYTE(v68) = 0;
    sub_252E330C4();
    v35 = v65;
    sub_2529D032C(v65, v29 + v33, &qword_27F540068, &qword_252E3BC90);
    v68 = 0xD000000000000015;
    v69 = v50;
    sub_252E330C4();
    v31(v29 + v49, v34);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v31(v29 + v47, v34);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v31(v29 + v48, v34);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v58(v29 + v51, v59);
    v68 = 0;
    sub_252E330C4();
    LOBYTE(v68) = 2;
    sub_252E330C4();
    LOBYTE(v68) = 2;
    sub_252E330C4();
    LOBYTE(v68) = 48;
    sub_252E330F4();
    v36 = v35;
  }

  else
  {
    v37 = v67;
    v38 = v63;
    result = sub_252B4DFA4();
    if ((result & 1) == 0)
    {
      return result;
    }

    v50 = 0x8000000252E918C0;
    v37(v23, 1, 1, v38);
    v49 = v3[5];
    v68 = 0;
    v69 = 0;
    v29 = v57;
    sub_252E330C4();
    v40 = v3[6];
    LOBYTE(v68) = 0;
    sub_252E330C4();
    v62 = v3[9];
    LOBYTE(v68) = 48;
    sub_252E330C4();
    v41 = v52;
    v42 = v3[10];
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v51 = v3[11];
    v68 = 0;
    sub_252E330C4();
    v47 = v3[12];
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v48 = v3[13];
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v43 = v3[14];
    v67(v29 + v43, 1, 1, v63);
    v41(v29 + v42, v16);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    (v54)(v29 + v40, v55);
    LOBYTE(v68) = 0;
    sub_252E330C4();
    v44 = v65;
    sub_2529D032C(v65, v29 + v43, &qword_27F540068, &qword_252E3BC90);
    v68 = 0xD000000000000013;
    v69 = v50;
    sub_252E330C4();
    v41(v29 + v49, v16);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v41(v29 + v47, v16);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v41(v29 + v48, v16);
    v68 = 0;
    v69 = 0;
    sub_252E330C4();
    v58(v29 + v51, v59);
    v68 = 0;
    sub_252E330C4();
    LOBYTE(v68) = 2;
    sub_252E330C4();
    LOBYTE(v68) = 2;
    sub_252E330C4();
    LOBYTE(v68) = 48;
    sub_252E330F4();
    v36 = v44;
  }

  sub_25293847C(v36, &qword_27F540068, &qword_252E3BC90);
  sub_252CBD6D4(a2, type metadata accessor for IconConfiguration);
  return sub_252B42FDC(v29, a2);
}

uint64_t sub_252CBB4A4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  memcpy(__dst, v0 + 19, sizeof(__dst));
  sub_252935408(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_252CBB540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_252CBB604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_252CBB6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_252CBB78C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252CB1250(a1, a2);
}

uint64_t sub_252CBB838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_252CBB8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_252CBB9C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CB5A54(a1, a2);
}

uint64_t sub_252CBBA6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_252CBC1D8(a1, a2);
}

uint64_t sub_252CBBB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_252E37834();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_252CBBC4C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_252CBD82C(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CBBDB0(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_252CBBEB0(uint64_t result, _OWORD *a2, uint64_t a3)
{
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (!a2)
  {
LABEL_28:
    v36 = *(v3 + 16);
    *result = *v3;
    *(result + 16) = v36;
    *(result + 32) = *(v3 + 32);
    *(result + 48) = *(v3 + 48);
    *(result + 56) = v6;
    *(result + 64) = v5;
    *(result + 72) = v7;
    sub_252CBD82C(v6, v5, v7 & 1);
    return 0;
  }

  v8 = a3;
  v47 = *(v3 + 8);
  if (!a3)
  {
    v37 = result;
    v17 = *(v3 + 8);
    v38 = *(v3 + 16);
    sub_252CBD82C(v6, v47, v7 & 1);
    v39 = v38;
    v40 = v37;
LABEL_32:
    v42 = *(v3 + 16);
    *v40 = *v3;
    *(v40 + 16) = v42;
    *(v40 + 32) = *(v3 + 32);
    *(v40 + 48) = *(v3 + 48);
    *(v40 + 56) = v6;
    *(v40 + 64) = v17;
    *(v40 + 72) = v39;
    return v8;
  }

  if (a3 < 0)
  {
LABEL_41:
    __break(1u);
  }

  else
  {
    v44 = result;
    v9 = *(v3 + 24);
    v10 = *(v3 + 40);
    v49 = *(v3 + 32);
    v11 = *(v3 + 48);
    v3 = *(v3 + 8);
    v12 = v7;
    sub_252CBD82C(v6, v47, v7 & 1);
    v13 = v12;
    result = 0;
    v48 = v10;
    v14 = v12 | v10;
    v45 = v8;
    v15 = 1;
    v16 = v6;
    v17 = v47;
    v46 = v13;
    while ((v14 & 1) == 0)
    {
      if (v17 != v49)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v16 == v9)
      {
        v50[0] = 0;
        v41 = *(v43 + 16);
        *v44 = *v43;
        *(v44 + 16) = v41;
        *(v44 + 32) = *(v43 + 32);
        *(v44 + 48) = *(v43 + 48);
        *(v44 + 56) = v9;
        *(v44 + 64) = v17;
        v8 = result;
        *(v44 + 72) = 0;
        return v8;
      }

      if (v13)
      {
        goto LABEL_43;
      }

      if (v16 < v6)
      {
        goto LABEL_35;
      }

      if (v49 != v3)
      {
        goto LABEL_36;
      }

      if (v16 >= v9)
      {
        goto LABEL_37;
      }

      if (v16 < 0)
      {
        goto LABEL_38;
      }

      v18 = 1 << *(v11 + 32);
      if (v16 >= v18)
      {
        goto LABEL_38;
      }

      v19 = v16 >> 6;
      v20 = *(v11 + 56 + 8 * (v16 >> 6));
      if (((v20 >> v16) & 1) == 0)
      {
        goto LABEL_39;
      }

      if (*(v11 + 36) != v49)
      {
        goto LABEL_40;
      }

      v21 = (*(v11 + 48) + (v16 << 6));
      v23 = v21[2];
      v22 = v21[3];
      v24 = v21[1];
      v51 = *v21;
      v52 = v24;
      v53 = v23;
      v54 = v22;
      v25 = v20 & (-2 << (v16 & 0x3F));
      if (v25)
      {
        v16 = __clz(__rbit64(v25)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v26 = v13;
        sub_252C76A80(&v51, v50);
        v13 = v26;
      }

      else
      {
        v27 = v19 << 6;
        v28 = v19 + 1;
        v29 = (v11 + 64 + 8 * v19);
        while (v28 < (v18 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_252C76A80(&v51, v50);
            sub_252ACBF38(v16, v17, 0);
            v16 = __clz(__rbit64(v30)) + v27;
            goto LABEL_23;
          }
        }

        sub_252C76A80(&v51, v50);
        sub_252ACBF38(v16, v17, 0);
        v16 = v18;
LABEL_23:
        v8 = v45;
        v13 = v46;
        v3 = v47;
      }

      v17 = *(v11 + 36);
      v32 = v51;
      v33 = v52;
      v34 = v54;
      a2[2] = v53;
      a2[3] = v34;
      *a2 = v32;
      a2[1] = v33;
      if (v15 == v8)
      {
        v39 = 0;
        v50[0] = 0;
        v6 = v16;
        v3 = v43;
        v40 = v44;
        goto LABEL_32;
      }

      a2 += 4;
      result = v15;
      v14 = v48;
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_252CBC1D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CBC298, 0, 0);
}

uint64_t sub_252CBC298()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C70);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E91800, 0xD000000000000088, 0x8000000252E91830);
  v6 = objc_allocWithZone(type metadata accessor for AutomateHomeIntentHandler());

  [v6 init];
  type metadata accessor for AutomateHomeIntent();
  v7 = v4;
  sub_252E336E4();
  sub_252E33784();
  v8 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

unint64_t sub_252CBC424()
{
  result = qword_27F544B60;
  if (!qword_27F544B60)
  {
    result = swift_getWitnessTable(byte_252E5CBF4, &type metadata for HomeAutomationCATsSimple.SchedulerFutureActionUILabelsDialogIds, v0, v1);
    atomic_store(result, &qword_27F544B60);
  }

  return result;
}

uint64_t sub_252CBC478()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252CBA7A8(v2);
}

uint64_t sub_252CBC50C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252CBA82C(a1, v4);
}

uint64_t sub_252CBC5AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB86E8(v0);
}

uint64_t sub_252CBC63C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB85FC(v0);
}

uint64_t sub_252CBC6CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB8114(v0);
}

uint64_t sub_252CBC75C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252CB7F28(v0);
}

uint64_t sub_252CBC7EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252CB7BF4(v2, v3);
}

uint64_t sub_252CBC884()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252CB773C(v2, v3);
}

uint64_t sub_252CBC91C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252CBC9B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = sub_252E37834();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_252CBBC4C(v6, v7, 0, v4, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    result = sub_252E37834();
    if (v14 == 255)
    {
      v15 = -v8;
    }

    else
    {
      v15 = v9;
    }

    if (v14 == 255)
    {
      v16 = v7;
    }

    else
    {
      v16 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v17 = *(a2 + 36);
    if (v17 == v16)
    {
      if (v15 >= result)
      {
        v21[0] = result;
        v21[1] = v17;
        v22 = 0;
        v23 = v15;
        v24 = v16;
        v25 = 0;
        result = sub_252CBBB68(v21, a2, v19);
        v18 = v19[1];
        *a3 = v19[0];
        *(a3 + 16) = v18;
        *(a3 + 32) = v19[2];
        *(a3 + 48) = v20;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_252CBCAD0(unint64_t a1, char *a2)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v62 = type metadata accessor for IconConfiguration(0);
  v53 = *(v62 - 8);
  v8 = MEMORY[0x28223BE20](v62);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v11;

  v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);
  sub_252929E74((v13 + 192), &v81);

  v80 = &v81;
  v14 = sub_252CB0F18(sub_252CBD810, v79, a1);
  v15 = sub_252C76980(v14);

  __swift_destroy_boxed_opaque_existential_1(&v81);
  sub_252CBC9B0(5, v15, &v83);

  v17 = v83;
  v16 = v84;
  v18 = v85;
  v20 = v86;
  v19 = v87;
  v21 = v88;
  v22 = v89;
  v23 = sub_252CBBDB0(v83, v84, v85, v86, v87, v88, v89);
  if (v23)
  {
    v24 = v23;
    v25 = sub_252DFA73C(v23, 0);
    v26 = v18;
    v27 = v21;
    v28 = v19;
    v29 = v20;
    v30 = v25;
    LODWORD(v74) = v26;
    sub_252CBD82C(v17, v16, v26);
    v75 = v29;
    sub_252CBD82C(v29, v28, v27);
    v76 = v22;

    v31 = sub_252CBBEB0(&v81, v30 + 2, v24);
    sub_25293847C(&v81, &unk_27F544B70, &unk_252E59E28);
    if (v31 != v24)
    {
      goto LABEL_27;
    }

    sub_252ACBF38(v17, v16, v74);
    sub_252ACBF38(v75, v28, v27);
  }

  else
  {
    sub_252ACBF38(v17, v16, v18);
    sub_252ACBF38(v20, v19, v21);

    v30 = MEMORY[0x277D84F90];
  }

  v32 = [v77 userTask];
  if (v32)
  {
    v33 = v32;
    v57 = sub_2529C74F8();
  }

  else
  {
    v57 = 0;
  }

  v61 = v30[2];
  if (!v61)
  {
    v60 = MEMORY[0x277D84F90];
LABEL_25:

    return;
  }

  v34 = 0;
  v59 = (v53 + 56);
  v54 = (v53 + 48);
  v35 = v30 + 11;
  v60 = MEMORY[0x277D84F90];
  v56 = v7;
  v55 = v30;
  while (v34 < v30[2])
  {
    v36 = *(v35 - 1);
    if (v36)
    {
      v37 = *(v35 - 6);
      v72 = *(v35 - 7);
      v38 = *(v35 - 4);
      v39 = *v35;
      v77 = v34;
      if (v57)
      {
        v70 = 0xE400000000000000;
        v73 = 2036429415;
      }

      else
      {
        v73 = *(v35 - 2);

        v70 = v36;
      }

      v40 = type metadata accessor for DirectInvocationConfig(0);
      v64 = *(*(v40 - 8) + 56);
      v64(v78, 1, 1, v40);
      v41 = v62;
      v67 = *(v62 + 20);
      v81 = 0;
      v82 = 0;

      v63 = v37;
      swift_bridgeObjectRetain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v76 = v36;
      sub_252E330C4();
      v65 = v41[6];
      LOBYTE(v81) = 0;
      sub_252E330C4();
      v74 = v41[9];
      LOBYTE(v81) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
      sub_252E330C4();
      v75 = v38;
      v42 = v41[10];
      v81 = 0;
      v82 = 0;
      sub_252E330C4();
      v68 = v41[11];
      v81 = 0;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
      sub_252E330C4();
      v71 = v39;
      v43 = v41[12];
      v81 = 0;
      v82 = 0;
      sub_252E330C4();
      v66 = v41[13];
      v81 = 0;
      v82 = 0;
      sub_252E330C4();
      v44 = v41[14];
      v64(&v10[v44], 1, 1, v40);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
      v46 = *(*(v45 - 8) + 8);
      v46(&v10[v42], v45);
      v81 = 0;
      v82 = 0;
      sub_252E330C4();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
      (*(*(v47 - 8) + 8))(&v10[v65], v47);
      LOBYTE(v81) = 0;
      sub_252E330C4();
      sub_2529D032C(v78, &v10[v44], &qword_27F540068, &qword_252E3BC90);
      v81 = v72;
      v82 = v63;
      sub_252E330C4();
      v46(&v10[v67], v45);
      v81 = v73;
      v82 = v70;
      sub_252E330C4();
      v46(&v10[v43], v45);
      v81 = 0;
      v82 = 0;
      sub_252E330C4();
      v46(&v10[v66], v45);
      v81 = 0;
      v82 = 0;
      sub_252E330C4();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
      (*(*(v48 - 8) + 8))(&v10[v68], v48);
      v81 = 0;
      sub_252E330C4();
      LOBYTE(v81) = 2;
      sub_252E330C4();
      LOBYTE(v81) = 2;
      sub_252E330C4();
      LOBYTE(v81) = 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
      sub_252E330F4();
      sub_25293847C(v78, &qword_27F540068, &qword_252E3BC90);
      v7 = v56;
      sub_252B42FDC(v10, v56);
      (*v59)(v7, 0, 1, v41);

      v49 = (*v54)(v7, 1, v41);
      v30 = v55;
      v34 = v77;
      if (v49 != 1)
      {
        sub_252B42FDC(v7, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2529F9780(0, v60[2] + 1, 1, v60);
        }

        v51 = v60[2];
        v50 = v60[3];
        if (v51 >= v50 >> 1)
        {
          v60 = sub_2529F9780((v50 > 1), v51 + 1, 1, v60);
        }

        v52 = v60;
        v60[2] = v51 + 1;
        sub_252B42FDC(v58, v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51);
        goto LABEL_12;
      }
    }

    else
    {
      (*v59)(v7, 1, 1, v62);
    }

    sub_25293847C(v7, &qword_27F541B50, &unk_252E47970);
LABEL_12:
    ++v34;
    v35 += 8;
    if (v61 == v34)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_252CBD5A0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252CBA91C(v2);
}

uint64_t sub_252CBD634(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252CBA93C(a1, v4);
}

uint64_t sub_252CBD6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252CBD734()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252CBD7C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252CBD82C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_252CBD848(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];
  v5 = [a1 label];
  [v4 setConfirmText_];

  v6 = [a1 commands];
  [v4 setConfirmCommands_];

  v7 = [a2 label];
  [v4 setDenyText_];

  v8 = [a2 commands];
  [v4 setDenyCommands_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C3D0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_252CBE3E8();
  v10 = a1;
  v11 = a2;
  v12 = sub_252E37254();

  [v4 setAllConfirmationOptions_];

  return v4;
}

uint64_t sub_252CBD9DC()
{
  v0 = objc_opt_self();
  v1 = sub_252D15950(0);
  v2 = [v0 wrapCommandInStartLocalRequest_];

  v3 = sub_252D15950(1);
  v4 = [v0 wrapCommandInStartLocalRequest_];

  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 136), v33);

  v7 = v34;
  v8 = v35;
  v9 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v10 + 16), v32);

  (*(v8 + 96))(0x4542414C5F534559, 0xE90000000000004CLL, 0x736C6562614CLL, 0xE600000000000000, v32, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v11 = __swift_destroy_boxed_opaque_existential_1(v33);
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  sub_252929E74((v12 + 136), v33);

  v13 = v34;
  v14 = v35;
  v15 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
  sub_252929E74((v16 + 16), v32);

  (*(v14 + 96))(0x4C4542414C5F4F4ELL, 0xE800000000000000, 0x736C6562614CLL, 0xE600000000000000, v32, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252E3C130;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_252E3C130;
  *(v18 + 32) = v2;
  v19 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v31 = v2;
  v20 = [v19 init];
  v21 = sub_252E36F04();

  [v20 setLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B88, &qword_252E59E38);
  v22 = sub_252E37254();

  [v20 setCommands_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_252E3C130;
  *(v23 + 32) = v4;
  v24 = objc_allocWithZone(MEMORY[0x277D47A28]);
  v25 = v4;
  v26 = [v24 init];
  v27 = sub_252E36F04();

  [v26 setLabel_];

  v28 = sub_252E37254();

  [v26 setCommands_];

  v29 = sub_252CBD848(v20, v26);
  *(v17 + 32) = v29;

  return v17;
}

unint64_t sub_252CBDDD4(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 16), &v53);

  __swift_project_boxed_opaque_existential_1(&v53, v55);
  v2 = sub_252E338C4();
  v3 = __swift_destroy_boxed_opaque_existential_1(&v53);
  if ((v2 & 1) == 0)
  {
    v9 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
    sub_252929E74((v9 + 16), &v53);

    __swift_project_boxed_opaque_existential_1(&v53, v55);
    v10 = sub_252E33854();
    __swift_destroy_boxed_opaque_existential_1(&v53);
    if ((v10 & 1) == 0)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      __swift_project_value_buffer(v45, qword_27F544D18);
      v46 = sub_252E36AC4();
      v47 = sub_252E374B4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_252917000, v46, v47, "[ConfirmationViewBuilder] Building views for IOS", v48, 2u);
        MEMORY[0x2530AED00](v48, -1, -1);
      }

      v12 = sub_252CBD9DC();
      if (v12 >> 62)
      {
        goto LABEL_40;
      }

      goto LABEL_12;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D18);
    v5 = sub_252E36AC4();
    v6 = sub_252E374B4();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "[ConfirmationViewBuilder] Building views for CarDND";
    goto LABEL_10;
  }

  if (qword_27F53F4D0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544D18);
    v5 = sub_252E36AC4();
    v6 = sub_252E374B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "[ConfirmationViewBuilder] Building views for Watch";
LABEL_10:
      _os_log_impl(&dword_252917000, v5, v6, v8, v7, 2u);
      MEMORY[0x2530AED00](v7, -1, -1);
    }

LABEL_11:

    v12 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_40:
      v13 = sub_252E378C4();
    }

    else
    {
LABEL_12:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D84F90];
    if (!v13)
    {
      break;
    }

    v52 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v14 = v52;
      v50 = v13;
      v51 = v12 & 0xC000000000000001;
      v49 = v12 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v51)
        {
          v17 = MEMORY[0x2530ADF00](v15, v12);
        }

        else
        {
          if (v15 >= *(v49 + 16))
          {
            goto LABEL_42;
          }

          v17 = *(v12 + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = [v17 encodedClassName];
        if (v19)
        {
          v20 = v19;
          v21 = sub_252E36F34();
          v23 = v22;
        }

        else
        {
          v21 = 0x416E776F6E6B6E55;
          v23 = 0xEE00776569566563;
        }

        v24 = v12;
        v25 = [v18 aceId];
        if (v25)
        {
          v26 = v25;
          v27 = sub_252E36F34();
          v29 = v28;
        }

        else
        {
          v29 = 0xE300000000000000;
          v27 = 7104878;
        }

        v53 = v21;
        v54 = v23;
        MEMORY[0x2530AD570](0x3D64496563615BLL, 0xE700000000000000);
        MEMORY[0x2530AD570](v27, v29);

        MEMORY[0x2530AD570](93, 0xE100000000000000);

        v30 = v53;
        v31 = v54;
        v33 = *(v52 + 16);
        v32 = *(v52 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_2529AA3A0((v32 > 1), v33 + 1, 1);
        }

        *(v52 + 16) = v33 + 1;
        v34 = v52 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        ++v15;
        v12 = v24;
        if (v16 == v50)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

LABEL_30:
  if (qword_27F53F4D0 == -1)
  {
    goto LABEL_31;
  }

LABEL_43:
  swift_once();
LABEL_31:
  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544D18);

  v36 = sub_252E36AC4();
  v37 = sub_252E374B4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v53 = v39;
    *v38 = 136315138;
    v40 = MEMORY[0x2530AD730](v14, MEMORY[0x277D837D0]);
    v42 = v41;

    v43 = sub_252BE2CE0(v40, v42, &v53);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_252917000, v36, v37, "ConfirmationViewBuilder: Built views: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2530AED00](v39, -1, -1);
    MEMORY[0x2530AED00](v38, -1, -1);
  }

  else
  {
  }

  return v12;
}

unint64_t sub_252CBE3E8()
{
  result = qword_27F544B90;
  if (!qword_27F544B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F544B90);
  }

  return result;
}

uint64_t ShowHomeFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_25293DEE0(__src);
  memcpy((v0 + 16), __src, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 520) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);
  *v3 = sub_252CBEAB4;
  v3[1] = 0;
  return v0;
}

HomeAutomationInternal::ShowHomeFlow::State_optional __swiftcall ShowHomeFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ShowHomeFlow.State.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6553746E65746E69;
  v3 = 0x6572506E69676562;
  v4 = 0x456F547964616572;
  if (v1 != 3)
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_252CBE628()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252CBE734(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252CBE82C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252CBE940(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F697463656CLL;
  v4 = 0x6553746E65746E69;
  v5 = 0xEF737365636F7270;
  v6 = 0x6572506E69676562;
  v7 = 0xEE00657475636578;
  v8 = 0x456F547964616572;
  if (v2 != 3)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000252E67F20;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ShowHomeFlow.init()()
{
  sub_25293DEE0(v5);
  memcpy((v0 + 16), v5, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + 520) = 0;
  v3 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);
  *v3 = sub_252CBEAB4;
  v3[1] = 0;
  return v0;
}

uint64_t sub_252CBEAB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 520) > 1u || *(v1 + 520))
  {
    v10 = sub_252E37DB4();

    if ((v10 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD000000000000076, 0x8000000252E91A80);
      goto LABEL_19;
    }
  }

  else
  {
  }

  v11 = a1;
  v33 = v1;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v12 = sub_252E36804();
  v14 = v13;

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C290;
    *(v15 + 32) = 25705;
    v16 = v15 + 32;
    *(v15 + 72) = MEMORY[0x277D837D0];
    *(v15 + 40) = 0xE200000000000000;
    *(v15 + 48) = v12;
    *(v15 + 56) = v14;
    sub_252CC630C(v15);
    swift_setDeallocating();
    sub_25293847C(v16, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v18 = [objc_opt_self() sharedAnalytics];
  if (v18)
  {
    v19 = v18;

    sub_252CC1408(v20);

    v21 = sub_252E36E24();

    [v19 logEventWithType:6503 context:v21];
  }

  else
  {
  }

  sub_252E340E4();
  sub_252AB3FEC(v9, 0, v36);
  v22 = *(v7 + 8);
  v22(v9, v6);
  memcpy(v37, v36, sizeof(v37));
  memcpy(v38, v36, 0x1F8uLL);
  if (sub_252956B94(v38) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544DA8);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v22(v9, v6);
    sub_252CC3D90(v36[0], v36[1], 0xD000000000000076, 0x8000000252E91A80);

    sub_2529515FC(1, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
    goto LABEL_19;
  }

  v24 = LOBYTE(v38[26]);
  if (LOBYTE(v38[26]) == 9)
  {
    sub_25293847C(v37, &qword_27F5404C8, &unk_252E3FD60);
LABEL_19:
    v25 = 0;
    return v25 & 1;
  }

  memcpy(v35, v38, sizeof(v35));
  GEOLocationCoordinate2DMake();
  v27 = v33;
  memcpy(v36, (v33 + 16), sizeof(v36));
  memcpy((v33 + 16), v35, 0x1F8uLL);
  sub_2529353AC(v38, &v34);
  sub_25293847C(v36, &qword_27F5404C8, &unk_252E3FD60);
  v28 = sub_252E34104();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v5, v11, v28);
  (*(v29 + 56))(v5, 0, 1, v28);
  v30 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  swift_beginAccess();
  sub_252B7B518(v5, v27 + v30);
  v31 = swift_endAccess();
  sub_252B680FC(v31);
  sub_252B6796C();

  swift_unknownObjectRelease();
  if (v24 == 3)
  {

    sub_25293847C(v37, &qword_27F5404C8, &unk_252E3FD60);
    v25 = 1;
  }

  else
  {
    v25 = sub_252E37DB4();

    sub_25293847C(v37, &qword_27F5404C8, &unk_252E3FD60);
  }

  return v25 & 1;
}

uint64_t sub_252CBF2EC(uint64_t a1)
{
  v2[1017] = v1;
  v2[1016] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B8, &qword_252E4E448);
  v2[1018] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437C0, &qword_252E4E450);
  v2[1019] = v3;
  v2[1020] = *(v3 - 8);
  v2[1021] = swift_task_alloc();
  v2[1022] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[1023] = swift_task_alloc();
  v2[1024] = swift_task_alloc();
  v4 = sub_252E34104();
  v2[1025] = v4;
  v2[1026] = *(v4 - 8);
  v2[1027] = swift_task_alloc();
  v2[1028] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252CBF4A4, 0, 0);
}

uint64_t sub_252CBF4A4()
{
  v51 = v0;
  v1 = v0[1026];
  v2 = v0[1025];
  v3 = v0[1024];
  v4 = v0[1017];
  v5 = OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v4 + v5, v3, &qword_27F543798, &unk_252E4E410);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_25293847C(v0[1024], &qword_27F543798, &unk_252E4E410);
LABEL_5:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = v0[1023];
    v8 = v0[1017];
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E91B00);
    memcpy(v0 + 2, (v8 + 16), 0x1F8uLL);
    memcpy(v0 + 65, (v8 + 16), 0x1F8uLL);
    sub_252938414((v0 + 2), (v0 + 128), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    sub_252938414(v4 + v5, v7, &qword_27F543798, &unk_252E4E410);
    v11 = sub_252E36F94();
    MEMORY[0x2530AD570](v11);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E91A80);

    sub_252E33B24();
    goto LABEL_8;
  }

  v6 = v0[1017];
  (*(v0[1026] + 32))(v0[1028], v0[1024], v0[1025]);
  memcpy(v0 + 254, (v6 + 16), 0x1F8uLL);
  memcpy(v0 + 191, (v6 + 16), 0x1F8uLL);
  if (sub_252956B94(v0 + 191) == 1)
  {
    (*(v0[1026] + 8))(v0[1028], v0[1025]);
    goto LABEL_5;
  }

  v14 = v0[1017];
  v15 = *(v14 + 520);
  if (v15 <= 1)
  {
    if (*(v14 + 520))
    {
      memcpy(v0 + 695, v0 + 254, 0x1F8uLL);
      sub_2529353AC((v0 + 695), (v0 + 758));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v34 = v0[1028];
      v35 = v0[1027];
      v36 = v0[1026];
      v37 = v0[1025];
      v38 = sub_252E36AD4();
      __swift_project_value_buffer(v38, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD000000000000076, 0x8000000252E91A80);
      memcpy(__dst, v0 + 191, 0x1F8uLL);
      (*(v36 + 16))(v35, v34, v37);
      memcpy(v0 + 632, v0 + 254, 0x1F8uLL);
      sub_2529353AC((v0 + 632), (v0 + 821));
      if (qword_27F53F430 != -1)
      {
        swift_once();
      }

      v39 = qword_27F575A98;
      v40 = qword_27F53F218;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = qword_27F5753E0;
      v42 = qword_27F53F8A0;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = qword_27F575DC0;
      v44 = qword_27F53F880;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = v0[1027];
      v46 = v0[1026];
      v48 = v0[1025];
      v49 = v0[1028];
      v47 = qword_27F575DA0;
      type metadata accessor for IntentSelectionFlow();
      swift_allocObject();

      v0[1014] = sub_252D3FCBC(__dst, v45, v39, v41, v43, v47);
      sub_252CC0998(&qword_27F543808, type metadata accessor for IntentSelectionFlow, protocol conformance descriptor for IntentSelectionFlow);

      sub_252E33AC4();

      sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);

      (*(v46 + 8))(v49, v48);
    }

    else
    {
      memcpy(v0 + 884, v0 + 254, 0x1F8uLL);
      sub_2529353AC((v0 + 884), (v0 + 947));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v17 = v0[1028];
      v18 = v0[1026];
      v19 = v0[1025];
      v20 = v0[1017];
      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E91B20, 0xD000000000000076, 0x8000000252E91A80);
      v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_guardFlowSupplier);

      v23 = v22(v20);

      v24 = type metadata accessor for HomeStore(0);
      v25 = static HomeStore.shared.getter(v24);
      sub_2529E0898();

      v0[1015] = v23;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_252CC07AC;
      *(v26 + 24) = v20;
      sub_252E33454();

      sub_252E33AC4();

      sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
      (*(v18 + 8))(v17, v19);
    }

    goto LABEL_8;
  }

  if (v15 == 2)
  {
    v27 = v0[1028];
    v28 = v0[1026];
    v29 = v0[1025];
    *(v14 + 520) = 3;
    sub_252E33AB4();
    (*(v28 + 8))(v27, v29);
LABEL_8:

    v12 = v0[1];

    return v12();
  }

  if (v15 != 3)
  {
    memcpy(v0 + 317, v0 + 254, 0x1F8uLL);
    sub_2529353AC((v0 + 317), (v0 + 380));
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v30 = v0[1028];
    v31 = v0[1026];
    v32 = v0[1025];
    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544DA8);
    sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD000000000000076, 0x8000000252E91A80);
    sub_252E33B24();
    sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
    (*(v31 + 8))(v30, v32);
    goto LABEL_8;
  }

  memcpy(v0 + 506, v0 + 191, 0x1F8uLL);
  memcpy(v0 + 443, v0 + 254, 0x1F8uLL);
  sub_2529353AC((v0 + 443), (v0 + 569));
  v16 = swift_task_alloc();
  v0[1029] = v16;
  *v16 = v0;
  v16[1] = sub_252CBFEE0;

  return sub_252976614();
}

uint64_t sub_252CBFEE0(uint64_t a1)
{
  *(*v1 + 8240) = a1;

  return MEMORY[0x2822009F8](sub_252CBFFE0, 0, 0);
}

uint64_t sub_252CBFFE0()
{
  sub_252B798A8();
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E82BE0, 0xD000000000000076, 0x8000000252E91A80);
  type metadata accessor for ShowHomeRCHStrategy();
  v0[1013] = swift_allocObject();
  sub_252B791F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437F8, &unk_252E4E460);
  swift_allocObject();
  sub_252E335D4();
  sub_252CC0998(&qword_27F543800, type metadata accessor for ShowHomeRCHStrategy, protocol conformance descriptor for ShowHomeRCHStrategy);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v2 = v0[1030];
  v3 = v0[1028];
  v4 = v0[1026];
  v5 = v0[1025];
  v6 = v0[1021];
  v7 = v0[1020];
  v8 = v0[1019];
  sub_252E33A34();
  (*(v7 + 8))(v6, v8);
  sub_252E33B14();

  sub_25293847C((v0 + 254), &qword_27F5404C8, &unk_252E3FD60);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252CC0298(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(a2 + 520) = 3;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake();
  memcpy(v8, (a2 + 16), sizeof(v8));
  memcpy((a2 + 16), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, &v5);
  return sub_25293847C(v8, &qword_27F5404C8, &unk_252E3FD60);
}

uint64_t sub_252CC0340(char a1)
{
  if (a1)
  {
    *(v1 + 520) = 4;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "pdating the flowState to ";
    v4 = 0xD000000000000035;
  }

  else
  {
    *(v1 + 520) = 1;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E91A80);
}

uint64_t ShowHomeFlow.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input, &qword_27F543798, &unk_252E4E410);

  return v0;
}

uint64_t ShowHomeFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal12ShowHomeFlow_input, &qword_27F543798, &unk_252E4E410);

  return swift_deallocClassInstance();
}

void (*sub_252CC0618(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252CC06CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252CBF2EC(a1);
}

uint64_t sub_252CC0768(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShowHomeFlow(0);

  return sub_252E33644();
}

unint64_t sub_252CC07B8()
{
  result = qword_27F544C10;
  if (!qword_27F544C10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShowHomeFlow.State, &type metadata for ShowHomeFlow.State, v0, v1);
    atomic_store(result, &qword_27F544C10);
  }

  return result;
}

uint64_t sub_252CC080C(uint64_t a1)
{
  result = sub_252CC0998(&qword_27F544C18, type metadata accessor for ShowHomeFlow, byte_252E59F0C);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ShowHomeFlow(uint64_t a1)
{
  result = qword_27F544C28;
  if (!qword_27F544C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252CC08B0(uint64_t a1)
{
  result = sub_252CC0998(&qword_27F544C20, type metadata accessor for ShowHomeFlow, protocol conformance descriptor for ShowHomeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252CC0998(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_252CC09E8(uint64_t a1)
{
  sub_252B7D9D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ShowHomeFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 224) + **(*v1 + 224));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t sub_252CC0C40(uint64_t a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 208);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (v6 == 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252A0D524(v6, 3u);
  }

  v9 = sub_252E375C4();
  sub_252E36A74(v9, &dword_252917000, v7, "ShouldHandleShowHomeIntent", 26, 2, v5, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v5, v2);
  return v8 & 1;
}

uint64_t sub_252CC0DF0()
{
  v0 = sub_252E334A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23[-1] - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23[-1] - v9;
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8);
  sub_252929E74((v11 + 288), v23);

  v12 = v24;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v14 = (*(v13 + 176))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (v14)
  {
    sub_252E33464();
    (*(v1 + 16))(v7, v10, v0);
    v15 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_2529F90D4((v16 > 1), v17 + 1, 1, v15);
    }

    (*(v1 + 8))(v10, v0);
    v15[2] = v17 + 1;
    (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v7, v0);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_252E33484();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_2529F90D4(0, v15[2] + 1, 1, v15);
  }

  v19 = v15[2];
  v18 = v15[3];
  if (v19 >= v18 >> 1)
  {
    v15 = sub_2529F90D4((v18 > 1), v19 + 1, 1, v15);
  }

  v15[2] = v19 + 1;
  (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v4, v0);
  v20 = sub_252E33144();

  return v20;
}

unint64_t static Log.AFAnalyticsEventContext(with:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = 25705;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_252CC630C(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &unk_27F541F10, &unk_252E42870);
  return v5;
}

void static Log.AFAnalytics(event:with:)(char *a1, uint64_t a2)
{
  v3 = qword_252E5A6F8[*a1];
  v4 = [objc_opt_self() sharedAnalytics];
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    sub_252CC1408(v6);

    v7 = sub_252E36E24();

    [v5 logEventWithType:v3 context:v7];
  }
}

uint64_t sub_252CC1408(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5451A8, &qword_252E5A528);
    v2 = sub_252E37B54();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_252974E7C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_252A00AF4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_252A00AF4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_252A00AF4(v31, v32);
    result = sub_252E37944();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_252A00AF4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_252CC16D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545288, &qword_252E5A608);
    v1 = sub_252E37B54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 56) + 88 * v13;
        v18 = *(v17 + 16);
        v42[0] = *v17;
        v42[1] = v18;
        v20 = *(v17 + 48);
        v19 = *(v17 + 64);
        v21 = *(v17 + 32);
        v43 = *(v17 + 80);
        v42[3] = v20;
        v42[4] = v19;
        v42[2] = v21;
        v22 = *(v17 + 48);
        v38 = *(v17 + 32);
        v39 = v22;
        v40 = *(v17 + 64);
        v41 = *(v17 + 80);
        v23 = *(v17 + 16);
        v36 = *v17;
        v37 = v23;
        v31[3] = v39;
        v31[4] = v40;
        v32 = v41;
        v31[0] = v36;
        v31[1] = v23;
        v31[2] = v38;

        sub_252ADFB08(v42, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545290, &qword_252E5A610);
        swift_dynamicCast();
        sub_252CC8B1C(v33, v34);
        sub_252CC8B1C(v34, v35);
        sub_252CC8B1C(v35, v31);
        result = sub_252A44A10(v16, v15);
        if (v24)
        {
          v8 = (v1[6] + 16 * result);
          *v8 = v16;
          v8[1] = v15;
          v9 = result;

          v10 = (v1[7] + 48 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_252CC8B1C(v31, v10);
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v25 = (v1[6] + 16 * result);
          *v25 = v16;
          v25[1] = v15;
          result = sub_252CC8B1C(v31, (v1[7] + 48 * result));
          v26 = v1[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_21;
          }

          v1[2] = v28;
          v7 = v11;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_252CC2498(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_252E36AD4();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_252E36AE4();
}

uint64_t sub_252CC2548@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_252CC2644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  *a4 = result;
  return result;
}

uint64_t sub_252CC2720()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_2814B0A20 = result;
  return result;
}

uint64_t sub_252CC280C()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F20 = result;
  return result;
}

uint64_t sub_252CC2940()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F38 = result;
  return result;
}

uint64_t sub_252CC2A24()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F48 = result;
  return result;
}

uint64_t sub_252CC2AC0()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F50 = result;
  return result;
}

uint64_t sub_252CC2C2C()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544F70 = result;
  return result;
}

uint64_t sub_252CC2E80()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FA8 = result;
  return result;
}

uint64_t sub_252CC2F64()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_2814B09F8 = result;
  return result;
}

uint64_t sub_252CC3160()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FC8 = result;
  return result;
}

uint64_t sub_252CC3238()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FD8 = result;
  return result;
}

uint64_t sub_252CC32D4()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FE0 = result;
  return result;
}

uint64_t sub_252CC3370()
{
  sub_25293F638(0, &qword_2814B01E0, 0x277D86200);
  result = sub_252E37704();
  qword_27F544FE8 = result;
  return result;
}

id sub_252CC340C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

unint64_t sub_252CC3480(void *a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  sub_25293F638(0, &qword_27F545340, 0x277CD1D70);
  sub_252A67638(&qword_27F545368, &qword_27F545340, 0x277CD1D70, protocol conformance descriptor for HMResponseBase);
  v1 = sub_252E329A4();
  v3 = v2;

  v5 = objc_opt_self();
  v6 = sub_252E32D14();
  sub_25296464C(v1, v3);
  v13[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v13];

  if (v7)
  {
    v8 = v13[0];
    sub_252E377F4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return sub_252CC630C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v10 = v13[0];
    v11 = sub_252E32C54();

    swift_willThrow();
    v9 = sub_252CC630C(MEMORY[0x277D84F90]);
  }

  return v9;
}

uint64_t sub_252CC3698()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252CC3784(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252CC385C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252CC3944@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252CC8AD0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252CC3974(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000074756FLL;
  v4 = 0x656D695469726973;
  v5 = 0x8000000252E68660;
  v6 = 0x8000000252E68680;
  v7 = 0xD000000000000017;
  if (v2 != 3)
  {
    v7 = 0x6E776F6E6B6E75;
    v6 = 0xE700000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000252E68640;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

HomeAutomationInternal::AFAnalyticsEvent_optional __swiftcall AFAnalyticsEvent.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 6503)
  {
    if (rawValue > 6500)
    {
      if (rawValue == 6501)
      {
        *v1 = 2;
      }

      else if (rawValue == 6502)
      {
        *v1 = 3;
      }

      else
      {
        *v1 = 4;
      }

      return rawValue;
    }

    if (rawValue == 3700)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 6500)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_22:
    *v1 = 10;
    return rawValue;
  }

  if (rawValue > 6505)
  {
    switch(rawValue)
    {
      case 6506:
        *v1 = 7;
        return rawValue;
      case 6507:
        *v1 = 8;
        return rawValue;
      case 6508:
        *v1 = 9;
        return rawValue;
    }

    goto LABEL_22;
  }

  if (rawValue == 6504)
  {
    *v1 = 5;
  }

  else
  {
    *v1 = 6;
  }

  return rawValue;
}

uint64_t sub_252CC3B58()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](qword_252E5A6F8[v1]);
  return sub_252E37F14();
}

uint64_t sub_252CC3BE0(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  MEMORY[0x2530AE390](qword_252E5A6F8[v2]);
  return sub_252E37F14();
}

unint64_t sub_252CC3C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5450F0, &qword_252E5A470);
    v3 = sub_252E37B54();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_252A44A10(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_252CC3D90(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v23 = a1;
  v26 = 46;
  v27 = 0xE100000000000000;
  v25 = &v26;
  v7 = sub_252BE9D0C(sub_25296A724, v24, a3, a4);
  if (v8)
  {
    v7 = sub_252E37084();
  }

  v9 = v7;
  v26 = 47;
  v27 = 0xE100000000000000;
  MEMORY[0x28223BE20](v7);
  v22[2] = &v26;
  sub_252BE9D0C(sub_25296A724, v22, a3, a4);
  v11 = v10;

  v12 = sub_252E36AC4();
  v13 = sub_252E374C4();

  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136446466;
LABEL_8:
      v17 = sub_252E37194();
      v18 = MEMORY[0x2530AD4C0](v17);
      v20 = v19;

      v21 = sub_252BE2CE0(v18, v20, &v26);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_252BE2CE0(v23, a2, &v26);
      _os_log_impl(&dword_252917000, v12, v13, "%{public}s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v16, -1, -1);
      MEMORY[0x2530AED00](v15, -1, -1);
    }

LABEL_9:

    return;
  }

  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v26 = v16;
  *v15 = 136446466;
  if (v9 >> 14 >= sub_252E37084() >> 14)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_252CC407C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545318, &qword_252E5A6A0);
  v3 = sub_252E37B54();
  memcpy(__dst, a1 + 4, 0x200uLL);
  v4 = __dst[0];
  v5 = sub_252A44B34(__dst[0]);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_252938414(__dst, v13, &qword_27F545320, &qword_252E5A6A8);
    return v3;
  }

  v7 = a1 + 68;
  while (1)
  {
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    *(v3[6] + 8 * v5) = v4;
    result = memcpy((v3[7] + 504 * v5), &__dst[1], 0x1F8uLL);
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_252938414(__dst, v13, &qword_27F545320, &qword_252E5A6A8);
    memcpy(__dst, v7, 0x200uLL);
    v4 = __dst[0];
    v5 = sub_252A44B34(__dst[0]);
    v7 += 64;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_252CC41F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545308, &qword_252E5A690);
    v3 = sub_252E37B54();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v6 = __dst[63];
      memcpy(__src, v4, 0x1F8uLL);
      sub_252938414(__dst, &v13, &qword_27F545310, &qword_252E5A698);
      result = sub_252A44AB4(__src);
      if (v8)
      {
        break;
      }

      v9 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = memcpy((v3[6] + 504 * result), __src, 0x1F8uLL);
      *(v3[7] + 8 * v9) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_11;
      }

      v3[2] = v12;
      if (!i)
      {

        return v3;
      }

      v4 += 512;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_252CC4370(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(void *))
{
  v38[0] = 47;
  v38[1] = 0xE100000000000000;
  v37 = v38;
  sub_252BE9D0C(a8, v36, a3, a4);
  v15 = v14;

  v16 = sub_252E36AC4();
  v17 = sub_252E374D4();

  v18 = os_log_type_enabled(v16, v17);
  if (v15)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136316162;
      *(v19 + 4) = sub_252BE2CE0(0x65725F7261646172, 0xEF202D2074726F70, v38);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_252BE2CE0(a5, a6, v38);
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_252BE2CE0(a1, a2, v38);
      *(v19 + 32) = 2082;
      v21 = sub_252E37194();
      v22 = MEMORY[0x2530AD4C0](v21);
      v24 = v23;

      v25 = sub_252BE2CE0(v22, v24, v38);

      *(v19 + 34) = v25;
      *(v19 + 42) = 2050;
      *(v19 + 44) = a7;
      _os_log_impl(&dword_252917000, v16, v17, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld", v19, 0x34u);
      swift_arrayDestroy();
      v26 = v20;
LABEL_9:
      MEMORY[0x2530AED00](v26, -1, -1);
      MEMORY[0x2530AED00](v19, -1, -1);
    }

LABEL_10:

    return;
  }

  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v38[0] = v34;
  *v19 = 136316162;
  *(v19 + 4) = sub_252BE2CE0(0x65725F7261646172, 0xEF202D2074726F70, v38);
  *(v19 + 12) = 2082;
  *(v19 + 14) = sub_252BE2CE0(a5, a6, v38);
  *(v19 + 22) = 2080;
  *(v19 + 24) = sub_252BE2CE0(a1, a2, v38);
  *(v19 + 32) = 2082;
  v27 = sub_252E37084();
  v28 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v28 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v28 >= v27 >> 14)
  {
    v29 = sub_252E37194();
    v30 = MEMORY[0x2530AD4C0](v29);
    v32 = v31;

    v33 = sub_252BE2CE0(v30, v32, v38);

    *(v19 + 34) = v33;
    *(v19 + 42) = 2050;
    *(v19 + 44) = a7;
    _os_log_impl(&dword_252917000, v16, v17, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld", v19, 0x34u);
    swift_arrayDestroy();
    v26 = v34;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_252CC47EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545238, &qword_252E5A5B8);
    v3 = sub_252E37B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_252938414(v4, &v13, &qword_27F545240, &qword_252E5A5C0);
      v5 = v13;
      v6 = v14;
      result = sub_252A45854(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_252A00AF4(&v15, (v3[7] + 32 * result));
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