uint64_t sub_2490C911C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_2491100B0;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490C94FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490C95B8, v5, v4);
}

uint64_t sub_2490C95B8()
{
  sub_2490C9618(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490C9618(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 timerIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 timerID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "TimersFired: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 10;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490C9D04(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = sub_24910BFFC();
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v25[1] = sub_24910CC9C();
  v25[2] = v12;
  sub_24910D1FC();
  if (!*(v11 + 16) || (v13 = sub_2490B3064(v26), (v14 & 1) == 0))
  {

    sub_2490B45F0(v26);
LABEL_10:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_11;
  }

  sub_2490A4944(*(v11 + 56) + 32 * v13, &v27);
  sub_2490B45F0(v26);

  if (!*(&v28 + 1))
  {
LABEL_11:
    sub_2490A487C(&v27, &qword_27EED7AE0, &qword_249110088);
LABEL_12:

    v16 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v15 = v26[0];
  v26[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v16 = v26[0];
  if (!v26[0])
  {
    goto LABEL_12;
  }

LABEL_13:
  v17 = sub_24910C34C();
  v18 = sub_24910CDEC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v7, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v16;
  sub_249088588(v7, v5);
  v21 = (*(v19 + 48))(v5, 1, v18);

  if (v21 == 1)
  {
    sub_2490A487C(v5, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v19 + 8))(v5, v18);
  }

  v22 = sub_2490A46DC();
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_249110098;
  *(v23 + 24) = v20;
  v26[5] = 6;
  v26[6] = 0;
  v26[7] = v17;
  v26[8] = v22;

  v24 = v17;
  swift_task_create();
  sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
}

uint64_t sub_2490CA0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  type metadata accessor for DTTimerDaemon(0);
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v5 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CA1A0, v5, v4);
}

uint64_t sub_2490CA1A0()
{
  sub_2490CA200(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490CA200(unint64_t a1)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EEDAE40 != -1)
  {
    goto LABEL_41;
  }

LABEL_2:
  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAE48);

  v8 = sub_24910C87C();
  LODWORD(v9) = sub_24910CF2C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = a1 >> 62;
  v57 = a1;
  v54 = a1 >> 62;
  if (v10)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61[0] = v56;
    *isUniquelyReferenced_nonNull_native = 136315138;
    if (!v11)
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_58;
  }

  while (1)
  {

    if (v11)
    {
      v26 = sub_24910D19C();
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_18:
      v3 = 0;
      v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v56 = (a1 & 0xC000000000000001);
      while (1)
      {
        if (v56)
        {
          v30 = MEMORY[0x24C1F1C90](v3, a1);
        }

        else
        {
          if (v3 >= *(v55 + 16))
          {
            goto LABEL_38;
          }

          v30 = *(a1 + 8 * v3 + 32);
        }

        v31 = v30;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
          goto LABEL_2;
        }

        v58 = v3 + 1;
        v32 = [v30 timerIDString];
        v33 = sub_24910CC9C();
        a1 = v34;

        v35 = v59;
        swift_beginAccess();
        v9 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v35 + v6);
        v36 = v60;
        v11 = v6;
        *(v35 + v6) = 0x8000000000000000;
        v4 = sub_2490A0A3C(v33, a1);
        v38 = v36[2];
        v39 = (v37 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_39;
        }

        v6 = v37;
        if (v36[3] >= v40)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v37)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_2490CCD24(&qword_27EED7AB8, &qword_249110038);
            if (v6)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_2490CCE80(v40, isUniquelyReferenced_nonNull_native, &qword_27EED7AB8, &qword_249110038);
          v41 = sub_2490A0A3C(v33, a1);
          if ((v6 & 1) != (v42 & 1))
          {
            goto LABEL_60;
          }

          v4 = v41;
          if (v6)
          {
LABEL_19:

            v27 = v60;
            v28 = v60[7];
            v29 = *(v28 + 8 * v4);
            *(v28 + 8 * v4) = v9;

            goto LABEL_20;
          }
        }

        v27 = v60;
        v60[(v4 >> 6) + 8] |= 1 << v4;
        v43 = (v27[6] + 16 * v4);
        *v43 = v33;
        v43[1] = a1;
        *(v27[7] + 8 * v4) = v9;
        v44 = v27[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_40;
        }

        v27[2] = v46;
LABEL_20:
        v6 = v11;
        *(v59 + v11) = v27;
        swift_endAccess();

        ++v3;
        a1 = v57;
        if (v58 == v26)
        {
          goto LABEL_43;
        }
      }
    }

    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_43:
    if (v54)
    {
      v8 = sub_24910D19C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (!v8)
    {
      goto LABEL_54;
    }

    v61[0] = MEMORY[0x277D84F90];
    sub_24910D2CC();
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_58:
    v12 = sub_24910D19C();
LABEL_5:
    v13 = MEMORY[0x277D84F90];
    v58 = isUniquelyReferenced_nonNull_native;
    if (v12)
    {
      v60 = MEMORY[0x277D84F90];
      sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
LABEL_60:
        result = sub_24910D57C();
        __break(1u);
        return result;
      }

      v53 = v9;
      v55 = v8;
      v14 = 0;
      v13 = v60;
      v15 = a1 & 0xC000000000000001;
      do
      {
        if (v15)
        {
          v16 = MEMORY[0x24C1F1C90](v14, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = [v16 timerID];
        sub_24910C2CC();

        v60 = v13;
        v20 = v13[2];
        v19 = v13[3];
        if (v20 >= v19 >> 1)
        {
          sub_2490CC8F8((v19 > 1), v20 + 1, 1);
          v13 = v60;
        }

        ++v14;
        v13[2] = v20 + 1;
        (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
        a1 = v57;
      }

      while (v12 != v14);
      v11 = v54;
      v8 = v55;
      LODWORD(v9) = v53;
    }

    v21 = MEMORY[0x24C1F1790](v13, v3);
    v23 = v22;

    v24 = sub_24909F930(v21, v23, v61);

    isUniquelyReferenced_nonNull_native = v58;
    *(v58 + 4) = v24;
    _os_log_impl(&dword_249083000, v8, v9, "TimersDismissed: timerIDs=%s", isUniquelyReferenced_nonNull_native, 0xCu);
    v25 = v56;
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v47 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x24C1F1C90](v47, a1);
    }

    else
    {
      v48 = *(a1 + 8 * v47 + 32);
    }

    v49 = v48;
    ++v47;
    [objc_allocWithZone(MEMORY[0x277D05808]) initWithMTTimer_];

    sub_24910D2AC();
    sub_24910D2DC();
    sub_24910D2EC();
    sub_24910D2BC();
  }

  while (v8 != v47);
  v3 = v61[0];
LABEL_54:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    *&v52[-16] = 9;
    *&v52[-8] = v3;
    sub_2490B8E80(sub_2490CE614, &v52[-32], "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }
}

uint64_t sub_2490CA8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_24910C34C();
    v14 = sub_24910CDEC();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v10, 1, 1, v14);
    sub_249088588(v10, v8);
    v16 = (*(v15 + 48))(v8, 1, v14);

    if (v16 == 1)
    {
      sub_2490A487C(v8, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      v20[0] = v13;
      (*(v15 + 8))(v8, v14);
      v13 = v20[0];
    }

    v17 = sub_2490A46DC();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = v12;
    v20[1] = 6;
    v20[2] = 0;
    v20[3] = v13;
    v20[4] = v17;

    v19 = v13;
    swift_task_create();
    sub_2490A487C(v10, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490CAB7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24908837C;

  return sub_2490CAC0C();
}

uint64_t sub_2490CAC0C()
{
  *(v1 + 16) = v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CACE0, v3, v2);
}

uint64_t sub_2490CACE0()
{
  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EEDAE48);
  v2 = sub_24910C87C();
  v3 = sub_24910CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "TimerStateReset", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  if (swift_weakLoadStrong())
  {
    v5 = swift_task_alloc();
    *(v5 + 16) = xmmword_24910FE90;
    sub_2490B8E80(sub_2490CDBB0, v5, "DistributedTimersDaemon/DTTimerDaemon.swift", 43, 2u, 64);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_2490CAE9C;

  return sub_2490CAF90();
}

uint64_t sub_2490CAE9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2490CAF90()
{
  v1[14] = v0;
  v2 = sub_24910C2FC();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v4 = sub_24910CDAC();
  v1[19] = v4;
  v1[20] = v3;

  return MEMORY[0x2822009F8](sub_2490CB0C4, v4, v3);
}

uint64_t sub_2490CB0C4()
{
  v39 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager);
  *(v0 + 168) = v2;
  if (!v2)
  {
LABEL_16:

    v35 = *(v0 + 8);

    return v35();
  }

  v3 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchRunning);
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchPending;
  *(v0 + 176) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchPending;
  if (v3)
  {
    *(v1 + v4) = 1;
    goto LABEL_16;
  }

  *(v0 + 184) = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers;
  v5 = v2;
  swift_beginAccess();
  v6 = *(v0 + 176);
  v7 = *(v0 + 112);
  v8 = 0x278F87000uLL;
  v9 = &unk_27EEDA000;
  *&v10 = 136315138;
  v37 = v10;
  while (1)
  {
    v19 = *(v0 + 168);
    *(v7 + v6) = 0;
    v20 = [v19 *(v8 + 3192)];
    *(v0 + 192) = v20;
    v21 = v19;
    if (v20)
    {
      break;
    }

    v22 = *(v0 + 168);
    sub_24910C7DC();
    v23 = sub_24910C7EC();
    swift_willThrow();

    if (v9[456] != -1)
    {
      swift_once();
    }

    v24 = sub_24910C89C();
    __swift_project_value_buffer(v24, qword_27EEDAE48);
    v25 = v23;
    v26 = sub_24910C87C();
    v27 = sub_24910CF4C();

    if (os_log_type_enabled(v26, v27))
    {
      v11 = swift_slowAlloc();
      v12 = v8;
      v13 = v9;
      v14 = swift_slowAlloc();
      v38 = v14;
      *v11 = v37;
      swift_getErrorValue();
      v15 = sub_24910D5DC();
      v17 = sub_24909F930(v15, v16, &v38);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_249083000, v26, v27, "### Fetch timers failed: error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v18 = v14;
      v9 = v13;
      v8 = v12;
      MEMORY[0x24C1F26F0](v18, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    else
    {
    }

    v6 = *(v0 + 176);
    v7 = *(v0 + 112);
    if ((*(v7 + v6) & 1) == 0)
    {

      goto LABEL_16;
    }
  }

  v28 = *(v0 + 168);
  v29 = *(v0 + 144);
  v30 = *(v0 + 112);
  v31 = swift_task_alloc();
  *(v0 + 200) = v31;
  v31[2] = v20;
  v31[3] = v28;
  v31[4] = 0x6D69546863746566;
  v31[5] = 0xEB00000000737265;
  v32 = v20;
  v33 = swift_task_alloc();
  *(v0 + 208) = v33;
  v34 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
  *v33 = v0;
  v33[1] = sub_2490CB4D8;

  return MEMORY[0x2822008A0](v0 + 72, v30, v29, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v31, v34);
}

uint64_t sub_2490CB4D8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_2490CC064;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_2490CB5F4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2490CB5F4()
{
  v111 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 72);
  v104 = (v0 + 72);
  v110[0] = 0;
  sub_2490A4744(0, &qword_27EED7A90, 0x277D29730);
  sub_24910CD4C();

  v3 = MEMORY[0x277D84F90];
  v108 = v0;
  *(v0 + 80) = MEMORY[0x277D84F90];
  v4 = (v0 + 80);
  v5 = v3;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v4; v6; i = v4)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1F1C90](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ([v8 isCurrentTimer])
      {
      }

      else
      {
        sub_24910D2AC();
        sub_24910D2DC();
        v4 = i;
        sub_24910D2EC();
        sub_24910D2BC();
      }

      ++v7;
      if (v10 == v6)
      {
        v11 = *v4;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v6 = sub_24910D19C();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
LABEL_77:
    v12 = sub_24910D19C();
  }

  else
  {
    v12 = *(v11 + 16);
  }

  v13 = v108;
  v14 = MEMORY[0x277D84F90];
  v107 = v11;
  v105 = v12 & ~(v12 >> 63);
  if (v12)
  {
    v4[1] = MEMORY[0x277D84F90];
    v15 = sub_2490CC8F8(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_79;
    }

    v23 = 0;
    v14 = v108[11];
    v24 = v11 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v25 = MEMORY[0x24C1F1C90](v23, v11);
      }

      else
      {
        v25 = *(v11 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = [v25 timerID];
      sub_24910C2CC();

      v108[11] = v14;
      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2490CC8F8((v28 > 1), v29 + 1, 1);
        v14 = i[1];
        v11 = v107;
      }

      v31 = v108[16];
      v30 = v108[17];
      v32 = v108[15];
      ++v23;
      *(v14 + 16) = v29 + 1;
      (*(v31 + 32))(v14 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, v30, v32);
    }

    while (v12 != v23);
  }

  if (qword_27EEDAE40 != -1)
  {
    swift_once();
  }

  v106 = sub_24910C89C();
  __swift_project_value_buffer(v106, qword_27EEDAE48);

  v33 = sub_24910C87C();
  v34 = sub_24910CF2C();

  v108 = v12;
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v13[15];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v110[0] = v37;
    *v36 = 136315138;
    v38 = MEMORY[0x24C1F1790](v14, v35);
    v40 = v39;

    v41 = sub_24909F930(v38, v40, v110);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_249083000, v33, v34, "Fetched timers: timerIDs=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x24C1F26F0](v37, -1, -1);
    v42 = v36;
    v12 = v108;
    MEMORY[0x24C1F26F0](v42, -1, -1);

    v43 = i;
    if (v108)
    {
      goto LABEL_34;
    }

LABEL_55:

    v45 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_43;
    }

LABEL_56:
    v4 = MEMORY[0x277D84F98];
    i[3] = MEMORY[0x277D84F98];
    goto LABEL_57;
  }

  v43 = i;
  if (!v12)
  {
    goto LABEL_55;
  }

LABEL_34:
  v43[2] = MEMORY[0x277D84F90];
  v15 = sub_2490CC918(0, v105, 0);
  if (v12 < 0)
  {
LABEL_79:
    __break(1u);
    return MEMORY[0x2822008A0](v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v44 = 0;
  v45 = v43[2];
  v46 = v11 & 0xC000000000000001;
  do
  {
    if (v46)
    {
      v47 = MEMORY[0x24C1F1C90](v44, v11);
    }

    else
    {
      v47 = *(v11 + 8 * v44 + 32);
    }

    v48 = v47;
    v49 = [v47 timerIDString];
    v50 = sub_24910CC9C();
    v52 = v51;

    i[2] = v45;
    v54 = *(v45 + 16);
    v53 = *(v45 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_2490CC918((v53 > 1), v54 + 1, 1);
      v45 = i[2];
    }

    v44 = (v44 + 1);
    *(v45 + 16) = v54 + 1;
    v55 = (v45 + 24 * v54);
    v55[4] = v50;
    v55[5] = v52;
    v55[6] = v48;
    v11 = v107;
  }

  while (v108 != v44);

  if (!*(v45 + 16))
  {
    goto LABEL_56;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AB8, &qword_249110038);
  v4 = sub_24910D37C();
  v56 = *(v45 + 16);
  i[3] = v4;
  if (!v56)
  {
LABEL_57:
    v76 = v13[23];
    v75 = v13[24];
    v77 = v13[14];

    *(v77 + v76) = v4;

    v78 = (v13[14] + v13[22]);
    if (*v78 != 1)
    {
LABEL_66:

      v97 = v13[1];

      return v97();
    }

    v79 = 0x278F87000uLL;
    v80 = qword_27EEDAE48;
    while (1)
    {
      v89 = v13[21];
      *v78 = 0;
      v90 = [v89 *(v79 + 3192)];
      v13[24] = v90;
      v91 = v89;
      v92 = v13[21];
      if (v90)
      {
        break;
      }

      sub_24910C7DC();
      v93 = sub_24910C7EC();
      swift_willThrow();

      if (qword_27EEDAE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v106, v80);
      v94 = v93;
      v95 = sub_24910C87C();
      v96 = sub_24910CF4C();

      if (os_log_type_enabled(v95, v96))
      {
        v81 = v80;
        v82 = v79;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v110[0] = v84;
        *v83 = 136315138;
        swift_getErrorValue();
        v85 = sub_24910D5DC();
        v87 = sub_24909F930(v85, v86, v110);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_249083000, v95, v96, "### Fetch timers failed: error=%s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
        MEMORY[0x24C1F26F0](v84, -1, -1);
        v88 = v83;
        v79 = v82;
        v80 = v81;
        MEMORY[0x24C1F26F0](v88, -1, -1);
      }

      else
      {
      }

      v78 = (v13[14] + v13[22]);
      if ((*v78 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v99 = v13[18];
    v100 = v13[14];
    v101 = swift_task_alloc();
    v13[25] = v101;
    v101[2] = v90;
    v101[3] = v92;
    v101[4] = 0x6D69546863746566;
    v101[5] = 0xEB00000000737265;
    v102 = v90;
    v103 = swift_task_alloc();
    v13[26] = v103;
    v22 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
    *v103 = v13;
    v103[1] = sub_2490CB4D8;
    v20 = sub_2490CE540;
    v19 = 0x80000002491113D0;
    v15 = v104;
    v16 = v100;
    v17 = v99;
    v18 = 0xD000000000000019;
    v21 = v101;

    return MEMORY[0x2822008A0](v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v57 = (v45 + 48);
  while (1)
  {
    v60 = *(v57 - 2);
    v11 = *(v57 - 1);
    v61 = *v57;

    v62 = v61;
    v64 = sub_2490A0A3C(v60, v11);
    v65 = v4[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v68 = v63;
    if (v4[3] < v67)
    {
      break;
    }

LABEL_51:
    v4 = i[3];
    if (v68)
    {

      v58 = v4[7];
      v59 = *(v58 + 8 * v64);
      *(v58 + 8 * v64) = v62;
    }

    else
    {
      v4[(v64 >> 6) + 8] |= 1 << v64;
      v71 = (v4[6] + 16 * v64);
      *v71 = v60;
      v71[1] = v11;
      *(v4[7] + 8 * v64) = v62;
      v72 = v4[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_76;
      }

      v4[2] = v74;
    }

    v57 += 3;
    if (!--v56)
    {
      goto LABEL_57;
    }
  }

  sub_2490CCE80(v67, 1, &qword_27EED7AB8, &qword_249110038);
  v69 = sub_2490A0A3C(v60, v11);
  if ((v68 & 1) == (v70 & 1))
  {
    v64 = v69;
    goto LABEL_51;
  }

  return sub_24910D57C();
}

uint64_t sub_2490CC064()
{
  v33 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 216);
  v3 = &unk_27EEDA000;
  v4 = qword_27EEDAE48;
  v5 = 0x278F87000uLL;
  while (1)
  {

    if (v3[456] != -1)
    {
      swift_once();
    }

    v6 = sub_24910C89C();
    __swift_project_value_buffer(v6, v4);
    v7 = v2;
    v8 = sub_24910C87C();
    v9 = sub_24910CF4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = v4;
      v12 = v3;
      v13 = swift_slowAlloc();
      v32 = v13;
      *v10 = 136315138;
      swift_getErrorValue();
      v14 = sub_24910D5DC();
      v16 = sub_24909F930(v14, v15, &v32);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_249083000, v8, v9, "### Fetch timers failed: error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v17 = v13;
      v3 = v12;
      v4 = v11;
      v5 = 0x278F87000;
      MEMORY[0x24C1F26F0](v17, -1, -1);
      MEMORY[0x24C1F26F0](v10, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 112);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    if ((*(v18 + v19) & 1) == 0)
    {
      break;
    }

    *(v18 + v19) = 0;
    v21 = [v20 *(v5 + 3192)];
    *(v0 + 192) = v21;
    v22 = v20;
    v23 = *(v0 + 168);
    if (v21)
    {
      v26 = *(v0 + 144);
      v27 = *(v0 + 112);
      v28 = swift_task_alloc();
      *(v0 + 200) = v28;
      v28[2] = v21;
      v28[3] = v23;
      v28[4] = 0x6D69546863746566;
      v28[5] = 0xEB00000000737265;
      v29 = v21;
      v30 = swift_task_alloc();
      *(v0 + 208) = v30;
      v31 = sub_2490A4744(0, &qword_27EED7A98, 0x277CBEA60);
      *v30 = v0;
      v30[1] = sub_2490CB4D8;

      return MEMORY[0x2822008A0](v0 + 72, v27, v26, 0xD000000000000019, 0x80000002491113D0, sub_2490CE540, v28, v31);
    }

    sub_24910C7DC();
    v2 = sub_24910C7EC();
    swift_willThrow();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t DTTimerDaemon.deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DTTimerDaemon.__deallocating_deinit()
{
  DTTimerDaemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2490CC538()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_2490CC588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTTimerDaemon.summary.getter();
}

uint64_t sub_2490CC614()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2490CC6A4;

  return sub_2490B6E60();
}

uint64_t sub_2490CC6A4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_2490CE5B8;

  return sub_2490B7BCC();
}

uint64_t sub_2490CC7E4()
{
  *(v1 + 16) = v0;
  sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CE5C8, v3, v2);
}

void *sub_2490CC8B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2490CCB30(a1, a2, a3, *v3, &qword_27EED7AF0, &qword_249110118, &qword_27EED7AF8, &qword_249110120);
  *v3 = result;
  return result;
}

void *sub_2490CC8F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2490CC958(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2490CC918(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2490CCB30(a1, a2, a3, *v3, &qword_27EED7AC0, &qword_249110040, &qword_27EED7AC8, &qword_249110048);
  *v3 = result;
  return result;
}

void *sub_2490CC958(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7AD0, &unk_249110050);
  v10 = *(sub_24910C2FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_24910C2FC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void *sub_2490CCB30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_2490CCC78(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_2490CCD24(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

  return result;
}

uint64_t sub_2490CCE80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_24910D36C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2490CD11C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24910D16C() + 1) & ~v5;
    do
    {
      sub_24910D60C();

      sub_24910CCCC();
      v9 = sub_24910D62C();

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

uint64_t sub_2490CD2CC(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmManager) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarmObservers) = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtAlarms) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchPending) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorAlarmsFetchRunning) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerManager) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimerObservers) = v4;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__mtTimers) = v5;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchPending) = 0;
  *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__monitorTimersFetchRunning) = 0;
  swift_weakAssign();
  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon13DTTimerDaemon__environment;
  v7 = sub_24910C3BC();
  (*(*(v7 - 8) + 32))(v2 + v6, a2, v7);
  return v2;
}

