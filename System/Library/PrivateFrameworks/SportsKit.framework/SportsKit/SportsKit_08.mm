void sub_26B6CA0A0()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_26_8();
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_51_3();
  v9 = OUTLINED_FUNCTION_64_3();
  if (OUTLINED_FUNCTION_44_3(v9, MEMORY[0x277D837D0], v10, v9))
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v11 = sub_26B6E95C4();
    OUTLINED_FUNCTION_19_5(v11, qword_2810D4308);
    v12 = sub_26B6E95A4();
    sub_26B6E9E74();
    v13 = OUTLINED_FUNCTION_24_5();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_28_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33_5(&dword_26B630000, v15, v16, "eventId cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
    }
  }

  else
  {
    sub_26B6C6988(v2 & 1);
    sub_26B6E9344();
    OUTLINED_FUNCTION_28_6();
    sub_26B6E9354();
    v17 = *(v5 + 8);
    v18 = OUTLINED_FUNCTION_68_2();
    v17(v18);
    sub_26B6E9384();
    OUTLINED_FUNCTION_75_1();
    v19 = OUTLINED_FUNCTION_75_0();
    v17(v19);
    (v17)(v0, v3);
  }

  OUTLINED_FUNCTION_8_0();
}

uint64_t PersistentStore.deinit()
{
  v1 = OBJC_IVAR____TtC9SportsKit15PersistentStore_storeURL;
  sub_26B6E93B4();
  OUTLINED_FUNCTION_16();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter));

  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___activityDataURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scoreboardsDataURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___cloudChannelSubscriptionURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___autostartSuppressionsURL);
  OUTLINED_FUNCTION_33_7(OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scheduledActivitiesURL);

  return v0;
}

uint64_t PersistentStore.__deallocating_deinit()
{
  PersistentStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DatedSubscribers.lastSubscription.getter()
{
  v0 = OUTLINED_FUNCTION_83_0();
  type metadata accessor for DatedSubscribers(v0);
  sub_26B6E9564();
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_54_2();

  return v2(v1);
}

uint64_t DatedSubscribers.init(subscriberCount:lastSubscription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for DatedSubscribers(0) + 20);
  sub_26B6E9564();
  OUTLINED_FUNCTION_16();
  v7 = *(v6 + 32);

  return v7(&a3[v5], a2);
}

void *static DatedSubscribers.+ infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for DatedSubscribers(0);
    result = sub_26B6E9554();
    *a3 = v4;
  }

  return result;
}

void *static DatedSubscribers.- infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *result - a2;
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_67();
    v7 = *(type metadata accessor for DatedSubscribers(v6) + 20);
    sub_26B6E9564();
    OUTLINED_FUNCTION_16();
    result = (*(v8 + 16))(&a3[v7], v3 + v7);
    *a3 = v5;
  }

  return result;
}

uint64_t static DatedSubscribers.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_67();
  type metadata accessor for DatedSubscribers(v3);

  return sub_26B6E9524();
}

uint64_t sub_26B6CA9F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xEF746E756F437265;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026B6FD8F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6CAACC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6269726373627573;
  }
}

uint64_t sub_26B6CAB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6CA9F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6CAB44(uint64_t a1)
{
  v2 = sub_26B6CEDDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6CAB80(uint64_t a1)
{
  v2 = sub_26B6CEDDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatedSubscribers.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B310, &qword_26B6F8D28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_85_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6CEDDC();
  sub_26B6EA7C4();
  sub_26B6EA524();
  if (!v1)
  {
    type metadata accessor for DatedSubscribers(0);
    sub_26B6E9564();
    OUTLINED_FUNCTION_3_15();
    sub_26B6CEB24(v4, v5, MEMORY[0x277CC9580]);
    sub_26B6EA534();
  }

  v6 = OUTLINED_FUNCTION_48_2();
  return v7(v6);
}

uint64_t DatedSubscribers.hash(into:)(uint64_t a1)
{
  MEMORY[0x26D67E0E0](*v1);
  type metadata accessor for DatedSubscribers(0);
  sub_26B6E9564();
  OUTLINED_FUNCTION_3_15();
  sub_26B6CEB24(v2, v3, MEMORY[0x277CC9588]);
  return sub_26B6E9984();
}

uint64_t DatedSubscribers.hashValue.getter()
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](*v0);
  type metadata accessor for DatedSubscribers(0);
  sub_26B6E9564();
  OUTLINED_FUNCTION_3_15();
  sub_26B6CEB24(v1, v2, MEMORY[0x277CC9588]);
  sub_26B6E9984();
  return sub_26B6EA744();
}

void DatedSubscribers.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v27 = v26;
  v41 = v28;
  v43 = sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v40 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_6();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B320, &qword_26B6F8D30);
  OUTLINED_FUNCTION_4();
  v42 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_84_0();
  v33 = type metadata accessor for DatedSubscribers(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_0();
  v37 = (v36 - v35);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_26B6CEDDC();
  sub_26B6EA784();
  if (!v23)
  {
    *v37 = sub_26B6EA454();
    OUTLINED_FUNCTION_3_15();
    sub_26B6CEB24(v38, v39, MEMORY[0x277CC95A0]);
    sub_26B6EA464();
    (*(v42 + 8))(v25, v44);
    (*(v40 + 32))(v37 + *(v33 + 20), v24, v43);
    sub_26B6CEE30(v37, v41);
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6CB108(uint64_t a1)
{
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](*v1);
  sub_26B6E9564();
  sub_26B6CEB24(&qword_280409608, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_26B6E9984();
  return sub_26B6EA744();
}

uint64_t sub_26B6CB1E4(uint64_t a1, uint64_t a2)
{
  sub_26B6E9A24();
  OUTLINED_FUNCTION_75_1();
  sub_26B6EA714();
  sub_26B6E9AE4();
  v2 = sub_26B6EA744();

  return v2;
}

uint64_t sub_26B6CB270(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26B6CB2CC(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_26B6CB310(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_26B6CB358()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26B6CB39C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_26B6CBDA8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_26B6CB4C8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_26B6EA714();

        sub_26B6E9AE4();
        v20 = sub_26B6EA744();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_26B6EA5D4() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x28223BE20](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_26B6EA714();

                sub_26B6E9AE4();
                v34 = sub_26B6EA744();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_26B6EA5D4();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_26B6CC378(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_26B6CC268(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x26D67E950](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_26B63686C(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

unint64_t *sub_26B6CB9A0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v43[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v43[0] = a1;
    v3 = *(a1 + 16);
    v41 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v40 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v41 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_26B6EA714();

      sub_26B6E9AE4();
      v9 = sub_26B6EA744();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v40;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15 || (sub_26B6EA5D4() & 1) != 0)
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v43[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          v35 = sub_26B6CC2F0(v34, v19, (v2 + 56), v19, v2, v11, v43);

          MEMORY[0x26D67E950](v34, -1, -1);

          return v35;
        }
      }

      v36[0] = v19;
      v36[1] = v36;
      MEMORY[0x28223BE20](v17);
      v21 = v36 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v38 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v42;
      v40 = *(v42 + 16);
      v19 = v16;
      while (1)
      {
        v37 = v23;
        v39 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v40)
          {
            v2 = sub_26B6CC378(v38, v36[0], v37, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v41 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_26B6EA714();

          sub_26B6E9AE4();
          v25 = sub_26B6EA744();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v42;
              v16 = v39;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_26B6EA5D4();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v38[v27];
          v38[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v42;
          v16 = v39;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v37 - 1;
        if (__OFSUB__(v37, 1))
        {
          break;
        }

        v16 = v19;
        if (v37 == 1)
        {

          v2 = MEMORY[0x277D84FA0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26B6CBDA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_26B6EA714();
  sub_26B6E9AE4();
  v6 = sub_26B6EA744();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_26B6EA5D4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26B6CC594();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_26B6CC7EC(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_26B6CBED0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_26B6EA714();

    sub_26B6E9AE4();
    v16 = sub_26B6EA744();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_26B6EA5D4();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_26B6CC378(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_26B6CC0BC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_26B6CC378(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_26B6EA714();

    sub_26B6E9AE4();
    v14 = sub_26B6EA744();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_26B6EA5D4();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_26B6CC268(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_26B6CBED0(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t *sub_26B6CC2F0(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_26B6CC0BC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_26B6CC378(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  result = sub_26B6EA104();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26B6EA714();

    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_26B6CC594()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  v3 = *v0;
  v4 = sub_26B6EA0E4();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_23_8();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 56);
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
        v20 = (*(v3 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v4 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
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

      v18 = *(v1 + v10);
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

    *v2 = v4;
  }

  return result;
}

void *sub_26B6CC6CC()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409580, &qword_26B6F8FF0);
  v3 = *v0;
  v4 = sub_26B6EA0E4();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_23_8();
    if (v8)
    {
      v9 = result >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      result = memmove(result, v1, 8 * v6);
    }

    v10 = 0;
    *(v4 + 16) = *(v3 + 16);
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v4 + 48) + v16) = *(*(v3 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v1 + v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v4;
  }

  return result;
}

unint64_t sub_26B6CC7EC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26B6EA0D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_26B6EA714();

        sub_26B6E9AE4();
        v10 = sub_26B6EA744();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
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

  return result;
}

uint64_t sub_26B6CC9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B6EA5D4() & 1;
  }
}

uint64_t sub_26B6CC9E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409578, &qword_26B6EDD00);
  result = sub_26B6EA104();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_26B6EA714();

    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_26B6EA5D4() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_26B6CCB78(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B378, &qword_26B6F8FE8), v2 = sub_26B6EA104(), v3 = v2, (v24 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v22 = v1;
    v23 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v23 + 8 * v4++);
      sub_26B6E9A24();
      sub_26B6EA714();
      v25 = v6;
      sub_26B6E9AE4();
      v7 = sub_26B6EA744();

      v8 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        v13 = sub_26B6E9A24();
        v15 = v14;
        if (v13 == sub_26B6E9A24() && v15 == v16)
        {

          goto LABEL_17;
        }

        v18 = sub_26B6EA5D4();

        if (v18)
        {

          goto LABEL_17;
        }

        v7 = v9 + 1;
      }

      *(v5 + 8 * v10) = v12 | v11;
      *(*(v3 + 48) + 8 * v9) = v25;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v21;
LABEL_17:
      v1 = v22;
      if (v4 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_26B6CCD7C()
{
  OUTLINED_FUNCTION_38();
  v53 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v46 = sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_0();
  v43 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B358, &qword_26B6F8FB8);
  v18 = OUTLINED_FUNCTION_46(v17);
  MEMORY[0x28223BE20](v18);
  v20 = v42 - v19;
  sub_26B6CF9F4(v8, v6, v4, v51);
  v47 = v51[0];
  v48 = v51[1];
  v49 = v51[2];
  v50 = v52;
  v44 = v10;
  v45 = (v10 + 32);
  v42[4] = v10 + 8;
  v42[5] = v10 + 16;
  v42[3] = v10 + 40;
  v42[1] = v8;

  v42[0] = v4;

  while (1)
  {
    sub_26B6CFA30(v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_26B63686C(v47);

      OUTLINED_FUNCTION_37();
      return;
    }

    v23 = *v20;
    v22 = *(v20 + 1);
    v24 = *v45;
    v25 = v16;
    (*v45)(v16, &v20[*(v21 + 48)], v46);
    v26 = *v53;
    v28 = sub_26B675324();
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v31 = v27;
    if (v26[3] >= v29 + v30)
    {
      if ((v2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F18, &qword_26B6F17F0);
        sub_26B6EA2F4();
      }
    }

    else
    {
      sub_26B676878();
      v32 = sub_26B675324();
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v28 = v32;
    }

    v34 = *v53;
    if (v31)
    {
      v36 = v43;
      v35 = v44;
      v16 = v25;
      v37 = v46;
      (*(v44 + 16))(v43, v25, v46);
      (*(v35 + 8))(v25, v37);

      (*(v35 + 40))(v34[7] + *(v35 + 72) * v28, v36, v37);
      v2 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_7(&v34[v28 >> 6]);
      v38 = (v34[6] + 16 * v28);
      *v38 = v23;
      v38[1] = v22;
      v16 = v25;
      v24((v34[7] + *(v44 + 72) * v28), v25, v46);
      v39 = v34[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v34[2] = v41;
      v2 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_26B6EA674();
  __break(1u);
}

void *sub_26B6CD144(_BYTE *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a1[32];
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_26B6CDA5C(v12, v7, v5, a3);
      OUTLINED_FUNCTION_14_8();
      MEMORY[0x26D67E950]();
      return v5;
    }
  }

  MEMORY[0x28223BE20](a1);
  sub_26B676BD4(0, v7, v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  v8 = OUTLINED_FUNCTION_12_3();
  v9 = a2(v8);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

uint64_t sub_26B6CD2B8(unint64_t *a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v40 = a1;
  v52 = sub_26B6E9564();
  v4 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B360, &qword_26B6F8FC0);
  v6 = MEMORY[0x28223BE20](v51);
  v50 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = (&v39 - v8);
  v9 = type metadata accessor for DatedSubscribers(0);
  v46 = *(v9 - 8);
  v47 = v9;
  result = MEMORY[0x28223BE20](v9);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v12 = 0;
  v53 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v43 = (v4 + 8);
  v44 = (v4 + 16);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v54 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v53[7];
    v25 = (v53[6] + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    v29 = *(v46 + 72);
    v42 = v23;
    sub_26B6CFD80(v24 + v29 * v23, v45);
    v30 = v48;
    *v48 = v26;
    *(v30 + 8) = v27;
    v31 = v51;
    sub_26B6CFD80(v28, v30 + *(v51 + 48));
    v32 = v50;
    sub_26B67E194(v30, v50, &qword_28040B360, &qword_26B6F8FC0);
    swift_bridgeObjectRetain_n();

    v33 = v32 + *(v31 + 48);
    v34 = v49;
    v35 = v52;
    (*v44)(v49, v33 + *(v47 + 20), v52);
    sub_26B6CFDE4(v33);
    sub_26B6E9504();
    v37 = v36;
    (*v43)(v34, v35);
    sub_26B650BBC(v30, &qword_28040B360, &qword_26B6F8FC0);
    sub_26B6CFDE4(v28);

    v18 = v54;
    if (fabs(v37) < 172800.0)
    {
      *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
        return sub_26B6CDB80(v40, v39, v41, v53);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_26B6CDB80(v40, v39, v41, v53);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6CD68C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v4 = MEMORY[0x28223BE20](v59);
  v53 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = (&v40 - v6);
  v51 = sub_26B6E9564();
  v7 = MEMORY[0x28223BE20](v51);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v58 = &v40 - v11;
  v12 = 0;
  v54 = a3;
  v13 = *(a3 + 64);
  v45 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v43 = 0;
  v44 = (v14 + 63) >> 6;
  v48 = v10 + 16;
  v50 = v10;
  v47 = v10 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v57 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v12 << 6);
    v21 = v54[7];
    v22 = (v54[6] + 16 * v20);
    v23 = *v22;
    v56 = v22[1];
    v24 = v56;
    v25 = v50;
    v26 = v51;
    v27 = *(v50 + 72);
    v46 = v20;
    v28 = *(v50 + 16);
    v29 = v58;
    v28(v58, v21 + v27 * v20, v51);
    v30 = v52;
    *v52 = v23;
    *(v30 + 8) = v24;
    v28((v30 + *(v59 + 48)), v29, v26);
    swift_bridgeObjectRetain_n();
    v31 = v49;
    sub_26B6E9554();
    sub_26B6E9514();
    v33 = v32;
    v55 = *(v25 + 8);
    v55(v31, v26);
    v34 = v53;
    sub_26B67E194(v30, v53, &qword_280409090, &unk_26B6EC1B0);

    v35 = *(v59 + 48);
    sub_26B6E9514();
    v37 = v36;
    sub_26B650BBC(v30, &qword_280409090, &unk_26B6EC1B0);
    v38 = v55;
    v55((v34 + v35), v26);
    v38(v58, v26);

    v16 = v57;
    if (v33 - v37 < 259200.0)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return sub_26B6CDE88(v42, v41, v43, v54);
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v44)
    {
      return sub_26B6CDE88(v42, v41, v43, v54);
    }

    v19 = *(v45 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v57 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26B6CDA5C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v5 = OUTLINED_FUNCTION_12_3();
    v6 = a4(v5);

    return v6;
  }

  return result;
}

unint64_t *sub_26B6CDAE0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    v8 = sub_26B6CE5C0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_26B6CDB80(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DatedSubscribers(0);
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B368, &qword_26B6F8FC8);
  result = sub_26B6EA354();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v39;
  v38 = a4;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v40;
    v43 = *(v41 + 72);
    sub_26B6CFD80(v22 + v43 * v21, v40);
    sub_26B6CEE30(v26, v17);
    sub_26B6EA714();

    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v17 = v39;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v17 = v39;
LABEL_25:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v13 + 48) + 16 * v30);
    *v35 = v25;
    v35[1] = v24;
    result = sub_26B6CEE30(v17, *(v13 + 56) + v30 * v43);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v38;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B6CDE88(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_26B6E9564();
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F10, &qword_26B6F17E8);
  result = sub_26B6EA354();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_26B6EA714();

    v52 = v27;
    sub_26B6E9AE4();
    result = sub_26B6EA744();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_25:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26B6CE200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B6E9564();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_26B6CE280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0);
  result = sub_26B6CE200(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_26B6CE2F0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[1] = v26;
    MEMORY[0x28223BE20](v7);
    v27 = v5;
    v28 = (v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    v8 = sub_26B676BD4(0, v5, v28);
    v29 = 0;
    v30 = v2;
    v9 = 0;
    v11 = *(v2 + 56);
    v2 += 56;
    v10 = v11;
    v12 = 1 << *(v2 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v6 = v13 & v10;
    v5 = (v12 + 63) >> 6;
    while (v6)
    {
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = (*(v30 + 48) + 16 * v17);
      v19 = v18[1];
      v32[0] = *v18;
      v32[1] = v19;
      MEMORY[0x28223BE20](v8);
      v26[-2] = v32;

      v20 = sub_26B6C35FC(sub_26B655E5C, &v26[-4], v31);

      if (!v20)
      {
        *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_26B6CC378(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v6 = (v16 - 1) & v16;
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

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_26B6CDAE0(v24, v5, v2, v25);

  MEMORY[0x26D67E950](v24, -1, -1);
LABEL_17:
  swift_bridgeObjectRelease_n();
  return v22;
}

unint64_t *sub_26B6CE5C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v21 = a2;
  v22 = result;
  v23 = 0;
  v24 = a3;
  v4 = 0;
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
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v25[0] = *v14;
    v25[1] = v15;
    MEMORY[0x28223BE20](result);
    v20[2] = v25;

    v16 = sub_26B6C35FC(sub_26B655EEC, v20, v26);

    if (!v16)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        v19 = sub_26B6CC378(v22, v21, v23, v18);

        return v19;
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

id sub_26B6CE780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_26B6E9C24();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_26B6CE814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore_dataWriter);
  v8[3] = type metadata accessor for PersistentStoreWriter();
  v8[4] = &off_287C2FA88;
  *v8 = a3;
  v9 = (a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore_sessionsDirectoryPath);
  *v9 = 0x736E6F6973736573;
  v9[1] = 0xE800000000000000;
  v10 = OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___activityDataURL;
  v11 = sub_26B6E93B4();
  __swift_storeEnumTagSinglePayload(a4 + v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scoreboardsDataURL, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___cloudChannelSubscriptionURL, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___autostartSuppressionsURL, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___scheduledActivitiesURL, 1, 1, v11);
  *(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___encoder) = 0;
  *(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore____lazy_storage___decoder) = 0;
  *(a4 + 16) = a1;
  (*(*(v11 - 8) + 32))(a4 + OBJC_IVAR____TtC9SportsKit15PersistentStore_storeURL, a2, v11);
  return a4;
}

unint64_t sub_26B6CE98C()
{
  result = qword_28040B2C0;
  if (!qword_28040B2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B2B8, &unk_26B6F8D10);
    sub_26B6CEB24(&qword_28040B2C8, type metadata accessor for DatedSubscribers, &protocol conformance descriptor for DatedSubscribers);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2C0);
  }

  return result;
}

unint64_t sub_26B6CEA68()
{
  result = qword_28040B2D0;
  if (!qword_28040B2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B2B8, &unk_26B6F8D10);
    sub_26B6CEB24(&qword_28040B2D8, type metadata accessor for DatedSubscribers, &protocol conformance descriptor for DatedSubscribers);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2D0);
  }

  return result;
}

uint64_t sub_26B6CEB24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26B6CEB90()
{
  result = qword_28040B2E8;
  if (!qword_28040B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2E8);
  }

  return result;
}

unint64_t sub_26B6CEBE4()
{
  result = qword_2810CCB90;
  if (!qword_2810CCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CCB90);
  }

  return result;
}

unint64_t sub_26B6CEC38()
{
  result = qword_2810CE390;
  if (!qword_2810CE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE390);
  }

  return result;
}

unint64_t sub_26B6CEC8C()
{
  result = qword_28040B2F0;
  if (!qword_28040B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2F0);
  }

  return result;
}

unint64_t sub_26B6CECE0()
{
  result = qword_28040B2F8;
  if (!qword_28040B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B2F8);
  }

  return result;
}

unint64_t sub_26B6CED34()
{
  result = qword_28040B300;
  if (!qword_28040B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B300);
  }

  return result;
}

unint64_t sub_26B6CED88()
{
  result = qword_28040B308;
  if (!qword_28040B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B308);
  }

  return result;
}

unint64_t sub_26B6CEDDC()
{
  result = qword_28040B318;
  if (!qword_28040B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B318);
  }

  return result;
}

