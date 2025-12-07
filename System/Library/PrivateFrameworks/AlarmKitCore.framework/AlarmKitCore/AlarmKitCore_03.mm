uint64_t sub_22D709C00(uint64_t a1)
{
  v22[3] = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72D7A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v22[0] = v8;
    v22[1] = v2;
    v13 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v14 = sub_22D72E480();
    v15 = [v13 hasEntitlement_];

    if (v15)
    {
      MEMORY[0x2318CF230]();
      v16 = sub_22D72E090();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v12 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      v19 = off_2840CC680;
      v20 = type metadata accessor for AlarmManager(0);
      v19(v10, v16, v18, v20, &off_2840CC640);
      swift_unknownObjectRelease();

      return (*(v22[0] + 8))(v10, v7);
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

uint64_t sub_22D70A128(uint64_t a1)
{
  v25 = a1;
  v3 = sub_22D72DEB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72DDD0();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22D72D7A0();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v22 = v7;
    v23 = v2;
    v14 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
    v15 = sub_22D72E480();
    v16 = [v14 hasEntitlement_];

    if (v16)
    {
      MEMORY[0x2318CF1D0]();
      v17 = sub_22D72E050();
      v19 = v18;
      sub_22D72E030();
      __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v13 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      sub_22D6E8F24(v11, v17, v19, v9);

      (*(v27 + 8))(v9, v22);
      (*(v24 + 8))(v11, v26);
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB99D8], v3);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      swift_allocError();
      sub_22D72DEC0();
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB99E8], v3);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    return swift_willThrow();
  }
}

void sub_22D70A6BC(uint64_t a1@<X8>)
{
  v4 = sub_22D72DEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  v46 = v1;
  v43 = sub_22D70B190;
  v44 = &v45;
  os_unfair_lock_lock(v8 + 4);
  sub_22D6F5B28(v9);
  if (v2)
  {
LABEL_38:
    os_unfair_lock_unlock(v8 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v8 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CB99E8], v4);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
    return;
  }

  v47 = Strong;
  v42 = a1;
  v11 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection) remoteProcess];
  v12 = sub_22D72E480();
  v13 = [v11 hasEntitlement_];

  if (v13)
  {
    __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v47 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
    v14 = off_2840CC698;
    type metadata accessor for AlarmManager(0);
    v15 = v14();
    v16 = 0;
    v22 = v15;
    v40[1] = 0;
    v8 = (v15 + 64);
    v23 = 1 << *(v15 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v15 + 64);
    v26 = (v23 + 63) >> 6;

    v28 = MEMORY[0x277D84F90];
    v41 = v27;
    while (v25)
    {
LABEL_17:
      v30 = *(*(v22 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v25)))));
      v31 = *(v30 + 16);
      v32 = v28[2];
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v33 > v28[3] >> 1)
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v28 = sub_22D6CBC98(isUniquelyReferenced_nonNull_native, v35, 1, v28);
      }

      v25 &= v25 - 1;
      if (*(v30 + 16))
      {
        v36 = (v28[3] >> 1) - v28[2];
        sub_22D72DDC0();
        if (v36 < v31)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        v22 = v41;
        if (v31)
        {
          v37 = v28[2];
          v38 = __OFADD__(v37, v31);
          v39 = v37 + v31;
          if (v38)
          {
            goto LABEL_37;
          }

          v28[2] = v39;
        }
      }

      else
      {

        v22 = v41;
        if (v31)
        {
          goto LABEL_35;
        }
      }
    }

    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        goto LABEL_31;
      }

      v25 = *&v8[2 * v29]._os_unfair_lock_opaque;
      ++v16;
      if (v25)
      {
        v16 = v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = sub_22D70582C();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v47 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
    v21 = off_2840CC690[0];
    type metadata accessor for AlarmManager(0);
    v21(v19, v20);

LABEL_31:
    sub_22D72DFD0();
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CB99D0], v4);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    swift_allocError();
    sub_22D72DEC0();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
}

id sub_22D70AC44(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_22D72DFE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  a4();

  sub_22D70D554(&unk_27D9FF950, MEMORY[0x277CB9A58], MEMORY[0x277CB9A50]);
  v11 = sub_22D72E220();
  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_22D70AE68@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck;
  v5 = 1;
  if (*(result + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck) == 1)
  {
    *(result + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms) = a2;
    v6 = result;

    *(v6 + v4) = 1;
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

void sub_22D70AEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_22D6F59F4(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v3)
  {
    sub_22D704A18(v3);
  }
}

id sub_22D70B0C4(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22D72E480();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_22D72D5D0();

    swift_willThrow();
  }

  return v4;
}

unint64_t *sub_22D70B1A8(unint64_t *result, uint64_t a2, void *a3, void *a4)
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

    v8 = a4;
    v9 = sub_22D70BCF8(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *sub_22D70B240(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22D70BA10(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22D70B2C8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_22D70B624(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v33 = MEMORY[0x277D84FA0];
  sub_22D72E720();
  if (sub_22D72E750())
  {
    v4 = type metadata accessor for Client();
    do
    {
      swift_dynamicCast();
      v11 = [*&v32[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection] remoteProcess];
      v12 = sub_22D72E480();
      v13 = [v11 hasEntitlement_];

      if (v13)
      {
        goto LABEL_9;
      }

      v15 = sub_22D70582C();
      if (v16)
      {
        v17 = v16;
        v18 = *v2;
        if (*(*v2 + 16))
        {
          v19 = v15;
          v20 = v4;
          v21 = v2;
          sub_22D72EA20();

          sub_22D72E4E0();
          v22 = sub_22D72EA40();
          v23 = -1 << *(v18 + 32);
          v24 = v22 & ~v23;
          if ((*(v18 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v25 = ~v23;
            while (1)
            {
              v26 = (*(v18 + 48) + 16 * v24);
              v27 = *v26 == v19 && v17 == v26[1];
              if (v27 || (sub_22D72E980() & 1) != 0)
              {
                break;
              }

              v24 = (v24 + 1) & v25;
              if (((*(v18 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v2 = v21;
            v4 = v20;
LABEL_9:
            v14 = *(v3 + 16);
            if (*(v3 + 24) <= v14)
            {
              sub_22D6F2278(v14 + 1);
            }

            v3 = v33;
            result = sub_22D72E6A0();
            v6 = v33 + 56;
            v7 = -1 << *(v33 + 32);
            v8 = result & ~v7;
            v9 = v8 >> 6;
            if (((-1 << v8) & ~*(v33 + 56 + 8 * (v8 >> 6))) != 0)
            {
              v10 = __clz(__rbit64((-1 << v8) & ~*(v33 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v28 = 0;
              v29 = (63 - v7) >> 6;
              do
              {
                if (++v9 == v29 && (v28 & 1) != 0)
                {
                  __break(1u);
                  return result;
                }

                v30 = v9 == v29;
                if (v9 == v29)
                {
                  v9 = 0;
                }

                v28 |= v30;
                v31 = *(v6 + 8 * v9);
              }

              while (v31 == -1);
              v10 = __clz(__rbit64(~v31)) + (v9 << 6);
            }

            *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
            *(*(v33 + 48) + 8 * v10) = v32;
            ++*(v33 + 16);
            continue;
          }

LABEL_21:

          v2 = v21;
          v4 = v20;
        }
      }
    }

    while (sub_22D72E750());
  }

  return v3;
}

void *sub_22D70B624(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_35;
  }

  while (2)
  {
    v40 = v6;
    v41 = v2;
    v39 = &v39;
    MEMORY[0x28223BE20](a1);
    v44 = &v39 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v44, v7);
    v45 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v47 = v12;
    v48 = "24@0:8^@16";
    v42 = a2;
    v43 = v4;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v49 = (v11 - 1) & v11;
LABEL_15:
      v16 = v13 | (v8 << 6);
      v17 = *(v4 + 48);
      v46 = v16;
      v18 = *(v17 + 8 * v16);
      v19 = *&v18[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection];
      v20 = v18;
      v21 = [v19 remoteProcess];
      v22 = sub_22D72E480();
      v23 = [v21 hasEntitlement_];

      if (v23)
      {
        goto LABEL_29;
      }

      v24 = sub_22D70582C();
      if (!v25)
      {

        goto LABEL_7;
      }

      v26 = v25;
      v27 = *a2;
      if (*(*a2 + 16))
      {
        v28 = v24;
        sub_22D72EA20();

        sub_22D72E4E0();
        v29 = sub_22D72EA40();
        v30 = -1 << *(v27 + 32);
        v31 = v29 & ~v30;
        if (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
LABEL_26:

          a2 = v42;
          v4 = v43;
          goto LABEL_7;
        }

        v32 = ~v30;
        while (1)
        {
          v33 = (*(v27 + 48) + 16 * v31);
          v34 = *v33 == v28 && v26 == v33[1];
          if (v34 || (sub_22D72E980() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        a2 = v42;
        v4 = v43;
        v12 = v47;
LABEL_29:

        *&v44[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
        v35 = __OFADD__(v45++, 1);
        v11 = v49;
        if (v35)
        {
          __break(1u);
          return sub_22D71BF88(v44, v40, v45, v4);
        }
      }

      else
      {

LABEL_7:
        v12 = v47;
        v11 = v49;
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_22D71BF88(v44, v40, v45, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v49 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v37 = swift_slowAlloc();
  v38 = sub_22D70B240(v37, v6, v4, a2);

  MEMORY[0x2318D0420](v37, -1, -1);
  return v38;
}

void sub_22D70BA10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v39 = v11;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_14:
    v38 = v12 | (v6 << 6);
    v15 = *(*(v4 + 48) + 8 * v38);
    v16 = *&v15[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection];
    v17 = v15;
    v18 = [v16 remoteProcess];
    v19 = sub_22D72E480();
    v20 = [v18 hasEntitlement_];

    if (v20)
    {
      goto LABEL_28;
    }

    v21 = sub_22D70582C();
    if (!v22)
    {

      goto LABEL_6;
    }

    v23 = v22;
    v24 = *a4;
    if (*(*a4 + 16))
    {
      v25 = v21;
      v36 = v5;
      sub_22D72EA20();

      sub_22D72E4E0();
      v26 = sub_22D72EA40();
      v27 = -1 << *(v24 + 32);
      v28 = v26 & ~v27;
      if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
LABEL_25:

        v4 = a3;
        v5 = v36;
        goto LABEL_6;
      }

      v29 = ~v27;
      while (1)
      {
        v30 = (*(v24 + 48) + 16 * v28);
        v31 = *v30 == v25 && v23 == v30[1];
        if (v31 || (sub_22D72E980() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v4 = a3;
      v5 = v36;
      v11 = v39;
LABEL_28:

      *(a1 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v32 = __OFADD__(v5++, 1);
      v10 = v40;
      if (v32)
      {
        __break(1u);
LABEL_31:

        sub_22D71BF88(a1, v33, v5, v4);
        return;
      }
    }

    else
    {

LABEL_6:
      v11 = v39;
      v10 = v40;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_31;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v40 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_22D70BCF8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v39 = a4;
  v31 = a2;
  v32 = a1;
  v5 = type metadata accessor for Alarm(0);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22D72D7A0();
  result = MEMORY[0x28223BE20](v41);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v40 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = v8 + 16;
  v36 = v8;
  v33 = 0;
  v34 = (v8 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = v19 | (v11 << 6);
    v21 = v41;
LABEL_11:
    v24 = v40;
    (*(v36 + 16))(v10, v40[6] + *(v36 + 72) * v20, v21);
    v25 = v37;
    sub_22D6F37E4(v24[7] + *(v38 + 72) * v20, v37);
    v26 = v42;
    sub_22D7046FC(v10, v25, v39);
    v42 = v26;
    if (v26)
    {
      sub_22D6F3848(v25);
      return (*v34)(v10, v21);
    }

    v28 = v27;
    sub_22D6F3848(v25);
    result = (*v34)(v10, v21);
    if (v28)
    {
      *(v32 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_22D6D2B38(v32, v31, v33, v40);
      }
    }
  }

  v22 = v11;
  v21 = v41;
  while (1)
  {
    v11 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_22D6D2B38(v32, v31, v33, v40);
    }

    v23 = v13[v11];
    ++v22;
    if (v23)
    {
      v17 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D70BFD8(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v11 = sub_22D70B1A8(v13, v6, a1, v14);
      MEMORY[0x2318D0420](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x28223BE20](v8);
  bzero(v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_22D70BCF8((v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_22D70C184(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v34 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = sub_22D72DDC0();
  v33 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  MEMORY[0x28223BE20](v19);
  v21 = (&v33 - v20);
  sub_22D6D5A4C(v35, &v33 - v20, &qword_27D9FF590, &qword_22D730590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    v23 = sub_22D72DFC0();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v8, 1, 1, v23);
    v25 = sub_22D72D5C0();
    sub_22D6D5A4C(v8, v5, &qword_27D9FF988, &qword_22D731048);
    v26 = 0;
    if ((*(v24 + 48))(v5, 1, v23) != 1)
    {
      sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48], MEMORY[0x277CB9A40]);
      v26 = sub_22D72E220();
      (*(v24 + 8))(v5, v23);
    }

    (*(v36 + 16))(v36, v26, v25);

    return sub_22D6D5984(v8, &qword_27D9FF988, &qword_22D731048);
  }

  else
  {
    v28 = v33;
    (*(v33 + 32))(v18, v21, v13);
    (*(v28 + 16))(v16, v18, v13);
    sub_22D72DFB0();
    v29 = sub_22D72DFC0();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v12, 0, 1, v29);
    v31 = v34;
    sub_22D6D5A4C(v12, v34, &qword_27D9FF988, &qword_22D731048);
    v32 = 0;
    if ((*(v30 + 48))(v31, 1, v29) != 1)
    {
      sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48], MEMORY[0x277CB9A40]);
      v32 = sub_22D72E220();
      (*(v30 + 8))(v31, v29);
    }

    (*(v36 + 16))(v36, v32, 0);

    sub_22D6D5984(v12, &qword_27D9FF988, &qword_22D731048);
    return (*(v28 + 8))(v18, v13);
  }
}

void sub_22D70C6AC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v33 = a3;
  v34 = a1;
  v5 = sub_22D72DEB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF590, &qword_22D730590);
  MEMORY[0x28223BE20](v35);
  v10 = (&v30 - v9);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22D70D364;
  *(v12 + 24) = v11;
  _Block_copy(a4);
  _Block_copy(a4);

  v13 = sub_22D70582C();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v31 = v8;
    v32 = a4;
    v17 = sub_22D705A48();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager), *(v33 + OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_alarmManager + 24));
      sub_22D6D89E0(v34, v15, v16, v19, v20, sub_22D70D36C, v12);

      v21 = v32;
    }

    else
    {

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v23 = sub_22D72DBE0();
      __swift_project_value_buffer(v23, qword_27DA01700);
      v24 = sub_22D72DBB0();
      v25 = sub_22D72E580();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v32;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22D6B4000, v24, v25, "Client has not provided an NSAlarmKitUsageDescription value", v28, 2u);
        MEMORY[0x2318D0420](v28, -1, -1);
      }

      (*(v6 + 104))(v31, *MEMORY[0x277CB99D8], v5);
      sub_22D72DED0();
      sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      v29 = swift_allocError();
      sub_22D72DEC0();
      *v10 = v29;
      swift_storeEnumTagMultiPayload();
      _Block_copy(v27);
      sub_22D70C184(v10, v27);
      _Block_release(v27);
      sub_22D6D5984(v10, &qword_27D9FF590, &qword_22D730590);

      v21 = v27;
    }
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x277CB99D0], v5);
    sub_22D72DED0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    v22 = swift_allocError();
    sub_22D72DEC0();
    *v10 = v22;
    swift_storeEnumTagMultiPayload();
    _Block_copy(a4);
    sub_22D70C184(v10, a4);
    _Block_release(a4);
    sub_22D6D5984(v10, &qword_27D9FF590, &qword_22D730590);

    v21 = a4;
  }

  _Block_release(v21);
}

id sub_22D70CB8C(void *a1, int a2, uint64_t a3, _BYTE *a4)
{
  v7 = OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_wantsAlarmUpdates] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_pid] = a2;
  *(v9 + 8) = &off_2840CD3C0;
  swift_unknownObjectWeakAssign();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for Client();
  v10 = a1;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_22D70CC8C(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = [v3 pid];

  v5 = objc_allocWithZone(type metadata accessor for Client());
  v6 = v1;
  v7 = a1;
  v8 = sub_22D70CB8C(v7, v4, v6, v5);

  v9 = *&v6[OBJC_IVAR____TtC12AlarmKitCore11AlarmServer_lock];

  os_unfair_lock_lock(v9 + 4);
  sub_22D6F5B28(v10);
  os_unfair_lock_unlock(v9 + 4);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22D70D3F0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22D70062C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  v15 = v8;

  [v7 configureConnection_];
  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v7 activate];
  }
}

void sub_22D70CEC0(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v35 = a1;
  v5 = sub_22D72DEB0();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72DED0();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF988, &qword_22D731048);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = sub_22D72E190();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    _Block_copy(a3);
    sub_22D72E010();
    _Block_copy(a3);
    sub_22D70C6AC(v20, a2, v22, a3);
    _Block_release(a3);
    swift_unknownObjectRelease();
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v23 = sub_22D72DFC0();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v16, 1, 1, v23);
    (*(v31 + 104))(v7, *MEMORY[0x277CB99E8], v32);
    _Block_copy(a3);
    sub_22D72DEC0();
    sub_22D70D554(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    v25 = v34;
    v26 = swift_allocError();
    (*(v33 + 32))(v27, v10, v25);
    v28 = sub_22D72D5C0();
    sub_22D6D5A4C(v16, v14, &qword_27D9FF988, &qword_22D731048);
    v29 = 0;
    if ((*(v24 + 48))(v14, 1, v23) != 1)
    {
      sub_22D70D554(&unk_27D9FF990, MEMORY[0x277CB9A48], MEMORY[0x277CB9A40]);
      v29 = sub_22D72E220();
      (*(v24 + 8))(v14, v23);
    }

    (a3)[2](a3, v29, v28);

    sub_22D6D5984(v16, &qword_27D9FF988, &qword_22D731048);
  }

  _Block_release(a3);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_70Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_22D70D4A0@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22D70D4E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9E0, &qword_22D730298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D70D554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22D70D5C0(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *(v2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_pendingChangeAck) = 0;
  v3 = *(v2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms);
  *(v2 + OBJC_IVAR____TtC12AlarmKitCoreP33_0202C3E4F3A348C107336A5F530026B46Client_lock_bufferedAlarms) = 0;
  *a1 = v3;
}

uint64_t sub_22D70D678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_22D70D6CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_22D70D738(void *a1, uint64_t a2)
{
  v4 = sub_22D72E1D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D72E260();
  sub_22D72E690();
  (*(v5 + 8))(v7, v4);
  sub_22D72E250();
  v8 = sub_22D72E480();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D70D864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF9B0, &qword_22D7302B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D0, &unk_22D7305C0);
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_listener);
  if (v7)
  {
    [v7 activate];
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v0 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
    v14 = sub_22D6F5D3C();
    v15 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_queue);
    v8 = v15;
    v9 = sub_22D72E5E0();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF5D8, qword_22D731140);
    sub_22D6D5838();
    sub_22D6D58D4(&qword_281457260, &qword_27D9FF5D8, qword_22D731140, MEMORY[0x277CBCD90]);
    sub_22D7135D8(&qword_281457180, sub_22D6D5838, MEMORY[0x277D85228]);
    sub_22D72DCA0();
    sub_22D6D5984(v3, &qword_27D9FF9B0, &qword_22D7302B0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22D6D58D4(&unk_281457288, &qword_27D9FF5D0, &unk_22D7305C0, MEMORY[0x277CBCD60]);
    v11 = v13;
    sub_22D72DCB0();

    (*(v4 + 8))(v6, v11);
    swift_beginAccess();
    sub_22D72DC00();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_22D70DBC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = *(Strong + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock);
  v23 = MEMORY[0x28223BE20](Strong);
  MEMORY[0x28223BE20](v23);

  os_unfair_lock_lock(v4 + 4);
  sub_22D6F59F4(v25);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v25[0];

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_22D72E720();
    _s12AlarmKitCore6ClientCMa_0(0);
    sub_22D7135D8(&unk_27D9FFB40, _s12AlarmKitCore6ClientCMa_0, MEMORY[0x277D85378]);
    sub_22D72E560();
    v5 = v25[0];
    v6 = v25[1];
    v7 = v25[2];
    v8 = v25[3];
    v9 = v25[4];
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
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

    v9 = v12 & *(v5 + 56);
  }

  v13 = (v7 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_22D72E750() || (_s12AlarmKitCore6ClientCMa_0(0), v18 = swift_dynamicCast(), v19 = v24, v16 = v8, v17 = v9, !v24))
    {
LABEL_21:
      sub_22D6D3C44(v5);

      return;
    }

LABEL_19:
    v20 = *&v19[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock];
    v21 = MEMORY[0x28223BE20](v18);
    MEMORY[0x28223BE20](v21);
    os_unfair_lock_lock(v20 + 4);
    sub_22D6FF31C(&v24);
    os_unfair_lock_unlock(v20 + 4);
    if (v24)
    {
      v22 = type metadata accessor for AuthorizationBundleIDState(0);
      sub_22D70E0F0(a1 + *(v22 + 20));
    }

    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    v19 = v18;
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22D70DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock_clients;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v9[2] = a2;

  result = sub_22D711C8C(sub_22D7136E8, v9, v7);
  *a3 = result;
  return result;
}

uint64_t sub_22D70E074(uint64_t a1, void *a2)
{
  v3 = sub_22D70EE44();
  if (v4)
  {
    if (v3 == *a2 && v4 == a2[1])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_22D72E980();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_22D70E0F0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22D72E100();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E2A0();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock];
  v26 = v1;
  v27 = a1;
  v23 = sub_22D713638;
  v24 = &v25;
  os_unfair_lock_lock(v11 + 4);
  sub_22D70D638(&aBlock);
  if (v2)
  {
    os_unfair_lock_unlock(v11 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v11 + 4);
    if (aBlock)
    {
      if ([*&v1[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection] remoteTarget])
      {
        sub_22D72E6D0();
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
      }

      aBlock = v32;
      v29 = v33;
      if (*(&v33 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFB50, &qword_22D731158);
        if (swift_dynamicCast())
        {
          v12 = v34;
          (*(v21 + 16))(v7, a1, v5);
          sub_22D72E290();
          sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28], MEMORY[0x277CB9B20]);
          v13 = sub_22D72E220();
          v14 = swift_allocObject();
          *(v14 + 16) = v3;
          v30 = sub_22D713654;
          v31 = v14;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v29 = sub_22D70D6CC;
          *(&v29 + 1) = &block_descriptor_75;
          v15 = _Block_copy(&aBlock);
          v16 = v3;

          [v12 stateDidUpdateWithParameters:v13 completion:v15];
          _Block_release(v15);
          swift_unknownObjectRelease();

          (*(v22 + 8))(v10, v8);
          return;
        }
      }

      else
      {
        sub_22D6D5984(&aBlock, &qword_27D9FF9F0, &unk_22D730240);
      }

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v17 = sub_22D72DBE0();
      __swift_project_value_buffer(v17, qword_27DA01700);
      v18 = sub_22D72DBB0();
      v19 = sub_22D72E590();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_22D6B4000, v18, v19, "Failed to cast connection to client interface protocol", v20, 2u);
        MEMORY[0x2318D0420](v20, -1, -1);
      }
    }
  }
}