uint64_t type metadata accessor for DTTimerDaemon(uint64_t a1)
{
  result = qword_27EEDAFC0;
  if (!qword_27EEDAFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2490CD42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x24C1F26F0);
  }

  return result;
}

uint64_t sub_2490CD4D0(uint64_t a1)
{
  result = sub_2490CD42C(&qword_27EED7A60, type metadata accessor for DTTimerDaemon, &protocol conformance descriptor for DTTimerDaemon);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2490CD530(uint64_t a1)
{
  result = sub_24910C3BC();
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2490CD69C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24910D54C() & 1;
  }
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2490CD7C0(void *a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_24910CDCC();
}

uint64_t objectdestroy_27Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2490CD934(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v8 = (v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  sub_24910C7DC();
  MEMORY[0x24C1F1710](v9, v10);
  v11 = a1;
  sub_24910C7EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_24910CDBC();
}

uint64_t sub_2490CDA74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490CDB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return sub_2490CAB7C();
}

void *sub_2490CDBCC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2490CDC10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2490CDC48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_2490CDD2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490CA0E4(v4, v2, v3);
}

uint64_t sub_2490CDDC4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C94FC(v4, v2, v3);
}

uint64_t sub_2490CDE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C89D0(v4, v2, v3);
}

uint64_t sub_2490CDEF4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24908837C;

  return sub_2490C7DE8(v4, v2, v3);
}

uint64_t sub_2490CDF8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C7200(v4, v2, v3);
}

uint64_t sub_2490CE0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2490887FC;

  return sub_2490C5758();
}

uint64_t sub_2490CE130()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C4F50(v4, v2, v3);
}

uint64_t sub_2490CE1C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C4368(v4, v2, v3);
}

uint64_t sub_2490CE260()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C3780(v4, v2, v3);
}

uint64_t sub_2490CE2F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C2C54(v4, v2, v3);
}

uint64_t sub_2490CE390()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C206C(v4, v2, v3);
}

uint64_t objectdestroy_110Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490CE468()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2490887FC;

  return sub_2490C1390(v4, v2, v3);
}

uint64_t sub_2490CE62C()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EEDAFD8);
  __swift_project_value_buffer(v0, qword_27EEDAFD8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t static DTTransportDaemon.alternateAccessoryIDs.getter(uint64_t a1)
{
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_27EEDAFF8;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_2490F5308(&v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_2490CE774(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_27EEDAFF8;
  v4 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_2490FC73C(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v5;
}

uint64_t sub_2490CE85C(void *a1)
{
  v1 = qword_27EEDAFF0;

  if (v1 != -1)
  {
    v2 = swift_once();
  }

  v3 = qword_27EEDAFF8;
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_2490FC878();
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t static DTTransportDaemon.alternateAccessoryIDs.setter(uint64_t a1)
{
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_27EEDAFF8;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_2490F534C();
  os_unfair_lock_unlock(v1 + 4);
}

double sub_2490CEA28@<D0>(void *a1@<X8>)
{
  if (qword_27EEDB000 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27EEDB008;

  return result;
}

uint64_t sub_2490CEA98(uint64_t a1)
{
  if (qword_27EEDB000 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  qword_27EEDB008 = a1;
}

uint64_t (*static DTTransportDaemon.alternateAccessoryIDs.modify(void *a1))()
{
  v2 = a1;
  a1[1] = v1;
  if (qword_27EEDAFF0 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_27EEDAFF8;
  v2[2] = qword_27EEDAFF8;
  v4 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_2490FC73C(&v6);
  v2[3] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *v2 = v6;
  return sub_2490CEC20;
}

uint64_t sub_2490CEC20(void *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {

    os_unfair_lock_lock(v2 + 4);
    sub_2490FC878();
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    os_unfair_lock_lock(v2 + 4);
    sub_2490FC878();
    os_unfair_lock_unlock(v2 + 4);
  }
}

uint64_t sub_2490CED04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED8040, &qword_2491109C0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_27EEDAFF8 = result;
  return result;
}

uint64_t sub_2490CED80(uint64_t a1)
{
  result = sub_24910D67C();
  qword_27EEDB018 = result;
  qword_27EEDB020 = v2;
  return result;
}

uint64_t DTTransportDaemon._statusFlags.getter()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags;
  swift_beginAccess();
  return *(v0 + v1);
}

void DTTransportDaemon._statusFlags.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2490CEEA0()
{
  v1[5] = v0;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v3 = sub_24910CDAC();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2490CEF58, v3, v2);
}

uint64_t sub_2490CEF58()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v0[9] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    type metadata accessor for DTDaemon(0);
    sub_2490F57CC(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
    v3 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490CF0B0, v3, v2);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2490CF0B0()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v0[10] = *(v1 + v2);
  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_2490CF144, v3, v4);
}

uint64_t sub_2490CF144()
{
  v1 = *(v0 + 80);

  if (v1)
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 80);

    return v2(v3);
  }

  else
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t DTTransportDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

id DTTransportDaemon.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_2490F54B0(a1, a2);

  return v4;
}

id DTTransportDaemon.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2490F54B0(a1, a2);

  return v2;
}

uint64_t DTTransportDaemon.summary.getter()
{
  v1[32] = v0;
  swift_getObjectType();
  v2 = sub_24910C49C();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v3 = sub_24910C48C();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  v4 = sub_24910C2FC();
  v1[39] = v4;
  v1[40] = *(v4 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B00, &qword_249110238);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v5 = sub_24910C3EC();
  v1[45] = v5;
  v1[46] = *(v5 - 8);
  v1[47] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v7 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490CF58C, v7, v6);
}

uint64_t sub_2490CF58C()
{
  v201 = v0;
  v1 = v0[32];
  sub_24910C3DC();
  sub_24910CCBC();
  strcpy(v199, "HomeKit=");
  BYTE1(v199[1]) = 0;
  WORD1(v199[1]) = 0;
  HIDWORD(v199[1]) = -402653184;
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v3 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (!v3)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
    goto LABEL_22;
  }

  v4 = [v3 dataSyncState];
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        v5 = 0x8000000249111590;
        v6 = 0xD000000000000013;
      }

      else
      {
        v5 = 0x8000000249111570;
        v6 = 0xD00000000000001ALL;
      }

      goto LABEL_22;
    }

    if (v4 == 6)
    {
      v6 = 0xD00000000000001CLL;
      v5 = 0x8000000249111550;
      goto LABEL_22;
    }

    if (v4 != 7)
    {
      goto LABEL_21;
    }

    v7 = "UnsupportedAccount";
LABEL_19:
    v5 = (v7 - 32) | 0x8000000000000000;
    v6 = 0xD000000000000012;
    goto LABEL_22;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v5 = 0x80000002491115B0;
      v6 = 0xD000000000000016;
      goto LABEL_22;
    }

    v7 = "KeychainNotEnabled";
    goto LABEL_19;
  }

  if (!v4)
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E55;
    goto LABEL_22;
  }

  if (v4 != 1)
  {
LABEL_21:
    v5 = 0xE100000000000000;
    v6 = 63;
    goto LABEL_22;
  }

  v5 = 0xE400000000000000;
  v6 = 1685024583;
LABEL_22:
  MEMORY[0x24C1F1710](v6, v5);

  sub_24910CCBC();

  v199[0] = 1026705480;
  v199[1] = 0xE400000000000000;
  v8 = *(v1 + v2);
  v184 = v1;
  v185 = v2;
  if (v8)
  {
    v9 = [v8 hasOptedToHH2];
    v10 = v9 == 0;
    if (v9)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v10)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE400000000000000;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  v187 = v0[42];
  v13 = v0[40];
  v14 = v0[32];
  MEMORY[0x24C1F1710](v11, v12);

  sub_24910CCBC();

  v15 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
  v198 = v0;
  swift_beginAccess();
  v182 = v15;
  v183 = v14;
  v16 = *(v14 + v15);
  v17 = v16 + 64;
  v18 = -1;
  v19 = -1 << *(v16 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & *(v16 + 64);
  v21 = (63 - v19) >> 6;
  v186 = v13;
  v188 = (v13 + 16);
  v190 = (v13 + 8);
  v192 = v16;
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  v24 = 0;
  do
  {
    if (!v20)
    {
      v26 = v198;
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v21)
        {
          goto LABEL_43;
        }

        v20 = *(v17 + 8 * v25);
        ++v23;
        if (v20)
        {
          v195 = v24;
          v23 = v25;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_125;
    }

    v195 = v24;
    v25 = v23;
    v26 = v198;
LABEL_40:
    v28 = v26[43];
    v27 = v26[44];
    v29 = v26[39];
    v30 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v31 = v30 | (v25 << 6);
    (*(v186 + 16))(v27, *(v192 + 48) + *(v186 + 72) * v31, v29);
    v32 = *(*(v192 + 56) + v31);
    v26 = v187;
    *(v27 + *(v187 + 48)) = v32;
    sub_2490B3868(v27, v28, &unk_27EED7B00, &qword_249110238);
    v33 = *(v28 + *(v187 + 48));
    result = (*(v186 + 8))(v28, v29);
    v24 = v195 + v33;
  }

  while (!__OFADD__(v195, v33));
  __break(1u);
LABEL_43:
  v34 = v26[32];

  v199[0] = 0x3D4D4D4D48;
  v199[1] = 0xE500000000000000;
  v26[29] = v24;
  v35 = sub_24910D50C();
  MEMORY[0x24C1F1710](v35);

  MEMORY[0x24C1F1710](47, 0xE100000000000000);
  v26[30] = *(*(v183 + v182) + 16);
  v36 = sub_24910D50C();
  MEMORY[0x24C1F1710](v36);

  sub_24910CCBC();

  strcpy(v199, "Monitors=");
  WORD1(v199[1]) = 0;
  HIDWORD(v199[1]) = -385875968;
  v37 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  swift_beginAccess();
  v26[31] = *(*(v34 + v37) + 16);
  v38 = sub_24910D50C();
  MEMORY[0x24C1F1710](v38);

  sub_24910CCBC();

  sub_24910D25C();

  strcpy(v199, "multicastWait=");
  HIBYTE(v199[1]) = -18;
  if (*(v34 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait))
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (*(v34 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait))
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v39, v40);

  sub_24910CCBC();

  strcpy(v199, "SelfHK=");
  v199[1] = 0xE700000000000000;
  v41 = *(v184 + v185);
  if (v41 && (v42 = [v41 currentAccessory]) != 0)
  {
    v43 = v26[41];
    v44 = v26[39];
    v45 = v42;
    v46 = [v42 uniqueIdentifier];

    sub_24910C2CC();
    v47 = sub_24910C28C();
    v49 = v48;
    (*v190)(v43, v44);
    v50 = v47;
  }

  else
  {
    v49 = 0xE300000000000000;
    v50 = 7104878;
  }

  v51 = v26[39];
  v52 = v26[40];
  v53 = v26[32];
  MEMORY[0x24C1F1710](v50, v49);

  sub_24910CCBC();

  strcpy(v199, "StereoHK: ");
  BYTE3(v199[1]) = 0;
  HIDWORD(v199[1]) = -369098752;
  v54 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__stereoAccessoryID;
  swift_beginAccess();
  if ((*(v52 + 48))(v53 + v54, 1, v51))
  {
    v55 = 0xE300000000000000;
    v56 = 7104878;
  }

  else
  {
    v57 = v26[41];
    v58 = v26[39];
    v59 = (*v188)(v57, v53 + v54, v58);
    v60 = MEMORY[0x24C1F0CC0](v59);
    v55 = v61;
    (*v190)(v57, v58);
    v56 = v60;
  }

  MEMORY[0x24C1F1710](v56, v55);

  sub_24910CCBC();

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v62 = MEMORY[0x277D84F90];
  v200[0] = MEMORY[0x277D84F90];
  v63 = *(v184 + v185);
  if (v63)
  {
    v64 = [v63 currentHome];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 accessories];

      sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
      v67 = sub_24910CD5C();

      sub_2490D12A4(v67, v200);

      v68 = v200[0];
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v68 = MEMORY[0x277D84F90];
  }

  v199[0] = v68;

  sub_24909FED8(v199);
  sub_249089EB4(v199[0]);

  v200[0] = v62;
  v196 = sub_24910C4AC();
  v69 = *(v34 + v37);
  v70 = v69 + 64;
  v71 = -1;
  v72 = -1 << *(v69 + 32);
  if (-v72 < 64)
  {
    v71 = ~(-1 << -v72);
  }

  v73 = v71 & *(v69 + 64);
  v74 = (63 - v72) >> 6;
  v193 = v69;
  result = swift_bridgeObjectRetain_n();
  v75 = 0;
  v189 = v70;
  if (v73)
  {
LABEL_68:
    do
    {
      v77 = __clz(__rbit64(v73)) | (v75 << 6);
      v78 = (*(v193 + 48) + 16 * v77);
      v79 = *v78;
      v80 = v78[1];
      v81 = *(*(v193 + 56) + 8 * v77);
      v82 = v196 < *(v81 + 48);

      if (v82)
      {
        goto LABEL_129;
      }

      v83 = sub_24910C31C();
      v199[0] = 0;
      v199[1] = 0xE000000000000000;
      sub_24910D25C();
      MEMORY[0x24C1F1710](0xD00000000000001CLL, 0x8000000249111EB0);
      MEMORY[0x24C1F1710](v79, v80);
      v84 = MEMORY[0x24C1F1710](0x746567726174202CLL, 0xEB000000005B3D73);
      v85 = (*(v81 + 24))(v84);
      if (v85)
      {
        v86 = v198;
        v198[28] = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
        sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
        v87 = sub_24910CC5C();
        v89 = v88;
      }

      else
      {
        v89 = 0xE300000000000000;
        v87 = 7104878;
        v86 = v198;
      }

      MEMORY[0x24C1F1710](v87, v89);

      MEMORY[0x24C1F1710](0x6E6F636573202C5DLL, 0xEB000000003D7364);
      v86[27] = v83;
      v90 = sub_24910D50C();
      MEMORY[0x24C1F1710](v90);

      MEMORY[0x24C1F1710](10, 0xE100000000000000);
      v91 = v199[0];
      v92 = v199[1];
      v93 = v200[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_24909F648(0, *(v93 + 2) + 1, 1, v93);
        v200[0] = v93;
      }

      v95 = *(v93 + 2);
      v94 = *(v93 + 3);
      if (v95 >= v94 >> 1)
      {
        v93 = sub_24909F648((v94 > 1), v95 + 1, 1, v93);
        v200[0] = v93;
      }

      v73 &= v73 - 1;
      *(v93 + 2) = v95 + 1;
      v96 = &v93[16 * v95];
      *(v96 + 4) = v91;
      *(v96 + 5) = v92;

      v26 = v198;
      v70 = v189;
    }

    while (v73);
  }

  while (1)
  {
    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v76 >= v74)
    {
      v97 = v26[32];

      v98 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
      swift_beginAccess();
      v99 = *(v97 + v98);
      v102 = *(v99 + 64);
      v101 = v99 + 64;
      v100 = v102;
      v103 = -1;
      v104 = -1 << *(*(v97 + v98) + 32);
      if (-v104 < 64)
      {
        v103 = ~(-1 << -v104);
      }

      v105 = v103 & v100;
      v106 = (63 - v104) >> 6;
      v191 = *(v97 + v98);
      result = swift_bridgeObjectRetain_n();
      v107 = 0;
      if (v105)
      {
LABEL_85:
        do
        {
          v109 = (v107 << 9) | (8 * __clz(__rbit64(v105)));
          v110 = *(*(v191 + 48) + v109);
          v111 = *(*(v191 + 56) + v109);
          v112 = v196 < *(v111 + 24);

          if (v112)
          {
            goto LABEL_130;
          }

          v194 = sub_24910C31C();
          v199[0] = 0;
          v199[1] = 0xE000000000000000;
          sub_24910D25C();
          MEMORY[0x24C1F1710](0xD00000000000001CLL, 0x8000000249111E90);
          v26[20] = sub_2490EF6C0();
          v26[21] = v113;
          sub_24910D52C();

          MEMORY[0x24C1F1710](45, 0xE100000000000000);
          v26[24] = v110;
          v114 = sub_24910D50C();
          MEMORY[0x24C1F1710](v114);

          v115 = MEMORY[0x24C1F1710](0x746567726174202CLL, 0xEB000000005B3D73);
          v116 = (*(v111 + 32))(v115);
          if (v116)
          {
            v26[26] = v116;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
            sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
            v117 = sub_24910CC5C();
            v118 = v26;
            v120 = v119;
          }

          else
          {
            v118 = v26;
            v120 = 0xE300000000000000;
            v117 = 7104878;
          }

          MEMORY[0x24C1F1710](v117, v120);

          MEMORY[0x24C1F1710](0x6E6F636573202C5DLL, 0xEB000000003D7364);
          v118[25] = v194;
          v121 = sub_24910D50C();
          MEMORY[0x24C1F1710](v121);

          MEMORY[0x24C1F1710](10, 0xE100000000000000);
          v122 = v199[0];
          v123 = v199[1];
          v124 = v200[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = sub_24909F648(0, *(v124 + 2) + 1, 1, v124);
            v200[0] = v124;
          }

          v126 = *(v124 + 2);
          v125 = *(v124 + 3);
          if (v126 >= v125 >> 1)
          {
            v124 = sub_24909F648((v125 > 1), v126 + 1, 1, v124);
            v200[0] = v124;
          }

          v105 &= v105 - 1;
          *(v124 + 2) = v126 + 1;
          v127 = &v124[16 * v126];
          *(v127 + 4) = v122;
          *(v127 + 5) = v123;

          v26 = v198;
        }

        while (v105);
      }

      while (1)
      {
        v108 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          goto LABEL_126;
        }

        if (v108 >= v106)
        {
          v128 = v26[32];

          v129 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
          swift_beginAccess();
          v130 = *(v128 + v129);
          v131 = v130 + 64;
          v132 = -1;
          v133 = -1 << *(v130 + 32);
          if (-v133 < 64)
          {
            v132 = ~(-1 << -v133);
          }

          v134 = v132 & *(v130 + 64);
          v135 = (63 - v133) >> 6;
          v197 = v130;
          result = swift_bridgeObjectRetain_n();
          v136 = 0;
          if (v134)
          {
            goto LABEL_102;
          }

          while (1)
          {
            v137 = v136 + 1;
            if (__OFADD__(v136, 1))
            {
              goto LABEL_127;
            }

            if (v137 >= v135)
            {
              v153 = v26[34];
              v154 = v26[35];
              v155 = v26[32];
              v156 = v26[33];

              sub_24910C39C();
              sub_24910C44C();
              (*(v153 + 8))(v154, v156);
              v157 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
              swift_beginAccess();
              v158 = *(v155 + v157);
              v159 = -1;
              v160 = -1 << *(v158 + 32);
              if (-v160 < 64)
              {
                v159 = ~(-1 << -v160);
              }

              v161 = v159 & *(v158 + 64);
              v162 = (63 - v160) >> 6;
              result = swift_bridgeObjectRetain_n();
              for (i = 0; v161; result = )
              {
                v164 = i;
LABEL_119:
                v165 = v26[38];
                v166 = __clz(__rbit64(v161));
                v161 &= v161 - 1;
                v167 = v166 | (v164 << 6);
                v168 = (*(v158 + 48) + 16 * v167);
                v169 = *v168;
                v170 = v168[1];
                v171 = *(*(v158 + 56) + 8 * v167);

                sub_2490D1390(v169, v170, v171, v165, v200);
              }

              while (1)
              {
                v164 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_128;
                }

                if (v164 >= v162)
                {

                  v199[0] = v200[0];

                  sub_24909FED8(v199);
                  v172 = v26[46];
                  v173 = v26[47];
                  v174 = v26[45];
                  v175 = v26;
                  v178 = v26 + 37;
                  v177 = v26[37];
                  v176 = v178[1];
                  v179 = v175[36];
                  sub_249089EB4(v199[0]);

                  (*(v172 + 8))(v173, v174);
                  v180 = *(v177 + 8);

                  v180(v176, v179);

                  v181 = v175[1];

                  return v181(0, 0xE000000000000000);
                }

                v161 = *(v158 + 64 + 8 * v164);
                ++i;
                if (v161)
                {
                  i = v164;
                  goto LABEL_119;
                }
              }
            }

            v134 = *(v131 + 8 * v137);
            ++v136;
            if (v134)
            {
              v136 = v137;
              do
              {
LABEL_102:
                v138 = (v136 << 9) | (8 * __clz(__rbit64(v134)));
                v139 = *(*(v197 + 48) + v138);
                v140 = *(*(v197 + 56) + v138);

                v199[0] = 0;
                v199[1] = 0xE000000000000000;
                sub_24910D25C();

                v199[0] = 0xD000000000000018;
                v199[1] = 0x8000000249111E70;
                v26[22] = v139;
                v141 = sub_24910D50C();
                MEMORY[0x24C1F1710](v141);

                v142 = MEMORY[0x24C1F1710](0x746567726174202CLL, 0xEB000000005B3D73);
                v143 = (*(v140 + 16))(v142);
                if (v143)
                {
                  v26[23] = v143;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
                  sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
                  v144 = sub_24910CC5C();
                  v146 = v145;
                }

                else
                {
                  v146 = 0xE300000000000000;
                  v144 = 7104878;
                }

                MEMORY[0x24C1F1710](v144, v146);

                MEMORY[0x24C1F1710](2653, 0xE200000000000000);
                v147 = v199[0];
                v148 = v199[1];
                v149 = v200[0];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v149 = sub_24909F648(0, *(v149 + 2) + 1, 1, v149);
                  v200[0] = v149;
                }

                v151 = *(v149 + 2);
                v150 = *(v149 + 3);
                if (v151 >= v150 >> 1)
                {
                  v149 = sub_24909F648((v150 > 1), v151 + 1, 1, v149);
                  v200[0] = v149;
                }

                v134 &= v134 - 1;
                *(v149 + 2) = v151 + 1;
                v152 = &v149[16 * v151];
                *(v152 + 4) = v147;
                *(v152 + 5) = v148;

                v26 = v198;
              }

              while (v134);
            }
          }
        }

        v105 = *(v101 + 8 * v108);
        ++v107;
        if (v105)
        {
          v107 = v108;
          goto LABEL_85;
        }
      }
    }

    v73 = *(v70 + 8 * v76);
    ++v75;
    if (v73)
    {
      v75 = v76;
      goto LABEL_68;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_2490D0A7C(void **a1, uint64_t *a2)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v69 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  v15 = sub_24910C2FC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v21 = *a1;
  v22 = [v21 device];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 productInfo];

    if (v24)
    {
      v25 = [v24 productClass];

      if (v25 == 6)
      {
        v71[0] = 0;
        v71[1] = 0xE000000000000000;
        sub_24910D25C();

        strcpy(v71, "HomePod: hk=");
        BYTE5(v71[1]) = 0;
        HIWORD(v71[1]) = -5120;
        v26 = [v21 uniqueIdentifier];
        sub_24910C2CC();

        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v27 = sub_24910D50C();
        MEMORY[0x24C1F1710](v27);

        v28 = *(v16 + 8);
        v28(v20, v15);
        MEMORY[0x24C1F1710](0x3D736469202CLL, 0xE600000000000000);
        v29 = [v21 device];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 idsIdentifier];

          if (v31)
          {
            sub_24910C2CC();

            v32 = 0;
          }

          else
          {
            v32 = 1;
          }

          (*(v16 + 56))(v12, v32, 1, v15);
          sub_2490B3868(v12, v14, &qword_27EED7900, &qword_24910EB50);
          if ((*(v16 + 48))(v14, 1, v15) != 1)
          {
            v56 = sub_24910C28C();
            v54 = v57;
            v28(v14, v15);
            v55 = v56;
            goto LABEL_24;
          }

          sub_2490A487C(v14, &qword_27EED7900, &qword_24910EB50);
        }

        v54 = 0xE300000000000000;
        v55 = 7104878;
