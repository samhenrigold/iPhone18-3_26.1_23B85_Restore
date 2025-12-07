uint64_t sub_1B6A536A4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB90F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = *(*(result + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v12 = v15;
    (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
    v16 = v15;
    LOBYTE(v15) = sub_1B6AB9110();
    result = (*(v10 + 8))(v12, v9);
    if (v15)
    {
      v17 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
      swift_beginAccess();
      sub_1B699A32C(v14 + v17, v8, type metadata accessor for SessionManager.SessionState);
      swift_unknownObjectRelease();
      result = swift_getEnumCaseMultiPayload();
      if (result)
      {
        if (result == 1)
        {
          return sub_1B6984D38(v8, type metadata accessor for SessionManager.SessionState);
        }
      }

      else
      {

        v18 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
        v19 = *(a1 + 88);

        return sub_1B69AA6C4(v19, a1 + v18, a1, a2, a3);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B6A53910(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB90F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(Strong);
  }

  v11 = Strong;
  v12 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v12;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v13 = v12;
  LOBYTE(v12) = sub_1B6AB9110();
  result = (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v15 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B699A32C(v11 + v15, v5, type metadata accessor for SessionManager.SessionState);
    swift_unknownObjectRelease();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6984D38(v5, type metadata accessor for SessionManager.SessionState);
      }

      Strong = 0;
    }

    else
    {

      Strong = 1;
    }

    return a2(Strong);
  }

  __break(1u);
  return result;
}

void sub_1B6A53B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v55 = a5;
  v53 = a3;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(*(v5 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v17;
  v18 = *(v14 + 104);
  v47 = *MEMORY[0x1E69E8020];
  v48 = v14 + 104;
  v46 = v18;
  v18(v16);
  v19 = v17;
  LOBYTE(v17) = sub_1B6AB9110();
  v21 = *(v14 + 8);
  v20 = v14 + 8;
  v45 = v21;
  v21(v16, v13);
  if (v17)
  {
    v50 = a4;
    v51 = v11;
    v52 = v10;
    v43[1] = v20;
    v44 = v13;
    swift_beginAccess();
    v58 = *(v6 + 168);

    v49 = a1;
    v23 = sub_1B6A57298(v22, a1, a2);
    v25 = v24;

    MEMORY[0x1EEE9AC00](v26);
    v13 = 0;
    v43[-2] = &v58;
    if ((v25 & 1) == 0)
    {
      v59 = v23;
      sub_1B6A573B8(&v59, v56);
      v13 = v56[0];
    }

    if (!v13)
    {
      v31 = v51;
      v30 = v52;
      v32 = *(v51 + 16);
      v33 = v54;
      v32(v54, v53, v52);
      v34 = type metadata accessor for Group(0);
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR___AAGroup_count] = 1;
      v36 = &v35[OBJC_IVAR___AAGroup_name];
      *v36 = v49;
      v36[1] = a2;
      v32(&v35[OBJC_IVAR___AAGroup_startDate], v33, v30);
      v37 = &v35[OBJC_IVAR___AAGroup_contentType];
      *v37 = v50;
      v37[8] = v55 & 1;
      v57.receiver = v35;
      v57.super_class = v34;

      v38 = objc_msgSendSuper2(&v57, sel_init);
      (*(v31 + 8))(v33, v30);
      swift_beginAccess();
      v13 = v38;
      MEMORY[0x1B8C97D30]();
      if (*((*(v6 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v6 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    v27 = *(v13 + OBJC_IVAR___AAGroup_count);
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      *(v13 + OBJC_IVAR___AAGroup_count) = v29;
LABEL_12:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_15:
  sub_1B6AB9540();
LABEL_9:
  sub_1B6AB9580();
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v40 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v40;
  v41 = v44;
  v46(v16, v47, v44);
  v42 = v40;
  LOBYTE(v40) = sub_1B6AB9110();
  v45(v16, v41);
  if (v40)
  {
    sub_1B69C880C(v13);
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1B6A5405C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_retain_n();
    v13 = sub_1B6A54210(v12, a1, a2, v2);

    v14 = v2[19];

    if (v14)
    {
      while ((v13 & 1) != 0)
      {

        v13 = sub_1B6A54210(v15, a1, a2, v2);

        v16 = *(v14 + 152);

        v14 = v16;
        if (!v16)
        {
          return result;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6A54210(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v40 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    swift_beginAccess();
    v12 = *(a1 + 168);
    v41 = v8;
    v42 = a4;
    v43 = v9;
    if (v12 >> 62)
    {
LABEL_42:
      a1 = sub_1B6AB9E60();
    }

    else
    {
      a1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    while (1)
    {
      if (!a1)
      {
        goto LABEL_27;
      }

      v13 = __OFSUB__(a1--, 1);
      if (v13)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1B8C98510](a1, v12);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (a1 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v14 = *(v12 + 32 + 8 * a1);
      }

      v9 = v14;
      if (*&v14[OBJC_IVAR___AAGroup_name] == a2 && *&v14[OBJC_IVAR___AAGroup_name + 8] == a3)
      {
        break;
      }

      v16 = sub_1B6ABA0F0();

      if (v16)
      {

        goto LABEL_29;
      }
    }

LABEL_29:
    v8 = v42;
    swift_beginAccess();
    v28 = v8[21];
    if ((v28 & 0xC000000000000001) != 0)
    {

      v22 = MEMORY[0x1B8C98510](a1, v28);

      v11 = v43;
    }

    else
    {
      v11 = v43;
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (a1 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v22 = *(v28 + 8 * a1 + 32);
    }

    v29 = *&v22[OBJC_IVAR___AAGroup_count];
    v13 = __OFSUB__(v29, 1);
    v30 = v29 - 1;
    if (!v13)
    {
      *&v22[OBJC_IVAR___AAGroup_count] = v30;
      if (v30)
      {
        goto LABEL_35;
      }

      swift_beginAccess();
      v31 = sub_1B6A54738(a1);
      swift_endAccess();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_35;
      }

      v8 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
      v34 = v40;
      v33 = v41;
      *v40 = v8;
      (*(v11 + 13))(v34, *MEMORY[0x1E69E8020], v33);
      v35 = v8;
      v36 = sub_1B6AB9110();
      v37 = *(v11 + 1);
      v11 += 8;
      v37(v34, v33);
      if (v36)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_52;
    }

    goto LABEL_45;
  }

  swift_beginAccess();
  v17 = *(a1 + 168);
  if (v17 >> 62)
  {
LABEL_47:
    if (sub_1B6AB9E60())
    {
LABEL_20:
      v18 = sub_1B6A5657C();
      if (v18)
      {
        goto LABEL_24;
      }

      v19 = *(a1 + 168);
      if (!(v19 >> 62))
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = __OFSUB__(v20, 1);
        result = v20 - 1;
        if (!v13)
        {
LABEL_23:
          v18 = sub_1B6A54738(result);
LABEL_24:
          v22 = v18;
          swift_endAccess();
          v23 = swift_unknownObjectWeakLoadStrong();
          if (v23)
          {
            v24 = v8;
            v25 = *(*(v23 + 48) + OBJC_IVAR___AAAccessQueue_queue);
            *v11 = v25;
            (*(v9 + 13))(v11, *MEMORY[0x1E69E8020], v24);
            v26 = v25;
            v27 = sub_1B6AB9110();
            (*(v9 + 1))(v11, v24);
            if (v27)
            {
LABEL_38:
              sub_1B69C89B8(v22);

              swift_unknownObjectRelease();
              return 0;
            }

            __break(1u);
LABEL_27:

            return 1;
          }

LABEL_35:

          return 0;
        }

LABEL_54:
        __break(1u);
        return result;
      }

LABEL_52:
      v38 = sub_1B6AB9E60();
      v13 = __OFSUB__(v38, 1);
      result = v38 - 1;
      if (!v13)
      {
        goto LABEL_23;
      }

      goto LABEL_54;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  swift_endAccess();
  return 1;
}

uint64_t sub_1B6A54684@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B6AB7E24(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[6 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = *(v9 + 16);
    v12 = *(v9 + 17);
    v13 = *(v9 + 3);
    v14 = v9[5];
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 17) = v12;
    *(a2 + 24) = v13;
    *(a2 + 40) = v14;
    result = memmove(v9, v9 + 6, 48 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B6A54738(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1B6AB7E38(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t Tracker.push(action:identifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_1B6980AE0(0, &qword_1EDBC7FE8, &type metadata for Action, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD890;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  sub_1B6A110A8(v5, v6, v7);
  v9.value._countAndFlagsBits = a2;
  v9.value._object = a3;
  Tracker.push(actions:identifier:)(inited, v9);
  swift_setDeallocating();
  return sub_1B6A5675C(inited + 32);
}

Swift::Void __swiftcall Tracker.push(actions:identifier:)(Swift::OpaquePointer actions, Swift::String_optional identifier)
{
  v3 = v2;
  object = identifier.value._object;
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  v6 = *(v3 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v7 = *(v3 + 176);
  v8 = *(actions._rawValue + 2);
  v9 = *(v7 + 16);
  if (v9 >= v8)
  {
    v10 = v9 - v8;
  }

  else
  {
    v10 = 0;
  }

  v43 = object;
  if (!object)
  {
    rawValue = actions._rawValue;

LABEL_29:
    v32 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v42 = v6;
      v48 = MEMORY[0x1E69E7CC0];
      sub_1B69E4D8C(0, v8, 0);
      v32 = v48;
      v33 = (rawValue + 48);
      do
      {
        v34 = *(v33 - 2);
        v35 = *(v33 - 1);
        v36 = *v33;
        sub_1B6A110A8(v34, v35, *v33);
        v38 = *(v48 + 16);
        v37 = *(v48 + 24);

        if (v38 >= v37 >> 1)
        {
          sub_1B69E4D8C((v37 > 1), v38 + 1, 1);
        }

        v33 += 24;
        *(v48 + 16) = v38 + 1;
        v39 = v48 + 40 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v35;
        *(v39 + 48) = v36;
        *(v39 + 56) = countAndFlagsBits;
        *(v39 + 64) = v43;
        --v8;
      }

      while (v8);
      v6 = v42;
    }

    swift_beginAccess();
    sub_1B69979DC(v32);
    swift_endAccess();
LABEL_36:
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(*(v6 + 16));
    return;
  }

  v11 = v9 - v10;
  if (v9 == v10)
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:
    rawValue = actions._rawValue;
    v22 = sub_1B6A54DB8(v12, actions._rawValue);

    if (v22)
    {
      v23 = 0;
      v24 = ~v11 + v9;
      v25 = (40 * v9 - 40 * v11 + v7 + 64);
      v26 = v43;
      v27 = countAndFlagsBits;
      while (v11)
      {
        if (++v24 >= v9)
        {
          goto LABEL_38;
        }

        if (*v25)
        {
          if (*(v25 - 1) == v27 && *v25 == v26)
          {
            v28 = 1;
          }

          else
          {
            v31 = sub_1B6ABA0F0();
            v27 = countAndFlagsBits;
            v26 = v43;
            v28 = v31 & 1;
          }
        }

        else
        {
          v28 = 0;
        }

        v25 += 5;
        --v11;
        v29 = __OFADD__(v23, v28);
        v23 += v28;
        if (v29)
        {
          goto LABEL_39;
        }
      }

      if (v23 == v8)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_29;
  }

  v47 = MEMORY[0x1E69E7CC0];

  sub_1B69E4DAC(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v41 = v6;
    v12 = v47;
    v40 = v7;
    v14 = (40 * v9 - 40 * v11 + v7 + 48);
    v15 = v9 - v10;
    v44 = v9 - v10;
    v45 = v9;
    while (v10 < v9)
    {
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      sub_1B6A110A8(v16, v17, *v14);
      v20 = *(v47 + 16);
      v19 = *(v47 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B69E4DAC((v19 > 1), v20 + 1, 1);
      }

      *(v47 + 16) = v20 + 1;
      v21 = v47 + 24 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v17;
      *(v21 + 48) = v18;
      ++v10;
      v14 += 40;
      --v15;
      v11 = v44;
      v9 = v45;
      if (!v15)
      {
        v6 = v41;
        v7 = v40;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B6A54BFC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A54C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1B6ABA0F0();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B6A54CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_1B6A571E8(v3, v9);
      sub_1B6A571E8(v4, v8);
      if (v9[0] == v8[0] && v9[1] == v8[1])
      {
        sub_1B6A57244(v8);
        sub_1B6A57244(v9);
      }

      else
      {
        v6 = sub_1B6ABA0F0();
        sub_1B6A57244(v8);
        sub_1B6A57244(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 48;
      v4 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B6A54DB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v8 = *(v3 - 2);
      v7 = *(v3 - 1);
      v9 = *v3;
      if (*v4 > 1u)
      {
        if (*v4 != 2)
        {
          if (v6 | v5)
          {
            result = 0;
            if (v6 ^ 1 | v5)
            {
              if (v9 != 3 || v8 != 2)
              {
                return result;
              }
            }

            else if (v9 != 3 || v8 != 1)
            {
              return result;
            }

            if (v7)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (v9 != 3 || v7 | v8)
            {
              return result;
            }
          }

          goto LABEL_6;
        }

        if (v9 != 2)
        {
          return 0;
        }
      }

      else if (*v4)
      {
        if (v9 != 1)
        {
          return 0;
        }
      }

      else if (*v3)
      {
        return 0;
      }

      if ((v6 != v8 || v5 != v7) && (sub_1B6ABA0F0() & 1) == 0 && (v6 != 42 || v5 != 0xE100000000000000) && (sub_1B6ABA0F0() & 1) == 0 && (v8 != 42 || v7 != 0xE100000000000000) && (sub_1B6ABA0F0() & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

Swift::Void __swiftcall Tracker.popActions()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t Tracker.description.getter()
{
  v1 = v0;
  sub_1B6AB9CA0();

  strcpy(v15, "Tracker(name: ");
  HIBYTE(v15[1]) = -18;
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x6E6564646968;
  }

  MEMORY[0x1B8C97BE0](v2, v3);

  MEMORY[0x1B8C97BE0](0x203A68746170202CLL, 0xE800000000000000);

  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v1[3];
    if (v7)
    {
      v8 = v1[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1B69B5A00(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1B69B5A00((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v5 = &v4[16 * v10];
      *(v5 + 4) = v8;
      *(v5 + 5) = v7;
    }

    v6 = v1[19];

    v1 = v6;
  }

  while (v6);
  sub_1B69B919C(v4);
  sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v11 = sub_1B6AB9290();
  v13 = v12;

  MEMORY[0x1B8C97BE0](v11, v13);

  MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
  return v15[0];
}

BOOL sub_1B6A55214(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(*(a1 + 32) + OBJC_IVAR___AATrackingConsent_consented);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16) == 0;
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t AccessTracker.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t AccessTracker.explicitTime<A>(_:startTime:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v11 = v14;
    (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
    v15 = v14;
    LOBYTE(v14) = sub_1B6AB9110();
    result = (*(v9 + 8))(v11, v8);
    if (v14)
    {
      v16 = *(v13 + 104);

      sub_1B69A0AA0(a1, v16, a2, 0, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AccessTracker.explicitSubmit<A>(_:submitTime:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for EventSubmitResult(0, a5, a6, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v20 - v14);
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + 104);
    memset(v20, 0, sizeof(v20));

    sub_1B69ACABC(a1, v17, 0, a2, v20, a3, a4, a5, a6);

    return sub_1B69840C4(v20, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
  }

  else if (a3)
  {
    sub_1B6A16B30();
    v18 = swift_allocError();
    *v19 = xmmword_1B6AC0310;
    *v15 = v18;
    swift_storeEnumTagMultiPayload();
    a3(v15);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

uint64_t AccessTracker.explicitSubmit<A>(_:submitTime:userInfo:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a2;
  v21 = a3;
  v12 = type metadata accessor for EventSubmitResult(0, a6, a7, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v20 - v14);
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + 104);

    sub_1B69ACABC(a1, v17, 0, v20, v21, a4, a5, a6, a7);
  }

  else if (a4)
  {
    sub_1B6A16B30();
    v18 = swift_allocError();
    *v19 = xmmword_1B6AC0310;
    *v15 = v18;
    swift_storeEnumTagMultiPayload();
    a4(v15);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

uint64_t AccessTracker.delayedSubmit<A>(_:onlyIfTimed:awaiting:completion:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a1;
  v20 = a3;
  v12 = type metadata accessor for EventSubmitResult(0, a6, a7, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v19 - v14);
  result = swift_weakLoadStrong();
  if (result)
  {
    Tracker.delayedSubmit<A>(_:onlyIfTimed:awaiting:completion:)(v19, a2 & 1, v20, a4, a5, a6, a7);
  }

  else if (a4)
  {
    sub_1B6A16B30();
    v17 = swift_allocError();
    *v18 = xmmword_1B6AC0310;
    *v15 = v17;
    swift_storeEnumTagMultiPayload();
    a4(v15);
    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

uint64_t AccessTracker.clearStack<A>(of:includeParentTrackers:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v10 = v12;
    (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
    v13 = v12;
    LOBYTE(v12) = sub_1B6AB9110();
    result = (*(v8 + 8))(v10, v7);
    if (v12)
    {
      sub_1B6A4F7C4(0, 0, a2 & 1, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall AccessTracker.clearDynamicDataIdentifier()()
{
  v0 = sub_1B6AB90F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v3 = v6;
    (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
    v7 = v6;
    LOBYTE(v6) = sub_1B6AB9110();
    (*(v1 + 8))(v3, v0);
    if (v6)
    {
      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t ThresholdError.eventName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrackingConsentError.eventName.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Void __swiftcall AccessTracker.enterGroup(groupName:)(Swift::String groupName)
{
  object = groupName._object;
  countAndFlagsBits = groupName._countAndFlagsBits;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {
    sub_1B6AB8DA0();
    sub_1B6A53B70(countAndFlagsBits, object, v6, 0, 1);

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t AccessTracker.enterGroup(groupName:contentType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B6AB8DA0();
    sub_1B6A53B70(a1, a2, v11, a3, a4 & 1);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

Swift::Void __swiftcall AccessTracker.leaveGroup()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 88);
    v2 = Strong;
    v3 = swift_allocObject();
    v3[3] = 0;
    v3[4] = 0;
    v3[2] = v2;

    sub_1B69877A4(v1, sub_1B6A57A20, v3);
  }
}

Swift::Void __swiftcall AccessTracker.leaveGroup(groupName:)(Swift::String_optional groupName)
{
  object = groupName.value._object;
  countAndFlagsBits = groupName.value._countAndFlagsBits;
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v6 = v8;
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v9 = v8;
    LOBYTE(v8) = sub_1B6AB9110();
    (*(v4 + 8))(v6, v3);
    if (v8)
    {
      sub_1B6A5405C(countAndFlagsBits, object);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B6A560D4()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1B6A53B70(*(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8));
}

void (*sub_1B6A5619C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1B6A564B4(v7);
  v7[9] = sub_1B6A562A8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1B6A56248;
}

void sub_1B6A56248(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B6A562A8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1B6993940(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1B69DFAF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1B69DCB7C(v18, a4 & 1);
    v13 = sub_1B6993940(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1B6A56400;
}

void sub_1B6A56400(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1B69E80C4(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1B6A57710(*(v7 + 48) + 16 * v6);
    sub_1B69AD900(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1B6A564B4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B6A564DC;
}

uint64_t sub_1B6A564E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = v3[2];
    if (v5)
    {
LABEL_3:
      v6 = &v3[6 * v5];
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = *(v6 + 1);
      v10 = v6[3];
      *a1 = *(v6 - 1);
      *(a1 + 16) = v7;
      *(a1 + 17) = v8;
      *(a1 + 24) = v9;
      *(a1 + 40) = v10;
      v3[2] = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1B6AB7E24(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A5657C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1B6AB7E38(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6A565E0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1B8C98510](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A5664C()
{
  result = v0;
  for (i = *(v0 + 152); i; i = *(i + 152))
  {
    result = i;
  }

  return result;
}

uint64_t sub_1B6A56700()
{
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

uint64_t sub_1B6A567B0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B697ED90(319, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B6A56A98(uint64_t a1)
{
  sub_1B6AB8E40();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DelayedToken();
    if (v2 <= 0x3F)
    {
      sub_1B6980AE0(319, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B6A56B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A56BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1B6A56C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B6A56CA0()
{
  v0 = sub_1B6AB92B0();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = [objc_opt_self() processInfo];
    v4 = [v3 environment];

    v5 = sub_1B6AB9210();
    if (*(v5 + 16))
    {
      sub_1B6993940(0xD000000000000010, 0x80000001B6ACB500);
      v2 = v6;
    }

    else
    {

      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1B6A56D9C(void *a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v11 = type metadata accessor for EventSubmitResult(0, a5, a6, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v32 - v13);
  if ((sub_1B69B9904(a1, a2, a5, a6) & 1) == 0)
  {
    return 1;
  }

  result = sub_1B69A31EC(&v39);
  if (v39 == 2)
  {
    __break(1u);
    return result;
  }

  if ((v39 & 1) == 0)
  {
    return 1;
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v16 = sub_1B6AB8F90();
  __swift_project_value_buffer(v16, qword_1EDBCFDA8);
  sub_1B6992B50(a1, a2);
  v17 = sub_1B6AB8F80();
  v18 = sub_1B6AB9900();
  sub_1B69C346C(a1, a2);
  v35 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v36 = v12;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v34 = a3;
    v21 = v20;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v21 = 136446210;
    v22 = sub_1B69A09A4(a1, a2, a5);
    v24 = sub_1B698F63C(v22, v23, &v38);

    *(v21 + 4) = v24;
    _os_log_impl(&dword_1B697C000, v17, v35, "Discarding D&U-only event %{public}s", v21, 0xCu);
    v25 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1B8C99550](v25, -1, -1);
    v26 = v21;
    a3 = v34;
    MEMORY[0x1B8C99550](v26, -1, -1);
  }

  if (a3)
  {
    v27 = sub_1B69A09A4(a1, a2, a5);
    v29 = v28;
    sub_1B6A23E9C();
    v30 = swift_allocError();
    *v31 = v27;
    v31[1] = v29;
    *v14 = v30;
    swift_storeEnumTagMultiPayload();
    a3(v14);
    (*(v36 + 8))(v14, v11);
  }

  return 0;
}

void sub_1B6A5707C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for EventData(0) - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B6A4D508(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), v2 + v8, *(v2 + v9), *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v10 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v10 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1B6A5718C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1B6A56C3C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1B6A57298(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v15 = a1;
    v6 = sub_1B6AB9E60();
    a1 = v15;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = a1 & 0xC000000000000001;
  v16 = a1;
  v8 = a1 + 32;
  do
  {
    v9 = v6;
    if (!v6)
    {
      break;
    }

    --v6;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v7)
    {
      v10 = MEMORY[0x1B8C98510](v9 - 1, v16);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }

      if (v6 >= *(v5 + 16))
      {
        goto LABEL_21;
      }

      v10 = *(v8 + 8 * v6);
    }

    v11 = v10;
    if (*&v10[OBJC_IVAR___AAGroup_name] == a2 && *&v10[OBJC_IVAR___AAGroup_name + 8] == a3)
    {

      return v6;
    }

    v13 = sub_1B6ABA0F0();
  }

  while ((v13 & 1) == 0);
  return v6;
}

void sub_1B6A573F0(uint64_t a1)
{
  if (!qword_1EB95BAC8)
  {
    sub_1B6980AE0(255, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Snapshot(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB95BAC8);
    }
  }
}

uint64_t objectdestroy_189Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_44Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 40))
  {
  }

  v5 = (v3 + 65) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1B6A575D8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(sub_1B6AB8DB0() - 8);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = v1 + ((*(v4 + 80) + 65) & ~*(v4 + 80));

  return a1(v5, v6, v7, v8, v9, v10, v2, v3);
}

uint64_t objectdestroy_205Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6A576C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B6A57770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B6A577D8(uint64_t a1)
{
  if (!qword_1EB95BAD8)
  {
    sub_1B6AB8E40();
    type metadata accessor for Tracker.DelayedEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95BAD8);
    }
  }
}

uint64_t sub_1B6A5784C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1B6A56C3C(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B6A578BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6A57904(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A5797C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

id BridgedIDSessionKind.__allocating_init(kind:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___AAIDSessionKind_kind] = a1;
  v8 = &v7[OBJC_IVAR___AAIDSessionKind_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1B6A57B54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for BridgedIDSessionKind();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___AAIDSessionKind_kind] = a2;
  v7 = &v6[OBJC_IVAR___AAIDSessionKind_name];
  *v7 = 0;
  *(v7 + 1) = 0;
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, sel_init);
  *a3 = result;
  return result;
}

id sub_1B6A57C10(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id BridgedIDSessionKind.init(kind:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___AAIDSessionKind_kind] = a1;
  v8 = &v3[OBJC_IVAR___AAIDSessionKind_name];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t BridgedIDSessionKind.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B69C1678(a1, v8);
  if (!v9)
  {
    sub_1B6981634(v8);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  if (v7 == v1)
  {
    goto LABEL_14;
  }

  if (*&v1[OBJC_IVAR___AAIDSessionKind_kind] != *&v7[OBJC_IVAR___AAIDSessionKind_kind])
  {

    goto LABEL_16;
  }

  v3 = *&v1[OBJC_IVAR___AAIDSessionKind_name + 8];
  v4 = *&v7[OBJC_IVAR___AAIDSessionKind_name + 8];
  if (!v3)
  {

    if (!v4)
    {
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    goto LABEL_16;
  }

  if (v4)
  {
    if (*&v1[OBJC_IVAR___AAIDSessionKind_name] != *&v7[OBJC_IVAR___AAIDSessionKind_name] || v3 != v4)
    {
      LOBYTE(v4) = sub_1B6ABA0F0();
      goto LABEL_12;
    }

LABEL_14:

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

LABEL_12:

  return v4 & 1;
}

uint64_t BridgedIDSessionKind.hash.getter(uint64_t a1, uint64_t a2)
{
  sub_1B6ABA240();
  MEMORY[0x1B8C98A40](*(v2 + OBJC_IVAR___AAIDSessionKind_kind));
  if (*(v2 + OBJC_IVAR___AAIDSessionKind_name + 8))
  {
    sub_1B6ABA210();
    sub_1B6AB9380();
  }

  else
  {
    sub_1B6ABA210();
  }

  return sub_1B6ABA220();
}

id BridgedIDSessionKind.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedIDSessionKind.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *BridgedIDSessionKind.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AAIDSessionKind_kind);
  v6 = *(v1 + OBJC_IVAR___AAIDSessionKind_name);
  v5 = *(v1 + OBJC_IVAR___AAIDSessionKind_name + 8);
  v7 = objc_allocWithZone(ObjectType);
  *&v7[OBJC_IVAR___AAIDSessionKind_kind] = v4;
  v8 = &v7[OBJC_IVAR___AAIDSessionKind_name];
  *v8 = v6;
  *(v8 + 1) = v5;
  v10.receiver = v7;
  v10.super_class = ObjectType;

  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1B6A582F8(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1B69C1678(a1[2] + OBJC_IVAR___AAJSON_value, &v30);
  if (v31)
  {
    sub_1B69979CC(&v30, &v32);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v33 = sub_1B69E0520();
    *&v32 = v8;
    if (v31)
    {
      sub_1B6981634(&v30);
    }
  }

  v9 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v32, v33);
  v10 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v11 = *v3;
  *&v32 = 0;
  v12 = [v9 dataWithJSONObject:v10 options:v11 error:&v32];
  swift_unknownObjectRelease();
  v13 = v32;
  if (v12)
  {
    v14 = sub_1B6AB8C80();
    v16 = v15;

    sub_1B6AB9310();
    v17 = sub_1B6AB92F0();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = a1[1];
      *&v32 = *a1;
      *(&v32 + 1) = v21;

      MEMORY[0x1B8C97BE0](540966432, 0xE400000000000000);
      MEMORY[0x1B8C97BE0](v19, v20);

      sub_1B6993C94(v14, v16);
      return v32;
    }

    else
    {
      v27 = v3[4];
      v28 = v3[5];
      __swift_project_boxed_opaque_existential_1(v3 + 1, v27);
      v22 = (*(v28 + 8))(a1, a2, a3, v27, v28);
      sub_1B6993C94(v14, v16);
    }
  }

  else
  {
    v23 = v13;
    v24 = sub_1B6AB8A70();

    swift_willThrow();
    v25 = v3[4];
    v26 = v3[5];
    __swift_project_boxed_opaque_existential_1(v3 + 1, v25);
    v22 = (*(v26 + 8))(a1, a2, a3, v25, v26);
  }

  return v22;
}

uint64_t sub_1B6A585D4(void *a1)
{
  sub_1B69C1678(a1[2] + OBJC_IVAR___AAJSON_value, &v5);
  if (v6)
  {
    sub_1B69979CC(&v5, v7);
    *&v5 = 0;
    *(&v5 + 1) = 0xE000000000000000;
    MEMORY[0x1B8C97BE0](*a1, a1[1]);
    MEMORY[0x1B8C97BE0](540966432, 0xE400000000000000);
    sub_1B6AB9DF0();
    v2 = v5;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1B6981634(&v5);
    v3 = a1[1];
    *&v7[0] = *a1;
    *(&v7[0] + 1) = v3;

    MEMORY[0x1B8C97BE0](0x6C696E203E7E20, 0xE700000000000000);
    return *&v7[0];
  }

  return v2;
}

uint64_t UploadBatchEventConfig.directory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AAUploadBatchEventConfig_directory;
  v4 = sub_1B6AB8BB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id UploadBatchEventConfig.__allocating_init(batchSize:batchDebugging:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = objc_allocWithZone(v2);
  return UploadBatchEventConfig.init(batchSize:batchDebugging:)(a1, v3);
}

id UploadBatchEventConfig.init(batchSize:batchDebugging:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch] = a1;
  *&v2[OBJC_IVAR___AAUploadBatchEventConfig_maxByteSizePerSessionBatch] = 500000;
  v2[OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled] = 0;
  v2[OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled] = a2;
  *&v2[OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries] = 5;
  v10 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v11 = sub_1B6AB9510();
  if (*(v11 + 16))
  {

    if (*(v11 + 16))
    {

      sub_1B6AB8AF0();

      (*(v7 + 32))(&v2[OBJC_IVAR___AAUploadBatchEventConfig_directory], v9, v6);
      v13.receiver = v2;
      v13.super_class = ObjectType;
      return objc_msgSendSuper2(&v13, sel_init);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id UploadBatchEventConfig.with(maxByteSizePerSessionBatch:)(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1B6AB8BB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch);
  HIDWORD(v15) = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled);
  v9 = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled);
  v10 = *(v1 + OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries);
  v11 = *(v5 + 16);
  v11(v7, v2 + OBJC_IVAR___AAUploadBatchEventConfig_directory, v4);
  v12 = objc_allocWithZone(ObjectType);
  *&v12[OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch] = v8;
  *&v12[OBJC_IVAR___AAUploadBatchEventConfig_maxByteSizePerSessionBatch] = v16;
  v12[OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled] = BYTE4(v15);
  v12[OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled] = v9;
  *&v12[OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries] = v10;
  v11(&v12[OBJC_IVAR___AAUploadBatchEventConfig_directory], v7, v4);
  v17.receiver = v12;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  (*(v5 + 8))(v7, v4);
  return v13;
}

id UploadBatchEventConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UploadBatchEventConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedUserIDStorage.init(accessGroup:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v11 = &type metadata for DefaultUserIDStorage;
  v12 = &protocol witness table for DefaultUserIDStorage;
  v6 = swift_allocObject();
  *&v10 = v6;
  *(v6 + 40) = &type metadata for DefaultKeyValueStore;
  *(v6 + 48) = &off_1F2E74C50;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = [objc_opt_self() standardUserDefaults];
  *(v6 + 56) = 0xD000000000000017;
  *(v6 + 64) = 0x80000001B6AC94D0;
  *(v6 + 88) = 2;
  *(v6 + 72) = 2;
  *(v6 + 80) = v7;
  sub_1B699A784(&v10, v2 + OBJC_IVAR___AAUserIDStorage_storage);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedUserIDStorage.__allocating_init(accessGroup:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  if (a3)
  {
    v10 = a4 & 1 | 2;
  }

  else
  {
    v10 = a4 & 1;
  }

  v16 = &type metadata for DefaultUserIDStorage;
  v17 = &protocol witness table for DefaultUserIDStorage;
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 40) = &type metadata for DefaultKeyValueStore;
  *(v11 + 48) = &off_1F2E74C50;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = [objc_opt_self() standardUserDefaults];
  *(v11 + 56) = 0xD000000000000017;
  *(v11 + 64) = 0x80000001B6AC94D0;
  *(v11 + 88) = 2;
  *(v11 + 72) = v10;
  *(v11 + 80) = v12;
  sub_1B699A784(&v15, v9 + OBJC_IVAR___AAUserIDStorage_storage);
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedUserIDStorage.init(accessGroup:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v10 = a4 & 1 | 2;
  }

  else
  {
    v10 = a4 & 1;
  }

  v16 = &type metadata for DefaultUserIDStorage;
  v17 = &protocol witness table for DefaultUserIDStorage;
  v11 = swift_allocObject();
  *&v15 = v11;
  *(v11 + 40) = &type metadata for DefaultKeyValueStore;
  *(v11 + 48) = &off_1F2E74C50;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = [objc_opt_self() standardUserDefaults];
  *(v11 + 56) = 0xD000000000000017;
  *(v11 + 64) = 0x80000001B6AC94D0;
  *(v11 + 88) = 2;
  *(v11 + 72) = v10;
  *(v11 + 80) = v12;
  sub_1B699A784(&v15, v4 + OBJC_IVAR___AAUserIDStorage_storage);
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedUserIDStorage.__allocating_init(accessGroup:legacyStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B6A59C8C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id BridgedUserIDStorage.init(accessGroup:legacyStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B6A59C8C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

id BridgedUserIDStorage.__allocating_init(accessGroup:legacyStorage:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v20[3] = &type metadata for ProxyMigrationUserIDStorage;
  v20[4] = &off_1F2E7BA80;
  v20[0] = a3;
  if (a4)
  {
    v12 = a5 & 1 | 2;
  }

  else
  {
    v12 = a5 & 1;
  }

  v22 = &type metadata for MigrationUserIDStorage;
  v23 = &protocol witness table for MigrationUserIDStorage;
  v13 = swift_allocObject();
  *&v21 = v13;
  sub_1B6982544(v20, (v13 + 7));
  v13[5] = &type metadata for DefaultUserIDStorage;
  v13[6] = &protocol witness table for DefaultUserIDStorage;
  v14 = swift_allocObject();
  v13[2] = v14;
  *(v14 + 40) = &type metadata for DefaultKeyValueStore;
  *(v14 + 48) = &off_1F2E74C50;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();
  swift_unknownObjectRetain();
  v16 = [v15 standardUserDefaults];
  *(v14 + 56) = 0xD000000000000017;
  *(v14 + 64) = 0x80000001B6AC94D0;
  *(v14 + 88) = 2;
  *(v14 + 72) = v12;
  *(v14 + 80) = v16;
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_1B699A784(&v21, v11 + OBJC_IVAR___AAUserIDStorage_storage);
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  swift_unknownObjectRelease();
  return v17;
}

id BridgedUserIDStorage.init(accessGroup:legacyStorage:syncRequiresDiagnosticConsent:syncRequiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v5 = sub_1B6A59E04(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

id BridgedUserIDStorage.__allocating_init(newStorage:legacyStorage:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AAUserIDStorage_storage];
  *(v6 + 3) = &type metadata for MigrationUserIDStorage;
  *(v6 + 4) = &protocol witness table for MigrationUserIDStorage;
  v7 = swift_allocObject();
  *v6 = v7;
  v7[5] = &type metadata for ProxyUserIDStorage;
  v7[6] = &off_1F2E7DAA8;
  v7[2] = a1;
  v7[10] = &type metadata for ProxyMigrationUserIDStorage;
  v7[11] = &off_1F2E7BA80;
  v7[7] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedUserIDStorage.init(newStorage:legacyStorage:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AAUserIDStorage_storage];
  *(v6 + 3) = &type metadata for MigrationUserIDStorage;
  *(v6 + 4) = &protocol witness table for MigrationUserIDStorage;
  v7 = swift_allocObject();
  *v6 = v7;
  v7[5] = &type metadata for ProxyUserIDStorage;
  v7[6] = &off_1F2E7DAA8;
  v7[2] = a1;
  v7[10] = &type metadata for ProxyMigrationUserIDStorage;
  v7[11] = &off_1F2E7BA80;
  v7[7] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedUserIDStorage.__allocating_init(storage:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___AAUserIDStorage_storage];
  *(v4 + 3) = &type metadata for ProxyUserIDStorage;
  *(v4 + 4) = &off_1F2E7DAA8;
  *v4 = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id BridgedUserIDStorage.init(storage:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___AAUserIDStorage_storage];
  *(v4 + 3) = &type metadata for ProxyUserIDStorage;
  *(v4 + 4) = &off_1F2E7DAA8;
  *v4 = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id BridgedUserIDStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserIDStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6A59C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v14[3] = &type metadata for ProxyMigrationUserIDStorage;
  v14[4] = &off_1F2E7BA80;
  v14[0] = a3;
  v16 = &type metadata for MigrationUserIDStorage;
  v17 = &protocol witness table for MigrationUserIDStorage;
  v8 = swift_allocObject();
  *&v15 = v8;
  sub_1B6982544(v14, (v8 + 7));
  v8[5] = &type metadata for DefaultUserIDStorage;
  v8[6] = &protocol witness table for DefaultUserIDStorage;
  v9 = swift_allocObject();
  v8[2] = v9;
  *(v9 + 40) = &type metadata for DefaultKeyValueStore;
  *(v9 + 48) = &off_1F2E74C50;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  v11 = [v10 standardUserDefaults];
  *(v9 + 56) = 0xD000000000000017;
  *(v9 + 64) = 0x80000001B6AC94D0;
  *(v9 + 88) = 2;
  *(v9 + 72) = 2;
  *(v9 + 80) = v11;
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1B699A784(&v15, v3 + OBJC_IVAR___AAUserIDStorage_storage);
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_1B6A59E04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = &type metadata for ProxyMigrationUserIDStorage;
  v19[4] = &off_1F2E7BA80;
  v19[0] = a3;
  if (a4)
  {
    v12 = a5 & 1 | 2;
  }

  else
  {
    v12 = a5 & 1;
  }

  v21 = &type metadata for MigrationUserIDStorage;
  v22 = &protocol witness table for MigrationUserIDStorage;
  v13 = swift_allocObject();
  *&v20 = v13;
  sub_1B6982544(v19, (v13 + 7));
  v13[5] = &type metadata for DefaultUserIDStorage;
  v13[6] = &protocol witness table for DefaultUserIDStorage;
  v14 = swift_allocObject();
  v13[2] = v14;
  *(v14 + 40) = &type metadata for DefaultKeyValueStore;
  *(v14 + 48) = &off_1F2E74C50;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = objc_opt_self();
  swift_unknownObjectRetain();
  v16 = [v15 standardUserDefaults];
  *(v14 + 56) = 0xD000000000000017;
  *(v14 + 64) = 0x80000001B6AC94D0;
  *(v14 + 88) = 2;
  *(v14 + 72) = v12;
  *(v14 + 80) = v16;
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_1B699A784(&v20, v5 + OBJC_IVAR___AAUserIDStorage_storage);
  v18.receiver = v5;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1B6A5A054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t *sub_1B6A5A0AC()
{

  v1 = *(*v0 + 96);
  v2 = sub_1B6AB9B30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1B6A5A15C()
{
  sub_1B6A5A0AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A5A1C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B6A5A368(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1B6A5A208()
{
  result = qword_1EB95BB98;
  if (!qword_1EB95BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BB98);
  }

  return result;
}

unint64_t sub_1B6A5A260()
{
  result = qword_1EB95BBA0;
  if (!qword_1EB95BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BBA0);
  }

  return result;
}

unint64_t sub_1B6A5A2B8()
{
  result = qword_1EB95BBA8;
  if (!qword_1EB95BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BBA8);
  }

  return result;
}

unint64_t sub_1B6A5A310()
{
  result = qword_1EB95BBB0;
  if (!qword_1EB95BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95BBB0);
  }

  return result;
}

uint64_t sub_1B6A5A368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id BridgedRawEventProperty.__allocating_init(dataName:requirement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AARawEventProperty_dataName];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___AARawEventProperty_requirement] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedRawEventProperty.init(dataName:requirement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AARawEventProperty_dataName];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR___AARawEventProperty_requirement] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedRawEventProperty.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRawEventProperty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedRotationMode.__allocating_init(mode:namespaceName:startDate:cachedRotations:resetCount:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v42 - v15;
  v46 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v46);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v7;
  v19 = objc_allocWithZone(v7);
  v48 = a6;
  v49 = a3;
  if (a1 == 1)
  {
    v43 = v19;
    sub_1B698114C(0);
    v21 = *(v20 + 48);
    v42[0] = *(v20 + 64);
    v22 = sub_1B6AB8E40();
    v23 = *(*(v22 - 8) + 16);
    v42[1] = (v22 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v44 = v22;
    v45 = a2;
    v23(v18, a2);
    v24 = sub_1B6AB8DB0();
    v25 = *(v24 - 8);
    v26 = *(v25 + 16);
    v26(&v18[v21], a3, v24);
    sub_1B69B20C4(a6, v16);
    v27 = *(v25 + 48);
    if (v27(v16, 1, v24) == 1)
    {
      v26(&v18[v42[0]], a3, v24);
      if (v27(v16, 1, v24) != 1)
      {
        sub_1B69E9EBC(v16);
      }
    }

    else
    {
      (*(v25 + 32))(&v18[v42[0]], v16, v24);
    }

    swift_storeEnumTagMultiPayload();
    v29 = v43;
    sub_1B6A5B000(v18, v43 + OBJC_IVAR___AARotationMode_mode);
    v34 = v44;
    v35 = v45;
    v39 = v48;
    v37 = v49;
    goto LABEL_9;
  }

  v44 = a4;
  v45 = a5;
  if (!a1)
  {
    v28 = &v19[OBJC_IVAR___AARotationMode_mode];
    v29 = v19;
    sub_1B698103C(0);
    v31 = v30[12];
    v32 = v30[16];
    v33 = v30[20];
    v34 = sub_1B6AB8E40();
    (*(*(v34 - 8) + 16))(v28, a2, v34);
    v24 = sub_1B6AB8DB0();
    v35 = a2;
    v36 = &v28[v31];
    v37 = v49;
    (*(*(v24 - 8) + 16))(v36, v49, v24);
    v38 = v45;
    *&v28[v32] = v44;
    *&v28[v33] = v38;
    swift_storeEnumTagMultiPayload();
    v39 = v48;
LABEL_9:
    v50.receiver = v29;
    v50.super_class = v47;
    v40 = objc_msgSendSuper2(&v50, sel_init);
    sub_1B69E9EBC(v39);
    sub_1B6AB8DB0();
    (*(*(v24 - 8) + 8))(v37, v24);
    sub_1B6AB8E40();
    (*(*(v34 - 8) + 8))(v35, v34);
    return v40;
  }

  v51 = a1;
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

id BridgedRotationMode.init(mode:namespaceName:startDate:cachedRotations:resetCount:lastRotation:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v46 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a6;
  v49 = a3;
  if (a1 == 1)
  {
    v44 = v7;
    sub_1B698114C(0);
    v20 = *(v19 + 64);
    v41 = *(v19 + 48);
    v42 = v20;
    v21 = sub_1B6AB8E40();
    v22 = *(*(v21 - 8) + 16);
    v43 = (v21 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v45 = a2;
    v22(v18, a2, v21);
    v23 = sub_1B6AB8DB0();
    v24 = a6;
    v25 = *(v23 - 8);
    v26 = *(v25 + 16);
    v26(&v18[v41], a3, v23);
    sub_1B69B20C4(v24, v16);
    v27 = *(v25 + 48);
    if (v27(v16, 1, v23) == 1)
    {
      v26(&v18[v42], v49, v23);
      if (v27(v16, 1, v23) != 1)
      {
        sub_1B69E9EBC(v16);
      }
    }

    else
    {
      (*(v25 + 32))(&v18[v42], v16, v23);
    }

    swift_storeEnumTagMultiPayload();
    v32 = v44;
    sub_1B6A5B000(v18, &v44[OBJC_IVAR___AARotationMode_mode]);
    v34 = v45;
    v38 = v48;
    v36 = v49;
    goto LABEL_9;
  }

  v44 = a4;
  v45 = a5;
  if (!a1)
  {
    v28 = &v7[OBJC_IVAR___AARotationMode_mode];
    sub_1B698103C(0);
    v30 = v29[12];
    v31 = v29[16];
    v32 = v7;
    v33 = v29[20];
    v21 = sub_1B6AB8E40();
    (*(*(v21 - 8) + 16))(v28, a2, v21);
    v23 = sub_1B6AB8DB0();
    v34 = a2;
    v35 = &v28[v30];
    v36 = v49;
    (*(*(v23 - 8) + 16))(v35, v49, v23);
    v37 = v45;
    *&v28[v31] = v44;
    *&v28[v33] = v37;
    swift_storeEnumTagMultiPayload();
    v38 = v48;
LABEL_9:
    v50.receiver = v32;
    v50.super_class = ObjectType;
    v39 = objc_msgSendSuper2(&v50, sel_init);
    sub_1B69E9EBC(v38);
    sub_1B6AB8DB0();
    (*(*(v23 - 8) + 8))(v36, v23);
    sub_1B6AB8E40();
    (*(*(v21 - 8) + 8))(v34, v21);
    return v39;
  }

  v51 = a1;
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

uint64_t sub_1B6A5B000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id BridgedRotationMode.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v79 = type metadata accessor for RotationMode(0);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69867A4(0, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - v10;
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  v82 = v12;
  v83 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v70 - v17;
  sub_1B69867A4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_1B6AB8E40();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v84 = &v70 - v26;
  v27 = sub_1B6AB92B0();
  v80 = [a1 decodeInt64ForKey_];

  sub_1B6986438(0, &qword_1EB95BBD0, 0x1E696AFB0);
  v28 = sub_1B6AB9AF0();
  if (!v28 || (v29 = v28, (v22[7])(v20, 1, 1, v21), sub_1B6A5BC9C(&qword_1EB95BBD8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D8]), sub_1B6AB9EE0(), v29, (v22[6])(v20, 1, v21) == 1))
  {

LABEL_14:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v75 = v2;
  v30 = v22[4];
  v30(v25, v20, v21);
  v31 = v84;
  v30(v84, v25, v21);
  sub_1B6986438(0, &qword_1EB95BBE0, 0x1E695DF00);
  v32 = sub_1B6AB9AF0();
  if (!v32)
  {
    (v22[1])(v31, v21);

    goto LABEL_14;
  }

  v33 = v32;
  v34 = a1;
  v35 = v82;
  v36 = v83;
  v74 = *(v83 + 56);
  v74(v11, 1, 1, v82);
  sub_1B6A5BC9C(&qword_1EB95BBE8, MEMORY[0x1E6969530], MEMORY[0x1E6969568]);
  sub_1B6AB9EE0();

  v37 = *(v36 + 48);
  if (v37(v11, 1, v35) == 1)
  {
    (v22[1])(v84, v21);

    goto LABEL_14;
  }

  v73 = v37;
  v38 = v11;
  v39 = *(v36 + 32);
  v39(v16, v38, v35);
  v39(v81, v16, v35);
  v40 = v34;
  if (v80 == 1)
  {
    v71 = v39;
    v80 = v22;
    v54 = sub_1B6AB92B0();
    v55 = [v34 decodeObjectForKey_];

    if (v55)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
    }

    v58 = v77;
    v57 = v78;
    v89[0] = v87;
    v89[1] = v88;
    v59 = v82;
    v72 = v40;
    if (*(&v88 + 1))
    {
      v60 = swift_dynamicCast() ^ 1;
      v61 = v57;
    }

    else
    {
      sub_1B6A5BCE4(v89, sub_1B69FA1E4);
      v61 = v57;
      v60 = 1;
    }

    v74(v61, v60, 1, v59);
    sub_1B698114C(0);
    v63 = *(v62 + 48);
    v82 = *(v62 + 64);
    v80[2](v58, v84, v21);
    v64 = *(v83 + 16);
    v65 = v58 + v63;
    v52 = v81;
    v64(v65, v81, v59);
    v66 = v57;
    v67 = v76;
    sub_1B69B20C4(v66, v76);
    v68 = v73;
    if (v73(v67, 1, v59) == 1)
    {
      v64(v58 + v82, v52, v59);
      v51 = v59;
      if (v68(v67, 1, v59) != 1)
      {
        sub_1B69E9EBC(v67);
      }
    }

    else
    {
      v71(v58 + v82, v67, v59);
      v51 = v59;
    }

    swift_storeEnumTagMultiPayload();
    v43 = v75;
    sub_1B6A5B000(v58, &v75[OBJC_IVAR___AARotationMode_mode]);
    sub_1B69E9EBC(v78);
    v49 = v83;
    v48 = v84;
    v22 = v80;
    v53 = v72;
  }

  else
  {
    if (v80)
    {

      (*(v83 + 8))(v81, v35);
      (v22[1])(v84, v21);
      goto LABEL_14;
    }

    v41 = sub_1B6AB92B0();
    v80 = [v34 decodeInt64ForKey_];

    v42 = sub_1B6AB92B0();
    v78 = [v34 decodeInt64ForKey_];

    v43 = v75;
    v44 = &v75[OBJC_IVAR___AARotationMode_mode];
    sub_1B698103C(0);
    v46 = v45[12];
    v47 = v45[16];
    v77 = v45[20];
    v48 = v84;
    v22[2](v44, v84, v21);
    v49 = v83;
    v50 = &v44[v46];
    v52 = v81;
    v51 = v82;
    (*(v83 + 16))(v50, v81, v82);
    *&v44[v47] = v80;
    *&v44[v77] = v78;
    v53 = v34;
    swift_storeEnumTagMultiPayload();
  }

  v86.receiver = v43;
  v86.super_class = ObjectType;
  v69 = objc_msgSendSuper2(&v86, sel_init);

  (*(v49 + 8))(v52, v51);
  (v22[1])(v48, v21);
  return v69;
}

uint64_t sub_1B6A5BC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B6A5BCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall BridgedRotationMode.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v57 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v57 - v6;
  v66 = sub_1B6AB8E40();
  v7 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RotationMode(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  v58 = OBJC_IVAR___AARotationMode_mode;
  sub_1B69E9DFC(v1 + OBJC_IVAR___AARotationMode_mode, &v57 - v13);
  v15 = swift_getEnumCaseMultiPayload() == 1;
  v63 = v2;
  if (v15)
  {
    sub_1B698114C(0);
    v17 = *(v16 + 48);
    v18 = v3;
    v19 = *(v3 + 8);
    v19(&v14[*(v16 + 64)], v2);
    v61 = v19;
    v19(&v14[v17], v2);
    v3 = v18;
    v22 = 1;
  }

  else
  {
    sub_1B698103C(0);
    v21 = &v14[*(v20 + 48)];
    v61 = *(v3 + 8);
    v61(v21, v2);
    v22 = 0;
  }

  v23 = v7;
  v24 = *(v7 + 8);
  v25 = v66;
  v59 = v7 + 8;
  v60 = v24;
  v24(v14, v66);
  v26 = sub_1B6AB92B0();
  v27 = isa;
  [(objc_class *)isa encodeInteger:v22 forKey:v26];

  sub_1B69E9DFC(v1 + v58, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B698114C(0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    v31 = v62;
    (*(v23 + 32))(v62, v12, v25);
    v32 = v25;
    v33 = *(v3 + 32);
    v34 = &v12[v29];
    v35 = v65;
    v36 = v63;
    v33(v65, v34, v63);
    v37 = &v12[v30];
    v38 = v36;
    v39 = v57;
    v33(v57, v37, v36);
    v40 = sub_1B6AB8DE0();
    v41 = sub_1B6AB92B0();
    [(objc_class *)v27 encodeObject:v40 forKey:v41];

    v42 = sub_1B6AB8D20();
    v43 = sub_1B6AB92B0();
    [(objc_class *)v27 encodeObject:v42 forKey:v43];

    v44 = sub_1B6AB8D20();
    v45 = sub_1B6AB92B0();
    [(objc_class *)v27 encodeObject:v44 forKey:v45];

    v46 = v61;
    v61(v39, v38);
    v47 = v32;
  }

  else
  {
    sub_1B698103C(0);
    v49 = *&v12[v48[16]];
    v50 = v48[12];
    v58 = *&v12[v48[20]];
    v31 = v62;
    (*(v7 + 32))(v62, v12, v25);
    v35 = v65;
    v38 = v63;
    (*(v3 + 32))(v65, &v12[v50], v63);
    v51 = sub_1B6AB8DE0();
    v52 = sub_1B6AB92B0();
    [(objc_class *)v27 encodeObject:v51 forKey:v52];

    v53 = sub_1B6AB8D20();
    v54 = sub_1B6AB92B0();
    [(objc_class *)v27 encodeObject:v53 forKey:v54];

    v55 = sub_1B6AB92B0();
    [v27 &selRef:v49 timeEventType:v55 submitAndRestartWithSession:? startTime:? + 7];

    v56 = sub_1B6AB92B0();
    [v27 &selRef:v58 timeEventType:v56 submitAndRestartWithSession:? startTime:? + 7];

    v47 = v66;
    v46 = v61;
  }

  v46(v35, v38);
  v60(v31, v47);
}

id BridgedRotationMode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRotationMode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BridgedRotationMode(uint64_t a1)
{
  result = qword_1EB95BC50;
  if (!qword_1EB95BC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6A5C578(uint64_t a1)
{
  result = type metadata accessor for RotationMode(319);
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

id sub_1B6A5C648()
{
  v0 = type metadata accessor for BridgedSessionGroup();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___AASessionGroup_groupName];
  *v2 = 0x746C7561666564;
  *(v2 + 1) = 0xE700000000000000;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EDBC8A60 = result;
  return result;
}

id BridgedSessionGroup.__allocating_init(groupName:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AASessionGroup_groupName];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static BridgedSessionGroup.default.getter()
{
  if (qword_1EDBC8A58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8A60;

  return v1;
}

uint64_t BridgedSessionGroup.groupName.getter()
{
  v1 = (v0 + OBJC_IVAR___AASessionGroup_groupName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id BridgedSessionGroup.init(groupName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AASessionGroup_groupName];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedSessionGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionGroup.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A5CCAC()
{
  result = sub_1B699F46C(10, 0xE100000000000000);
  qword_1EDBCB6E0 = result;
  *algn_1EDBCB6E8 = v1;
  return result;
}

uint64_t sub_1B6A5CCD8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = v5 >> 5;
  if (v5 >> 5 <= 1)
  {
    if (!v6)
    {
      sub_1B6AB9CA0();

      v17 = 0x7461427974706D65;
      MEMORY[0x1B8C97BE0](v1, v2);
      MEMORY[0x1B8C97BE0](0x203A61746164202CLL, 0xE800000000000000);
      sub_1B69A97A4(v4, v3);
      sub_1B69A9B10();
      sub_1B699918C();
      v8 = sub_1B6AB9290();
      v10 = v9;

      MEMORY[0x1B8C97BE0](v8, v10);

      MEMORY[0x1B8C97BE0](0xD000000000000013, 0x80000001B6ACC1B0);
      if (v5)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v5)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      MEMORY[0x1B8C97BE0](v11, v12);

      return v17;
    }

    sub_1B6AB9CA0();

    v17 = 0xD000000000000027;
    v7 = sub_1B6ABA080();
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    sub_1B6AB9CA0();

    v17 = 0xD000000000000026;
    MEMORY[0x1B8C97BE0](v1, v2);
LABEL_19:
    MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
    return v17;
  }

  if (v6 == 3)
  {
    sub_1B6AB9CA0();

    v17 = 0xD000000000000018;
    v7 = sub_1B6AB9220();
LABEL_18:
    MEMORY[0x1B8C97BE0](v7);

    goto LABEL_19;
  }

  if (!(v4 | v2 | v1 | v3) && v5 == 128)
  {
    return 0xD000000000000012;
  }

  v14 = v4 | v2 | v3;
  if (v5 == 128 && v1 == 1 && !v14)
  {
    return 0xD000000000000017;
  }

  v16 = v1 == 2 && v14 == 0;
  if (v5 == 128 && v16)
  {
    return 0x736F6C43656C6966;
  }

  else
  {
    return 0x656C69466F6ELL;
  }
}

uint64_t sub_1B6A5D064@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled) == 1)
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    (*(v5 + 16))(v4, v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  sub_1B698C128();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

uint64_t sub_1B6A5D130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t *a10)
{
  v127 = a8;
  v128 = a4;
  LODWORD(v133) = a7;
  v132 = a6;
  v129 = a5;
  v130 = a1;
  v147 = *MEMORY[0x1E69E9840];
  sub_1B697F028(0, &qword_1EDBCBCA8, type metadata accessor for Batch, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (&v115 - v15);
  v16 = type metadata accessor for Batch(0);
  v121 = *(v16 - 8);
  v122 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1B6AB90C0();
  v18 = *(v137 - 8);
  v19 = MEMORY[0x1EEE9AC00](v137);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v115 - v22;
  v24 = a10[1];
  v131 = *a10;
  v126 = v24;
  v134 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  os_unfair_lock_lock_with_options();
  sub_1B6AB90B0();
  v124 = a3;
  v125 = a2;
  v25 = sub_1B699D580(a2, a3);
  v136 = v10;
  v26 = (v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v27 = *(v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v28 = *(v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v29 = __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v27);
  v30 = v135;
  (*(v28 + 32))(&v145, v25, v27, v28);
  if (!v30)
  {
    v31 = v131;
    v29 = v132;
    v32 = v133;
    v116 = 0;
    v117 = v26;
    v115 = v21;
    v135 = v25;
    v118 = v18;
    v119 = v23;
    if (v146 != 1)
    {
      sub_1B6A60A98();
      swift_allocError();
      *v51 = 2;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x80;
      swift_willThrow();

      (*(v118 + 8))(v119, v137);
      goto LABEL_11;
    }

    v33 = v136;
    if (v145)
    {
      v34 = v130;
      v36 = v116;
      v35 = v117;
    }

    else
    {
      v53 = v117;
      sub_1B6982544(v117, &v141);
      v55 = v143;
      v54 = v144;
      v56 = __swift_project_boxed_opaque_existential_1(&v141, v143);
      v57 = v33[2];
      if (v32)
      {
        v29 = *(v33 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_contentType);
      }

      v139 = v31;
      v140 = v126;
      v58 = v127;
      v59 = v29;
      v29 = v56;
      v60 = v116;
      (*(v54 + 56))(v135, v127, v57, v59, v128, v129, &v139, v55, v54);
      v36 = v60;
      if (v60)
      {
        (*(v118 + 8))(v119, v137);

        __swift_destroy_boxed_opaque_existential_1(&v141);
        goto LABEL_12;
      }

      __swift_destroy_boxed_opaque_existential_1(&v141);
      sub_1B6982544(v53, &v141);
      v80 = v143;
      v81 = v144;
      __swift_project_boxed_opaque_existential_1(&v141, v143);
      v82 = *(v58 + *(type metadata accessor for Session(0) + 32));
      sub_1B697F028(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B6ABF500;
      *(inited + 32) = 1701869940;
      v84 = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 0x6E6F6973736573;
      *(inited + 56) = 0xE700000000000000;
      *(inited + 72) = v84;
      *(inited + 80) = 1635017060;
      *(inited + 88) = 0xE400000000000000;
      sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
      *(inited + 120) = v85;
      *(inited + 96) = v82;

      sub_1B69B4888(inited);
      swift_setDeallocating();
      sub_1B69B4824();
      swift_arrayDestroy();
      v86 = objc_opt_self();
      v87 = sub_1B6AB91F0();

      v138[0] = 0;
      v88 = [v86 dataWithJSONObject:v87 options:0 error:v138];

      v89 = v138[0];
      v90 = v137;
      v91 = v119;
      if (!v88)
      {
        v29 = v89;
        sub_1B6AB8A70();

        swift_willThrow();

        (*(v118 + 8))(v91, v90);
        __swift_destroy_boxed_opaque_existential_1(&v141);
        goto LABEL_11;
      }

      v92 = v80;
      v93 = sub_1B6AB8C80();
      v95 = v94;

      v139 = v93;
      v140 = v95;
      if (qword_1EDBCB070 != -1)
      {
        swift_once();
      }

      sub_1B6AB8CA0();
      v96 = v139;
      v97 = v140;
      v98 = v135;
      (*(v81 + 8))(v139, v140, v135, v92, v81);
      v107 = MEMORY[0x1E69E6158];
      sub_1B6993C94(v96, v97);
      __swift_destroy_boxed_opaque_existential_1(&v141);
      v108 = v117[3];
      v109 = v117[4];
      v110 = v117;
      __swift_project_boxed_opaque_existential_1(v117, v108);
      v141 = 1;
      v142 = 1;
      (*(v109 + 40))(v98, &v141, v108, v109);
      v33 = v136;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v111 = qword_1EDBCCB28;
      v112 = sub_1B6AB98D0();
      sub_1B69990B4(0);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1B6ABD890;
      *(v113 + 56) = v107;
      *(v113 + 64) = sub_1B698CEC0();
      v114 = v124;
      *(v113 + 32) = v125;
      *(v113 + 40) = v114;

      sub_1B6AB8F70("Upload dropbox created new file with session data, identifier=%@", 64, 2, &dword_1B697C000, v111, v112, v113);

      v34 = v130;
      v35 = v110;
    }

    sub_1B6982544(v35, &v141);
    v37 = v143;
    v38 = v144;
    v136 = __swift_project_boxed_opaque_existential_1(&v141, v143);
    sub_1B697F028(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
    v39 = swift_initStackObject();
    v133 = xmmword_1B6ABF500;
    *(v39 + 16) = xmmword_1B6ABF500;
    *(v39 + 32) = 1701869940;
    v40 = MEMORY[0x1E69E6158];
    *(v39 + 40) = 0xE400000000000000;
    *(v39 + 48) = 0x746E657665;
    *(v39 + 56) = 0xE500000000000000;
    *(v39 + 72) = v40;
    *(v39 + 80) = 1635017060;
    *(v39 + 88) = 0xE400000000000000;
    sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
    *(v39 + 120) = v41;
    *(v39 + 96) = v34;

    sub_1B69B4888(v39);
    swift_setDeallocating();
    sub_1B69B4824();
    swift_arrayDestroy();
    v42 = objc_opt_self();
    v43 = sub_1B6AB91F0();

    v145 = 0;
    v44 = [v42 dataWithJSONObject:v43 options:0 error:&v145];

    v45 = v145;
    if (!v44)
    {
      v29 = v45;
      v61 = sub_1B6AB8A70();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(&v141);
      v141 = v61;
      v62 = v61;
      sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
      v63 = swift_dynamicCast();
      v64 = v119;
      v65 = v135;
      if (!v63 || (v139 & 1) != 0)
      {
        (*(v118 + 8))(v119, v137);

        goto LABEL_12;
      }

      v99 = v137;

      v100 = *(v65 + 16);
      v101 = *(v65 + 24);

      sub_1B6A5DF98(v100, v101);

      (*(v118 + 8))(v64, v99);

LABEL_37:
      v29 = 1;
      goto LABEL_12;
    }

    v46 = sub_1B6AB8C80();
    v48 = v47;

    v139 = v46;
    v140 = v48;
    if (qword_1EDBCB070 != -1)
    {
      swift_once();
    }

    sub_1B6AB8CA0();
    v49 = v139;
    v50 = v140;
    (*(v38 + 8))(v139, v140, v135, v37, v38);
    sub_1B6993C94(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(&v141);
    v66 = v115;
    sub_1B6AB90B0();
    v67 = sub_1B6AB90A0();
    v68 = *(v118 + 8);
    v68(v66, v137);
    v69 = sub_1B6AB90A0();
    if (v67 < v69)
    {
      __break(1u);
    }

    else
    {
      v136 = v68;
      v11 = (v67 - v69) / 1000000.0;
      v36 = v125;
      if (qword_1EDBCCEE0 == -1)
      {
LABEL_22:
        v70 = qword_1EDBCCB28;
        v71 = sub_1B6AB98D0();
        sub_1B69990B4(0);
        v72 = swift_allocObject();
        *(v72 + 16) = v133;
        *(v72 + 56) = MEMORY[0x1E69E6158];
        *(v72 + 64) = sub_1B698CEC0();
        v73 = MEMORY[0x1E69E63B0];
        *(v72 + 32) = v36;
        v74 = v124;
        *(v72 + 40) = v124;
        v75 = MEMORY[0x1E69E6438];
        *(v72 + 96) = v73;
        *(v72 + 104) = v75;
        *(v72 + 72) = v11;

        sub_1B6AB8F70("Upload dropbox appended event to file, identifier=%@, elapsedTime=%0.2fms", 73, 2, &dword_1B697C000, v70, v71, v72);
        v76 = v74;
        v77 = v125;

        sub_1B6A5E174(v77, v76);
        if (*(*(v33 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_transparencyLogging) + OBJC_IVAR___AATransparencyLogging_isEnabled) == 1)
        {
          v78 = v77;
          v79 = v123;
          sub_1B69AE29C(v78, v76, v123);
          if ((*(v121 + 48))(v79, 1, v122) == 1)
          {
            sub_1B698E840(v79, &qword_1EDBCBCA8, type metadata accessor for Batch);
          }

          else
          {
            v102 = v79;
            v103 = v120;
            sub_1B69B6BF4(v102, v120, type metadata accessor for Batch);
            sub_1B6A287EC(v103);
            sub_1B69B6CC4(v103, type metadata accessor for Batch);
          }
        }

        if ((a9 & 1) == 0 || (v104 = v33[3], *(v135 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount) < *(v104 + OBJC_IVAR___AAUploadBatchEventConfig_maxEventsPerSessionBatch)) && *(v135 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize) < *(v104 + OBJC_IVAR___AAUploadBatchEventConfig_maxByteSizePerSessionBatch))
        {
          (v136)(v119, v137);

          v29 = 0;
          goto LABEL_12;
        }

        v105 = *(v135 + 16);
        v106 = *(v135 + 24);

        sub_1B6A5DF98(v105, v106);

        (v136)(v119, v137);
        goto LABEL_37;
      }
    }

    swift_once();
    goto LABEL_22;
  }

  (*(v18 + 8))(v23, v137);

LABEL_11:
  v33 = v136;
LABEL_12:
  os_unfair_lock_unlock(*(*(v33 + v134) + 16));
  return v29;
}

uint64_t sub_1B6A5DF98(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B699D580(a1, a2);
  v6 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v7 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v6);
  (*(v7 + 24))(v5, v6, v7);

  return sub_1B6A60868(v2, a1, a2);
}

uint64_t sub_1B6A5E174(uint64_t a1, char *a2)
{
  v65 = a2;
  v69 = *MEMORY[0x1E69E9840];
  sub_1B697F028(0, &qword_1EDBCBCA8, type metadata accessor for Batch, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v61 - v4);
  v6 = sub_1B6AB8BB0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v61 - v14;
  v16 = type metadata accessor for UploadDropbox.Debugging(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A0DC34(v18);
  sub_1B698C128();
  result = (*(*(v19 - 8) + 48))(v18, 1, v19);
  if (result != 1)
  {
    (*(v7 + 32))(v15, v18, v6);
    v21 = v65;
    v64 = v15;
    sub_1B6AB8B30();
    sub_1B6AB8B40();
    v62 = *(v7 + 8);
    v63 = v6;
    v62(v10, v6);
    sub_1B69AE29C(a1, v21, v5);
    v22 = type metadata accessor for Batch(0);
    v23 = v13;
    v24 = v5;
    if ((*(*(v22 - 8) + 48))(v5, 1, v22) == 1)
    {
      sub_1B698E840(v5, &qword_1EDBCBCA8, type metadata accessor for Batch);
LABEL_14:
      v59 = v63;
      v58 = v64;
      v60 = v62;
      v62(v23, v63);
      return v60(v58, v59);
    }

    v25 = Batch.toJSONObject()();
    v65 = v13;
    v26 = objc_opt_self();
    v27 = MEMORY[0x1E69E6158];
    v28 = sub_1B6AB91F0();
    v29 = [v26 isValidJSONObject_];

    if (v29)
    {
      v30 = sub_1B6AB91F0();

      v67 = 0;
      v31 = [v26 dataWithJSONObject:v30 options:0 error:&v67];

      v32 = v67;
      if (v31)
      {
        v33 = sub_1B6AB8C80();
        v35 = v34;

        sub_1B69B6CC4(v24, type metadata accessor for Batch);
        v23 = v65;
        sub_1B6AB8C90();
        sub_1B6993C94(v33, v35);
        goto LABEL_14;
      }

      v44 = v32;
      v42 = sub_1B6AB8A70();
    }

    else
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v36 = qword_1EDBCCB28;
      v37 = sub_1B6AB98F0();
      sub_1B69990B4(0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1B6ABD890;
      v39 = sub_1B6AB9220();
      v41 = v40;
      *(v38 + 56) = v27;
      *(v38 + 64) = sub_1B698CEC0();
      *(v38 + 32) = v39;
      *(v38 + 40) = v41;
      sub_1B6AB8F70("Resource failed to convert to JSON object, %@", 45, 2, &dword_1B697C000, v36, v37, v38);

      sub_1B6A2A954();
      v42 = swift_allocError();
      *v43 = v25;
      *(v43 + 8) = 0;
    }

    swift_willThrow();
    v45 = v42;
    v46 = v65;
    sub_1B69B6CC4(v24, type metadata accessor for Batch);
    v47 = MEMORY[0x1E69E6158];
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v48 = qword_1EDBCCB28;
    v49 = sub_1B6AB98E0();
    sub_1B69990B4(0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1B6ABF500;
    v51 = sub_1B6AB8B80();
    v53 = v52;
    *(v50 + 56) = v47;
    v54 = v46;
    v55 = sub_1B698CEC0();
    *(v50 + 64) = v55;
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    v67 = 0;
    v68 = 0xE000000000000000;
    v66 = v45;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    v56 = v67;
    v57 = v68;
    *(v50 + 96) = v47;
    *(v50 + 104) = v55;
    v23 = v54;
    *(v50 + 72) = v56;
    *(v50 + 80) = v57;
    sub_1B6AB8F70("Upload dropbox failed to write debug file %{public}@ because of error: %{public}@", 81, 2, &dword_1B697C000, v48, v49, v50);

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1B6A5E87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = sub_1B699D580(a2, a3);
  v7 = v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager;
  v8 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v9 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v8);
  (*(v9 + 32))(&v34, v6, v8, v9);
  if (v4)
  {
  }

  if (v35 != 1)
  {
    sub_1B6A60A98();
    swift_allocError();
    v25 = 2;
LABEL_10:
    *v24 = v25;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x80;
    swift_willThrow();
  }

  if (!v34)
  {
    sub_1B6A60A98();
    swift_allocError();
    v25 = 3;
    goto LABEL_10;
  }

  sub_1B6982544(v7, v31);
  v10 = v32;
  v11 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1B697F028(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABF500;
  *(inited + 32) = 1701869940;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x746E657665;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v13;
  *(inited + 80) = 1635017060;
  *(inited + 88) = 0xE400000000000000;
  sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
  *(inited + 120) = v14;
  *(inited + 96) = a1;

  sub_1B69B4888(inited);
  swift_setDeallocating();
  sub_1B69B4824();
  swift_arrayDestroy();
  v15 = objc_opt_self();
  v16 = sub_1B6AB91F0();

  v28 = 0;
  v17 = [v15 dataWithJSONObject:v16 options:0 error:&v28];

  v18 = v28;
  if (v17)
  {
    v19 = sub_1B6AB8C80();
    v21 = v20;

    v29 = v19;
    v30 = v21;
    if (qword_1EDBCB070 != -1)
    {
      swift_once();
    }

    sub_1B6AB8CA0();
    v22 = v29;
    v23 = v30;
    (*(v11 + 8))(v29, v30, v6, v10, v11);

    sub_1B6993C94(v22, v23);
  }

  else
  {
    v27 = v18;
    sub_1B6AB8A70();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

void sub_1B6A5EC3C(uint64_t a1)
{
  v3 = v2;
  v71 = *MEMORY[0x1E69E9840];
  v53 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v4 = *(v1 + 40);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + 40) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v55 = v1;
  v58 = *(v1 + 40);
  v59 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v56 = v11;
  for (i = v6; ; v6 = i)
  {
    if (v10)
    {
      v13 = v3;
      v14 = v12;
      goto LABEL_12;
    }

    do
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v14 >= v11)
      {

        os_unfair_lock_unlock(*(*(v55 + v53) + 16));
        return;
      }

      v10 = *(v6 + 8 * v14);
      ++v12;
    }

    while (!v10);
    v13 = v3;
LABEL_12:
    v15 = *(*(v58 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
    v16 = v59[3];
    v17 = v59[4];
    __swift_project_boxed_opaque_existential_1(v59, v16);
    v18 = *(v17 + 32);

    v18(&v69, v19, v16, v17);
    v3 = v13;
    if (v13)
    {

      goto LABEL_29;
    }

    v10 &= v10 - 1;
    if (v70 != 1 || !v69)
    {

      goto LABEL_5;
    }

    sub_1B6982544(v59, v66);
    v20 = v67;
    v52 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v64[0] = 1701869940;
    v64[1] = 0xE400000000000000;
    v64[2] = 0x6E6F6973736573;
    v64[3] = 0xE700000000000000;
    v64[5] = MEMORY[0x1E69E6158];
    v65[0] = 1635017060;
    v65[1] = 0xE400000000000000;
    sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
    v65[5] = v21;
    v65[2] = a1;
    sub_1B6988228(0, &qword_1EDBCBB10, MEMORY[0x1E69E6EC8]);
    v22 = sub_1B6AB9E90();

    sub_1B69B6AF8(v64, &v61, sub_1B69B4824);
    v23 = v61;
    v24 = v62;
    v25 = sub_1B6993940(v61, v62);
    if (v26)
    {
      goto LABEL_31;
    }

    *(v22 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
    v27 = (v22[6] + 16 * v25);
    *v27 = v23;
    v27[1] = v24;
    sub_1B69979CC(v63, (v22[7] + 32 * v25));
    v28 = v22[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_32;
    }

    v22[2] = v30;
    sub_1B69B6AF8(v65, &v61, sub_1B69B4824);
    v31 = v61;
    v32 = v62;
    v33 = sub_1B6993940(v61, v62);
    if (v34)
    {
      goto LABEL_31;
    }

    *(v22 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
    v35 = (v22[6] + 16 * v33);
    *v35 = v31;
    v35[1] = v32;
    sub_1B69979CC(v63, (v22[7] + 32 * v33));
    v36 = v22[2];
    v29 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v29)
    {
      goto LABEL_32;
    }

    v22[2] = v37;
    sub_1B69B4824();
    swift_arrayDestroy();
    v38 = objc_opt_self();
    v39 = sub_1B6AB91F0();

    v60 = 0;
    v40 = [v38 dataWithJSONObject:v39 options:0 error:&v60];

    v41 = v60;
    if (!v40)
    {
      break;
    }

    v42 = sub_1B6AB8C80();
    v44 = v43;

    v61 = v42;
    v62 = v44;
    if (qword_1EDBCB070 != -1)
    {
      swift_once();
    }

    sub_1B6AB8CA0();
    v45 = v61;
    v46 = v62;
    (*(v52 + 8))(v61, v62, v15, v20);

    sub_1B6993C94(v45, v46);
    __swift_destroy_boxed_opaque_existential_1(v66);
LABEL_5:
    v12 = v14;
    v11 = v56;
  }

  v47 = v41;
  v48 = sub_1B6AB8A70();

  swift_willThrow();
  v3 = 0;
  __swift_destroy_boxed_opaque_existential_1(v66);
  v61 = v48;
  v49 = v48;
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast() && (v66[0] & 1) == 0)
  {

    v51 = *(v15 + 16);
    v50 = *(v15 + 24);

    sub_1B6A5DF98(v51, v50);

    goto LABEL_5;
  }

LABEL_29:
  os_unfair_lock_unlock(*(*(v55 + v53) + 16));
}

void sub_1B6A5F260()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1B697F028(0, &qword_1EDBCBCA8, type metadata accessor for Batch, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = (&v56 - v4);
  v61 = type metadata accessor for Batch(0);
  v58 = *(v61 - 8);
  v5 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v56 - v7;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, v2);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for Session(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1B6AB8BB0();
  v66 = *(v68 - 8);
  v15 = MEMORY[0x1EEE9AC00](v68);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  os_unfair_lock_lock_with_options();
  v21 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v64 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v65 = v21;
  v67 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v63 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v21);
  v22 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v1 + v22, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B698E840(v10, qword_1EDBCCC78, type metadata accessor for Session);
    v23 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v24 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v23);
    (*(v24 + 8))(v23, v24);
    v25 = v1;
    v26 = v68;
    v27 = v66;
  }

  else
  {
    sub_1B69B6BF4(v10, v14, type metadata accessor for Session);
    v28 = v20;
    v30 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v29 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v30);
    v31 = v30;
    v20 = v28;
    (*(v29 + 8))(v31, v29);
    sub_1B6AB8B30();
    v32 = v66;
    v26 = v68;
    (*(v66 + 8))(v17, v68);
    sub_1B69B6CC4(v14, type metadata accessor for Session);
    v25 = v1;
    v27 = v32;
  }

  v33 = v71;
  v34 = (v64[16])(v19, v65);
  if (!v33)
  {
    v35 = v34;
    v71 = 0;
    v57 = v20;
    (*(v27 + 8))(v19, v26);
    v66 = *(v35 + 16);
    if (!v66)
    {
      v64 = MEMORY[0x1E69E7CC0];
LABEL_31:

      os_unfair_lock_unlock(*(*(v25 + v57) + 16));
      return;
    }

    swift_beginAccess();
    v36 = 0;
    v63 = (v58 + 48);
    v37 = (v35 + 40);
    v64 = MEMORY[0x1E69E7CC0];
    v65 = v35;
    while (1)
    {
      if (v36 >= *(v35 + 16))
      {
        __break(1u);
        return;
      }

      v38 = *(v37 - 1);
      v39 = *v37;
      v40 = *(*(v25 + 40) + 16);

      if (v40)
      {

        sub_1B6993940(v38, v39);
        LODWORD(v68) = v41;
      }

      else
      {
        LODWORD(v68) = 0;
      }

      v42 = v25;
      v43 = sub_1B699D580(v38, v39);
      v45 = v67[3];
      v44 = v67[4];
      __swift_project_boxed_opaque_existential_1(v67, v45);
      v46 = v71;
      v47 = (*(v44 + 32))(&v69, v43, v45, v44);
      v71 = v46;
      if (v46)
      {

        v25 = v42;
        v20 = v57;
        goto LABEL_6;
      }

      if (v70 == 1)
      {
        v25 = v42;
        if (v69 && (v68 & 1) == 0)
        {
          v48 = MEMORY[0x1B8C98C40](v47);
          v49 = v62;
          sub_1B69AE29C(v38, v39, v62);

          if ((*v63)(v49, 1, v61) == 1)
          {
            sub_1B698E840(v49, &qword_1EDBCBCA8, type metadata accessor for Batch);
          }

          else
          {
            v50 = v49;
            v51 = v59;
            sub_1B69B6BF4(v50, v59, type metadata accessor for Batch);
            sub_1B69B6AF8(v51, v60, type metadata accessor for Batch);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v52 = v64;
            }

            else
            {
              v52 = sub_1B69E3918(0, v64[2] + 1, 1, v64);
            }

            v54 = v52[2];
            v53 = v52[3];
            v64 = v52;
            if (v54 >= v53 >> 1)
            {
              v64 = sub_1B69E3918((v53 > 1), v54 + 1, 1, v64);
            }

            sub_1B69B6CC4(v59, type metadata accessor for Batch);
            v55 = v64;
            v64[2] = v54 + 1;
            sub_1B69B6BF4(v60, v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v54, type metadata accessor for Batch);
          }

          v35 = v65;
          objc_autoreleasePoolPop(v48);
          goto LABEL_11;
        }
      }

      else
      {

        v25 = v42;
      }

      v35 = v65;
LABEL_11:
      ++v36;

      v37 += 2;
      if (v66 == v36)
      {
        goto LABEL_31;
      }
    }
  }

  (*(v27 + 8))(v19, v26);
LABEL_6:
  os_unfair_lock_unlock(*(*(v25 + v20) + 16));
}

void sub_1B6A5FA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = v5;
  v13 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  os_unfair_lock_lock_with_options();
  if (a5 <= 1u)
  {
    if (a5)
    {
      if (a4)
      {
        sub_1B6A110A8(a3, a4, 1u);
        sub_1B6A60464(a1, a2, a3, a4);
      }

      goto LABEL_20;
    }

LABEL_9:
    sub_1B6A110A8(a3, a4, a5);
    sub_1B6A60464(a1, a2, a3, a4);

    if (!a5)
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDBCCB28;
      sub_1B69990B4(0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1B6ABD890;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = sub_1B698CEC0();
      *(v34 + 32) = a1;
      *(v34 + 40) = a2;

      v35 = sub_1B6AB9900();
      sub_1B6AB8F70("Upload dropbox removing file that was successfully uploaded, identifier=%@", 74, 2, &dword_1B697C000, v33, v35, v34);
      goto LABEL_26;
    }

    if (a5 != 1)
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDBCCB28;
      v23 = sub_1B6AB98F0();
      sub_1B69990B4(0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1B6ABD890;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1B698CEC0();
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;

      sub_1B6AB8F70("Upload dropbox removing file that failed to upload and should not be retried, identifier=%{public}@", 99, 2, &dword_1B697C000, v22, v23, v24);
LABEL_26:

      v36 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
      __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24));
      sub_1B699D580(a1, a2);
      (*(v36 + 48))();

LABEL_49:
      v32 = *(v7 + v13);
      goto LABEL_50;
    }

LABEL_20:
    v67 = v13;
    v28 = sub_1B699D580(a1, a2);
    v29 = (v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
    v30 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
    v31 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
    __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v30);
    (*(v31 + 32))(&v65, v28, v30, v31);
    if (v6)
    {

      goto LABEL_22;
    }

    v37 = v65;
    if (v66 == 1)
    {
      if (!v65)
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        v58 = qword_1EDBCCB28;
        v59 = sub_1B6AB98E0();
        sub_1B69990B4(0);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1B6ABD890;
        *(v60 + 56) = MEMORY[0x1E69E6158];
        *(v60 + 64) = sub_1B698CEC0();
        *(v60 + 32) = a1;
        *(v60 + 40) = a2;

        sub_1B6AB8F70("Upload dropbox got .retry result for file that doesn't exist, identifier=%{public}@", 83, 2, &dword_1B697C000, v58, v59, v60);

        goto LABEL_47;
      }

      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v38 = qword_1EDBCCB28;
      v39 = sub_1B6AB98E0();
      sub_1B69990B4(0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1B6ABD890;
      *(v40 + 56) = MEMORY[0x1E69E6158];
      *(v40 + 64) = sub_1B698CEC0();
      *(v40 + 32) = a1;
      *(v40 + 40) = a2;

      sub_1B6AB8F70("Upload dropbox got .retry result for *open* file (which should be impossible), identifier=%{public}@", 100, 2, &dword_1B697C000, v38, v39, v40);

      v41 = v29[3];
      v42 = v29[4];
      __swift_project_boxed_opaque_existential_1(v29, v41);
      v63 = 2;
    }

    else
    {
      if (v65 >= *(*(v7 + 24) + OBJC_IVAR___AAUploadBatchEventConfig_maxUploadTries))
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        v62 = qword_1EDBCCB28;
        v61 = sub_1B6AB98F0();
        sub_1B69990B4(0);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1B6ABF500;
        v63 = v37;
        v52 = sub_1B6ABA080();
        v54 = v53;
        *(v51 + 56) = MEMORY[0x1E69E6158];
        v55 = sub_1B698CEC0();
        *(v51 + 32) = v52;
        *(v51 + 40) = v54;
        *(v51 + 96) = MEMORY[0x1E69E6158];
        *(v51 + 104) = v55;
        *(v51 + 64) = v55;
        *(v51 + 72) = a1;
        *(v51 + 80) = a2;

        sub_1B6AB8F70("Upload dropbox removing file that has failed to upload %{public}@ times, identifier=%{public}@", 94, 2, &dword_1B697C000, v62, v61, v51);

        v56 = v29[3];
        v57 = v29[4];
        __swift_project_boxed_opaque_existential_1(v29, v56);
        (*(v57 + 48))(v28, v56, v57);

        goto LABEL_48;
      }

      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v46 = qword_1EDBCCB28;
      sub_1B69990B4(0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1B6ABF500;
      v48 = v37 + 1;
      v49 = MEMORY[0x1E69E65A8];
      *(v47 + 56) = MEMORY[0x1E69E6530];
      *(v47 + 64) = v49;
      *(v47 + 32) = v48;
      *(v47 + 96) = MEMORY[0x1E69E6158];
      *(v47 + 104) = sub_1B698CEC0();
      *(v47 + 72) = a1;
      *(v47 + 80) = a2;

      v50 = sub_1B6AB9900();
      sub_1B6AB8F70("Upload dropbox incrementing try number attribute to %d on file that failed upload, identifier=%@", 96, 2, &dword_1B697C000, v46, v50, v47);

      v41 = v29[3];
      v42 = v29[4];
      __swift_project_boxed_opaque_existential_1(v29, v41);
      v63 = v48;
    }

    v64 = 0;
    (*(v42 + 40))(v28, &v63, v41, v42);
LABEL_47:

LABEL_48:
    v13 = v67;
    goto LABEL_49;
  }

  if (a5 == 2)
  {
    goto LABEL_9;
  }

  if (a5 != 3)
  {
    if (a3 | a4)
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v25 = qword_1EDBCCB28;
      sub_1B69990B4(0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1B6ABD890;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1B698CEC0();
      *(v26 + 32) = a1;
      *(v26 + 40) = a2;

      v27 = sub_1B6AB9900();
      sub_1B6AB8F70("Upload dropbox was offline when attempting upload, identifier=%@", 64, 2, &dword_1B697C000, v25, v27, v26);
    }

    else
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v43 = qword_1EDBCCB28;
      sub_1B69990B4(0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1B6ABD890;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1B698CEC0();
      *(v44 + 32) = a1;
      *(v44 + 40) = a2;

      v45 = sub_1B6AB9900();
      sub_1B6AB8F70("Upload was disabled, identifier=%@", 34, 2, &dword_1B697C000, v43, v45, v44);
    }

    goto LABEL_49;
  }

  v67 = v13;
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDBCCB28;
  v15 = sub_1B6AB98F0();
  sub_1B69990B4(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B6ABF500;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1B698CEC0();
  *(v16 + 64) = v18;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  v19 = ContentType.description.getter(a3);
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  *(v16 + 72) = v19;
  *(v16 + 80) = v20;
  sub_1B6AB8F70("Upload dropbox removing file because content type has no endpoint, identifier=%@, contentType=%@", 96, 2, &dword_1B697C000, v14, v15, v16);

  v21 = *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), *(v7 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24));
  sub_1B699D580(a1, a2);
  (*(v21 + 48))();

  if (!v6)
  {
    goto LABEL_48;
  }

LABEL_22:
  v32 = *(v7 + v67);
LABEL_50:
  os_unfair_lock_unlock(*(v32 + 16));
}

uint64_t sub_1B6A60464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v5 = sub_1B6AB8BB0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  v15 = type metadata accessor for UploadDropbox.Debugging(0);
  result = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    sub_1B6A0DC34(v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1B698C128();
    result = (*(*(v19 - 8) + 48))(v18, 1, v19);
    if (result != 1)
    {
      (*(v6 + 32))(v14, v18, v5);
      sub_1B6AB8B30();
      sub_1B6AB8B40();
      v20 = *(v6 + 8);
      v24[2] = v6 + 8;
      v20(v9, v5);
      sub_1B6AB88A0();
      swift_allocObject();
      sub_1B6AB8890();
      v26 = v25;
      v27 = a4;
      sub_1B6A60A44();
      v21 = sub_1B6AB8870();
      v23 = v22;

      sub_1B6AB8C90();
      sub_1B6993C94(v21, v23);
      v20(v12, v5);
      return (v20)(v14, v5);
    }
  }

  return result;
}

uint64_t sub_1B6A60868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = sub_1B6993940(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 40);
    *(a1 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DDE44();
    }

    sub_1B69AD900(v8, v10);
    *(a1 + 40) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_1B6A6092C()
{

  sub_1B698E840(v0 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession, qword_1EDBCCC78, type metadata accessor for Session);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager));

  return v0;
}

uint64_t sub_1B6A609D0()
{
  sub_1B6A6092C();

  return swift_deallocClassInstance();
}

unint64_t sub_1B6A60A44()
{
  result = qword_1EB95BCC8[0];
  if (!qword_1EB95BCC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB95BCC8);
  }

  return result;
}

unint64_t sub_1B6A60A98()
{
  result = qword_1EDBC7F18;
  if (!qword_1EDBC7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC7F18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics13UploadDropboxC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B6A60B0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FC && *(a1 + 33))
  {
    return (*a1 + 508);
  }

  v3 = ((*(a1 + 32) >> 5) | (8 * ((*(a1 + 24) >> 60) & 3 | (4 * ((*(a1 + 32) >> 1) & 0xF))))) ^ 0x1FF;
  if (v3 >= 0x1FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6A60B6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 508;
    *(result + 8) = 0;
    if (a3 >= 0x1FC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((-a2 >> 3) & 3) << 60;
      *(result + 32) = ((((-a2 >> 3) & 0x3F) - (a2 << 6)) >> 1) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_1B6A60BE0(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 32) & 1 | (32 * a2);
    *(result + 24) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 32) = v2;
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

BOOL sub_1B6A60C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TimedData(0);
  if (swift_dynamicCastMetatype())
  {
    type metadata accessor for BridgedTimedData(0);
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }
  }

  type metadata accessor for EventData(0);
  if (swift_dynamicCastMetatype() && (type metadata accessor for BridgedEventData(0), swift_dynamicCastMetatype()))
  {
    return 1;
  }

  else
  {
    return swift_dynamicCastMetatype() != 0;
  }
}

uint64_t sub_1B6A60CF4()
{
  v1 = *(*v0 + OBJC_IVAR___AAEventProperty_dataKey);

  return v1;
}

uint64_t sub_1B6A60D38()
{
  v1 = *(*v0 + OBJC_IVAR___AAEventProperty_requirement);
  if (v1 == 1)
  {
    return 1;
  }

  if (!v1)
  {
    return 0;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

uint64_t sub_1B6A60E00(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  result = type metadata accessor for CombineLatestStateMachine.State(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    *(&v4[0] + 1) = MEMORY[0x1E69E6530];
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6A60E88(_DWORD *a1, unsigned int a2, void *a3)
{
  v3 = *(a3[4] - 8);
  v4 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v4;
  }

  v33 = v4 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80));
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v11 | 7;
  v13 = ((v6 + 8) & ~v6) + (v8 | 7) + *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 1) & ~(v8 | 7);
  v15 = ((v8 + 8) & ~v8) + v12 + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v15;
  }

  v16 = (v15 + v14 + 1) & ~v12;
  v17 = ((v11 + 8) & ~v11) + *(v9 + 64) + (((v8 | v6 | v11) & 0xF8 ^ 0x1F8) & ((v8 | v6 | v11) + 8));
  if (!*(v10 + 84))
  {
    ++v17;
  }

  v18 = (v17 + v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 8;
  if (v18 + 8 <= v33)
  {
    v19 = v33;
  }

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 <= v19)
  {
    v20 = v19;
  }

  v21 = 8;
  if (v20 > 8)
  {
    v21 = v20;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v22 >= a2)
  {
    goto LABEL_41;
  }

  v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 16;
  v24 = v23 & 0xFFFFFFF8;
  if ((v23 & 0xFFFFFFF8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = a2 - v22 + 1;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v28 = *(a1 + v23);
      if (v28)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v28 = *(a1 + v23);
      if (v28)
      {
        goto LABEL_37;
      }
    }

LABEL_41:
    v31 = *(a1 + v21);
    if (v22 <= (v31 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v31);
    }
  }

  if (!v27)
  {
    goto LABEL_41;
  }

  v28 = *(a1 + v23);
  if (!v28)
  {
    goto LABEL_41;
  }

LABEL_37:
  v30 = v28 - 1;
  if (v24)
  {
    v30 = 0;
    LODWORD(v24) = *a1;
  }

  return v22 + (v24 | v30) + 1;
}

void sub_1B6A61278(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[4] - 8);
  v5 = *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v31 = v5 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80));
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v12 | 7;
  v14 = ((v7 + 8) & ~v7) + (v9 | 7) + *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 1) & ~(v9 | 7);
  v16 = ((v9 + 8) & ~v9) + v13 + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v16;
  }

  v17 = (v16 + v15 + 1) & ~v13;
  v18 = ((v12 + 8) & ~v12) + *(v10 + 64) + (((v9 | v7 | v12) & 0xF8 ^ 0x1F8) & ((v9 | v7 | v12) + 8));
  if (!*(v11 + 84))
  {
    ++v18;
  }

  v19 = (v18 + v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 8;
  if (v19 + 8 <= v31)
  {
    v20 = v31;
  }

  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 <= v20)
  {
    v21 = v20;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  v23 = (v21 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v21 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v24 = a3 - v22 + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v22 < a3)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (a2 <= v22)
  {
    if (v27 > 1)
    {
      v30 = a1;
      if (v27 != 2)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_49;
      }

      *(a1 + v23) = 0;
    }

    else
    {
      v30 = a1;
      if (v27)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

LABEL_49:
        *(v30 + v21) = -a2;
        return;
      }
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if ((v21 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v28 = a2 - v22;
  }

  else
  {
    v28 = 1;
  }

  if ((v21 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v29 = ~v22 + a2;
    bzero(a1, v23);
    *a1 = v29;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      *(a1 + v23) = v28;
    }

    else
    {
      *(a1 + v23) = v28;
    }
  }

  else if (v27)
  {
    *(a1 + v23) = v28;
  }
}

void sub_1B6A616BC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if (v6 <= 0x3F)
  {
    v32 = TupleTypeMetadata3;
    sub_1B6A622CC();
    v23 = v7;
    v8 = a1[5];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25 = v2;
    v9 = a1[6];
    v10 = a1[7];
    v26 = v3;
    v27 = v4;
    v28 = AssociatedTypeWitness;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v25);
    v11 = swift_getAssociatedTypeWitness();
    v25 = v2;
    v26 = v3;
    v27 = v4;
    v28 = v11;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v25);
    v12 = swift_getAssociatedTypeWitness();
    v25 = v2;
    v26 = v3;
    v27 = v4;
    v28 = v12;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v25);
    v13 = swift_getTupleTypeMetadata3();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    v14 = sub_1B6AB95D0();
    v16 = v15;
    v17 = swift_getTupleTypeMetadata3();
    if (v18 <= 0x3F)
    {
      v33 = v17;
      MEMORY[0x1EEE9AC00](v17);
      v25 = v23;
      v26 = v13;
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      v27 = sub_1B6AB9740();
      v28 = v14;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      if (v20 <= 0x3F)
      {
        v34 = TupleTypeMetadata;
        if (v16 <= 0x3F)
        {
          v35 = v14;
          sub_1B6A25A14();
          if (v22 <= 0x3F)
          {
            v36 = v21;
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B6A619F4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v3 = *(a3[4] - 8);
  v4 = *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v4;
  }

  v31 = v4 + ((((*(*(a3[2] - 8) + 64) + *(*(a3[3] - 8) + 80)) & ~*(*(a3[3] - 8) + 80)) + *(*(a3[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80));
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 80);
  v12 = v11 | 7;
  v13 = ((v6 + 8) & ~v6) + (v8 | 7) + *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 1) & ~(v8 | 7);
  v15 = ((v8 + 8) & ~v8) + v12 + *(v7 + 64);
  if (!*(v7 + 84))
  {
    ++v15;
  }

  v16 = (v15 + v14 + 1) & ~v12;
  v17 = ((v11 + 8) & ~v11) + *(v9 + 64) + (((v8 | v6 | v11) & 0xF8 ^ 0x1F8) & ((v8 | v6 | v11) + 8));
  if (!*(v10 + 84))
  {
    ++v17;
  }

  v18 = (v17 + v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  v19 = v18 + 8;
  if (v18 + 8 <= v31)
  {
    v19 = v31;
  }

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 <= v19)
  {
    v20 = v19;
  }

  v21 = 8;
  if (v20 > 8)
  {
    v21 = v20;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v22 >= a2)
  {
    goto LABEL_39;
  }

  v23 = v21 + 1;
  v24 = 8 * (v21 + 1);
  if ((v21 + 1) <= 3)
  {
    v27 = ((~(-1 << v24) + a2 - v22) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

      goto LABEL_28;
    }

    if (v27 < 2)
    {
LABEL_39:
      v29 = *(a1 + v21);
      if (v22 <= (v29 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v29);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_39;
  }

LABEL_28:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return v22 + (v23 | v28) + 1;
}

void sub_1B6A61E2C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[4] - 8);
  v5 = *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v33 = v5 + ((((*(*(a4[2] - 8) + 64) + *(*(a4[3] - 8) + 80)) & ~*(*(a4[3] - 8) + 80)) + *(*(a4[3] - 8) + 64) + *(v4 + 80)) & ~*(v4 + 80));
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 80);
  v13 = v12 | 7;
  v14 = ((v7 + 8) & ~v7) + (v9 | 7) + *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 1) & ~(v9 | 7);
  v16 = ((v9 + 8) & ~v9) + v13 + *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v16;
  }

  v17 = (v16 + v15 + 1) & ~v13;
  v18 = ((v12 + 8) & ~v12) + *(v10 + 64) + (((v9 | v7 | v12) & 0xF8 ^ 0x1F8) & ((v9 | v7 | v12) + 8));
  if (!*(v11 + 84))
  {
    ++v18;
  }

  v19 = (v18 + v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 8;
  if (v19 + 8 <= v33)
  {
    v20 = v33;
  }

  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 <= v20)
  {
    v21 = v20;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v22 = 250 - (1u >> (8 * v21));
  if (v21 > 3)
  {
    v22 = 250;
  }

  v23 = v21 + 1;
  if (v22 >= a3)
  {
    v24 = 0;
  }

  else
  {
    v24 = 1;
    if (v23 <= 3)
    {
      v25 = ((~(-1 << (8 * v23)) + a3 - v22) >> (8 * v23)) + 1;
      v26 = HIWORD(v25);
      if (v25 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v25 >= 2)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      if (v26)
      {
        v24 = 4;
      }

      else
      {
        v24 = v28;
      }
    }
  }

  if (v22 >= a2)
  {
    if (v24 > 1)
    {
      if (v24 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

LABEL_45:
        a1[v21] = -a2;
        return;
      }

      *&a1[v23] = 0;
    }

    else if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  v29 = ~v22 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v29;
    v30 = 1;
    if (v24 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v30 = (v29 >> (8 * v23)) + 1;
  if (v21 == -1)
  {
LABEL_49:
    if (v24 > 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v31 = v29 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v31;
    a1[2] = BYTE2(v31);
    goto LABEL_49;
  }

  if (v23 == 2)
  {
    *a1 = v31;
    if (v24 > 1)
    {
LABEL_53:
      if (v24 == 2)
      {
        *&a1[v23] = v30;
      }

      else
      {
        *&a1[v23] = v30;
      }

      return;
    }
  }

  else
  {
    *a1 = v29;
    if (v24 > 1)
    {
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v24)
  {
    a1[v23] = v30;
  }
}

void sub_1B6A622CC()
{
  if (!qword_1EB95BDD0[0])
  {
    v0 = sub_1B6AB9720();
    if (!v1)
    {
      atomic_store(v0, qword_1EB95BDD0);
    }
  }
}

void sub_1B6A62350(uint64_t a1)
{
  sub_1B6A6C98C(319, qword_1EB95BE58, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B6AB9B30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B6A623FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_32;
  }

  v11 = v9 + *(*(*(a3 + 40) - 8) + 64) + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v15 < 2)
    {
LABEL_32:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        if ((v17 + 1) >= 2)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_32;
  }

LABEL_21:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1B6A625CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 40) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 40) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 8) & ~v11) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 8) & ~v11) != -1)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0x7FFFFFFE)
  {
    v21 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;

      v25(v21, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

uint64_t sub_1B6A628D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v18 = *(TupleTypeMetadata3 + 48);
  v19 = *(TupleTypeMetadata3 + 64);
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  (*(*(a5 - 8) + 32))(a9 + v18, a2, a5);
  v20 = *(v16 - 8);
  (*(v20 + 16))(a9 + v19, a3, v16);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  type metadata accessor for CombineLatestStateMachine.State(0, &v27);
  swift_storeEnumTagMultiPayload();
  v21 = (*(*(a6 - 8) + 48))(a3, 1, a6);
  (*(v20 + 8))(a3, v16);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  result = type metadata accessor for CombineLatestStateMachine(0, &v27);
  if (v21 == 1)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  *(a9 + *(result + 68)) = v23;
  return result;
}

uint64_t sub_1B6A62B00(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a1[6];
  v7 = a1[7];
  v92 = v3;
  v93 = v2;
  v94 = v4;
  v95 = AssociatedTypeWitness;
  v85 = AssociatedTypeWitness;
  v96 = v5;
  v97 = v8;
  v98 = v7;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v92);
  v10 = swift_getAssociatedTypeWitness();
  v92 = v3;
  v93 = v2;
  v94 = v4;
  v95 = v10;
  v84 = v10;
  v96 = v5;
  v97 = v8;
  v98 = v7;
  v11 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v92);
  v12 = swift_getAssociatedTypeWitness();
  v92 = v3;
  v93 = v2;
  v94 = v4;
  v95 = v12;
  v83 = v12;
  v96 = v5;
  v97 = v8;
  v98 = v7;
  v90 = v9;
  v86 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v92);
  v87 = v11;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v88 = *(TupleTypeMetadata3 - 8);
  v89 = TupleTypeMetadata3;
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v16 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v73 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v73 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v73 - v23;
  v92 = v3;
  v93 = v2;
  v94 = v4;
  v95 = v5;
  v96 = v8;
  v97 = v7;
  v25 = type metadata accessor for CombineLatestStateMachine.State(0, &v92);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v73 - v27;
  (*(v26 + 16))(v73 - v27, v91, v25);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v79 = v16;
    v80 = v19;
    v81 = v22;
    v82 = v24;
    v31 = v90;
    if (!result)
    {
LABEL_13:
      v66 = sub_1B6AB9B30();
      v67 = swift_getTupleTypeMetadata3();
      v68 = *(v67 + 48);
      (*(*(v66 - 8) + 8))(&v28[*(v67 + 64)], v66);
      (*(*(v2 - 8) + 8))(&v28[v68], v2);
      (*(*(v3 - 8) + 8))(v28, v3);
      return 0;
    }

    if (result != 1)
    {
      __break(1u);
      return result;
    }

    v78 = *v28;
    sub_1B6A622CC();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v32 = v89;
    v33 = *(swift_getTupleTypeMetadata3() + 48);

    v34 = v88;
    v35 = v82;
    (*(v88 + 32))(v82, &v28[v33], v32);
    (*(v26 + 8))(v91, v25);
    swift_storeEnumTagMultiPayload();
    v36 = *(v34 + 16);
    v37 = v81;
    v36(v81, v35, v32);
    v38 = *(v32 + 48);
    v83 = *(v32 + 64);
    v84 = *v37;
    v85 = v38;
    v39 = *(v31 - 8);
    v75 = *(v39 + 8);
    v76 = v39 + 8;
    v40 = v37;
    v41 = v31;
    v75(v40, v31);
    v42 = v80;
    v36(v80, v35, v32);
    v43 = *(v32 + 48);
    v74 = *(v32 + 64);
    v91 = *&v42[v43];
    v44 = v87;
    v45 = *(v87 - 8);
    v46 = *(v45 + 8);
    v73[1] = v45 + 8;
    v46(&v42[v43], v87);
    v47 = v79;
    v36(v79, v35, v32);
    v48 = *(v32 + 48);
    v49 = *(v32 + 64);
    v77 = *&v47[v49];
    v50 = v86;
    v51 = *(*(v86 - 8) + 8);
    v51(&v47[v49], v86);
    v46(&v47[v48], v44);
    v52 = v47;
    v53 = v75;
    v75(v52, v41);
    v51(&v42[v74], v50);
    v53(v42, v41);
    v54 = v81;
    v51(v81 + v83, v50);
    v55 = v44;
    v56 = v84;
    v46(v54 + v85, v55);
    if (v56)
    {
      v57 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v59 = *(v57 + 2);
      v58 = *(v57 + 3);
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1B69E36B0((v58 > 1), v59 + 1, 1, v57);
      }

      v61 = v88;
      v60 = v89;
      v62 = v82;
      v63 = v91;
      v64 = v77;
      *(v57 + 2) = v59 + 1;
      *&v57[8 * v59 + 32] = v56;
      if (!v63)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
      v61 = v88;
      v60 = v89;
      v62 = v82;
      v63 = v91;
      v64 = v77;
      if (!v91)
      {
LABEL_21:
        if (v64)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1B69E36B0(0, *(v57 + 2) + 1, 1, v57);
          }

          v72 = *(v57 + 2);
          v71 = *(v57 + 3);
          if (v72 >= v71 >> 1)
          {
            v57 = sub_1B69E36B0((v71 > 1), v72 + 1, 1, v57);
          }

          *(v57 + 2) = v72 + 1;
          *&v57[8 * v72 + 32] = v64;
        }

        (*(v61 + 8))(v62, v60);
        return v78;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1B69E36B0(0, *(v57 + 2) + 1, 1, v57);
    }

    v70 = *(v57 + 2);
    v69 = *(v57 + 3);
    if (v70 >= v69 >> 1)
    {
      v57 = sub_1B69E36B0((v69 > 1), v70 + 1, 1, v57);
    }

    *(v57 + 2) = v70 + 1;
    *&v57[8 * v70 + 32] = v63;
    goto LABEL_21;
  }

  if ((result - 3) < 2)
  {
    v30 = *(v26 + 8);
    v30(v28, v25);
    v30(v91, v25);
    swift_storeEnumTagMultiPayload();
    return 0;
  }

  v65 = result == 5;
  result = 0;
  if (!v65)
  {
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B6A63368@<X0>(char *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v141 = a3;
  v135 = a1;
  v143 = a2[5];
  v4 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a2[6];
  v7 = a2[3];
  v8 = swift_getAssociatedTypeWitness();
  v9 = a2[7];
  v10 = a2[4];
  v11 = swift_getAssociatedTypeWitness();
  v122 = sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v134 = sub_1B6AB9B30();
  v120 = *(v134 - 8);
  v13 = MEMORY[0x1EEE9AC00](v134);
  v127 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v128 = &v115 - v16;
  v131 = TupleTypeMetadata3;
  v130 = *(TupleTypeMetadata3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v118 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v121 = &v115 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v115 - v21;
  v145 = v4;
  v146 = v7;
  v147 = v10;
  v148 = AssociatedTypeWitness;
  v124 = AssociatedTypeWitness;
  v22 = v143;
  v149 = v143;
  v150 = v6;
  v151 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v145);
  v145 = v4;
  v146 = v7;
  v147 = v10;
  v148 = v8;
  v123 = v8;
  v149 = v22;
  v150 = v6;
  v23 = v22;
  v151 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v145);
  v145 = v4;
  v146 = v7;
  v147 = v10;
  v148 = v11;
  v149 = v22;
  v150 = v6;
  v151 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v145);
  v133 = swift_getTupleTypeMetadata3();
  v136 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v115 - v24;
  v25 = sub_1B6AB9B30();
  v126 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v115 - v27;
  v125 = *(v7 - 8);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = v10;
  v138 = v4;
  v145 = v4;
  v146 = v7;
  v34 = v7;
  v147 = v10;
  v148 = v23;
  v139 = v9;
  v140 = v6;
  v149 = v6;
  v150 = v9;
  v35 = type metadata accessor for CombineLatestStateMachine.State(0, &v145);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v115 - v37);
  (*(v36 + 2))(&v115 - v37, v142, v35);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v48 = v132;
    v118 = v28;
    v127 = v36;
    v49 = v136;
    if (!result)
    {
      v78 = v34;
      v79 = v138;
      v80 = swift_getTupleTypeMetadata3();
      v81 = *(v80 + 48);
      v135 = *(v80 + 64);
      v142 = v48[4];
      v116 = v33;
      v142(v33, v38, v79);
      v82 = v141;
      v136 = *(v125 + 4);
      v115 = v31;
      (v136)(v31, v38 + v81, v78);
      v83 = *(v126 + 32);
      v84 = v118;
      v83(v118, &v135[v38], v25);
      v85 = swift_getTupleTypeMetadata3();
      v86 = *(v85 + 48);
      v135 = *(v85 + 64);
      v142(v82, v116, v79);
      (v136)(v82 + v86, v115, v78);
      v83(&v135[v82], v84, v25);
      v145 = v79;
      v146 = v78;
      v147 = v137;
      v148 = v143;
      v149 = v140;
      v150 = v139;
      type metadata accessor for CombineLatestStateMachine.NextAction(0, &v145);
      return swift_storeEnumTagMultiPayload();
    }

    v117 = v34;
    if (result == 1)
    {
      v125 = *v38;
      sub_1B6A622CC();
      v51 = v50;
      v52 = v131;
      v53 = sub_1B6AB95D0();
      v118 = v51;
      v54 = v133;
      v55 = swift_getTupleTypeMetadata3();
      v56 = *(v55 + 48);
      v116 = v55;
      v57 = *(v38 + *(v55 + 64));
      v58 = v129;
      v126 = *(v49 + 4);
      v136 = v49 + 32;
      (v126)(v129, v38 + v56, v54);
      v144 = v57;
      v60 = v127 + 8;
      v59 = *(v127 + 1);

      v61 = v142;
      v132 = v59;
      (v59)(v142, v35);
      swift_storeEnumTagMultiPayload();
      v145 = v57;
      swift_getWitnessTable();
      v62 = v128;
      sub_1B6AB9820();
      v63 = v130;
      v64 = v52;
      if ((*(v130 + 48))(v62, 1, v52) == 1)
      {
        v131 = v53;
        v127 = v60;
        (*(v120 + 8))(v62, v134);

        v65 = *v58;
        v130 = *(v133 + 48);
        v66 = *(v58 + v130);
        v128 = *(v133 + 64);
        v67 = *&v128[v58];
        v68 = v57;
        if (v65)
        {
          v69 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v71 = *(v69 + 2);
          v70 = *(v69 + 3);
          if (v71 >= v70 >> 1)
          {
            v69 = sub_1B69E36B0((v70 > 1), v71 + 1, 1, v69);
          }

          v72 = v132;
          v73 = v66;
          *(v69 + 2) = v71 + 1;
          *&v69[8 * v71 + 32] = v65;
          v74 = v129;
          v68 = v57;
        }

        else
        {
          v74 = v58;
          v69 = MEMORY[0x1E69E7CC0];
          v72 = v132;
          v73 = v66;
        }

        v101 = v131;
        if (v73)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_1B69E36B0(0, *(v69 + 2) + 1, 1, v69);
          }

          v103 = *(v69 + 2);
          v102 = *(v69 + 3);
          if (v103 >= v102 >> 1)
          {
            v69 = sub_1B69E36B0((v102 > 1), v103 + 1, 1, v69);
          }

          *(v69 + 2) = v103 + 1;
          *&v69[8 * v103 + 32] = v73;
        }

        if (v67)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_1B69E36B0(0, *(v69 + 2) + 1, 1, v69);
          }

          v105 = *(v69 + 2);
          v104 = *(v69 + 3);
          if (v105 >= v104 >> 1)
          {
            v69 = sub_1B69E36B0((v104 > 1), v105 + 1, 1, v69);
          }

          v106 = v101;
          *(v69 + 2) = v105 + 1;
          *&v69[8 * v105 + 32] = v67;
        }

        else
        {
          v106 = v101;
        }

        v107 = v74;
        *v74 = 0;
        *(v74 + v130) = 0;
        *&v128[v74] = 0;
        v108 = v142;
        v109 = v72(v142, v35);
        MEMORY[0x1EEE9AC00](v109);
        strcpy(&v115 - 64, "task upstreams downstreamContinuation buffer ");
        v110 = v133;
        v145 = v118;
        v146 = v133;
        sub_1B69AC828();
        sub_1B6ABA280();
        v147 = sub_1B6AB9740();
        v148 = v106;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v112 = TupleTypeMetadata[12];
        v113 = TupleTypeMetadata[16];
        v114 = TupleTypeMetadata[20];
        *v108 = v125;
        (v126)(v108 + v112, v107, v110);
        *(v108 + v113) = v135;
        *(v108 + v114) = v68;
        swift_storeEnumTagMultiPayload();
        *v141 = v69;
        v145 = v138;
        v146 = v117;
        v147 = v137;
        v148 = v143;
        v149 = v140;
        v150 = v139;
        type metadata accessor for CombineLatestStateMachine.NextAction(0, &v145);
      }

      else
      {
        v93 = *(v63 + 32);
        v127 = (v63 + 32);
        v93(v119, v62, v52);

        swift_getWitnessTable();
        v94 = v63;
        v95 = v121;
        sub_1B6AB9850();
        v96 = *(v52 + 48);
        (*(*(v122 - 8) + 8))(&v95[*(v52 + 64)]);
        (*(*(v123 - 8) + 8))(&v95[v96]);
        (*(*(v124 - 8) + 8))(v95);
        (v132)(v61, v35);
        v97 = *(v116 + 12);
        v98 = *(v116 + 16);
        *v61 = v125;
        (v126)(v61 + v97, v58, v133);
        *(v61 + v98) = v144;
        swift_storeEnumTagMultiPayload();
        sub_1B69AC828();
        sub_1B6ABA280();
        sub_1B6AB9740();
        v99 = *(swift_getTupleTypeMetadata2() + 48);
        v100 = v141;
        *v141 = v135;
        v93(v100 + v99, v119, v64);
        (*(v94 + 56))(v100 + v99, 0, 1, v64);
        swift_storeEnumTagMultiPayload();
        v145 = v138;
        v146 = v117;
        v147 = v137;
        v148 = v143;
        v149 = v140;
        v150 = v139;
        type metadata accessor for CombineLatestStateMachine.NextAction(0, &v145);
      }

      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v144 = *v38;
        v40 = v144;
        v41 = *(v36 + 1);

        v42 = v142;
        (v41)(v142, v35);
        swift_storeEnumTagMultiPayload();
        v145 = v40;
        v43 = v131;
        sub_1B6AB95D0();
        swift_getWitnessTable();
        v44 = v127;
        sub_1B6AB9820();
        v45 = v130;
        if ((*(v130 + 48))(v44, 1, v43) == 1)
        {

          (*(v120 + 8))(v44, v134);

          (v41)(v42, v35);
          swift_storeEnumTagMultiPayload();
          v46 = v141;
          v47 = v135;
LABEL_15:
          *v46 = v47;
          v145 = v138;
          v146 = v34;
          v147 = v137;
          v148 = v143;
          v149 = v140;
          v150 = v139;
          type metadata accessor for CombineLatestStateMachine.NextAction(0, &v145);
          return swift_storeEnumTagMultiPayload();
        }

        v117 = v34;
        v87 = *(v45 + 32);
        v136 = v41;
        v87(v118, v44, v43);

        swift_getWitnessTable();
        v88 = v45;
        v89 = v121;
        sub_1B6AB9850();
        v90 = *(v43 + 48);
        (*(*(v122 - 8) + 8))(&v89[*(v43 + 64)]);
        (*(*(v123 - 8) + 8))(&v89[v90]);
        (*(*(v124 - 8) + 8))(v89);
        (v136)(v42, v35);
        *v42 = v144;
        swift_storeEnumTagMultiPayload();
        sub_1B69AC828();
        sub_1B6ABA280();
        sub_1B6AB9740();
        v91 = *(swift_getTupleTypeMetadata2() + 48);
        v92 = v141;
        *v141 = v135;
        v87(v92 + v91, v118, v43);
        (*(v88 + 56))(v92 + v91, 0, 1, v43);
        swift_storeEnumTagMultiPayload();
        v145 = v138;
        v146 = v117;
      }

      else
      {
        v75 = *v38;
        (*(v36 + 1))(v142, v35);
        swift_storeEnumTagMultiPayload();
        sub_1B69AC828();
        sub_1B6ABA280();
        sub_1B6AB9740();
        v76 = *(swift_getTupleTypeMetadata2() + 48);
        v77 = v141;
        *v141 = v135;
        *(v77 + v76) = v75;
        swift_storeEnumTagMultiPayload();
        v145 = v138;
        v146 = v34;
      }

      v147 = v137;
      v148 = v143;
      v149 = v140;
      v150 = v139;
      type metadata accessor for CombineLatestStateMachine.NextAction(0, &v145);
      return swift_storeEnumTagMultiPayload();
    }

    if (result == 5)
    {
      v47 = v135;
      v46 = v141;
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1B6A646A4(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = a1[6];
  v8 = a1[7];
  v121 = v3;
  v122 = v2;
  v123 = v5;
  v124 = AssociatedTypeWitness;
  v112 = AssociatedTypeWitness;
  v125 = v4;
  v126 = v7;
  v127 = v8;
  v9 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v121);
  v10 = swift_getAssociatedTypeWitness();
  v121 = v3;
  v122 = v2;
  v123 = v5;
  v124 = v10;
  v111 = v10;
  v125 = v4;
  v126 = v7;
  v127 = v8;
  v11 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v121);
  v12 = swift_getAssociatedTypeWitness();
  v121 = v3;
  v122 = v2;
  v123 = v5;
  v124 = v12;
  v125 = v4;
  v126 = v7;
  v127 = v8;
  v116 = v11;
  v117 = v9;
  v115 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v121);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v118 = *(TupleTypeMetadata3 - 8);
  v119 = TupleTypeMetadata3;
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v114 = &v103 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v103 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v103 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v103 - v25;
  v121 = v3;
  v122 = v2;
  v123 = v5;
  v124 = v4;
  v125 = v7;
  v126 = v8;
  v26 = type metadata accessor for CombineLatestStateMachine.State(0, &v121);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v103 - v28;
  (*(v27 + 16))(&v103 - v28, v120, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        return 0xF000000000000007;
      }

      __break(1u);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v31 = *(v27 + 8);
      v31(v29, v26);
      v31(v120, v26);
      swift_storeEnumTagMultiPayload();
      return 0xF000000000000007;
    }

    (*(v27 + 8))(v29, v26);
    return 0xF000000000000007;
  }

  if (!EnumCaseMultiPayload)
  {
    v60 = sub_1B6AB9B30();
    v61 = swift_getTupleTypeMetadata3();
    v62 = *(v61 + 48);
    v63 = *(v61 + 64);
    (*(v27 + 8))(v120, v26);
    swift_storeEnumTagMultiPayload();
    (*(*(v60 - 8) + 8))(&v29[v63], v60);
    (*(*(v2 - 8) + 8))(&v29[v62], v2);
    (*(*(v3 - 8) + 8))(v29, v3);
    return 0xF000000000000007;
  }

  v110 = v24;
  if (EnumCaseMultiPayload == 1)
  {
    v109 = *v29;
    sub_1B6A622CC();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v32 = v119;
    v33 = *(swift_getTupleTypeMetadata3() + 48);

    v34 = v118;
    v35 = v113;
    (*(v118 + 32))(v113, &v29[v33], v32);
    (*(v27 + 8))(v120, v26);
    swift_storeEnumTagMultiPayload();
    v36 = *(v34 + 16);
    v37 = v110;
    v36(v110, v35, v32);
    v111 = *(v32 + 48);
    v38 = *(v32 + 64);
    v107 = *v37;
    v108 = v38;
    v39 = *(v117 - 8);
    v105 = *(v39 + 8);
    v106 = v39 + 8;
    v105(v37);
    v36(v21, v35, v32);
    v40 = *(v32 + 48);
    v104 = *(v32 + 64);
    v112 = *&v21[v40];
    v41 = v116;
    v42 = *(*(v116 - 8) + 8);
    v42(&v21[v40], v116);
    v43 = v114;
    v36(v114, v35, v32);
    v44 = *(v32 + 48);
    v45 = *(v32 + 64);
    v120 = *&v43[v45];
    v46 = v115;
    v47 = *(*(v115 - 8) + 8);
    v47(&v43[v45], v115);
    v42(&v43[v44], v41);
    v48 = v43;
    v49 = v117;
    v50 = v105;
    (v105)(v48, v117);
    v47(v104 + v21, v46);
    v51 = v49;
    v52 = v107;
    v50(v21, v51);
    v53 = v110;
    v47(v110 + v108, v46);
    v42(v53 + v111, v41);
    if (v52)
    {
      v54 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = sub_1B69E36B0((v55 > 1), v56 + 1, 1, v54);
      }

      v57 = v109;
      v58 = v120;
      v59 = v112;
      *(v54 + 2) = v56 + 1;
      *&v54[8 * v56 + 32] = v52;
      if (!v59)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
      v57 = v109;
      v58 = v120;
      v59 = v112;
      if (!v112)
      {
LABEL_28:
        if (v58)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1B69E36B0(0, *(v54 + 2) + 1, 1, v54);
          }

          v98 = *(v54 + 2);
          v97 = *(v54 + 3);
          if (v98 >= v97 >> 1)
          {
            v54 = sub_1B69E36B0((v97 > 1), v98 + 1, 1, v54);
          }

          *(v54 + 2) = v98 + 1;
          *&v54[8 * v98 + 32] = v58;
        }

        (*(v118 + 8))(v113, v119);
        return (v57 | 0x8000000000000000);
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_1B69E36B0(0, *(v54 + 2) + 1, 1, v54);
    }

    v96 = *(v54 + 2);
    v95 = *(v54 + 3);
    if (v96 >= v95 >> 1)
    {
      v54 = sub_1B69E36B0((v95 > 1), v96 + 1, 1, v54);
    }

    *(v54 + 2) = v96 + 1;
    *&v54[8 * v96 + 32] = v59;
    goto LABEL_28;
  }

  v113 = &v103;
  v109 = *v29;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v103 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v65 = v119;
  v121 = v66;
  v122 = v119;
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  v67 = v16;
  sub_1B6AB9B30();
  sub_1B69AC828();
  sub_1B6ABA280();
  v123 = sub_1B6AB9740();
  v124 = sub_1B6AB95D0();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v69 = *(TupleTypeMetadata + 48);
  v113 = *&v29[*(TupleTypeMetadata + 64)];

  v70 = v118;
  (*(v118 + 32))(v67, &v29[v69], v65);
  (*(v27 + 8))(v120, v26);
  swift_storeEnumTagMultiPayload();
  v71 = *(v70 + 16);
  v72 = v110;
  v71(v110, v67, v65);
  v108 = *(v65 + 48);
  v106 = *(v65 + 64);
  v107 = *v72;
  v73 = v117;
  v74 = *(v117 - 8);
  v104 = *(v74 + 8);
  v105 = (v74 + 8);
  v104(v72, v117);
  v75 = v67;
  v71(v21, v67, v65);
  v76 = *(v65 + 48);
  v103 = *(v65 + 64);
  v111 = *&v21[v76];
  v77 = v116;
  v78 = *(*(v116 - 8) + 8);
  v78(&v21[v76], v116);
  v79 = v78;
  v80 = v114;
  v120 = v75;
  v71(v114, v75, v65);
  v81 = *(v65 + 48);
  v82 = *(v65 + 64);
  v112 = *&v80[v82];
  v83 = v115;
  v84 = *(*(v115 - 8) + 8);
  v84(&v80[v82], v115);
  v79(&v80[v81], v77);
  v85 = v80;
  v86 = v104;
  v104(v85, v73);
  v84(&v21[v103], v83);
  v86(v21, v73);
  v87 = v110;
  v84(v110 + v106, v83);
  v88 = v77;
  v89 = v107;
  v79(v87 + v108, v88);
  if (v89)
  {
    v90 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v92 = *(v90 + 2);
    v91 = *(v90 + 3);
    if (v92 >= v91 >> 1)
    {
      v90 = sub_1B69E36B0((v91 > 1), v92 + 1, 1, v90);
    }

    v94 = v111;
    v93 = v112;
    *(v90 + 2) = v92 + 1;
    *&v90[8 * v92 + 32] = v89;
    if (!v94)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v90 = MEMORY[0x1E69E7CC0];
  v94 = v111;
  v93 = v112;
  if (v111)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_1B69E36B0(0, *(v90 + 2) + 1, 1, v90);
    }

    v100 = *(v90 + 2);
    v99 = *(v90 + 3);
    if (v100 >= v99 >> 1)
    {
      v90 = sub_1B69E36B0((v99 > 1), v100 + 1, 1, v90);
    }

    *(v90 + 2) = v100 + 1;
    *&v90[8 * v100 + 32] = v94;
  }

LABEL_41:
  if (v93)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_1B69E36B0(0, *(v90 + 2) + 1, 1, v90);
    }

    v102 = *(v90 + 2);
    v101 = *(v90 + 3);
    if (v102 >= v101 >> 1)
    {
      v90 = sub_1B69E36B0((v101 > 1), v102 + 1, 1, v90);
    }

    *(v90 + 2) = v102 + 1;
    *&v90[8 * v102 + 32] = v93;
  }

  (*(v118 + 8))(v120, v119);
  return v113;
}

uint64_t sub_1B6A65470(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v35 = a1;
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = a3[6];
  v9 = a3[7];
  v41 = v4;
  v42 = v5;
  v43 = v6;
  v44 = AssociatedTypeWitness;
  v37 = AssociatedTypeWitness;
  v45 = v7;
  v46 = v10;
  v47 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v41);
  v11 = swift_getAssociatedTypeWitness();
  v41 = v4;
  v42 = v5;
  v43 = v6;
  v44 = v11;
  v36 = v11;
  v45 = v7;
  v46 = v10;
  v47 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v41);
  v12 = swift_getAssociatedTypeWitness();
  v41 = v4;
  v42 = v5;
  v43 = v6;
  v44 = v12;
  v45 = v7;
  v46 = v10;
  v47 = v9;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v41);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = (&v34 - v14);
  v41 = v4;
  v42 = v5;
  v43 = v6;
  v44 = v7;
  v45 = v10;
  v46 = v9;
  v16 = type metadata accessor for CombineLatestStateMachine.State(0, &v41);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = v40;
  (*(v17 + 16))(&v34 - v18);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      if (result == 5)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    if (result == 4)
    {
      (*(v17 + 8))(v19, v16);
LABEL_9:
      sub_1B6AB9610();
      sub_1B69D026C();
      swift_allocError();
      sub_1B6AB91E0();
      return v39;
    }

    goto LABEL_19;
  }

  if (result != 1)
  {
    if (result == 2)
    {

      MEMORY[0x1EEE9AC00](v22);
      strcpy(&v34 - 64, "task upstreams downstreamContinuation buffer ");
      sub_1B6A622CC();
      v23 = TupleTypeMetadata3;
      v41 = v24;
      v42 = TupleTypeMetadata3;
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      v43 = sub_1B6AB9740();
      v44 = sub_1B6AB95D0();
      v25 = *(swift_getTupleTypeMetadata() + 48);

      (*(v13 + 8))(&v19[v25], v23);
      return v39;
    }

    goto LABEL_20;
  }

  v34 = *v19;
  sub_1B6A622CC();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB95D0();
  v26 = TupleTypeMetadata3;
  v27 = swift_getTupleTypeMetadata3();
  v28 = *&v19[*(v27 + 64)];
  v29 = *(v13 + 32);
  v29(v15, &v19[*(v27 + 48)], v26);
  v30 = *(v17 + 8);
  v30(v20, v16);
  result = swift_storeEnumTagMultiPayload();
  switch(v35)
  {
    case 0:
      *v15 = v39;
LABEL_17:
      v30(v20, v16);
      v32 = *(v27 + 48);
      v33 = *(v27 + 64);
      *v20 = v34;
      v29((v20 + v32), v15, v26);
      *(v20 + v33) = v28;
      swift_storeEnumTagMultiPayload();
      return 0xF00000000000000FLL;
    case 1:
      v31 = *(v26 + 48);
LABEL_16:
      *(v15 + v31) = v39;
      goto LABEL_17;
    case 2:
      v31 = *(v26 + 64);
      goto LABEL_16;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B6A65A18@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v364 = a3;
  v365 = a2;
  v361 = a1;
  v353 = a5;
  v6 = a4[7];
  v7 = a4[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v369 = AssociatedTypeWitness;
  v370 = sub_1B6AB9B30();
  v356 = *(v370 - 8);
  v9 = MEMORY[0x1EEE9AC00](v370);
  v307 = &v301 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v334 = &v301 - v12;
  v340 = *(AssociatedTypeWitness - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v306 = &v301 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v319 = &v301 - v15;
  v16 = a4[6];
  v17 = a4[3];
  v18 = swift_getAssociatedTypeWitness();
  v355 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v314 = &v301 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v315 = &v301 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v312 = &v301 - v23;
  v24 = a4[5];
  v304 = a4;
  v25 = a4[2];
  v26 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v305 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v329 = &v301 - v27;
  v372 = sub_1B6AB9B30();
  v367 = *(v372 - 1);
  v28 = MEMORY[0x1EEE9AC00](v372);
  v321 = &v301 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v326 = &v301 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v316 = &v301 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v308 = &v301 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v311 = &v301 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v313 = &v301 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v331 = &v301 - v41;
  v362 = *(v26 - 8);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v335 = &v301 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v318 = &v301 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v317 = (&v301 - v47);
  MEMORY[0x1EEE9AC00](v46);
  v330 = &v301 - v48;
  v49 = sub_1B6AB9B30();
  v368 = *(v49 - 8);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v320 = &v301 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v325 = &v301 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v327 = (&v301 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v328 = &v301 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v310 = &v301 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v309 = &v301 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v332 = &v301 - v62;
  *&v374 = v25;
  *(&v374 + 1) = v17;
  *&v375 = v7;
  *(&v375 + 1) = v26;
  v349 = v26;
  v376 = v24;
  v377 = v16;
  v378 = v6;
  v63 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v374);
  *&v374 = v25;
  *(&v374 + 1) = v17;
  *&v375 = v7;
  *(&v375 + 1) = v18;
  v363 = v18;
  v376 = v24;
  v377 = v16;
  v378 = v6;
  v64 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v374);
  *&v374 = v25;
  *(&v374 + 1) = v17;
  *&v375 = v7;
  *(&v375 + 1) = v369;
  v376 = v24;
  v377 = v16;
  v378 = v6;
  v65 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v374);
  v341 = v63;
  v342 = v64;
  v339 = v65;
  v366 = swift_getTupleTypeMetadata3();
  v354 = *(v366 - 8);
  v66 = MEMORY[0x1EEE9AC00](v366);
  v346 = &v301 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v338 = &v301 - v68;
  v322 = v25;
  *&v69 = v25;
  v336 = v17;
  *(&v69 + 1) = v17;
  v324 = v7;
  *&v70 = v7;
  v323 = v24;
  *(&v70 + 1) = v24;
  v351 = v70;
  v374 = v69;
  v375 = v70;
  v352 = v69;
  v357 = v16;
  v376 = v16;
  v377 = v6;
  v358 = v6;
  v71 = type metadata accessor for CombineLatestStateMachine.State(0, &v374);
  v72 = *(v71 - 1);
  MEMORY[0x1EEE9AC00](v71);
  v74 = (&v301 - v73);
  v75 = v372;
  v76 = v370;
  v77 = swift_getTupleTypeMetadata3();
  v350 = *(v77 - 1);
  v78 = MEMORY[0x1EEE9AC00](v77);
  v333 = &v301 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v337 = &v301 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v301 - v82;
  v84 = (v368 + 16);
  v85 = *(v368 + 16);
  v86 = v361;
  v361 = v49;
  v85(&v301 - v82, v86, v49);
  v87 = *(v77 + 12);
  v88 = *(v367 + 16);
  v89 = v75;
  v90 = v72;
  v360 = (v367 + 16);
  v359 = v88;
  v88(&v83[v87], v365, v89);
  v365 = v77;
  v91 = *(v77 + 16);
  v92 = *(v356 + 16);
  v348 = v356 + 16;
  v347 = v92;
  v92(&v83[v91], v364, v76);
  (*(v90 + 16))(v74, v371, v71);
  v364 = v71;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v350[1](v83, v365);
        goto LABEL_14;
      }

      goto LABEL_55;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v350[1](v83, v365);
      (*(v90 + 8))(v74, v364);
LABEL_14:
      v374 = v352;
      v375 = v351;
      v376 = v357;
      v377 = v358;
      v123 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v374);
      return (*(*(v123 - 8) + 56))(v353, 1, 1, v123);
    }

    goto LABEL_53;
  }

  v343 = v85;
  v344 = v84;
  if (EnumCaseMultiPayload == 1)
  {
    v346 = *v74;
    sub_1B6A622CC();
    v124 = sub_1B6AB95D0();
    v125 = v366;
    v328 = v124;
    v126 = swift_getTupleTypeMetadata3();
    v127 = *(v126 + 48);
    v336 = v126;
    v128 = *(v74 + *(v126 + 64));
    (*(v354 + 32))(v338, v74 + v127, v125);
    v373 = v128;
    v129 = *(v90 + 8);
    v303 = v90 + 8;
    v335 = v129;
    (v129)(v371, v364);
    swift_storeEnumTagMultiPayload();
    v130 = *(v365 + 48);
    v131 = *(v365 + 64);
    v132 = v337;
    v133 = v361;
    v71 = v344;
    v134 = v343;
    v343(v337, v83, v361);
    (v359)(&v130[v132], &v83[v87], v372);
    v347(&v132[v131], &v83[v91], v370);
    v135 = v349;
    v327 = *(v362 + 48);
    v136 = v327(v132, 1, v349);
    v137 = v340;
    v333 = v130;
    if (v136 == 1)
    {
      v71 = *(v355 + 48);
      v138 = (v71)(&v130[v132], 1, v363);
      v139 = v369;
      if (v138 == 1)
      {
        v140 = (*(v137 + 48))(&v132[v131], 1, v369);
        v141 = v338;
        if (v140 == 1)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v142 = *(v137 + 32);
        v348 = v137 + 32;
        v347 = v142;
        v142(v319, &v132[v131], v139);
        v143 = v310;
        v343(v310, &v141[*(v341 + 76)], v361);
        if (v327(v143, 1, v349) == 1)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v144 = v366;
        v145 = v311;
        (v359)(v311, &v141[*(v366 + 48) + *(v342 + 76)], v372);
        if ((v71)(v145, 1, v363) == 1)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v146 = v334;
        v147 = v369;
        (*(v137 + 16))(v334, v319, v369);
        v360 = *(v137 + 56);
        v360(v146, 0, 1, v147);
        v148 = *(TupleTypeMetadata3 + 48);
        v359 = *(TupleTypeMetadata3 + 64);
        v149 = v329;
        (*(v362 + 32))(v329, v143, v349);
        (*(v355 + 32))(&v149[v148], v145, v363);
        v150 = v356;
        v151 = v370;
        (*(v356 + 32))(&v149[v359], v146, v370);
        sub_1B6AB95A0();
        v350[1](v83, v365);
        v152 = *(v144 + 64) + *(v339 + 76);
        v153 = v338;
        (*(v150 + 8))(&v338[v152], v151);
        v347(&v153[v152], v319, v147);
        v360(&v153[v152], 0, 1, v147);
        v154 = v372;
        v156 = v367;
        v155 = v368;
        v157 = v361;
      }

      else
      {
        v77 = v313;
        (v359)(v313, &v130[v132], v372);
        v185 = (*(v137 + 48))(&v132[v131], 1, v139);
        v71 = v338;
        v95 = &v379;
        if (v185 != 1)
        {
LABEL_57:
          v362 = *(v95 - 32);
          v349 = v363;
          v332 = v77;
LABEL_58:
          (*(v362 + 8))(v332, v349, v94);
          goto LABEL_59;
        }

        v186 = v355;
        v187 = v312;
        v369 = *(v355 + 32);
        v360 = (v355 + 32);
        v369();
        v188 = v309;
        v343(v309, &v71[*(v341 + 76)], v361);
        v189 = v349;
        if (v327(v188, 1, v349) == 1)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v190 = v71;
        v144 = v366;
        v359 = *(v366 + 64) + *(v339 + 76);
        v191 = *(TupleTypeMetadata3 + 48);
        v192 = *(TupleTypeMetadata3 + 64);
        v193 = v329;
        (*(v362 + 32))(v329, v188, v189);
        v194 = v363;
        (*(v186 + 16))(&v193[v191], v187, v363);
        v347(&v193[v192], &v190[v359], v370);
        sub_1B6AB95A0();
        v350[1](v83, v365);
        v195 = *(v144 + 48) + *(v342 + 76);
        v156 = v367;
        v196 = v372;
        (*(v367 + 8))(&v190[v195], v372);
        (v369)(&v190[v195], v187, v194);
        (*(v186 + 56))(&v190[v195], 0, 1, v194);
        v154 = v196;
        v157 = v361;
        v155 = v368;
        v153 = v190;
      }

      v177 = v371;
    }

    else
    {
      v134(v332, v132, v133);
      v158 = &v130[v132];
      v159 = *(v355 + 48);
      v160 = v159(v158, 1, v363);
      v94 = v369;
      if (v160 != 1)
      {
        goto LABEL_58;
      }

      v161 = (*(v137 + 48))(&v132[v131], 1, v369);
      v162 = v331;
      v163 = v330;
      if (v161 != 1)
      {
        goto LABEL_58;
      }

      v164 = v362;
      v369 = *(v362 + 32);
      (v369)(v330, v332, v135);
      v165 = *(v164 + 16);
      v71 = v317;
      v165(v317, v163, v135);
      v77 = v366;
      v153 = v338;
      (v359)(v162, &v338[*(v366 + 48) + *(v342 + 76)], v372);
      v166 = v363;
      v167 = v159(v162, 1, v363);
      v95 = &v379;
      v168 = v355;
      if (v167 == 1)
      {
        goto LABEL_56;
      }

      v169 = *(v77 + 16) + *(v339 + 76);
      v170 = *(TupleTypeMetadata3 + 48);
      v171 = *(TupleTypeMetadata3 + 64);
      v172 = v329;
      v173 = v71;
      v174 = v349;
      (v369)(v329, v173, v349);
      v175 = &v172[v170];
      v144 = v366;
      (*(v168 + 32))(v175, v331, v166);
      v347(&v172[v171], &v153[v169], v370);
      sub_1B6AB95A0();
      v350[1](v83, v365);
      v176 = *(v341 + 76);
      v155 = v368;
      v157 = v361;
      (*(v368 + 8))(&v153[v176], v361);
      (v369)(&v153[v176], v330, v174);
      (*(v362 + 56))(&v153[v176], 0, 1, v174);
      v177 = v371;
      v154 = v372;
      v156 = v367;
    }

    v197 = v337;
    (*(v156 + 8))(&v333[v337], v154);
    (*(v155 + 8))(v197, v157);
    (v335)(v177, v364);
    v198 = *(v336 + 48);
    v199 = *(v336 + 64);
    *v177 = v346;
    v200 = v354;
    (*(v354 + 16))(&v177[v198], v153, v144);
    *&v177[v199] = v373;
    swift_storeEnumTagMultiPayload();
    v374 = v352;
    v375 = v351;
    v376 = v357;
    v377 = v358;
    v201 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v374);
    (*(*(v201 - 8) + 56))(v353, 1, 1, v201);
    return (*(v200 + 8))(v153, v144);
  }

  v95 = &v374;
  v71 = TupleTypeMetadata3;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_54;
  }

  v96 = v90;
  v331 = *v74;
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v301 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v310 = v97;
  v98 = v366;
  *&v374 = v97;
  *(&v374 + 1) = v366;
  sub_1B6AB9B30();
  sub_1B69AC828();
  v312 = sub_1B6ABA280();
  v311 = sub_1B6AB9740();
  *&v375 = v311;
  *(&v375 + 1) = sub_1B6AB95D0();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v100 = TupleTypeMetadata[12];
  v101 = *(v74 + TupleTypeMetadata[16]);
  v317 = TupleTypeMetadata;
  v102 = *(v74 + TupleTypeMetadata[20]);
  (*(v354 + 32))(v346, v74 + v100, v98);
  v332 = v102;
  *&v374 = v102;
  v103 = sub_1B6AB95D0();
  swift_getWitnessTable();
  v77 = &v374;
  v104 = sub_1B6AB9830();
  v105 = v372;
  v95 = &v362;
  v106 = v333;
  if ((v104 & 1) == 0)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v309 = v103;
  v330 = v101;
  v107 = *(v96 + 8);
  v303 = v96 + 8;
  v329 = v107;
  (v107)(v371, v364);
  swift_storeEnumTagMultiPayload();
  v108 = *(v365 + 48);
  v109 = *(v365 + 64);
  v110 = v361;
  v111 = v105;
  v112 = v343;
  v343(v106, v83, v361);
  (v359)(&v106[v108], &v83[v87], v111);
  v113 = v109;
  v347(&v106[v109], &v83[v91], v370);
  v114 = *(v362 + 48);
  v115 = v349;
  v338 = (v362 + 48);
  v337 = v114;
  if ((v114)(v106, 1, v349) == 1)
  {
    v319 = *(v355 + 48);
    v116 = (v319)(&v106[v108], 1, v363);
    v117 = v346;
    v302 = v108;
    if (v116 == 1)
    {
      v118 = v340;
      v119 = v369;
      v313 = *(v340 + 48);
      result = (v313)(&v106[v113], 1, v369);
      if (result == 1)
      {
LABEL_65:
        __break(1u);
        return result;
      }

      v350[1](v83, v365);
      v121 = *(v366 + 64) + *(v339 + 76);
      (*(v356 + 8))(&v117[v121], v370);
      (*(v118 + 32))(&v117[v121], &v106[v113], v119);
      (*(v118 + 56))(&v117[v121], 0, 1, v119);
      v115 = v349;
      v122 = v367;
    }

    else
    {
      v71 = v308;
      v202 = v372;
      (v359)(v308, &v106[v108], v372);
      v313 = *(v340 + 48);
      if ((v313)(&v106[v113], 1, v369) != 1)
      {
LABEL_63:
        v362 = v355;
        v349 = v363;
        v328 = v71;
LABEL_64:
        result = (*(v362 + 8))(v328, v349);
        goto LABEL_65;
      }

      v350[1](v83, v365);
      v122 = v367;
      v203 = *(v366 + 48) + *(v342 + 76);
      (*(v367 + 8))(&v117[v203], v202);
      v204 = v355;
      v205 = v71;
      v206 = v363;
      (*(v355 + 32))(&v117[v203], v205, v363);
      (*(v204 + 56))(&v117[v203], 0, 1, v206);
    }

    v183 = v361;
    v182 = v368;
    v180 = v341;
    v179 = v302;
  }

  else
  {
    v112(v328, v106, v110);
    v319 = *(v355 + 48);
    v178 = (v319)(&v106[v108], 1, v363);
    v117 = v346;
    if (v178 != 1)
    {
      goto LABEL_64;
    }

    v179 = v108;
    v313 = *(v340 + 48);
    if ((v313)(&v106[v113], 1, v369) != 1)
    {
      goto LABEL_64;
    }

    v350[1](v83, v365);
    v180 = v341;
    v181 = *(v341 + 76);
    v182 = v368;
    v183 = v361;
    (*(v368 + 8))(&v117[v181], v361);
    v184 = v362;
    (*(v362 + 32))(&v117[v181], v328, v115);
    (*(v184 + 56))(&v117[v181], 0, 1, v115);
    v122 = v367;
  }

  v208 = *(v122 + 8);
  v207 = v122 + 8;
  v209 = &v106[v179];
  v210 = v372;
  v350 = v208;
  (v208)(v209, v372);
  v211 = *(v182 + 8);
  v211(v106, v183);
  v365 = *(v180 + 76);
  v212 = v327;
  v343(v327, &v117[v365], v183);
  v213 = (v337)(v212, 1, v115);
  v368 = v182 + 8;
  v328 = v211;
  if (v213 == 1)
  {
    v214 = v180;
    v211(v212, v183);
    v215 = v326;
    v216 = v115;
    v217 = v362;
  }

  else
  {
    v367 = v207;
    v217 = v362;
    v218 = v318;
    v333 = *(v362 + 32);
    (v333)(v318, v212, v115);
    v219 = v366;
    v220 = v316;
    (v359)(v316, &v117[*(v366 + 48) + *(v342 + 76)], v210);
    v221 = v355;
    v222 = v363;
    if ((v319)(v220, 1, v363) == 1)
    {
      (*(v217 + 8))(v218, v115);
      (v350)(v220, v210);
      v183 = v361;
      v214 = v341;
      v215 = v326;
      v216 = v115;
    }

    else
    {
      v223 = v340;
      v327 = *(v221 + 32);
      v327(v315, v220, v222);
      v224 = &v117[*(v219 + 64) + *(v339 + 76)];
      v225 = v307;
      v226 = v117;
      v227 = v370;
      v347(v307, v224, v370);
      v228 = v223;
      v229 = v369;
      if ((v313)(v225, 1, v369) != 1)
      {
        v372 = *(v228 + 32);
        (v372)(v306, v225, v229);
        v256 = v371;
        (v329)(v371, v364);
        v257 = swift_getTupleTypeMetadata3();
        v258 = *(v257 + 48);
        v259 = *(v257 + 64);
        *v256 = v331;
        (*(v354 + 16))(&v256[v258], v226, v219);
        *&v256[v259] = v332;
        swift_storeEnumTagMultiPayload();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v261 = v353;
        v262 = v353 + *(TupleTypeMetadata2 + 48);
        *v353 = v330;
        v263 = TupleTypeMetadata3;
        v264 = *(TupleTypeMetadata3 + 48);
        v265 = *(TupleTypeMetadata3 + 64);
        (v333)(v262, v318, v349);
        v327(&v262[v264], v315, v363);
        v266 = v369;
        (v372)(&v262[v265], v306, v369);
        (*(v340 + 56))(&v262[v265], 0, 1, v266);
        (*(v305 + 56))(v262, 0, 1, v263);
        swift_storeEnumTagMultiPayload();
        v374 = v352;
        v375 = v351;
        v376 = v357;
        v377 = v358;
        v267 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v374);
        (*(*(v267 - 8) + 56))(v261, 0, 1, v267);
        return (*(v354 + 8))(v346, v219);
      }

      (*(v221 + 8))(v315, v222);
      v217 = v362;
      v216 = v349;
      (*(v362 + 8))(v318, v349);
      (*(v356 + 8))(v225, v227);
      v183 = v361;
      v117 = v226;
      v214 = v341;
      v215 = v326;
    }
  }

  v230 = v325;
  v343(v325, &v117[v365], v183);
  v231 = (v337)(v230, 1, v216);
  v232 = v335;
  if (v231 == 1)
  {
    (v328)(v230, v183);
    v233 = v371;
  }

  else
  {
    v234 = v217;
    v367 = *(v217 + 32);
    v368 = v217 + 32;
    (v367)(v335, v230, v216);
    v235 = v216;
    v236 = v372;
    (v359)(v215, &v117[*(v366 + 48) + *(v342 + 76)], v372);
    v237 = v355;
    v238 = v363;
    v239 = (v319)(v215, 1, v363);
    v240 = v215;
    v233 = v371;
    if (v239 == 1)
    {
      (*(v234 + 8))(v232, v235);
      (v350)(v240, v236);
    }

    else
    {
      v241 = *(v237 + 32);
      v242 = v314;
      v241(v314, v240, v238);
      if (*&v233[*(v304 + 17)] == 2)
      {
        (v329)(v233, v364);
        v243 = v366;
        v244 = swift_getTupleTypeMetadata3();
        v245 = *(v244 + 48);
        v246 = v340;
        v247 = *(v244 + 64);
        *v233 = v331;
        v248 = v354;
        (*(v354 + 16))(&v233[v245], v117, v243);
        *&v233[v247] = v332;
        swift_storeEnumTagMultiPayload();
        v249 = swift_getTupleTypeMetadata2();
        v250 = v353;
        v251 = v353 + *(v249 + 48);
        *v353 = v330;
        v252 = TupleTypeMetadata3;
        v253 = *(TupleTypeMetadata3 + 48);
        v254 = *(TupleTypeMetadata3 + 64);
        (v367)(v251, v335, v349);
        v241(&v251[v253], v314, v363);
        (*(v246 + 56))(&v251[v254], 1, 1, v369);
        (*(v305 + 56))(v251, 0, 1, v252);
        swift_storeEnumTagMultiPayload();
        v374 = v352;
        v375 = v351;
        v376 = v357;
        v377 = v358;
        v255 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v374);
        (*(*(v255 - 8) + 56))(v250, 0, 1, v255);
        return (*(v248 + 8))(v346, v366);
      }

      (*(v237 + 8))(v242, v238);
      (*(v362 + 8))(v335, v235);
    }

    v216 = v235;
    v183 = v361;
    v214 = v341;
  }

  v268 = v331;
  (v329)(v233, v364);
  v269 = &v233[v317[12]];
  v270 = v317[16];
  v367 = v317[20];
  v368 = v270;
  *v233 = v268;
  v271 = *(v366 + 64);
  v361 = *(v366 + 48);
  v362 = v271;
  v272 = v366;
  v273 = *v117;
  v274 = v320;
  v343(v320, &v117[v365], v183);
  v275 = v117[*(v214 + 80)];
  v276 = v357;
  v277 = v269;
  v278 = v273;
  v279 = v274;
  v280 = v322;
  v281 = v117;
  v282 = v324;
  v283 = v323;
  sub_1B6A6B264(v278, v279, v275, v322, v336, v324, v216, v323, v269, v357, v358);
  v284 = v272;
  v285 = (v281 + *(v272 + 48));
  v365 = *v285;
  v286 = v342;
  v287 = v321;
  (v359)(v321, v285 + *(v342 + 76), v372);
  v288 = *(v285 + *(v286 + 80));
  v289 = v358;
  v300 = v276;
  v290 = v336;
  sub_1B6A6B264(v365, v287, v288, v280, v336, v282, v363, v283, &v277[v361], v300, v358);
  v291 = &v346[*(v284 + 64)];
  v292 = *v291;
  v293 = v339;
  v294 = v334;
  v347(v334, v291 + *(v339 + 76), v370);
  v295 = *(v291 + *(v293 + 80));
  v296 = v357;
  sub_1B6A6B264(v292, v294, v295, v280, v290, v282, v369, v283, &v277[v362], v357, v289);
  v297 = v371;
  v298 = v367;
  *&v371[v368] = v330;
  *(v297 + v298) = v332;
  swift_storeEnumTagMultiPayload();
  v374 = v352;
  v375 = v351;
  v376 = v296;
  v377 = v289;
  v299 = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(0, &v374);
  (*(*(v299 - 8) + 56))(v353, 1, 1, v299);
  return (*(v354 + 8))(v346, v366);
}

char *sub_1B6A68528(unint64_t a1, void *a2)
{
  v152 = a1;
  v3 = a2[7];
  v4 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v156 = sub_1B6AB9B30();
  v140 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v139 = &v133 - v6;
  v7 = a2[6];
  v8 = a2[3];
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_1B6AB9B30();
  v146 = *(v10 - 8);
  v147 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v133 - v11;
  v12 = a2[5];
  v138 = a2;
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  v144 = sub_1B6AB9B30();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v133 - v15;
  *&v159 = v13;
  *(&v159 + 1) = v8;
  *&v160 = v4;
  *(&v160 + 1) = v14;
  v154 = v14;
  v161 = v12;
  v162 = v7;
  v163 = v3;
  v16 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v159);
  *&v159 = v13;
  *(&v159 + 1) = v8;
  *&v160 = v4;
  *(&v160 + 1) = v9;
  v155 = v9;
  v161 = v12;
  v162 = v7;
  v163 = v3;
  v17 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v159);
  *&v159 = v13;
  *(&v159 + 1) = v8;
  *&v160 = v4;
  *(&v160 + 1) = AssociatedTypeWitness;
  v141 = AssociatedTypeWitness;
  v161 = v12;
  v162 = v7;
  v163 = v3;
  v18 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v159);
  v150 = v17;
  v151 = v16;
  v148 = v18;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19 = *(TupleTypeMetadata3 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v153 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v149 = &v133 - v22;
  *&v23 = v13;
  *(&v23 + 1) = v8;
  *&v24 = v4;
  *(&v24 + 1) = v12;
  v159 = v23;
  v160 = v24;
  v161 = v7;
  v162 = v3;
  v25 = type metadata accessor for CombineLatestStateMachine.State(0, &v159);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v133 - v27);
  (*(v26 + 16))(&v133 - v27, v158, v25);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result != 4)
      {
        __break(1u);
LABEL_121:
        __break(1u);
        return result;
      }

      (*(v26 + 8))(v28, v25);
      return 0xF000000000000007;
    }

    if (result == 5)
    {
      return 0xF000000000000007;
    }

    __break(1u);
    goto LABEL_13;
  }

  v137 = v19;
  if (result == 1)
  {
LABEL_13:
    v153 = *v28;
    sub_1B6A622CC();
    swift_getTupleTypeMetadata3();
    v38 = sub_1B6AB95D0();
    v49 = TupleTypeMetadata3;
    v50 = v19;
    v51 = swift_getTupleTypeMetadata3();
    v30 = *(v28 + *(v51 + 64));
    v52 = *(v50 + 32);
    v40 = v149;
    v52(v149, v28 + *(v51 + 48), v49);
    v39 = *(v26 + 8);
    v37 = v158;
    v39(v158, v25);
    v41 = swift_storeEnumTagMultiPayload();
    v53 = v40;
    v54 = v151;
    v42 = v151;
    v55 = v40;
    switch(v152)
    {
      case 0uLL:
        goto LABEL_25;
      case 1uLL:
        v56 = 48;
        v42 = v150;
LABEL_24:
        v55 = v40 + *(TupleTypeMetadata3 + v56);
LABEL_25:
        *(v55 + *(v42 + 80)) = 1;
        if (*(v40 + *(v54 + 80)) == 1)
        {
          v62 = (v40 + *(TupleTypeMetadata3 + 48));
          if (*(v62 + *(v150 + 80)) == 1)
          {
            v63 = (v40 + *(TupleTypeMetadata3 + 64));
            if (*(v63 + *(v148 + 80)) == 1)
            {
              *&v159 = v30;
              swift_getWitnessTable();
              if (sub_1B6AB9830())
              {

                v39(v158, v25);
              }

              else
              {
                v93 = v158;
                v39(v158, v25);
                *v93 = v30;
              }

              swift_storeEnumTagMultiPayload();
              v94 = *v149;
              v95 = *v62;
              v96 = *v63;
              if (*v149)
              {
                v97 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
                v99 = *(v97 + 2);
                v98 = *(v97 + 3);
                if (v99 >= v98 >> 1)
                {
                  v97 = sub_1B69E36B0((v98 > 1), v99 + 1, 1, v97);
                }

                *(v97 + 2) = v99 + 1;
                *&v97[8 * v99 + 32] = v94;
              }

              else
              {
                v97 = MEMORY[0x1E69E7CC0];
              }

              if (v95)
              {
                v107 = v97;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v107 = sub_1B69E36B0(0, *(v107 + 2) + 1, 1, v107);
                }

                v97 = v107;
                v109 = *(v107 + 2);
                v108 = *(v107 + 3);
                if (v109 >= v108 >> 1)
                {
                  v97 = sub_1B69E36B0((v108 > 1), v109 + 1, 1, v107);
                }

                *(v97 + 2) = v109 + 1;
                *&v97[8 * v109 + 32] = v95;
              }

              goto LABEL_89;
            }

            if (*&v158[*(v138 + 17)] == 2)
            {
              *&v159 = v30;
              swift_getWitnessTable();
              if (sub_1B6AB9830())
              {

                v39(v158, v25);
              }

              else
              {
                v110 = v158;
                v39(v158, v25);
                *v110 = v30;
              }

              swift_storeEnumTagMultiPayload();
              v111 = *v149;
              v112 = *v62;
              v96 = *v63;
              if (*v149)
              {
                v97 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
                v114 = *(v97 + 2);
                v113 = *(v97 + 3);
                if (v114 >= v113 >> 1)
                {
                  v97 = sub_1B69E36B0((v113 > 1), v114 + 1, 1, v97);
                }

                *(v97 + 2) = v114 + 1;
                *&v97[8 * v114 + 32] = v111;
              }

              else
              {
                v97 = MEMORY[0x1E69E7CC0];
              }

              if (v112)
              {
                v115 = v97;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v115 = sub_1B69E36B0(0, *(v115 + 2) + 1, 1, v115);
                }

                v97 = v115;
                v117 = *(v115 + 2);
                v116 = *(v115 + 3);
                if (v117 >= v116 >> 1)
                {
                  v97 = sub_1B69E36B0((v116 > 1), v117 + 1, 1, v115);
                }

                *(v97 + 2) = v117 + 1;
                *&v97[8 * v117 + 32] = v112;
                if (v96)
                {
                  goto LABEL_90;
                }

                goto LABEL_88;
              }

LABEL_89:
              if (v96)
              {
LABEL_90:
                v119 = v97;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v119 = sub_1B69E36B0(0, *(v119 + 2) + 1, 1, v119);
                }

                v120 = v119;
                v122 = *(v119 + 2);
                v121 = *(v119 + 3);
                v118 = v149;
                if (v122 >= v121 >> 1)
                {
                  v120 = sub_1B69E36B0((v121 > 1), v122 + 1, 1, v119);
                  v118 = v149;
                }

                *(v120 + 2) = v122 + 1;
                *&v120[8 * v122 + 32] = v96;
                goto LABEL_95;
              }

LABEL_88:
              v118 = v149;
LABEL_95:
              (*(v137 + 8))(v118, TupleTypeMetadata3);
              return v153;
            }
          }
        }

        v88 = v30;
        v89 = v158;
        v90 = v53;
        v39(v158, v25);
        v91 = *(v51 + 48);
        v92 = *(v51 + 64);
        *v89 = v153;
        v52(v89 + v91, v90, TupleTypeMetadata3);
        *(v89 + v92) = v88;
LABEL_67:
        swift_storeEnumTagMultiPayload();
        return 0xF000000000000007;
      case 2uLL:
        v56 = 64;
        v42 = v148;
        goto LABEL_24;
    }

    __break(1u);
    goto LABEL_119;
  }

  v31 = v154;
  v30 = v155;
  if (result != 2)
  {
    goto LABEL_121;
  }

  v149 = *v28;
  MEMORY[0x1EEE9AC00](result);
  strcpy(&v133 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v32 = TupleTypeMetadata3;
  *&v159 = v33;
  *(&v159 + 1) = TupleTypeMetadata3;
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  sub_1B6ABA280();
  *&v160 = sub_1B6AB9740();
  *(&v160 + 1) = sub_1B6AB95D0();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v35 = TupleTypeMetadata[12];
  v36 = *(v28 + TupleTypeMetadata[16]);
  v134 = TupleTypeMetadata;
  v37 = *(v28 + TupleTypeMetadata[20]);
  v38 = v137 + 32;
  v133 = *(v137 + 32);
  v133(v153, v28 + v35, v32);
  v39 = *(v26 + 8);
  v40 = v158;
  v39(v158, v25);
  v41 = swift_storeEnumTagMultiPayload();
  v42 = v152;
  v136 = v36;
  v135 = v37;
  if (!v152)
  {
    v57 = v151;
    v37 = v153;
    v153[*(v151 + 80)] = 1;
    v58 = v143;
    v59 = v142;
    v60 = v144;
    (*(v143 + 16))(v142, &v37[*(v57 + 76)], v144);
    v48 = (*(*(v31 - 8) + 48))(v59, 1, v31);
    (*(v58 + 8))(v59, v60);
LABEL_17:
    v61 = v158;
    if (v48 == 1)
    {
      goto LABEL_18;
    }

LABEL_32:
    v71 = v136;
    if (v37[*(v151 + 80)] == 1)
    {
      v72 = &v37[*(TupleTypeMetadata3 + 48)];
      if (v72[*(v150 + 80)] == 1)
      {
        v73 = &v37[*(TupleTypeMetadata3 + 64)];
        if (v73[*(v148 + 80)] == 1)
        {

          v39(v61, v25);
          swift_storeEnumTagMultiPayload();
          v74 = *v37;
          v75 = *v72;
          v76 = *v73;
          if (*v37)
          {
            v77 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v79 = *(v77 + 2);
            v78 = *(v77 + 3);
            v80 = v137;
            if (v79 >= v78 >> 1)
            {
              v77 = sub_1B69E36B0((v78 > 1), v79 + 1, 1, v77);
            }

            *(v77 + 2) = v79 + 1;
            *&v77[8 * v79 + 32] = v74;
          }

          else
          {
            v77 = MEMORY[0x1E69E7CC0];
            v80 = v137;
          }

          if (v75)
          {
            v123 = v77;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_1B69E36B0(0, *(v123 + 2) + 1, 1, v123);
            }

            v77 = v123;
            v125 = *(v123 + 2);
            v124 = *(v123 + 3);
            if (v125 >= v124 >> 1)
            {
              v77 = sub_1B69E36B0((v124 > 1), v125 + 1, 1, v123);
            }

            *(v77 + 2) = v125 + 1;
            *&v77[8 * v125 + 32] = v75;
          }

          if (!v76)
          {
            goto LABEL_117;
          }

          goto LABEL_104;
        }

        if (*(v61 + *(v138 + 17)) == 2)
        {

          v39(v61, v25);
          swift_storeEnumTagMultiPayload();
          v100 = *v37;
          v101 = *v72;
          v76 = *v73;
          if (*v37)
          {
            v77 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v103 = *(v77 + 2);
            v102 = *(v77 + 3);
            v80 = v137;
            if (v103 >= v102 >> 1)
            {
              v77 = sub_1B69E36B0((v102 > 1), v103 + 1, 1, v77);
            }

            *(v77 + 2) = v103 + 1;
            *&v77[8 * v103 + 32] = v100;
          }

          else
          {
            v77 = MEMORY[0x1E69E7CC0];
            v80 = v137;
          }

          if (v101)
          {
            v130 = v77;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v130 = sub_1B69E36B0(0, *(v130 + 2) + 1, 1, v130);
            }

            v77 = v130;
            v132 = *(v130 + 2);
            v131 = *(v130 + 3);
            if (v132 >= v131 >> 1)
            {
              v77 = sub_1B69E36B0((v131 > 1), v132 + 1, 1, v130);
            }

            *(v77 + 2) = v132 + 1;
            *&v77[8 * v132 + 32] = v101;
          }

          if (!v76)
          {
            goto LABEL_117;
          }

LABEL_104:
          v126 = v77;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_1B69E36B0(0, *(v126 + 2) + 1, 1, v126);
          }

          v127 = v126;
          v129 = *(v126 + 2);
          v128 = *(v126 + 3);
          if (v129 >= v128 >> 1)
          {
            v127 = sub_1B69E36B0((v128 > 1), v129 + 1, 1, v126);
          }

          *(v127 + 2) = v129 + 1;
          *&v127[8 * v129 + 32] = v76;
LABEL_117:
          (*(v80 + 8))(v37, TupleTypeMetadata3);
          return (v71 | 0x8000000000000000);
        }
      }
    }

    v39(v61, v25);
    v104 = v134[12];
    v105 = v134[16];
    v106 = v134[20];
    *v61 = v149;
    v133(v61 + v104, v37, TupleTypeMetadata3);
    *(v61 + v105) = v71;
    *(v61 + v106) = v135;
    goto LABEL_67;
  }

  if (v152 == 1)
  {
    v37 = v153;
    v43 = &v153[*(TupleTypeMetadata3 + 48)];
    v44 = v150;
    v43[*(v150 + 80)] = 1;
    v46 = v145;
    v45 = v146;
    v47 = v147;
    (*(v146 + 16))(v145, &v43[*(v44 + 76)], v147);
    v48 = (*(*(v30 - 8) + 48))(v46, 1, v30);
    (*(v45 + 8))(v46, v47);
    goto LABEL_17;
  }

  v51 = v153;
  v61 = v158;
  if (v152 != 2)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    v41 = sub_1B69E36B0((v42 > 1), v40, 1, v41);
LABEL_20:
    *(v41 + 16) = v40;
    *(v41 + 8 * v25 + 32) = v38;
    if (!v30)
    {
      goto LABEL_45;
    }

LABEL_40:
    v81 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1B69E36B0(0, *(v81 + 2) + 1, 1, v81);
    }

    v41 = v81;
    v83 = *(v81 + 2);
    v82 = *(v81 + 3);
    if (v83 >= v82 >> 1)
    {
      v41 = sub_1B69E36B0((v82 > 1), v83 + 1, 1, v81);
    }

    *(v41 + 16) = v83 + 1;
    *(v41 + 8 * v83 + 32) = v30;
    goto LABEL_45;
  }

  v64 = v156;
  v65 = &v153[*(TupleTypeMetadata3 + 64)];
  v66 = v148;
  v65[*(v148 + 80)] = 1;
  v67 = v140;
  v68 = v139;
  (*(v140 + 16))(v139, &v65[*(v66 + 76)], v64);
  v69 = (*(*(v141 - 8) + 48))(v68, 1);
  v70 = v68;
  v37 = v51;
  (*(v67 + 8))(v70, v64);
  if (v69 != 1)
  {
    goto LABEL_32;
  }