void sub_22D70E638(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_22D6F1BB4(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

void sub_22D70E6B4(void *a1, void *a2, uint64_t a3)
{
  sub_22D72E250();
  v6 = sub_22D72E480();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v7 setClient_];

  v10 = [v8 protocolForProtocol_];
  [v7 setServer_];

  v11 = [objc_opt_self() main];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  v24 = sub_22D713588;
  v25 = v13;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D6FD4B4;
  v23 = &block_descriptor_58;
  v14 = _Block_copy(&v20);
  v15 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v24 = sub_22D713590;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D6FD4B4;
  v23 = &block_descriptor_65_1;
  v18 = _Block_copy(&v20);
  v19 = v15;

  [a1 setInvalidationHandler_];
  _Block_release(v18);
}

double sub_22D70E9E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27D9FF128 != -1)
    {
      swift_once();
    }

    v5 = sub_22D72DBE0();
    __swift_project_value_buffer(v5, qword_27DA01700);
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E5A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Connection interrupted", v8, 2u);
      MEMORY[0x2318D0420](v8, -1, -1);
    }

    v9 = *&v4[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock];
    v11 = MEMORY[0x28223BE20](v10);
    MEMORY[0x28223BE20](v11);

    os_unfair_lock_lock(v9 + 4);
    sub_22D6F5B28(v12);
    os_unfair_lock_unlock(v9 + 4);
  }

  return result;
}

double sub_22D70EB90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27D9FF128 != -1)
    {
      swift_once();
    }

    v5 = sub_22D72DBE0();
    __swift_project_value_buffer(v5, qword_27DA01700);
    v6 = sub_22D72DBB0();
    v7 = sub_22D72E5A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22D6B4000, v6, v7, "Connection invalidated", v8, 2u);
      MEMORY[0x2318D0420](v8, -1, -1);
    }

    v9 = *&v4[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock];
    v11 = MEMORY[0x28223BE20](v10);
    MEMORY[0x28223BE20](v11);

    os_unfair_lock_lock(v9 + 4);
    sub_22D6F5B28(v12);
    os_unfair_lock_unlock(v9 + 4);
  }

  return result;
}

void sub_22D70ED3C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_22D71C474(a2);
  swift_endAccess();
}

uint64_t sub_22D70EE44()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection);
  v2 = [v1 remoteProcess];
  v3 = sub_22D72E480();
  v4 = [v2 valueForEntitlement_];

  if (v4)
  {
    sub_22D72E6D0();
    swift_unknownObjectRelease();
    sub_22D6D5254(v10, v11);
    sub_22D6D5254(v11, v10);
    if (swift_dynamicCast())
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = [v1 remoteProcess];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = sub_22D72E490();

      return v8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22D70EFB0()
{
  v1 = v0;
  result = sub_22D70EE44();
  if (v3)
  {
    v4 = v3;
    v5 = result;
    v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v7 = sub_22D72868C(v5, v4, 0);
    v11 = v7;
    if (v7 && (v12 = sub_22D6FF3AC(), v14 = v13, v11, v14))
    {
      return v12;
    }

    else
    {
      v8 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
      v9 = sub_22D72E480();
      v10 = [v8 hasEntitlement_];

      if (v10)
      {
        return 0x64656C7469746E45;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22D70F190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22D72E7D0();

  LODWORD(v9) = *(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_pid);
  v4 = sub_22D72E960();
  MEMORY[0x2318CF680](v4);

  MEMORY[0x2318CF680](0x656C646E7562203BLL, 0xEC000000203A4449);
  v5 = [*(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_22D72E490();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF9A0, &unk_22D731130);
  v7 = sub_22D72E4C0();
  MEMORY[0x2318CF680](v7);

  result = MEMORY[0x2318CF680](41, 0xE100000000000000);
  *a2 = 0x203A646970;
  a2[1] = 0xE500000000000000;
  return result;
}

id sub_22D70F364(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s12AlarmKitCore6ClientCMa_0(uint64_t a1)
{
  result = qword_27D9FFA78;
  if (!qword_27D9FFA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D70F46C(uint64_t a1)
{
  sub_22D70F538(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22D70F538(uint64_t a1)
{
  if (!qword_27D9FFA88)
  {
    sub_22D72E100();
    v1 = sub_22D72E6C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9FFA88);
    }
  }
}

uint64_t sub_22D70F590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E100();
  v31 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB9AF8], v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }

  v28 = v7;
  v29 = a1;
  v30 = v6;
  sub_22D72E2E0();
  if (v13)
  {

    v14 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
    v15 = sub_22D72E480();
    v16 = [v14 hasEntitlement_];

    if (!v16)
    {
      v24 = MEMORY[0x277CB9AE8];
LABEL_12:
      (*(v4 + 104))(v30, *v24, v3);
      sub_22D72E200();
      sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
      swift_allocError();
      sub_22D72E1F0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  v17 = sub_22D72E2E0();
  if (!v18)
  {
    v17 = sub_22D70EE44();
    if (!v18)
    {
      v24 = MEMORY[0x277CB9AF0];
      goto LABEL_12;
    }
  }

  v19 = v17;
  v20 = v18;
  __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(Strong + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
  v21 = off_2840CCC08;
  type metadata accessor for AuthorizationManager();
  v22 = v32;
  v21(v19, v20);
  if (v22)
  {
    swift_unknownObjectRelease();
  }

  else
  {

    v25 = v31;
    v26 = v28;
    (*(v31 + 16))(v10, v12, v28);
    sub_22D72E290();
    swift_unknownObjectRelease();
    return (*(v25 + 8))(v12, v26);
  }
}

uint64_t sub_22D70FC58(uint64_t a1, void (*a2)(char *, void *), uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22D72E100();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_22D6D5A4C(a1, &v22 - v15, &unk_27D9FFAC0, &qword_22D7306F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = sub_22D72E2A0();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = sub_22D72D5C0();
    v23(v6, v19);

    return sub_22D6D5984(v6, &qword_27D9FFAB8, &unk_22D731120);
  }

  else
  {
    (*(v8 + 32))(v13, v16, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_22D72E290();
    v21 = sub_22D72E2A0();
    (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
    v23(v6, 0);
    sub_22D6D5984(v6, &qword_27D9FFAB8, &unk_22D731120);
    return (*(v8 + 8))(v13, v7);
  }
}

void sub_22D70FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_22D6D5A4C(a1, &v12 - v7, &qword_27D9FFAB8, &unk_22D731120);
  v9 = sub_22D72E2A0();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28], MEMORY[0x277CB9B20]);
    v11 = sub_22D72E220();
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, v11, a2);
}

uint64_t sub_22D710150()
{
  v1 = sub_22D72E1E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [*(v0 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
    v8 = sub_22D72E480();
    v9 = [v7 hasEntitlement_];

    if (v9)
    {
      v10 = sub_22D72E2E0();
      if (v11)
      {
        v12 = v10;
        v13 = v11;
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v6 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
        v14 = off_2840CCC18[0];
        type metadata accessor for AuthorizationManager();
        v14(v12, v13);
        swift_unknownObjectRelease();
      }

      v16 = MEMORY[0x277CB9AF0];
    }

    else
    {
      v16 = MEMORY[0x277CB9AE8];
    }

    (*(v2 + 104))(v4, *v16, v1);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
    swift_allocError();
    sub_22D72E1F0();
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v2 + 104))(v4, *MEMORY[0x277CB9AF8], v1);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }
}

uint64_t sub_22D7105E0(uint64_t a1)
{
  v21[3] = a1;
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D72E100();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v21[0] = v8;
    v21[1] = v2;
    v13 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
    v14 = sub_22D72E480();
    v15 = [v13 hasEntitlement_];

    if (v15)
    {
      sub_22D72E2B0();
      v16 = sub_22D72E2C0();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v12 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
      v19 = off_2840CCC20;
      type metadata accessor for AuthorizationManager();
      v19(v10, v16, v18);
      swift_unknownObjectRelease();

      return (*(v21[0] + 8))(v10, v7);
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB9AE8], v3);
      sub_22D72E200();
      sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
      swift_allocError();
      sub_22D72E1F0();
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB9AF8], v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }
}

uint64_t sub_22D710B08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CB9AF8], v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
    swift_allocError();
    sub_22D72E1F0();
    return swift_willThrow();
  }

  v14[1] = a1;
  v7 = [*(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection) remoteProcess];
  v8 = sub_22D72E480();
  v9 = [v7 hasEntitlement_];

  if (!v9)
  {
    v13 = MEMORY[0x277CB9AE8];
LABEL_8:
    (*(v4 + 104))(v6, *v13, v3);
    sub_22D72E200();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
    swift_allocError();
    sub_22D72E1F0();
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v10 = sub_22D72E2E0();
  if (!v11)
  {
    v13 = MEMORY[0x277CB9AF0];
    goto LABEL_8;
  }

  sub_22D6F9524(v10, v11);

  sub_22D72E270();
  return swift_unknownObjectRelease();
}

void sub_22D711054(uint64_t a1@<X8>)
{
  v22 = a1;
  v3 = sub_22D72E1E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22D72E100();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = *(v1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  v21 = v1;
  v18 = sub_22D711BE4;
  v19 = &v20;
  os_unfair_lock_lock(v8 + 4);
  sub_22D6F5B28(v9);
  if (v2)
  {
    os_unfair_lock_unlock(v8 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v8 + 4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = sub_22D70EE44();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v11 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
        v16 = off_2840CCC08;
        type metadata accessor for AuthorizationManager();
        v16(v14, v15);

        sub_22D72E290();
      }

      else
      {
        (*(v4 + 104))(v6, *MEMORY[0x277CB9AF0], v3);
        sub_22D72E200();
        sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
        swift_allocError();
        sub_22D72E1F0();
        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      (*(v4 + 104))(v6, *MEMORY[0x277CB9AF8], v3);
      sub_22D72E200();
      sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
      swift_allocError();
      sub_22D72E1F0();
      swift_willThrow();
    }
  }
}

uint64_t sub_22D7115BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck;
  v11 = 1;
  if (*(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck) == 1)
  {
    v12 = sub_22D72E100();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v9, a2, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    v14 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_bufferedState;
    swift_beginAccess();
    sub_22D713678(v9, a1 + v14);
    result = swift_endAccess();
    *(a1 + v10) = 1;
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_22D711740(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D72E100();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  v13 = *(a2 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock);
  v20 = a2;
  v17 = sub_22D71365C;
  v18 = &v19;
  os_unfair_lock_lock(v13 + 4);
  sub_22D6F4510(v14);
  os_unfair_lock_unlock(v13 + 4);
  sub_22D6D5A4C(v12, v10, &qword_27D9FF398, qword_22D730B40);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_22D6D5984(v12, &qword_27D9FF398, qword_22D730B40);
    v12 = v10;
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_22D70E0F0(v6);
    (*(v4 + 8))(v6, v3);
  }

  return sub_22D6D5984(v12, &qword_27D9FF398, qword_22D730B40);
}

uint64_t sub_22D711AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  *(a1 + OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck) = 0;
  v7 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_bufferedState;
  swift_beginAccess();
  sub_22D6D5A4C(a1 + v7, a2, &qword_27D9FF398, qword_22D730B40);
  v8 = sub_22D72E100();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  swift_beginAccess();
  sub_22D713678(v6, a1 + v7);
  return swift_endAccess();
}

void *sub_22D711BFC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22D71216C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22D711C8C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v22 = MEMORY[0x277D84FA0];
    sub_22D72E720();
    if (sub_22D72E750())
    {
      _s12AlarmKitCore6ClientCMa_0(0);
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v21);
        if (v3)
        {
          break;
        }

        v7 = v21;
        if (v6)
        {
          v8 = *(v4 + 16);
          if (*(v4 + 24) <= v8)
          {
            sub_22D6F228C(v8 + 1);
          }

          v4 = v22;
          result = sub_22D72E6A0();
          v10 = v4 + 56;
          v11 = -1 << *(v4 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6))) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = *(v10 + 8 * v13);
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(*(v4 + 48) + 8 * v14) = v7;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_22D72E750())
        {
          goto LABEL_21;
        }
      }

      v20 = v21;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v19 = sub_22D711EBC(a1, a2, a3);
    if (!v3)
    {
      return v19;
    }
  }

  return v4;
}