LABEL_24:
        MEMORY[0x24C1F1710](v55, v54);

        MEMORY[0x24C1F1710](0x3D656D616E202CLL, 0xE700000000000000);
        v58 = [v21 name];
        v59 = sub_24910CC9C();
        v61 = v60;

        MEMORY[0x24C1F1710](v59, v61);

        MEMORY[0x24C1F1710](10, 0xE100000000000000);
        v62 = v71[0];
        v63 = v71[1];
        v64 = v69;
        v65 = *v69;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v64 = v65;
        if ((result & 1) == 0)
        {
          result = sub_24909F648(0, *(v65 + 16) + 1, 1, v65);
          v65 = result;
          *v64 = result;
        }

        v67 = *(v65 + 16);
        v66 = *(v65 + 24);
        if (v67 >= v66 >> 1)
        {
          result = sub_24909F648((v66 > 1), v67 + 1, 1, v65);
          v65 = result;
          *v64 = result;
        }

        *(v65 + 16) = v67 + 1;
        v68 = v65 + 16 * v67;
        *(v68 + 32) = v62;
        *(v68 + 40) = v63;
        return result;
      }
    }
  }

  v33 = [v21 siriEndpointProfile];
  if (!v33)
  {
    (*(v16 + 56))(v9, 1, 1, v15);
    return sub_2490A487C(v9, &qword_27EED7900, &qword_24910EB50);
  }

  v34 = v33;
  v35 = [v33 sessionHubIdentifier];

  if (v35)
  {
    sub_24910C2CC();

    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v6, 1, 1, v15);
  }

  sub_2490B3868(v6, v9, &qword_27EED7900, &qword_24910EB50);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    return sub_2490A487C(v9, &qword_27EED7900, &qword_24910EB50);
  }

  (*(v16 + 32))(v70, v9, v15);
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  sub_24910D25C();

  strcpy(v71, "SiriEnd: hk=");
  BYTE5(v71[1]) = 0;
  HIWORD(v71[1]) = -5120;
  v37 = [v21 uniqueIdentifier];
  sub_24910C2CC();

  sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v38 = sub_24910D50C();
  MEMORY[0x24C1F1710](v38);

  v39 = *(v16 + 8);
  v39(v20, v15);
  MEMORY[0x24C1F1710](0x3D627568202CLL, 0xE600000000000000);
  v40 = sub_24910D50C();
  MEMORY[0x24C1F1710](v40);

  MEMORY[0x24C1F1710](0x3D656D616E202CLL, 0xE700000000000000);
  v41 = [v21 name];
  v42 = sub_24910CC9C();
  v44 = v43;

  MEMORY[0x24C1F1710](v42, v44);

  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v45 = v71[0];
  v46 = v71[1];
  v47 = v69;
  v48 = *v69;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v47 = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_24909F648(0, *(v48 + 2) + 1, 1, v48);
    *v47 = v48;
  }

  v51 = *(v48 + 2);
  v50 = *(v48 + 3);
  if (v51 >= v50 >> 1)
  {
    *v47 = sub_24909F648((v50 > 1), v51 + 1, 1, v48);
  }

  result = (v39)(v70, v15);
  v52 = *v47;
  *(v52 + 16) = v51 + 1;
  v53 = v52 + 16 * v51;
  *(v53 + 32) = v45;
  *(v53 + 40) = v46;
  return result;
}

void sub_2490D12A4(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24910D19C())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1F1C90](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_2490D0A7C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
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

void sub_2490D1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
  MEMORY[0x28223BE20](v30);
  v7 = (&v29 - v6);
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v35 = a3;

  v13 = 0;
  v29 = v7;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      do
      {
LABEL_8:
        v15 = __clz(__rbit64(v11)) | (v13 << 6);
        v16 = *(v35 + 56);
        v17 = *(*(v35 + 48) + 8 * v15);
        v18 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
        sub_2490FA748(v16 + *(*(v18 - 8) + 72) * v15, v7 + *(v30 + 48), type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
        *v7 = v17;
        sub_24910C47C();
        v37[0] = 0;
        v37[1] = 0xE000000000000000;
        sub_24910D25C();

        v36 = v17;
        strcpy(v37, "Waiter: xid=");
        BYTE5(v37[1]) = 0;
        HIWORD(v37[1]) = -5120;
        v19 = sub_24910D50C();
        MEMORY[0x24C1F1710](v19);

        MEMORY[0x24C1F1710](0x737365636361202CLL, 0xEE003D444979726FLL);
        MEMORY[0x24C1F1710](v31, v32);
        MEMORY[0x24C1F1710](0x695474696177202CLL, 0xEB000000003D656DLL);
        v20 = sub_24910D66C();
        MEMORY[0x24C1F1710](v20);

        MEMORY[0x24C1F1710](10, 0xE100000000000000);
        v21 = v37[0];
        v22 = v37[1];
        v23 = v34;
        v24 = *v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_24909F648(0, *(v24 + 2) + 1, 1, v24);
          *v34 = v24;
        }

        v27 = *(v24 + 2);
        v26 = *(v24 + 3);
        if (v27 >= v26 >> 1)
        {
          v24 = sub_24909F648((v26 > 1), v27 + 1, 1, v24);
          *v34 = v24;
        }

        v11 &= v11 - 1;
        *(v24 + 2) = v27 + 1;
        v28 = &v24[16 * v27];
        *(v28 + 4) = v21;
        *(v28 + 5) = v22;
        v7 = v29;
        sub_2490A487C(v29, &qword_27EED7F18, &qword_249110870);
      }

      while (v11);
    }
  }

  __break(1u);
}

uint64_t DTTransportDaemon.activate()()
{
  v1[8] = v0;
  swift_getObjectType();
  v2 = sub_24910C80C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490D17D0, v4, v3);
}

uint64_t sub_2490D17D0(uint64_t a1)
{
  sub_24910C58C();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_24910CC8C();

  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v6 = v1[10];
    v5 = v1[11];
    v7 = v1[9];
    (*(v6 + 104))(v5, *MEMORY[0x277D05768], v7);
    sub_24910C7FC();
    (*(v6 + 8))(v5, v7);
    v8 = sub_24910CF7C();

    if (v8 != 2)
    {
      *(v1[8] + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__multicastWait) = v8 & 1;
    }
  }

  v1[6] = sub_2490DA8C0;
  v1[7] = 0;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_2490C0EE8;
  v1[5] = &block_descriptor_1;
  v9 = _Block_copy(v1 + 2);
  xpc_set_event_stream_handler("com.apple.HMModernMessaging.launch", 0, v9);
  _Block_release(v9);
  v10 = IsAppleInternalBuild();
  v11 = v1[8];
  if (v10 && !*(v11 + 24))
  {
    sub_24910C34C();
    swift_allocObject();
    swift_weakInit();
    sub_24910C42C();
    swift_allocObject();
    *(v11 + 24) = sub_24910C3FC();

    v11 = v1[8];
  }

  if ((*(v11 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
    if (!*(v11 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v14 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v15 = *(v11 + v12);
      *(v11 + v12) = v14;
      v16 = v14;

      [v16 setDelegate_];
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }

  v17 = v1[1];

  return v17();
}

uint64_t DTTransportDaemon.invalidate()()
{
  *(v1 + 64) = v0;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v3 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490D1BC4, v3, v2);
}

uint64_t sub_2490D1BC4()
{
  v1 = *(v0 + 64);
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) = 1;
  if (*(v1 + 24))
  {

    sub_24910C41C();
  }

  v2 = *(v0 + 64);
  *(v1 + 24) = 0;

  sub_24910C7DC();
  v3 = sub_24910C7EC();
  sub_2490D1E34(v3);

  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask;
  if (*(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitPollTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
    sub_24910CE3C();
  }

  v5 = *(v0 + 64);
  *(v2 + v4) = 0;

  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v7 = *(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v7)
  {
    [v7 setDelegate_];
    v8 = *(v5 + v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 64);
  *(v5 + v6) = 0;

  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap;
  swift_beginAccess();
  v11 = MEMORY[0x277D84F98];
  *(v9 + v10) = MEMORY[0x277D84F98];

  *(v9 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointMap) = v11;

  *(v9 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeSiriEndpointsReady) = 0;
  v12 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeTransportRegisteredMap;
  swift_beginAccess();
  *(v9 + v12) = v11;

  *(v9 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) = 0;
  v13 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer;
  if (*(v9 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
    sub_24910CE3C();
  }

  *(v9 + v13) = 0;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2490D1E34(void *a1)
{
  v3 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DTTransportDaemon.DTOperationItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);

    do
    {
      sub_2490FA748(v13, v9, type metadata accessor for DTTransportDaemon.DTOperationItem);
      sub_2490FA810(v9, v5, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      sub_2490F7BC8(v5, a1, 0, 1);
      sub_2490FA7B0(v5, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  *(v1 + v10) = MEMORY[0x277D84F90];
}

uint64_t DTTransportDaemon.handleDiagnosticsRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  swift_getObjectType();
  v4 = sub_24910C76C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v6 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490D2128, v6, v5);
}

uint64_t sub_2490D2128()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != *MEMORY[0x277D05718])
  {
    if (v4 == *MEMORY[0x277D05728] || v4 == *MEMORY[0x277D05710])
    {
      goto LABEL_17;
    }

    if (v4 == *MEMORY[0x277D05720])
    {
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v25 = sub_24910C89C();
      __swift_project_value_buffer(v25, qword_27EEDAFD8);
      v26 = sub_24910C87C();
      v27 = sub_24910CF5C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_249083000, v26, v27, "homeKitUpdate", v28, 2u);
        MEMORY[0x24C1F26F0](v28, -1, -1);
      }

      v11 = v0[4];

      goto LABEL_7;
    }

    if (v4 == *MEMORY[0x277D05730])
    {
LABEL_17:
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
    }

    else
    {
      v30 = v0[6];
      v29 = v0[7];
      v31 = v0[5];
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      (*(v30 + 8))(v29, v31);
    }

    v22 = v0[1];
    goto LABEL_19;
  }

  v5 = v0[7];
  (*(v0[6] + 96))(v5, v0[5]);
  v6 = *v5;
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v7 = sub_24910C89C();
  __swift_project_value_buffer(v7, qword_27EEDAFD8);
  v8 = sub_24910C87C();
  v9 = sub_24910CF5C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_249083000, v8, v9, "homeKitDefer: state=%{BOOL}d", v10, 8u);
    MEMORY[0x24C1F26F0](v10, -1, -1);
  }

  v11 = v0[4];

  *(v11 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitDeferred) = v6;