uint64_t sub_26B6CEE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatedSubscribers(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26B6CEEE4(uint64_t a1)
{
  sub_26B6E93B4();
  if (v1 <= 0x3F)
  {
    sub_26B6CF678(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26B6CF678(uint64_t a1)
{
  if (!qword_2810CEA08)
  {
    sub_26B6E93B4();
    v1 = sub_26B6E9FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_2810CEA08);
    }
  }
}

uint64_t sub_26B6CF6F8(uint64_t a1)
{
  result = sub_26B6E9564();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DatedSubscribers.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6CF854()
{
  result = qword_28040B340;
  if (!qword_28040B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B340);
  }

  return result;
}

unint64_t sub_26B6CF8AC()
{
  result = qword_28040B348;
  if (!qword_28040B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B348);
  }

  return result;
}

unint64_t sub_26B6CF904()
{
  result = qword_28040B350;
  if (!qword_28040B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B350);
  }

  return result;
}

uint64_t sub_26B6CF958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6CF9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_26B6CFA30@<X0>(uint64_t a1@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  MEMORY[0x28223BE20](v39);
  v4 = &v36 - v3;
  v5 = sub_26B6E9564();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F58, &unk_26B6F18F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v41 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v36 = v4;
  v40 = v17;
  if (v19)
  {
    v38 = a1;
    v20 = v18;
LABEL_7:
    v37 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v20 << 6);
    v22 = (*(v15 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v21, v5);
    v25 = v39;
    v26 = *(v39 + 48);
    *v14 = v23;
    *(v14 + 1) = v24;
    v27 = v8;
    v28 = v25;
    (*(v6 + 32))(&v14[v26], v27, v5);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v28);

    v29 = v37;
    a1 = v38;
LABEL_8:
    *v1 = v15;
    v1[1] = v16;
    v30 = v41;
    v1[2] = v40;
    v1[3] = v18;
    v1[4] = v29;
    v31 = v1[5];
    sub_26B67EDE8(v14, v30, &qword_280409F58, &unk_26B6F18F0);
    v32 = 1;
    if (__swift_getEnumTagSinglePayload(v30, 1, v28) != 1)
    {
      v33 = v30;
      v34 = v36;
      sub_26B67EDE8(v33, v36, &qword_280409090, &unk_26B6EC1B0);
      v31(v34);
      sub_26B650BBC(v34, &qword_280409090, &unk_26B6EC1B0);
      v32 = 0;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409E98, &unk_26B6F14C0);
    return __swift_storeEnumTagSinglePayload(a1, v32, 1, v35);
  }

  else
  {
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= ((v17 + 64) >> 6))
      {
        v28 = v39;
        __swift_storeEnumTagSinglePayload(&v36 - v13, 1, 1, v39);
        v29 = 0;
        goto LABEL_8;
      }

      v19 = *(v16 + 8 * v20);
      ++v18;
      if (v19)
      {
        v38 = a1;
        v18 = v20;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B6CFD80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatedSubscribers(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6CFDE4(uint64_t a1)
{
  v2 = type metadata accessor for DatedSubscribers(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t OUTLINED_FUNCTION_33_7@<X0>(uint64_t a1@<X8>)
{

  return sub_26B650BBC(v2 + a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26B6EA074();
}

void OUTLINED_FUNCTION_49_2()
{

  JUMPOUT(0x26D67D4D0);
}

uint64_t OUTLINED_FUNCTION_63_3(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_64_3()
{
  *(v0 - 112) = 11822;
  *(v0 - 104) = 0xE200000000000000;

  return sub_26B641414();
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_76_1()
{

  return sub_26B6E93B4();
}

uint64_t OUTLINED_FUNCTION_77_1()
{

  return sub_26B6E93B4();
}

void *OUTLINED_FUNCTION_78_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26B6E9024();
}

void Dictionary<>.subscript.getter()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26B6E9FF4();
  OUTLINED_FUNCTION_4();
  v33 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_26B6EA2D4();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v19 = v18 - v17;
  v20 = v5[1];
  v32 = *v5;
  v36 = v32;
  v37 = v20;
  type metadata accessor for SportsJSONContext.Property(0, v1, v21, v22);
  SportsJSONContext.Property.codingUserInfoKey.getter(v19);
  v23 = sub_26B6D05EC(v3, &v34);
  (*(v15 + 8))(v19, v13, v23);
  if (!v35)
  {
    sub_26B6D2848(&v34, &qword_2804092A0, &qword_26B6F2850);
LABEL_10:
    v25 = v7;
    v26 = 1;
    goto LABEL_11;
  }

  sub_26B643E0C(&v34, v38);
  sub_26B643E1C(v38, &v34);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_15_10(v12, 1);
    (*(v33 + 8))(v12, v8);
    if (qword_280408DB0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v27 = sub_26B6E95C4();
    __swift_project_value_buffer(v27, qword_280421AF8);

    v28 = sub_26B6E95A4();
    v29 = sub_26B6E9E74();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v34 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_26B6D22D8(v32, v20, &v34);
      _os_log_impl(&dword_26B630000, v28, v29, "Value found for property %s is not of the same type. Returning nil.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_15_10(v12, 0);
  OUTLINED_FUNCTION_7_15();
  (*(v24 + 32))(v7, v12, v1);
  v25 = v7;
  v26 = 0;
LABEL_11:
  OUTLINED_FUNCTION_15_10(v25, v26);
  OUTLINED_FUNCTION_8_0();
}

double sub_26B6D05EC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26B6753C0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_26B643E1C(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_26B6D0650(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_26B675414(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_26B6D0698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26B675324();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 32 * v4);

  return v6;
}

uint64_t sub_26B6D071C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26B675324(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_26B6E9564();
    OUTLINED_FUNCTION_7_15();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = sub_26B6E9564();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

SportsKit::SportsJSONContext __swiftcall SportsJSONContext.init()()
{
  v1 = v0;
  result.storage._rawValue = sub_26B6E9944();
  v1->storage._rawValue = result.storage._rawValue;
  return result;
}

SportsKit::SportsJSONContext __swiftcall SportsJSONContext.init(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v66 = v3;
  isUniquelyReferenced_nonNull_native = sub_26B6EA2D4();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_12(v12, v13, v14, v15, v16, v17, v18, v19, v66);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B380, &qword_26B6F8FF8);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_30_0();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v82 = sub_26B6E9944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B388, &qword_26B6F9000);
  sub_26B6E9934();
  v27 = 0;
  v70 = v6;
  v71 = v2;
  v28 = v2 + 64;
  OUTLINED_FUNCTION_13_5();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v68 = v6 + 16;
  v77 = v23;
  v78 = (v6 + 32);
  v75 = v6 + 8;
  v76 = isUniquelyReferenced_nonNull_native;
  v72 = v33;
  v73 = v28;
  v74 = v26;
  v67 = v10;
  if ((v30 & v29) != 0)
  {
    while (1)
    {
      v34 = v27;
LABEL_7:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v34 << 6);
      v38 = v70;
      v37 = v71;
      (*(v70 + 16))(v69, *(v71 + 48) + *(v70 + 72) * v36, isUniquelyReferenced_nonNull_native);
      sub_26B643E1C(*(v37 + 56) + 32 * v36, v81);
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B390, &qword_26B6F9008) + 48);
      v23 = v77;
      (*(v38 + 32))();
      sub_26B643E0C(v81, (v23 + v39));
      OUTLINED_FUNCTION_15_10(v23, 0);
      v10 = v67;
LABEL_8:
      sub_26B6D27D8(v23, v26);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B390, &qword_26B6F9008);
      if (__swift_getEnumTagSinglePayload(v26, 1, v40) == 1)
      {
        break;
      }

      v41 = *(v40 + 48);
      (*v78)(v10, v26, isUniquelyReferenced_nonNull_native);
      sub_26B643E0C(&v26[v41], v81);
      v42 = sub_26B6EA2C4();
      v44 = v43;
      sub_26B643E1C(v81, v80);
      v45 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v45;
      v82 = 0x8000000000000000;
      OUTLINED_FUNCTION_12_12();
      sub_26B675324();
      OUTLINED_FUNCTION_19_2();
      if (__OFADD__(v48, v49))
      {
        goto LABEL_22;
      }

      v50 = v46;
      v10 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B398, &unk_26B6F9010);
      if (sub_26B6EA2E4())
      {
        OUTLINED_FUNCTION_12_12();
        v51 = sub_26B675324();
        if ((v10 & 1) != (v52 & 1))
        {
          goto LABEL_24;
        }

        v50 = v51;
      }

      if (v10)
      {

        v53 = v79;
        v54 = (*(v79 + 56) + 32 * v50);
        __swift_destroy_boxed_opaque_existential_1(v54);
        sub_26B643E0C(v80, v54);
        __swift_destroy_boxed_opaque_existential_1(v81);
        v55 = OUTLINED_FUNCTION_9_12();
        v56(v55);
      }

      else
      {
        v53 = v79;
        OUTLINED_FUNCTION_9_6(v79 + 8 * (v50 >> 6));
        v58 = (v57 + 16 * v50);
        *v58 = v42;
        v58[1] = v44;
        sub_26B643E0C(v80, (*(v53 + 56) + 32 * v50));
        __swift_destroy_boxed_opaque_existential_1(v81);
        v59 = OUTLINED_FUNCTION_9_12();
        v60(v59);
        v61 = *(v53 + 16);
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_23;
        }

        *(v53 + 16) = v63;
      }

      v82 = v53;
      v23 = v77;
      v28 = v73;
      v26 = v74;
      v33 = v72;
      if (!v31)
      {
        goto LABEL_3;
      }
    }

    *v66 = v82;
    OUTLINED_FUNCTION_8_0();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v34 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v34 >= v33)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B390, &qword_26B6F9008);
        __swift_storeEnumTagSinglePayload(v23, 1, 1, v64);
        v31 = 0;
        goto LABEL_8;
      }

      v31 = *(v28 + 8 * v34);
      ++v27;
      if (v31)
      {
        v27 = v34;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result.storage._rawValue = sub_26B6EA674();
    __break(1u);
  }

  return result;
}