void *sub_22D711EBC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v29 = a1;
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v25 = v6;
    v30 = v3;
    v27 = &v25;
    MEMORY[0x28223BE20](a1);
    v26 = &v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v26, v7);
    v28 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v31[0] = *(*(v4 + 48) + 8 * v16);
      v18 = v31[0];
      v3 = v30;
      v19 = v29(v31);
      v30 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v20 = v19;

      v4 = v17;
      if (v20)
      {
        *&v26[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_22D71BF9C(v26, v25, v28, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_22D71BF9C(v26, v25, v28, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_22D711BFC(v23, v6, v4, v29);

  result = MEMORY[0x2318D0420](v23, -1, -1);
  if (!v3)
  {
    return v24;
  }

  return result;
}

void sub_22D71216C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_22D71BF9C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22D7122D8@<X0>(void *(*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22D71231C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v34 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = sub_22D72E100();
  v33 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v33 - v20);
  sub_22D6D5A4C(v35, &v33 - v20, &unk_27D9FFAC0, &qword_22D7306F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    v23 = sub_22D72E2A0();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v8, 1, 1, v23);
    v25 = sub_22D72D5C0();
    sub_22D6D5A4C(v8, v5, &qword_27D9FFAB8, &unk_22D731120);
    v26 = 0;
    if ((*(v24 + 48))(v5, 1, v23) != 1)
    {
      sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28], MEMORY[0x277CB9B20]);
      v26 = sub_22D72E220();
      (*(v24 + 8))(v5, v23);
    }

    (*(v36 + 16))(v36, v26, v25);

    return sub_22D6D5984(v8, &qword_27D9FFAB8, &unk_22D731120);
  }

  else
  {
    v28 = v33;
    (*(v33 + 32))(v18, v21, v13);
    (*(v28 + 16))(v16, v18, v13);
    sub_22D72E290();
    v29 = sub_22D72E2A0();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v12, 0, 1, v29);
    v31 = v34;
    sub_22D6D5A4C(v12, v34, &qword_27D9FFAB8, &unk_22D731120);
    v32 = 0;
    if ((*(v30 + 48))(v31, 1, v29) != 1)
    {
      sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28], MEMORY[0x277CB9B20]);
      v32 = sub_22D72E220();
      (*(v30 + 8))(v31, v29);
    }

    (*(v36 + 16))(v36, v32, 0);

    sub_22D6D5984(v12, &qword_27D9FFAB8, &unk_22D731120);
    return (*(v28 + 8))(v18, v13);
  }
}

void sub_22D712844(uint64_t a1, uint64_t a2, const void *a3)
{
  v31 = a2;
  v4 = sub_22D72DEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFAC0, &qword_22D7306F0);
  MEMORY[0x28223BE20](v32);
  v9 = (&v29 - v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22D7134B4;
  *(v11 + 24) = v10;
  _Block_copy(a3);
  _Block_copy(a3);

  v12 = sub_22D70EE44();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v29 = v7;
    v30 = a3;
    v16 = sub_22D70EFB0();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager), *(v31 + OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_authorizationManager + 24));
      sub_22D6F6E50(v14, v15, v18, v19, sub_22D7134BC, v11);

      v20 = v30;
    }

    else
    {

      if (qword_27D9FF128 != -1)
      {
        swift_once();
      }

      v22 = sub_22D72DBE0();
      __swift_project_value_buffer(v22, qword_27DA01700);
      v23 = sub_22D72DBB0();
      v24 = sub_22D72E580();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v30;
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22D6B4000, v23, v24, "Client has not provided an NSAlarmKitUsageDescription value", v27, 2u);
        MEMORY[0x2318D0420](v27, -1, -1);
      }

      (*(v5 + 104))(v29, *MEMORY[0x277CB99D8], v4);
      sub_22D72DED0();
      sub_22D7135D8(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
      v28 = swift_allocError();
      sub_22D72DEC0();
      *v9 = v28;
      swift_storeEnumTagMultiPayload();
      _Block_copy(v26);
      sub_22D71231C(v9, v26);
      _Block_release(v26);
      sub_22D6D5984(v9, &unk_27D9FFAC0, &qword_22D7306F0);

      v20 = v26;
    }
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CB99D0], v4);
    sub_22D72DED0();
    sub_22D7135D8(&unk_27D9FF4C0, MEMORY[0x277CB99F0], MEMORY[0x277CB99F8]);
    v21 = swift_allocError();
    sub_22D72DEC0();
    *v9 = v21;
    swift_storeEnumTagMultiPayload();
    _Block_copy(a3);
    sub_22D71231C(v9, a3);
    _Block_release(a3);
    sub_22D6D5984(v9, &unk_27D9FFAC0, &qword_22D7306F0);

    v20 = a3;
  }

  _Block_release(v20);
}

id sub_22D712D20(void *a1, int a2, uint64_t a3, _BYTE *a4)
{
  v7 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_pendingChangeAck] = 0;
  v9 = OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_bufferedState;
  v10 = sub_22D72E100();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_delegate + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_lock_wantsStateUpdates] = 0;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC12AlarmKitCoreP33_E359BD1F5DA266C997BD1177236C7CB36Client_pid] = a2;
  *(v11 + 8) = &off_2840CD648;
  swift_unknownObjectWeakAssign();
  v14.receiver = a4;
  v14.super_class = _s12AlarmKitCore6ClientCMa_0(0);
  v12 = a1;
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_22D712E5C(void *a1)
{
  v3 = [a1 remoteProcess];
  v4 = [v3 pid];

  v5 = objc_allocWithZone(_s12AlarmKitCore6ClientCMa_0(0));
  v6 = v1;
  v7 = a1;
  v8 = sub_22D712D20(v7, v4, v6, v5);

  v9 = *&v6[OBJC_IVAR____TtC12AlarmKitCore19AuthorizationServer_lock];

  os_unfair_lock_lock(v9 + 4);
  sub_22D6F5B28(v10);
  os_unfair_lock_unlock(v9 + 4);

  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22D713540;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22D713548;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D70D678;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  v15 = v8;

  [v7 configureConnection_];
  _Block_release(v13);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v7 activate];
  }
}

void sub_22D713090(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = sub_22D72E1E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E200();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFAB8, &unk_22D731120);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    _Block_copy(a2);
    sub_22D712844(a1, v18, a2);
    swift_unknownObjectRelease();

    _Block_release(a2);
  }

  else
  {
    v19 = sub_22D72E2A0();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v16, 1, 1, v19);
    (*(v5 + 104))(v7, *MEMORY[0x277CB9AF8], v4);
    _Block_copy(a2);
    sub_22D72E1F0();
    sub_22D7135D8(&qword_27D9FFA98, MEMORY[0x277CB9B00], MEMORY[0x277CB9B08]);
    v21 = swift_allocError();
    (*(v26 + 32))(v22, v10, v8);
    v23 = sub_22D72D5C0();
    sub_22D6D5A4C(v16, v14, &qword_27D9FFAB8, &unk_22D731120);
    v24 = 0;
    if ((*(v20 + 48))(v14, 1, v19) != 1)
    {
      sub_22D7135D8(&qword_27D9FFA90, MEMORY[0x277CB9B28], MEMORY[0x277CB9B20]);
      v24 = sub_22D72E220();
      (*(v20 + 8))(v14, v19);
    }

    (a2)[2](a2, v24, v23);

    sub_22D6D5984(v16, &qword_27D9FFAB8, &unk_22D731120);
    _Block_release(a2);
  }
}

void *sub_22D7134E0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22D7135D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D713678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF398, qword_22D730B40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D713738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a1;
  v66 = a3;
  v58 = sub_22D72DDA0();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = (&v54 - v8);
  v64 = sub_22D72DDB0();
  v62 = *(v64 - 8);
  v9 = MEMORY[0x28223BE20](v64);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v54 - v11;
  v12 = sub_22D72DD20();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D72D730();
  v65 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  v21 = type metadata accessor for Alarm(0);
  v22 = v3 + v21[14];
  v54 = sub_22D717684(&unk_27D9FF4E0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v23 = sub_22D72E3F0();
  v24 = v16;
  v25 = v65;
  if (v23)
  {
    v26 = v22;
  }

  else
  {
    v26 = a2;
  }

  v27 = v24;
  (*(v65 + 16))(v20, v26);
  (*(v13 + 16))(v15, v3 + v21[11], v12);
  v28 = (*(v13 + 88))(v15, v12);
  if (v28 == *MEMORY[0x277CB9920])
  {
    v29 = v63;
    sub_22D6D5A4C(v4 + v21[8], v63, &qword_27D9FF4B0, &unk_22D7301A0);
    v30 = v62;
    v31 = v64;
    if ((*(v62 + 48))(v29, 1, v64) == 1)
    {
      (*(v25 + 8))(v20, v27);
      sub_22D6D5984(v29, &qword_27D9FF4B0, &unk_22D7301A0);
      return (*(v25 + 56))(v66, 1, 1, v27);
    }

    v35 = v61;
    (*(v30 + 32))(v61, v29, v31);
    sub_22D6D5A4C(v60, &v67, &qword_27D9FF500, &qword_22D730530);
    v36 = v66;
    if (!v68)
    {
      (*(v30 + 8))(v35, v31);
      (*(v25 + 8))(v20, v27);
      sub_22D6D5984(&v67, &qword_27D9FF500, &qword_22D730530);
      return (*(v25 + 56))(v36, 1, 1, v27);
    }

    v37 = v25;
    sub_22D6D5D34(&v67, v69);
    v38 = v59;
    (*(v30 + 16))(v59, v35, v31);
    v39 = (*(v30 + 88))(v38, v31);
    if (v39 == *MEMORY[0x277CB9948])
    {
      (*(v30 + 96))(v38, v31);
      v40 = v31;
      v41 = v55;
      v42 = v38;
      v43 = v20;
      v63 = *(v37 + 32);
      (v63)(v55, v42, v27);
      v44 = sub_22D72E3E0();
      (*(v30 + 8))(v35, v40);
      v45 = *(v37 + 8);
      v45(v43, v27);
      if (v44)
      {
        v45(v41, v27);
        v46 = 1;
        v47 = v66;
      }

      else
      {
        v47 = v66;
        (v63)(v66, v41, v27);
        v46 = 0;
      }

      (*(v37 + 56))(v47, v46, 1, v27);
      return __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }

    if (v39 == *MEMORY[0x277CB9960])
    {
      v49 = v20;
      (*(v30 + 96))(v38, v31);
      v50 = v38;
      v51 = v57;
      v52 = v56;
      v53 = v58;
      (*(v57 + 32))(v56, v50, v58);
      __swift_project_boxed_opaque_existential_1(v69, v69[3]);
      sub_22D722F80(v52, v49, v36);
      (*(v51 + 8))(v52, v53);
      (*(v30 + 8))(v61, v31);
      (*(v65 + 8))(v49, v27);
      return __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }

    goto LABEL_26;
  }

  if (v28 != *MEMORY[0x277CB9918])
  {
    if (v28 == *MEMORY[0x277CB9908] || v28 == *MEMORY[0x277CB9910])
    {
      (*(v25 + 8))(v20, v27);
      return (*(v25 + 56))(v66, 1, 1, v27);
    }

    sub_22D72E970();
    __break(1u);
LABEL_26:
    result = sub_22D72E970();
    __break(1u);
    return result;
  }

  v32 = v20;
  sub_22D714000();
  if (v33)
  {
    (*(v25 + 8))(v20, v27);
    return (*(v25 + 56))(v66, 1, 1, v27);
  }

  else
  {
    sub_22D72D690();
    v48 = v66;
    sub_22D72D6A0();
    (*(v25 + 8))(v32, v27);
    return (*(v25 + 56))(v48, 0, 1, v27);
  }
}

uint64_t sub_22D714000()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_22D72DCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Alarm(0);
  sub_22D6D5A4C(v0 + *(v8 + 36), v3, &qword_27D9FF310, &qword_22D7301B8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22D6D5984(v3, &qword_27D9FF310, &qword_22D7301B8);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    if (*(v0 + *(v8 + 28)))
    {
      v10 = sub_22D72DCE0();
    }

    else
    {
      v10 = sub_22D72DCD0();
    }

    v11 = v10;
    (*(v5 + 8))(v7, v4);
    return v11;
  }
}