LABEL_7:
  if ((*(v11 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__invalidateCalled) & 1) == 0)
  {
    v12 = v0[4];
    v13 = (v12 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
    if (!*(v12 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager))
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CD1A98]) initWithOptions:35024 cachePolicy:2];
      v15 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
      v16 = *v13;
      *v13 = v15;
      v17 = v15;

      [v17 setDelegate_];
    }

    sub_2490DDEF8();
    sub_2490DAEB4();
    sub_2490DEDDC();
    sub_2490DEFB4();
  }

  v18 = v0[2];
  v18[3] = sub_24910C6AC();
  v18[4] = sub_2490F57CC(&unk_27EED7B20, MEMORY[0x277D056D0], MEMORY[0x277D056C8]);
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_24910C64C();
  v19 = *MEMORY[0x277D05700];
  v20 = sub_24910C74C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);

  v22 = v0[1];
LABEL_19:

  return v22();
}

uint64_t DTTransportDaemon.handleLocalRequest(request:context:xpcConnection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  swift_getObjectType();
  v4[8] = sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v6 = sub_24910CDAC();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_2490D26F0, v6, v5);
}

uint64_t sub_2490D26F0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_2490D2800;
  v7 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 16, v1, v2, 0xD000000000000032, 0x8000000249111660, sub_2490F5814, v4, v7);
}

uint64_t sub_2490D2800()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2490D2938;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_2490D291C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2490D2938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490D299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = type metadata accessor for DTTransportDaemon.DTOperationItem(0);
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24910C86C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v13 = (v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  sub_24910C2EC();
  v19 = v13[8];
  v50 = v9;
  v20 = *(v9 + 16);
  v20(&v18[v19], a1, v8);
  v21 = v13[9];
  v22 = sub_24910C73C();
  (*(*(v22 - 8) + 16))(&v18[v21], a2, v22);
  v23 = v13[10];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7E40, &unk_2491104E0);
  (*(*(v24 - 8) + 16))(&v18[v23], v48, v24);
  v25 = v13[7];
  *&v18[v25] = sub_24910C4AC();
  swift_weakInit();
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v26 = sub_24910C89C();
  __swift_project_value_buffer(v26, qword_27EEDAFD8);
  sub_2490FA748(v18, v16, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v20(v11, a1, v8);
  v27 = sub_24910C87C();
  v28 = sub_24910CF5C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v54[0] = v49;
    *v29 = 136315394;
    sub_24910C2FC();
    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v30 = sub_24910D50C();
    v32 = v31;
    sub_2490FA7B0(v16, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
    v33 = sub_24909F930(v30, v32, v54);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
    v34 = sub_24910D50C();
    v36 = v35;
    (*(v50 + 8))(v11, v8);
    v37 = sub_24909F930(v34, v36, v54);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_249083000, v27, v28, "Operation enqueue: xid=%s, request=%s", v29, 0x16u);
    v38 = v49;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v38, -1, -1);
    MEMORY[0x24C1F26F0](v29, -1, -1);
  }

  else
  {

    (*(v50 + 8))(v11, v8);
    sub_2490FA7B0(v16, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  }

  v39 = v51;
  sub_2490FA748(v18, v51, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
  v40 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue;
  v41 = v53;
  swift_beginAccess();
  v42 = *(v41 + v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + v40) = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_2490F10B4(0, v42[2] + 1, 1, v42);
    *(v41 + v40) = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_2490F10B4((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  sub_2490FA810(v39, v42 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v45, type metadata accessor for DTTransportDaemon.DTOperationItem);
  *(v41 + v40) = v42;
  swift_endAccess();
  sub_2490DEDDC();
  return sub_2490FA7B0(v18, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
}

void sub_2490D2FC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v9 = sub_24910C85C();
  if (v10)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v11 = sub_24910C89C();
    __swift_project_value_buffer(v11, qword_27EEDAFD8);
    v12 = a2;
    v49 = sub_24910C87C();
    v13 = sub_24910CF4C();

    if (os_log_type_enabled(v49, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v51[0] = v15;
      *v14 = 136315138;
      v16 = [v12 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_24910D50C();
      v19 = v18;
      (*(v6 + 8))(v8, v5);
      v20 = sub_24909F930(v17, v19, v51);

      *(v14 + 4) = v20;
      v21 = "### Monitor start failed: no monitorID, accessory=%s";
LABEL_15:
      _os_log_impl(&dword_249083000, v49, v13, v21, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1F26F0](v15, -1, -1);
      MEMORY[0x24C1F26F0](v14, -1, -1);

      return;
    }

LABEL_16:
    v44 = v49;

    return;
  }

  v22 = v9;
  if (!swift_weakLoadStrong())
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v37 = sub_24910C89C();
    __swift_project_value_buffer(v37, qword_27EEDAFD8);
    v38 = a2;
    v49 = sub_24910C87C();
    v13 = sub_24910CF4C();

    if (os_log_type_enabled(v49, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v51[0] = v15;
      *v14 = 136315138;
      v39 = [v38 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_24910D50C();
      v42 = v41;
      (*(v6 + 8))(v8, v5);
      v43 = sub_24909F930(v40, v42, v51);

      *(v14 + 4) = v43;
      v21 = "### Monitor start failed: no xpc connection, accessory=%s";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  v25 = qword_27EEDAFD0;
  a2;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_24910C89C();
  __swift_project_value_buffer(v26, qword_27EEDAFD8);

  v27 = sub_24910C87C();
  v28 = sub_24910CF5C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51[0] = v49;
    *v29 = 134218242;
    v48 = v23;
    *(v29 + 4) = v23;
    *(v29 + 12) = 2080;
    v50 = sub_2490D36A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
    sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
    v30 = sub_24910CC5C();
    v32 = v31;

    v33 = sub_24909F930(v30, v32, v51);

    *(v29 + 14) = v33;
    v34 = v28;
    v35 = v48;
    _os_log_impl(&dword_249083000, v27, v34, "Monitor start local: monitorID=%llu, targets=[%s]", v29, 0x16u);
    v36 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x24C1F26F0](v36, -1, -1);
    MEMORY[0x24C1F26F0](v29, -1, -1);
  }

  else
  {

    v35 = v23;
  }

  type metadata accessor for DTTransportDaemon.DTTransportMonitorInfoLocal();
  v45 = swift_allocObject();
  swift_weakInit();
  *(v45 + 16) = sub_2490FAEBC;
  *(v45 + 24) = v24;
  swift_weakAssign();
  v46 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v3 + v46);
  *(v3 + v46) = 0x8000000000000000;
  sub_2490F327C(v45, v35, isUniquelyReferenced_nonNull_native, &qword_27EED7EF8, &qword_249110850);
  *(v3 + v46) = v50;
  swift_endAccess();
}

char *sub_2490D36A8()
{
  v1 = sub_24910C2FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24910E880;
  v6 = [v0 uniqueIdentifier];
  sub_24910C2CC();

  v7 = sub_24910C28C();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v4, v1);
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v11 = sub_2490E55A0();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];
    sub_24910C2CC();

    v14 = sub_24910C28C();
    v16 = v15;
    v10(v4, v1);
    v5 = sub_24909F648(1, 2, 1, v5);

    *(v5 + 16) = 2;
    *(v5 + 48) = v14;
    *(v5 + 56) = v16;
  }

  return v5;
}

uint64_t sub_2490D3868(char a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v5 = sub_2490F128C(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490F3990();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = sub_24910C2FC();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_2490F2780(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = sub_24910C2FC();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_2490F30DC(a1 & 1, a2, v16);
    v17 = sub_24910C2FC();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_2490D3A24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = sub_2490F327C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v16;
  }

  else
  {
    result = sub_2490A0AB4(a2);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v7;
      if (!v14)
      {
        sub_2490F3E74(a3, a4);
        v15 = v17;
      }

      result = sub_2490F2DC0(v13, v15);
      *v7 = v15;
    }
  }

  return result;
}

uint64_t sub_2490D3B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F80, &qword_2491108C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2490A487C(a1, &qword_27EED7F80, &qword_2491108C8);
    v13 = sub_2490A0AB4(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490F4130(v17);
        v18 = v22;
      }

      sub_2490FA810(*(v18 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
      sub_2490F2F30(v15, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2490A487C(v8, &qword_27EED7F80, &qword_2491108C8);
  }

  else
  {
    sub_2490FA810(a1, v12, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_2490F3568(v12, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_2490D3D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2490F33EC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2490A0A3C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2490F3FC0();
        v14 = v16;
      }

      result = sub_2490CD11C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_2490D3E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2490F36B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2490A0A3C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2490F4364();
        v14 = v16;
      }

      result = sub_2490CD11C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_2490D3F48(uint64_t a1, void *a2)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v7 = sub_24910C85C();
  if (v8)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v9 = sub_24910C89C();
    __swift_project_value_buffer(v9, qword_27EEDAFD8);
    v10 = a2;
    v25 = sub_24910C87C();
    v11 = sub_24910CF4C();

    if (os_log_type_enabled(v25, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136315138;
      v14 = [v10 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_24910D50C();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = sub_24909F930(v15, v17, v26);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_249083000, v25, v11, "### Monitor start failed: no monitorID, accessory=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1F26F0](v13, -1, -1);
      MEMORY[0x24C1F26F0](v12, -1, -1);
    }

    else
    {
      v24 = v25;
    }
  }

  else
  {
    v19 = v7;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v20 = sub_24910C89C();
    __swift_project_value_buffer(v20, qword_27EEDAFD8);
    v21 = sub_24910C87C();
    v22 = sub_24910CF5C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v19;
      _os_log_impl(&dword_249083000, v21, v22, "Monitor stop outgoing: monitorID=%llu", v23, 0xCu);
      MEMORY[0x24C1F26F0](v23, -1, -1);
    }

    swift_beginAccess();
    sub_2490D3A24(0, v19, &qword_27EED7EF8, &qword_249110850);
    swift_endAccess();
  }
}

void sub_2490D42F8(NSObject *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_24910C2FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v12 = sub_24910C85C();
  if (v13)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v14 = sub_24910C89C();
    __swift_project_value_buffer(v14, qword_27EEDAFD8);
    v15 = a2;
    v46 = sub_24910C87C();
    v16 = sub_24910CF4C();

    if (os_log_type_enabled(v46, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v48[0] = v18;
      *v17 = 136315138;
      v19 = [v15 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = sub_24910D50C();
      v22 = v21;
      (*(v9 + 8))(v11, v8);
      v23 = sub_24909F930(v20, v22, v48);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_249083000, v46, v16, "### Monitor start failed: no monitorID, accessory=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1F26F0](v18, -1, -1);
      MEMORY[0x24C1F26F0](v17, -1, -1);
    }

    else
    {
      v37 = v46;
    }
  }

  else
  {
    v24 = v12;
    v46 = a1;
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    v26 = qword_27EEDAFD0;
    a2;
    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_24910C89C();
    __swift_project_value_buffer(v27, qword_27EEDAFD8);

    v28 = sub_24910C87C();
    v29 = sub_24910CF5C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v30 = 134218242;
      *(v30 + 4) = v24;
      *(v30 + 12) = 2080;
      HIDWORD(v43) = v29;
      v47 = sub_2490D36A8();
      v45 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
      sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
      v31 = sub_24910CC5C();
      v33 = v32;

      v34 = sub_24909F930(v31, v33, v48);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_249083000, v28, BYTE4(v43), "Monitor start outgoing: monitorID=%llu, targets=[%s]", v30, 0x16u);
      v35 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1F26F0](v35, -1, -1);
      MEMORY[0x24C1F26F0](v30, -1, -1);

      v36 = v45;
    }

    else
    {

      v36 = v24;
    }

    v38 = sub_24910C4AC();
    swift_weakLoadStrong();
    type metadata accessor for DTTransportDaemon.DTTransportMonitorInfoOutgoing();
    v39 = swift_allocObject();
    swift_weakInit();
    v39[2] = a3;
    v39[3] = v38;
    v39[4] = sub_2490FC808;
    v39[5] = v25;
    swift_weakAssign();

    v40 = a3;

    v41 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v4 + v41);
    *(v4 + v41) = 0x8000000000000000;
    sub_2490F327C(v39, v36, isUniquelyReferenced_nonNull_native, &qword_27EED7F00, &qword_249110858);
    *(v4 + v41) = v47;
    swift_endAccess();
    sub_2490D48A0();
  }
}

void sub_2490D48A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-v7];
  v9 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  swift_beginAccess();
  if (*(*(v1 + v9) + 16) || (v10 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing, swift_beginAccess(), *(*(v1 + v10) + 16)))
  {
    v11 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer;
    if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer))
    {
      return;
    }

    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v12 = sub_24910C89C();
    __swift_project_value_buffer(v12, qword_27EEDAFD8);
    v13 = sub_24910C87C();
    v14 = sub_24910CF5C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_249083000, v13, v14, "Monitor timer start", v15, 2u);
      MEMORY[0x24C1F26F0](v15, -1, -1);
    }

    v16 = sub_24910C34C();
    v17 = sub_24910CDEC();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v8, 1, 1, v17);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = ObjectType;
    sub_2490A4674(v8, v6, &unk_27EED7B50, &qword_24910E810);
    if ((*(v18 + 48))(v6, 1, v17) == 1)
    {
      sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v18 + 8))(v6, v17);
    }

    v21 = sub_2490A46DC();
    v35 = 6;
    v36 = 0;
    v37 = v16;
    v38 = v21;

    v22 = v16;
    v23 = swift_task_create();
    sub_2490A487C(v8, &unk_27EED7B50, &qword_24910E810);

    *(v1 + v11) = v23;

    v33 = sub_24910C58C();
    v34 = v24;
    MEMORY[0x24C1F1710](0x726F74696E6F6D2ELL, 0xED00004D4D4D482ELL);
    sub_24910CCAC();

    v25 = os_transaction_create();
  }

  else
  {
    v26 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer;
    if (*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTimer))
    {
      v27 = qword_27EEDAFD0;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_24910C89C();
      __swift_project_value_buffer(v28, qword_27EEDAFD8);
      v29 = sub_24910C87C();
      v30 = sub_24910CF5C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_249083000, v29, v30, "Monitor timer stop", v31, 2u);
        MEMORY[0x24C1F26F0](v31, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
      sub_24910CE3C();

      *(v1 + v26) = 0;
    }

    v25 = 0;
  }

  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorTransaction) = v25;
  swift_unknownObjectRelease();
}

void sub_2490D4DC4(uint64_t a1, void *a2)
{
  v3 = sub_24910C2FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  v7 = sub_24910C85C();
  if (v8)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v9 = sub_24910C89C();
    __swift_project_value_buffer(v9, qword_27EEDAFD8);
    v10 = a2;
    v25 = sub_24910C87C();
    v11 = sub_24910CF4C();

    if (os_log_type_enabled(v25, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136315138;
      v14 = [v10 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_24910D50C();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = sub_24909F930(v15, v17, v26);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_249083000, v25, v11, "### Monitor start failed: no monitorID, accessory=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1F26F0](v13, -1, -1);
      MEMORY[0x24C1F26F0](v12, -1, -1);
    }

    else
    {
      v24 = v25;
    }
  }

  else
  {
    v19 = v7;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v20 = sub_24910C89C();
    __swift_project_value_buffer(v20, qword_27EEDAFD8);
    v21 = sub_24910C87C();
    v22 = sub_24910CF5C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v19;
      _os_log_impl(&dword_249083000, v21, v22, "Monitor stop outgoing: monitorID=%llu", v23, 0xCu);
      MEMORY[0x24C1F26F0](v23, -1, -1);
    }

    swift_beginAccess();
    sub_2490D3A24(0, v19, &qword_27EED7F00, &qword_249110858);
    swift_endAccess();
    sub_2490D48A0();
  }
}

void DTTransportDaemon.handleMonitorStopAll(xpcConnection:)(uint64_t a1)
{
  v68 = a1;
  v2 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  MEMORY[0x28223BE20](v2);
  v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  swift_beginAccess();
  v70 = v1;
  v5 = *(v1 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v64 = *MEMORY[0x277D05790];

  v10 = 0;
  *&v11 = 134217984;
  v63 = v11;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (v10 << 9) | (8 * v13);
    v15 = *(v5 + 56);
    v69 = *(*(v5 + 48) + v14);
    v16 = *(v15 + v14);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = Strong;

      if (v18 == v68)
      {
        v62 = v2;
        v66 = 0;
        if (qword_27EEDAFD0 != -1)
        {
          swift_once();
        }

        v19 = sub_24910C89C();
        __swift_project_value_buffer(v19, qword_27EEDAFD8);
        v20 = sub_24910C87C();
        v21 = sub_24910CF5C();
        v22 = os_log_type_enabled(v20, v21);
        v23 = v65;
        v67 = v4;
        if (v22)
        {
          v24 = swift_slowAlloc();
          *v24 = v63;
          *(v24 + 4) = v69;
          _os_log_impl(&dword_249083000, v20, v21, "Monitor stop: monitorID=%llu (XPC close)", v24, 0xCu);
          MEMORY[0x24C1F26F0](v24, -1, -1);
        }

        swift_beginAccess();
        v25 = sub_2490A0AB4(v69);
        if (v26)
        {
          v61 = v25;
          v27 = v70;
          v28 = v67;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v27 + v28);
          v72 = v30;
          *(v27 + v28) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2490F3E74(&qword_27EED7F00, &qword_249110858);
            v30 = v72;
          }

          v31 = v61;

          sub_2490F2DC0(v31, v30);
          *(v70 + v28) = v30;
        }

        swift_endAccess();
        sub_24910C2EC();
        v2 = v62;
        v32 = *(v62 + 20);
        sub_24910C6CC();
        v33 = sub_24910C86C();
        (*(*(v33 - 8) + 104))(&v23[v32], v64, v33);
        v34 = &v23[*(v2 + 24)];
        *v34 = 0;
        *(v34 + 1) = 0;
        v23[*(v2 + 28)] = 2;
        v35 = v23;
        v36 = v23;
        v37 = v66;
        sub_2490D580C(v35, *(v16 + 16), nullsub_1, 0);
        if (v37)
        {
        }

        sub_2490FA7B0(v36, type metadata accessor for DTTransportDaemon.DTTransportRequest);

        v4 = v67;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  v66 = 0;

  v38 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
  v39 = v70;
  swift_beginAccess();
  v40 = *(v39 + v38);
  v41 = 1 << *(v40 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v40 + 64);
  v44 = (v41 + 63) >> 6;

  v45 = 0;
  while (v43)
  {
LABEL_35:
    v47 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v48 = *(*(v40 + 48) + ((v45 << 9) | (8 * v47)));
    v49 = swift_weakLoadStrong();
    if (v49)
    {
      v50 = v49;

      if (v50 == v68)
      {
        v69 = v38;
        if (qword_27EEDAFD0 != -1)
        {
          swift_once();
        }

        v51 = sub_24910C89C();
        __swift_project_value_buffer(v51, qword_27EEDAFD8);
        v52 = sub_24910C87C();
        v53 = sub_24910CF5C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = v63;
          *(v54 + 4) = v48;
          _os_log_impl(&dword_249083000, v52, v53, "Monitor stop: monitorID=%llu (XPC close)", v54, 0xCu);
          MEMORY[0x24C1F26F0](v54, -1, -1);
        }

        v38 = v69;
        swift_beginAccess();
        v55 = sub_2490A0AB4(v48);
        if (v56)
        {
          v57 = v55;
          v58 = v70;
          v59 = swift_isUniquelyReferenced_nonNull_native();
          v60 = *(v58 + v38);
          v71 = v60;
          *(v58 + v38) = 0x8000000000000000;
          if (!v59)
          {
            sub_2490F3E74(&qword_27EED7EF8, &qword_249110850);
            v60 = v71;
          }

          sub_2490F2DC0(v57, v60);
          *(v70 + v38) = v60;
        }

        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v46 >= v44)
    {

      sub_2490D48A0();
      return;
    }

    v43 = *(v40 + 64 + 8 * v46);
    ++v45;
    if (v43)
    {
      v45 = v46;
      goto LABEL_35;
    }
  }

LABEL_46:
  __break(1u);
}