uint64_t SportsJSONContext.Property.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t SportsJSONContext.Property.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsJSONContext.Property.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SportsJSONContext.Property.codingUserInfoKey.getter@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A0, &qword_26B6FA4A0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  v7 = *v2;
  v8 = v2[1];

  sub_26B6EA2B4();
  v9 = sub_26B6EA2D4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_26B6D2848(v6, &qword_28040B3A0, &qword_26B6FA4A0);
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    sub_26B6EA134();
    MEMORY[0x26D67D4D0](0xD000000000000012, 0x800000026B6FD9C0);
    v12[0] = v7;
    v12[1] = v8;
    sub_26B6EA5C4();
    MEMORY[0x26D67D4D0](0xD00000000000001ALL, 0x800000026B6FD9E0);
    result = sub_26B6EA314();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
    return (*(v10 + 32))(a2, v6, v9);
  }

  return result;
}

uint64_t static SportsJSONContext.Property.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_26B6EA5D4();
  }
}

void Dictionary<>.init(jsonContext:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A0, &qword_26B6FA4A0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v65 - v3;
  v5 = sub_26B6EA2D4();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_0();
  v75 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_13_12(v12, v13, v14, v15, v16, v17, v18, v19, v65);
  v20 = *v1;
  v83 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A8, &unk_26B6F9020);
  sub_26B6E9934();
  v21 = 0;
  v22 = v20 + 64;
  v73 = v20;
  OUTLINED_FUNCTION_13_5();
  v25 = v24 & v23;
  v27 = (v26 + 63) >> 6;
  v69 = (v7 + 32);
  v72 = (v7 + 16);
  v66 = v7;
  v68 = (v7 + 8);
  *&v28 = 136315138;
  v67 = v28;
  v70 = v4;
  v71 = v5;
  while (v25)
  {
    v29 = v21;
LABEL_8:
    v30 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v73 + 48) + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    sub_26B643E1C(*(v73 + 56) + 32 * v31, v77);
    *&v78 = v34;
    *(&v78 + 1) = v33;
    sub_26B643E0C(v77, &v79);

LABEL_9:
    v81 = v78;
    v82[0] = v79;
    v82[1] = v80;
    if (!*(&v78 + 1))
    {

      OUTLINED_FUNCTION_8_0();
      return;
    }

    sub_26B643E0C(v82, &v78);

    OUTLINED_FUNCTION_12_12();
    sub_26B6EA2B4();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_26B6D2848(v4, &qword_28040B3A0, &qword_26B6FA4A0);
      if (qword_280408DB0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
      }

      v35 = sub_26B6E95C4();
      __swift_project_value_buffer(v35, qword_280421AF8);

      v36 = sub_26B6E95A4();
      v37 = sub_26B6E9E74();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v77[0] = v39;
        *v38 = v67;
        v40 = OUTLINED_FUNCTION_12_12();
        v43 = sub_26B6D22D8(v40, v41, v42);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_26B630000, v36, v37, "Could not coerce %s into CodingUserInfoKey", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v4 = v70;
        OUTLINED_FUNCTION_3_4();
        v5 = v71;
        OUTLINED_FUNCTION_3_4();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {

      v44 = v74;
      (*v69)(v74, v4, v5);
      v45 = *v72;
      (*v72)(v75, v44, v5);
      sub_26B643E1C(&v78, v77);
      v46 = v83;
      swift_isUniquelyReferenced_nonNull_native();
      v76 = v46;
      sub_26B6753C0();
      OUTLINED_FUNCTION_19_2();
      if (__OFADD__(v49, v50))
      {
        goto LABEL_30;
      }

      v51 = v47;
      v52 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F08, &qword_26B6F17E0);
      if (sub_26B6EA2E4())
      {
        v53 = sub_26B6753C0();
        v5 = v71;
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_32;
        }

        v51 = v53;
      }

      else
      {
        v5 = v71;
      }

      v55 = v76;
      if (v52)
      {
        v56 = (*(v76 + 56) + 32 * v51);
        __swift_destroy_boxed_opaque_existential_1(v56);
        sub_26B643E0C(v77, v56);
        v57 = *v68;
        (*v68)(v75, v5);
        v57(v74, v5);
        __swift_destroy_boxed_opaque_existential_1(&v78);
      }

      else
      {
        OUTLINED_FUNCTION_9_6(v76 + 8 * (v51 >> 6));
        v58 = v66;
        v60 = v75;
        v45(v59 + *(v66 + 72) * v51, v75, v5);
        sub_26B643E0C(v77, (*(v55 + 56) + 32 * v51));
        v61 = *(v58 + 8);
        v61(v60, v5);
        v61(v74, v5);
        __swift_destroy_boxed_opaque_existential_1(&v78);
        v62 = *(v55 + 16);
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_31;
        }

        *(v55 + 16) = v64;
      }

      v83 = v55;
      v4 = v70;
    }
  }

  while (1)
  {
    v29 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
      v25 = 0;
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      goto LABEL_9;
    }

    v25 = *(v22 + 8 * v29);
    ++v21;
    if (v25)
    {
      v21 = v29;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_26B6EA674();
  __break(1u);
}

uint64_t sub_26B6D15BC()
{

  Dictionary<>.subscript.getter();
}

void sub_26B6D1630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_26B6E9FF4();
  MEMORY[0x28223BE20](v6);
  v9 = *a3;
  v8 = a3[1];
  (*(v10 + 16))(v11 - v7, a1);
  v11[0] = v9;
  v11[1] = v8;

  Dictionary<>.subscript.setter();
}

void Dictionary<>.subscript.setter()
{
  OUTLINED_FUNCTION_10_0();
  v64 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_26B6EA2D4();
  OUTLINED_FUNCTION_4();
  v65 = v8;
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v63 = v10 - v9;
  v11 = sub_26B6E9FF4();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v62 = *(v2 - 8);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_0();
  v61 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  v23 = *v4;
  v24 = v4[1];
  v25 = v6;
  (*(v13 + 16))(v17, v6, v11);
  if (__swift_getEnumTagSinglePayload(v17, 1, v2) == 1)
  {
    v26 = *(v13 + 8);
    v26(v17, v11);
    *&v70 = v23;
    *(&v70 + 1) = v24;
    type metadata accessor for SportsJSONContext.Property(0, v2, v27, v28);
    v29 = v63;
    SportsJSONContext.Property.codingUserInfoKey.getter(v63);

    sub_26B676120(v29, v30, v31, v32, v33, v34, v35, v36, v58, v59);
    v26(v6, v11);
    (*(v65 + 1))(v29, v66);
    v37 = v72;
LABEL_7:
    sub_26B6D2848(v37, &qword_2804092A0, &qword_26B6F2850);
    goto LABEL_8;
  }

  v60 = v11;
  v38 = v6;
  v39 = v62;
  (*(v62 + 32))(v22, v17, v2);
  v69[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v69);
  (*(v39 + 16))(boxed_opaque_existential_0, v22, v2);
  v59 = v23;
  v67 = v23;
  v68 = v24;
  type metadata accessor for SportsJSONContext.Property(0, v2, v41, v42);
  v43 = v63;
  SportsJSONContext.Property.codingUserInfoKey.getter(v63);
  sub_26B6D2904();
  (*(v65 + 1))(v43, v66);
  if (!v71)
  {

    (*(v13 + 8))(v25, v60);
    (*(v39 + 8))(v22, v2);
    v37 = &v70;
    goto LABEL_7;
  }

  sub_26B643E0C(&v70, v72);
  sub_26B643E1C(v72, &v70);
  v44 = v61;
  v45 = v38;
  if (swift_dynamicCast())
  {

    (*(v13 + 8))(v38, v60);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v46 = *(v39 + 8);
    v46(v22, v2);
    v46(v44, v2);
  }

  else
  {
    v66 = v2;
    v47 = v60;
    v48 = v24;
    if (qword_280408DB0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v49 = sub_26B6E95C4();
    __swift_project_value_buffer(v49, qword_280421AF8);

    v50 = sub_26B6E95A4();
    v51 = sub_26B6E9E74();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v59;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v65 = v22;
      v55 = v54;
      v56 = swift_slowAlloc();
      *&v70 = v56;
      *v55 = 136315138;
      v57 = sub_26B6D22D8(v53, v48, &v70);

      *(v55 + 4) = v57;
      _os_log_impl(&dword_26B630000, v50, v51, "New value stored for property %s does not match old type. This may indicate a bug.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_3_4();

      (*(v13 + 8))(v45, v47);
      __swift_destroy_boxed_opaque_existential_1(v72);
      (*(v39 + 8))(v65, v66);
    }

    else
    {

      (*(v13 + 8))(v45, v47);
      __swift_destroy_boxed_opaque_existential_1(v72);
      (*(v39 + 8))(v22, v66);
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_8_0();
}

void (*Dictionary<>.subscript.modify(void *a1, uint64_t *a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v7[2] = a3;
  v7[3] = v3;
  v8 = sub_26B6E9FF4();
  v7[4] = v8;
  v9 = *(v8 - 8);
  v7[5] = v9;
  v10 = *(v9 + 64);
  v7[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v13 = *a2;
  v12 = a2[1];
  v7[7] = v11;
  v7[8] = v13;
  v7[9] = v12;
  *v7 = v13;
  v7[1] = v12;

  Dictionary<>.subscript.getter();
  return sub_26B6D1DC8;
}

void sub_26B6D1DC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(v2[6], v2[7], v5);
    Dictionary<>.subscript.setter();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    Dictionary<>.subscript.setter();
  }

  free(v3);
  free(v4);

  free(v2);
}

void SportsJSONInitFailureObserver.tryingToEncode(_:didFailWith:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26B6EA1C4();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  swift_getErrorValue();
  sub_26B6EA6B4();
  v15 = v5;
  sub_26B6EA194();
  sub_26B6EA1D4();
  v16 = swift_allocError();
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3B0, &qword_26B6F9030) + 48);
  *(v18 + 3) = swift_getMetatypeMetadata();
  *v18 = v7;
  (*(v10 + 16))(&v18[v19], v14, v8);
  OUTLINED_FUNCTION_7_15();
  (*(v20 + 104))(v18);
  (*(v1 + 8))(v7, v16, v3, v1);
  (*(v10 + 8))(v14, v8);

  OUTLINED_FUNCTION_8_0();
}

void sub_26B6D20AC(uint64_t a1, void *a2, const char *a3, ...)
{
  if (qword_280408DB0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v5 = sub_26B6E95C4();
  __swift_project_value_buffer(v5, qword_280421AF8);
  v6 = a2;
  oslog = sub_26B6E95A4();
  v7 = sub_26B6E9E74();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_26B6EA7F4();
    v11 = sub_26B6D22D8(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_26B6EA6B4();
    v14 = sub_26B6D22D8(v12, v13, &v16);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_26B630000, oslog, v7, a3, v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
  }
}

unint64_t sub_26B6D22D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26B6D239C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26B643E1C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26B6D239C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26B6D249C(a5, a6);
    *a1 = v9;
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
    result = sub_26B6EA1E4();
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

void *sub_26B6D249C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26B6D24E8(a1, a2);
  sub_26B6D2600(&unk_287C27F18);
  return v3;
}

void *sub_26B6D24E8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26B6E9B34())
  {
    result = sub_26B6AD01C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26B6EA114();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_26B6EA1E4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26B6D2600(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26B6D26E4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_26B6D26E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B1C0, &unk_26B6F8268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_26B6D27D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B380, &qword_26B6F8FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6D2848(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_15();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_26B6D2904()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v20 = v4;
  v21 = v3;
  v5 = sub_26B6EA2D4();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v11 = v10 - v9;
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *v0;
  sub_26B6753C0();
  OUTLINED_FUNCTION_19_2();
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v12;
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F08, &qword_26B6F17E0);
  if (sub_26B6EA2E4())
  {
    v18 = sub_26B6753C0();
    if ((v17 & 1) == (v19 & 1))
    {
      v16 = v18;
      goto LABEL_5;
    }

LABEL_10:
    sub_26B6EA674();
    __break(1u);
    return;
  }

LABEL_5:
  if (v17)
  {
    sub_26B643E0C((*(v22 + 56) + 32 * v16), v20);
    sub_26B643E0C(v21, (*(v22 + 56) + 32 * v16));
  }

  else
  {
    (*(v7 + 16))(v11, v2, v5);
    sub_26B67E1E4(v16, v11, v21, v22);
    *v20 = 0u;
    v20[1] = 0u;
  }

  *v0 = v22;
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6D2AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t BaseballClockFormatter.FormattedComponents.pitchCount.getter()
{
  v2 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](45, 0xE100000000000000);
  v0 = sub_26B6EA564();
  MEMORY[0x26D67D4D0](v0);

  return v2;
}

void sub_26B6D2C94()
{
  qword_2810CC8E8 = MEMORY[0x277D84F90];
  unk_2810CC8F0 = 0;
  qword_2810CC8F8 = 0;
  qword_2810CC900 = 0;
}

uint64_t static BaseballClockFormatter.FormattedComponents.defaultComponents.getter()
{
  if (qword_2810CC8E0 != -1)
  {
    OUTLINED_FUNCTION_0_17(&qword_2810CC8E0);
  }

  OUTLINED_FUNCTION_1_17(&qword_2810CC8E8);
}

BOOL static BaseballClockFormatter.FormattedComponents.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = sub_26B636F5C(*a1, *a2);
  v9 = v4 == v7;
  if (v2 != v5 || v3 != v6)
  {
    v9 = 0;
  }

  return (v8 & 1) != 0 && v9;
}