LABEL_18:

  v39(v61, v25);
  swift_storeEnumTagMultiPayload();
  v38 = *v37;
  v30 = *&v37[*(TupleTypeMetadata3 + 48)];
  v39 = *&v37[*(TupleTypeMetadata3 + 64)];
  if (*v37)
  {
    v41 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v25 = *(v41 + 16);
    v42 = *(v41 + 24);
    v40 = v25 + 1;
    v51 = v137;
    if (v25 < v42 >> 1)
    {
      goto LABEL_20;
    }

    goto LABEL_120;
  }

  v41 = MEMORY[0x1E69E7CC0];
  v51 = v137;
  if (v30)
  {
    goto LABEL_40;
  }

LABEL_45:
  if (v39)
  {
    v84 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_1B69E36B0(0, *(v84 + 2) + 1, 1, v84);
    }

    v85 = v84;
    v87 = *(v84 + 2);
    v86 = *(v84 + 3);
    if (v87 >= v86 >> 1)
    {
      v85 = sub_1B69E36B0((v86 > 1), v87 + 1, 1, v84);
    }

    *(v85 + 2) = v87 + 1;
    *&v85[8 * v87 + 32] = v39;
  }

  (*(v51 + 8))(v37, TupleTypeMetadata3);
  return (v136 | 0x8000000000000000);
}