void sub_2490D580C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v32 = a3;
  v6 = sub_24910C2FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 device];
  if (v10 && (v11 = v10, v12 = [v10 hmmmMessageDestination], v11, (v31 = v12) != 0))
  {
    v13 = [a2 home];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
      sub_2490FC158(&qword_27EEDB090, &unk_249110778);
      v15 = sub_24910BFBC();
      if (v4)
      {
      }

      else
      {
        v21 = v15;
        v22 = v16;
        v23 = sub_24910CE5C();
        v24 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v23 transportRestriction:2];

        v25 = sub_24910CC8C();
        v26 = sub_24910C1CC();
        v27 = swift_allocObject();
        v28 = v39;
        *(v27 + 16) = v32;
        *(v27 + 24) = v28;
        v37 = sub_2490FC720;
        v38 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v34 = 1107296256;
        v35 = sub_2490EAE90;
        v36 = &block_descriptor_170_0;
        v29 = _Block_copy(&aBlock);

        v30 = v31;
        [v14 sendModernMessagingRequestWithMessageName:v25 destination:v31 requestPayload:v26 options:v24 responseHandler:v29 completionHandler:0];
        _Block_release(v29);

        sub_2490A453C(v21, v22);
      }
    }

    else
    {
      sub_24910C7DC();
      aBlock = 0;
      v34 = 0xE000000000000000;
      sub_24910D25C();

      aBlock = 0xD00000000000001FLL;
      v34 = 0x8000000249111CC0;
      v19 = [a2 uniqueIdentifier];
      sub_24910C2CC();

      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v20 = sub_24910D50C();
      MEMORY[0x24C1F1710](v20);

      (*(v7 + 8))(v9, v6);
      sub_24910C7EC();
      swift_willThrow();
    }
  }

  else
  {
    sub_24910C7DC();
    aBlock = 0;
    v34 = 0xE000000000000000;
    sub_24910D25C();

    aBlock = 0xD000000000000021;
    v34 = 0x8000000249111C90;
    v17 = [a2 uniqueIdentifier];
    sub_24910C2CC();

    sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_24910D50C();
    MEMORY[0x24C1F1710](v18);

    (*(v7 + 8))(v9, v6);
    sub_24910C7EC();
    swift_willThrow();
  }
}

uint64_t sub_2490D5D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  swift_getObjectType();
  v5 = sub_24910C68C();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_24910C4FC();
  v4[17] = swift_task_alloc();
  v6 = sub_24910C73C();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v7 = sub_24910C86C();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v9 = sub_24910CDAC();
  v4[27] = v9;
  v4[28] = v8;

  return MEMORY[0x2822009F8](sub_2490D5F30, v9, v8);
}

uint64_t sub_2490D5F30()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 88);
  v6 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  *(v0 + 232) = v6;
  v7 = *(v6 + 20);
  *(v0 + 448) = v7;
  v8 = *(v4 + 16);
  v8(v1, v5 + v7, v3);
  v8(v2, v1, v3);
  v9 = (*(v4 + 88))(v2, v3);
  if (v9 == *MEMORY[0x277D057D8] || v9 == *MEMORY[0x277D057A8] || v9 == *MEMORY[0x277D05798])
  {
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    v14 = *(v0 + 184);
    v15 = *(v13 + 8);
    *(v0 + 240) = v15;
    *(v0 + 248) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v14);

    sub_24910C4DC();
    sub_24910C70C();
    v16 = swift_task_alloc();
    *(v0 + 256) = v16;
    *v16 = v0;
    v17 = sub_2490D6770;
  }

  else if (v9 == *MEMORY[0x277D057A0] || v9 == *MEMORY[0x277D057B0])
  {
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v21 = *(v0 + 184);
    v22 = *(v20 + 8);
    *(v0 + 320) = v22;
    *(v0 + 328) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v19, v21);
    v16 = swift_task_alloc();
    *(v0 + 336) = v16;
    *v16 = v0;
    v17 = sub_2490D6ED4;
  }

  else
  {
    if (v9 == *MEMORY[0x277D057D0])
    {
      v24 = *(v0 + 208);
      v25 = *(v0 + 184);
      v26 = *(v0 + 192);
      v27 = *(v0 + 80);
      (*(v26 + 96))(*(v0 + 200), v25);
      v27[3] = sub_24910C65C();
      v27[4] = sub_2490F57CC(&unk_27EED8020, MEMORY[0x277D056B0], MEMORY[0x277D056A8]);
      __swift_allocate_boxed_opaque_existential_1(v27);
      sub_24910C64C();
      (*(v26 + 8))(v24, v25);
LABEL_21:

      v28 = *(v0 + 8);
LABEL_22:

      return v28();
    }

    if (v9 == *MEMORY[0x277D057C0])
    {
      v29 = swift_task_alloc();
      *(v0 + 416) = v29;
      *v29 = v0;
      v29[1] = sub_2490D7744;
      v30 = *(v0 + 96);
      v31 = *(v0 + 80);
      v32 = *(v0 + 88);

      return sub_2490D8638(v31, v32, v30);
    }

    if (v9 == *MEMORY[0x277D05790])
    {
      v33 = swift_task_alloc();
      *(v0 + 432) = v33;
      *v33 = v0;
      v33[1] = sub_2490D7960;
      v34 = *(v0 + 96);
      v35 = *(v0 + 80);
      v36 = *(v0 + 88);

      return sub_2490D9204(v35, v36, v34);
    }

    if (v9 == *MEMORY[0x277D057B8])
    {
      v37 = *(v0 + 200);
      v61 = *(v0 + 208);
      v38 = *(v0 + 184);
      v39 = *(v0 + 192);
      v40 = *(v0 + 120);
      v41 = *(v0 + 128);
      v42 = *(v0 + 112);
      v43 = *(v0 + 96);
      v44 = *(v0 + 80);
      (*(v39 + 96))(v37, v38);
      (*(v40 + 32))(v41, v37, v42);
      sub_2490D9FF8(v41, v43);
      v44[3] = sub_24910C63C();
      v44[4] = sub_2490F57CC(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
      __swift_allocate_boxed_opaque_existential_1(v44);
      sub_24910C62C();
      (*(v40 + 8))(v41, v42);
      (*(v39 + 8))(v61, v38);
      goto LABEL_21;
    }

    if (v9 == *MEMORY[0x277D05780])
    {
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_38:
      v45 = *(v0 + 208);
      v46 = *(v0 + 184);
      v47 = *(v0 + 192);
      sub_24910C7DC();
      sub_24910C7EC();
      swift_willThrow();
      (*(v47 + 8))(v45, v46);

      v28 = *(v0 + 8);
      goto LABEL_22;
    }

    if (v9 == *MEMORY[0x277D05788])
    {
      goto LABEL_38;
    }

    if (v9 != *MEMORY[0x277D05778])
    {
      v53 = *(v0 + 208);
      if (v9 == *MEMORY[0x277D057C8])
      {
        v54 = *(v0 + 184);
        v55 = *(v0 + 192);
        v56 = *(v0 + 80);
        sub_2490D9BF4(*(v0 + 96));
        v56[3] = sub_24910C63C();
        v56[4] = sub_2490F57CC(&qword_27EED7A68, MEMORY[0x277D056A0], MEMORY[0x277D05698]);
        __swift_allocate_boxed_opaque_existential_1(v56);
        sub_24910C62C();
        (*(v55 + 8))(v53, v54);
      }

      else
      {
        v57 = *(v0 + 200);
        v58 = *(v0 + 184);
        v59 = *(v0 + 80);
        v60 = *(*(v0 + 192) + 8);
        v60(*(v0 + 208), v58);
        *(v59 + 32) = 0;
        *v59 = 0u;
        *(v59 + 16) = 0u;
        v60(v57, v58);
      }

      goto LABEL_21;
    }

    v48 = (*(v0 + 88) + *(v6 + 24));
    v50 = *v48;
    v49 = v48[1];

    sub_24910C4DC();
    sub_24910C70C();
    if (v49)
    {
      sub_2490D8298(v50, v49);
      if (v51)
      {
        v52 = v51;
        sub_2490D36A8();
      }

      sub_24910C72C();
    }

    v16 = swift_task_alloc();
    *(v0 + 376) = v16;
    *v16 = v0;
    v17 = sub_2490D7368;
  }

  v16[1] = v17;

  return sub_2490CEEA0();
}

uint64_t sub_2490D6770(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[27];
    v6 = v3[28];

    return MEMORY[0x2822009F8](sub_2490D7E4C, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v3[35] = v7;
    *v7 = v4;
    v7[1] = sub_2490D68FC;
    v8 = v3[26];
    v9 = v3[22];

    return DTTimerDaemon.handleRequest(_:context:)((v3 + 2), v8, v9);
  }
}