void static BaseballClockFormatter.formattedComponents(subscription:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_mostRecentPlay;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!*(v5 + 16))
  {
LABEL_6:
    if (qword_2810CC8E0 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  v6 = sub_26B675414(1);
  if ((v7 & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = *(*(*(v10 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  switch(*(v10 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus))
  {
    case 1:
      v12 = v11;

      goto LABEL_9;
    default:
      v13 = sub_26B6EA5D4();
      v14 = v11;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_9:
      v15 = OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock;
      v16 = *&v8[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__clock];
      if (!v16)
      {
        goto LABEL_21;
      }

      v17 = *(v16 + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
      if (!sub_26B6D32F4(v17))
      {

LABEL_21:
        if (qword_2810CC8E0 != -1)
        {
          OUTLINED_FUNCTION_0_17(&qword_2810CC8E0);
        }

        v23 = qword_2810CC8E8;
        v43 = unk_2810CC8F0;
        v24 = qword_2810CC900;

        *a2 = v23;
        *(a2 + 8) = v43;
        *(a2 + 24) = v24;
        return;
      }

      v42 = v15;
      v18 = *&v8[OBJC_IVAR____TtC9SportsKit17SportingEventPlay__competitors];
      v19 = sub_26B6542CC();

      v20 = 0;
      break;
  }

  while (1)
  {
    if (v19 == v20)
    {

      v41 = 0;
      v25 = 0;
      goto LABEL_25;
    }

    sub_26B693DF0();
    v21 = (v18 & 0xC000000000000001) != 0 ? MEMORY[0x26D67DB30](v20, v18) : *(v18 + 8 * v20 + 32);
    v22 = v21;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    SportingEventCompetitorContainer.baseballScores.getter(v45);
    if (v46 != 1)
    {
      SportingEventCompetitorContainer.baseballScores.getter(v45);
      if (v48 != 1)
      {

        SportingEventCompetitorContainer.baseballScores.getter(v45);

        v38 = v45[4];
        if (v50)
        {
          v25 = 0;
        }

        else
        {
          v25 = v49;
        }

        if (v46)
        {
          v38 = 0;
        }

        v41 = v38;
        if (v48 != 1)
        {
          v40 = v47;
          goto LABEL_26;
        }

LABEL_25:
        v40 = 0;
LABEL_26:
        SportingEventPlay.baseballPlay.getter(v45);
        v26 = v45[0];

        sub_26B6D3450(v45);
        v27 = 0;
        v28 = *(v26 + 16);
        v29 = MEMORY[0x277D84F90];
LABEL_27:
        v30 = 32 * v27 + 56;
        while (v28 != v27)
        {
          if (v27 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v31 = *(v26 + v30);
          v30 += 32;
          ++v27;
          if (v31 > 0)
          {
            v44 = v17;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26B63A8C8();
              v29 = v33;
            }

            v32 = *(v29 + 16);
            if (v32 >= *(v29 + 24) >> 1)
            {
              sub_26B63A8C8();
              v29 = v34;
            }

            *(v29 + 16) = v32 + 1;
            *(v29 + 8 * v32 + 32) = v31;
            v17 = v44;
            goto LABEL_27;
          }
        }

        if (v25 == 3)
        {

LABEL_38:

          *a2 = MEMORY[0x277D84F90];
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
          *(a2 + 24) = v25;
          return;
        }

        v35 = *&v8[v42];
        if (v35 && (v36 = *(v35 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus)) != 0 && (v37 = *(v36 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_breakType), v37 != 7))
        {
          v39 = sub_26B6470B8(v37, 6);

          if (v39)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }

        *a2 = v29;
        *(a2 + 8) = v41;
        *(a2 + 16) = v40;
        *(a2 + 24) = v25;
        return;
      }
    }

    ++v20;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  OUTLINED_FUNCTION_0_17(&qword_2810CC8E0);
LABEL_7:
  OUTLINED_FUNCTION_1_17(&qword_2810CC8E8);
}

BOOL sub_26B6D32F4(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
  if (v3 == 10)
  {
    return 0;
  }

  if ((sub_26B6475E8(v3, 2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
  if (v4 == 10 || (sub_26B6475E8(v4, 2) & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8))
  {
    v5 = -1;
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  }

  if (*(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8))
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (*(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index) < v5)
  {
    return 0;
  }

  v7 = *(v1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision);
  v8 = 0;
  switch(*(a1 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision))
  {
    case 1:
      goto LABEL_18;
    case 2:
      v8 = 3;
      goto LABEL_18;
    case 3:
      v8 = 2;
      goto LABEL_18;
    case 4:
      v8 = 1;
      goto LABEL_18;
    case 6:
      return (v7 - 5) < 0xFCu;
    default:
      v8 = 0x8000000000000000;
LABEL_18:
      v9 = v7 - 1;
      if (v9 > 3u)
      {
        v10 = 0x8000000000000000;
      }

      else
      {
        v10 = qword_26B6F9218[v9];
      }

      result = v8 >= v10;
      break;
  }

  return result;
}

uint64_t sub_26B6D34E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B6D3520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_1_17@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_26B6D35AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3C0, &unk_26B6F9280);
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409208, &qword_26B6EC768);
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v0);
  sub_26B6E9D84();
}

uint64_t sub_26B6D36E8(char *a1)
{
  v2 = v1;
  v37 = *v2;
  v4 = sub_26B6E93B4();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3C8, &unk_26B6F9290);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = MEMORY[0x277D84F90];
  v36 = v15;
  *&v15[v2] = v16;
  v41 = a1;
  sub_26B6E9344();
  sub_26B6E9354();
  v39 = v6;
  v17 = *(v6 + 8);
  v17(v12, v4);
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  sub_26B6E9384();
  v20 = sub_26B6E99F4();

  LOBYTE(a1) = [v19 fileExistsAtPath_];

  if (a1)
  {
    v21 = v40;
  }

  else
  {
    sub_26B6E90D4();
    swift_allocObject();
    v22 = sub_26B6E90C4();
    type metadata accessor for ScoreboardSubscription();
    v23 = swift_allocObject();
    *(v23 + 16) = MEMORY[0x277D84F90];
    v42 = v23;
    sub_26B6D448C(&qword_2810CE268, &protocol conformance descriptor for ScoreboardSubscription);
    v24 = v40;
    v25 = sub_26B6E90B4();
    v21 = v24;
    if (v24)
    {

      v17(v41, v4);

      v17(v14, v4);

      swift_deallocPartialClassInstance();
      return v22;
    }

    v40 = v25;
    v37 = v26;

    v27 = [v18 defaultManager];
    sub_26B6E9384();
    v28 = sub_26B6E99F4();
    v36 = v28;

    v29 = v28;
    v30 = v40;
    v31 = v37;
    sub_26B6D44D0(v29, v40, v37, 0, v27);

    sub_26B645A94(v30, v31);
  }

  v32 = v38;
  (*(v39 + 16))(v38, v14, v4);
  v33 = v32;
  v22 = v2;
  v34 = sub_26B679110(v33);
  if (v21)
  {
    v17(v41, v4);
    v17(v14, v4);
  }

  else
  {
    v22 = v34;
    v17(v41, v4);
    v17(v14, v4);
    *(v22 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate + 8) = &off_287C2F940;
    swift_unknownObjectWeakAssign();
  }

  return v22;
}

uint64_t sub_26B6D3B7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations);

  os_unfair_lock_lock((v1 + 24));
  sub_26B6D3BF8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v2 = sub_26B679ADC();

  return v2;
}

uint64_t sub_26B6D3BF8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409080, &unk_26B6EC1A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *a1;
  v8 = *(*a1 + 16);
  if (v8)
  {
    v16 = a1;
    v17 = v1;
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v3);
      sub_26B6E9D64();
      (*(v9 - 8))(v6, v3);
      v12 += v13;
      --v8;
    }

    while (v8);

    a1 = v16;
  }

  else
  {
  }

  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26B6D3D64()
{
  v0 = sub_26B6D3B7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ScoreboardsUpdateMonitor(uint64_t a1)
{
  result = qword_2810CC728;
  if (!qword_2810CC728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B6D3E54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations);

    MEMORY[0x28223BE20](v4);
    os_unfair_lock_lock((v3 + 24));
    sub_26B6D4470((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  return result;
}

uint64_t sub_26B6D3F20(uint64_t *a1, uint64_t a2)
{
  sub_26B6CB258();
  v4 = *(*a1 + 16);
  sub_26B6CB2F8(v4);
  v5 = *a1;
  *(*a1 + 16) = v4 + 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409080, &unk_26B6EC1A0);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a2, v6);
  *a1 = v5;
  return result;
}

uint64_t sub_26B6D3FDC(uint64_t a1, uint64_t a2)
{
  sub_26B6E9054();
  swift_allocObject();
  sub_26B6E9044();
  type metadata accessor for ScoreboardSubscription();
  sub_26B6D448C(&qword_2810CE260, &protocol conformance descriptor for ScoreboardSubscription);
  sub_26B6E9024();

  v3 = *(v2 + OBJC_IVAR____TtC9SportsKit24ScoreboardsUpdateMonitor_continuations);

  os_unfair_lock_lock(v3 + 6);
  sub_26B6D444C(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_26B6D422C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3B8, &unk_26B6F9270);
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409080, &unk_26B6EC1A0);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v12 = v8;
    v13 = *a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    swift_beginAccess();
    v14 = *(v12 + 16);
    v12 += 16;
    v19 = v14;
    v15 = *(v12 + 56);
    v16 = (v3 + 8);
    v17 = (v12 - 8);
    do
    {
      v19(v10, v13, v6);
      v22 = *(v21 + 16);

      sub_26B6E9D54();
      (*v16)(v5, v20);
      result = (*v17)(v10, v6);
      v13 += v15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_26B6D448C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ScoreboardSubscription();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_26B6D44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_26B6E9464();
  v9 = [a5 createFileAtPath:a1 contents:v8 attributes:a4];

  return v9;
}

uint64_t sub_26B6D4540(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000026B6FDAB0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B6EA5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B6D45DC()
{
  sub_26B6E9564();
  result = sub_26B6E9944();
  qword_280421AC0 = result;
  return result;
}

uint64_t sub_26B6D4624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D4540(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B6D4650(uint64_t a1)
{
  v2 = sub_26B6D4830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D468C(uint64_t a1)
{
  v2 = sub_26B6D4830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsScheduledActivities.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3D0, &unk_26B6F92A0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6D4830();

  sub_26B6EA7C4();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
  sub_26B67E468();
  sub_26B6EA534();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_26B6D4830()
{
  result = qword_28040B3D8;
  if (!qword_28040B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3D8);
  }

  return result;
}

uint64_t SportsScheduledActivities.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3E0, &qword_26B6F92B0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6D4830();
  sub_26B6EA784();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
    sub_26B67E5E0();
    sub_26B6EA464();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for SportsScheduledActivities.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26B6D4AE8()
{
  result = qword_28040B3E8;
  if (!qword_28040B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3E8);
  }

  return result;
}

unint64_t sub_26B6D4B40()
{
  result = qword_28040B3F0;
  if (!qword_28040B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3F0);
  }

  return result;
}

unint64_t sub_26B6D4B98()
{
  result = qword_28040B3F8;
  if (!qword_28040B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B3F8);
  }

  return result;
}

void static RunningClockComponentsFormatter.DataSource.== infix(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_41_2();
  v5 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(v4);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B418, &qword_26B6F94B8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_0();
  v14 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v14 && (sub_26B6EA5D4() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 17) != *(v0 + 17) || *(v1 + 18) != *(v0 + 18))
  {
    goto LABEL_9;
  }

  v15 = *(v0 + 32);
  if (*(v1 + 32))
  {
    if (!*(v0 + 32))
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (*(v1 + 24) != *(v0 + 24))
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_9;
    }
  }

  v16 = *(v1 + 33);
  v17 = *(v0 + 33);
  if (v16 == 10)
  {
    if (v17 != 10)
    {
      goto LABEL_9;
    }
  }

  else if (v17 == 10 || (sub_26B6475E8(v16, v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v18 = *(v0 + 34);
  if (*(v1 + 34) == 6)
  {
    if (v18 != 6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v32 = *(v1 + 34);
    if (v18 == 6)
    {
      goto LABEL_9;
    }

    v31 = v18;
    if ((static SportingEventClockPeriodSubdivision.== infix(_:_:)(&v32, &v31) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ((sub_26B646CAC(*(v1 + 35), *(v0 + 35)) & 1) == 0)
  {
    goto LABEL_9;
  }

  v30 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v19 = v30[12];
  v20 = *(v12 + 48);
  sub_26B650B70(v1 + v19, v2, &qword_28040B410, &qword_26B6F94B0);
  sub_26B650B70(v0 + v19, v2 + v20, &qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_127(v2, 1, v5);
  if (!v14)
  {
    sub_26B650B70(v2, v3, &qword_28040B410, &qword_26B6F94B0);
    OUTLINED_FUNCTION_127(v2 + v20, 1, v5);
    if (!v21)
    {
      sub_26B6DB7A8();
      static RunningClockComponentsFormatter.LiveClockComponents.== infix(_:_:)();
      v24 = v23;
      sub_26B6DB340(v9, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
      sub_26B6DB340(v3, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
      sub_26B650BBC(v2, &qword_28040B410, &qword_26B6F94B0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_18_10();
    sub_26B6DB340(v3, v22);
LABEL_35:
    sub_26B650BBC(v2, &qword_28040B418, &qword_26B6F94B8);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_127(v2 + v20, 1, v5);
  if (!v14)
  {
    goto LABEL_35;
  }

  sub_26B650BBC(v2, &qword_28040B410, &qword_26B6F94B0);
LABEL_37:
  if (*(v1 + v30[13]) != *(v0 + v30[13]))
  {
    goto LABEL_9;
  }

  v25 = v30[14];
  v26 = (v1 + v25);
  v27 = *(v1 + v25 + 8);
  v28 = (v0 + v25);
  v29 = *(v0 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_9;
    }

LABEL_44:
    sub_26B6371EC(*(v1 + v30[15]), *(v0 + v30[15]));
    goto LABEL_9;
  }

  if (*v26 != *v28)
  {
    LOBYTE(v29) = 1;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_9:
  OUTLINED_FUNCTION_8_0();
}

id RunningClockComponentsFormatter.__allocating_init(localizationProvider:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v6 = OUTLINED_FUNCTION_44_4(v5);
  v7(v6);
  v8 = OUTLINED_FUNCTION_62_3();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t RunningClockComponentsFormatter.formattedComponents(subscription:)()
{
  v0 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v1 = OUTLINED_FUNCTION_46(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v4 = v3 - v2;
  SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)();
  RunningClockComponentsFormatter.formattedComponents(dataSource:)(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17);
  OUTLINED_FUNCTION_6_13();
  return sub_26B6DB340(v4, v12);
}

void static RunningClockComponentsFormatter.LiveClockComponents.== infix(_:_:)()
{
  OUTLINED_FUNCTION_10_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26_6();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804095E8, &qword_26B6F94D0);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_0_18();
  sub_26B6DB3EC(v17, v18, MEMORY[0x277CC9598]);
  OUTLINED_FUNCTION_42_2();
  if (sub_26B6E99D4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
    OUTLINED_FUNCTION_42_2();
    if (sub_26B6E99D4())
    {
      v23 = v8;
      v19 = *(type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0) + 20);
      v20 = *(v15 + 48);
      sub_26B650B70(v5 + v19, v0, &qword_280409370, &qword_26B6ED070);
      sub_26B650B70(v3 + v19, v0 + v20, &qword_280409370, &qword_26B6ED070);
      OUTLINED_FUNCTION_127(v0, 1, v6);
      if (!v21)
      {
        sub_26B650B70(v0, v1, &qword_280409370, &qword_26B6ED070);
        OUTLINED_FUNCTION_127(v0 + v20, 1, v6);
        if (!v21)
        {
          (*(v23 + 32))(v12, v0 + v20, v6);
          OUTLINED_FUNCTION_42_2();
          sub_26B6E99D4();
          v22 = *(v23 + 8);
          v22(v12, v6);
          v22(v1, v6);
          sub_26B650BBC(v0, &qword_280409370, &qword_26B6ED070);
          goto LABEL_12;
        }

        (*(v23 + 8))(v1, v6);
LABEL_11:
        sub_26B650BBC(v0, &qword_2804095E8, &qword_26B6F94D0);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_127(v0 + v20, 1, v6);
      if (!v21)
      {
        goto LABEL_11;
      }

      sub_26B650BBC(v0, &qword_280409370, &qword_26B6ED070);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6D55EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74416573756170 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_26B6EA5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26B6D5708(char a1)
{
  if (!a1)
  {
    return 0x65746E4965746164;
  }

  if (a1 == 1)
  {
    return 0x74416573756170;
  }

  return 0x776F64746E756F63;
}

uint64_t sub_26B6D5774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D55EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6D579C(uint64_t a1)
{
  v2 = sub_26B6DB398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D57D8(uint64_t a1)
{
  v2 = sub_26B6DB398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunningClockComponentsFormatter.LiveClockComponents.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B428, &qword_26B6F94D8);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_26B6DB398();
  OUTLINED_FUNCTION_49_0(&type metadata for RunningClockComponentsFormatter.LiveClockComponents.CodingKeys, v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  sub_26B6DB434(&qword_28040B438, &qword_2810CD7B0, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_59_0();
  sub_26B6EA534();
  if (!v1)
  {
    type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    sub_26B6E9564();
    OUTLINED_FUNCTION_0_18();
    sub_26B6DB3EC(v10, v11, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_59_0();
    sub_26B6EA4E4();
    sub_26B6EA504();
  }

  return (*(v6 + 8))(v2, v4);
}

void RunningClockComponentsFormatter.LiveClockComponents.hash(into:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_0_18();
  sub_26B6DB3EC(v11, v12, MEMORY[0x277CC9588]);
  sub_26B6E9984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  sub_26B6E9984();
  v13 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  sub_26B650B70(v0 + *(v13 + 20), v1, &qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_127(v1, 1, v2);
  if (v14)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    (*(v4 + 32))(v8, v1, v2);
    OUTLINED_FUNCTION_140();
    sub_26B6E9984();
    (*(v4 + 8))(v8, v2);
  }

  sub_26B6EA734();
  OUTLINED_FUNCTION_8_0();
}

void RunningClockComponentsFormatter.LiveClockComponents.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  v28 = v27;
  v46[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v47 = v46 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B440, &qword_26B6F94E0);
  OUTLINED_FUNCTION_4();
  v46[2] = v35;
  v46[3] = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v37 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  v39 = v28[3];
  v48 = v28;
  __swift_project_boxed_opaque_existential_1(v28, v39);
  sub_26B6DB398();
  sub_26B6EA784();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    sub_26B6DB434(&qword_28040B448, &qword_2810CEA00, MEMORY[0x277CC95A0]);
    sub_26B6EA464();
    sub_26B650F44(v47, v26, &qword_28040B420, &unk_26B6F94C0);
    sub_26B6E9564();
    OUTLINED_FUNCTION_0_18();
    sub_26B6DB3EC(v40, v41, MEMORY[0x277CC95A0]);
    sub_26B6EA414();
    sub_26B650F44(v25, v26 + *(v37 + 20), &qword_280409370, &qword_26B6ED070);
    v42 = sub_26B6EA434();
    v43 = OUTLINED_FUNCTION_35_6();
    v44(v43);
    *(v26 + *(v37 + 24)) = v42 & 1;
    sub_26B6DB5B0();
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_18_10();
    sub_26B6DB340(v26, v45);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t RunningClockComponentsFormatter.FormattedComponents.init(prefix:suffix:clock:liveClock:headerTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t x6_0@<X6>, uint64_t a9)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v13 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  result = sub_26B650F44(x6_0, a8 + *(v13 + 32), &qword_28040B410, &qword_26B6F94B0);
  a8[6] = a7;
  a8[7] = a9;
  return result;
}

double sub_26B6D61A8()
{
  v0 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  __swift_allocate_value_buffer(v0, qword_280421AC8);
  v1 = __swift_project_value_buffer(v0, qword_280421AC8);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  return result;
}

uint64_t RunningClockComponentsFormatter.DataSource.competitors.getter()
{
  type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
}

uint64_t sub_26B6D6358(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74726F7073 && a2 == 0xE500000000000000;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E69467369 && a2 == 0xE700000000000000;
    if (v6 || (sub_26B6EA5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974666C61487369 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_26B6EA5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x646F697265507369 && a2 == 0xEB00000000646E45;
        if (v8 || (sub_26B6EA5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E49646F69726570 && a2 == 0xEB00000000786564;
          if (v9 || (sub_26B6EA5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7954646F69726570 && a2 == 0xEA00000000006570;
            if (v10 || (sub_26B6EA5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x800000026B6FDB90 == a2;
              if (v11 || (sub_26B6EA5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453;
                if (v12 || (sub_26B6EA5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x800000026B6FDBB0 == a2;
                  if (v13 || (sub_26B6EA5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000026B6FDBD0 == a2;
                    if (v14 || (sub_26B6EA5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x800000026B6FDBF0 == a2;
                      if (v15 || (sub_26B6EA5D4() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_26B6EA5D4();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
}

unint64_t sub_26B6D6728(char a1)
{
  result = 0x74726F7073;
  switch(a1)
  {
    case 1:
      result = 0x6C616E69467369;
      break;
    case 2:
      result = 0x6974666C61487369;
      break;
    case 3:
      result = 0x646F697265507369;
      break;
    case 4:
      result = 0x6E49646F69726570;
      break;
    case 5:
      result = 0x7954646F69726570;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x73736572676F7270;
      break;
    case 8:
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x74697465706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6D689C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D6358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6D68C4(uint64_t a1)
{
  v2 = sub_26B6DB4D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D6900(uint64_t a1)
{
  v2 = sub_26B6DB4D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RunningClockComponentsFormatter.DataSource.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B450, &qword_26B6F94E8);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_26B6DB4D0();
  OUTLINED_FUNCTION_49_0(&type metadata for RunningClockComponentsFormatter.DataSource.CodingKeys, v9, v8);
  OUTLINED_FUNCTION_39_1();
  sub_26B6EA4F4();
  if (!v1)
  {
    OUTLINED_FUNCTION_8_10(1);
    sub_26B6EA504();
    OUTLINED_FUNCTION_8_10(2);
    sub_26B6EA504();
    OUTLINED_FUNCTION_8_10(3);
    sub_26B6EA504();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA4D4();
    sub_26B6B19CC();
    OUTLINED_FUNCTION_9_13();
    sub_26B6EA4E4();
    sub_26B6B1B28();
    OUTLINED_FUNCTION_9_13();
    sub_26B6EA4E4();
    sub_26B6AE1A0();
    OUTLINED_FUNCTION_9_13();
    sub_26B6EA534();
    type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
    type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    OUTLINED_FUNCTION_20_10();
    sub_26B6DB3EC(v10, v11, &protocol conformance descriptor for RunningClockComponentsFormatter.LiveClockComponents);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA4E4();
    OUTLINED_FUNCTION_8_10(9);
    sub_26B6EA524();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA4D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6DB524(&qword_2810CC2B0, &qword_2810CDE00, &protocol conformance descriptor for SportingEventCompetitorContainer);
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_39_1();
    sub_26B6EA534();
  }

  return (*(v6 + 8))(v2, v4);
}

void RunningClockComponentsFormatter.DataSource.hash(into:)(uint64_t a1)
{
  sub_26B6E9AE4();
  sub_26B6EA734();
  sub_26B6EA734();
  sub_26B6EA734();
  if (*(v1 + 32) == 1)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_140();
    MEMORY[0x26D67E0E0](v3);
  }

  if (*(v1 + 33) == 10)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    OUTLINED_FUNCTION_140();
    sub_26B638654();
  }

  if (*(v1 + 34) == 6)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    OUTLINED_FUNCTION_140();
    sub_26B6381C0();
  }

  sub_26B63852C();
  v4 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  sub_26B6DAEBC(a1);
  MEMORY[0x26D67E0E0](*(v1 + v4[13]));
  v5 = (v1 + v4[14]);
  if (*(v5 + 8) == 1)
  {
    OUTLINED_FUNCTION_142();
  }

  else
  {
    v6 = *v5;
    OUTLINED_FUNCTION_140();
    MEMORY[0x26D67E0E0](v6);
  }

  v7 = *(v1 + v4[15]);

  sub_26B63C588(a1, v7);
}

uint64_t sub_26B6D6E00(uint64_t (*a1)(void *))
{
  sub_26B6EA714();
  a1(v3);
  return sub_26B6EA744();
}

void RunningClockComponentsFormatter.DataSource.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_38();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = v51 - v30;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B468, &qword_26B6F94F8);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v52 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_0();
  v54 = v37 - v36;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_26B6DB4D0();
  sub_26B6EA784();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v51[0] = v27;
    v51[1] = v33;
    LOBYTE(v55) = 0;
    OUTLINED_FUNCTION_17_9();
    v38 = sub_26B6EA424();
    v39 = v54;
    *v54 = v38;
    *(v39 + 8) = v40;
    OUTLINED_FUNCTION_5_13(1);
    *(v39 + 16) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_5_13(2);
    *(v39 + 17) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_5_13(3);
    *(v39 + 18) = sub_26B6EA434() & 1;
    OUTLINED_FUNCTION_5_13(4);
    *(v39 + 24) = sub_26B6EA404();
    *(v39 + 32) = v41 & 1;
    sub_26B684F4C();
    OUTLINED_FUNCTION_10_13();
    sub_26B6EA414();
    *(v39 + 33) = v55;
    sub_26B684FA0();
    OUTLINED_FUNCTION_10_13();
    sub_26B6EA414();
    *(v39 + 34) = v55;
    sub_26B6ADE7C();
    OUTLINED_FUNCTION_10_13();
    sub_26B6EA464();
    *(v54 + 35) = v55;
    type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    LOBYTE(v55) = 8;
    OUTLINED_FUNCTION_20_10();
    sub_26B6DB3EC(v42, v43, &protocol conformance descriptor for RunningClockComponentsFormatter.LiveClockComponents);
    OUTLINED_FUNCTION_17_9();
    sub_26B6EA414();
    sub_26B650F44(v31, v54 + v52[12], &qword_28040B410, &qword_26B6F94B0);
    OUTLINED_FUNCTION_5_13(9);
    *(v54 + v52[13]) = sub_26B6EA454();
    LOBYTE(v55) = 10;
    OUTLINED_FUNCTION_17_9();
    v44 = sub_26B6EA404();
    v45 = v54 + v52[14];
    *v45 = v44;
    *(v45 + 8) = v46 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6DB524(&qword_2810CDC38, &qword_2810CDDF8, &protocol conformance descriptor for SportingEventCompetitorContainer);
    OUTLINED_FUNCTION_17_9();
    sub_26B6EA464();
    v47 = OUTLINED_FUNCTION_40_4();
    v48(v47, v53);
    v49 = v54;
    *(v54 + v52[15]) = v55;
    sub_26B6DB5B0();
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_6_13();
    sub_26B6DB340(v49, v50);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6D73A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_26B6EA714();
  a4(v6);
  return sub_26B6EA744();
}

SportsKit::RunningClockComponentsFormatter::StyleOptions::ShootoutStyle_optional __swiftcall RunningClockComponentsFormatter.StyleOptions.ShootoutStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_26B6D7450@<X0>(uint64_t *a1@<X8>)
{
  result = RunningClockComponentsFormatter.StyleOptions.ShootoutStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26B6D756C@<X0>(uint64_t *a1@<X8>)
{
  result = RunningClockComponentsFormatter.StyleOptions.FinalDisplayStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.default.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280408D78 != -1)
  {
    result = OUTLINED_FUNCTION_34_4(&qword_280408D78);
  }

  v2 = HIBYTE(word_28040B400);
  *a1 = word_28040B400;
  a1[1] = v2;
  return result;
}

__int16 *sub_26B6D76BC()
{
  if (qword_280408D80 != -1)
  {
    OUTLINED_FUNCTION_31_5(&qword_280408D80);
  }

  return &word_28040B402;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.defaultShootoutStyle.modify()
{
  if (qword_280408D80 != -1)
  {
    OUTLINED_FUNCTION_31_5(&qword_280408D80);
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

__int16 *sub_26B6D77B4()
{
  if (qword_280408D88 != -1)
  {
    OUTLINED_FUNCTION_30_7(&qword_280408D88);
  }

  return &word_28040B404;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.abbreviatedShootoutStyle.modify()
{
  if (qword_280408D88 != -1)
  {
    OUTLINED_FUNCTION_30_7(&qword_280408D88);
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

__int16 *sub_26B6D78AC()
{
  if (qword_280408D90 != -1)
  {
    OUTLINED_FUNCTION_29_7(&qword_280408D90);
  }

  return &word_28040B406;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.shortShootoutStyle.modify()
{
  if (qword_280408D90 != -1)
  {
    OUTLINED_FUNCTION_29_7(&qword_280408D90);
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

__int16 *sub_26B6D79A4()
{
  if (qword_280408D98 != -1)
  {
    OUTLINED_FUNCTION_27_4(&qword_280408D98);
  }

  return &word_28040B408;
}

uint64_t sub_26B6D7A04@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = OUTLINED_FUNCTION_29_2(a2, v10);
  v9 = *a3;
  *a5 = *a2;
  a5[1] = v9;
  return result;
}

uint64_t sub_26B6D7A90(char *a1, void *a2, _BYTE *a3, char *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_56_4();
  result = swift_beginAccess();
  *a3 = v7;
  *a4 = v8;
  return result;
}

uint64_t static RunningClockComponentsFormatter.StyleOptions.fullShootoutStyle.modify()
{
  if (qword_280408D98 != -1)
  {
    OUTLINED_FUNCTION_27_4(&qword_280408D98);
  }

  OUTLINED_FUNCTION_21_5();
  return OUTLINED_FUNCTION_58_3();
}

uint64_t sub_26B6D7B64@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a2@<X4>, char *a3@<X5>, _BYTE *a4@<X8>)
{
  a1();
  v7 = OUTLINED_FUNCTION_56_4();
  result = OUTLINED_FUNCTION_29_2(v7, v8);
  v10 = *a3;
  *a4 = *a2;
  a4[1] = v10;
  return result;
}

uint64_t sub_26B6D7BBC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), _BYTE *a6, char *a7)
{
  v9 = *a1;
  v10 = a1[1];
  a5();
  OUTLINED_FUNCTION_56_4();
  result = swift_beginAccess();
  *a6 = v9;
  *a7 = v10;
  return result;
}

uint64_t sub_26B6D7CA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F746F6F6873 && a2 == 0xED0000656C797453;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026B6FDC10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6D7D80(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x74756F746F6F6873;
  }
}

uint64_t sub_26B6D7DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6D7CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6D7DF8(uint64_t a1)
{
  v2 = sub_26B6DB604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6D7E34(uint64_t a1)
{
  v2 = sub_26B6DB604();

  return MEMORY[0x2821FE720](a1, v2);
}

void RunningClockComponentsFormatter.StyleOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_38();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B478, &qword_26B6F9500);
  OUTLINED_FUNCTION_4();
  v31 = v30;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_16_0();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v33 = sub_26B6DB604();
  OUTLINED_FUNCTION_49_0(&type metadata for RunningClockComponentsFormatter.StyleOptions.CodingKeys, v34, v33);
  sub_26B6DB658();
  sub_26B6EA534();
  if (!v25)
  {
    sub_26B6DB6AC();
    sub_26B6EA534();
  }

  (*(v31 + 8))(v26, v29);
  OUTLINED_FUNCTION_37();
}

uint64_t RunningClockComponentsFormatter.StyleOptions.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x26D67E0E0](*v0);
  return MEMORY[0x26D67E0E0](v1);
}

uint64_t RunningClockComponentsFormatter.StyleOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v1);
  MEMORY[0x26D67E0E0](v2);
  return sub_26B6EA744();
}

void RunningClockComponentsFormatter.StyleOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B498, &qword_26B6F9508);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_26B6DB604();
  sub_26B6EA784();
  if (!v24)
  {
    a13 = 0;
    v37 = sub_26B6DB700();
    OUTLINED_FUNCTION_67_2(&type metadata for RunningClockComponentsFormatter.StyleOptions.ShootoutStyle, &a13, v38, v39, v37);
    v40 = a14;
    a11 = 1;
    v41 = sub_26B6DB754();
    OUTLINED_FUNCTION_67_2(&type metadata for RunningClockComponentsFormatter.StyleOptions.FinalDisplayStyle, &a11, v42, v43, v41);
    (*(v33 + 8))(v36, v31);
    v44 = a12;
    *v30 = v40;
    v30[1] = v44;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_26B6D8214(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v2);
  MEMORY[0x26D67E0E0](v3);
  return sub_26B6EA744();
}

uint64_t RunningClockComponentsFormatter.styleOptions.getter@<X0>(_BYTE *a2@<X8>)
{
  v4 = (v2 + OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions);
  v5 = OUTLINED_FUNCTION_56_4();
  result = OUTLINED_FUNCTION_29_2(v5, v6);
  v8 = v4[1];
  *a2 = *v4;
  a2[1] = v8;
  return result;
}

uint64_t RunningClockComponentsFormatter.styleOptions.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

id RunningClockComponentsFormatter.init(localizationProvider:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_43_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v4 = OUTLINED_FUNCTION_44_4(v3);
  v5(v4);
  v6 = OUTLINED_FUNCTION_62_3();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id sub_26B6D8460()
{
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];

  return [v0 setZeroFormattingBehavior_];
}

id sub_26B6D84BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions];
  if (qword_280408D78 != -1)
  {
    OUTLINED_FUNCTION_34_4(&qword_280408D78);
  }

  v5 = HIBYTE(word_28040B400);
  *v4 = word_28040B400;
  v4[1] = v5;
  v6 = &v1[OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider];
  *(v6 + 3) = &type metadata for RunningClockDefaultLocalization;
  *(v6 + 4) = &protocol witness table for RunningClockDefaultLocalization;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_26B6D8460();
  }

  return v8;
}

void RunningClockComponentsFormatter.formattedComponents(dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_0();
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B4B8, &qword_26B6F9510);
  OUTLINED_FUNCTION_46(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v20 = *v15;
  v21 = *(v15 + 8);

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  Sport.init(rawValue:)(v22);
  v23 = v61[0];
  if (*(v15 + 16) != 1 || (v24 = *(v15 + 33), v24 != 10) && (sub_26B6475E8(v24, 5) & 1) != 0)
  {
    v25 = 0x656D6147657250;
    v26 = 0x656D6147657250;
    switch(*(v15 + 35))
    {
      case 1:
        v26 = OUTLINED_FUNCTION_94();
        goto LABEL_20;
      case 2:
        v26 = OUTLINED_FUNCTION_25_6();
        goto LABEL_20;
      case 3:
        v26 = OUTLINED_FUNCTION_24_6();
        goto LABEL_20;
      case 4:

        goto LABEL_21;
      case 5:
        v26 = OUTLINED_FUNCTION_85();
        goto LABEL_20;
      case 6:
        v26 = OUTLINED_FUNCTION_84();
        goto LABEL_20;
      case 7:
        v26 = 0x646579616C6544;
        goto LABEL_20;
      case 8:
        v26 = OUTLINED_FUNCTION_82();
        goto LABEL_20;
      case 9:
        v26 = OUTLINED_FUNCTION_12_0();
        goto LABEL_20;
      default:
LABEL_20:
        v29 = OUTLINED_FUNCTION_45_3(v26);

        if (v29)
        {
LABEL_21:
          v28 = 12;
          goto LABEL_68;
        }

        switch(*(v15 + 35))
        {
          case 1:
            OUTLINED_FUNCTION_94();
            goto LABEL_31;
          case 2:
            OUTLINED_FUNCTION_25_6();
            goto LABEL_31;
          case 3:
            OUTLINED_FUNCTION_24_6();
            goto LABEL_31;
          case 5:
            OUTLINED_FUNCTION_85();
            goto LABEL_31;
          case 6:
            OUTLINED_FUNCTION_84();
            goto LABEL_31;
          case 7:

            goto LABEL_32;
          case 8:
            OUTLINED_FUNCTION_82();
            goto LABEL_31;
          case 9:
            OUTLINED_FUNCTION_12_0();
            goto LABEL_31;
          default:
LABEL_31:
            v30 = sub_26B6EA5D4();

            if (v30)
            {
LABEL_32:
              v28 = 13;
              goto LABEL_68;
            }

            v31 = 0x656D6147657250;
            switch(*(v15 + 35))
            {
              case 1:
                v31 = OUTLINED_FUNCTION_94();
                goto LABEL_43;
              case 2:
                v31 = OUTLINED_FUNCTION_25_6();
                goto LABEL_43;
              case 3:
                v31 = OUTLINED_FUNCTION_24_6();
                goto LABEL_43;
              case 4:
                OUTLINED_FUNCTION_36_7();
                v31 = 0x656E6F7074736F50;
                goto LABEL_43;
              case 5:
                OUTLINED_FUNCTION_85();
                OUTLINED_FUNCTION_36_7();
                goto LABEL_43;
              case 6:

                goto LABEL_44;
              case 7:
                v31 = 0x646579616C6544;
                goto LABEL_43;
              case 8:
                v31 = OUTLINED_FUNCTION_82();
                goto LABEL_43;
              case 9:
                v31 = OUTLINED_FUNCTION_12_0();
                goto LABEL_43;
              default:
LABEL_43:
                v32 = OUTLINED_FUNCTION_45_3(v31);

                if (v32)
                {
LABEL_44:
                  v28 = 10;
                  goto LABEL_68;
                }

                switch(*(v15 + 35))
                {
                  case 1:
                    OUTLINED_FUNCTION_94();
                    goto LABEL_53;
                  case 2:
                    OUTLINED_FUNCTION_25_6();
                    goto LABEL_53;
                  case 3:
                    OUTLINED_FUNCTION_24_6();
                    goto LABEL_53;
                  case 4:
                    OUTLINED_FUNCTION_36_7();
                    goto LABEL_53;
                  case 5:
                    OUTLINED_FUNCTION_85();
                    OUTLINED_FUNCTION_36_7();
                    goto LABEL_53;
                  case 6:
                    OUTLINED_FUNCTION_36_7();
                    OUTLINED_FUNCTION_84();
                    goto LABEL_53;
                  case 8:

                    goto LABEL_54;
                  case 9:
                    OUTLINED_FUNCTION_12_0();
                    goto LABEL_53;
                  default:
LABEL_53:
                    v33 = sub_26B6EA5D4();

                    if (v33)
                    {
LABEL_54:
                      v28 = 11;
                      goto LABEL_68;
                    }

                    switch(*(v15 + 35))
                    {
                      case 1:
                        v25 = 0x6572676F72506E49;
                        goto LABEL_66;
                      case 2:
                        v25 = 0x6B61657242;
                        goto LABEL_66;
                      case 3:
                        v25 = 0x6C616E6946;
                        goto LABEL_66;
                      case 4:
                        OUTLINED_FUNCTION_36_7();
                        v25 = 0x656E6F7074736F50;
                        goto LABEL_66;
                      case 5:

                        goto LABEL_67;
                      case 6:
                        OUTLINED_FUNCTION_36_7();
                        v25 = 0x656C6C65636E6143;
                        goto LABEL_66;
                      case 7:
                        v25 = 0x646579616C6544;
                        goto LABEL_66;
                      case 8:
                        v25 = 0x74696566726F46;
                        goto LABEL_66;
                      case 9:
                        v25 = 0x6E776F6E6B6E55;
                        goto LABEL_66;
                      default:
LABEL_66:
                        v34 = OUTLINED_FUNCTION_45_3(v25);

                        if (v34)
                        {
LABEL_67:
                          v28 = 14;
                          goto LABEL_68;
                        }

                        if (v61[0] == 5)
                        {
                          sub_26B6D9038(v15, v13);
                          v38 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
                          OUTLINED_FUNCTION_127(v13, 1, v38);
                          if (!v39)
                          {
                            sub_26B6DB7A8();
                            goto LABEL_71;
                          }

                          sub_26B650BBC(v13, &qword_28040B4B8, &qword_26B6F9510);
                        }

                        else if (!v61[0])
                        {
                          OUTLINED_FUNCTION_8_0();

                          sub_26B6D8ED4(v35, v36);
                          return;
                        }

                        if (*(v15 + 17) == 1)
                        {
                          v28 = 1;
                          goto LABEL_68;
                        }

                        v61[0] = *(v15 + 33);
                        v40 = *(v15 + 24);
                        v41 = *(v15 + 32);
                        v60[0] = v23;
                        v42 = sub_26B6D93E0(v61, v40, v41, v60);
                        v44 = v43;
                        if (*(v15 + 18) != 1)
                        {
                          v45 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
                          v46 = v15 + v45[14];
                          v47 = *v46;
                          v48 = *(v46 + 8);
                          v61[0] = v23;
                          v49 = sub_26B6D9704(v47, v48, v61);
                          v51 = v50;
                          v52 = sub_26B6D98A4(*(v15 + v45[13]));
                          v54 = v53;
                          v55 = v45[12];
                          v56 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
                          sub_26B650B70(v15 + v55, v17 + *(v56 + 32), &qword_28040B410, &qword_26B6F94B0);
                          *v17 = v42;
                          v17[1] = v44;
                          v17[2] = v49;
                          v17[3] = v51;
                          v17[4] = v52;
                          v17[5] = v54;
                          goto LABEL_70;
                        }

                        v15 = 0xE700000000000000;
                        switch(v23)
                        {
                          case 1:
                            v15 = 0xEA00000000006C6CLL;
                            goto LABEL_94;
                          case 3:
                          case 7:
                            v15 = 0xE600000000000000;
                            goto LABEL_94;
                          case 4:
                            v15 = 0xE500000000000000;
                            goto LABEL_94;
                          case 5:

                            if (v40 == 2)
                            {
                              v57 = v41;
                            }

                            else
                            {
                              v57 = 1;
                            }

                            if (v57)
                            {
                              goto LABEL_98;
                            }

                            goto LABEL_97;
                          case 8:
                            goto LABEL_94;
                          default:
                            v15 = 0xE800000000000000;
LABEL_94:
                            v58 = sub_26B6EA5D4();

                            if ((v58 & 1) != 0 && v41 != 1 && v40 == 2)
                            {
LABEL_97:
                              v59 = 2;
                            }

                            else
                            {
LABEL_98:
                              v59 = 4;
                            }

                            OUTLINED_FUNCTION_46_3(v59);
                            OUTLINED_FUNCTION_38_4();
                            *v17 = v42;
                            v17[1] = v44;
                            v17[2] = 0;
                            v17[3] = 0;
                            break;
                        }

                        break;
                    }

                    break;
                }

                break;
            }

            break;
        }

        break;
    }

    goto LABEL_69;
  }

  v15 = v12 + OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions;
  OUTLINED_FUNCTION_29_2(v12 + OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions, v60);
  if ((*(v15 + 1) & 1) == 0)
  {
    v28 = 3;
LABEL_68:
    OUTLINED_FUNCTION_46_3(v28);
    OUTLINED_FUNCTION_38_4();
    *v17 = 0u;
    *(v17 + 1) = 0u;
LABEL_69:
    v17[4] = v12;
    v17[5] = v15;
LABEL_70:
    v17[6] = 0;
    v17[7] = 0;
    goto LABEL_71;
  }

  if (qword_280408D70 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  __swift_project_value_buffer(v27, qword_280421AC8);
  sub_26B6DB5B0();
LABEL_71:
  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6D8DF4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider;
  swift_beginAccess();
  sub_26B642140(v1 + v7, v19);
  v8 = v20;
  v9 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v10 = (*(v9 + 8))(&v14, v8, v9);
  if (!v11)
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v10 = sub_26B656098();
  }

  v12 = v10;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v12;
}

double sub_26B6D8ED4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v5 = *(a1 + 34);
    if ((v5 - 2) < 2)
    {
      v14 = *(a1 + 24);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 5;
      v14 = sub_26B6D8DF4(&v14);
      v15 = v8;
      v16 = 0;
      v17 = 0;
      v18 = 1;
    }

    else
    {
      if (v5 != 1 && v5 != 4)
      {
        goto LABEL_2;
      }

      v14 = *(a1 + 24);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 5;
      v14 = sub_26B6D8DF4(&v14);
      v15 = v7;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v9 = sub_26B6D8DF4(&v14);
    v11 = v10;
    sub_26B6DC788(v14, v15, v16, v17, v18);
    v12 = *(type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0) + 32);
    v13 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    __swift_storeEnumTagSinglePayload(a2 + v12, 1, 1, v13);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = v9;
    *(a2 + 40) = v11;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    return result;
  }

LABEL_2:
  if (qword_280408D70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  __swift_project_value_buffer(v3, qword_280421AC8);
  sub_26B6DB5B0();
  return result;
}

uint64_t sub_26B6D9038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38[-v6];
  v8 = *(a1 + 33);
  if (v8 == 10)
  {
    goto LABEL_2;
  }

  if ((sub_26B6475E8(*(a1 + 33), 5) & 1) == 0)
  {
    if (sub_26B6475E8(v8, 4))
    {
      if (*(a1 + 17) == 1 && (*(a1 + 32) & 1) == 0 && *(a1 + 24) == 1)
      {
        v39 = 7;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 7;
        v22 = sub_26B6D8DF4(&v39);
        v24 = v23;
        v25 = 1;
LABEL_21:
        v39 = v25;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 7;
        v28 = sub_26B6D8DF4(&v39);
        v30 = v29;
        v31 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
        v32 = *(v31 + 32);
        v33 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
        __swift_storeEnumTagSinglePayload(a2 + v32, 1, 1, v33);
        *a2 = v22;
        a2[1] = v24;
        a2[2] = 0;
        a2[3] = 0;
        a2[4] = v28;
        a2[5] = v30;
        a2[6] = 0;
        a2[7] = 0;
        v10 = a2;
        v11 = 0;
        v9 = v31;
        goto LABEL_3;
      }

      if (*(a1 + 18) == 1 && (*(a1 + 32) & 1) == 0 && *(a1 + 24) >= 2)
      {
        v39 = 7;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 7;
        v22 = sub_26B6D8DF4(&v39);
        v24 = v27;
        v25 = 2;
        goto LABEL_21;
      }
    }

LABEL_2:
    v9 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
    v10 = a2;
    v11 = 1;
LABEL_3:

    return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
  }

  v13 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v14 = sub_26B6BE9DC(*(a1 + *(v13 + 60)));
  v16 = v15;
  v39 = 8;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 7;
  sub_26B6D8DF4(&v39);

  v17 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = 0xE000000000000000;
  v20 = 0;
  switch(v18)
  {
    case 1:
      goto LABEL_24;
    case 2:
      v26 = 9;
      goto LABEL_23;
    case 3:
      goto LABEL_9;
    case 4:
      goto LABEL_16;
    default:
      if (*(a1 + 16) != 1)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v16)
      {
        v39 = v14;
        v40 = v16;
        v41 = 0;
        v42 = 0;
        v43 = 3;
        swift_bridgeObjectRetain_n();
        v20 = sub_26B6D8DF4(&v39);
        v19 = v21;

        sub_26B6DC788(v39, v40, v41, v42, v43);
      }

      else
      {
LABEL_16:
        v26 = 8;
LABEL_23:
        v39 = v26;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 7;
        v20 = sub_26B6D8DF4(&v39);
        v19 = v34;
      }

LABEL_24:
      v35 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v35);
      if (*(a1 + 16) == 1)
      {

        v39 = 3;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 7;
        v14 = sub_26B6D8DF4(&v39);
        v16 = v36;
      }

      *a2 = 0u;
      *(a2 + 1) = 0u;
      a2[4] = v20;
      a2[5] = v19;
      v37 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
      sub_26B650F44(v7, a2 + *(v37 + 32), &qword_28040B410, &qword_26B6F94B0);
      a2[6] = v14;
      a2[7] = v16;
      result = __swift_storeEnumTagSinglePayload(a2, 0, 1, v37);
      break;
  }

  return result;
}

uint64_t sub_26B6D93E0(unsigned __int8 *a1, uint64_t a2, char a3, unsigned __int8 *a4)
{
  v6 = *a1;
  v7 = *a4;
  if (v6 == 10 || (sub_26B6475E8(v6, 4) & 1) == 0)
  {
    switch(v7)
    {
      case 5:

        return 0;
      default:
        v8 = sub_26B6EA5D4();

        if (v8)
        {
          return 0;
        }

        LOBYTE(v18) = v7;
        v10 = sub_26B6D9AAC(a2, a3 & 1, &v18);
        break;
    }
  }

  else
  {
    switch(v7)
    {
      case 5:

        goto LABEL_11;
      default:
        v11 = sub_26B6EA5D4();

        if (v11)
        {
LABEL_11:
          v18 = 7;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 7;
        }

        else
        {
          if ((a3 & 1) == 0 && a2 >= 2)
          {
            v18 = a2;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 4;
            v12 = sub_26B6D8DF4(&v18);
            v14 = v13;
            v18 = 6;
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v22 = 7;
            v15 = sub_26B6D8DF4(&v18);
            v18 = v12;
            v19 = v14;
            v20 = v15;
            v21 = v16;
            v22 = 6;
            v9 = sub_26B6D8DF4(&v18);
            sub_26B6DC788(v18, v19, v20, v21, v22);
            return v9;
          }

          v18 = 6;
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 7;
        }

        v10 = sub_26B6D8DF4(&v18);
        break;
    }
  }

  return v10;
}

uint64_t sub_26B6D9704(uint64_t a1, char a2, _BYTE *a3)
{
  switch(*a3)
  {
    case 5:

      result = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

      break;
    default:
      v6 = sub_26B6EA5D4();

      result = 0;
      if ((v6 & 1) != 0 && (a2 & 1) == 0)
      {
LABEL_6:
        if (a1 >= 1)
        {
          v7 = sub_26B6EA564();
          MEMORY[0x26D67D4D0](v7);

          MEMORY[0x26D67D4D0](41, 0xE100000000000000);
          result = 11048;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_26B6D98A4(uint64_t a1)
{
  v2 = v1;
  v3 = 808466992;
  v4 = [v2 stringFromTimeInterval_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_26B6E9A24();
    v8 = v7;
  }

  else
  {
    v6 = 808466992;
    v8 = 0xE400000000000000;
  }

  if (v6 == 808466992 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v10 = sub_26B6EA5D4();

    if ((v10 & 1) != 0 || (sub_26B6E9B84() & 1) == 0)
    {
      return v6;
    }

    else
    {

      v11 = sub_26B6D99D8(1uLL, v6, v8);
      v3 = MEMORY[0x26D67D470](v11);
    }
  }

  return v3;
}

unint64_t sub_26B6D99D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_26B6E9B04();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_26B6E9BC4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6D9AAC(uint64_t a1, char a2, _BYTE *a3)
{
  if (a2)
  {
    return 0;
  }

  switch(*a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      v5 = sub_26B6EA5D4();

      if (v5)
      {
        goto LABEL_6;
      }

      v7 = a1;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v6 = 4;
      break;
    default:

LABEL_6:
      v7 = a1;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v6 = 5;
      break;
  }

  v11 = v6;
  return sub_26B6D8DF4(&v7);
}

id RunningClockComponentsFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RunningClockComponentsFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
  v11 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport + 8);
  v12 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_29_2(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails, &v48);
  v13 = *(v0 + v12);

  v14 = v13;
  v44 = sub_26B6DA318();

  v15 = *(v1 + v12);
  v45 = v10;
  v43 = sub_26B6DA5D8(v10, v11);

  v16 = *(v1 + v12);
  v42 = sub_26B6DA45C();

  v17 = *(v1 + v12);
  v18 = *(*(*(v17 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v41 = *(v18 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  v40 = *(v18 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
  v39 = *(v18 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision);
  v38 = *(v18 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8);
  v37 = *(v17 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  if (v3)
  {
    v19 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
  }

  else
  {
    sub_26B6DA70C();
  }

  sub_26B6BCA60();
  v36 = v20;
  v21 = *(*(v1 + v12) + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v22 = *(*&v21[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current] + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v23 = v21;
  v24 = v22;
  SportingEventCurrentClock.announcedAdditionalMinutesAndSeconds(for:)();
  v25 = v46;
  LODWORD(v22) = v47;

  v26 = *(v1 + v12);
  if (v22 == 1)
  {
    v27 = *(*(v26 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    if (v27 && (v28 = *(v27 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional)) != 0)
    {
      v29 = (v28 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes);
      v25 = *v29;
      v30 = *(v29 + 8);
    }

    else
    {
      v25 = 0;
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v26 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  *v5 = v45;
  *(v5 + 8) = v11;
  *(v5 + 16) = v44 & 1;
  *(v5 + 17) = v43 & 1;
  *(v5 + 18) = v42 & 1;
  *(v5 + 24) = v41;
  *(v5 + 32) = v38;
  v32 = v39;
  *(v5 + 33) = v40;
  *(v5 + 34) = v32;
  *(v5 + 35) = v37;
  v33 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  sub_26B650F44(v9, v5 + v33[12], &qword_28040B410, &qword_26B6F94B0);
  *(v5 + v33[13]) = v36;
  v34 = v5 + v33[14];
  *v34 = v25;
  *(v34 + 8) = v30;
  *(v5 + v33[15]) = v31;

  OUTLINED_FUNCTION_8_0();
}

uint64_t RunningClockComponentsFormatter.formattedComponents(sportingEvent:sport:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v5 = OUTLINED_FUNCTION_46(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  SportingEvent.dataSource(for:)();
  RunningClockComponentsFormatter.formattedComponents(dataSource:)(v3, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18);
  OUTLINED_FUNCTION_6_13();
  return sub_26B6DB340(v3, v13);
}

void SportingEvent.dataSource(for:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_0();
  v36 = sub_26B6DA318();
  v37 = v4;
  v35 = sub_26B6DA5D8(v6, v4);
  v34 = sub_26B6DA45C();
  v11 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v12 = *(v11 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current);
  v13 = OBJC_IVAR____TtC9SportsKit18SportingEventClock_period;
  v14 = *(v12 + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v33 = *(v14 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  v31 = *(v14 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision);
  v32 = *(v14 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
  v30 = *(v14 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8);
  v29 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  v15 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v15);
  v16 = SportingEventClock.totalSeconds.getter();
  v18 = v17;
  v19 = *(v12 + v13);
  SportingEventCurrentClock.announcedAdditionalMinutesAndSeconds(for:)();
  v20 = v38;

  if (v39 == 1)
  {
    v21 = *(v11 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    if (v21 && (v22 = *(v21 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional)) != 0)
    {
      v23 = (v22 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes);
      v20 = *v23;
      v24 = *(v23 + 8);
    }

    else
    {
      v20 = 0;
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  if (v18)
  {
    v26 = 0;
  }

  else
  {
    v26 = v16;
  }

  *v8 = v6;
  *(v8 + 8) = v37;
  *(v8 + 16) = v36 & 1;
  *(v8 + 17) = v35 & 1;
  *(v8 + 18) = v34 & 1;
  *(v8 + 24) = v33;
  *(v8 + 32) = v30;
  *(v8 + 33) = v32;
  *(v8 + 34) = v31;
  *(v8 + 35) = v29;
  v27 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  sub_26B650F44(v1, v8 + v27[12], &qword_28040B410, &qword_26B6F94B0);
  *(v8 + v27[13]) = v26;
  v28 = v8 + v27[14];
  *v28 = v20;
  *(v28 + 8) = v24;
  *(v8 + v27[15]) = v25;

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6DA318()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  v2 = 1;
  switch(v1)
  {
    case 3:
      break;
    default:
      v2 = sub_26B6EA5D4();
      break;
  }

  return v2 & 1;
}

uint64_t sub_26B6DA45C()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus);
  if (v1 && *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_isBreak) == 1)
  {
    v2 = 1;
    switch(*(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_breakType))
    {
      case 5:
        break;
      default:
        v2 = sub_26B6EA5D4();
        break;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_26B6DA5D8(uint64_t a1, void *a2)
{
  if ((sub_26B6DA45C() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(*(*(v2 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v6 = *(v5 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  v7 = *(v5 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8);
  v8 = *(v5 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  Sport.init(rawValue:)(v9);
  if (v15 - 3 < 2)
  {
    if (v8 != 10 && (sub_26B6475E8(v8, 0) & 1) != 0)
    {
      v10 = v6 == 2;
      goto LABEL_9;
    }

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  if (v15 == 1)
  {
    if (v6 == 2)
    {
      v13 = v7;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      if (v8 == 10)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_26B6475E8(v8, 4) ^ 1;
      }

      return v12 & 1;
    }

    goto LABEL_17;
  }

  if (v15 != 5)
  {
    goto LABEL_17;
  }

  v10 = v6 == 1;
LABEL_9:
  v11 = v10;
  v12 = v11 & ~v7;
  return v12 & 1;
}

void sub_26B6DA70C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v90 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v93 = v79 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B548, &qword_26B6F9DA0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_0();
  v95 = v7 - v8;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v9);
  v94 = v79 - v10;
  v91 = sub_26B6E9564();
  OUTLINED_FUNCTION_4();
  v98 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_0();
  v89 = v13 - v14;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v15);
  v100 = v79 - v16;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v17);
  v19 = v79 - v18;
  v20 = sub_26B6E9164();
  OUTLINED_FUNCTION_4();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_30_0();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = v79 - v28;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30_0();
  v88 = v31 - v32;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v33);
  v97 = v79 - v34;
  v35 = *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  v36 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_runningClockInterval;
  OUTLINED_FUNCTION_29_2(v35 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_runningClockInterval, &v101);
  v37 = *(v22 + 16);
  v37(v29, v35 + v36, v20);
  sub_26B6E9134();
  v38 = *(v22 + 8);
  v84 = v29;
  v38(v29, v20);
  v85 = v35;
  v83 = v36;
  v82 = v22 + 16;
  v81 = v37;
  v37(v26, v35 + v36, v20);
  sub_26B6E9114();
  v86 = (v22 + 8);
  v87 = v20;
  v80 = v38;
  v38(v26, v20);
  v39 = v91;
  OUTLINED_FUNCTION_0_18();
  v42 = sub_26B6DB3EC(v40, v41, MEMORY[0x277CC9590]);
  v99 = v19;
  OUTLINED_FUNCTION_42_2();
  if (sub_26B6E99B4())
  {
    v44 = v97;
    v43 = v98;
    v45 = v39;
    v46 = v94;
    v47 = v95;
    v49 = v98 + 32;
    v48 = *(v98 + 32);
    v48(v94, v99, v39);
    v50 = OUTLINED_FUNCTION_61_2();
    (v48)(v50);
    sub_26B650B70(v46, v47, &qword_28040B548, &qword_26B6F9DA0);
    v51 = *(v19 + 12);
    v48(v44, v47, v45);
    v79[2] = v42;
    v53 = v43 + 8;
    v52 = *(v43 + 8);
    v52(v47 + v51, v45);
    sub_26B650F44(v46, v47, &qword_28040B548, &qword_26B6F9DA0);
    v54 = v44 + *(v92 + 36);
    v55 = v47 + *(v19 + 12);
    v79[1] = v49;
    v79[0] = v48;
    v48(v54, v55, v45);
    v52(v47, v45);
    v56 = v84;
    v57 = v85;
    v58 = v87;
    v81(v84, v85 + v83, v87);
    v59 = v99;
    sub_26B6E9134();
    v80(v56, v58);
    v60 = v89;
    sub_26B6E94F4();
    v86 = v52;
    v87 = v53;
    v52(v59, v45);
    v61 = v88;
    sub_26B650B70(v44, v88, &qword_28040B420, &unk_26B6F94C0);
    v62 = v93;
    (*(v98 + 16))(v93, v60, v45);
    v63 = v45;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v45);
    v64 = *(v57 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown);
    if ((sub_26B6E99A4() & 1) == 0)
    {
      v77 = v62;
      v66 = v90;
      sub_26B650F44(v61, v90, &qword_28040B420, &unk_26B6F94C0);
      v75 = v86;
      goto LABEL_6;
    }

    sub_26B6E9554();
    sub_26B6E9554();
    OUTLINED_FUNCTION_42_2();
    v65 = sub_26B6E99B4();
    sub_26B650BBC(v61, &qword_28040B420, &unk_26B6F94C0);
    v66 = v90;
    if (v65)
    {
      v67 = v94;
      v68 = v99;
      LODWORD(v99) = v64;
      v69 = v79[0];
      (v79[0])(v94, v68, v45);
      v70 = OUTLINED_FUNCTION_61_2();
      v69(v70);
      v71 = v95;
      sub_26B650B70(v67, v95, &qword_28040B548, &qword_26B6F9DA0);
      v72 = v60;
      v73 = *(v57 + 48);
      (v69)(v66, v71, v45);
      v74 = v71 + v73;
      v60 = v72;
      v75 = v86;
      v86(v74, v45);
      sub_26B650F44(v67, v71, &qword_28040B548, &qword_26B6F9DA0);
      v76 = *(v57 + 48);
      v77 = v93;
      (v69)(v66 + *(v92 + 36), v71 + v76, v45);
      LOBYTE(v64) = v99;
      v63 = v45;
      v75(v71, v45);
LABEL_6:
      v78 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
      sub_26B650F44(v77, v66 + *(v78 + 20), &qword_280409370, &qword_26B6ED070);
      *(v66 + *(v78 + 24)) = v64;
      v75(v60, v63);
      sub_26B650BBC(v97, &qword_28040B420, &unk_26B6F94C0);
      __swift_storeEnumTagSinglePayload(v66, 0, 1, v78);
      OUTLINED_FUNCTION_8_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26B6DAEBC(uint64_t a1)
{
  v2 = sub_26B6E9564();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - v12;
  sub_26B650B70(v1, &v16 - v12, &qword_28040B410, &qword_26B6F94B0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
  {
    return sub_26B6EA734();
  }

  sub_26B6DB7A8();
  sub_26B6EA734();
  sub_26B6DB3EC(&qword_280409608, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_26B6E9984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  sub_26B6E9984();
  sub_26B650B70(&v10[*(v8 + 20)], v7, &qword_280409370, &qword_26B6ED070);
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    sub_26B6EA734();
  }

  else
  {
    v15 = v17;
    (*(v17 + 32))(v4, v7, v2);
    sub_26B6EA734();
    sub_26B6E9984();
    (*(v15 + 8))(v4, v2);
  }

  sub_26B6EA734();
  return sub_26B6DB340(v10, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
}

id sub_26B6DB218(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v10 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions;
  if (qword_280408D78 != -1)
  {
    swift_once();
  }

  v11 = &a2[v10];
  v12 = HIBYTE(word_28040B400);
  *v11 = word_28040B400;
  v11[1] = v12;
  sub_26B642140(v16, &a2[OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider]);
  v15.receiver = a2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_26B6D8460();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_26B6DB340(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26B6DB398()
{
  result = qword_28040B430;
  if (!qword_28040B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B430);
  }

  return result;
}

uint64_t sub_26B6DB3EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26B6DB434(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B420, &unk_26B6F94C0);
    OUTLINED_FUNCTION_0_18();
    sub_26B6DB3EC(a2, v7, a3);
    result = OUTLINED_FUNCTION_64_4();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B6DB4D0()
{
  result = qword_28040B458;
  if (!qword_28040B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B458);
  }

  return result;
}

uint64_t sub_26B6DB524(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6DB3EC(a2, type metadata accessor for SportingEventCompetitorContainer, a3);
    result = OUTLINED_FUNCTION_64_4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B6DB5B0()
{
  v1 = OUTLINED_FUNCTION_41_2();
  v2(v1);
  OUTLINED_FUNCTION_16();
  v3 = OUTLINED_FUNCTION_22_0();
  v4(v3);
  return v0;
}

unint64_t sub_26B6DB604()
{
  result = qword_28040B480;
  if (!qword_28040B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B480);
  }

  return result;
}

unint64_t sub_26B6DB658()
{
  result = qword_28040B488;
  if (!qword_28040B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B488);
  }

  return result;
}

unint64_t sub_26B6DB6AC()
{
  result = qword_28040B490;
  if (!qword_28040B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B490);
  }

  return result;
}

unint64_t sub_26B6DB700()
{
  result = qword_28040B4A0;
  if (!qword_28040B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4A0);
  }

  return result;
}

unint64_t sub_26B6DB754()
{
  result = qword_28040B4A8;
  if (!qword_28040B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4A8);
  }

  return result;
}

uint64_t sub_26B6DB7A8()
{
  v1 = OUTLINED_FUNCTION_41_2();
  v2(v1);
  OUTLINED_FUNCTION_16();
  v3 = OUTLINED_FUNCTION_22_0();
  v4(v3);
  return v0;
}

unint64_t sub_26B6DB890()
{
  result = qword_28040B4D0;
  if (!qword_28040B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4D0);
  }

  return result;
}

unint64_t sub_26B6DB8E8()
{
  result = qword_28040B4D8;
  if (!qword_28040B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4D8);
  }

  return result;
}

unint64_t sub_26B6DB940()
{
  result = qword_28040B4E0;
  if (!qword_28040B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4E0);
  }

  return result;
}

void sub_26B6DBA0C(uint64_t a1)
{
  sub_26B6DBAC8(319);
  if (v1 <= 0x3F)
  {
    sub_26B6DBC50(319, &qword_2810CEB18, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26B6DBAC8(uint64_t a1)
{
  if (!qword_2810CEA38[0])
  {
    sub_26B6E9564();
    sub_26B6DB3EC(&unk_2810CEB20, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_26B6E99C4();
    if (!v2)
    {
      atomic_store(v1, qword_2810CEA38);
    }
  }
}

void sub_26B6DBB84(uint64_t a1)
{
  sub_26B6DBE88(319, &qword_2810CDCF8);
  if (v1 <= 0x3F)
  {
    sub_26B6DBC50(319, &qword_2810CEB00, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26B6DBC50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26B6DBCDC(uint64_t a1)
{
  sub_26B6DBE88(319, &qword_2810CC280);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_26B6DBE88(319, &qword_2810CC5F0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_26B6DBE88(319, qword_2810CC310);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_26B6DBC50(319, &qword_2810CEB00, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents, MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_26B6DBC50(319, &qword_2810CC2B8, type metadata accessor for SportingEventCompetitorContainer, MEMORY[0x277D83940]);
      v2 = v8;
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_26B6DBE88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26B6E9FF4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RunningClockComponentsFormatter.StyleOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RunningClockComponentsFormatter.StyleOptions(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunningClockComponentsFormatter.StyleOptions.ShootoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26B6DC134(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunningClockComponentsFormatter.DataSource.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunningClockComponentsFormatter.LiveClockComponents.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6DC3CC()
{
  result = qword_28040B4F0;
  if (!qword_28040B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4F0);
  }

  return result;
}

unint64_t sub_26B6DC424()
{
  result = qword_28040B4F8;
  if (!qword_28040B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4F8);
  }

  return result;
}

unint64_t sub_26B6DC47C()
{
  result = qword_28040B500;
  if (!qword_28040B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B500);
  }

  return result;
}

unint64_t sub_26B6DC4D4()
{
  result = qword_28040B508;
  if (!qword_28040B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B508);
  }

  return result;
}

unint64_t sub_26B6DC52C()
{
  result = qword_28040B510;
  if (!qword_28040B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B510);
  }

  return result;
}

unint64_t sub_26B6DC584()
{
  result = qword_28040B518;
  if (!qword_28040B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B518);
  }

  return result;
}

unint64_t sub_26B6DC5DC()
{
  result = qword_28040B520;
  if (!qword_28040B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B520);
  }

  return result;
}

unint64_t sub_26B6DC634()
{
  result = qword_28040B528;
  if (!qword_28040B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B528);
  }

  return result;
}

unint64_t sub_26B6DC68C()
{
  result = qword_28040B530;
  if (!qword_28040B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B530);
  }

  return result;
}

unint64_t sub_26B6DC6E0()
{
  result = qword_28040B538;
  if (!qword_28040B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B538);
  }

  return result;
}

unint64_t sub_26B6DC734()
{
  result = qword_28040B540;
  if (!qword_28040B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B540);
  }

  return result;
}

uint64_t sub_26B6DC788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 4u)
  {
    if (a5 != 6)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_4()
{
  v1 = *(type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0) + 32);
  v2 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);

  return __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_45_3(uint64_t a1)
{

  return sub_26B6EA5D4();
}

uint64_t OUTLINED_FUNCTION_46_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;
  *(v1 - 112) = 0;
  *(v1 - 104) = 0;
  *(v1 - 96) = 0;
  *(v1 - 88) = 7;

  return sub_26B6D8DF4((v1 - 120));
}

uint64_t OUTLINED_FUNCTION_60_3@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

id OUTLINED_FUNCTION_62_3()
{

  return sub_26B6DB218(v3, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_67_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_68_3(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{

  return sub_26B6D7BBC(a1, a2, a3, a4, v6, a6, a6 + 1);
}

uint64_t OUTLINED_FUNCTION_69_3@<X0>(_BYTE *a1@<X4>, _BYTE *a2@<X8>)
{

  return sub_26B6D7B64(v2, a1, a1 + 1, a2);
}

uint64_t SportsLogoSize.rawValue.getter()
{
  if (*v0)
  {
    return 200;
  }

  else
  {
    return 56;
  }
}

SportsKit::SportsLogoSize_optional __swiftcall SportsLogoSize.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 200)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 56)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26B6DCBE4()
{
  result = qword_28040B550;
  if (!qword_28040B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B550);
  }

  return result;
}

uint64_t sub_26B6DCC58@<X0>(uint64_t *a1@<X8>)
{
  result = SportsLogoSize.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsLogoSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B6DCE0C()
{
  result = qword_28040B558;
  if (!qword_28040B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B558);
  }

  return result;
}

void NSFileManager.currentContainerURL.getter(char *a1@<X8>)
{
  v2 = sub_26B6E93B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = sub_26B6E99F4();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier_];

  if (v12)
  {
    sub_26B6E9374();

    v13 = *(v3 + 32);
    v13(v8, v5, v2);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v2);
    v13(a1, v8, v2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v2);
    v14 = [v9 defaultManager];
    v15 = [v14 URLsForDirectory:9 inDomains:1];

    v16 = sub_26B6E9C34();
    if (*(v16 + 16))
    {
      (*(v3 + 16))(v5, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      sub_26B6E9344();
      (*(v3 + 8))(v5, v2);
      if (__swift_getEnumTagSinglePayload(v8, 1, v2) != 1)
      {
        sub_26B665C44(v8);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double PersistentStorable.getTierConfig(leagueId:client:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26B6F1420;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t PersistentStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v1);
  return sub_26B6EA744();
}

unint64_t sub_26B6DD2D8()
{
  result = qword_28040B560;
  if (!qword_28040B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B560);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersistentStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B6DD860(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26B6E95C4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26B6E95B4();
}

__n128 PersistentStore.getTierConfig(leagueId:client:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *a3;
  v7 = a3[1];
  v20.n128_u64[0] = a2;

  MEMORY[0x26D67D4D0](45, 0xE100000000000000);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0x5050415F5654;
    v9 = 0xE600000000000000;
  }

  MEMORY[0x26D67D4D0](v8, v9);

  sub_26B6DDBE0(a1, v20.n128_i64[0]);
  v11 = v10;

  if (v11 && (v13 = *(v5 + 16), v14 = sub_26B6E99F4(), , v15 = [v13 contentsAtPath_], v14, v15))
  {
    v16 = sub_26B6E9474();
    v18 = v17;

    sub_26B6E9054();
    swift_allocObject();
    sub_26B6E9044();
    sub_26B6DDCB4();
    sub_26B6E9024();

    sub_26B645A94(v16, v18);
    result = v20;
    *a4 = a1;
    *(a4 + 8) = v20;
    *(a4 + 24) = v21;
  }

  else
  {
    result.n128_u64[0] = 0;
    *a4 = xmmword_26B6F1420;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  return result;
}

uint64_t sub_26B6DDBE0(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_26B6DDD08(a1, a2, 1852797802, 0xE400000000000000, v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_26B6E9A24();
  }

  else
  {

    return 0;
  }

  return v8;
}

unint64_t sub_26B6DDCB4()
{
  result = qword_28040B568;
  if (!qword_28040B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B568);
  }

  return result;
}

id sub_26B6DDD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_26B6E99F4();
  v7 = sub_26B6E99F4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  return v8;
}

uint64_t sub_26B6DDD8C(uint64_t a1)
{
  result = sub_26B6E9594();
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

uint64_t sub_26B6DDE2C()
{
  v1 = qword_2810CD280;
  sub_26B6E9594();
  OUTLINED_FUNCTION_16();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_26B6DDEAC()
{
  sub_26B6DDE2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B6DDF60()
{
  sub_26B6EA714();
  sub_26B6DDFA0(v1);
  return sub_26B6EA744();
}

uint64_t sub_26B6DDFA0(uint64_t a1)
{
  sub_26B6E9594();
  sub_26B6DFA54(&qword_2810CD7A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_26B6E9984();
}

uint64_t sub_26B6DE090(uint64_t a1)
{
  sub_26B6EA714();
  sub_26B6DDFA0(v2);
  return sub_26B6EA744();
}

uint64_t sub_26B6DE0D0(void (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v8 = sub_26B6DF0AC();
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    aBlock[4] = sub_26B6DFA2C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26B6DE2B0;
    aBlock[3] = &block_descriptor_36;
    v11 = _Block_copy(aBlock);

    v12 = [v9 remoteObjectProxyWithErrorHandler_];
    _Block_release(v11);

    sub_26B6EA084();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A0, &qword_26B6FA180);
    if (swift_dynamicCast())
    {
      aBlock[0] = v16;
      a4(aBlock);

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_26B66BB5C();
      v14 = swift_allocError();
      *v15 = -96;
      a1();
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}