char *sub_1B6A698C4(void *a1, void *a2)
{
  v124 = a1;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a2[6];
  v9 = a2[7];
  v131 = v3;
  v132 = v4;
  v133 = v5;
  v134 = AssociatedTypeWitness;
  v126 = AssociatedTypeWitness;
  v135 = v6;
  v136 = v8;
  v137 = v9;
  v10 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v131);
  v11 = swift_getAssociatedTypeWitness();
  v131 = v3;
  v132 = v4;
  v133 = v5;
  v134 = v11;
  v125 = v11;
  v135 = v6;
  v136 = v8;
  v137 = v9;
  v12 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v131);
  v13 = swift_getAssociatedTypeWitness();
  v131 = v3;
  v132 = v4;
  v133 = v5;
  v134 = v13;
  v120 = v13;
  v135 = v6;
  v136 = v8;
  v137 = v9;
  v127 = v10;
  v122 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v131);
  v123 = v12;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v128 = *(TupleTypeMetadata3 - 8);
  v129 = TupleTypeMetadata3;
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v121 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v111 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v111 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v111 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v111 - v26;
  v131 = v3;
  v132 = v4;
  v133 = v5;
  v134 = v6;
  v135 = v8;
  v136 = v9;
  v28 = type metadata accessor for CombineLatestStateMachine.State(0, &v131);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v111 - v30;
  (*(v29 + 16))(&v111 - v30, v130, v28);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v117 = v27;
    v118 = v19;
    v119 = v22;
    v116 = v25;
    if (result != 1)
    {
      v33 = v25;
      v35 = v129;
      v34 = v130;
      if (result != 2)
      {
        goto LABEL_46;
      }

      v117 = *v31;
      MEMORY[0x1EEE9AC00](result);
      strcpy(&v111 - 64, "task upstreams downstreamContinuation buffer ");
      sub_1B6A622CC();
      v131 = v36;
      v132 = v35;
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      sub_1B6ABA280();
      v133 = sub_1B6AB9740();
      v134 = sub_1B6AB95D0();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v38 = *(TupleTypeMetadata + 48);
      v115 = *&v31[*(TupleTypeMetadata + 64)];

      v39 = v128;
      v40 = &v31[v38];
      v41 = v121;
      (*(v128 + 32))(v121, v40, v35);
      (*(v29 + 8))(v34, v28);
      swift_storeEnumTagMultiPayload();
      v42 = v35;
      v43 = *(v39 + 16);
      v43(v33, v41, v42);
      v120 = *(v42 + 48);
      v114 = *(v42 + 64);
      v125 = *v33;
      v44 = v33;
      v45 = v127;
      v46 = *(v127 - 8);
      v112 = *(v46 + 8);
      v113 = v46 + 8;
      v112(v44, v127);
      v47 = v119;
      v43(v119, v41, v42);
      v48 = *(v42 + 48);
      v111 = *(v42 + 64);
      v126 = *&v47[v48];
      v49 = v123;
      v50 = *(*(v123 - 8) + 8);
      v50(&v47[v48], v123);
      v51 = v118;
      v43(v118, v41, v42);
      v52 = *(v42 + 48);
      v53 = *(v42 + 64);
      v130 = *&v51[v53];
      v54 = v122;
      v55 = *(*(v122 - 8) + 8);
      v55(&v51[v53], v122);
      v50(&v51[v52], v49);
      v56 = v51;
      v57 = v112;
      v112(v56, v45);
      v55(&v47[v111], v54);
      v57(v47, v45);
      v58 = v116;
      v55(&v114[v116], v54);
      v50(&v58[v120], v49);
      if (v125)
      {
        v59 = v125;
        v60 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v62 = *(v60 + 2);
        v61 = *(v60 + 3);
        v63 = v124;
        if (v62 >= v61 >> 1)
        {
          v60 = sub_1B69E36B0((v61 > 1), v62 + 1, 1, v60);
        }

        v64 = v128;
        v65 = v115;
        v66 = v121;
        v67 = v130;
        v68 = v126;
        *(v60 + 2) = v62 + 1;
        *&v60[8 * v62 + 32] = v59;
        if (!v68)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v60 = MEMORY[0x1E69E7CC0];
        v63 = v124;
        v64 = v128;
        v65 = v115;
        v66 = v121;
        v67 = v130;
        v68 = v126;
        if (!v126)
        {
LABEL_37:
          if (v67)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_1B69E36B0(0, *(v60 + 2) + 1, 1, v60);
            }

            v109 = *(v60 + 2);
            v108 = *(v60 + 3);
            if (v109 >= v108 >> 1)
            {
              v60 = sub_1B69E36B0((v108 > 1), v109 + 1, 1, v60);
            }

            *(v60 + 2) = v109 + 1;
            *&v60[8 * v109 + 32] = v67;
          }

          (*(v64 + 8))(v66, v129);
          v110 = v63;
          return v65;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1B69E36B0(0, *(v60 + 2) + 1, 1, v60);
      }

      v107 = *(v60 + 2);
      v106 = *(v60 + 3);
      if (v107 >= v106 >> 1)
      {
        v60 = sub_1B69E36B0((v106 > 1), v107 + 1, 1, v60);
      }

      *(v60 + 2) = v107 + 1;
      *&v60[8 * v107 + 32] = v68;
      goto LABEL_37;
    }

    v115 = *v31;
    sub_1B6A622CC();
    sub_1B6AB9B30();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v69 = v129;
    v70 = *(swift_getTupleTypeMetadata3() + 48);

    v71 = v128;
    v72 = v117;
    (*(v128 + 32))(v117, &v31[v70], v69);
    v73 = v130;
    (*(v29 + 8))(v130, v28);
    v74 = v124;
    *v73 = v124;
    swift_storeEnumTagMultiPayload();
    v75 = *(v71 + 16);
    v75(v25, v72, v69);
    v76 = *(v69 + 48);
    v125 = *(v69 + 64);
    v126 = v76;
    v121 = *v25;
    v77 = v74;
    v78 = *(v127 - 8);
    v114 = *(v78 + 8);
    v120 = v78 + 8;
    (v114)(v25);
    v79 = v119;
    v75(v119, v72, v69);
    v80 = *(v69 + 48);
    v113 = *(v69 + 64);
    v130 = *&v79[v80];
    v81 = v123;
    v82 = *(*(v123 - 8) + 8);
    v82(&v79[v80], v123);
    v83 = v118;
    v75(v118, v72, v69);
    v84 = *(v69 + 48);
    v85 = *(v69 + 64);
    v124 = *&v83[v85];
    v86 = v122;
    v87 = *(*(v122 - 8) + 8);
    v87(&v83[v85], v122);
    v82(&v83[v84], v81);
    v88 = v82;
    v89 = v83;
    v90 = v127;
    v91 = v114;
    (v114)(v89, v127);
    v87(&v79[v113], v86);
    v92 = v79;
    v93 = v121;
    v91(v92, v90);
    v94 = v116;
    v87(&v116[v125], v86);
    v88(&v94[v126], v81);
    if (v93)
    {
      v95 = sub_1B69E36B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v97 = *(v95 + 2);
      v96 = *(v95 + 3);
      if (v97 >= v96 >> 1)
      {
        v95 = sub_1B69E36B0((v96 > 1), v97 + 1, 1, v95);
      }

      v98 = v128;
      v65 = v115;
      v99 = v117;
      v100 = v130;
      v101 = v124;
      *(v95 + 2) = v97 + 1;
      *&v95[8 * v97 + 32] = v93;
      if (!v100)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v95 = MEMORY[0x1E69E7CC0];
      v98 = v128;
      v65 = v115;
      v99 = v117;
      v100 = v130;
      v101 = v124;
      if (!v130)
      {
LABEL_24:
        if (v101)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_1B69E36B0(0, *(v95 + 2) + 1, 1, v95);
          }

          v105 = *(v95 + 2);
          v104 = *(v95 + 3);
          if (v105 >= v104 >> 1)
          {
            v95 = sub_1B69E36B0((v104 > 1), v105 + 1, 1, v95);
          }

          *(v95 + 2) = v105 + 1;
          *&v95[8 * v105 + 32] = v101;
        }

        (*(v98 + 8))(v99, v129);
        return v65;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_1B69E36B0(0, *(v95 + 2) + 1, 1, v95);
    }

    v103 = *(v95 + 2);
    v102 = *(v95 + 3);
    if (v103 >= v102 >> 1)
    {
      v95 = sub_1B69E36B0((v102 > 1), v103 + 1, 1, v95);
    }

    *(v95 + 2) = v103 + 1;
    *&v95[8 * v103 + 32] = v100;
    goto LABEL_24;
  }

  if (result <= 4)
  {
    (*(v29 + 8))(v31, v28);
    return 0xF000000000000007;
  }

  if (result == 5)
  {
    return 0xF000000000000007;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1B6A6A5E4(uint64_t *a1, uint64_t a2, void *a3)
{
  v84 = a2;
  v89 = a1;
  v4 = a3[7];
  v5 = a3[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = sub_1B6AB9B30();
  MEMORY[0x1EEE9AC00](v90);
  v83 = &v71 - v6;
  v7 = a3[6];
  v8 = a3[3];
  v91 = swift_getAssociatedTypeWitness();
  v9 = sub_1B6AB9B30();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v71 - v10;
  v11 = a3[5];
  v12 = a3[2];
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1B6AB9B30();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v71 - v15;
  *&v16 = v12;
  *(&v16 + 1) = v8;
  *&v17 = v5;
  *(&v17 + 1) = v11;
  v99 = v16;
  v100 = v17;
  v101 = v7;
  v102 = v4;
  v18 = type metadata accessor for CombineLatestStateMachine.State(0, &v99);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v88 = (&v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v71 - v21;
  v85 = v23;
  (*(v23 + 16))(&v71 - v21, v92, v18);
  v86 = v18;
  v87 = v22;
  result = swift_getEnumCaseMultiPayload();
  v93 = v13;
  if (!result)
  {
    v78 = sub_1B6AB9B30();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v77 = &v71;
    v80 = *(TupleTypeMetadata3 + 48);
    v79 = *(TupleTypeMetadata3 + 64);
    MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
    v76 = &v71 - 8;
    strcpy(&v71 - 64, "task upstreams downstreamContinuation buffer ");
    sub_1B6A622CC();
    v95 = v26;
    *&v99 = v12;
    *(&v99 + 1) = v8;
    *&v100 = v5;
    *(&v100 + 1) = v13;
    v101 = v11;
    v102 = v7;
    v103 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    v27 = v7;
    *&v99 = v12;
    *(&v99 + 1) = v8;
    v28 = v91;
    *&v100 = v5;
    *(&v100 + 1) = v91;
    v101 = v11;
    v102 = v7;
    v29 = v11;
    v103 = v4;
    v75 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    *&v99 = v12;
    *(&v99 + 1) = v8;
    *&v100 = v5;
    *(&v100 + 1) = AssociatedTypeWitness;
    v101 = v11;
    v102 = v27;
    v103 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    v96 = swift_getTupleTypeMetadata3();
    swift_getTupleTypeMetadata3();
    sub_1B6AB9B30();
    sub_1B69AC828();
    sub_1B6ABA280();
    v97 = sub_1B6AB9740();
    v98 = sub_1B6AB95D0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v74 = v88 + TupleTypeMetadata[12];
    v76 = TupleTypeMetadata[16];
    v77 = TupleTypeMetadata[20];
    *v88 = v89;
    *&v99 = v12;
    *(&v99 + 1) = v8;
    v31 = v8;
    *&v100 = v5;
    *(&v100 + 1) = v93;
    v101 = v11;
    v102 = v27;
    v32 = v27;
    v33 = v75;
    v103 = v75;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    *&v99 = v12;
    *(&v99 + 1) = v8;
    *&v100 = v5;
    *(&v100 + 1) = v28;
    v34 = v5;
    v101 = v29;
    v102 = v32;
    v35 = v29;
    v103 = v33;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    *&v99 = v12;
    *(&v99 + 1) = v8;
    *&v100 = v34;
    *(&v100 + 1) = AssociatedTypeWitness;
    v101 = v29;
    v102 = v32;
    v103 = v33;
    v36 = v33;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    v37 = swift_getTupleTypeMetadata3();
    v72 = *(v37 + 48);
    v73 = *(v37 + 64);
    v38 = v93;
    v39 = v81;
    (*(*(v93 - 8) + 56))(v81, 1, 1, v93);
    v70 = v33;
    v40 = v74;
    v41 = v12;
    sub_1B6A6B264(0, v39, 0, v12, v31, v34, v38, v35, v74, v32, v70);
    v42 = v91;
    v43 = v82;
    (*(*(v91 - 8) + 56))(v82, 1, 1, v91);
    v44 = v40;
    sub_1B6A6B264(0, v43, 0, v41, v31, v34, v42, v35, &v40[v72], v32, v36);
    v45 = AssociatedTypeWitness;
    v46 = v83;
    (*(*(AssociatedTypeWitness - 8) + 56))(v83, 1, 1, AssociatedTypeWitness);
    v70 = v36;
    v47 = v31;
    sub_1B6A6B264(0, v46, 0, v41, v31, v34, v45, v35, &v44[v73], v32, v70);
    v48 = v88;
    *(v76 + v88) = v84;

    swift_getTupleTypeMetadata3();
    *(v77 + v48) = sub_1B6AB91D0();
    v49 = v86;
    swift_storeEnumTagMultiPayload();
    (*(v85 + 40))(v92, v48, v49);
    v50 = v87;
    (*(*(v78 - 8) + 8))(&v87[v79]);
    (*(*(v47 - 8) + 8))(&v50[v80], v47);
    return (*(*(v41 - 8) + 8))(v50, v41);
  }

  v52 = v85;
  v51 = v86;
  v53 = v8;
  v54 = v11;
  v55 = v7;
  v56 = v91;
  v57 = AssociatedTypeWitness;
  v58 = v87;
  if (result > 3)
  {
    if (result != 4)
    {
      if (result == 5)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

LABEL_10:
    result = (*(v52 + 8))(v58, v51);
    goto LABEL_12;
  }

  if (result == 1)
  {

    sub_1B6A622CC();
    v92 = v66;
    *&v99 = v12;
    *(&v99 + 1) = v53;
    *&v100 = v5;
    *(&v100 + 1) = v13;
    v101 = v54;
    v102 = v55;
    v103 = v4;
    v89 = type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    *&v99 = v12;
    *(&v99 + 1) = v53;
    *&v100 = v5;
    *(&v100 + 1) = v56;
    v101 = v54;
    v102 = v55;
    v103 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    *&v99 = v12;
    *(&v99 + 1) = v53;
    *&v100 = v5;
    *(&v100 + 1) = v57;
    v101 = v54;
    v102 = v55;
    v103 = v4;
    type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
    v67 = swift_getTupleTypeMetadata3();
    swift_getTupleTypeMetadata3();
    sub_1B6AB95D0();
    v68 = *(swift_getTupleTypeMetadata3() + 48);
    v69 = v87;

    result = (*(*(v67 - 8) + 8))(&v69[v68], v67);
    goto LABEL_12;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v92 = &v71;
  MEMORY[0x1EEE9AC00](v59);
  v89 = &v71 - 8;
  strcpy(&v71 - 64, "task upstreams downstreamContinuation buffer ");
  sub_1B6A622CC();
  v95 = v60;
  *&v99 = v12;
  *(&v99 + 1) = v53;
  *&v100 = v5;
  *(&v100 + 1) = v13;
  v61 = v54;
  v101 = v54;
  v102 = v55;
  v103 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
  *&v99 = v12;
  *(&v99 + 1) = v53;
  v71 = v53;
  *&v100 = v5;
  *(&v100 + 1) = v56;
  v101 = v54;
  v102 = v55;
  v103 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
  *&v99 = v12;
  *(&v99 + 1) = v53;
  *&v100 = v5;
  *(&v100 + 1) = v57;
  v101 = v54;
  v102 = v55;
  v103 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
  v96 = swift_getTupleTypeMetadata3();
  v62 = v93;
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  sub_1B6ABA280();
  v97 = sub_1B6AB9740();
  v98 = sub_1B6AB95D0();
  v92 = *(swift_getTupleTypeMetadata() + 48);
  v63 = v87;

  v64 = v71;
  *&v99 = v12;
  *(&v99 + 1) = v71;
  *&v100 = v5;
  *(&v100 + 1) = v62;
  v101 = v61;
  v102 = v55;
  v103 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
  *&v99 = v12;
  *(&v99 + 1) = v64;
  *&v100 = v5;
  *(&v100 + 1) = v56;
  v101 = v61;
  v102 = v55;
  v103 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
  *&v99 = v12;
  *(&v99 + 1) = v64;
  *&v100 = v5;
  *(&v100 + 1) = AssociatedTypeWitness;
  v101 = v61;
  v102 = v55;
  v103 = v4;
  type metadata accessor for CombineLatestStateMachine.State.Upstream(255, &v99);
  v65 = swift_getTupleTypeMetadata3();
  result = (*(*(v65 - 8) + 8))(&v92[v63], v65);
LABEL_12:
  __break(1u);
  return result;
}