uint64_t sub_2490D68FC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_2490D7F30;
  }

  else
  {
    v5 = sub_2490D6A50;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490D6A50()
{
  v1 = *(*(v0 + 88) + *(*(v0 + 232) + 28));
  if (v1 != 2 && (v1 & 1) != 0 && (Strong = swift_weakLoadStrong(), (*(v0 + 296) = Strong) != 0))
  {
    *(v0 + 304) = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    type metadata accessor for DTDaemon(0);
    sub_2490F57CC(&unk_27EED7F50, type metadata accessor for DTDaemon, &protocol conformance descriptor for DTDaemon);
    v4 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490D6C14, v4, v3);
  }

  else
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 208);
    v7 = *(v0 + 184);
    v8 = *(v0 + 80);
    (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
    v5(v6, v7);
    sub_2490FC19C((v0 + 16), v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2490D6C14()
{
  v1 = v0[37];
  v2 = v0[38];
  swift_beginAccess();
  v0[39] = *(v1 + v2);
  v3 = v0[27];
  v4 = v0[28];

  return MEMORY[0x2822009F8](sub_2490D6CA8, v3, v4);
}

uint64_t sub_2490D6CA8()
{
  v1 = *(v0 + 312);

  if (v1)
  {
    type metadata accessor for DTSyncDaemon(0);
    sub_2490F57CC(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
    v3 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_2490D6E3C, v3, v2);
  }

  else
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 208);
    v6 = *(v0 + 184);
    v7 = *(v0 + 80);
    (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
    v4(v5, v6);
    sub_2490FC19C((v0 + 16), v7);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2490D6E3C()
{
  v1 = v0[36];
  DTSyncDaemon.handleRequest(_:context:)(v0[26], v0[22]);
  if (v1)
  {

    v2 = v0[27];
    v3 = v0[28];
    v4 = sub_2490D8014;
  }

  else
  {
    v2 = v0[27];
    v3 = v0[28];
    v4 = sub_2490FC800;
  }

  return MEMORY[0x2822009F8](v4, v2, v3);
}

uint64_t sub_2490D6ED4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 224);
  v6 = *(v3 + 216);
  if (v1)
  {
    v7 = sub_2490D8108;
  }

  else
  {
    v7 = sub_2490D7018;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490D7018()
{

  sub_24910C4DC();
  sub_24910C70C();
  v1 = swift_task_alloc();
  v0[45] = v1;
  *v1 = v0;
  v1[1] = sub_2490D7104;
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[10];

  return DTTimerDaemon.handleRequest(_:context:)(v4, v2, v3);
}

uint64_t sub_2490D7104()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  (*(v2[19] + 8))(v2[21], v2[18]);

  v3 = v2[28];
  v4 = v2[27];
  if (v0)
  {
    v5 = sub_2490D81D0;
  }

  else
  {
    v5 = sub_2490D72A8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490D72A8()
{
  (*(v0 + 320))(*(v0 + 208), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490D7368(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {
    v5 = *(v3 + 216);
    v6 = *(v3 + 224);

    return MEMORY[0x2822009F8](sub_2490D7A9C, v5, v6);
  }

  else
  {
    v7 = *(v3 + 448);
    v8 = *(v3 + 88);
    v9 = swift_task_alloc();
    *(v3 + 400) = v9;
    *v9 = v4;
    v9[1] = sub_2490D7508;
    v10 = *(v3 + 160);
    v11 = *(v3 + 80);

    return DTTimerDaemon.handleRequest(_:context:)(v11, v8 + v7, v10);
  }
}

uint64_t sub_2490D7508()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_2490D7B8C;
  }

  else
  {
    v5 = sub_2490D765C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490D765C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D7744()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_2490D7C7C;
  }

  else
  {
    v5 = sub_2490D7880;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490D7880()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[26], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D7960()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_2490D7D64;
  }

  else
  {
    v5 = sub_2490FC83C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490D7A9C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D7B8C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D7C7C()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[26], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D7D64()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  v3(v0[26], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D7E4C()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[23];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D7F30()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[23];
  (*(v0[19] + 8))(v0[22], v0[18]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2490D8014()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 80);
  (*(*(v0 + 152) + 8))(*(v0 + 176), *(v0 + 144));
  v1(v2, v3);
  sub_2490FC19C((v0 + 16), v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2490D8108()
{
  (*(v0 + 320))(*(v0 + 208), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490D81D0()
{
  (*(v0 + 320))(*(v0 + 208), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

void sub_2490D8298(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v38 = sub_24910C2FC();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v6)
  {
    v7 = [v6 homes];
    sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
    v8 = sub_24910CD5C();

    if (!(v8 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_28:

      return;
    }
  }

  v9 = sub_24910D19C();
  if (!v9)
  {
    goto LABEL_28;
  }

LABEL_4:
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v29 = v8 + 32;
  v30 = v8 & 0xFFFFFFFFFFFFFF8;
  v12 = (v3 + 8);
  v32 = v9;
  v33 = v8;
  v31 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v11)
    {
      v13 = MEMORY[0x24C1F1C90](v10, v8);
    }

    else
    {
      if (v10 >= *(v30 + 16))
      {
        goto LABEL_34;
      }

      v13 = *(v29 + 8 * v10);
    }

    v14 = v13;
    v15 = __OFADD__(v10, 1);
    v16 = v10 + 1;
    if (v15)
    {
      break;
    }

    v17 = [v13 accessories];
    sub_2490A4744(0, &qword_27EED7B10, 0x277CD1650);
    v18 = sub_24910CD5C();

    v34 = v16;
    v35 = v14;
    if (v18 >> 62)
    {
      v19 = sub_24910D19C();
      if (v19)
      {
LABEL_13:
        v20 = 0;
        v36 = v18 & 0xFFFFFFFFFFFFFF8;
        v37 = v18 & 0xC000000000000001;
        while (1)
        {
          if (v37)
          {
            v21 = MEMORY[0x24C1F1C90](v20, v18);
          }

          else
          {
            if (v20 >= *(v36 + 16))
            {
              goto LABEL_32;
            }

            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          v24 = [v21 uniqueIdentifier];
          sub_24910C2CC();

          v25 = sub_24910C28C();
          v27 = v26;
          (*v12)(v5, v38);
          if (v25 == v40 && v27 == v39)
          {

            return;
          }

          v28 = sub_24910D54C();

          if (v28)
          {

            return;
          }

          ++v20;
          if (v23 == v19)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_13;
      }
    }

LABEL_5:

    v8 = v33;
    v10 = v34;
    v11 = v31;
    if (v34 == v32)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2490D8638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  swift_getObjectType();
  sub_24910C4FC();
  v4[16] = swift_task_alloc();
  v5 = sub_24910C73C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v7 = sub_24910CDAC();
  v4[20] = v7;
  v4[21] = v6;

  return MEMORY[0x2822009F8](sub_2490D877C, v7, v6);
}

uint64_t sub_2490D877C()
{
  v1 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  *(v0 + 240) = *(v1 + 20);
  *(v0 + 176) = sub_24910C85C();
  if (v2)
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = (*(v0 + 104) + *(v1 + 24));
    v6 = *v5;
    *(v0 + 184) = *v5;
    v7 = v5[1];
    *(v0 + 192) = v7;

    sub_24910C4DC();
    sub_24910C70C();
    if (v7)
    {
      sub_2490D8298(v6, v7);
      if (v8)
      {
        v9 = v8;
        sub_2490D36A8();
      }

      sub_24910C72C();
    }

    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_2490D8958;

    return sub_2490CEEA0();
  }
}

uint64_t sub_2490D8958(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return MEMORY[0x2822009F8](sub_2490D90F4, v5, v6);
  }

  else
  {
    v7 = *(v3 + 240);
    v8 = *(v3 + 104);
    v9 = swift_task_alloc();
    *(v3 + 224) = v9;
    *v9 = v4;
    v9[1] = sub_2490D8AF8;
    v10 = *(v3 + 152);

    return DTTimerDaemon.handleRequest(_:context:)(v3 + 16, v8 + v7, v10);
  }
}

uint64_t sub_2490D8AF8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_2490D917C;
  }

  else
  {
    v5 = sub_2490D8C4C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490D8C4C()
{
  v44 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    sub_2490D8298(*(v0 + 184), v1);
    v3 = v2;
    v4 = v2;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v39 = v3;
  v41 = v3;
  v9 = [v6 peerDestination];

  v10 = sub_24910C4AC();
  type metadata accessor for DTTransportDaemon.DTTransportMonitorInfoIncoming();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = sub_2490FC1F4;
  v11[4] = v8;
  v11[5] = v5;
  v11[6] = v10;
  v40 = v9;
  v12 = [v9 idsIdentifier];
  v13 = sub_24910CC9C();
  v15 = v14;

  v42 = v13;
  v43 = v15;
  MEMORY[0x24C1F1710](45, 0xE100000000000000);
  *(v0 + 80) = v5;
  v16 = sub_24910D50C();
  MEMORY[0x24C1F1710](v16);

  v18 = v42;
  v17 = v43;
  v19 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v7 + v19);
  *(v7 + v19) = 0x8000000000000000;
  sub_2490F36B4(v11, v18, v17, isUniquelyReferenced_nonNull_native);

  *(v7 + v19) = v42;
  swift_endAccess();
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v21 = sub_24910C89C();
  __swift_project_value_buffer(v21, qword_27EEDAFD8);

  v22 = sub_24910C87C();
  v23 = sub_24910CF5C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315394;
    v26 = sub_24909F930(v18, v17, &v42);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    if (v39)
    {
      v27 = sub_2490D36A8();

      *(v0 + 88) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
      sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
      v28 = sub_24910CC5C();
      v30 = v29;
      v31 = v41;
    }

    else
    {
      v30 = 0xE300000000000000;
      v28 = 7104878;
      v31 = v41;
    }

    v32 = sub_24909F930(v28, v30, &v42);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_249083000, v22, v23, "monitor start incoming: monitorID=%s, targets=[%s]", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v25, -1, -1);
    MEMORY[0x24C1F26F0](v24, -1, -1);
  }

  else
  {
    v31 = v41;
  }

  v34 = *(v0 + 144);
  v33 = *(v0 + 152);
  v35 = *(v0 + 136);
  v36 = *(v0 + 96);
  sub_2490D48A0();

  (*(v34 + 8))(v33, v35);
  sub_2490FC19C((v0 + 16), v36);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2490D90F4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2490D917C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2490D9204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  swift_getObjectType();
  sub_24910C4FC();
  v4[10] = swift_task_alloc();
  v5 = sub_24910C73C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v7 = sub_24910CDAC();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x2822009F8](sub_2490D9348, v7, v6);
}

uint64_t sub_2490D9348()
{
  v24 = v0;
  v1 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  *(v0 + 128) = v1;
  *(v0 + 184) = *(v1 + 20);
  v2 = sub_24910C85C();
  if (v3)
  {
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = [*(v0 + 64) peerDestination];
    *(v0 + 136) = v7;
    v8 = [v7 idsIdentifier];
    v9 = sub_24910CC9C();
    v11 = v10;

    v22 = v9;
    v23 = v11;
    MEMORY[0x24C1F1710](45, 0xE100000000000000);
    *(v0 + 40) = v6;
    v12 = sub_24910D50C();
    MEMORY[0x24C1F1710](v12);

    v14 = v22;
    v13 = v23;
    swift_beginAccess();

    sub_2490D3E50(0, v22, v23);
    swift_endAccess();
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v15 = sub_24910C89C();
    __swift_project_value_buffer(v15, qword_27EEDAFD8);

    v16 = sub_24910C87C();
    v17 = sub_24910CF5C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      v20 = sub_24909F930(v14, v13, &v22);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_249083000, v16, v17, "monitor stop incoming: monitorID=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1F26F0](v19, -1, -1);
      MEMORY[0x24C1F26F0](v18, -1, -1);
    }

    else
    {
    }

    sub_2490D48A0();
    v21 = swift_task_alloc();
    *(v0 + 144) = v21;
    *v21 = v0;
    v21[1] = sub_2490D96A8;

    return sub_2490CEEA0();
  }
}

uint64_t sub_2490D96A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = sub_2490D9B04;
  }

  else
  {
    v7 = sub_2490D97EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2490D97EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 56);

  sub_24910C4DC();
  sub_24910C70C();
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_2490D98E4;
  v4 = *(v0 + 104);
  v5 = *(v0 + 48);

  return DTTimerDaemon.handleRequest(_:context:)(v5, v2 + v1, v4);
}

uint64_t sub_2490D98E4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);

  v3 = v2[15];
  v4 = v2[14];
  if (v0)
  {
    v5 = sub_2490D9B7C;
  }

  else
  {
    v5 = sub_2490D9A88;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2490D9A88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490D9B04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2490D9B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2490D9BF4(void *a1)
{
  v2 = v1;
  v3 = [a1 peerDestination];
  v4 = [v3 idsIdentifier];

  v5 = sub_24910CC9C();
  v7 = v6;

  if (qword_27EEDAFD0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAFD8);

  v9 = sub_24910C87C();
  v10 = sub_24910CF5C();

  v37 = v5;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_24909F930(v37, v7, v39);
    _os_log_impl(&dword_249083000, v9, v10, "Received monitor keepalive: from:%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v13 = v12;
    v5 = v37;
    MEMORY[0x24C1F26F0](v13, -1, -1);
    MEMORY[0x24C1F26F0](v11, -1, -1);
  }

  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  swift_beginAccess();
  v2 = *(v2 + v14);
  v15 = 1 << *(v2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v2 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  v20 = 0;
  do
  {
    v36 = v19;
    v21 = v20;
    if (!v17)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v20 = v21;
LABEL_12:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = *(*(v2 + 56) + ((v20 << 9) | (8 * v22)));
      v24 = *(v23 + 16);

      v25 = [v24 idsIdentifier];
      v26 = sub_24910CC9C();
      v28 = v27;

      v5 = v37;
      if (v37 == v26 && v7 == v28)
      {
        break;
      }

      v30 = sub_24910D54C();

      if (v30)
      {
        goto LABEL_20;
      }

      v21 = v20;
      if (!v17)
      {
LABEL_9:
        while (1)
        {
          v20 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            goto LABEL_23;
          }

          v17 = *(v2 + 64 + 8 * v20);
          ++v21;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_20:
    *(v23 + 48) = sub_24910C4AC();

    v19 = v36 + 1;
  }

  while (!__OFADD__(v36, 1));
  __break(1u);
LABEL_23:

  if (v36)
  {
  }

  else
  {

    v31 = sub_24910C87C();
    v32 = sub_24910CF5C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v33 = 136315138;
      v35 = sub_24909F930(v5, v7, &v38);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_249083000, v31, v32, "Received monitor keepalive: no monitors, from:%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1F26F0](v34, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2490D9FF8(uint64_t isEscapingClosureAtFileLocation, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v65 = v60 - v10;
  v11 = sub_24910C68C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a2 peerDestination];
  v16 = [v15 idsIdentifier];

  v67 = sub_24910CC9C();
  v18 = v17;

  if (qword_27EEDAFD0 != -1)
  {
LABEL_33:
    swift_once();
  }

  v19 = sub_24910C89C();
  __swift_project_value_buffer(v19, qword_27EEDAFD8);
  v20 = *(v12 + 16);
  v69 = isEscapingClosureAtFileLocation;
  v20(v14, isEscapingClosureAtFileLocation, v11);

  v21 = sub_24910C87C();
  isEscapingClosureAtFileLocation = sub_24910CF5C();

  v22 = os_log_type_enabled(v21, isEscapingClosureAtFileLocation);
  v66 = v9;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v68 = v3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v72[0] = v25;
    *v24 = 136315394;
    sub_2490F57CC(&qword_27EED80E0, MEMORY[0x277D056B8], MEMORY[0x277D056C0]);
    v26 = sub_24910D50C();
    v28 = v27;
    (*(v12 + 8))(v14, v11);
    v29 = sub_24909F930(v26, v28, v72);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_24909F930(v67, v18, v72);
    _os_log_impl(&dword_249083000, v21, isEscapingClosureAtFileLocation, "Received monitor event: %s, from:%s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v25, -1, -1);
    v30 = v24;
    v3 = v68;
    MEMORY[0x24C1F26F0](v30, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v11 = v18;
  v31 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  swift_beginAccess();
  v14 = *(v3 + v31);
  v9 = v14 + 64;
  v32 = 1 << v14[32];
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v14 + 8);
  v3 = (v32 + 63) >> 6;

  v35 = 0;
  v62 = 0;
  v63 = v18;
  v64 = v14;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v34)
        {
          while (1)
          {
            v12 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              break;
            }

            if (v12 >= v3)
            {
            }

            v34 = *&v9[8 * v12];
            ++v35;
            if (v34)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v12 = v35;
LABEL_15:
        v36 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v37 = (v12 << 9) | (8 * v36);
        v38 = *(*(v14 + 6) + v37);
        v18 = *(*(v14 + 7) + v37);

        if (v38 != sub_24910C67C())
        {
          goto LABEL_9;
        }

        v39 = v18[2];

        v40 = [v39 device];
        if (!v40)
        {

          goto LABEL_9;
        }

        v41 = v40;
        v42 = [v40 idsIdentifier];

        v68 = v18;
        if (v42)
        {
          v43 = v66;
          sub_24910C2CC();

          v44 = 0;
        }

        else
        {
          v44 = 1;
          v43 = v66;
        }

        v45 = sub_24910C2FC();
        v46 = *(v45 - 8);
        (*(v46 + 56))(v43, v44, 1, v45);
        v47 = v43;
        v48 = v65;
        isEscapingClosureAtFileLocation = &qword_27EED7900;
        v18 = &qword_24910EB50;
        sub_2490B3868(v47, v65, &qword_27EED7900, &qword_24910EB50);
        if ((*(v46 + 48))(v48, 1, v45) != 1)
        {
          break;
        }

        sub_2490A487C(v48, &qword_27EED7900, &qword_24910EB50);
        v11 = v63;

        v35 = v12;
        v14 = v64;
      }

      isEscapingClosureAtFileLocation = sub_24910C28C();
      v50 = v49;
      (*(v46 + 8))(v48, v45);
      v11 = v63;
      if (v67 == isEscapingClosureAtFileLocation && v63 == v50)
      {

        v18 = v68;
        v51 = v69;
        v14 = v64;
      }

      else
      {
        v52 = sub_24910D54C();

        v18 = v68;
        v51 = v69;
        v14 = v64;
        if ((v52 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_9:

      v35 = v12;
    }

    v60[1] = v60;
    v54 = MEMORY[0x28223BE20](Strong);
    v58 = v51;
    type metadata accessor for DTXPCConnection(0);
    sub_2490F57CC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);
    v61 = v54;
    sub_24910CDAC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      goto LABEL_36;
    }

    v55 = swift_allocObject();
    *(v55 + 16) = sub_2490FC224;
    *(v55 + 24) = &v60[-4];
    v56 = swift_allocObject();
    *(v56 + 16) = sub_2490FC890;
    *(v56 + 24) = v55;

    v18 = v62;
    v71[0] = v61;
    sub_2490FC724(v71);
    v62 = v18;
    if (v18)
    {
      goto LABEL_35;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      break;
    }

    v35 = v12;
  }

  __break(1u);
LABEL_35:

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
LABEL_36:
  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v70 = v61;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  v59 = 0;
  v58 = 303;
  result = sub_24910D33C();
  __break(1u);
  return result;
}

void sub_2490DA8C0()
{
  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v0 = sub_24910C89C();
  __swift_project_value_buffer(v0, qword_27EEDAFD8);
  oslog = sub_24910C87C();
  v1 = sub_24910CF5C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_249083000, oslog, v1, "XPC launch event", v2, 2u);
    MEMORY[0x24C1F26F0](v2, -1, -1);
  }
}

uint64_t sub_2490DA9A8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_24910C34C();
    v10 = sub_24910CDEC();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 1, 1, v10);
    sub_2490A4674(v6, v4, &unk_27EED7B50, &qword_24910E810);
    v12 = (*(v11 + 48))(v4, 1, v10);

    if (v12 == 1)
    {
      sub_2490A487C(v4, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v11 + 8))(v4, v10);
    }

    v13 = sub_2490A46DC();
    v14 = swift_allocObject();
    *(v14 + 16) = &unk_2491109A8;
    *(v14 + 24) = v8;
    v16[1] = 6;
    v16[2] = 0;
    v16[3] = v9;
    v16[4] = v13;

    v15 = v9;
    swift_task_create();
    sub_2490A487C(v6, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490DAC38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_getObjectType();
  sub_2490F57CC(&qword_27EED7AD8, type metadata accessor for DTTransportDaemon, &protocol conformance descriptor for DTTransportDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490DACF4, v4, v3);
}

uint64_t sub_2490DACF4()
{
  v1 = *(v0 + 16);
  if (*(v1 + 24))
  {

    v2 = sub_24910C40C();
  }

  else
  {
    v2 = 0;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v3 = sub_24910C89C();
  __swift_project_value_buffer(v3, qword_27EEDAFD8);
  v4 = sub_24910C87C();
  v5 = sub_24910CF5C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_249083000, v4, v5, "Diagnostic flags: state=%llu", v6, 0xCu);
    MEMORY[0x24C1F26F0](v6, -1, -1);
  }

  if ((v2 & 1) == 0)
  {
    v7 = 0;
    goto LABEL_17;
  }

  if ((v2 & 2) != 0)
  {
    if ((v2 & 4) == 0)
    {
      v7 = 1;
      if ((v2 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v7 = 3;
    if ((v2 & 8) != 0)
    {
LABEL_16:
      v7 |= 4uLL;
    }
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      v7 = 0;
      if ((v2 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v7 = 2;
    if ((v2 & 8) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v8 = v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride;
  *v8 = v7;
  *(v8 + 8) = (v2 & 1) == 0;
  sub_2490DAEB4();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2490DAEB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlags;
  swift_beginAccess();
  v3 = (v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride);
  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__statusFlagsOverride + 8);
  v5 = *(v0 + v2);
  if (v4 == 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
    if (v6)
    {
      if (([v6 hasOptedToHH2] & ((v5 & 2) == 0)) != 0)
      {
        v7 = v5 | 6;
      }

      else
      {
        v7 = v5 | 4;
      }

      if (v7 == *(v1 + v2))
      {
        return v7;
      }
    }

    else
    {
      if (v5)
      {
        v7 = v5 | 4;
      }

      else
      {
        v7 = v5 | 5;
      }

      if (v7 == v5)
      {
        return v7;
      }
    }
  }

  else
  {
    v7 = *v3;
    if (*v3 == v5)
    {
      return v7;
    }
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v8 = sub_24910C89C();
  __swift_project_value_buffer(v8, qword_27EEDAFD8);

  v9 = sub_24910C87C();
  v10 = sub_24910CF5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136315394;
    v13 = sub_24910CFFC();
    v15 = sub_24909F930(v13, v14, v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = sub_24910CFFC();
    v18 = sub_24909F930(v16, v17, v20);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_249083000, v9, v10, "Status flags updated: old=%s, new=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v12, -1, -1);
    MEMORY[0x24C1F26F0](v11, -1, -1);
  }

  *(v1 + v2) = v7;
  if (swift_weakLoadStrong())
  {
    sub_2490B8E80(sub_2490E1EEC, 0, "DistributedTimersDaemon/DTTransportDaemon.swift", 47, 2u, 529);
  }

  return v7;
}

uint64_t DTTransportDaemon.report(eventType:timers:)(uint64_t a1, unint64_t a2)
{
  DTTransportDaemon.reportIncoming(eventType:timers:)(a1, a2);
  DTTransportDaemon.reportOutgoing(eventType:timers:)(a1, a2);

  return DTTransportDaemon.reportLocal(eventType:timers:)(a1, a2);
}

void DTTransportDaemon.reportIncoming(eventType:timers:)(uint64_t a1, unint64_t a2)
{
  v165 = a1;
  v161 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v156 = *(v161 - 8);
  v4 = *(v156 + 64);
  v5 = MEMORY[0x28223BE20](v161);
  v155 = v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v141 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v141 - v10;
  MEMORY[0x28223BE20](v9);
  v164 = v141 - v12;
  v160 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (!v13 || (v147 = [v13 currentHome]) == 0)
  {
    if (qword_27EEDAFD0 != -1)
    {
      goto LABEL_76;
    }

    goto LABEL_10;
  }

  v151 = v11;
  v152 = v8;
  v14 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsIncoming;
  v15 = v160;
  swift_beginAccess();
  v16 = *(v15 + v14);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v150 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__transportEncoder;
  v21 = (v18 + 63) >> 6;
  v22 = a2 & 0xFFFFFFFFFFFFFF8;
  v171 = (a2 & 0xFFFFFFFFFFFFFF8);
  if ((a2 & 0x8000000000000000) != 0)
  {
    v22 = a2;
  }

  v141[1] = v22;
  v170 = a2 & 0xC000000000000001;
  v149 = *MEMORY[0x277D057B8];
  v148 = v4 + 7;
  v141[3] = "xt:xpcConnection:)";
  v141[2] = v175;
  v157 = v16;

  v23 = 0;
  v166 = 0;
  *&v24 = 136316162;
  v142 = v24;
  *&v24 = 136315650;
  v146 = v24;
  v169 = a2;
  v154 = v17;
  v153 = v21;
  if (v20)
  {
    goto LABEL_14;
  }

  do
  {
LABEL_15:
    v39 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_75;
    }

    if (v39 >= v21)
    {

      return;
    }

    v20 = *(v17 + 8 * v39);
    ++v23;
  }

  while (!v20);
  while (1)
  {
    v40 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v41 = v40 | (v39 << 6);
    v42 = *(v157 + 56);
    v43 = (*(v157 + 48) + 16 * v41);
    v44 = v43[1];
    v158 = *v43;
    v45 = *(v42 + 8 * v41);
    v176 = a2;
    v46 = *(v45 + 24);
    v168 = v44;

    v167 = v45;

    v48 = v46(v47);
    v163 = v20;
    if (!v48)
    {
      v59 = a2;
      goto LABEL_44;
    }

    v49 = v48;
    if (!a2)
    {

      v59 = 0;
      goto LABEL_41;
    }

    v172 = MEMORY[0x277D84F90];
    if (!(a2 >> 62))
    {
      isa = v171[2].isa;
      if (isa)
      {
        break;
      }

      goto LABEL_39;
    }

    isa = sub_24910D19C();
    if (isa)
    {
      break;
    }

LABEL_39:
    v59 = MEMORY[0x277D84F90];
LABEL_40:

    v20 = v163;
LABEL_41:
    swift_beginAccess();
    v176 = v59;

    if (v59)
    {
      if (v59 >> 62)
      {
        if (!sub_24910D19C())
        {
LABEL_67:

          v23 = v39;
          if (!v20)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }

      else if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }
    }

LABEL_44:
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v60 = sub_24910C89C();
    v61 = __swift_project_value_buffer(v60, qword_27EEDAFD8);

    v62 = v167;

    v162 = v61;
    v63 = sub_24910C87C();
    v64 = sub_24910CF5C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v65 = v142;
      v67 = sub_24910CFDC();
      v69 = sub_24909F930(v67, v68, &aBlock);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      if (v59)
      {
        v70 = sub_24910D09C();

        v72 = MEMORY[0x24C1F1790](v71, v70);
        v74 = v73;
      }

      else
      {
        v74 = 0xE300000000000000;
        v72 = 7104878;
      }

      v77 = sub_24909F930(v72, v74, &aBlock);

      *(v65 + 14) = v77;
      *(v65 + 22) = 2080;
      if (a2)
      {
        v78 = sub_24910D09C();
        v79 = MEMORY[0x24C1F1790](a2, v78);
        v81 = v80;
      }

      else
      {
        v81 = 0xE300000000000000;
        v79 = 7104878;
      }

      v76 = v164;
      v82 = sub_24909F930(v79, v81, &aBlock);

      *(v65 + 24) = v82;
      *(v65 + 32) = 2080;
      v84 = (*(v62 + 24))(v83);
      if (v84)
      {
        v172 = v84;
        LODWORD(v145) = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
        v62 = v167;
        sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
        v85 = sub_24910CC5C();
        v87 = v86;
        LOBYTE(v64) = v145;
      }

      else
      {
        v87 = 0xE300000000000000;
        v85 = 7104878;
      }

      v88 = sub_24909F930(v85, v87, &aBlock);

      *(v65 + 34) = v88;
      *(v65 + 42) = 2080;
      *(v65 + 44) = sub_24909F930(v158, v168, &aBlock);
      _os_log_impl(&dword_249083000, v63, v64, "Report event: event=%s, filteredTimers=%s, timers=%s, targets=[%s], peer=%s, incoming", v65, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v66, -1, -1);
      MEMORY[0x24C1F26F0](v65, -1, -1);

      v75 = v161;
    }

    else
    {

      v75 = v161;
      v76 = v164;
    }

    sub_24910C2EC();
    v89 = v75[5];

    sub_24910C66C();
    v90 = sub_24910C86C();
    (*(*(v90 - 8) + 104))(v76 + v89, v149, v90);
    v91 = (v76 + v75[6]);
    *v91 = 0;
    v91[1] = 0;
    *(v76 + v75[7]) = 2;
    v92 = v62;
    v93 = v151;
    sub_2490FA748(v76, v151, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v94 = v76;
    v95 = v152;
    sub_2490FA748(v94, v152, type metadata accessor for DTTransportDaemon.DTTransportRequest);

    v96 = sub_24910C87C();
    v97 = sub_24910CF5C();

    v98 = os_log_type_enabled(v96, v97);
    v159 = v59;
    if (v98)
    {
      v99 = swift_slowAlloc();
      v144 = v96;
      v100 = v99;
      v145 = swift_slowAlloc();
      aBlock = v145;
      *v100 = v146;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v143 = v97;
      v101 = sub_24910D50C();
      v103 = v102;
      sub_2490FA7B0(v93, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v104 = sub_24909F930(v101, v103, &aBlock);

      *(v100 + 4) = v104;
      *(v100 + 12) = 2080;
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
      v105 = sub_24910D50C();
      v107 = v106;
      sub_2490FA7B0(v95, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v108 = sub_24909F930(v105, v107, &aBlock);

      *(v100 + 14) = v108;
      *(v100 + 22) = 2080;
      v109 = [*(v92 + 16) idsIdentifier];
      v110 = sub_24910CC9C();
      v112 = v111;

      v113 = sub_24909F930(v110, v112, &aBlock);

      *(v100 + 24) = v113;
      v114 = v144;
      _os_log_impl(&dword_249083000, v144, v143, "HMMM send start: xid=%s, request=%s, to:%s", v100, 0x20u);
      v115 = v145;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v115, -1, -1);
      MEMORY[0x24C1F26F0](v100, -1, -1);
    }

    else
    {

      sub_2490FA7B0(v95, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      sub_2490FA7B0(v93, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    }

    v116 = *(v92 + 16);
    v117 = v164;
    v118 = v155;
    sub_2490FA748(v164, v155, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v119 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v120 = (v148 + v119) & 0xFFFFFFFFFFFFFFF8;
    v121 = swift_allocObject();
    sub_2490FA810(v118, v121 + v119, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    *(v121 + v120) = v92;
    v122 = v117;
    sub_2490FC158(&qword_27EEDB090, &unk_249110778);

    v123 = v166;
    v124 = sub_24910BFBC();
    if (v123)
    {

      sub_2490FA7B0(v122, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v126 = v168;

      v127 = v123;
      v128 = sub_24910C87C();
      v129 = sub_24910CF4C();

      v130 = os_log_type_enabled(v128, v129);
      a2 = v169;
      if (v130)
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        aBlock = v132;
        *v131 = v146;
        v133 = sub_24910CFDC();
        v135 = sub_24909F930(v133, v134, &aBlock);

        *(v131 + 4) = v135;
        *(v131 + 12) = 2080;
        v136 = sub_24909F930(v158, v126, &aBlock);

        *(v131 + 14) = v136;
        *(v131 + 22) = 2080;
        swift_getErrorValue();
        v137 = sub_24910D5DC();
        v139 = sub_24909F930(v137, v138, &aBlock);

        *(v131 + 24) = v139;
        _os_log_impl(&dword_249083000, v128, v129, "### Report client event failed: event=%s, peer=%s, error=%s", v131, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v132, -1, -1);
        MEMORY[0x24C1F26F0](v131, -1, -1);
      }

      else
      {
      }

      v166 = 0;
      v23 = v39;
    }

    else
    {
      v166 = 0;
      v145 = v124;
      v144 = v125;

      v32 = sub_24910CE5C();
      v33 = [objc_allocWithZone(MEMORY[0x277CD1B50]) initWithTimeout:v32 transportRestriction:2];

      v34 = sub_24910CC8C();
      v35 = sub_24910C1CC();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_2490F59A0;
      *(v36 + 24) = v121;
      v175[2] = sub_2490F59F0;
      v175[3] = v36;
      aBlock = MEMORY[0x277D85DD0];
      v174 = 1107296256;
      v175[0] = sub_2490EAE90;
      v175[1] = &block_descriptor_15;
      v37 = v116;
      v38 = _Block_copy(&aBlock);

      [v147 sendModernMessagingRequestWithMessageName:v34 destination:v37 requestPayload:v35 options:v33 responseHandler:v38 completionHandler:0];
      _Block_release(v38);

      sub_2490A453C(v145, v144);

      sub_2490FA7B0(v122, type metadata accessor for DTTransportDaemon.DTTransportRequest);

      v23 = v39;
      a2 = v169;
    }

    v17 = v154;
    v21 = v153;
    v20 = v163;
    if (!v163)
    {
      goto LABEL_15;
    }

LABEL_14:
    v39 = v23;
  }

  v51 = 0;
  v52 = v166;
  while (1)
  {
    if (v170)
    {
      v53 = MEMORY[0x24C1F1C90](v51, a2);
    }

    else
    {
      if (v51 >= v171[2].isa)
      {
        goto LABEL_74;
      }

      v53 = *(a2 + 8 * v51 + 32);
    }

    v54 = v53;
    v55 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    v56 = sub_24910D04C();
    if (v57)
    {
      aBlock = v56;
      v174 = v57;
      MEMORY[0x28223BE20](v56);
      v141[-2] = &aBlock;
      v58 = sub_2490CCC78(sub_2490F59FC, &v141[-4], v49);

      if (v58)
      {
        sub_24910D2AC();
        sub_24910D2DC();
        sub_24910D2EC();
        sub_24910D2BC();
      }

      else
      {
      }

      a2 = v169;
    }

    else
    {
    }

    v51 = (v51 + 1);
    if (v55 == isa)
    {
      v166 = v52;
      v59 = v172;
      v17 = v154;
      v21 = v153;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  swift_once();
LABEL_10:
  v25 = sub_24910C89C();
  __swift_project_value_buffer(v25, qword_27EEDAFD8);
  v171 = sub_24910C87C();
  v26 = sub_24910CF4C();
  if (os_log_type_enabled(v171, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136315138;
    v29 = sub_24910CFDC();
    v31 = sub_24909F930(v29, v30, &aBlock);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_249083000, v171, v26, "### Report client event failed: no home, event=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x24C1F26F0](v28, -1, -1);
    MEMORY[0x24C1F26F0](v27, -1, -1);
  }

  else
  {
    v140 = v171;
  }
}

uint64_t DTTransportDaemon.reportOutgoing(eventType:timers:)(uint64_t a1, unint64_t a2)
{
  v67 = a1;
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsOutgoing;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v76 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v11 = a2;
  }

  v64 = v11;
  v75 = a2 & 0xC000000000000001;
  v70 = v5;

  v12 = 0;
  *&v13 = 136315906;
  v65 = v13;
  v73 = a2;
  v68 = v10;
  v69 = v6;
  while (v9)
  {
    v14 = v12;
LABEL_12:
    v15 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(v70 + 56);
    v71 = *(*(v70 + 48) + v15);
    v9 &= v9 - 1;
    v17 = *(v16 + v15);
    v80 = a2;
    v18 = *(v17 + 32);

    v20 = v18(v19);
    v72 = v17;
    v74 = v20;
    if (!v20)
    {
      v29 = a2;
      goto LABEL_38;
    }

    if (a2)
    {
      v77 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
        v21 = sub_24910D19C();
        if (v21)
        {
LABEL_16:
          v22 = 0;
          while (1)
          {
            if (v75)
            {
              v23 = MEMORY[0x24C1F1C90](v22, a2);
            }

            else
            {
              if (v22 >= *(v76 + 16))
              {
                goto LABEL_60;
              }

              v23 = *(a2 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            v26 = sub_24910D04C();
            if (v27)
            {
              v78 = v26;
              v79 = v27;
              MEMORY[0x28223BE20](v26);
              v63 = &v78;
              v28 = sub_2490CCC78(sub_2490FC858, v62, v74);

              if (v28)
              {
                sub_24910D2AC();
                sub_24910D2DC();
                sub_24910D2EC();
                sub_24910D2BC();
              }

              else
              {
              }

              a2 = v73;
            }

            else
            {
            }

            ++v22;
            if (v25 == v21)
            {
              v29 = v77;
              v10 = v68;
              v6 = v69;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        v21 = *(v76 + 16);
        if (v21)
        {
          goto LABEL_16;
        }
      }

      v29 = MEMORY[0x277D84F90];
LABEL_34:
    }

    else
    {

      v29 = 0;
    }

    swift_beginAccess();
    v80 = v29;

    if (v29)
    {
      if (v29 >> 62)
      {
        if (sub_24910D19C())
        {
          goto LABEL_38;
        }
      }

      else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v12 = v14;
    }

    else
    {
LABEL_38:
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v30 = sub_24910C89C();
      __swift_project_value_buffer(v30, qword_27EEDAFD8);

      v31 = sub_24910C87C();
      v32 = sub_24910CF5C();

      if (os_log_type_enabled(v31, v32))
      {
        LODWORD(v74) = v32;
        v33 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v78 = v66;
        *v33 = v65;
        v34 = sub_24910CFDC();
        v36 = sub_24909F930(v34, v35, &v78);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        if (v29)
        {
          v37 = sub_24910D09C();

          v39 = MEMORY[0x24C1F1790](v38, v37);
          v41 = v40;
        }

        else
        {
          v41 = 0xE300000000000000;
          v39 = 7104878;
        }

        v42 = sub_24909F930(v39, v41, &v78);

        *(v33 + 14) = v42;
        *(v33 + 22) = 2080;
        v43 = v73;
        if (v73)
        {
          v44 = sub_24910D09C();
          v45 = MEMORY[0x24C1F1790](v43, v44);
          v47 = v46;
        }

        else
        {
          v47 = 0xE300000000000000;
          v45 = 7104878;
        }

        v48 = sub_24909F930(v45, v47, &v78);

        *(v33 + 24) = v48;
        *(v33 + 32) = 2080;
        v50 = (*(v72 + 32))(v49);
        if (v50)
        {
          v77 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
          sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
          v51 = sub_24910CC5C();
          v53 = v52;
        }

        else
        {
          v53 = 0xE300000000000000;
          v51 = 7104878;
        }

        v54 = sub_24909F930(v51, v53, &v78);

        *(v33 + 34) = v54;
        _os_log_impl(&dword_249083000, v31, v74, "Report event: event=%s, filteredTimers=%s, timers=%s, targets=[%s], outgoing", v33, 0x2Au);
        v55 = v66;
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v55, -1, -1);
        MEMORY[0x24C1F26F0](v33, -1, -1);

        v10 = v68;
        v6 = v69;
      }

      else
      {
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        a2 = Strong;
        MEMORY[0x28223BE20](Strong);
        v62[0] = v71;
        v62[1] = v67;
        v63 = v29;
        type metadata accessor for DTXPCConnection(0);
        sub_2490F57CC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);

        sub_24910CDAC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          goto LABEL_63;
        }

        v57 = swift_allocObject();
        *(v57 + 16) = sub_2490FC80C;
        *(v57 + 24) = &v61;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_2490CDCD4;
        *(v58 + 24) = v57;

        v78 = a2;
        sub_2490FC724(&v78);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        swift_bridgeObjectRelease_n();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_62;
        }

        v12 = v14;
        a2 = v73;
        v10 = v68;
        v6 = v69;
      }

      else
      {

        v12 = v14;
        a2 = v73;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      goto LABEL_12;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
LABEL_63:
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v77 = a2;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

uint64_t DTTransportDaemon.reportLocal(eventType:timers:)(uint64_t a1, unint64_t a2)
{
  v67 = a1;
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__monitorSessionsLocal;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  v76 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v11 = a2;
  }

  v64 = v11;
  v75 = a2 & 0xC000000000000001;
  v70 = v5;

  v12 = 0;
  *&v13 = 136315906;
  v65 = v13;
  v73 = a2;
  v68 = v10;
  v69 = v6;
  while (v9)
  {
    v14 = v12;
LABEL_12:
    v15 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(v70 + 56);
    v71 = *(*(v70 + 48) + v15);
    v9 &= v9 - 1;
    v17 = *(v16 + v15);
    v80 = a2;
    v18 = *(v17 + 16);

    v20 = v18(v19);
    v72 = v17;
    v74 = v20;
    if (!v20)
    {
      v29 = a2;
      goto LABEL_38;
    }

    if (a2)
    {
      v77 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
        v21 = sub_24910D19C();
        if (v21)
        {
LABEL_16:
          v22 = 0;
          while (1)
          {
            if (v75)
            {
              v23 = MEMORY[0x24C1F1C90](v22, a2);
            }

            else
            {
              if (v22 >= *(v76 + 16))
              {
                goto LABEL_60;
              }

              v23 = *(a2 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            v26 = sub_24910D04C();
            if (v27)
            {
              v78 = v26;
              v79 = v27;
              MEMORY[0x28223BE20](v26);
              v63 = &v78;
              v28 = sub_2490CCC78(sub_2490FC858, v62, v74);

              if (v28)
              {
                sub_24910D2AC();
                sub_24910D2DC();
                sub_24910D2EC();
                sub_24910D2BC();
              }

              else
              {
              }

              a2 = v73;
            }

            else
            {
            }

            ++v22;
            if (v25 == v21)
            {
              v29 = v77;
              v10 = v68;
              v6 = v69;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      else
      {
        v21 = *(v76 + 16);
        if (v21)
        {
          goto LABEL_16;
        }
      }

      v29 = MEMORY[0x277D84F90];
LABEL_34:
    }

    else
    {

      v29 = 0;
    }

    swift_beginAccess();
    v80 = v29;

    if (v29)
    {
      if (v29 >> 62)
      {
        if (sub_24910D19C())
        {
          goto LABEL_38;
        }
      }

      else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v12 = v14;
    }

    else
    {
LABEL_38:
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v30 = sub_24910C89C();
      __swift_project_value_buffer(v30, qword_27EEDAFD8);

      v31 = sub_24910C87C();
      v32 = sub_24910CF5C();

      if (os_log_type_enabled(v31, v32))
      {
        LODWORD(v74) = v32;
        v33 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v78 = v66;
        *v33 = v65;
        v34 = sub_24910CFDC();
        v36 = sub_24909F930(v34, v35, &v78);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        if (v29)
        {
          v37 = sub_24910D09C();

          v39 = MEMORY[0x24C1F1790](v38, v37);
          v41 = v40;
        }

        else
        {
          v41 = 0xE300000000000000;
          v39 = 7104878;
        }

        v42 = sub_24909F930(v39, v41, &v78);

        *(v33 + 14) = v42;
        *(v33 + 22) = 2080;
        v43 = v73;
        if (v73)
        {
          v44 = sub_24910D09C();
          v45 = MEMORY[0x24C1F1790](v43, v44);
          v47 = v46;
        }

        else
        {
          v47 = 0xE300000000000000;
          v45 = 7104878;
        }

        v48 = sub_24909F930(v45, v47, &v78);

        *(v33 + 24) = v48;
        *(v33 + 32) = 2080;
        v50 = (*(v72 + 16))(v49);
        if (v50)
        {
          v77 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B38, &unk_249110268);
          sub_2490FAC70(&unk_27EED7B40, &qword_27EED7B38, &unk_249110268, MEMORY[0x277D83958]);
          v51 = sub_24910CC5C();
          v53 = v52;
        }

        else
        {
          v53 = 0xE300000000000000;
          v51 = 7104878;
        }

        v54 = sub_24909F930(v51, v53, &v78);

        *(v33 + 34) = v54;
        _os_log_impl(&dword_249083000, v31, v74, "Report event: event=%s, filteredTimers=%s, timers=%s, targets=[%s], local", v33, 0x2Au);
        v55 = v66;
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v55, -1, -1);
        MEMORY[0x24C1F26F0](v33, -1, -1);

        v10 = v68;
        v6 = v69;
      }

      else
      {
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        a2 = Strong;
        MEMORY[0x28223BE20](Strong);
        v62[0] = v71;
        v62[1] = v67;
        v63 = v29;
        type metadata accessor for DTXPCConnection(0);
        sub_2490F57CC(&qword_27EED8190, type metadata accessor for DTXPCConnection, &protocol conformance descriptor for DTXPCConnection);

        sub_24910CDAC();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          goto LABEL_63;
        }

        v57 = swift_allocObject();
        *(v57 + 16) = sub_2490F5A28;
        *(v57 + 24) = &v61;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_2490FC890;
        *(v58 + 24) = v57;

        v78 = a2;
        sub_2490FC724(&v78);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
        swift_bridgeObjectRelease_n();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_62;
        }

        v12 = v14;
        a2 = v73;
        v10 = v68;
        v6 = v69;
      }

      else
      {

        v12 = v14;
        a2 = v73;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      goto LABEL_12;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);

  swift_isEscapingClosureAtFileLocation();

  __break(1u);
LABEL_63:
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](0xD00000000000003FLL, 0x80000002491114D0);
  v77 = a2;
  sub_24910D32C();
  MEMORY[0x24C1F1710](46, 0xE100000000000000);
  result = sub_24910D33C();
  __break(1u);
  return result;
}

void sub_2490DD5BC(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DTTransportDaemon.DTTransportRequest(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  if (a3)
  {
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v22 = sub_24910C89C();
    __swift_project_value_buffer(v22, qword_27EEDAFD8);
    sub_2490FA748(a4, v16, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA748(a4, v13, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    sub_2490FA40C(a1, a2, 1);

    v23 = sub_24910C87C();
    v24 = sub_24910CF4C();

    sub_2490FA418(a1, a2, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v25 = 136315906;
      sub_24910C2FC();
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v68 = v24;
      v26 = sub_24910D50C();
      v28 = v27;
      sub_2490FA7B0(v16, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v29 = sub_24909F930(v26, v28, &v70);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      sub_24910C86C();
      sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
      v30 = sub_24910D50C();
      v32 = v31;
      sub_2490FA7B0(v13, type metadata accessor for DTTransportDaemon.DTTransportRequest);
      v33 = sub_24909F930(v30, v32, &v70);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2080;
      v34 = [*(a5 + 16) idsIdentifier];
      v35 = sub_24910CC9C();
      v37 = v36;

      v38 = sub_24909F930(v35, v37, &v70);

      *(v25 + 24) = v38;
      *(v25 + 32) = 2080;
      swift_getErrorValue();
      v39 = sub_24910D5DC();
      v41 = sub_24909F930(v39, v40, &v70);

      *(v25 + 34) = v41;
      _os_log_impl(&dword_249083000, v23, v68, "### HMMM send failed: xid=%s, request=%s, to:%s, error=%s", v25, 0x2Au);
      v42 = v69;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v42, -1, -1);
      MEMORY[0x24C1F26F0](v25, -1, -1);

      return;
    }

    sub_2490FA7B0(v13, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v62 = v16;
    goto LABEL_14;
  }

  if (qword_27EEDAFD0 != -1)
  {
    swift_once();
  }

  v43 = sub_24910C89C();
  __swift_project_value_buffer(v43, qword_27EEDAFD8);
  sub_2490FA748(a4, v21, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA748(a4, v19, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  sub_2490FA40C(a1, a2, 0);
  sub_2490FA40C(a1, a2, 0);

  v44 = sub_24910C87C();
  v45 = sub_24910CF5C();

  if (!os_log_type_enabled(v44, v45))
  {
    sub_2490FA418(a1, a2, 0);

    sub_2490FA418(a1, a2, 0);
    sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    v62 = v21;
LABEL_14:
    sub_2490FA7B0(v62, type metadata accessor for DTTransportDaemon.DTTransportRequest);
    return;
  }

  v68 = v45;
  v69 = v44;
  v46 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v70 = v67;
  *v46 = 136315906;
  sub_24910C2FC();
  sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v47 = sub_24910D50C();
  v49 = v48;
  sub_2490FA7B0(v21, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v50 = sub_24909F930(v47, v49, &v70);

  *(v46 + 4) = v50;
  *(v46 + 12) = 2080;
  sub_24910C86C();
  sub_2490F57CC(&qword_27EED7B30, MEMORY[0x277D057E0], MEMORY[0x277D057F8]);
  v51 = sub_24910D50C();
  v53 = v52;
  sub_2490FA7B0(v19, type metadata accessor for DTTransportDaemon.DTTransportRequest);
  v54 = sub_24909F930(v51, v53, &v70);

  *(v46 + 14) = v54;
  *(v46 + 22) = 2080;
  v55 = [*(a5 + 16) idsIdentifier];
  v56 = sub_24910CC9C();
  v58 = v57;

  v59 = sub_24909F930(v56, v58, &v70);

  *(v46 + 24) = v59;
  *(v46 + 32) = 2048;
  v60 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v60 != 2)
    {
      sub_2490FA418(a1, a2, 0);
      v61 = 0;
      goto LABEL_22;
    }

    v64 = a1[2];
    v63 = a1[3];
    sub_2490FA418(a1, a2, 0);
    v61 = v63 - v64;
    if (!__OFSUB__(v63, v64))
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v60)
  {
    sub_2490FA418(a1, a2, 0);
    v61 = BYTE6(a2);
LABEL_22:
    v65 = v69;
    *(v46 + 34) = v61;
    sub_2490FA418(a1, a2, 0);
    _os_log_impl(&dword_249083000, v65, v68, "HMMM send success: xid=%s, request=%s, to:%s, response=%ld bytes", v46, 0x2Au);
    v66 = v67;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v66, -1, -1);
    MEMORY[0x24C1F26F0](v46, -1, -1);

    return;
  }

  sub_2490FA418(a1, a2, 0);
  LODWORD(v61) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v61 = v61;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_2490DDDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24910C68C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24910C66C();
  DTXPCConnection.report(monitorEvent:)(v7);
  return (*(v5 + 8))(v7, v4);
}

void sub_2490DDEF8()
{
  v1 = v0;
  v2 = sub_24910C2FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v133 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v136 = &v128 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v132 = &v128 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v128 - v11;
  MEMORY[0x28223BE20](v10);
  v134 = &v128 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD0, &qword_249110908);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v128 - v18;
  v20 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeMap;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = *(v21 + 64);
  v138 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v137 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager;
  v129 = (v23 + 63) >> 6;
  v146 = (v3 + 16);
  v144 = (v3 + 32);
  v142 = v3;
  v148 = (v3 + 8);
  v135 = v21;

  v26 = 0;
  v141 = 0;
  *&v27 = 136315394;
  v130 = v27;
  v139 = v1;
  v140 = v19;
  v149 = v2;
  v147 = v12;
  v143 = v17;
  v145 = v20;
  while (1)
  {
    if (v25)
    {
      v28 = v1;
      v29 = v26;
      goto LABEL_17;
    }

    v30 = v129 <= (v26 + 1) ? (v26 + 1) : v129;
    v31 = v30 - 1;
    do
    {
      v29 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v29 >= v129)
      {
        v2 = &qword_249110910;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
        (*(*(v80 - 8) + 56))(v17, 1, 1, v80);
        v25 = 0;
        v26 = v31;
        goto LABEL_18;
      }

      v25 = *(v138 + 8 * v29);
      ++v26;
    }

    while (!v25);
    v28 = v1;
    v26 = v29;
LABEL_17:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v135;
    v35 = v142;
    v36 = v134;
    v37 = v149;
    (*(v142 + 16))(v134, *(v135 + 48) + *(v142 + 72) * v33, v149);
    v38 = *(*(v34 + 56) + 8 * v33);
    v2 = &qword_249110910;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    v40 = *(v39 + 48);
    v41 = *(v35 + 32);
    v17 = v143;
    v41(v143, v36, v37);
    *(v17 + v40) = v38;
    (*(*(v39 - 8) + 56))(v17, 0, 1, v39);
    v42 = v38;
    v19 = v140;
    v1 = v28;
    v12 = v147;
LABEL_18:
    sub_2490B3868(v17, v19, &qword_27EED7FD0, &qword_249110908);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7FD8, &qword_249110910);
    if ((*(*(v43 - 8) + 48))(v19, 1, v43) == 1)
    {
      break;
    }

    v44 = *&v19[*(v43 + 48)];
    (*v144)(v12, v19, v149);
    v45 = *(v1 + v137);
    if (v45)
    {
      v46 = [v45 homes];
      sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
      v47 = v12;
      v48 = sub_24910CD5C();

      v2 = &v128;
      MEMORY[0x28223BE20](v49);
      *(&v128 - 2) = v47;
      v50 = v141;
      v51 = sub_2490EB05C(sub_2490FB7FC, (&v128 - 4), v48);
      v141 = v50;

      if (v51)
      {

        v52 = *v148;
        goto LABEL_6;
      }

      v12 = v147;
    }

    v53 = v132;
    v54 = v146;
    if (qword_27EEDAFD0 != -1)
    {
      swift_once();
    }

    v55 = sub_24910C89C();
    __swift_project_value_buffer(v55, qword_27EEDAFD8);
    (*v54)(v53, v12, v149);
    v56 = v44;
    v57 = v53;
    v58 = sub_24910C87C();
    v59 = sub_24910CF5C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v151[0] = v131;
      *v60 = v130;
      sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v61 = v149;
      v62 = sub_24910D50C();
      v63 = v61;
      v64 = v62;
      v66 = v65;
      v52 = *v148;
      (*v148)(v57, v63);
      v67 = sub_24909F930(v64, v66, v151);

      *(v60 + 4) = v67;
      *(v60 + 12) = 2080;
      v68 = [v56 name];
      v69 = sub_24910CC9C();
      v2 = v70;

      v71 = sub_24909F930(v69, v2, v151);

      *(v60 + 14) = v71;
      _os_log_impl(&dword_249083000, v58, v59, "HomeKit home remove: id=%s, name=%s", v60, 0x16u);
      v72 = v131;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v72, -1, -1);
      v73 = v60;
      v19 = v140;
      MEMORY[0x24C1F26F0](v73, -1, -1);
    }

    else
    {

      v52 = *v148;
      (*v148)(v57, v149);
    }

    v74 = v145;
    [v56 setDelegate_];
    v1 = v139;
    swift_beginAccess();
    v75 = sub_2490F128C(v147);
    if (v76)
    {
      v77 = v75;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(v1 + v74);
      v150 = v79;
      *(v1 + v74) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490F3C00();
        v79 = v150;
      }

      v52((*(v79 + 48) + *(v142 + 72) * v77), v149);

      sub_2490F2AA0(v77, v79);
      *(v1 + v74) = v79;
    }

    swift_endAccess();

    v17 = v143;
LABEL_6:
    v12 = v147;
    v52(v147, v149);
  }

  v81 = *(v1 + v137);
  if (v81)
  {
    v82 = [v81 homes];
    sub_2490A4744(0, &unk_27EED7FB0, 0x277CD1A60);
    v2 = sub_24910CD5C();
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v26 = v133;
  v25 = v136;
  v17 = v146;
  if (!(v2 >> 62))
  {
    v83 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v83)
    {
      goto LABEL_37;
    }

LABEL_67:

    sub_2490EB170();
    sub_2490EB864();
    if ((*(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) & 1) == 0)
    {
      *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) = 1;
      if (qword_27EEDAFD0 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_74;
    }

    return;
  }

LABEL_66:
  v83 = sub_24910D19C();
  if (!v83)
  {
    goto LABEL_67;
  }

LABEL_37:
  if (v83 >= 1)
  {
    v84 = 0;
    v147 = v2 & 0xC000000000000001;
    v144 = v83;
    v141 = v2;
    while (1)
    {
      if (v147)
      {
        v87 = MEMORY[0x24C1F1C90](v84, v2);
      }

      else
      {
        v87 = *(v2 + 8 * v84 + 32);
      }

      v88 = v87;
      v89 = [v87 uniqueIdentifier];
      sub_24910C2CC();

      v90 = v145;
      swift_beginAccess();
      if (*(*(v1 + v90) + 16))
      {
        sub_2490F128C(v25);
        if (v91)
        {
          swift_endAccess();

          v92 = *v148;
          goto LABEL_41;
        }
      }

      swift_endAccess();
      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v93 = sub_24910C89C();
      __swift_project_value_buffer(v93, qword_27EEDAFD8);
      v143 = *v17;
      (v143)(v26, v25, v149);
      v94 = v88;
      v95 = sub_24910C87C();
      v96 = sub_24910CF5C();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v151[0] = v17;
        *v97 = v130;
        sub_2490F57CC(&unk_27EED80D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v98 = v149;
        v99 = sub_24910D50C();
        v101 = v100;
        v92 = *v148;
        (*v148)(v133, v98);
        v102 = sub_24909F930(v99, v101, v151);

        *(v97 + 4) = v102;
        *(v97 + 12) = 2080;
        v103 = [v94 name];
        v104 = sub_24910CC9C();
        v106 = v105;

        v107 = sub_24909F930(v104, v106, v151);
        v2 = v141;

        *(v97 + 14) = v107;
        v90 = v145;
        _os_log_impl(&dword_249083000, v95, v96, "HomeKit home add: id=%s, name=%s", v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1F26F0](v17, -1, -1);
        v108 = v97;
        v26 = v133;
        MEMORY[0x24C1F26F0](v108, -1, -1);
      }

      else
      {

        v92 = *v148;
        (*v148)(v26, v149);
      }

      v1 = v139;
      [v94 setDelegate_];
      swift_beginAccess();
      v109 = v94;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v150 = *(v1 + v90);
      v110 = v150;
      *(v1 + v90) = 0x8000000000000000;
      v111 = sub_2490F128C(v136);
      v113 = v110[2];
      v114 = (v112 & 1) == 0;
      v115 = __OFADD__(v113, v114);
      v116 = v113 + v114;
      if (v115)
      {
        goto LABEL_64;
      }

      v117 = v112;
      if (v110[3] >= v116)
      {
        if ((v25 & 1) == 0)
        {
          v123 = v111;
          sub_2490F3C00();
          v111 = v123;
        }

        v25 = v136;
        v119 = v150;
        if ((v117 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        sub_2490F18A4(v116, v25);
        v25 = v136;
        v111 = sub_2490F128C(v136);
        if ((v117 & 1) != (v118 & 1))
        {
          sub_24910D57C();
          __break(1u);
          return;
        }

        v119 = v150;
        if ((v117 & 1) == 0)
        {
LABEL_61:
          v119[(v111 >> 6) + 8] |= 1 << v111;
          v120 = v111;
          v17 = v146;
          (v143)(v119[6] + *(v142 + 72) * v111, v25, v149);
          *(v119[7] + 8 * v120) = v109;
          v121 = v119[2];
          v115 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v115)
          {
            goto LABEL_65;
          }

          v119[2] = v122;
          goto LABEL_40;
        }
      }

      v85 = v119[7];
      v86 = *(v85 + 8 * v111);
      *(v85 + 8 * v111) = v109;

      v17 = v146;
LABEL_40:
      *(v1 + v145) = v119;
      swift_endAccess();

LABEL_41:
      v84 = (v84 + 1);
      v92(v25, v149);
      if (v144 == v84)
      {
        goto LABEL_67;
      }
    }
  }

  __break(1u);
LABEL_74:
  swift_once();
LABEL_69:
  v124 = sub_24910C89C();
  __swift_project_value_buffer(v124, qword_27EEDAFD8);
  v125 = sub_24910C87C();
  v126 = sub_24910CF5C();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&dword_249083000, v125, v126, "HomeKit ready", v127, 2u);
    MEMORY[0x24C1F26F0](v127, -1, -1);
  }
}

uint64_t sub_2490DEDDC()
{
  v1 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for DTTransportDaemon.DTOperationItem(0);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeKitReady) == 1)
  {
    v9 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__operationQueue;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v13 = *(v5 + 72);

      do
      {
        sub_2490FA748(v12, v8, type metadata accessor for DTTransportDaemon.DTOperationItem);
        sub_2490FA810(v8, v3, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        sub_2490E2120(v3);
        sub_2490FA7B0(v3, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
        v12 += v13;
        --v11;
      }

      while (v11);
    }

    *(v0 + v9) = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2490DEFB4()
{
  v1 = type metadata accessor for DTTransportDaemon.DTOperationItemRequest(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter(0);
  v85 = *(v88 - 8);
  v4 = MEMORY[0x28223BE20](v88);
  v6 = (&v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v84 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F10, &qword_249110868);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v74 - v12;
  v91 = v0;
  v14 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__homeManager);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC23DistributedTimersDaemon17DTTransportDaemon__waitingOperations;
    v16 = v91;
    swift_beginAccess();
    v78 = v15;
    v17 = *(v16 + v15);
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v81 = v20 & *(v17 + 64);
    v21 = (v19 + 63) >> 6;
    v22 = v14;

    v23 = 0;
    v93 = 0;
    *&v24 = 136315138;
    v74 = v24;
    *&v24 = 134218242;
    v83 = v24;
    v92 = v3;
    v89 = v13;
    v90 = v11;
    v79 = v21;
    v87 = v6;
    v77 = v17;
    v76 = v17 + 64;
    v75 = v22;
    while (1)
    {
      v25 = v81;
      if (!v81)
      {
        break;
      }

      v26 = v23;
LABEL_13:
      v81 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v26 << 6);
      v28 = (*(v17 + 48) + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(*(v17 + 56) + 8 * v27);

      sub_2490E7FBC(v30, v29);
      if (v32)
      {
        v80 = v26;

        swift_beginAccess();
        sub_2490D3D58(0, v30, v29);
        swift_endAccess();
        v33 = 0;
        v86 = v31;
        v34 = *(v31 + 64);
        v82 = v31 + 64;
        v35 = 1 << *(v31 + 32);
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        else
        {
          v36 = -1;
        }

        v37 = v36 & v34;
        v38 = (v35 + 63) >> 6;
        v39 = v90;
        while (v37)
        {
          v43 = v33;
LABEL_31:
          v46 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
          v47 = v46 | (v43 << 6);
          v48 = *(*(v86 + 48) + 8 * v47);
          v49 = v84;
          sub_2490FA748(*(v86 + 56) + *(v85 + 72) * v47, v84, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
          v51 = *(v50 + 48);
          *v39 = v48;
          sub_2490FA810(v49, v39 + v51, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
          (*(*(v50 - 8) + 56))(v39, 0, 1, v50);
LABEL_32:
          v52 = v89;
          sub_2490B3868(v39, v89, &qword_27EED7F10, &qword_249110868);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
          if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
          {

            v23 = v80;
            v17 = v77;
            v18 = v76;
            v22 = v75;
            goto LABEL_7;
          }

          v54 = *v52;
          sub_2490FA810(v52 + *(v53 + 48), v6, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
          v55 = *v6;
          v56 = v6[1];
          v57 = v92;
          if (qword_27EEDAFD0 != -1)
          {
            swift_once();
          }

          v58 = sub_24910C89C();
          __swift_project_value_buffer(v58, qword_27EEDAFD8);

          v59 = sub_24910C87C();
          v60 = sub_24910CF5C();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v94[0] = v62;
            *v61 = v83;
            *(v61 + 4) = v54;
            *(v61 + 12) = 2080;
            *(v61 + 14) = sub_24909F930(v55, v56, v94);
            _os_log_impl(&dword_249083000, v59, v60, "WaiterResume: xid=%llu, accessoryID=%s", v61, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v62);
            MEMORY[0x24C1F26F0](v62, -1, -1);
            v63 = v61;
            v57 = v92;
            MEMORY[0x24C1F26F0](v63, -1, -1);
          }

          v6 = v87;
          v40 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7B18, &qword_249110250);
          sub_24910CE3C();
          sub_2490FA748(v6 + *(v40 + 20), v57, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
          v41 = v93;
          sub_2490E26B4(v55, v56, v57, 1);
          if (v41)
          {
            v42 = v41;
            sub_2490F7BC8(v57, v41, 0, 1);
          }

          v93 = 0;
          v39 = v90;
          sub_2490FA7B0(v57, type metadata accessor for DTTransportDaemon.DTOperationItemRequest);
          sub_2490FA7B0(v6, type metadata accessor for DTTransportDaemon.DTOperationItemRequestWaiter);
        }

        if (v38 <= v33 + 1)
        {
          v44 = v33 + 1;
        }

        else
        {
          v44 = v38;
        }

        v45 = v44 - 1;
        while (1)
        {
          v43 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v43 >= v38)
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7F18, &qword_249110870);
            (*(*(v64 - 8) + 56))(v39, 1, 1, v64);
            v37 = 0;
            v33 = v45;
            goto LABEL_32;
          }

          v37 = *(v82 + 8 * v43);
          ++v33;
          if (v37)
          {
            v33 = v43;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_47;
      }

      if (qword_27EEDAFD0 != -1)
      {
        swift_once();
      }

      v65 = sub_24910C89C();
      __swift_project_value_buffer(v65, qword_27EEDAFD8);

      v66 = sub_24910C87C();
      v67 = sub_24910CF3C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v80 = v26;
        v69 = v68;
        v70 = v6;
        v71 = swift_slowAlloc();
        v94[0] = v71;
        *v69 = v74;
        v72 = sub_24909F930(v30, v29, v94);

        *(v69 + 4) = v72;
        _os_log_impl(&dword_249083000, v66, v67, "WaiterUpdate: not found yet, accessoryID=%s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        v73 = v71;
        v6 = v70;
        MEMORY[0x24C1F26F0](v73, -1, -1);
        MEMORY[0x24C1F26F0](v69, -1, -1);

        v23 = v80;
      }

      else
      {

        v23 = v26;
      }

LABEL_7:
      v21 = v79;
    }

    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v21)
      {

        return;
      }

      v25 = *(v18 + 8 * v26);
      ++v23;
      if (v25)
      {
        goto LABEL_13;
      }
    }

LABEL_47:
    __break(1u);
  }
}