uint64_t sub_22D7141DC(uint64_t a1)
{
  v21 = a1;
  v2 = sub_22D72DD20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Alarm(0);
  v7 = v6[11];
  v8 = *MEMORY[0x277CB9918];
  v20 = *(v3 + 104);
  v20(v5, v8, v2);
  v9 = sub_22D72DD10();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v9)
  {
    v11 = v1 + v6[10];
    if (*(v11 + 8))
    {
      v12 = 0.0;
    }

    else
    {
      v12 = *v11;
    }

    v13 = v6[14];
    v14 = v1;
    v15 = v21;
    sub_22D72D690();
    *v11 = v12 + v16;
    *(v11 + 8) = 0;
    v17 = sub_22D72D730();
    (*(*(v17 - 8) + 24))(v14 + v13, v15, v17);
    v10((v14 + v7), v2);
    return (v20)(v14 + v7, *MEMORY[0x277CB9908], v2);
  }

  else
  {
    sub_22D6F45E8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22D7143F0(uint64_t a1, double a2)
{
  v19 = a1;
  v4 = sub_22D72DD20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Alarm(0);
  v9 = v8[11];
  v10 = *MEMORY[0x277CB9910];
  v20 = *(v5 + 104);
  v20(v7, v10, v4);
  v11 = sub_22D72DD10();
  v12 = *(v5 + 8);
  v12(v7, v4);
  if (v11 & 1) != 0 || (v20(v7, *MEMORY[0x277CB9908], v4), v13 = sub_22D72DD10(), v12(v7, v4), (v13) || (v20(v7, *MEMORY[0x277CB9920], v4), v14 = sub_22D72DD10(), v12(v7, v4), (v14))
  {
    v15 = v2 + v8[10];
    *v15 = a2;
    *(v15 + 8) = 0;
    v16 = v8[14];
    v17 = sub_22D72D730();
    (*(*(v17 - 8) + 24))(v2 + v16, v19, v17);
    v12((v2 + v9), v4);
    return (v20)(v2 + v9, *MEMORY[0x277CB9918], v4);
  }

  else
  {
    sub_22D6F45E8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_22D714670(uint64_t a1)
{
  v2 = v1;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v61 - v4;
  v5 = sub_22D72D730();
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v61 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v69 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v66 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v68 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v61 - v22;
  v24 = sub_22D72DDB0();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v73 = &v61 - v29;
  v30 = sub_22D72DD20();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Alarm(0);
  (*(v31 + 16))(v33, v2 + v34[11], v30);
  v35 = (*(v31 + 88))(v33, v30);
  if (v35 == *MEMORY[0x277CB9920])
  {
    sub_22D6D5A4C(v2 + v34[8], v23, &qword_27D9FF4B0, &unk_22D7301A0);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v36 = &qword_27D9FF4B0;
      v37 = &unk_22D7301A0;
      v38 = v23;
LABEL_17:
      sub_22D6D5984(v38, v36, v37);
      LOBYTE(v23) = 1;
      return v23 & 1;
    }
  }

  else
  {
    v23 = 0;
    if (v35 == *MEMORY[0x277CB9918] || v35 == *MEMORY[0x277CB9908] || v35 == *MEMORY[0x277CB9910])
    {
      return v23 & 1;
    }

    sub_22D72E970();
    __break(1u);
  }

  v39 = v73;
  (*(v25 + 32))(v73, v23, v24);
  sub_22D6D5A4C(v72, &v74, &qword_27D9FF500, &qword_22D730530);
  if (!v75)
  {
    (*(v25 + 8))(v39, v24);
    sub_22D6D5984(&v74, &qword_27D9FF500, &qword_22D730530);
    LOBYTE(v23) = 0;
    return v23 & 1;
  }

  sub_22D6D5D34(&v74, v76);
  (*(v25 + 16))(v28, v39, v24);
  v40 = (*(v25 + 88))(v28, v24);
  v41 = v40 == *MEMORY[0x277CB9948];
  v62 = v2;
  if (v41)
  {
    (*(v25 + 96))(v28, v24);
    v43 = v70;
    v42 = v71;
    (*(v71 + 32))(v19, v28, v70);
    (*(v42 + 56))(v19, 0, 1, v43);
    goto LABEL_15;
  }

  v43 = v70;
  v44 = v71;
  if (v40 == *MEMORY[0x277CB9960])
  {
    sub_22D6D42A8(v76, &v74);
    v45 = v67;
    sub_22D72D710();
    v46 = v69;
    sub_22D72D6A0();
    v47 = *(v44 + 8);
    v47(v45, v43);
    sub_22D713738(&v74, v46, v19);
    v47(v46, v43);
    v42 = v71;
    sub_22D6D5984(&v74, &qword_27D9FF500, &qword_22D730530);
    (*(v25 + 8))(v28, v24);
LABEL_15:
    v48 = v68;
    sub_22D718BE0(v19, v68);
    v49 = v66;
    sub_22D6D5A4C(v48, v66, &qword_27D9FFDD0, &qword_22D730140);
    if ((*(v42 + 48))(v49, 1, v43) == 1)
    {
      sub_22D6D5984(v48, &qword_27D9FFDD0, &qword_22D730140);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      (*(v25 + 8))(v73, v24);
      v38 = v49;
      v36 = &qword_27D9FFDD0;
      v37 = &qword_22D730140;
      goto LABEL_17;
    }

    v72 = v25;
    v51 = v65;
    v52 = v43;
    (*(v42 + 32))(v65, v49, v43);
    v53 = v64;
    sub_22D6D5A4C(v62 + v34[9], v64, &qword_27D9FF310, &qword_22D7301B8);
    v54 = sub_22D72DCF0();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      sub_22D6D5984(v53, &qword_27D9FF310, &qword_22D7301B8);
    }

    else
    {
      sub_22D72DCD0();
      v57 = v56;
      (*(v55 + 8))(v53, v54);
      if ((v57 & 1) == 0)
      {
        v58 = v69;
        sub_22D72D6A0();
        v23 = v63;
        sub_22D72D710();
        v60 = v67;
        sub_22D72D6A0();
        v59 = *(v42 + 8);
        v59(v23, v52);
        LOBYTE(v23) = sub_22D72D6D0();
        v59(v60, v52);
        goto LABEL_24;
      }
    }

    v23 = v67;
    sub_22D72D710();
    v58 = v69;
    sub_22D72D6A0();
    v59 = *(v42 + 8);
    v59(v23, v52);
    LOBYTE(v23) = sub_22D72D6D0();
LABEL_24:
    v59(v58, v52);
    v59(v51, v52);
    sub_22D6D5984(v48, &qword_27D9FFDD0, &qword_22D730140);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    (*(v72 + 8))(v73, v24);
    return v23 & 1;
  }

  result = sub_22D72E970();
  __break(1u);
  return result;
}

uint64_t sub_22D714FEC()
{
  v1 = *v0;
  v2 = 0x69746341706F7473;
  v3 = 0x7261646E6F636573;
  if (v1 != 3)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0x7475626972747461;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22D7150A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22D719240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22D7150E0(uint64_t a1)
{
  v2 = sub_22D718A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D71511C(uint64_t a1)
{
  v2 = sub_22D718A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_22D715158(void *a1)
{
  v2 = v1;
  v28 = *v2;
  v4 = sub_22D72D950();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFB70, &qword_22D731300);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - v9;
  v30 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction;
  *(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction) = 0;
  v29 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction;
  *(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction) = 0;
  v11 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_22D718A14();
  v12 = v31;
  sub_22D72EA50();
  if (v12)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v27;
    v31 = v8;
    v34 = 1;
    v14 = sub_22D718A68();
    sub_22D72E8F0();
    v26[1] = v14;
    *(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData) = v33;
    LOBYTE(v33) = 0;
    sub_22D717684(&qword_27D9FFB88, MEMORY[0x277CB9398], MEMORY[0x277CB93A8]);
    sub_22D72E8F0();
    (*(v13 + 32))(v2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v6, v4);
    v34 = 2;
    sub_22D72E8C0();
    v16 = *(&v33 + 1);
    if (*(&v33 + 1) >> 60 == 15)
    {
      v17 = 0;
    }

    else
    {
      v18 = v33;
      sub_22D6FCE80(0, &qword_27D9FFB90, 0x277CCAAC8);
      sub_22D6FCE80(0, &qword_27D9FFB98, 0x277D23720);
      v17 = sub_22D72E5B0();
      sub_22D718ABC(v18, v16);
    }

    v19 = *(v2 + v30);
    *(v2 + v30) = v17;

    v34 = 3;
    sub_22D72E8C0();
    v20 = v10;
    v21 = *(&v33 + 1);
    v22 = v31;
    if (*(&v33 + 1) >> 60 == 15)
    {
      (*(v31 + 8))(v20, v7);
      v23 = 0;
    }

    else
    {
      v24 = v33;
      sub_22D6FCE80(0, &qword_27D9FFB90, 0x277CCAAC8);
      sub_22D6FCE80(0, &qword_27D9FFB98, 0x277D23720);
      v23 = sub_22D72E5B0();
      (*(v22 + 8))(v20, v7);
      sub_22D718ABC(v24, v21);
    }

    v25 = *(v2 + v29);
    *(v2 + v29) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  return v2;
}

uint64_t sub_22D715708(void *a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = sub_22D72D950();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFBA0, &qword_22D731308);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22D718A14();
  v10 = v6;
  sub_22D72EA60();
  v11 = v35;
  (*(v3 + 16))(v5, v35 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType, v2);
  LOBYTE(v37) = 0;
  sub_22D717684(&qword_27D9FFBA8, MEMORY[0x277CB9398], MEMORY[0x277CB93A0]);
  v12 = v34;
  sub_22D72E940();
  if (v12)
  {
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  v34 = v7;
  (*(v3 + 8))(v5, v2);
  v14 = *(v11 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8);
  v37 = *(v11 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
  v38 = v14;
  v36 = 1;
  sub_22D6D3F68(v37, v14);
  sub_22D718AD0();
  sub_22D72E940();
  sub_22D6D5664(v37, v38);
  v15 = *(v11 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_stopAction);
  if (v15)
  {
    v16 = objc_opt_self();
    v37 = 0;
    v17 = v15;
    v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v37];
    v19 = v37;
    if (!v18)
    {
      v23 = v19;
      sub_22D72D5D0();

      swift_willThrow();
      return (*(v34 + 8))(v9, v10);
    }

    v20 = sub_22D72D650();
    v22 = v21;

    v37 = v20;
    v38 = v22;
    v36 = 2;
    sub_22D72E940();

    sub_22D6D5664(v20, v22);
    v10 = v6;
    v11 = v35;
  }

  v24 = *(v11 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_secondaryAction);
  if (!v24)
  {
    return (*(v34 + 8))(v9, v10);
  }

  v25 = v10;
  v26 = objc_opt_self();
  v37 = 0;
  v27 = v24;
  v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:&v37];
  v29 = v37;
  if (v28)
  {
    v30 = sub_22D72D650();
    v32 = v31;

    v37 = v30;
    v38 = v32;
    v36 = 3;
    sub_22D72E940();
    (*(v34 + 8))(v9, v25);

    return sub_22D6D5664(v30, v32);
  }

  else
  {
    v33 = v29;
    sub_22D72D5D0();

    swift_willThrow();
    return (*(v34 + 8))(v9, v25);
  }
}

uint64_t sub_22D715C34()
{
  v1 = OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesType;
  v2 = sub_22D72D950();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22D6D5664(*(v0 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData), *(v0 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_22D715D2C(uint64_t a1)
{
  result = sub_22D72D950();
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

void sub_22D715E18(uint64_t a1)
{
  sub_22D72D7A0();
  if (v1 <= 0x3F)
  {
    sub_22D715F60(319, &qword_2814571E0, MEMORY[0x277CB9968]);
    if (v2 <= 0x3F)
    {
      sub_22D715F60(319, &qword_2814571E8, MEMORY[0x277CB98E8]);
      if (v3 <= 0x3F)
      {
        sub_22D715FB4();
        if (v4 <= 0x3F)
        {
          sub_22D72DD20();
          if (v5 <= 0x3F)
          {
            sub_22D72DBA0();
            if (v6 <= 0x3F)
            {
              sub_22D72D730();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22D715F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22D72E6C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22D715FB4()
{
  if (!qword_2814571A0)
  {
    v0 = sub_22D72E6C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814571A0);
    }
  }
}

uint64_t *sub_22D71604C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_22D715158(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22D7160D0()
{
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](0);
  return sub_22D72EA40();
}

uint64_t sub_22D71613C(uint64_t a1)
{
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](0);
  return sub_22D72EA40();
}

unint64_t sub_22D71617C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x444972656E776FLL;
    v8 = 0x756F437472656C61;
    if (a1 != 3)
    {
      v8 = 0x656C756465686373;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6544746E65696C63;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E6F697461657263;
    if (a1 != 9)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000011;
    v4 = 0xD000000000000018;
    if (a1 != 6)
    {
      v4 = 0x6574617473;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22D7162E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFBF8, &qword_22D731318);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22D718B24();
  sub_22D72EA60();
  v8[31] = 0;
  sub_22D72D7A0();
  sub_22D717684(&qword_27D9FFC00, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_22D72E940();
  if (!v1)
  {
    type metadata accessor for Alarm(0);
    v8[30] = 1;
    sub_22D72E940();
    v8[29] = 2;
    sub_22D72E920();
    v8[28] = 3;
    sub_22D72E930();
    v8[27] = 4;
    sub_22D72DDB0();
    sub_22D717684(&qword_27D9FFC08, MEMORY[0x277CB9968], MEMORY[0x277CB9970]);
    sub_22D72E910();
    v8[26] = 5;
    sub_22D72DCF0();
    sub_22D717684(&qword_27D9FFC10, MEMORY[0x277CB98E8], MEMORY[0x277CB98F0]);
    sub_22D72E910();
    v8[25] = 6;
    sub_22D72E900();
    v8[24] = 7;
    sub_22D72DD20();
    sub_22D717684(&qword_27D9FFC18, MEMORY[0x277CB9928], MEMORY[0x277CB9930]);
    sub_22D72E940();
    v8[15] = 8;
    sub_22D72DBA0();
    sub_22D717684(&qword_27D9FFC20, MEMORY[0x277CB9850], MEMORY[0x277CB9858]);
    sub_22D72E940();
    v8[14] = 9;
    sub_22D72D730();
    sub_22D717684(&qword_27D9FFC28, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22D72E940();
    v8[13] = 10;
    sub_22D72E940();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22D7167C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v76 = sub_22D72D730();
  v74 = *(v76 - 8);
  v3 = MEMORY[0x28223BE20](v76);
  v66 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v62 - v5;
  v78 = sub_22D72DBA0();
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22D72DD20();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_22D72D7A0();
  v71 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v62 - v17;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFBB8, &qword_22D731310);
  v73 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v19 = &v62 - v18;
  v20 = type metadata accessor for Alarm(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v21 + 32);
  v25 = sub_22D72DDB0();
  v26 = *(*(v25 - 8) + 56);
  v86 = v24;
  v26(&v23[v24], 1, 1, v25);
  v84 = v20;
  v27 = *(v20 + 36);
  v28 = sub_22D72DCF0();
  v29 = *(*(v28 - 8) + 56);
  v87 = v23;
  v85 = v27;
  v29(&v23[v27], 1, 1, v28);
  v30 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_22D718B24();
  v80 = v19;
  v31 = v82;
  sub_22D72EA50();
  if (v31)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v39 = v84;
    v42 = v87;
    goto LABEL_4;
  }

  v82 = v25;
  v64 = v12;
  v98 = 0;
  sub_22D717684(&qword_27D9FFBC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v32 = v72;
  sub_22D72E8F0();
  v37 = *(v71 + 32);
  v37(v87, v32, v13);
  v97 = 1;
  v38 = v16;
  sub_22D72E8F0();
  v39 = v84;
  v40 = v13;
  v37(&v87[v84[5]], v38, v13);
  v96 = 2;
  v72 = 0;
  v41 = sub_22D72E8D0();
  v42 = v87;
  v43 = &v87[v39[6]];
  *v43 = v41;
  v43[1] = v44;
  v95 = 3;
  v45 = sub_22D72E8E0();
  v63 = v40;
  *&v42[v39[7]] = v45;
  v94 = 4;
  sub_22D717684(&qword_27D9FFBD0, MEMORY[0x277CB9968], MEMORY[0x277CB9980]);
  v46 = v64;
  sub_22D72E8C0();
  sub_22D718B78(v46, &v42[v86], &qword_27D9FF4B0, &unk_22D7301A0);
  v93 = 5;
  sub_22D717684(&qword_27D9FFBD8, MEMORY[0x277CB98E8], MEMORY[0x277CB9900]);
  v47 = v70;
  sub_22D72E8C0();
  v48 = v73;
  sub_22D718B78(v47, &v42[v85], &qword_27D9FF310, &qword_22D7301B8);
  v92 = 6;
  v49 = sub_22D72E8B0();
  v53 = &v42[v39[10]];
  *v53 = v49;
  v53[8] = v54 & 1;
  v91 = 7;
  sub_22D717684(&qword_27D9FFBE0, MEMORY[0x277CB9928], MEMORY[0x277CB9940]);
  v55 = v69;
  sub_22D72E8F0();
  v82 = 0;
  (*(v77 + 32))(&v42[v39[11]], v55, v79);
  v90[0] = 8;
  sub_22D717684(&qword_27D9FFBE8, MEMORY[0x277CB9850], MEMORY[0x277CB9860]);
  v56 = v68;
  v57 = v82;
  sub_22D72E8F0();
  v82 = v57;
  if (v57)
  {
    (*(v48 + 8))(v80, v81);
    v34 = 0;
    v35 = 0;
    LODWORD(v81) = 1;
    v33 = 1;
    v50 = v72;
    v51 = v63;
  }

  else
  {
    (*(v75 + 32))(&v42[v39[12]], v56, v78);
    v89 = 9;
    sub_22D717684(&qword_27D9FFBF0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v58 = v82;
    sub_22D72E8F0();
    v82 = v58;
    if (v58)
    {
      (*(v73 + 8))(v80, v81);
      v35 = 0;
      LODWORD(v81) = 1;
      v33 = 1;
      v34 = 1;
    }

    else
    {
      v59 = *(v74 + 32);
      v59(&v87[v84[13]], v67, v76);
      v88 = 10;
      v60 = v82;
      sub_22D72E8F0();
      v82 = v60;
      if (!v60)
      {
        (*(v73 + 8))(v80, v81);
        v61 = v87;
        v59(&v87[v84[14]], v66, v76);
        sub_22D6F37E4(v61, v65);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        return sub_22D6F3848(v61);
      }

      (*(v73 + 8))(v80, v81);
      LODWORD(v81) = 1;
      v33 = 1;
      v34 = 1;
      v35 = 1;
    }

    v39 = v84;
    v51 = v40;
    v42 = v87;
    v50 = v72;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  v52 = *(v71 + 8);
  v52(v42, v51);
  if (v50)
  {
    if (!v81)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v52(&v42[v39[5]], v51);
    if ((v81 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_4:
  sub_22D6D5984(&v42[v86], &qword_27D9FF4B0, &unk_22D7301A0);
  result = sub_22D6D5984(&v42[v85], &qword_27D9FF310, &qword_22D7301B8);
  if (!v33)
  {
    if (!v34)
    {
      goto LABEL_6;
    }

LABEL_9:
    result = (*(v75 + 8))(&v42[v39[12]], v78);
    if (!v35)
    {
      return result;
    }

    return (*(v74 + 8))(&v42[v39[13]], v76);
  }

  result = (*(v77 + 8))(&v42[v39[11]], v79);
  if (v34)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!v35)
  {
    return result;
  }

  return (*(v74 + 8))(&v42[v39[13]], v76);
}

uint64_t sub_22D717494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22D719418(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22D7174C8(uint64_t a1)
{
  v2 = sub_22D718B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D717504(uint64_t a1)
{
  v2 = sub_22D718B24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D717540@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D72D7A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22D717684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D7176CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D72DCF0();
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFC30, &qword_22D731320);
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = sub_22D72DDB0();
  v66 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFC38, &qword_22D731328);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  if ((sub_22D72D780() & 1) == 0)
  {
    goto LABEL_21;
  }

  v62 = v10;
  v20 = type metadata accessor for Alarm(0);
  if ((sub_22D72D780() & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = v20[6];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_22D72E980() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (*(a1 + v20[7]) != *(a2 + v20[7]))
  {
    goto LABEL_21;
  }

  v58 = v4;
  v59 = v20;
  v25 = v20[8];
  v26 = *(v17 + 48);
  v60 = a1;
  v27 = a1 + v25;
  v28 = v26;
  sub_22D6D5A4C(v27, v19, &qword_27D9FF4B0, &unk_22D7301A0);
  v61 = a2;
  sub_22D6D5A4C(a2 + v25, &v19[v28], &qword_27D9FF4B0, &unk_22D7301A0);
  v29 = v66;
  v30 = *(v66 + 48);
  if (v30(v19, 1, v11) == 1)
  {
    if (v30(&v19[v28], 1, v11) == 1)
    {
      sub_22D6D5984(v19, &qword_27D9FF4B0, &unk_22D7301A0);
      goto LABEL_14;
    }

LABEL_12:
    v31 = &qword_27D9FFC38;
    v32 = &qword_22D731328;
    v33 = v19;
LABEL_20:
    sub_22D6D5984(v33, v31, v32);
    goto LABEL_21;
  }

  sub_22D6D5A4C(v19, v16, &qword_27D9FF4B0, &unk_22D7301A0);
  if (v30(&v19[v28], 1, v11) == 1)
  {
    (*(v29 + 8))(v16, v11);
    goto LABEL_12;
  }

  (*(v29 + 32))(v13, &v19[v28], v11);
  sub_22D717684(&qword_27D9FFC48, MEMORY[0x277CB9968], MEMORY[0x277CB9978]);
  v34 = sub_22D72E400();
  v35 = *(v29 + 8);
  v35(v13, v11);
  v35(v16, v11);
  sub_22D6D5984(v19, &qword_27D9FF4B0, &unk_22D7301A0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  v36 = v59[9];
  v37 = *(v8 + 48);
  v38 = v62;
  sub_22D6D5A4C(v60 + v36, v62, &qword_27D9FF310, &qword_22D7301B8);
  sub_22D6D5A4C(v61 + v36, v38 + v37, &qword_27D9FF310, &qword_22D7301B8);
  v39 = v65;
  v40 = *(v65 + 48);
  v41 = v58;
  if (v40(v38, 1, v58) != 1)
  {
    v42 = v64;
    sub_22D6D5A4C(v38, v64, &qword_27D9FF310, &qword_22D7301B8);
    if (v40(v38 + v37, 1, v41) != 1)
    {
      v45 = v38 + v37;
      v46 = v63;
      (*(v39 + 32))(v63, v45, v41);
      sub_22D717684(&qword_27D9FFC40, MEMORY[0x277CB98E8], MEMORY[0x277CB98F8]);
      v47 = sub_22D72E400();
      v48 = *(v39 + 8);
      v48(v46, v41);
      v48(v42, v41);
      sub_22D6D5984(v38, &qword_27D9FF310, &qword_22D7301B8);
      if ((v47 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    (*(v39 + 8))(v42, v41);
    goto LABEL_19;
  }

  if (v40(v38 + v37, 1, v41) != 1)
  {
LABEL_19:
    v31 = &qword_27D9FFC30;
    v32 = &qword_22D731320;
    v33 = v38;
    goto LABEL_20;
  }

  sub_22D6D5984(v38, &qword_27D9FF310, &qword_22D7301B8);
LABEL_24:
  v49 = v59;
  v50 = v59[10];
  v51 = (v60 + v50);
  v52 = *(v60 + v50 + 8);
  v53 = (v61 + v50);
  v54 = *(v61 + v50 + 8);
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      goto LABEL_21;
    }
  }

  v55 = v61;
  v56 = v60;
  if (sub_22D72DD10() & 1) != 0 && (MEMORY[0x2318CECF0](v56 + v49[12], v55 + v49[12]) & 1) != 0 && (sub_22D72D6F0())
  {
    v43 = sub_22D72D6F0();
    return v43 & 1;
  }

LABEL_21:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_22D717E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF310, &qword_22D7301B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v90 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v85 - v7;
  v91 = sub_22D72DCF0();
  v93 = *(v91 - 8);
  v8 = MEMORY[0x28223BE20](v91);
  v88 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v85 - v10;
  v11 = sub_22D72D730();
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v92 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v94 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v85 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v98 = &v85 - v22;
  MEMORY[0x28223BE20](v21);
  v99 = &v85 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF318, &qword_22D7301C0);
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  v100 = type metadata accessor for Alarm(0);
  v27 = *(v100 + 44);
  v28 = *(v24 + 48);
  v29 = sub_22D72DD20();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v101 = a1;
  v32 = a1 + v27;
  v33 = v29;
  v31(v26, v32, v29);
  v102 = a2;
  v31(&v26[v28], a2 + v27, v33);
  v104 = v30;
  v34 = *(v30 + 88);
  v35 = v34(v26, v33);
  v36 = *MEMORY[0x277CB9910];
  v103 = v28;
  v37 = v34(&v26[v28], v33);
  if (v35 == v36)
  {
    if (v37 == v35)
    {
      v38 = sub_22D72D6C0();
      return v38 & 1;
    }

    goto LABEL_11;
  }

  v39 = *MEMORY[0x277CB9918];
  if (v37 == *MEMORY[0x277CB9918])
  {
    if (v34(v26, v33) == v37)
    {
      v86 = v33;
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      v40 = v100;
      v93 = *(v100 + 56);
      v41 = v99;
      sub_22D713738(&v105, v101 + v93, v99);
      sub_22D6D5984(&v105, &qword_27D9FF500, &qword_22D730530);
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      v100 = v40[14];
      v42 = v98;
      sub_22D713738(&v105, v102 + v100, v98);
      sub_22D6D5984(&v105, &qword_27D9FF500, &qword_22D730530);
      sub_22D6D5A4C(v41, v20, &qword_27D9FFDD0, &qword_22D730140);
      v44 = v96;
      v43 = v97;
      v45 = *(v96 + 48);
      if (v45(v20, 1, v97) == 1)
      {
        v46 = v103;
      }

      else
      {
        v53 = *(v44 + 32);
        v54 = v95;
        v53(v95, v20, v43);
        v20 = v94;
        sub_22D6D5A4C(v42, v94, &qword_27D9FFDD0, &qword_22D730140);
        if (v45(v20, 1, v43) != 1)
        {
          v68 = v92;
          v53(v92, v20, v43);
          v69 = v54;
          v55 = sub_22D72D6D0();
          v70 = *(v44 + 8);
          v70(v68, v43);
          v70(v69, v43);
          sub_22D6D5984(v99, &qword_27D9FFDD0, &qword_22D730140);
          sub_22D6D5984(v98, &qword_27D9FFDD0, &qword_22D730140);
          v56 = *(v104 + 8);
          v57 = &v26[v103];
          goto LABEL_54;
        }

        (*(v44 + 8))(v54, v43);
        v46 = v103;
      }

      sub_22D6D5984(v20, &qword_27D9FFDD0, &qword_22D730140);
      if (v45(v99, 1, v43) != 1 && v45(v42, 1, v43) == 1)
      {
        sub_22D6D5984(v99, &qword_27D9FFDD0, &qword_22D730140);
        sub_22D6D5984(v42, &qword_27D9FFDD0, &qword_22D730140);
        v48 = *(v104 + 8);
        v49 = &v26[v46];
LABEL_22:
        v50 = v86;
        goto LABEL_13;
      }

      if (v45(v42, 1, v43) == 1)
      {
        v55 = sub_22D72D6C0();
        sub_22D6D5984(v99, &qword_27D9FFDD0, &qword_22D730140);
        sub_22D6D5984(v42, &qword_27D9FFDD0, &qword_22D730140);
        v56 = *(v104 + 8);
        v57 = &v26[v46];
LABEL_54:
        v56(v57, v86);
        goto LABEL_55;
      }

      sub_22D6D5984(v99, &qword_27D9FFDD0, &qword_22D730140);
      sub_22D6D5984(v42, &qword_27D9FFDD0, &qword_22D730140);
      (*(v104 + 8))(&v26[v46], v86);
LABEL_32:
      v38 = 0;
      return v38 & 1;
    }
  }

  else if (v37 == v36)
  {
    v47 = *(v104 + 8);
    v47(&v26[v103], v33);
LABEL_16:
    v47(v26, v33);
    v38 = 0;
    return v38 & 1;
  }

  if (v34(v26, v33) == v39)
  {
LABEL_11:
    v48 = *(v104 + 8);
    v49 = &v26[v103];
LABEL_12:
    v50 = v33;
LABEL_13:
    v48(v49, v50);
    v38 = 1;
    return v38 & 1;
  }

  v51 = v103;
  v52 = v34(&v26[v103], v33);
  if (v52 == v39)
  {
LABEL_15:
    v47 = *(v104 + 8);
    v47(&v26[v51], v33);
    goto LABEL_16;
  }

  v58 = *MEMORY[0x277CB9908];
  if (v52 == *MEMORY[0x277CB9908] && v34(v26, v33) == v52)
  {
    v86 = v33;
    v60 = v100;
    v59 = v101;
    v61 = v89;
    sub_22D6D5A4C(v101 + *(v100 + 36), v89, &qword_27D9FF310, &qword_22D7301B8);
    v62 = v93;
    v63 = *(v93 + 48);
    v64 = v91;
    if (v63(v61, 1, v91) == 1)
    {
      sub_22D6D5984(v61, &qword_27D9FF310, &qword_22D7301B8);
      v65 = 1;
      v66 = 0.0;
      v67 = v102;
    }

    else
    {
      v73 = v87;
      (*(v62 + 32))(v87, v61, v64);
      v67 = v102;
      if (*(v59 + v60[7]))
      {
        v74 = sub_22D72DCE0();
      }

      else
      {
        v74 = sub_22D72DCD0();
      }

      v76 = *&v74;
      v65 = v75;
      (*(v93 + 8))(v73, v64);
      v66 = v76;
    }

    v77 = v100;
    v78 = v90;
    sub_22D6D5A4C(v67 + *(v100 + 36), v90, &qword_27D9FF310, &qword_22D7301B8);
    if (v63(v78, 1, v64) == 1)
    {
      sub_22D6D5984(v78, &qword_27D9FF310, &qword_22D7301B8);
      if ((v65 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v79 = v88;
      (*(v93 + 32))(v88, v78, v64);
      if (*(v67 + v77[7]))
      {
        *&v80 = COERCE_DOUBLE(sub_22D72DCE0());
      }

      else
      {
        *&v80 = COERCE_DOUBLE(sub_22D72DCD0());
      }

      v82 = *&v80;
      v83 = v81;
      (*(v93 + 8))(v79, v64);
      if ((v65 & 1) == 0)
      {
        if (v83)
        {
LABEL_58:
          v48 = *(v104 + 8);
          v49 = &v26[v51];
          goto LABEL_22;
        }

        v55 = v66 < v82;
LABEL_53:
        v56 = *(v104 + 8);
        v57 = &v26[v51];
        goto LABEL_54;
      }
    }

    v55 = sub_22D72D6C0();
    goto LABEL_53;
  }

  if (v34(v26, v33) == v58)
  {
    goto LABEL_30;
  }

  v71 = v34(&v26[v51], v33);
  v72 = *MEMORY[0x277CB9920];
  if (v71 == *MEMORY[0x277CB9920])
  {
    if (v34(v26, v33) == v71)
    {
      v55 = sub_22D72D6C0();
      (*(v104 + 8))(&v26[v51], v33);
LABEL_55:
      v38 = v55;
      return v38 & 1;
    }
  }

  else if (v71 == v58)
  {
    goto LABEL_15;
  }

  if (v34(v26, v33) == v72)
  {
LABEL_30:
    v48 = *(v104 + 8);
    v49 = &v26[v51];
    goto LABEL_12;
  }

  if (v34(&v26[v51], v33) == v72)
  {
    (*(v104 + 8))(v26, v33);
    goto LABEL_32;
  }

  result = sub_22D72E970();
  __break(1u);
  return result;
}

unint64_t sub_22D718A14()
{
  result = qword_27D9FFB78;
  if (!qword_27D9FFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFB78);
  }

  return result;
}

unint64_t sub_22D718A68()
{
  result = qword_27D9FFB80;
  if (!qword_27D9FFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFB80);
  }

  return result;
}

uint64_t sub_22D718ABC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22D6D5664(result, a2);
  }

  return result;
}

unint64_t sub_22D718AD0()
{
  result = qword_27D9FFBB0;
  if (!qword_27D9FFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFBB0);
  }

  return result;
}

unint64_t sub_22D718B24()
{
  result = qword_27D9FFBC0;
  if (!qword_27D9FFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFBC0);
  }

  return result;
}

uint64_t sub_22D718B78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D718BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Alarm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Alarm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alarm.ActivityData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Alarm.ActivityData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Alarm.AlarmError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Alarm.AlarmError(_WORD *result, int a2, int a3)
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

unint64_t sub_22D718FDC()
{
  result = qword_27D9FFC50;
  if (!qword_27D9FFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC50);
  }

  return result;
}

unint64_t sub_22D719034()
{
  result = qword_27D9FFC58;
  if (!qword_27D9FFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC58);
  }

  return result;
}

unint64_t sub_22D71908C()
{
  result = qword_27D9FFC60;
  if (!qword_27D9FFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC60);
  }

  return result;
}

unint64_t sub_22D7190E4()
{
  result = qword_27D9FFC68;
  if (!qword_27D9FFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC68);
  }

  return result;
}

unint64_t sub_22D71913C()
{
  result = qword_27D9FFC70;
  if (!qword_27D9FFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC70);
  }

  return result;
}

unint64_t sub_22D719194()
{
  result = qword_27D9FFC78;
  if (!qword_27D9FFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC78);
  }

  return result;
}

unint64_t sub_22D7191EC()
{
  result = qword_27D9FFC80;
  if (!qword_27D9FFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFC80);
  }

  return result;
}

uint64_t sub_22D719240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7475626972747461 && a2 == 0xEE00657079547365;
  if (v3 || (sub_22D72E980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00617461447365 || (sub_22D72E980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746341706F7473 && a2 == 0xEA00000000006E6FLL || (sub_22D72E980() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179 || (sub_22D72E980() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022D733460 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22D72E980();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22D719418(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22D72E980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6544746E65696C63 && a2 == 0xEF444964656E6966 || (sub_22D72E980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444972656E776FLL && a2 == 0xE700000000000000 || (sub_22D72E980() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F437472656C61 && a2 == 0xEA0000000000746ELL || (sub_22D72E980() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000 || (sub_22D72E980() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022D733480 == a2 || (sub_22D72E980() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022D7334A0 == a2 || (sub_22D72E980() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_22D72E980() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022D7334C0 == a2 || (sub_22D72E980() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_22D72E980() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022D731F90 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_22D72E980();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_22D719818(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22D6D3340(0, v2, 0);
    v4 = v33;
    v5 = v1 + 56;
    result = sub_22D72E6F0();
    v6 = result;
    v7 = 0;
    v26 = v1 + 64;
    v27 = v2;
    v28 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      v29 = v7;
      v30 = *(v1 + 36);
      v10 = *(v1 + 48) + 40 * v6;
      v11 = *(v10 + 32);
      v31 = *v10;
      v32 = *(v10 + 8);
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318CF680](10272, 0xE200000000000000);
      if (v11)
      {
        v12 = 2037278052;
      }

      else
      {
        v12 = 0x776F6C6C61;
      }

      if (v11)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      MEMORY[0x2318CF680](v12, v13);

      MEMORY[0x2318CF680](41, 0xE100000000000000);

      v14 = v4;
      v34 = v4;
      v15 = v1;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_22D6D3340((v16 > 1), v17 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 16 * v17;
      *(v18 + 32) = v31;
      *(v18 + 40) = v32;
      v8 = 1 << *(v15 + 32);
      if (v6 >= v8)
      {
        goto LABEL_29;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_31;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_22D6D5264(v6, v30, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_22D6D5264(v6, v30, 0);
      }

LABEL_4:
      v7 = v29 + 1;
      v6 = v8;
      if (v29 + 1 == v27)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_22D719AD0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22D6D3340(0, v2, 0);
    v4 = v32;
    v5 = v1 + 56;
    result = sub_22D72E6F0();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      v10 = (*(v1 + 48) + 40 * v6);
      v12 = v10[2];
      v11 = v10[3];
      v30 = *v10;
      v31 = v10[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x2318CF680](10272, 0xE200000000000000);
      MEMORY[0x2318CF680](v12, v11);
      MEMORY[0x2318CF680](41, 0xE100000000000000);

      v13 = v4;
      v33 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_22D6D3340((v15 > 1), v16 + 1, 1);
        v13 = v33;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v30;
      *(v17 + 40) = v31;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_22D6D5264(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_22D6D5264(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22D719D58()
{
  v1 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher;
  if (*(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDA8, &unk_22D731760);
    sub_22D6D58D4(&unk_281457200, &qword_27D9FFDA8, &unk_22D731760, MEMORY[0x277CBCE20]);
    v2 = sub_22D72DC70();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_22D719E34()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___addedPublisher] = 0;
  v2 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__addedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDA8, &unk_22D731760);
  swift_allocObject();
  *&v0[v2] = sub_22D72DC20();
  *&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___removedPublisher] = 0;
  v3 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__removedPublisher;
  swift_allocObject();
  *&v0[v3] = sub_22D72DC20();
  *&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher] = 0;
  v4 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver__restrictionsChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFD90, &qword_22D731750);
  swift_allocObject();
  *&v0[v4] = sub_22D72DC20();
  v5 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_subscriptions] = MEMORY[0x277D84FA0];
  v6 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFB30, &unk_22D730520);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock_restrictions] = v5;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace] = result;
    *&v1[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_restrictionProviders] = MEMORY[0x277D84F90];
    v9.receiver = v1;
    v9.super_class = type metadata accessor for AppEventObserver();
    return objc_msgSendSuper2(&v9, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_22D719FEC()
{
  [*&v0[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace] removeObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22D71A1A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_restrictionProviders);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v4);
      v9 = v8;
      (*(v4 + 8))(ObjectType, v4);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v7;
      v11[4] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFD80, &qword_22D731748);
      sub_22D6D58D4(&qword_27D9FFD88, &qword_27D9FFD80, &qword_22D731748, MEMORY[0x277CBCD90]);
      sub_22D72DCB0();

      swift_beginAccess();
      sub_22D72DC00();
      swift_endAccess();

      (*(v4 + 24))(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_22D71A3A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock);
    v6 = MEMORY[0x28223BE20](Strong);
    MEMORY[0x28223BE20](v6);

    os_unfair_lock_lock(v4 + 4);
    sub_22D71DC00(&v7);
    os_unfair_lock_unlock(v4 + 4);
    v5 = v7;

    if (v5 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFD90, &qword_22D731750);
      sub_22D6D58D4(&qword_27D9FFD98, &qword_27D9FFD90, &qword_22D731750, MEMORY[0x277CBCE18]);
      sub_22D72DC60();
    }
  }
}

void sub_22D71A514(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock_restrictions;

  v12 = sub_22D71DD9C(v11, a2, a3);

  if (sub_22D71B26C(v12, a4))
  {

    *a5 = 0;
  }

  else
  {
    v35 = v10;
    if (*(v12 + 16) <= *(a4 + 16) >> 3)
    {
      v37 = a4;

      sub_22D71CF64(v12);
      v13 = a4;
    }

    else
    {

      v13 = sub_22D71D0A0(v12, a4);
    }

    v14 = sub_22D719818(v13);

    if (*(a4 + 16) <= *(v12 + 16) >> 3)
    {
      v37 = v12;

      sub_22D71CF64(a4);
      v15 = v12;
    }

    else
    {

      v15 = sub_22D71D0A0(a4, v12);
    }

    v36 = a1;
    v16 = sub_22D719818(v15);

    if (qword_27D9FF118 != -1)
    {
      swift_once();
    }

    v17 = sub_22D72DBE0();
    __swift_project_value_buffer(v17, qword_27DA016D0);

    v18 = sub_22D72DBB0();
    v19 = sub_22D72E5A0();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = a5;
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v20 = 136446723;
      *(v20 + 4) = sub_22D72891C(a2, a3, &v37);
      *(v20 + 12) = 2081;
      v21 = MEMORY[0x2318CF6C0](v14, MEMORY[0x277D837D0]);
      v23 = v22;

      v24 = sub_22D72891C(v21, v23, &v37);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2081;
      v25 = MEMORY[0x2318CF6C0](v16, MEMORY[0x277D837D0]);
      v27 = v26;

      v28 = sub_22D72891C(v25, v27, &v37);

      *(v20 + 24) = v28;
      _os_log_impl(&dword_22D6B4000, v18, v19, "Restrictions changed by %{public}s.  Added: %{private}s; removed: %{private}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318D0420](v33, -1, -1);
      v29 = v20;
      a5 = v34;
      MEMORY[0x2318D0420](v29, -1, -1);
    }

    else
    {
    }

    v30 = *(v36 + v35);
    if (*(v12 + 16) <= *(v30 + 16) >> 3)
    {
      v37 = *(v36 + v35);

      sub_22D71CF64(v12);

      v31 = v37;
    }

    else
    {

      v31 = sub_22D71D0A0(v12, v30);
    }

    v37 = v31;

    sub_22D71A914(v32);
    *(v36 + v35) = v37;

    *a5 = 1;
  }
}

void sub_22D71A914(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(a1 + 48) + 40 * (v9 | (v8 << 6));
    v14 = *(v10 + 32);
    v11 = *(v10 + 16);
    v13[0] = *v10;
    v13[1] = v11;
    v15 = v13[0];
    v16 = v11;
    sub_22D71E028(&v15, v12);
    sub_22D71E028(&v16, v12);
    sub_22D6F1E00(v12, v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22D71AA48(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22D72E820();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22D6D5270(i, v5);
    sub_22D71DB88();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22D72E800();
    sub_22D72E830();
    sub_22D72E840();
    sub_22D72E810();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

unint64_t sub_22D71AB4C(unint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_22D71AA48(result);
    if (result)
    {
      v3 = result;
      v4 = result & 0xFFFFFFFFFFFFFF8;
      if (result >> 62)
      {
LABEL_23:
        v5 = sub_22D72E730();
        if (v5)
        {
LABEL_5:
          v6 = 0;
          v19 = MEMORY[0x277D84F90];
          do
          {
            v7 = v6;
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v8 = MEMORY[0x2318CF970](v7, v3);
              }

              else
              {
                if (v7 >= *(v4 + 16))
                {
                  goto LABEL_22;
                }

                v8 = *(v3 + 8 * v7 + 32);
              }

              v9 = v8;
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

              v10 = [v8 bundleIdentifier];
              if (v10)
              {
                break;
              }

              ++v7;
              if (v6 == v5)
              {
                goto LABEL_24;
              }
            }

            v18 = a2;
            v11 = v10;
            v12 = sub_22D72E490();
            v17 = v13;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_22D6CBE70(0, *(v19 + 2) + 1, 1, v19);
            }

            v15 = *(v19 + 2);
            v14 = *(v19 + 3);
            if (v15 >= v14 >> 1)
            {
              v19 = sub_22D6CBE70((v14 > 1), v15 + 1, 1, v19);
            }

            *(v19 + 2) = v15 + 1;
            v16 = &v19[16 * v15];
            a2 = v18;
            *(v16 + 4) = v12;
            *(v16 + 5) = v17;
          }

          while (v6 != v5);
        }
      }

      else
      {
        v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
          goto LABEL_5;
        }
      }

LABEL_24:

      sub_22D72DC10();
    }
  }

  return result;
}

uint64_t sub_22D71AD30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = sub_22D72E520();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  sub_22D71AB4C(v6, a4);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22D71ADC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D71AE08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22D71AE5C@<X0>(unint64_t *a2@<X8>)
{

  v4 = sub_22D71B900(v3);
  v5 = sub_22D719AD0(v4);

  v7 = sub_22D71BB2C(v6);
  v8 = sub_22D719AD0(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF338, &qword_22D7301E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D730030;
  *(inited + 32) = 0x73694C776F6C6C61;
  *(inited + 40) = 0xE900000000000074;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD60, &qword_22D731740);
  *(inited + 48) = v8;
  *(inited + 72) = v10;
  *(inited + 80) = 0x7473694C796E6564;
  *(inited + 120) = v10;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v5;
  v11 = sub_22D6D4390(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF348, &unk_22D7301F0);
  result = swift_arrayDestroy();
  *a2 = v11;
  return result;
}

uint64_t sub_22D71AFF4()
{
  if (*v0)
  {
    return 2037278052;
  }

  else
  {
    return 0x776F6C6C61;
  }
}

uint64_t sub_22D71B024()
{
  v1 = *(v0 + 32);
  sub_22D72EA20();
  sub_22D72E4E0();
  sub_22D72E4E0();
  MEMORY[0x2318CFBC0](v1);
  return sub_22D72EA40();
}

uint64_t sub_22D71B0A4(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22D72E4E0();
  sub_22D72E4E0();
  return MEMORY[0x2318CFBC0](v2);
}

uint64_t sub_22D71B0F8(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22D72EA20();
  sub_22D72E4E0();
  sub_22D72E4E0();
  MEMORY[0x2318CFBC0](v2);
  return sub_22D72EA40();
}

uint64_t sub_22D71B174(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_22D72E980()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_22D72E980()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22D71B218()
{
  result = qword_27D9FFD50;
  if (!qword_27D9FFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFD50);
  }

  return result;
}

uint64_t sub_22D71B26C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v36 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v33 = a2;
  v29 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v32 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 40 * (v8 | (v2 << 6));
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = a2;
    sub_22D72EA20();

    sub_22D72E4E0();
    v35 = v14;
    sub_22D72E4E0();
    v34 = v16;
    MEMORY[0x2318CFBC0](v16);
    v18 = sub_22D72EA40();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_31:

      return 0;
    }

    v21 = ~v19;
    v22 = *(v33 + 48);
    while (1)
    {
      v23 = v22 + 40 * v20;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      v27 = *v23 == v13 && *(v23 + 8) == v12;
      if (!v27 && (sub_22D72E980() & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v24 != v35 || v25 != v15)
      {
        break;
      }

      if (v34 == v26)
      {
        goto LABEL_28;
      }

LABEL_16:
      v20 = (v20 + 1) & v21;
      if (((*(v36 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (sub_22D72E980() & 1) == 0 || ((v34 ^ v26))
    {
      goto LABEL_16;
    }

LABEL_28:

    v3 = v30;
    result = v31;
    v6 = v32;
    a2 = v33;
    v7 = v29;
  }

  while (v32);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D71B4E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22D71DC44(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_22D71B58C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_22D71B68C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_22D72E790();
    v21 = v8;
    sub_22D72E720();
    if (sub_22D72E750())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          a6(v15 + 1);
        }

        v8 = v21;
        result = sub_22D72E6A0();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_22D72E750());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

unint64_t sub_22D71B87C(uint64_t a1, uint64_t a2)
{
  sub_22D72E6A0();
  result = sub_22D72E710();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_22D71B900(uint64_t a1)
{
  v1 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v19 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_12:
      if (*(*(v1 + 48) + 40 * v12 + 32) == 1)
      {
        *&v5[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_22D71C19C(v5, v3, v6, v1);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_22D71C19C(v5, v3, v6, v1);
      }

      v14 = *(v1 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v17 = swift_slowAlloc();
  v18 = sub_22D71B58C(v17, v3, v1, sub_22D71BE6C);

  MEMORY[0x2318D0420](v17, -1, -1);
  return v18;
}

void *sub_22D71BB2C(uint64_t a1)
{
  v1 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v19 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 56);
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
LABEL_12:
      if ((*(*(v1 + 48) + 40 * v12 + 32) & 1) == 0)
      {
        *&v5[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return sub_22D71C19C(v5, v3, v6, v1);
        }
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_22D71C19C(v5, v3, v6, v1);
      }

      v14 = *(v1 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v10 = (v14 - 1) & v14;
        v12 = __clz(__rbit64(v14)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v17 = swift_slowAlloc();
  v18 = sub_22D71B58C(v17, v3, v1, sub_22D71BD54);

  MEMORY[0x2318D0420](v17, -1, -1);
  return v18;
}

unint64_t *sub_22D71BD54(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 40 * v12 + 32) & 1) == 0)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22D71C19C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22D71BE6C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 40 * v12 + 32) == 1)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_22D71C19C(v5, a2, v6, a3);
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D71BFB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22D72E7A0();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_22D72E6A0();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22D71C19C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x277D84FA0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FFD70, &unk_22D730540);
  result = sub_22D72E7A0();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v34 = v4;
  while (v9)
  {
    v12 = v8;
    v13 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v10 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v12;
    sub_22D72EA20();

    v36 = v17;
    sub_22D72E4E0();
    sub_22D72E4E0();
    MEMORY[0x2318CFBC0](v21);
    result = sub_22D72EA40();
    v8 = v22;
    v23 = -1 << *(v22 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v22 + 48) + 40 * v26;
    *v31 = v36;
    *(v31 + 8) = v18;
    *(v31 + 16) = v20;
    *(v31 + 24) = v19;
    *(v31 + 32) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v9 = v35;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  while (1)
  {
    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v10];
    ++v14;
    if (v15)
    {
      v12 = v8;
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22D71C4B4(void *a1, void (*a2)(void), void (*a3)(void), uint64_t (*a4)(uint64_t, id))
{
  v6 = *v4;
  if ((*v4 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = *v4;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = a1;
    v10 = sub_22D72E760();

    if (v10)
    {
      v11 = a4(v8, v9);

      return v11;
    }

    return 0;
  }

  v14 = v4;
  a2(0);
  v15 = sub_22D72E6A0();
  v16 = -1 << *(v6 + 32);
  v17 = v15 & ~v16;
  if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return 0;
  }

  v18 = ~v16;
  while (1)
  {
    v19 = *(*(v6 + 48) + 8 * v17);
    v20 = sub_22D72E6B0();

    if (v20)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v14;
  v24 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v22 = v24;
  }

  v23 = *(*(v22 + 48) + 8 * v17);
  sub_22D71CB70(v17);
  result = v23;
  *v14 = v24;
  return result;
}

void sub_22D71C650(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = *v3;
  sub_22D72EA20();
  sub_22D72E4E0();
  v33 = v7;
  sub_22D72E4E0();
  v32 = v9;
  MEMORY[0x2318CFBC0](v9);
  v11 = sub_22D72EA40();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_21;
  }

  v30 = v3;
  v31 = a2;
  v14 = ~v12;
  v15 = *(v10 + 48);
  while (1)
  {
    v16 = v15 + 40 * v13;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = *(v16 + 32);
    v20 = *v16 == v5 && *(v16 + 8) == v6;
    if (!v20 && (sub_22D72E980() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v17 != v33 || v18 != v8)
    {
      break;
    }

    if (v32 == v19)
    {
      goto LABEL_16;
    }

LABEL_4:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      a2 = v31;
      goto LABEL_21;
    }
  }

  if (sub_22D72E980() & 1) == 0 || ((v32 ^ v19))
  {
    goto LABEL_4;
  }

LABEL_16:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v30;
  v34 = *v30;
  a2 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22D6F2F40();
    v23 = v34;
  }

  v24 = *(v23 + 48) + 40 * v13;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  sub_22D71CD10(v13);
  *v30 = v34;
LABEL_21:
  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  *(a2 + 32) = v29;
}

uint64_t sub_22D71C850(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D72E730();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22D71B68C(v5, v4, &qword_27D9FF548, &unk_22D730550, type metadata accessor for Client, sub_22D6F2278);
  v15 = v6;

  v7 = sub_22D72E6A0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for Client();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D72E6B0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22D71CB70(v9);
  result = sub_22D72E6B0();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D71C9E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D72E730();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22D71B68C(v5, v4, &qword_27D9FF540, &unk_22D731770, _s12AlarmKitCore6ClientCMa_0, sub_22D6F228C);
  v15 = v6;

  v7 = sub_22D72E6A0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s12AlarmKitCore6ClientCMa_0(0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D72E6B0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22D71CB70(v9);
  result = sub_22D72E6B0();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22D71CB70(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22D72E700();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_22D72E6A0();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_22D71CD10(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22D72E700();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v24 = v3;
      v25 = v4;
      do
      {
        v10 = 40 * v6;
        v11 = *(*(v3 + 48) + 40 * v6 + 32);
        v12 = v2;
        v13 = v9;
        sub_22D72EA20();

        sub_22D72E4E0();
        sub_22D72E4E0();
        MEMORY[0x2318CFBC0](v11);
        v14 = sub_22D72EA40();

        v9 = v13;
        v2 = v12;
        v15 = v14 & v7;
        if (v12 >= v9)
        {
          if (v15 < v9)
          {
            v3 = v24;
          }

          else
          {
            v3 = v24;
            if (v12 >= v15)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v3 = v24;
          if (v15 >= v9 || v12 >= v15)
          {
LABEL_12:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v12;
            v18 = (v16 + v10);
            if (40 * v12 < v10 || v17 >= v18 + 40 || v12 != v6)
            {
              v19 = *v18;
              v20 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v19;
              *(v17 + 16) = v20;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        v4 = v25;
      }

      while (((*(v25 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }
}

void sub_22D71CF64(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(a1 + 48) + 40 * (v10 | (v9 << 6));
      v16 = *(v11 + 32);
      v12 = *(v11 + 16);
      v15[0] = *v11;
      v15[1] = v12;
      v17 = v15[0];
      v18 = v12;
      sub_22D71E028(&v17, v13);
      sub_22D71E028(&v18, v13);
      sub_22D71C650(v15, v14);
      sub_22D71E084(v14);
      sub_22D71E0EC(&v17);
      sub_22D71E0EC(&v18);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22D71D0A0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v82 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v61 = 0;
  v10 = a1 + 56;
  v9 = *(a1 + 56);
  v11 = -1 << *(a1 + 32);
  v66 = ~v11;
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (63 - v11) >> 6;
  v76 = (a2 + 56);

  v17 = 0;
  v68 = v10;
  v67 = v14;
  v70 = v8;
  v69 = v15;
  while (1)
  {
    if (v13)
    {
      goto LABEL_13;
    }

    v18 = v17;
    do
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_64;
      }

      if (v19 >= v14)
      {
LABEL_61:
        sub_22D6D3C44(v15);
        return v8;
      }

      v13 = *(v10 + 8 * v19);
      ++v18;
    }

    while (!v13);
    v17 = v19;
LABEL_13:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v71 = v17;
    v21 = *(v15 + 48) + 40 * (v20 | (v17 << 6));
    v5 = *v21;
    v22 = *(v21 + 8);
    v2 = *(v21 + 16);
    v23 = *(v21 + 24);
    v3 = *(v21 + 32);
    sub_22D72EA20();

    sub_22D72E4E0();
    v73 = v2;
    v74 = v23;
    sub_22D72E4E0();
    v72 = v3;
    MEMORY[0x2318CFBC0](v3);
    v24 = sub_22D72EA40();
    v25 = -1 << *(v8 + 32);
    v10 = v24 & ~v25;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if (((1 << v10) & v76[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v8 = v70;
    v15 = v69;
    v10 = v68;
    v17 = v71;
    v14 = v67;
  }

  v75 = ~v25;
  v3 = *(v70 + 48);
  while (1)
  {
    v26 = v3 + 40 * v10;
    v27 = *(v26 + 16);
    v2 = *(v26 + 24);
    v4 = *(v26 + 32);
    v28 = *v26 == v5 && *(v26 + 8) == v22;
    if (!v28 && (sub_22D72E980() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v27 != v73 || v2 != v74)
    {
      break;
    }

    if (v72 == v4)
    {
      goto LABEL_28;
    }

LABEL_16:
    v10 = (v10 + 1) & v75;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if ((v76[v10 >> 6] & (1 << v10)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (sub_22D72E980() & 1) == 0 || ((v72 ^ v4))
  {
    goto LABEL_16;
  }

LABEL_28:
  v5 = v71;
  v79 = v66;
  v80 = v71;
  v81 = v13;
  v4 = v68;
  v2 = v69;
  v78[0] = v69;
  v78[1] = v68;

  v3 = v70;
  v31 = *(v70 + 32);
  v62 = ((1 << v31) + 63) >> 6;
  v16 = 8 * v62;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v63 = &v60;
    MEMORY[0x28223BE20](v30);
    v33 = &v60 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v76, v32);
    v34 = *&v33[8 * v6] & ~v7;
    v65 = v33;
    *&v33[8 * v6] = v34;
    v35 = *(v3 + 16) - 1;
    v36 = v67;
LABEL_30:
    v64 = v35;
LABEL_32:
    while (2)
    {
      if (v13)
      {
        v37 = v70;
LABEL_39:
        v40 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v71 = v5;
        v41 = *(v2 + 48) + 40 * (v40 | (v5 << 6));
        v3 = *v41;
        v42 = *(v41 + 8);
        v44 = *(v41 + 16);
        v43 = *(v41 + 24);
        v45 = *(v41 + 32);
        sub_22D72EA20();

        sub_22D72E4E0();
        v73 = v44;
        v74 = v43;
        sub_22D72E4E0();
        v10 = v77;
        v72 = v45;
        MEMORY[0x2318CFBC0](v45);
        v46 = sub_22D72EA40();
        v47 = -1 << *(v37 + 32);
        v48 = v46 & ~v47;
        v6 = v48 >> 6;
        v49 = 1 << v48;
        if (((1 << v48) & v76[v48 >> 6]) == 0)
        {
LABEL_31:

          v2 = v69;
          v4 = v68;
          v5 = v71;
          v36 = v67;
          continue;
        }

        v75 = ~v47;
        v7 = *(v37 + 48);
        while (1)
        {
          v50 = v7 + 40 * v48;
          v51 = *(v50 + 16);
          v10 = *(v50 + 24);
          v52 = *(v50 + 32);
          v53 = *v50 == v3 && *(v50 + 8) == v42;
          if (v53 || (sub_22D72E980() & 1) != 0)
          {
            if (v51 == v73 && v10 == v74)
            {
              if (v72 == v52)
              {
                goto LABEL_54;
              }
            }

            else if ((sub_22D72E980() & 1) != 0 && ((v72 ^ v52) & 1) == 0)
            {
LABEL_54:

              v55 = v65[v6];
              v65[v6] = v55 & ~v49;
              v28 = (v55 & v49) == 0;
              v2 = v69;
              v4 = v68;
              v5 = v71;
              v36 = v67;
              if (!v28)
              {
                v35 = v64 - 1;
                if (__OFSUB__(v64, 1))
                {
                  __break(1u);
                }

                if (v64 == 1)
                {

                  v8 = MEMORY[0x277D84FA0];
                  goto LABEL_60;
                }

                goto LABEL_30;
              }

              goto LABEL_32;
            }
          }

          v48 = (v48 + 1) & v75;
          v6 = v48 >> 6;
          v49 = 1 << v48;
          if ((v76[v48 >> 6] & (1 << v48)) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      break;
    }

    v38 = v5;
    v37 = v70;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        v8 = sub_22D71C19C(v65, v62, v64, v70);
        goto LABEL_60;
      }

      v13 = *(v4 + 8 * v39);
      ++v38;
      if (v13)
      {
        v5 = v39;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v57 = v16;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v76, v57);
  v59 = v61;
  v8 = sub_22D71D7E0(v58, v62, v3, v10, v78);

  if (!v59)
  {

    MEMORY[0x2318D0420](v58, -1, -1);
    v2 = v78[0];
    v66 = v79;
LABEL_60:
    v15 = v2;
    goto LABEL_61;
  }

  result = MEMORY[0x2318D0420](v58, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_22D71D7E0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v35 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v42 = a3 + 56;
  v36 = a5;
LABEL_2:
  v34 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 40 * (__clz(__rbit64(v9)) | (v10 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = *(v13 + 32);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_22D72EA20();

      sub_22D72E4E0();
      v39 = v17;
      v40 = v16;
      sub_22D72E4E0();
      v38 = v18;
      MEMORY[0x2318CFBC0](v18);
      v19 = sub_22D72EA40();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v42 + 8 * (v21 >> 6))) == 0)
      {
LABEL_3:

        a5 = v36;
        v5 = a3;
        continue;
      }

      v41 = ~v20;
      v24 = *(v5 + 48);
      while (1)
      {
        v25 = v24 + 40 * v21;
        v26 = *(v25 + 16);
        v27 = *(v25 + 24);
        v28 = *(v25 + 32);
        v29 = *v25 == v14 && *(v25 + 8) == v15;
        if (v29 || (sub_22D72E980() & 1) != 0)
        {
          if (v26 == v39 && v27 == v40)
          {
            if (v38 == v28)
            {
              goto LABEL_25;
            }
          }

          else if ((sub_22D72E980() & 1) != 0 && ((v38 ^ v28) & 1) == 0)
          {
LABEL_25:

            a5 = v36;
            v31 = v35[v22];
            v35[v22] = v31 & ~v23;
            v5 = a3;
            if ((v31 & v23) != 0)
            {
              v7 = v34 - 1;
              if (__OFSUB__(v34, 1))
              {
LABEL_34:
                __break(1u);
                return result;
              }

              if (v34 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        v21 = (v21 + 1) & v41;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v42 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v32 = v8 + 1;
  }

  else
  {
    v32 = (a5[2] + 64) >> 6;
  }

  a5[3] = v32 - 1;
  a5[4] = 0;

  return sub_22D71C19C(v35, a2, v34, v5);
}

void *sub_22D71DA9C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22D71DAE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_22D6F59F4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

unint64_t sub_22D71DB88()
{
  result = qword_281457168;
  if (!qword_281457168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281457168);
  }

  return result;
}

void *sub_22D71DC00@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_22D71DC44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(a3 + 48) + 40 * v18;
    result = *(v19 + 16);
    if (result != a4 || *(v19 + 24) != a5)
    {
      result = sub_22D72E980();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22D71C19C(v23, a2, v8, a3);
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D71DD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v25 = swift_slowAlloc();

      v23 = sub_22D71B4E8(v25, v10, a1, a2, a3);

      MEMORY[0x2318D0420](v25, -1, -1);

      return v23;
    }
  }

  v27 = v10;
  v28 = v4;
  v26[1] = v26;
  MEMORY[0x28223BE20](v12);
  v13 = v26 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v13, v11);
  v14 = 0;
  v4 = 0;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v10 = v16 & *(a1 + 56);
  v17 = (v15 + 63) >> 6;
  while (2)
  {
    v29 = v14;
    do
    {
      if (!v10)
      {
        v19 = v4;
        while (1)
        {
          v4 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v4 >= v17)
          {
            goto LABEL_21;
          }

          v20 = *(a1 + 56 + 8 * v4);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v10 = (v20 - 1) & v20;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v11 = v18 | (v4 << 6);
      v21 = *(a1 + 48) + 40 * v11;
      v22 = *(v21 + 16) == a2 && *(v21 + 24) == a3;
    }

    while (!v22 && (sub_22D72E980() & 1) == 0);
    *&v13[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
    v14 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v23 = sub_22D71C19C(v13, v27, v29, a1);

  return v23;
}

uint64_t sub_22D71E084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDA0, &qword_22D731758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22D71E154()
{
  result = qword_27D9FFDB0;
  if (!qword_27D9FFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9FFDB0);
  }

  return result;
}

BOOL sub_22D71E1F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_22D7244E4(a4, a5, a6);
  }

  while ((sub_22D72E400() & 1) == 0);
  return v10 != v11;
}

uint64_t Daemon.DaemonError.hashValue.getter()
{
  v1 = *v0;
  sub_22D72EA20();
  MEMORY[0x2318CFBC0](v1);
  return sub_22D72EA40();
}

uint64_t sub_22D71E484(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22D71E4E4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_22D71E57C;
}

void sub_22D71E57C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_22D71E7C4(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
    sub_22D72E600();
  }

  else
  {
    v3 = sub_22D72D730();
    v4 = *(*(v3 - 8) + 56);

    v4(a1, 1, 1, v3);
  }
}

id Daemon.__allocating_init(workloop:standaloneMode:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return Daemon.init(workloop:standaloneMode:)(a1, v3);
}

id Daemon.init(workloop:standaloneMode:)(uint64_t a1, int a2)
{
  v22 = a2;
  v23 = a1;
  v24 = sub_22D72E5F0();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72E5D0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22D72E370();
  MEMORY[0x28223BE20](v7 - 8);
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationManager] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationServer] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmServer] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager] = 0;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer] = 0;
  v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue_isStarted] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_subscriptions] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_sigtermSource] = 0;
  v21 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue;
  v8 = sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  v19 = "lock_restrictions";
  v20 = v8;
  sub_22D72E350();
  v26 = MEMORY[0x277D84F90];
  v18 = sub_22D7244E4(&qword_281457190, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF740, &unk_22D730C60);
  sub_22D6D58D4(&qword_2814571B0, &qword_27D9FF740, &unk_22D730C60, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  v9 = *MEMORY[0x277D85268];
  v10 = v3 + 104;
  v11 = *(v3 + 104);
  v15 = v5;
  v16 = v10;
  v11(v5, v9, v24);
  *&v2[v21] = sub_22D72E620();
  v21 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue;
  sub_22D72E350();
  v26 = MEMORY[0x277D84F90];
  sub_22D72E6E0();
  v11(v15, v9, v24);
  *&v2[v21] = sub_22D72E620();
  v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_standaloneMode] = v22;
  *&v2[OBJC_IVAR____TtC12AlarmKitCore6Daemon_workloop] = v23;
  v12 = type metadata accessor for Daemon();
  v25.receiver = v2;
  v25.super_class = v12;
  return objc_msgSendSuper2(&v25, sel_init);
}

void sub_22D71ED88()
{
  v1 = v0;
  v2 = sub_22D72E300();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D72E370();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_15;
  }

  v9 = swift_unknownObjectRelease();
  v10 = *&v0[OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue];
  MEMORY[0x28223BE20](v9);
  sub_22D72E600();
  if (aBlock)
  {
    return;
  }

  v11 = sub_22D71FAA0();
  v12 = *&v0[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer];
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC12AlarmKitCore18StateCaptureServer_listener);
    if (v13)
    {
      [v13 activate];
      goto LABEL_6;
    }

    __break(1u);
LABEL_15:
    sub_22D72E860();
    __break(1u);
    return;
  }

LABEL_6:
  v39 = v6;
  v40 = v3;
  v41 = v2;
  if (v0[OBJC_IVAR____TtC12AlarmKitCore6Daemon_standaloneMode] == 1)
  {
    v48 = nullsub_1;
    v49 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_22D727328;
    v47 = &block_descriptor_21;
    v14 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v10, v14);
    _Block_release(v14);
    sub_22D71F4AC();
  }

  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  dispatch_group_enter(v15);
  v16 = *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationManager];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v15;
    v18 = __swift_project_boxed_opaque_existential_1((v16 + 48), *(v16 + 72));
    v19 = swift_allocObject();
    v38 = v5;
    v20 = v19;
    v19[2] = v16;
    v19[3] = sub_22D720358;
    v19[4] = v17;
    v21 = *v18;
    __swift_project_boxed_opaque_existential_1((*v18 + 16), *(*v18 + 40));
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_22D720390;
    v22[4] = v20;
    swift_retain_n();
    v23 = v1;
    v24 = v15;

    sub_22D7237B0(sub_22D72039C, v22);

    v5 = v38;
  }

  v25 = *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager];
  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    *(v26 + 24) = v15;
    v27 = __swift_project_boxed_opaque_existential_1((v25 + 176), *(v25 + 200));
    v28 = v5;
    v29 = swift_allocObject();
    v29[2] = v25;
    v29[3] = sub_22D723B70;
    v29[4] = v26;
    v30 = *v27;
    __swift_project_boxed_opaque_existential_1((v30 + 16), *(v30 + 40));
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = sub_22D723BA8;
    v31[4] = v29;
    swift_retain_n();
    v32 = v1;
    v33 = v15;

    sub_22D723FF4(sub_22D723BF4, v31);

    v5 = v28;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v1;
  v48 = sub_22D7244C4;
  v49 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_22D6C0FD8;
  v47 = &block_descriptor_11;
  v35 = _Block_copy(&aBlock);
  v36 = v1;
  sub_22D72E330();
  v43 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  v37 = v41;
  sub_22D72E6E0();
  sub_22D72E5C0();
  _Block_release(v35);

  (*(v40 + 8))(v5, v37);
  (*(v42 + 8))(v8, v39);
}

void sub_22D71F48C(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue_isStarted);
  *(v2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_queue_isStarted) = 1;
  *a1 = v3;
}

void sub_22D71F4AC()
{
  v1 = v0;
  v20 = sub_22D72E300();
  v2 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D72E370();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D72E310();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D72DBF0();
  signal(15, v12);
  sub_22D6FCE80(0, &qword_281457170, 0x277D85C78);
  (*(v9 + 104))(v11, *MEMORY[0x277D851C8], v8);
  v13 = sub_22D72E630();
  (*(v9 + 8))(v11, v8);
  sub_22D6FCE80(0, &unk_27D9FF730, 0x277D85CA0);
  v14 = v13;
  v15 = sub_22D72E640();

  v16 = OBJC_IVAR____TtC12AlarmKitCore6Daemon_sigtermSource;
  *(v1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_sigtermSource) = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  aBlock[4] = j__xpc_transaction_exit_clean;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = &block_descriptor_177;
  v18 = _Block_copy(aBlock);
  sub_22D6FCC1C(ObjectType);
  sub_22D6FCC20();
  sub_22D72E650();
  _Block_release(v18);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v4, v20);
  (*(v5 + 8))(v7, v19);
  if (*(v1 + v16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22D72E680();
    swift_unknownObjectRelease();
  }
}

void sub_22D71F83C(uint64_t a1, dispatch_group_t group, void *a3, void (*a4)(void))
{
  v5 = *(a1 + *a3);
  if (v5)
  {
    v7 = v5;
    a4();
  }

  dispatch_group_leave(group);
}

double sub_22D71F89C(uint64_t a1)
{
  v2 = sub_22D72E1D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager))
  {

    sub_22D6BA8D4();
    sub_22D6BAEF8();
  }

  v6 = *(a1 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace];
    v8 = v6;
    [v7 addObserver_];
    sub_22D71A1A0();
  }

  v9 = objc_opt_self();
  sub_22D72E1B0();
  sub_22D72E1C0();
  (*(v3 + 8))(v5, v2);
  v10 = sub_22D72E480();

  v11 = [v9 activateManualDomain_];
  swift_unknownObjectRelease();

  sub_22D72E1A0();
  v12 = sub_22D72E4D0();

  notify_post((v12 + 32));

  return result;
}

double sub_22D71FAA0()
{
  v1 = v0;
  type metadata accessor for MobileKeybagFirstLockStateProvider();
  swift_allocObject();
  v79 = sub_22D6FA19C();
  v2 = objc_allocWithZone(type metadata accessor for AppEventObserver());

  v3 = [v2 init];
  v4 = *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver];
  *&v1[OBJC_IVAR____TtC12AlarmKitCore6Daemon_appEventObserver] = v3;
  v5 = v3;

  v6 = type metadata accessor for Daemon();
  *(&v82 + 1) = v6;
  v83 = &off_2840CDD48;
  *&v81 = v1;
  type metadata accessor for AuthorizationPersistentStore();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(&v81, v6);
  v9 = *(v6 - 8);
  v74[1] = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v74 - v75);
  v74[0] = *(v9 + 16);
  (v74[0])(v74 - v75);
  v12 = *v11;
  v13 = v1;
  v78 = sub_22D72A164(v12, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  v14 = v5;

  v16 = sub_22D72B168(v15, v14);
  *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationManager] = v16;

  v17 = *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_workloop];
  *(&v82 + 1) = type metadata accessor for AuthorizationManager();
  v83 = &off_2840CCBF0;
  *&v81 = v16;
  v18 = objc_allocWithZone(type metadata accessor for AuthorizationServer());
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  MEMORY[0x28223BE20](v19);
  v21 = (v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v24 = v17;

  v25 = v24;
  v26 = v17;
  sub_22D72ACF0(v23, v17, v18);
  v28 = v27;
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  v29 = *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationServer];
  *&v13[OBJC_IVAR____TtC12AlarmKitCore6Daemon_authorizationServer] = v28;
  v77 = v28;

  *(&v82 + 1) = v6;
  v83 = &off_2840CDD70;
  *&v81 = v13;
  v30 = type metadata accessor for AlarmPersistentStore();
  v31 = swift_allocObject();
  v76 = v6;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v81, v6);
  MEMORY[0x28223BE20](v32);
  v33 = (v74 - v75);
  (v74[0])(v74 - v75);
  v34 = *v33;
  v35 = v13;
  v36 = sub_22D729E9C(v34, v31);
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v80[3] = v30;
  v80[4] = &off_2840CCE58;
  v80[0] = v36;
  type metadata accessor for ActivityManager();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v80, v30);
  MEMORY[0x28223BE20](v38);
  v40 = (v74 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;

  v43 = sub_22D72BA04(v79, v42, &v81, 0, 1, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  *&v35[OBJC_IVAR____TtC12AlarmKitCore6Daemon_activityManager] = v43;
  swift_retain_n();

  v44 = v14;
  v75 = v44;

  v45 = sub_22D72B33C(v43, v44, v16, v36);
  *&v35[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmManager] = v45;

  *(&v82 + 1) = type metadata accessor for AlarmManager(0);
  v83 = &off_2840CC640;
  *&v81 = v45;
  v46 = objc_allocWithZone(type metadata accessor for AlarmServer());
  v47 = __swift_mutable_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  MEMORY[0x28223BE20](v47);
  v49 = (v74 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v49;

  v52 = v26;
  sub_22D72A85C(v51, v26, v46);
  v54 = v53;
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  v55 = *&v35[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmServer];
  *&v35[OBJC_IVAR____TtC12AlarmKitCore6Daemon_alarmServer] = v54;

  v56 = type metadata accessor for StateCaptureService();
  swift_allocObject();
  v57 = sub_22D701B44();
  *(&v82 + 1) = v56;
  v83 = &off_2840CD308;
  *&v81 = v57;
  v58 = objc_allocWithZone(type metadata accessor for StateCaptureServer());
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  MEMORY[0x28223BE20](v59);
  v61 = (v74 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = *v61;

  sub_22D72A42C(v63, v52, v58);
  v65 = v64;
  __swift_destroy_boxed_opaque_existential_1Tm(&v81);
  v66 = *&v35[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer];
  *&v35[OBJC_IVAR____TtC12AlarmKitCore6Daemon_stateCaptureServer] = v65;

  sub_22D72B698(v67);

  sub_22D72B7BC(v68);

  sub_22D72B8E0(v69);

  v70 = v76;
  *(&v82 + 1) = v76;
  v83 = &off_2840CDD20;
  *&v81 = v35;
  swift_beginAccess();
  v71 = v35;
  sub_22D718B78(&v81, v43 + 16, &unk_27D9FFEA0, &qword_22D730138);
  swift_endAccess();
  *(&v82 + 1) = v70;
  v83 = &off_2840CDD38;
  v72 = v71;

  *&v81 = v72;

  swift_beginAccess();
  sub_22D718B78(&v81, v45 + 16, &qword_27D9FF500, &qword_22D730530);
  swift_endAccess();

  return result;
}

id Daemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Daemon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Daemon();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22D72056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v257 = a3;
  v250 = a1;
  v7 = sub_22D72E300();
  v255 = *(v7 - 8);
  v256 = v7;
  MEMORY[0x28223BE20](v7);
  v252 = v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D72E370();
  v253 = *(v9 - 8);
  v254 = v9;
  MEMORY[0x28223BE20](v9);
  v251 = v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_22D72D730();
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v237 = v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_22D72D7A0();
  v239 = *(v248 - 8);
  v12 = MEMORY[0x28223BE20](v248);
  v235 = v205 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v236 = v205 - v14;
  v247 = type metadata accessor for Alarm(0);
  v15 = MEMORY[0x28223BE20](v247);
  v249 = v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v220 = v205 - v18;
  MEMORY[0x28223BE20](v17);
  v224 = v205 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFE60, &qword_22D730570);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v210 = v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v218 = v205 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF4B0, &unk_22D7301A0);
  MEMORY[0x28223BE20](v24 - 8);
  v232 = v205 - v25;
  v238 = sub_22D72E0D0();
  v231 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v230 = v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_22D72DE40();
  v245 = *(v243 - 8);
  v27 = MEMORY[0x28223BE20](v243);
  v219 = v205 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v223 = v205 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v215 = v205 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v229 = v205 - v34;
  MEMORY[0x28223BE20](v33);
  v227 = v205 - v35;
  v244 = sub_22D72DEA0();
  v246 = *(v244 - 8);
  v36 = MEMORY[0x28223BE20](v244);
  v217 = v205 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v222 = v205 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v214 = v205 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v228 = v205 - v43;
  MEMORY[0x28223BE20](v42);
  v225 = v205 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF570, &qword_22D730578);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v216 = v205 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v221 = v205 - v49;
  MEMORY[0x28223BE20](v48);
  v226 = v205 - v50;
  v51 = sub_22D72D7D0();
  MEMORY[0x28223BE20](v51 - 8);
  v52 = sub_22D72E470();
  MEMORY[0x28223BE20](v52 - 8);
  v213 = sub_22D72D5F0();
  v212 = *(v213 - 8);
  v53 = MEMORY[0x28223BE20](v213);
  v55 = v205 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v53);
  v211 = v205 - v57;
  MEMORY[0x28223BE20](v56);
  v59 = v205 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FF578, &unk_22D730580);
  v240 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v62 = v205 - v61;
  swift_beginAccess();
  v258 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v241 = Strong;
    v242 = a4;
    sub_22D72D570();
    swift_allocObject();
    v64 = sub_22D72D560();
    v66 = *(a2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData);
    v65 = *(a2 + OBJC_IVAR____TtCV12AlarmKitCore5Alarm12ActivityData_attributesData + 8);
    sub_22D6D3F68(v66, v65);
    sub_22D6D58D4(&unk_27D9FF580, &qword_27D9FF578, &unk_22D730580, MEMORY[0x277CB99A8]);
    sub_22D72D550();
    v207 = v64;
    v208 = v62;
    v209 = v60;
    sub_22D6D5664(v66, v65);
    v76 = v250;
    sub_22D72DB90();
    v77 = sub_22D72E4B0();
    v79 = v78;
    v80 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v80 = v77 & 0xFFFFFFFFFFFFLL;
    }

    if (v80)
    {
      v206 = v77;
    }

    else
    {

      sub_22D72E410();
      sub_22D72D7C0();
      v206 = sub_22D72E4A0();
      v79 = v81;
    }

    sub_22D72DDF0();
    v255 = sub_22D72DCC0();
    v256 = v82;

    v83 = v225;
    sub_22D72DDE0();
    v84 = v227;
    sub_22D72DE50();
    v85 = *(v246 + 8);
    v246 += 8;
    v253 = v85;
    v85(v83, v244);
    v86 = v226;
    sub_22D72DE10();
    v87 = *(v245 + 8);
    v245 += 8;
    v254 = v87;
    v87(v84, v243);
    v88 = v231;
    v89 = *(v231 + 48);
    v90 = v238;
    v249 = (v231 + 48);
    v227 = v89;
    v91 = (v89)(v86, 1, v238);
    v205[1] = v79;
    if (v91 == 1)
    {
      sub_22D6D5984(v86, &qword_27D9FF570, &qword_22D730578);
      v226 = 0;
      v252 = 0;
    }

    else
    {
      sub_22D72E0C0();
      (*(v88 + 8))(v86, v90);
      v92 = v212;
      v93 = v211;
      v94 = v213;
      (*(v212 + 32))(v211, v55, v213);
      (*(v92 + 16))(v59, v93, v94);
      v226 = sub_22D72E4B0();
      v252 = v95;
      (*(v92 + 8))(v93, v94);
    }

    v96 = v228;
    sub_22D72DDE0();
    v97 = v229;
    sub_22D72DE50();
    (v253)(v96, v244);
    v98 = v230;
    sub_22D72DE00();
    v99 = v97;
    v100 = v243;
    v254(v99, v243);
    sub_22D72E0C0();
    (*(v88 + 8))(v98, v90);
    v251 = sub_22D72E4B0();
    v102 = v101;
    v103 = v232;
    sub_22D6D5A4C(v76 + v247[8], v232, &qword_27D9FF4B0, &unk_22D7301A0);
    v104 = sub_22D72DDB0();
    v105 = (*(*(v104 - 8) + 48))(v103, 1, v104);
    sub_22D6D5984(v103, &qword_27D9FF4B0, &unk_22D7301A0);
    if (v105 == 1)
    {
      if (qword_27D9FF130 != -1)
      {
        swift_once();
      }

      v106 = sub_22D72DBE0();
      __swift_project_value_buffer(v106, qword_27DA01718);
      v107 = v220;
      sub_22D6F37E4(v76, v220);
      v108 = sub_22D72DBB0();
      v109 = sub_22D72E5A0();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        aBlock = v111;
        *v110 = 136446210;
        sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v112 = v248;
        v113 = sub_22D72E960();
        v114 = v107;
        v115 = v113;
        v117 = v116;
        sub_22D6F3848(v114);
        v118 = sub_22D72891C(v115, v117, &aBlock);

        *(v110 + 4) = v118;
        _os_log_impl(&dword_22D6B4000, v108, v109, "%{public}s: Requesting timer alert", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        MEMORY[0x2318D0420](v111, -1, -1);
        MEMORY[0x2318D0420](v110, -1, -1);
      }

      else
      {

        sub_22D6F3848(v107);
        v112 = v248;
      }

      v119 = v243;
      v126 = v250;
      (*(v239 + 16))(v235, v250, v112);
      v127 = v217;
      sub_22D72DDE0();
      v128 = v219;
      sub_22D72DE50();
      (v253)(v127, v244);
      v129 = v216;
      sub_22D72DE10();
      v254(v128, v119);
      v130 = (v227)(v129, 1, v238);
      sub_22D6D5984(v129, &qword_27D9FF570, &qword_22D730578);
      v131 = (v126 + v247[6]);
      v132 = *v131;
      v133 = v131[1];
      v134 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v137 = sub_22D72868C(v132, v133, 0);
      v138 = [v137 localizedName];
      v250 = sub_22D72E490();
      v254 = v139;

      v140 = v252;
      sub_22D6D3F68(v255, v256);
      v253 = sub_22D72D770();
      v141 = sub_22D72E480();

      if (v140)
      {
        v142 = sub_22D72E480();
      }

      else
      {
        v142 = 0;
      }

      v143 = v130 != 1;
      v144 = objc_allocWithZone(MEMORY[0x277CEA590]);
      v145 = sub_22D72E480();

      v146 = sub_22D72E480();
      v147 = sub_22D72D640();
      v148 = sub_22D72E480();
      v149 = sub_22D72E480();

      v150 = v253;
      v151 = [v144 initWithIdentifier:v253 displayTitle:v141 hasSecondaryAction:v143 secondaryButtonLabel:v142 stopButtonLabel:v145 actionUrlScheme:v146 tintColor:v147 bundleID:v148 localizedAppName:v149];

      v152 = v255;
      v153 = v256;
      sub_22D6D5664(v255, v256);
      (*(v239 + 8))(v235, v248);
      v154 = swift_allocObject();
      v155 = v257;
      v156 = v258;
      v154[2] = v258;
      v154[3] = v155;
      v154[4] = v242;
      v264 = sub_22D728D58;
      v265 = v154;
      aBlock = MEMORY[0x277D85DD0];
      v261 = 1107296256;
      v262 = sub_22D7227BC;
      v263 = &block_descriptor_116;
      v157 = _Block_copy(&aBlock);
      v158 = v156;

      [v241 requestTimerNotification:v151 completion:v157];

      _Block_release(v157);
      swift_unknownObjectRelease();

      v159 = v152;
    }

    else
    {
      v235 = v102;
      v120 = v214;
      sub_22D72DDE0();
      v121 = v215;
      sub_22D72DE50();
      (v253)(v120, v244);
      v122 = v218;
      sub_22D72DE30();
      v254(v121, v100);
      v123 = sub_22D72DE20();
      v124 = *(v123 - 8);
      if ((*(v124 + 48))(v122, 1, v123) == 1)
      {
        LODWORD(v232) = 0;
        v125 = v244;
      }

      else
      {
        v135 = v210;
        sub_22D6D5A4C(v122, v210, &qword_27D9FFE60, &qword_22D730570);
        v136 = (*(v124 + 88))(v135, v123);
        v125 = v244;
        if (v136 == *MEMORY[0x277CB99B8])
        {
          LODWORD(v232) = 1;
        }

        else
        {
          if (v136 != *MEMORY[0x277CB99B0])
          {
            (*(v124 + 8))(v135, v123);
          }

          LODWORD(v232) = 0;
        }
      }

      sub_22D6D5984(v122, &qword_27D9FFE60, &qword_22D730570);
      v160 = v224;
      if (qword_27D9FF130 != -1)
      {
        swift_once();
      }

      v161 = sub_22D72DBE0();
      __swift_project_value_buffer(v161, qword_27DA01718);
      sub_22D6F37E4(v76, v160);
      v162 = sub_22D72DBB0();
      v163 = sub_22D72E5A0();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        aBlock = v165;
        *v164 = 136446210;
        sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v166 = v248;
        v167 = sub_22D72E960();
        v168 = v160;
        v169 = v167;
        v171 = v170;
        sub_22D6F3848(v168);
        v172 = sub_22D72891C(v169, v171, &aBlock);

        *(v164 + 4) = v172;
        _os_log_impl(&dword_22D6B4000, v162, v163, "%{public}s: Requesting alarm alert", v164, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v165);
        MEMORY[0x2318D0420](v165, -1, -1);
        MEMORY[0x2318D0420](v164, -1, -1);
      }

      else
      {

        sub_22D6F3848(v160);
        v166 = v248;
      }

      v173 = v250;
      (*(v239 + 16))(v236, v250, v166);
      v174 = v247;
      (*(v233 + 16))(v237, v173 + v247[14], v234);
      v175 = v222;
      sub_22D72DDE0();
      v176 = v223;
      sub_22D72DE50();
      (v253)(v175, v125);
      v177 = v221;
      sub_22D72DE10();
      v254(v176, v243);
      v178 = (v227)(v177, 1, v238);
      sub_22D6D5984(v177, &qword_27D9FF570, &qword_22D730578);
      v179 = (v173 + v174[6]);
      v180 = *v179;
      v181 = v179[1];
      v182 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v183 = sub_22D72868C(v180, v181, 0);
      v254 = v180;
      v184 = v183;
      v185 = [v183 localizedName];
      v249 = sub_22D72E490();

      sub_22D6D3F68(v255, v256);
      v253 = sub_22D72D770();
      v250 = sub_22D72D6B0();
      v186 = sub_22D72E480();

      if (v252)
      {
        v187 = sub_22D72E480();
      }

      else
      {
        v187 = 0;
      }

      v188 = v178 != 1;
      v189 = objc_allocWithZone(MEMORY[0x277CEA578]);
      v190 = sub_22D72E480();

      v191 = sub_22D72E480();
      v192 = sub_22D72D640();
      v193 = sub_22D72E480();
      v194 = sub_22D72E480();

      v195 = v189;
      v196 = v253;
      v197 = v250;
      v198 = [v195 initWithIdentifier:v253 scheduledFireDate:v250 allowsSnooze:v232 displayTitle:v186 hasSecondaryAction:v188 secondaryButtonLabel:v187 stopButtonLabel:v190 actionUrlScheme:v191 tintColor:v192 bundleID:v193 localizedAppName:v194];

      v199 = v255;
      v153 = v256;
      sub_22D6D5664(v255, v256);
      (*(v233 + 8))(v237, v234);
      (*(v239 + 8))(v236, v248);
      v200 = swift_allocObject();
      v201 = v257;
      v202 = v258;
      v200[2] = v258;
      v200[3] = v201;
      v200[4] = v242;
      v264 = sub_22D728D9C;
      v265 = v200;
      aBlock = MEMORY[0x277D85DD0];
      v261 = 1107296256;
      v262 = sub_22D7227BC;
      v263 = &block_descriptor_122;
      v203 = _Block_copy(&aBlock);
      v204 = v202;

      [v241 requestAlarmNotification:v198 completion:v203];
      _Block_release(v203);
      swift_unknownObjectRelease();

      v159 = v199;
    }

    sub_22D6D5664(v159, v153);
    (*(v240 + 8))(v208, v209);
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v67 = sub_22D72DBE0();
    __swift_project_value_buffer(v67, qword_27DA01718);
    v68 = sub_22D72DBB0();
    v69 = sub_22D72E580();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_22D6B4000, v68, v69, "Cannot request alert: daemon has no delegate", v70, 2u);
      MEMORY[0x2318D0420](v70, -1, -1);
    }

    v71 = swift_allocObject();
    *(v71 + 16) = v257;
    *(v71 + 24) = a4;
    v264 = sub_22D72CB1C;
    v265 = v71;
    aBlock = MEMORY[0x277D85DD0];
    v261 = 1107296256;
    v262 = sub_22D6C0FD8;
    v263 = &block_descriptor_104;
    v72 = _Block_copy(&aBlock);

    v73 = v251;
    sub_22D72E330();
    v259 = MEMORY[0x277D84F90];
    sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
    sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
    v74 = v252;
    v75 = v256;
    sub_22D72E6E0();
    MEMORY[0x2318CF7A0](0, v73, v74, v72);
    _Block_release(v72);
    (*(v255 + 8))(v74, v75);
    (*(v253 + 8))(v73, v254);
  }
}

double sub_22D7227BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_22D722810(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v11 = sub_22D72E300();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22D72E370();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + OBJC_IVAR____TtC12AlarmKitCore6Daemon_calloutQueue);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a1;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D6C0FD8;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);

  sub_22D72E330();
  v26 = MEMORY[0x277D84F90];
  sub_22D7244E4(&qword_2814571D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9FF520, &qword_22D730150);
  sub_22D6D58D4(&qword_2814571C0, &unk_27D9FF520, &qword_22D730150, MEMORY[0x277D83970]);
  sub_22D72E6E0();
  MEMORY[0x2318CF7A0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v25);

  return result;
}

void sub_22D722AEC(uint64_t a1)
{
  v2 = sub_22D72D7A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v11 = sub_22D72DBE0();
    __swift_project_value_buffer(v11, qword_27DA01718);
    (*(v3 + 16))(v8, a1, v2);
    v12 = sub_22D72DBB0();
    v13 = sub_22D72E5A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v31[1] = a1;
      v15 = v14;
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_22D72E960();
      v19 = v18;
      (*(v3 + 8))(v8, v2);
      v20 = sub_22D72891C(v17, v19, &v32);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_22D6B4000, v12, v13, "%{public}s: Dismissing alert", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2318D0420](v16, -1, -1);
      MEMORY[0x2318D0420](v15, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v30 = sub_22D72D770();
    [v10 dismissNotificationWithIdentifier_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27D9FF130 != -1)
    {
      swift_once();
    }

    v21 = sub_22D72DBE0();
    __swift_project_value_buffer(v21, qword_27DA01718);
    (*(v3 + 16))(v6, a1, v2);
    v22 = sub_22D72DBB0();
    v23 = sub_22D72E580();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136446210;
      sub_22D7244E4(&qword_27D9FF298, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_22D72E960();
      v28 = v27;
      (*(v3 + 8))(v6, v2);
      v29 = sub_22D72891C(v26, v28, &v32);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_22D6B4000, v22, v23, "%{public}s: Cannot dismiss alert: daemon has no delegate", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318D0420](v25, -1, -1);
      MEMORY[0x2318D0420](v24, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t sub_22D722F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v91 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9FFDD0, &qword_22D730140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v69 - v5;
  v7 = sub_22D72DD70();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v87 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v69 - v10;
  v11 = sub_22D72D7B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D72DD30();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v54 = sub_22D72D730();
    return (*(*(v54 - 8) + 56))(v91, 1, 1, v54);
  }

  v85 = Strong;
  sub_22D72DD90();
  v20 = (*(v16 + 88))(v18, v15);
  v21 = *MEMORY[0x277CB9958];
  v22 = a1;
  if (v20 == *MEMORY[0x277CB9958])
  {
    v23 = *(v16 + 96);
    v76 = *MEMORY[0x277CB9958];
    v77 = v20;
    v23(v18, v15);
    v24 = *v18;
    v25 = *MEMORY[0x277CC96E0];
    v26 = v12;
    v27 = *(v12 + 104);
    v83 = v12 + 104;
    v27(v14, v25, v11);
    v82 = v27;
    v28 = MEMORY[0x277CC9708];
    v29 = MEMORY[0x277CC9708];
    v78 = v22;
    v30 = MEMORY[0x277CC9718];
    v84 = MEMORY[0x277CC9708];
    v69 = MEMORY[0x277CC9718];
    v75 = sub_22D71E1F4(v14, v24, MEMORY[0x277CC9708], &qword_27D9FFE68, MEMORY[0x277CC9708], MEMORY[0x277CC9718]);
    v79 = v6;
    v33 = *(v26 + 8);
    v31 = v26 + 8;
    v32 = v33;
    v33(v14, v11);
    v27(v14, *MEMORY[0x277CC96D8], v11);
    LOBYTE(v27) = sub_22D71E1F4(v14, v24, v28, &qword_27D9FFE68, v29, v30);
    v33(v14, v11);
    v34 = 2;
    if ((v27 & 1) == 0)
    {
      v34 = 0;
    }

    v74 = v34;
    v35 = v82;
    v82(v14, *MEMORY[0x277CC96E8], v11);
    v80 = v31;
    v81 = v29;
    v36 = v69;
    v37 = sub_22D71E1F4(v14, v24, v84, &qword_27D9FFE68, v29, v69);
    v32(v14, v11);
    v38 = 4;
    if (!v37)
    {
      v38 = 0;
    }

    v73 = v38;
    v35(v14, *MEMORY[0x277CC9700], v11);
    v39 = v24;
    v40 = v84;
    v41 = sub_22D71E1F4(v14, v24, v84, &qword_27D9FFE68, v29, v36);
    v32(v14, v11);
    v42 = 8;
    if (!v41)
    {
      v42 = 0;
    }

    v72 = v42;
    v43 = v82;
    v82(v14, *MEMORY[0x277CC96F8], v11);
    v44 = v40;
    v45 = v81;
    v46 = sub_22D71E1F4(v14, v24, v44, &qword_27D9FFE68, v81, v36);
    v32(v14, v11);
    v47 = 16;
    if (!v46)
    {
      v47 = 0;
    }

    v71 = v47;
    v43(v14, *MEMORY[0x277CC96D0], v11);
    v48 = v84;
    v49 = sub_22D71E1F4(v14, v39, v84, &qword_27D9FFE68, v45, v36);
    v32(v14, v11);
    v50 = 32;
    if (!v49)
    {
      v50 = 0;
    }

    v70 = v50;
    v43(v14, *MEMORY[0x277CC96F0], v11);
    v51 = sub_22D71E1F4(v14, v39, v48, &qword_27D9FFE68, v81, v36);

    v32(v14, v11);
    v6 = v79;
    v52 = 64;
    if (!v51)
    {
      v52 = 0;
    }

    v53 = v74 & 0xFFFFFFFFFFFFFFFELL | v75 | v73 | v72 | v71 | v70 | v52;
    v21 = v76;
    v20 = v77;
  }

  else
  {
    if (v20 != *MEMORY[0x277CB9950])
    {
      result = sub_22D72E970();
      __break(1u);
      return result;
    }

    v53 = 127;
  }

  v56 = v20 == v21;
  v57 = v86;
  sub_22D72DD80();
  v58 = sub_22D72DD50();
  v59 = *(v88 + 8);
  v60 = v57;
  v61 = v89;
  v59(v60, v89);
  v62 = v87;
  sub_22D72DD80();
  v63 = sub_22D72DD60();
  v59(v62, v61);
  v64 = [objc_allocWithZone(MEMORY[0x277CEA580]) initWithDays:v53 hour:v58 minute:v63 repeating:v56];
  v65 = sub_22D72D6B0();
  v66 = [v85 nextEventDateWithSchedule:v64 after:v65];

  if (v66)
  {
    sub_22D72D700();
    swift_unknownObjectRelease();

    v67 = 0;
    v64 = v66;
  }

  else
  {
    swift_unknownObjectRelease();
    v67 = 1;
  }

  v68 = sub_22D72D730();
  (*(*(v68 - 8) + 56))(v6, v67, 1, v68);
  return sub_22D718BE0(v6, v91);
}