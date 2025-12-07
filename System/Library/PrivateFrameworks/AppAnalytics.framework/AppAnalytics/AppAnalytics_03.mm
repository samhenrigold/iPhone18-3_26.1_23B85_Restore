uint64_t sub_1B69C19FC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B69C1A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(a2 + 8))(v14);
  if (v14[1])
  {
    return v14[0];
  }

  while (1)
  {
    swift_beginAccess();
    v5 = *(v3 + 168);
    if (v5 >> 62)
    {
      break;
    }

    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_19:

    v4 = 0;
    v10 = 0;
LABEL_23:
    v13 = *(v3 + 152);

    if (!v13)
    {
      return v4;
    }

    v3 = v13;
    if (v10)
    {

      return v4;
    }
  }

  result = sub_1B6AB9E60();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_6:
  v7 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    if ((v5 & 0xC000000000000001) != 0)
    {

      v9 = MEMORY[0x1B8C98510](v7, v5);
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v8;
    }

    v4 = *&v9[OBJC_IVAR___AAGroup_name];
    v10 = *&v9[OBJC_IVAR___AAGroup_name + 8];

    v11 = *(v3 + 168);
    if (v11 >> 62)
    {
      result = sub_1B6AB9E60();
      if (result)
      {
LABEL_13:
        v12 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_31;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {

          MEMORY[0x1B8C98510](v12, v11);

          swift_unknownObjectRelease();
          goto LABEL_23;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (v12 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

__n128 ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:timestampConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v18 = *a11;
  v19 = a11[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 3) = 0x302E312E30;
  *(a9 + 4) = 0xE500000000000000;
  *(a9 + 2) = a3;
  v20 = type metadata accessor for ProcessEvent(0, a12, a13, a4);
  v21 = v20[11];
  v22 = sub_1B6AB8DB0();
  (*(*(v22 - 8) + 32))(&a9[v21], a4, v22);
  v23 = &a9[v20[12]];
  *v23 = a5;
  *(v23 + 1) = a6;
  v24 = &a9[v20[13]];
  *v24 = a7;
  v24[8] = a8 & 1;
  v25 = &a9[v20[14]];
  result = *a10;
  v27 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 1) = v27;
  v28 = &a9[v20[15]];
  *v28 = v18;
  *(v28 + 1) = v19;
  return result;
}

uint64_t sub_1B69C1DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v6 = type metadata accessor for ProcessEvent(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(*(v5 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = v17;
  LOBYTE(v17) = sub_1B6AB9110();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v20 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v5 + v20, v12, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v23 = v30;
      v22 = v31;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(v12, type metadata accessor for SessionManager.SessionState);
      }

      v24 = *(v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 24);
      v25 = *(v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 32);
      __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider), v24);
      v26 = (*(v25 + 8))(v32, v24, v25);
      v27 = LOBYTE(v32[0]);
    }

    else
    {
      v28 = (*v12 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter);
      v27 = *v28;
      v26 = v28[1];

      v23 = v30;
      v22 = v31;
    }

    v32[0] = v27;
    *&v32[1] = v26;
    ProcessEvent.with(timestampConfiguration:)(v32, v6, v9);
    sub_1B69C2290(v9, v23, v22);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ProcessEvent.with(timestampConfiguration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v23 = a3;
  v6 = sub_1B6AB8DB0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = v3[1];
  v22 = *v3;
  v24 = v3[2];
  (*(v12 + 16))(v8, v3 + *(a2 + 44));
  v13 = *(a2 + 52);
  v14 = (v3 + *(a2 + 48));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v3 + v13);
  v18 = *(v3 + v13 + 8);
  sub_1B69C1678(v3 + *(a2 + 56), v26);
  v25[0] = v9;
  v25[1] = v10;
  ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:timestampConfiguration:)(v22, v11, v24, v8, v15, v16, v17, v18, v23, v26, v25, *(a2 + 16), *(a2 + 24));

  v19 = v24;

  return v19;
}

uint64_t sub_1B69C2290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*(v3 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    result = *(v3 + 48);
    v14 = *(result + 16);
    if (v14)
    {

      v15 = (v19 + 40);
      do
      {
        v16 = *v15;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 8);
        swift_unknownObjectRetain();
        v18(a1, a2, a3, ObjectType, v16);
        swift_unknownObjectRelease();
        v15 += 2;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B69C245C(uint64_t a1, uint64_t a2)
{
  sub_1B69C2598();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABF500;
  if (qword_1EDBC8130 != -1)
  {
    v16 = inited;
    swift_once();
    inited = v16;
  }

  v6 = unk_1EDBC8140;
  v7 = qword_1EDBC8148;
  v8 = unk_1EDBC8150;
  v9 = qword_1EDBC8158;
  v10 = unk_1EDBC8160;
  *(inited + 32) = qword_1EDBC8138;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 42;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 42;
  *(inited + 120) = 0xE100000000000000;
  v11 = inited;

  v12 = sub_1B69C2608(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1B69C292C(v12, *(v2 + 16));
  v14 = v13;

  return (v14 & 1) == 0;
}

void sub_1B69C2598()
{
  if (!qword_1EDBC7FF8)
  {
    v0 = sub_1B6ABA090();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC7FF8);
    }
  }
}

void sub_1B69C25E8()
{
  qword_1EDBC8138 = 42;
  unk_1EDBC8140 = 0xE100000000000000;
  qword_1EDBC8148 = 42;
  unk_1EDBC8150 = 0xE100000000000000;
  qword_1EDBC8158 = 42;
  unk_1EDBC8160 = 0xE100000000000000;
}

uint64_t sub_1B69C2608(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B69C287C(0);
    v3 = sub_1B6AB9C60();
    v4 = 0;
    v39 = v3 + 56;
    v34 = v1;
    v35 = a1 + 32;
    v33 = v3;
    while (1)
    {
      v5 = (v35 + 48 * v4);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v11 = v5[4];
      v10 = v5[5];
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v12 = v9;
      v40 = v8;
      sub_1B6AB9380();
      v37 = v11;
      v38 = v10;
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v14 = -1 << *(v3 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = *(v39 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if (((1 << v15) & v17) != 0)
      {
        v36 = v4;
        v19 = ~v14;
        v20 = *(v3 + 48);
        do
        {
          v21 = (v20 + 48 * v15);
          v22 = v21[2];
          v23 = v21[3];
          v24 = v21[4];
          v25 = v21[5];
          v26 = *v21 == v7 && v21[1] == v6;
          if (v26 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
          {
            v27 = v22 == v12 && v23 == v40;
            if (v27 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
            {
              v28 = v24 == v37 && v25 == v38;
              if (v28 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
              {

                v3 = v33;
                v1 = v34;
                v4 = v36;
                goto LABEL_4;
              }
            }
          }

          v15 = (v15 + 1) & v19;
          v16 = v15 >> 6;
          v17 = *(v39 + 8 * (v15 >> 6));
          v18 = 1 << v15;
        }

        while ((v17 & (1 << v15)) != 0);
        v3 = v33;
        v1 = v34;
        v4 = v36;
      }

      *(v39 + 8 * v16) = v17 | v18;
      v29 = (*(v3 + 48) + 48 * v15);
      *v29 = v7;
      v29[1] = v6;
      v29[2] = v12;
      v29[3] = v40;
      v29[4] = v37;
      v29[5] = v38;
      v30 = *(v3 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      *(v3 + 16) = v32;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1B69C287C(uint64_t a1)
{
  if (!qword_1EDBC8030)
  {
    sub_1B69C28D8();
    v1 = sub_1B6AB9C70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8030);
    }
  }
}

unint64_t sub_1B69C28D8()
{
  result = qword_1EDBC8260;
  if (!qword_1EDBC8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8260);
  }

  return result;
}

void sub_1B69C292C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v39 = v6 + 56;

      v11 = 0;
      v36 = v4;
      v37 = v6;
      v33 = v10;
      v34 = v4 + 56;
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v35 = (v12 - 1) & v12;
          v14 = (*(v4 + 48) + 48 * (__clz(__rbit64(v12)) | (v11 << 6)));
          v16 = *v14;
          v15 = v14[1];
          v18 = v14[2];
          v17 = v14[3];
          v20 = v14[4];
          v19 = v14[5];
          sub_1B6ABA1F0();

          sub_1B6AB9380();
          v41 = v18;
          v42 = v17;
          sub_1B6AB9380();
          v40 = v20;
          sub_1B6AB9380();
          v21 = sub_1B6ABA230();
          v22 = -1 << *(v6 + 32);
          v23 = v21 & ~v22;
          if ((*(v39 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v38 = ~v22;
            v24 = *(v37 + 48);
            while (1)
            {
              v25 = (v24 + 48 * v23);
              v26 = v25[2];
              v27 = v25[3];
              v28 = v25[4];
              v29 = v25[5];
              v30 = *v25 == v16 && v25[1] == v15;
              if (v30 || (sub_1B6ABA0F0() & 1) != 0)
              {
                v31 = v26 == v41 && v27 == v42;
                if (v31 || (sub_1B6ABA0F0() & 1) != 0)
                {
                  v32 = v28 == v40 && v29 == v19;
                  if (v32 || (sub_1B6ABA0F0() & 1) != 0)
                  {
                    break;
                  }
                }
              }

              v23 = (v23 + 1) & v38;
              if (((*(v39 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

LABEL_43:

            return;
          }

LABEL_39:

          v4 = v36;
          v6 = v37;
          v10 = v33;
          v5 = v34;
          v9 = v35;
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          goto LABEL_43;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

BOOL sub_1B69C2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B69C2598();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD880;
  if (qword_1EDBC8130 != -1)
  {
    v22 = inited;
    swift_once();
    inited = v22;
  }

  v13 = unk_1EDBC8140;
  v14 = qword_1EDBC8148;
  v15 = unk_1EDBC8150;
  v16 = qword_1EDBC8158;
  v17 = unk_1EDBC8160;
  *(inited + 32) = qword_1EDBC8138;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 96) = 42;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 42;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = a1;
  *(inited + 136) = a2;
  *(inited + 144) = a3;
  *(inited + 152) = a4;
  *(inited + 160) = 42;
  *(inited + 168) = 0xE100000000000000;
  *(inited + 176) = a1;
  *(inited + 184) = a2;
  *(inited + 192) = a3;
  *(inited + 200) = a4;
  *(inited + 208) = a5;
  *(inited + 216) = a6;
  v18 = inited;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v19 = sub_1B69C2608(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1B69C292C(v19, *(v23 + 16));
  LOBYTE(v18) = v20;

  return (v18 & 1) == 0;
}

uint64_t sub_1B69C2DCC()
{

  sub_1B69C2E8C(*(v0 + 32), *(v0 + 40));
  v1 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
  v2 = sub_1B6AB8DB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69C2E8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1B69C2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1B69B5FF8(a2, a3, a6, a7);
  v12 = v11;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + 136);
  *(a1 + 136) = 0x8000000000000000;
  sub_1B69C2F78(a4, a5, v10, v12, isUniquelyReferenced_nonNull_native);

  *(a1 + 136) = v15;
  return swift_endAccess();
}

void sub_1B69C2F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B6993940(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1B69C3100(v18, a5 & 1);
      v13 = sub_1B6993940(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1B6ABA190();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1B69DFC78();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_1B69C3100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69881C8(0, &qword_1EDBC7B68, &type metadata for DataProvider, MEMORY[0x1E69E6EC8]);
  v33 = v4;
  result = sub_1B6AB9E80();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B69C33D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_1B6AB8DB0() - 8);
  v4 = v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80));
  return sub_1B69A0AA0(*(v0 + 40), *(v0 + 48), v4, *(v4 + *(v3 + 64)), v1, v2);
}

void sub_1B69C346C(void *a1, unint64_t a2)
{
  if ((a2 >> 62) > 1)
  {
    if (a2 >> 62 == 2)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1B69C349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for SummaryEventConfiguration.StorageURLOptions(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B69C3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for SummaryEventConfiguration.StorageURLOptions(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B69C3590(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B6AB8BB0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B69C3688@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B6AB92E0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B69C36B4()
{
  v15 = *(v0 + 4);
  v13 = *(v0 + 5);
  v1 = *(v0 + 6);
  v2 = *(v15 - 8);
  v16 = *(v2 + 80);
  v3 = (v16 + 80) & ~v16;
  v4 = *(v13 - 8);
  v5 = *(v4 + 80);
  v6 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(sub_1B6AB9B30() - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v14 = *(v8 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(&v0[v3], v15);

  (*(v4 + 8))(&v0[v6], v13);
  v11 = *(v1 - 8);
  if (!(*(v11 + 48))(&v0[v10], 1, v1))
  {
    (*(v11 + 8))(&v0[v10], v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v10 + v14, v16 | v5 | v9 | 7);
}

uint64_t sub_1B69C38E8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C39B8()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C3A88()
{
  v1 = *(v0 + 48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C3B58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics22CrashTerminationReasonVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B69C3BBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C3C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB8E40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B6AB8DB0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B69C3D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B6AB8DB0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B69C3E30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C3E78@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1B69C3ED0()
{
  MEMORY[0x1B8C99690](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C3F28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C3F70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C3FB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C402C()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C4110()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C41E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C4228()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C4268()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C42A8()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B69C4304()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C439C()
{
  sub_1B6A10D48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B69C4424()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C445C()
{

  sub_1B6993C94(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B69C44BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C44F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C452C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C4564()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C45E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C4620(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1B697EC54(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B69C46CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B697EC54(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B69C4770(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B6AB8DB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C481C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B6AB8DB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B69C48C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C492C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C4998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimedData(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B69C4AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EventData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimedData(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B69C4BFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BatchEvent.Event(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C4CA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BatchEvent.Event(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B69C4D4C(uint64_t a1, uint64_t a2)
{
  sub_1B6A33E3C(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C4DB8(uint64_t a1, uint64_t a2)
{
  sub_1B6A33E3C(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C4E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Batch(0);
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

uint64_t sub_1B69C4EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Batch(0);
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

uint64_t sub_1B69C4FA0()
{
  MEMORY[0x1B8C99690](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C4FD8()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C50B4()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C5198()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C51D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B69C5210()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B69C52A0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C52F4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C5340()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5528()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B69C559C()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B69C55EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B69C5624()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C5674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB8E40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C5734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B6AB8E40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C57F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C585C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C58CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5904()
{
  v1 = type metadata accessor for EventData(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (((((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + 40))
  {
  }

  sub_1B69C346C(*(v0 + 56), *(v0 + 64));

  v5 = *(v1 + 20);
  v6 = sub_1B6AB8DB0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v4));
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B69C5AA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5ADC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C5B40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t sub_1B69C5B88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B69C5BCC(uint64_t a1, uint64_t a2)
{
  sub_1B698C128();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69C5C48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C5C80()
{
  v1 = type metadata accessor for Batch(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[10];
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v9 = v4 + v1[13];
  v10 = *(v9 + 8);
  if (v10 != 1)
  {
    if (v10 == 2)
    {
      goto LABEL_8;
    }
  }

  if (*(v9 + 40) != 1)
  {
  }

LABEL_8:
  v11 = v1[14];
  if (!v8(v4 + v11, 1, v6))
  {
    (*(v7 + 8))(v4 + v11, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

double sub_1B69C5E7C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB95C238;
  *a1 = qword_1EB95C230;
  a1[1] = v2;

  return result;
}

uint64_t sub_1B69C5ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C5F90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B6AB8DB0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeartbeatEventService.Metadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B69C6108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HeartbeatEventService.Metadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69C61C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B6AB8DB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C6264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RotationMode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1B6AB8E40();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B69C6380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RotationMode(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1B6AB8E40();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B69C64E8()
{
  v1 = sub_1B6AB8BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B69C65AC()
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B69C66A4()
{
  sub_1B6984584(0, &qword_1EB95C4E0, MEMORY[0x1E69E6370], MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B69C67B4()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B69C6894()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C68E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummaryEventMetaData(0);
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

uint64_t sub_1B69C69A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummaryEventMetaData(0);
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

uint64_t sub_1B69C6A58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6AA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C6AD8()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B69C6BB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6C04()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6C3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6C74()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C6CC4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1B69C6D5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6DF8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C6E30()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B69C6E90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C6ECC()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 32) >= 3uLL)
  {
  }

  v5 = (v3 + 73) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1B69C6FB4()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69C7004()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C703C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B69C70C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C7130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RotationMode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C71A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C71D8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C7218(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B6AB8DB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B69C72C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B6AB8DB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B69C7368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B69C73D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B69C7444()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C747C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C74BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B69C750C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C7544()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B69C7584()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69C75BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t static SummaryEventConfiguration.custom(timeInterval:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(type metadata accessor for SummaryEventConfiguration(0) + 20);
  v5 = sub_1B6AB8BB0();
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *a1 = a2;
  *(a1 + 8) = 0;
  return result;
}

void SummaryEventConfiguration.flushCadence.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SummaryEventConfiguration.FlushCadence(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SummaryEventConfiguration.FlushCadence(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B69C78DC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69C78F8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GZIPError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GZIPError(uint64_t result, int a2, int a3)
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

uint64_t sub_1B69C7A5C(uint64_t a1, uint64_t a2)
{
  sub_1B6ABA1F0();
  swift_getWitnessTable();
  sub_1B6AB8F50();
  return sub_1B6ABA230();
}

void *sub_1B69C7AEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B69C7B18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1B69C7BB0(uint64_t a1, id *a2)
{
  result = sub_1B6AB92C0();
  *a2 = 0;
  return result;
}

uint64_t sub_1B69C7C28(uint64_t a1, id *a2)
{
  v3 = sub_1B6AB92D0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B69C7CA8@<X0>(uint64_t *a3@<X8>)
{
  sub_1B6AB92E0();
  v4 = sub_1B6AB92B0();

  *a3 = v4;
  return result;
}

uint64_t sub_1B69C7CEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B6AB92E0();
  v3 = MEMORY[0x1B8C97C70](v2);

  return v3;
}

uint64_t sub_1B69C7D28(uint64_t a1, uint64_t a2)
{
  sub_1B6AB92E0();
  sub_1B6AB9380();
}

uint64_t sub_1B69C7D7C(uint64_t a1, uint64_t a2)
{
  sub_1B6AB92E0();
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  v2 = sub_1B6ABA230();

  return v2;
}

uint64_t sub_1B69C7DF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1B6AB8F40();
}

uint64_t sub_1B69C7E70@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B6A5A364();

  *a2 = v3;
  return result;
}

uint64_t sub_1B69C7EB0(void *a1, uint64_t *a2)
{
  v2 = sub_1B6AB92E0();
  v4 = v3;
  if (v2 == sub_1B6AB92E0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B6ABA0F0();
  }

  return v7 & 1;
}

void *sub_1B69C7F38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B69C7FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B69C80BC(uint64_t a1)
{
  v2 = sub_1B69C7FE4(&qword_1EB95AB00, type metadata accessor for FileAttributeKey, &unk_1B6ABD000);
  v3 = sub_1B69C7FE4(&unk_1EB95AB08, type metadata accessor for FileAttributeKey, &unk_1B6ABCF54);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B69C8178@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B6AB92B0();

  *a2 = v3;
  return result;
}

uint64_t sub_1B69C81C0(uint64_t a1)
{
  v2 = sub_1B69C7FE4(&qword_1EDBC8CD0, type metadata accessor for URLResourceKey, &unk_1B6ABD044);
  v3 = sub_1B69C7FE4(&qword_1EB95AB18, type metadata accessor for URLResourceKey, &unk_1B6ABCE40);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t ProcessorManager.deinit()
{
  sub_1B6988008(v0 + 16);

  return v0;
}

uint64_t ProcessorManager.__deallocating_deinit()
{
  sub_1B6988008(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ProcessorManager.remove(eventProcessor:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  swift_unknownObjectRetain();
  sub_1B69877A4(v5, sub_1B69C8D18, v6);
}

void sub_1B69C8668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v4 + 32 + 16 * v6);
  while (1)
  {
    if (v5 == v6)
    {

      *(a1 + 48) = v7;

      return;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10 != a2)
    {
      v11 = *(v9 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B69E4C4C(0, *(v7 + 16) + 1, 1);
      }

      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B69E4C4C((v12 > 1), v13 + 1, 1);
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
}

double sub_1B69C87B0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 48);

  return result;
}

uint64_t sub_1B69C880C(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1B6AB9110();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    result = swift_beginAccess();
    v10 = *(v1 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = (v10 + 40);
      do
      {
        v13 = *v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 16);
        swift_unknownObjectRetain();
        v15(a1, ObjectType, v13);
        swift_unknownObjectRelease();
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C89B8(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1B6AB9110();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    result = swift_beginAccess();
    v10 = *(v1 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = (v10 + 40);
      do
      {
        v13 = *v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 24);
        swift_unknownObjectRetain();
        v15(a1, ObjectType, v13);
        swift_unknownObjectRelease();
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C8B64(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(v2 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    result = swift_beginAccess();
    v12 = *(v2 + 48);
    v13 = *(v12 + 16);
    if (v13)
    {

      v14 = (v12 + 40);
      do
      {
        v15 = *v14;
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 48);
        swift_unknownObjectRetain();
        v17(a1, a2, ObjectType, v15);
        swift_unknownObjectRelease();
        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69C8D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B69C8DF0()
{
  v1 = *v0;
  v2 = v0[2];
  v10 = *(*v0 + 80);
  v11 = v1[11];
  v12 = v1[12];
  v13 = v1[13];
  v14 = v1[14];
  v15 = v1[15];
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  type metadata accessor for CombineLatestStateMachine(0, &v16);
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  type metadata accessor for CombineLatestStateMachine.IteratorDeinitializedAction(255, &v16);
  sub_1B6AB9B30();
  sub_1B6A9C450(sub_1B69D0208, &v9, v2);
  v3 = v16;
  if (v16)
  {
    v4 = v17;
    v5 = *(v17 + 16);
    if (v5)
    {
      v6 = v17 + 32;
      sub_1B6AB9610();
      sub_1B69D026C();

      do
      {
        v6 += 8;
        v7 = swift_allocError();
        sub_1B6AB91E0();
        sub_1B69AC828();
        swift_allocError();
        *v8 = v7;
        swift_continuation_throwingResumeWithError();
        --v5;
      }

      while (v5);
    }

    else
    {
    }

    sub_1B6AB9710();
    sub_1B69D02C4(v3, v4);
  }
}

uint64_t sub_1B69C9014(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B69C905C, 0, 0);
}

uint64_t sub_1B69C905C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *v1 = v0;
  v1[1] = sub_1B69C91D4;
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v2, &unk_1B6ABD1D0);
}

uint64_t sub_1B69C91D4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B69C9308, 0, 0);
}

uint64_t sub_1B69C9320(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v3 = sub_1B6ABA280();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69C9508, 0, 0);
}

uint64_t sub_1B69C9508()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B69C95D0;
  v2 = v0[6];
  v3 = v0[3];

  return sub_1B69CA84C(v2, 0, 0, sub_1B69D0940, v3);
}

uint64_t sub_1B69C95D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B69C96CC, 0, 0);
}

uint64_t sub_1B69C96CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  WitnessTable = swift_getWitnessTable();
  sub_1B6A883F4(v3, WitnessTable);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B69C97A0(uint64_t a1, void *a2)
{
  v48 = a1;
  v3 = *a2;
  v47 = *(*a2 + 104);
  v46 = v3[10];
  swift_getAssociatedTypeWitness();
  v4 = v3[14];
  v5 = v3[11];
  swift_getAssociatedTypeWitness();
  v6 = v3[15];
  v7 = v3[12];
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v8 = sub_1B6ABA280();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v42 = &TupleTypeMetadata3 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &TupleTypeMetadata3 - v11;
  v12 = v46;
  v13 = v47;
  v52 = v46;
  v53 = v5;
  v54 = v7;
  v55 = v47;
  v56 = v4;
  v57 = v6;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction(255, &v52);
  v15 = sub_1B6AB9B30();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &TupleTypeMetadata3 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = a2[2];
  v50 = v48;
  v51 = a2;
  v52 = v12;
  v53 = v5;
  v22 = &TupleTypeMetadata3 - v21;
  v54 = v7;
  v55 = v13;
  v24 = v23;
  v56 = v4;
  v57 = v6;
  v25 = v19;
  type metadata accessor for CombineLatestStateMachine(0, &v52);
  sub_1B6A9C450(sub_1B69D0948, v49, v20);
  (*(v24 + 16))(v18, v22, v25);
  if ((*(*(Action - 8) + 48))(v18, 1, Action) == 1)
  {
    return (*(v24 + 8))(v22, v25);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v29 = *v18;
    v30 = v43;
    (*(*(TupleTypeMetadata3 - 8) + 56))(v43, 1, 1);
    v31 = v45;
    swift_storeEnumTagMultiPayload();
    (*(v44 + 32))(*(*(v29 + 64) + 40), v30, v31);
    swift_continuation_resume();
    return (*(v24 + 8))(v22, v25);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = *(*v18 + 16);
    if (v27)
    {
      v28 = *v18 + 32;
      do
      {
        v28 += 8;
        swift_continuation_throwingResume();
        --v27;
      }

      while (v27);
    }

    return (*(v24 + 8))(v22, v25);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v32 = *v18;
    v33 = v45;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v35 = v44;
    v36 = *(v44 + 32);
    v37 = &v18[*(TupleTypeMetadata2 + 48)];
    v38 = v43;
    v36(v43, v37, v33);
    v39 = v42;
    (*(v35 + 16))(v42, v38, v33);
    v36(*(*(v32 + 64) + 40), v39, v33);
    swift_continuation_resume();
    (*(v35 + 8))(v38, v33);
    return (*(v24 + 8))(v22, v25);
  }

  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

uint64_t sub_1B69C9D58@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v6 = *a3;
  v7 = *(*a3 + 96);
  v52 = sub_1B6AB9B30();
  v48 = *(v52 - 8);
  v8 = MEMORY[0x1EEE9AC00](v52);
  v47 = v43 - v9;
  v46 = *(v6[11] - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = v43 - v11;
  v49 = *(v6[10] - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v43 - v12;
  v13 = v6[13];
  v14 = v6[14];
  v51 = v15;
  *&v16 = v15;
  v53 = v17;
  *(&v16 + 1) = v17;
  v55 = v16;
  v45 = v7;
  *&v18 = v7;
  v43[1] = v13;
  *(&v18 + 1) = v13;
  v54 = v18;
  v19 = v6[15];
  v58 = v18;
  v57 = v16;
  v59 = v14;
  v60 = v19;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction(0, &v57);
  v21 = *(Action - 8);
  v22 = MEMORY[0x1EEE9AC00](Action);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (v43 - v25);
  v58 = v54;
  v57 = v55;
  v59 = v14;
  v60 = v19;
  v27 = type metadata accessor for CombineLatestStateMachine(0, &v57);
  *&v55 = a2;
  *&v54 = a1;
  sub_1B6A63368(a2, v27, v26);
  (*(v21 + 16))(v24, v26, Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *&v55 = swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      sub_1B6AB9B30();
      swift_getTupleTypeMetadata3();
      sub_1B6AB9B30();
      sub_1B69AC828();
      v39 = sub_1B6ABA280();
      sub_1B6AB9740();
      v40 = *(swift_getTupleTypeMetadata2() + 48);
      v41 = v56;
      (*(v21 + 32))(v56, v26, Action);
      (*(v21 + 56))(v41, 0, 1, Action);
      return (*(*(v39 - 8) + 8))(&v24[v40], v39);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v29 = v51;
      v30 = v53;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v32 = *(TupleTypeMetadata3 + 48);
      v45 = *(TupleTypeMetadata3 + 64);
      (*(v49 + 32))(v50, v24, v29);
      v33 = v46;
      v34 = v44;
      (*(v46 + 32))(v44, &v24[v32], v30);
      v35 = v48;
      v36 = &v24[v45];
      v37 = v47;
      (*(v48 + 32))(v47, v36, v52);
      sub_1B69CA3D0(v54, v50, v34, v37, v55);
      (*(v35 + 8))(v37, v52);
      (*(v33 + 8))(v34, v53);
      (*(v49 + 8))(v50, v51);
      (*(v21 + 8))(v26, Action);
      return (*(v21 + 56))(v56, 1, 1, Action);
    }

    (*(v21 + 8))(v24, Action);
  }

  v42 = v56;
  (*(v21 + 32))(v56, v26, Action);
  return (*(v21 + 56))(v42, 0, 1, Action);
}

uint64_t sub_1B69CA3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a1;
  v53 = a5;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v7 = *v5;
  v58 = *(*v5 + 96);
  v57 = sub_1B6AB9B30();
  v55 = *(v57 - 8);
  v48 = *(v55 + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v42 - v9;
  v54 = v7[11];
  v10 = *(v54 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v42 - v13;
  v46 = &v42 - v13;
  v15 = v7[10];
  v44 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v19 = &v42 - v18;
  v45 = &v42 - v18;
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v22;
  v23 = sub_1B6AB9680();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v16 + 16))(v19, v49, v15);
  v43 = v10;
  (*(v10 + 16))(v14, v50, v54);
  v24 = v55;
  (*(v55 + 16))(v56, v51, v57);
  v25 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v10 + 80) + v26 + 8) & ~*(v10 + 80);
  v28 = (v11 + *(v24 + 80) + v27) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v31 = v44;
  v30 = v45;
  v32 = v54;
  *(v29 + 4) = v44;
  *(v29 + 5) = v32;
  *(v29 + 6) = v58;
  v51 = v7[13];
  *(v29 + 7) = v51;
  v33 = v7[14];
  *(v29 + 8) = v33;
  v34 = v7[15];
  *(v29 + 9) = v34;
  v35 = &v29[v25];
  v36 = v31;
  (*(v16 + 32))(v35, v30);
  *&v29[v26] = v6;
  (*(v43 + 32))(&v29[v27], v46, v32);
  (*(v55 + 32))(&v29[v28], v56, v57);

  v37 = sub_1B69EDFB0(0, 0, v47, &unk_1B6ABD1E8, v29);
  *&v38 = v36;
  *(&v38 + 1) = v32;
  *&v39 = v58;
  *(&v39 + 1) = v51;
  v59[1] = v39;
  v59[0] = v38;
  v60 = v33;
  v61 = v34;
  v40 = type metadata accessor for CombineLatestStateMachine(0, v59);
  sub_1B6A6A5E4(v37, v53, v40);
}

uint64_t sub_1B69CA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B6AB95E0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B69CA8E0, v6, v8);
}

uint64_t sub_1B69CA8E0()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B69CA988;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CA988()
{
  v1 = *(*v0 + 8);

  return v1();
}

void sub_1B69CAA60(void *a1)
{
  v2 = *a1;
  v31 = *(*a1 + 104);
  v3 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = v2[14];
  v5 = v2[11];
  swift_getAssociatedTypeWitness();
  v6 = v2[15];
  v7 = v2[12];
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  sub_1B69AC828();
  v9 = sub_1B6ABA280();
  v29 = *(v9 - 8);
  AssociatedTypeWitness = v9;
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v26 - v10;
  v11 = a1[2];
  v33 = v3;
  v34 = v5;
  v12 = v31;
  v35 = v7;
  v36 = v31;
  v37 = v4;
  v38 = v6;
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v31;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine(0, &v39);
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v12;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine.CancelledAction(255, &v39);
  sub_1B6AB9B30();
  sub_1B6A9C450(sub_1B69D0880, v32, v11);
  v13 = v39;
  if ((~v39 & 0xF000000000000007) != 0)
  {
    v14 = v40;
    v31 = v41;
    if (v39 < 0)
    {
      v19 = *(v40 + 16);
      if (v19)
      {
        v20 = v40 + 32;
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          v20 += 8;
          v21 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v22 = v21;
          swift_continuation_throwingResumeWithError();
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      sub_1B6AB9710();
      sub_1B69D08E8(v13, v14, v31);
    }

    else
    {
      v26 = TupleTypeMetadata3;
      v27 = v40;
      v15 = *(v41 + 16);
      if (v15)
      {
        v16 = v41 + 32;
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          v16 += 8;
          v17 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v18 = v17;
          swift_continuation_throwingResumeWithError();
          --v15;
        }

        while (v15);
      }

      else
      {
      }

      v23 = v27;
      sub_1B6AB9710();
      v24 = v28;
      (*(*(v26 - 8) + 56))(v28, 1, 1);
      v25 = AssociatedTypeWitness;
      swift_storeEnumTagMultiPayload();
      (*(v29 + 32))(*(*(v13 + 64) + 40), v24, v25);
      swift_continuation_resume();

      sub_1B69D08E8(v13, v23, v31);
    }
  }
}

uint64_t sub_1B69CAF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B69CAF48, 0, 0);
}

uint64_t sub_1B69CAF48()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1B69CB038;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v4, v5, v6, 0, 0, &unk_1B6ABD1F8, v1, v7);
}

void sub_1B69CB038()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1B69CB16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  v7 = *a4;
  v6[23] = *(*a4 + 104);
  v8 = v7[10];
  v6[24] = v8;
  swift_getAssociatedTypeWitness();
  v6[25] = v7[14];
  v9 = v7[11];
  v6[26] = v9;
  swift_getAssociatedTypeWitness();
  v6[27] = v7[15];
  v10 = v7[12];
  v6[28] = v10;
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  v6[29] = sub_1B69AC828();
  v11 = sub_1B6ABA280();
  v6[30] = v11;
  v6[31] = *(v11 - 8);
  v6[32] = swift_task_alloc();
  v12 = sub_1B6AB9B30();
  v6[33] = v12;
  v6[34] = *(v12 - 8);
  v6[35] = swift_task_alloc();
  v13 = *(v10 - 8);
  v6[36] = v13;
  v6[37] = *(v13 + 64);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v14 = *(v9 - 8);
  v6[40] = v14;
  v6[41] = *(v14 + 64);
  v6[42] = swift_task_alloc();
  v15 = *(v8 - 8);
  v6[43] = v15;
  v6[44] = *(v15 + 64);
  v6[45] = swift_task_alloc();
  sub_1B69949E8(0);
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CB504, 0, 0);
}

uint64_t sub_1B69CB504()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v27 = v0[44];
  v29 = v1;
  v32 = v0[42];
  v33 = v0[41];
  v31 = v0[40];
  v35 = v0[34];
  v36 = v0[35];
  v38 = v0[33];
  v40 = v0[36];
  v48 = v0[28];
  v50 = v0[27];
  v4 = v0[26];
  v46 = v0[25];
  v5 = v0[24];
  v34 = v0[22];
  v30 = v0[21];
  v6 = v0[19];
  v42 = v0[20];
  v44 = v0[23];
  v7 = sub_1B6AB9680();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v5);
  v9 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  *(v10 + 6) = v48;
  *(v10 + 7) = v44;
  *(v10 + 8) = v46;
  *(v10 + 9) = v50;
  (*(v3 + 32))(&v10[v9], v2, v5);
  *&v10[(v27 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v42;

  sub_1B69CD4B4(v29, &unk_1B6ABD208, v10);
  sub_1B69D0D00(v29);
  v26 = v8;
  v28 = v7;
  v8(v29, 1, 1, v7);
  (*(v31 + 16))(v32, v30, v4);
  v11 = (*(v31 + 80) + 80) & ~*(v31 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v5;
  *(v12 + 5) = v4;
  *(v12 + 6) = v48;
  *(v12 + 7) = v44;
  *(v12 + 8) = v46;
  *(v12 + 9) = v50;
  (*(v31 + 32))(&v12[v11], v32, v4);
  *&v12[(v33 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v42;

  sub_1B69CD4B4(v29, &unk_1B6ABD218, v12);
  sub_1B69D0D00(v29);
  (*(v35 + 16))(v36, v34, v38);
  if ((*(v40 + 48))(v36, 1, v48) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
  }

  else
  {
    v13 = v0[46];
    v14 = v0[38];
    v15 = v0[39];
    v16 = v0[36];
    v37 = v14;
    v39 = v0[37];
    v17 = v0[28];
    v49 = v0[27];
    v45 = v0[26];
    v47 = v0[25];
    v41 = v0[24];
    v43 = v0[23];
    v18 = v0[20];
    v19 = *(v16 + 32);
    v19(v15, v0[35], v17);
    v26(v13, 1, 1, v28);
    (*(v16 + 16))(v14, v15, v17);
    v20 = (*(v16 + 80) + 80) & ~*(v16 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v41;
    v21[5] = v45;
    v21[6] = v17;
    v21[7] = v43;
    v21[8] = v47;
    v21[9] = v49;
    v19(v21 + v20, v37, v17);
    *(v21 + ((v39 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;

    sub_1B69CD4B4(v13, &unk_1B6ABD228, v21);
    sub_1B69D0D00(v13);
    (*(v16 + 8))(v15, v17);
  }

  if (sub_1B6AB9760())
  {

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = swift_task_alloc();
    v0[47] = v24;
    sub_1B69D0E78(0);
    *v24 = v0;
    v24[1] = sub_1B69CBAA0;

    return MEMORY[0x1EEE6DAC8](v0 + 49, 0, 0, v25);
  }
}

uint64_t sub_1B69CBAA0()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1B69CBD20;
  }

  else
  {
    v2 = sub_1B69CBBB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B69CBBB4()
{
  if (sub_1B6AB9760())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    sub_1B69D0E78(0);
    *v3 = v0;
    v3[1] = sub_1B69CBAA0;

    return MEMORY[0x1EEE6DAC8](v0 + 392, 0, 0, v4);
  }
}

uint64_t sub_1B69CBD20()
{
  v1 = v0[48];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v34 = *(v0[20] + 16);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v7;
  v8[6] = v5;
  v8[7] = v3;
  v8[8] = v1;
  v0[2] = v6;
  v0[3] = v4;
  v0[4] = v2;
  v0[5] = v7;
  v0[6] = v5;
  v0[7] = v3;
  type metadata accessor for CombineLatestStateMachine(0, (v0 + 2));
  v0[8] = v6;
  v0[9] = v4;
  v0[10] = v2;
  v0[11] = v7;
  v0[12] = v5;
  v0[13] = v3;
  type metadata accessor for CombineLatestStateMachine.UpstreamThrewAction(255, (v0 + 8));
  sub_1B6AB9B30();
  sub_1B6A9C450(sub_1B69D0EE4, v8, v34);

  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[16];
  v12 = v0[17];
  if ((~(v10 & v11) & 0xF000000000000007) != 0)
  {
    v33 = v0[15];
    v31 = v0[17];
    v32 = v0[16];
    if (v11 < 0)
    {
      v17 = *(v12 + 16);
      if (v17)
      {
        v18 = v12 + 32;
        v19 = v9;
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          v18 += 8;
          v20 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v21 = v20;
          swift_continuation_throwingResumeWithError();
          --v17;
        }

        while (v17);
      }

      else
      {
        v22 = v9;
      }

      v24 = v0[31];
      v23 = v0[32];
      v25 = v0[30];
      sub_1B6AB9710();
      v9 = v33;
      *v23 = v33;
      swift_storeEnumTagMultiPayload();
      (*(v24 + 32))(*(*(v10 + 64) + 40), v23, v25);
      swift_continuation_resume();
    }

    else
    {
      v13 = v9[2];
      if (v13)
      {
        v14 = v9 + 4;
        sub_1B6AB9610();
        sub_1B69D026C();

        do
        {
          ++v14;
          v15 = swift_allocError();
          sub_1B6AB91E0();
          swift_allocError();
          *v16 = v15;
          swift_continuation_throwingResumeWithError();
          --v13;
        }

        while (v13);
      }

      else
      {
      }

      sub_1B6AB9710();
      v9 = v33;
    }

    v12 = v31;
    v11 = v32;
  }

  v26 = v0[48];
  sub_1B6AB9770();
  sub_1B69D0F60(v10, v9, v11, v12);

  if (sub_1B6AB9760())
  {

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = swift_task_alloc();
    v0[47] = v29;
    sub_1B69D0E78(0);
    *v29 = v0;
    v29[1] = sub_1B69CBAA0;

    return MEMORY[0x1EEE6DAC8](v0 + 49, 0, 0, v30);
  }
}

uint64_t sub_1B69CC1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v22 = v7;
  v21 = v6[10];
  *(v5 + 320) = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 328) = AssociatedTypeWitness;
  v9 = v6[14];
  *(v5 + 336) = v9;
  v10 = v6[11];
  *(v5 + 344) = v10;
  swift_getAssociatedTypeWitness();
  v11 = v6[15];
  *(v5 + 352) = v11;
  v12 = v6[12];
  *(v5 + 360) = v12;
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *(v5 + 376) = sub_1B69AC828();
  v13 = sub_1B6ABA280();
  *(v5 + 384) = v13;
  v14 = *(v13 - 8);
  *(v5 + 392) = v14;
  *(v5 + 400) = v14;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v15 = v21;
  *(&v15 + 1) = v10;
  *&v16 = v12;
  *(&v16 + 1) = v22;
  *(v5 + 96) = v16;
  *(v5 + 80) = v15;
  *(v5 + 112) = v9;
  *(v5 + 120) = v11;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(255, v5 + 80);
  v17 = sub_1B6AB9B30();
  *(v5 + 432) = v17;
  *(v5 + 440) = *(v17 - 8);
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v18 = sub_1B6AB9B30();
  *(v5 + 464) = v18;
  *(v5 + 472) = *(v18 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = *(AssociatedTypeWitness - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = *(v21 - 8);
  *(v5 + 512) = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v19;
  *(v5 + 528) = *(v19 - 8);
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CC630, 0, 0);
}

uint64_t sub_1B69CC630()
{
  (*(v0[63] + 16))(v0[64], v0[37], v0[40]);
  sub_1B6AB9790();

  return MEMORY[0x1EEE6DFA0](sub_1B69CC6D4, 0, 0);
}

uint64_t sub_1B69CC6D4()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1B69CC780;
  v2 = swift_continuation_init();
  sub_1B69CFC3C(v2, v1, sub_1B69D13BC);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CC780(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 544) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1B69D1458, 0, 0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    v2[69] = v6;
    *v6 = v3;
    v6[1] = sub_1B69CC934;
    v7 = v2[65];
    v8 = v2[60];

    return MEMORY[0x1EEE6D8C8](v8, v7, AssociatedConformanceWitness);
  }
}

uint64_t sub_1B69CC934()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1B69D145C;
  }

  else
  {
    v2 = sub_1B69CCA48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B69CCA48()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[41]) == 1)
  {
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[42];
    v6 = v0[43];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v51 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 16));
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction(255, (v0 + 22));
    sub_1B6AB9B30();
    sub_1B6A9C450(sub_1B69D12C8, v10, v51);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v52 = v0[36];
      v54 = v0[35];
      if (v11 < 0)
      {
        v36 = *(v0[36] + 16);
        if (v36)
        {
          v37 = v52 + 32;
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v37 += 8;
            v38 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v39 = v38;
            swift_continuation_throwingResumeWithError();
            --v36;
          }

          while (v36);
        }

        v40 = v0[52];
        v42 = v0[48];
        v41 = v0[49];
        v43 = v0[46];
        v16 = v54;
        sub_1B6AB9710();
        (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
        swift_storeEnumTagMultiPayload();
        (*(v41 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v40, v42);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = v54 + 32;
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v13 += 8;
            v14 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v15 = v14;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1B6AB9710();
        v16 = v54;
      }

      sub_1B69D1130(v11, v16, v52);
    }

    (*(v0[66] + 8))(v0[67], v0[65]);

    v44 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v50 = v0[55];
  v48 = v0[57];
  v49 = v0[54];
  v53 = v0[56];
  v55 = v0[53];
  v17 = v0[45];
  v46 = v0[62];
  v47 = v0[44];
  v19 = v0[42];
  v18 = v0[43];
  v20 = v0[39];
  v21 = v0[40];
  v22 = v0[38];
  (*(v1 + 32))();
  v23 = *(v22 + 16);
  v24 = swift_task_alloc();
  v24[2] = v21;
  v24[3] = v18;
  v24[4] = v17;
  v24[5] = v20;
  v24[6] = v19;
  v24[7] = v47;
  v24[8] = v46;
  v0[28] = v21;
  v0[29] = v18;
  v0[30] = v17;
  v0[31] = v20;
  v0[32] = v19;
  v0[33] = v47;
  type metadata accessor for CombineLatestStateMachine(0, (v0 + 28));
  sub_1B6A9C450(sub_1B69D1360, v24, v23);

  (*(v50 + 16))(v53, v48, v49);
  if ((*(*(v55 - 8) + 48))(v53, 1) != 1)
  {
    v25 = v0[56];
    v27 = v0[51];
    v26 = v0[52];
    v28 = v0[49];
    v29 = v0[50];
    v30 = v0[48];
    v31 = *v25;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v29 + 32))(v26, &v25[*(TupleTypeMetadata2 + 48)], v30);
    (*(v29 + 16))(v27, v26, v30);
    (*(v28 + 32))(*(*(v31 + 64) + 40), v27, v30);
    swift_continuation_resume();
    (*(v29 + 8))(v26, v30);
  }

  v34 = v0[61];
  v33 = v0[62];
  v35 = v0[41];
  (*(v0[55] + 8))(v0[57], v0[54]);
  (*(v34 + 8))(v33, v35);

  return MEMORY[0x1EEE6DFA0](sub_1B69CC6D4, 0, 0);
}

uint64_t sub_1B69CD104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v33 = a8;
  v28 = a2;
  v29 = a7;
  v24 = a3;
  v25 = a6;
  v31 = a5;
  v27 = a4;
  v35 = a9;
  v36 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_1B6AB9B30();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v23 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v30 = sub_1B6AB9B30();
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = (&v23 - v14);
  v16 = swift_getAssociatedTypeWitness();
  v26 = sub_1B6AB9B30();
  v17 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v19 = &v23 - v18;
  v20 = *(v16 - 8);
  (*(v20 + 16))(&v23 - v18, v28, v16);
  (*(v20 + 56))(v19, 0, 1, v16);
  (*(*(v12 - 8) + 56))(v15, 1, 1, v12);
  (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
  v37[0] = v24;
  v37[1] = v27;
  v37[2] = v31;
  v37[3] = v25;
  v37[4] = v29;
  v37[5] = v33;
  v21 = type metadata accessor for CombineLatestStateMachine(0, v37);
  sub_1B6A65A18(v19, v15, v11, v21, v35);
  (*(v32 + 8))(v11, v34);
  (*(v13 + 8))(v15, v30);
  return (*(v17 + 8))(v19, v26);
}

uint64_t sub_1B69CD4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69949E8(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69D1264(a1, v9);
  v10 = sub_1B6AB9680();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B69D0D00(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1B6AB95E0();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6AB9670();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1B69CD67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v21 = v6[14];
  *(v5 + 328) = v21;
  v20 = v6[11];
  *(v5 + 336) = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 344) = AssociatedTypeWitness;
  v10 = v6[15];
  *(v5 + 352) = v10;
  v11 = v6[12];
  *(v5 + 360) = v11;
  swift_getAssociatedTypeWitness();
  sub_1B6AB9B30();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *(v5 + 376) = sub_1B69AC828();
  v12 = sub_1B6ABA280();
  *(v5 + 384) = v12;
  v13 = *(v12 - 8);
  *(v5 + 392) = v13;
  *(v5 + 400) = v13;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v14 = v8;
  *(&v14 + 1) = v20;
  *&v15 = v11;
  *(&v15 + 1) = v7;
  *(v5 + 96) = v15;
  *(v5 + 80) = v14;
  *(v5 + 112) = v21;
  *(v5 + 120) = v10;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(255, v5 + 80);
  v16 = sub_1B6AB9B30();
  *(v5 + 432) = v16;
  *(v5 + 440) = *(v16 - 8);
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v17 = sub_1B6AB9B30();
  *(v5 + 464) = v17;
  *(v5 + 472) = *(v17 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = *(AssociatedTypeWitness - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = *(v20 - 8);
  *(v5 + 512) = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v18;
  *(v5 + 528) = *(v18 - 8);
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CDAD0, 0, 0);
}

uint64_t sub_1B69CDAD0()
{
  (*(v0[63] + 16))(v0[64], v0[37], v0[42]);
  sub_1B6AB9790();

  return MEMORY[0x1EEE6DFA0](sub_1B69CDB74, 0, 0);
}

uint64_t sub_1B69CDB74()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1B69CDC20;
  v2 = swift_continuation_init();
  sub_1B69CFC3C(v2, v1, sub_1B69D1248);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CDC20(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 544) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1B69CDEE8, 0, 0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    v2[69] = v6;
    *v6 = v3;
    v6[1] = sub_1B69CDDD4;
    v7 = v2[65];
    v8 = v2[60];

    return MEMORY[0x1EEE6D8C8](v8, v7, AssociatedConformanceWitness);
  }
}

uint64_t sub_1B69CDDD4()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1B69CE694;
  }

  else
  {
    v2 = sub_1B69CDFD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B69CDEE8()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B69CDFD8()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[43]) == 1)
  {
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v51 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 16));
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction(255, (v0 + 22));
    sub_1B6AB9B30();
    sub_1B6A9C450(sub_1B69D1200, v10, v51);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v52 = v0[36];
      v54 = v0[35];
      if (v11 < 0)
      {
        v36 = *(v0[36] + 16);
        if (v36)
        {
          v37 = v52 + 32;
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v37 += 8;
            v38 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v39 = v38;
            swift_continuation_throwingResumeWithError();
            --v36;
          }

          while (v36);
        }

        v40 = v0[52];
        v42 = v0[48];
        v41 = v0[49];
        v43 = v0[46];
        v16 = v54;
        sub_1B6AB9710();
        (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
        swift_storeEnumTagMultiPayload();
        (*(v41 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v40, v42);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = v54 + 32;
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v13 += 8;
            v14 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v15 = v14;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1B6AB9710();
        v16 = v54;
      }

      sub_1B69D1130(v11, v16, v52);
    }

    (*(v0[66] + 8))(v0[67], v0[65]);

    v44 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v50 = v0[55];
  v48 = v0[57];
  v49 = v0[54];
  v53 = v0[56];
  v55 = v0[53];
  v17 = v0[45];
  v46 = v0[62];
  v47 = v0[44];
  v19 = v0[41];
  v18 = v0[42];
  v20 = v0[39];
  v21 = v0[40];
  v22 = v0[38];
  (*(v1 + 32))();
  v23 = *(v22 + 16);
  v24 = swift_task_alloc();
  v24[2] = v21;
  v24[3] = v18;
  v24[4] = v17;
  v24[5] = v20;
  v24[6] = v19;
  v24[7] = v47;
  v24[8] = v46;
  v0[28] = v21;
  v0[29] = v18;
  v0[30] = v17;
  v0[31] = v20;
  v0[32] = v19;
  v0[33] = v47;
  type metadata accessor for CombineLatestStateMachine(0, (v0 + 28));
  sub_1B6A9C450(sub_1B69D121C, v24, v23);

  (*(v50 + 16))(v53, v48, v49);
  if ((*(*(v55 - 8) + 48))(v53, 1) != 1)
  {
    v25 = v0[56];
    v27 = v0[51];
    v26 = v0[52];
    v28 = v0[49];
    v29 = v0[50];
    v30 = v0[48];
    v31 = *v25;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v29 + 32))(v26, &v25[*(TupleTypeMetadata2 + 48)], v30);
    (*(v29 + 16))(v27, v26, v30);
    (*(v28 + 32))(*(*(v31 + 64) + 40), v27, v30);
    swift_continuation_resume();
    (*(v29 + 8))(v26, v30);
  }

  v34 = v0[61];
  v33 = v0[62];
  v35 = v0[43];
  (*(v0[55] + 8))(v0[57], v0[54]);
  (*(v34 + 8))(v33, v35);

  return MEMORY[0x1EEE6DFA0](sub_1B69CDB74, 0, 0);
}

uint64_t sub_1B69CE694()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B69CE784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v32 = a8;
  v26 = a4;
  v27 = a7;
  v24 = a3;
  v25 = a6;
  v30 = a5;
  v28 = a2;
  v34 = a9;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1B6AB9B30();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v24 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v29 = sub_1B6AB9B30();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = (&v24 - v14);
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1B6AB9B30();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(*(v16 - 8) + 56))(&v24 - v19, 1, 1, v16);
  v21 = *(v12 - 8);
  (*(v21 + 16))(v15, v28, v12);
  (*(v21 + 56))(v15, 0, 1, v12);
  (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
  v36[0] = v24;
  v36[1] = v26;
  v36[2] = v30;
  v36[3] = v25;
  v36[4] = v27;
  v36[5] = v32;
  v22 = type metadata accessor for CombineLatestStateMachine(0, v36);
  sub_1B6A65A18(v20, v15, v11, v22, v34);
  (*(v31 + 8))(v11, v33);
  (*(v13 + 8))(v15, v29);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1B69CEB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v22 = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v9 = v6[14];
  *(v5 + 328) = v9;
  v10 = v6[11];
  *(v5 + 336) = v10;
  swift_getAssociatedTypeWitness();
  v21 = v6[15];
  *(v5 + 344) = v21;
  v11 = v6[12];
  *(v5 + 352) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 360) = AssociatedTypeWitness;
  v13 = sub_1B6AB9B30();
  *(v5 + 368) = v13;
  *(v5 + 376) = swift_getTupleTypeMetadata3();
  sub_1B6AB9B30();
  *(v5 + 384) = sub_1B69AC828();
  v14 = sub_1B6ABA280();
  *(v5 + 392) = v14;
  v15 = *(v14 - 8);
  *(v5 + 400) = v15;
  *(v5 + 408) = v15;
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *&v16 = v8;
  *(&v16 + 1) = v10;
  *&v17 = v11;
  *(&v17 + 1) = v22;
  *(v5 + 96) = v17;
  *(v5 + 80) = v16;
  *(v5 + 112) = v9;
  *(v5 + 120) = v21;
  *(v5 + 432) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(255, v5 + 80);
  v18 = sub_1B6AB9B30();
  *(v5 + 440) = v18;
  *(v5 + 448) = *(v18 - 8);
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = *(v13 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = *(AssociatedTypeWitness - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = *(v11 - 8);
  *(v5 + 512) = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v19;
  *(v5 + 528) = *(v19 - 8);
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69CEF84, 0, 0);
}

uint64_t sub_1B69CEF84()
{
  (*(v0[63] + 16))(v0[64], v0[37], v0[44]);
  sub_1B6AB9790();

  return MEMORY[0x1EEE6DFA0](sub_1B69CF028, 0, 0);
}

uint64_t sub_1B69CF028()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1B69CF0D4;
  v2 = swift_continuation_init();
  sub_1B69CFC3C(v2, v1, sub_1B69D11B0);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B69CF0D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 544) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1B69CF39C, 0, 0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    v2[69] = v6;
    *v6 = v3;
    v6[1] = sub_1B69CF288;
    v7 = v2[65];
    v8 = v2[60];

    return MEMORY[0x1EEE6D8C8](v8, v7, AssociatedConformanceWitness);
  }
}

uint64_t sub_1B69CF288()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1B69CFB4C;
  }

  else
  {
    v2 = sub_1B69CF48C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B69CF39C()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B69CF48C()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[45]) == 1)
  {
    v4 = v0[43];
    v3 = v0[44];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[46]);
    v51 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 16));
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction(255, (v0 + 22));
    sub_1B6AB9B30();
    sub_1B6A9C450(sub_1B69D1114, v10, v51);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v52 = v0[36];
      v54 = v0[35];
      if (v11 < 0)
      {
        v36 = *(v0[36] + 16);
        if (v36)
        {
          v37 = v52 + 32;
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v37 += 8;
            v38 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v39 = v38;
            swift_continuation_throwingResumeWithError();
            --v36;
          }

          while (v36);
        }

        v40 = v0[53];
        v42 = v0[49];
        v41 = v0[50];
        v43 = v0[47];
        v16 = v54;
        sub_1B6AB9710();
        (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
        swift_storeEnumTagMultiPayload();
        (*(v41 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v40, v42);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = v54 + 32;
          sub_1B6AB9610();
          sub_1B69D026C();
          do
          {
            v13 += 8;
            v14 = swift_allocError();
            sub_1B6AB91E0();
            swift_allocError();
            *v15 = v14;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1B6AB9710();
        v16 = v54;
      }

      sub_1B69D1130(v11, v16, v52);
    }

    (*(v0[66] + 8))(v0[67], v0[65]);

    v44 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v50 = v0[56];
  v48 = v0[58];
  v49 = v0[55];
  v53 = v0[57];
  v55 = v0[54];
  v17 = v0[44];
  v46 = v0[62];
  v47 = v0[43];
  v19 = v0[41];
  v18 = v0[42];
  v20 = v0[39];
  v21 = v0[40];
  v22 = v0[38];
  (*(v1 + 32))();
  v23 = *(v22 + 16);
  v24 = swift_task_alloc();
  v24[2] = v21;
  v24[3] = v18;
  v24[4] = v17;
  v24[5] = v20;
  v24[6] = v19;
  v24[7] = v47;
  v24[8] = v46;
  v0[28] = v21;
  v0[29] = v18;
  v0[30] = v17;
  v0[31] = v20;
  v0[32] = v19;
  v0[33] = v47;
  type metadata accessor for CombineLatestStateMachine(0, (v0 + 28));
  sub_1B6A9C450(sub_1B69D1184, v24, v23);

  (*(v50 + 16))(v53, v48, v49);
  if ((*(*(v55 - 8) + 48))(v53, 1) != 1)
  {
    v25 = v0[57];
    v27 = v0[52];
    v26 = v0[53];
    v28 = v0[50];
    v29 = v0[51];
    v30 = v0[49];
    v31 = *v25;
    sub_1B6AB9740();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v29 + 32))(v26, &v25[*(TupleTypeMetadata2 + 48)], v30);
    (*(v29 + 16))(v27, v26, v30);
    (*(v28 + 32))(*(*(v31 + 64) + 40), v27, v30);
    swift_continuation_resume();
    (*(v29 + 8))(v26, v30);
  }

  v34 = v0[61];
  v33 = v0[62];
  v35 = v0[45];
  (*(v0[56] + 8))(v0[58], v0[55]);
  (*(v34 + 8))(v33, v35);

  return MEMORY[0x1EEE6DFA0](sub_1B69CF028, 0, 0);
}

uint64_t sub_1B69CFB4C()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

void sub_1B69CFC3C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *a2;
  v5 = a2[2];
  v10 = *(*a2 + 80);
  v11 = v4[11];
  v12 = v4[12];
  v13 = v4[13];
  v14 = v4[14];
  v15 = v4[15];
  v16 = a1;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  type metadata accessor for CombineLatestStateMachine(0, &v17);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  type metadata accessor for CombineLatestStateMachine.ChildTaskSuspendedAction(255, &v17);
  sub_1B6AB9B30();
  sub_1B6A9C450(a3, &v9, v5);
  v6 = v17;
  v7 = v18;
  if ((~v17 & 0xF00000000000000FLL) != 0 || (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    if (v18 < 0)
    {
      sub_1B69AC828();
      swift_allocError();
      *v8 = v7 & 0x7FFFFFFFFFFFFFFFLL;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      swift_continuation_throwingResume();
      sub_1B69D11CC(v6, v7);
    }
  }
}

uint64_t sub_1B69CFDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v32 = a8;
  v26 = a4;
  v27 = a7;
  v24 = a3;
  v25 = a6;
  v29 = a2;
  v30 = a5;
  v34 = a9;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1B6AB9B30();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v24 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v28 = sub_1B6AB9B30();
  v13 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v15 = (&v24 - v14);
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1B6AB9B30();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(*(v16 - 8) + 56))(&v24 - v19, 1, 1, v16);
  (*(*(v12 - 8) + 56))(v15, 1, 1, v12);
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(v11, v29, AssociatedTypeWitness);
  (*(v21 + 56))(v11, 0, 1, AssociatedTypeWitness);
  v36[0] = v24;
  v36[1] = v26;
  v36[2] = v30;
  v36[3] = v25;
  v36[4] = v27;
  v36[5] = v32;
  v22 = type metadata accessor for CombineLatestStateMachine(0, v36);
  sub_1B6A65A18(v20, v15, v11, v22, v34);
  (*(v31 + 8))(v11, v33);
  (*(v13 + 8))(v15, v28);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1B69D01B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B69D0208@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v7[0] = v1[1];
  v7[1] = v3;
  v7[2] = v1[3];
  v4 = type metadata accessor for CombineLatestStateMachine(0, v7);
  result = sub_1B6A62B00(v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

unint64_t sub_1B69D026C()
{
  result = qword_1EB95AC60;
  if (!qword_1EB95AC60)
  {
    sub_1B6AB9610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC60);
  }

  return result;
}

uint64_t sub_1B69D02C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B69D0304(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B6AB9D30();
  return sub_1B6AB9D20();
}

void *sub_1B69D0380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v4 = *v3;
  v30 = *(*v3 + 96);
  v5 = v30;
  v35 = sub_1B6AB9B30();
  v33 = *(v35 - 8);
  v6 = MEMORY[0x1EEE9AC00](v35);
  v32 = &v28 - v7;
  v8 = v4[11];
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v31 = &v28 - v11;
  v12 = v4[10];
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  v29 = v4[13];
  v28 = v4[14];
  *&v16 = v12;
  *(&v16 + 1) = v8;
  *&v17 = v5;
  *(&v17 + 1) = v29;
  v18 = v4[15];
  v38[0] = v16;
  v38[1] = v17;
  v39 = v28;
  v40 = v18;
  v19 = type metadata accessor for CombineLatestStateMachine(0, v38);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  (*(v13 + 16))(v15, v34, v12);
  v23 = *(v9 + 16);
  v24 = v31;
  v23(v31, v36, v8);
  v25 = v32;
  (*(v33 + 16))(v32, v37, v35);
  sub_1B6A628D8(v15, v24, v25, v12, v8, v30, v29, v28, v22, v18);
  v26 = sub_1B69D0304(v22, v19);
  (*(v20 + 8))(v22, v19);
  v3[2] = v26;
  return v3;
}

uint64_t sub_1B69D0744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1B69D07DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B69AD75C;

  return sub_1B69C9320(a1, v1);
}

char *sub_1B69D0880@<X0>(char **a1@<X8>)
{
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v8[2] = v1[3];
  v4 = type metadata accessor for CombineLatestStateMachine(0, v8);
  result = sub_1B6A646A4(v4);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

uint64_t sub_1B69D08E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B69D08FC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B69D08FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t sub_1B69D0964(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v6 = (*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1[5] - 8);
  v8 = *(v7 + 64);
  v9 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = *(sub_1B6AB9B30() - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = *(v1 + v6);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1B69AD75C;

  return sub_1B69CAF20(a1, v12, v13, v1 + v5, v14, v1 + v9, v1 + v11);
}

uint64_t sub_1B69D0B1C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B69D1460;

  return sub_1B69CB16C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1B69D0BE4(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69CC1D8(a1, v6, v4, v1 + v5, v7);
}

uint64_t sub_1B69D0D00(uint64_t a1)
{
  sub_1B69949E8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69D0D5C(uint64_t a1)
{
  v4 = (*(*(v1[5] - 8) + 80) + 80) & ~*(*(v1[5] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[5] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69CD67C(a1, v5, v6, v1 + v4, v7);
}

void sub_1B69D0E78(uint64_t a1)
{
  if (!qword_1EB95AC68)
  {
    sub_1B69AC828();
    v1 = sub_1B6AB9780();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95AC68);
    }
  }
}

char *sub_1B69D0EE4@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v4;
  v10[2] = *(v1 + 48);
  v5 = type metadata accessor for CombineLatestStateMachine(0, v10);
  result = sub_1B6A698C4(v3, v5);
  *a1 = result;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

uint64_t sub_1B69D0F60(uint64_t result, id a2, uint64_t a3, uint64_t a4)
{
  if ((~(result & a3) & 0xF000000000000007) != 0)
  {
    return sub_1B69D0F78(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B69D0F78(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1B69D0FF8(uint64_t a1)
{
  v4 = (*(*(v1[6] - 8) + 80) + 80) & ~*(*(v1[6] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[6] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69D1460;

  return sub_1B69CEB34(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_1B69D1130(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B69D1144(result, a2, a3);
  }

  return result;
}

uint64_t sub_1B69D1144(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

void sub_1B69D11CC(uint64_t result, uint64_t a2)
{
  if ((~result & 0xF00000000000000FLL) != 0 || (a2 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1B69D11F0(result, a2);
  }
}

void sub_1B69D11F0(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1B69D1264(uint64_t a1, uint64_t a2)
{
  sub_1B69949E8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1B69D12E4@<X0>(unint64_t a1@<X1>, char **a2@<X8>)
{
  v5 = v2[2];
  v10[0] = v2[1];
  v10[1] = v5;
  v10[2] = v2[3];
  v6 = type metadata accessor for CombineLatestStateMachine(0, v10);
  result = sub_1B6A68528(a1, v6);
  *a2 = result;
  a2[1] = v8;
  a2[2] = v9;
  return result;
}

uint64_t sub_1B69D13D8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v6;
  v10[2] = *(v2 + 48);
  v7 = type metadata accessor for CombineLatestStateMachine(0, v10);
  result = sub_1B6A65470(a1, v5, v7);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_1B69D146C()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

uint64_t sub_1B69D14B0()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

uint64_t ExternalAnalyticsUploader.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v2 = sub_1B6AB92B0();
    [v1 set:v2 sourceApplicationBundleIdentifier:?];
  }

  v3 = [objc_opt_self() sessionWithConfiguration:v1 delegate:0 delegateQueue:0];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t ExternalAnalyticsUploader.init()()
{
  v1 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v2 = sub_1B6AB92B0();
    [v1 set:v2 sourceApplicationBundleIdentifier:?];
  }

  v3 = [objc_opt_self() sessionWithConfiguration:v1 delegate:0 delegateQueue:0];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t ExternalAnalyticsUploader.submitExternalAnalytics(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB8BB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8810();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  sub_1B6AB87D0();
  v15 = *(v3 + 16);
  v16 = sub_1B6AB87A0();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_1B69D1B50;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B69D1A0C;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  v19 = [v15 dataTaskWithRequest:v16 completionHandler:v18];
  _Block_release(v18);

  [v19 resume];
  return (*(v12 + 8))(v14, v11);
}

void sub_1B69D1944(int a1, int a2, void *a3, id a4, void (*a5)(uint64_t *))
{
  if (a3 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v8;
    v12 = 0;
    v9 = a3;
  }

  else if (a4)
  {
    v11 = a4;
    v12 = 1;
    v10 = a4;
  }

  else
  {
    sub_1B69D1BBC();
    v11 = swift_allocError();
    v12 = 1;
  }

  a5(&v11);
  sub_1B69D1C10(v11);
}

uint64_t sub_1B69D1A0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1B6AB8C80();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1B69AE288(v6, v10);
}

uint64_t ExternalAnalyticsUploader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1B69D1BBC()
{
  result = qword_1EB95AC70;
  if (!qword_1EB95AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC70);
  }

  return result;
}

unint64_t sub_1B69D1C38()
{
  result = qword_1EB95AC78;
  if (!qword_1EB95AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC78);
  }

  return result;
}

uint64_t sub_1B69D1CAC()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

uint64_t sub_1B69D1D20()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

unint64_t sub_1B69D1D64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B69D2268(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t BridgedSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AASession_identifier);

  return v1;
}

uint64_t BridgedSession.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AASession_name);

  return v1;
}

uint64_t BridgedSession.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AASession_startDate;
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id BridgedSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedSession(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B69D2268(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for BridgedSession(uint64_t a1)
{
  result = qword_1EB95ACA0;
  if (!qword_1EB95ACA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B69D22C8()
{
  result = qword_1EB95AC98;
  if (!qword_1EB95AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AC98);
  }

  return result;
}

uint64_t sub_1B69D2334(uint64_t a1)
{
  result = sub_1B6AB8DB0();
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

void sub_1B69D240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ProcessEvent(0, a2, a3, a4);
  v7 = sub_1B6AB067C(v6, &protocol witness table for ProcessEvent<A>);
  [v5 processEvent_];
}

uint64_t sub_1B69D2484()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B69D24FC(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v7 = *(v4 + 16);
  result = [v7 respondsToSelector_];
  if (result)
  {
    v9 = *a4;

    return [v7 v9];
  }

  return result;
}

void sub_1B69D2588(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  if ([v6 respondsToSelector_])
  {
    v7 = sub_1B6A4197C();
    [v6 *a4];
  }
}

void sub_1B69D261C()
{
  v1 = *(v0 + 16);
  if ([v1 respondsToSelector_])
  {
    v2 = sub_1B6A4197C();
    v3 = sub_1B6AB8D20();
    [v1 didEndSession:v2 endDate:v3];
  }
}

uint64_t static DenylistDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B6ABA0F0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1B6ABA0F0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1B6ABA0F0();
}

uint64_t DenylistDescriptor.hash(into:)(uint64_t a1)
{
  sub_1B6AB9380();
  sub_1B6AB9380();

  return sub_1B6AB9380();
}

uint64_t DenylistDescriptor.hashValue.getter()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69D28D8()
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  sub_1B6AB9380();
  return sub_1B6ABA230();
}

uint64_t sub_1B69D295C(uint64_t a1)
{
  sub_1B6AB9380();
  sub_1B6AB9380();

  return sub_1B6AB9380();
}

uint64_t DenylistDescriptor.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1B6999200(0, &qword_1EDBCBB08, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B6ABD530;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_1B6999200(0, &qword_1EDBCAFF0, MEMORY[0x1E69E62F8]);
  sub_1B699918C();

  v8 = sub_1B6AB9290();

  return v8;
}

uint64_t sub_1B69D2ADC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B69D2B24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CrashException.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CrashException.signal.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CrashTerminationReason.namespace.getter()
{
  v1 = *v0;

  return v1;
}

double CrashDetails.exception.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1B69D2C14(v2, v3, v4, v5);
}

double sub_1B69D2C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

double CrashDetails.terminationReason.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1B69D2C68(v2, v3);
}

double sub_1B69D2C68(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B69D2C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B69D2CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B69D2D54(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B69D2DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_1B69D2E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1B69D2E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t static PrivacyValidation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1B69D2F14(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_1B69D2F14(uint64_t result, uint64_t a2)
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
  v31 = result + 56;
  v3 = 1 << *(result + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  v38 = a2 + 56;
  v32 = v6;
  v33 = result;
  v35 = a2;
  if (v5)
  {
    while (1)
    {
      v7 = __clz(__rbit64(v5));
      v34 = (v5 - 1) & v5;
LABEL_13:
      v10 = (*(result + 48) + 48 * (v7 | (v2 << 6)));
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];
      v15 = v10[4];
      v16 = v10[5];
      v17 = a2;
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v39 = v14;
      v40 = v13;
      sub_1B6AB9380();
      v18 = v15;
      v19 = v16;
      sub_1B6AB9380();
      v20 = sub_1B6ABA230();
      v21 = -1 << *(v17 + 32);
      v22 = v20 & ~v21;
      if (((*(v38 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        break;
      }

      v36 = ~v21;
      v37 = *(v35 + 48);
      while (1)
      {
        v23 = (v37 + 48 * v22);
        v25 = v23[2];
        v24 = v23[3];
        v26 = v23[4];
        v27 = v23[5];
        v28 = *v23 == v12 && v23[1] == v11;
        if (v28 || (sub_1B6ABA0F0() & 1) != 0)
        {
          v29 = v25 == v39 && v24 == v40;
          if (v29 || (sub_1B6ABA0F0() & 1) != 0)
          {
            v30 = v26 == v18 && v27 == v19;
            if (v30 || (sub_1B6ABA0F0() & 1) != 0)
            {
              break;
            }
          }
        }

        v22 = (v22 + 1) & v36;
        if (((*(v38 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v6 = v32;
      result = v33;
      v5 = v34;
      a2 = v35;
      if (!v34)
      {
        goto LABEL_8;
      }
    }

LABEL_34:

    return 0;
  }

LABEL_8:
  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v6)
    {
      return 1;
    }

    v9 = *(v31 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v34 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69D31D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1B69D2F14(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t PrivacyValidation.denylistDescriptors.getter()
{
  if (*v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1B69D3240(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B69D3290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B69D32E4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B69D32FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B69D3344(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1B69D3390(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

void static EventType.sessionGroup.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1B69D354C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v94 = a8;
  v93 = a7;
  v102 = a5;
  v106 = a4;
  v98 = a9;
  v111 = *MEMORY[0x1E69E9840];
  v100 = a6;
  v99 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v92 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v104 = &v87 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v87 - v16;

  v96 = a1;
  v97 = a2;
  v17 = sub_1B699F46C(a1, a2);
  v19 = v18;
  sub_1B69D63D4(0, &qword_1EB95ACC8, sub_1B69D6438, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD880;
  v21 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v22 = *MEMORY[0x1E697B020];
  type metadata accessor for CFString(0);
  v23 = MEMORY[0x1E697AC48];
  *(inited + 40) = v22;
  v24 = *v23;
  v103 = v25;
  *(inited + 64) = v25;
  *(inited + 72) = v24;
  v26 = MEMORY[0x1E6969080];
  *(inited + 80) = v17;
  *(inited + 88) = v19;
  v27 = *MEMORY[0x1E697AEB0];
  *(inited + 104) = v26;
  *(inited + 112) = v27;
  v28 = MEMORY[0x1E69E6370];
  *(inited + 120) = a3;
  v29 = *MEMORY[0x1E697B318];
  *(inited + 144) = v28;
  *(inited + 152) = v29;
  *(inited + 184) = v28;
  *(inited + 160) = 1;
  v30 = v21;
  v31 = v22;
  v32 = v24;
  v33 = v27;
  v34 = v102;
  v35 = v19;
  v36 = v17;
  v37 = v29;
  v105 = v35;
  sub_1B6994494(v17, v35);
  v38 = sub_1B69F7264(inited);
  swift_setDeallocating();
  sub_1B69D6438(0);
  swift_arrayDestroy();
  if (v34)
  {
    v39 = *MEMORY[0x1E697ABD0];
    v40 = v106;
    *&v107 = v106;
    *(&v107 + 1) = v34;
    v108 = MEMORY[0x1E69E6158];
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = v38;
    sub_1B69E6C34(&v107, v39, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v40 = v106;
  }

  result = 0;
  sub_1B69825A8(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  sub_1B69D62A0();
  v42 = sub_1B6AB91F0();
  v43 = SecItemCopyMatching(v42, &result);

  v44 = v104;
  if (v43)
  {
    if (v43 == -25300)
    {

      sub_1B6993C94(v36, v105);

LABEL_16:
      v52 = 1;
LABEL_17:
      v53 = v100;
      v54 = v98;
      v55 = v99;
LABEL_18:
      (*(v55 + 56))(v54, v52, 1, v53);
      return swift_unknownObjectRelease();
    }

    v49 = SecCopyErrorMessageString(v43, 0);
    if (v49)
    {
      v50 = v49;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v107 = 0uLL;
        sub_1B6AB92D0();

        v51 = *(&v107 + 1);
        if (*(&v107 + 1))
        {
          v104 = v107;

LABEL_22:
          v56 = v97;
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v57 = sub_1B6AB8F90();
          __swift_project_value_buffer(v57, qword_1EDBCFD80);

          v58 = sub_1B6AB8F80();
          v59 = sub_1B6AB98E0();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v109 = v61;
            *v60 = 136315650;
            *(v60 + 4) = sub_1B698F63C(v96, v56, &v109);
            *(v60 + 12) = 2080;
            *&v107 = v40;
            *(&v107 + 1) = v34;
            sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            v62 = sub_1B6AB9330();
            v64 = v36;
            v65 = sub_1B698F63C(v62, v63, &v109);

            *(v60 + 14) = v65;
            v36 = v64;
            *(v60 + 22) = 2080;
            v66 = v104;
            *(v60 + 24) = sub_1B698F63C(v104, v51, &v109);
            _os_log_impl(&dword_1B697C000, v58, v59, "Failed to read value at key: %s, from keychain access group: %s, with error: %s", v60, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B8C99550](v61, -1, -1);
            MEMORY[0x1B8C99550](v60, -1, -1);
          }

          else
          {

            v66 = v104;
          }

          sub_1B69D62F8();
          swift_allocError();
          *v67 = v66;
          v67[1] = v51;
          swift_willThrow();
          sub_1B6993C94(v36, v105);
          return swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v104 = 0;
    v51 = 0xE000000000000000;
    goto LABEL_22;
  }

  if (!result)
  {

    sub_1B6993C94(v36, v105);
    goto LABEL_16;
  }

  v109 = result;
  swift_unknownObjectRetain();
  v45 = swift_dynamicCast();
  v46 = v101;
  if ((v45 & 1) == 0)
  {

    sub_1B6993C94(v36, v105);
    v52 = 1;
    goto LABEL_17;
  }

  v47 = v107;
  sub_1B6AB8840();
  swift_allocObject();
  sub_1B6AB8830();
  v48 = v95;
  sub_1B6AB8820();
  if (!v46)
  {
    v103 = *(&v47 + 1);
    v94 = v47;
    v101 = 0;

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v69 = sub_1B6AB8F90();
    __swift_project_value_buffer(v69, qword_1EDBCFD80);
    v89 = *(v99 + 16);
    v89(v44, v48, v100);

    v70 = sub_1B6AB8F80();
    v71 = sub_1B6AB98D0();

    v90 = v71;
    v91 = v70;
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v109 = v88;
      *v72 = 136315650;
      v73 = v92;
      v53 = v100;
      v89(v92, v44, v100);
      v74 = v44;
      v75 = *(v99 + 8);
      v75(v74, v53);
      v76 = sub_1B6ABA080();
      v78 = v77;
      v75(v73, v53);
      v79 = sub_1B698F63C(v76, v78, &v109);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_1B698F63C(v96, v97, &v109);
      *(v72 + 22) = 2080;
      *&v107 = v106;
      *(&v107 + 1) = v34;
      sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v80 = sub_1B6AB9330();
      v82 = sub_1B698F63C(v80, v81, &v109);

      *(v72 + 24) = v82;
      v83 = v91;
      _os_log_impl(&dword_1B697C000, v91, v90, "Value: %s, at key: %s read from access group: %s", v72, 0x20u);
      v84 = v88;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v84, -1, -1);
      v85 = v72;
      v48 = v95;
      MEMORY[0x1B8C99550](v85, -1, -1);
      sub_1B6993C94(v36, v105);
      sub_1B6993C94(v94, v103);

      v86 = v98;
      v55 = v99;
    }

    else
    {
      v55 = v99;
      v53 = v100;
      (*(v99 + 8))(v44, v100);

      sub_1B6993C94(v36, v105);
      sub_1B6993C94(v94, v103);

      v86 = v98;
    }

    (*(v55 + 32))(v86, v48, v53);
    v54 = v86;
    v52 = 0;
    goto LABEL_18;
  }

  sub_1B6993C94(v36, v105);
  sub_1B6993C94(v47, *(&v47 + 1));

  return swift_unknownObjectRelease();
}

void sub_1B69D4140(void (*a1)(void, void, void), uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v168 = a8;
  v177 = a6;
  LODWORD(v171) = a4;
  v172 = *(a7 - 8);
  v173 = a5;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v170 = v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v167 = v159 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v165 = v159 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v159 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v159 - v23;

  v169 = a2;
  v174 = a3;
  v176 = sub_1B699F46C(a2, a3);
  v178 = v25;
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  v26 = a1;
  v27 = a7;
  v28 = v175;
  v29 = sub_1B6AB8870();
  v31 = v30;

  if (!v28)
  {
    v159[0] = v24;
    v159[1] = 0;
    v163 = v26;
    v164 = v27;
    v160 = v22;
    v175 = v29;
    v166 = v31;
    sub_1B69D63D4(0, &qword_1EB95ACB0, sub_1B69D5350, MEMORY[0x1E69E6F90]);
    v161 = v34;
    inited = swift_initStackObject();
    v36 = v176;
    v37 = inited;
    *(inited + 16) = xmmword_1B6ABD530;
    v38 = *MEMORY[0x1E697AFF8];
    *(inited + 32) = *MEMORY[0x1E697AFF8];
    v39 = *MEMORY[0x1E697B020];
    type metadata accessor for CFString(0);
    v40 = MEMORY[0x1E697AC48];
    *(v37 + 40) = v39;
    v41 = *v40;
    v162 = v42;
    *(v37 + 64) = v42;
    *(v37 + 72) = v41;
    v43 = MEMORY[0x1E6969080];
    v44 = v178;
    *(v37 + 80) = v36;
    *(v37 + 88) = v44;
    v45 = *MEMORY[0x1E697AEB0];
    *(v37 + 104) = v43;
    *(v37 + 112) = v45;
    *(v37 + 144) = MEMORY[0x1E69E6370];
    *(v37 + 120) = v171 & 1;
    v46 = v38;
    v47 = v39;
    v48 = v41;
    v49 = v45;
    sub_1B6994494(v36, v178);
    v50 = sub_1B69F7378(v37);
    swift_setDeallocating();
    sub_1B69D5350(0);
    v51 = v177;
    swift_arrayDestroy();
    if (v51)
    {

      v52 = *MEMORY[0x1E697ABD0];
      v181 = MEMORY[0x1E69E6158];
      *&v180 = v173;
      *(&v180 + 1) = v51;
      sub_1B69979CC(&v180, v179);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182 = v50;
      sub_1B69E6DA4(v179, v52, isUniquelyReferenced_nonNull_native);
      v50 = v182;
    }

    v54 = v166;
    v55 = v175;
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_1B6ABD890;
    v57 = *MEMORY[0x1E697B3C0];
    *(v56 + 32) = *MEMORY[0x1E697B3C0];
    *(v56 + 64) = MEMORY[0x1E6969080];
    *(v56 + 40) = v55;
    *(v56 + 48) = v54;
    v171 = v57;
    sub_1B6994494(v55, v54);
    sub_1B69F7378(v56);
    swift_setDeallocating();
    sub_1B69D6244(v56 + 32);
    sub_1B69D62A0();
    v58 = sub_1B6AB91F0();
    v59 = sub_1B6AB91F0();

    v60 = SecItemUpdate(v58, v59);
    swift_bridgeObjectRelease_n();

    if (v60 == -25300)
    {
      v181 = MEMORY[0x1E6969080];
      v79 = v175;
      *&v180 = v175;
      *(&v180 + 1) = v54;
      sub_1B69979CC(&v180, v179);
      sub_1B6994494(v79, v54);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v182 = v50;
      sub_1B69E6DA4(v179, v171, v80);
      v81 = sub_1B6AB91F0();
      v82 = SecItemAdd(v81, 0);

      v83 = v164;
      if (!v82)
      {

        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v92 = sub_1B6AB8F90();
        __swift_project_value_buffer(v92, qword_1EDBCFD80);
        v93 = v172;
        v94 = v165;
        v170 = *(v172 + 16);
        (v170)(v165, v163, v83);

        v65 = sub_1B6AB8F80();
        v95 = sub_1B6AB98D0();

        LODWORD(v171) = v95;
        if (!os_log_type_enabled(v65, v95))
        {
          (*(v93 + 8))(v94, v164);

          sub_1B6993C94(v176, v178);
          v109 = v79;
          goto LABEL_23;
        }

        v96 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *&v179[0] = v167;
        *v96 = 136315650;
        v97 = v65;
        v98 = v160;
        v99 = v164;
        (v170)(v160, v94, v164);
        v100 = *(v93 + 8);
        v100(v94, v99);
        v101 = sub_1B6ABA080();
        v103 = v102;
        v100(v98, v99);
        v104 = sub_1B698F63C(v101, v103, v179);

        *(v96 + 4) = v104;
        *(v96 + 12) = 2080;
        *(v96 + 14) = sub_1B698F63C(v169, v174, v179);
        *(v96 + 22) = 2080;
        *&v180 = v173;
        *(&v180 + 1) = v177;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v105 = sub_1B6AB9330();
        v107 = sub_1B698F63C(v105, v106, v179);

        *(v96 + 24) = v107;
        v65 = v97;
        _os_log_impl(&dword_1B697C000, v97, v171, "Value: %s, at key: %s written to keychain access group: %s", v96, 0x20u);
        v108 = v167;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v108, -1, -1);
        v78 = v96;
        goto LABEL_21;
      }

      v84 = SecCopyErrorMessageString(v82, 0);
      v85 = v172;
      if (v84)
      {
        v86 = v84;
        v170 = sub_1B6AB92E0();
        v171 = v87;
      }

      else
      {
        v170 = 0x206E776F6E6B6E55;

        v171 = 0xED0000726F727265;
      }

      v135 = v163;
      v136 = v167;
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v137 = sub_1B6AB8F90();
      __swift_project_value_buffer(v137, qword_1EDBCFD80);
      v163 = *(v85 + 16);
      v163(v136, v135, v83);

      v138 = v171;

      v139 = sub_1B6AB8F80();
      v140 = v83;
      v141 = sub_1B6AB98E0();

      LODWORD(v165) = v141;
      if (os_log_type_enabled(v139, v141))
      {
        v142 = v140;
        v143 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        *&v179[0] = v162;
        *v143 = 136315906;
        v144 = v139;
        v145 = v160;
        v146 = v167;
        v163(v160, v167, v142);
        v147 = *(v85 + 8);
        v147(v146, v142);
        v148 = sub_1B6ABA080();
        v150 = v149;
        v147(v145, v142);
        v151 = sub_1B698F63C(v148, v150, v179);

        *(v143 + 4) = v151;
        *(v143 + 12) = 2080;
        *(v143 + 14) = sub_1B698F63C(v169, v174, v179);
        *(v143 + 22) = 2080;
        *&v180 = v173;
        *(&v180 + 1) = v177;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v152 = sub_1B6AB9330();
        v154 = sub_1B698F63C(v152, v153, v179);

        *(v143 + 24) = v154;
        *(v143 + 32) = 2080;
        v155 = v170;
        *(v143 + 34) = sub_1B698F63C(v170, v171, v179);
        _os_log_impl(&dword_1B697C000, v144, v165, "Failed to write value: %s, for key: %s to keychain access group: %s, error: %s", v143, 0x2Au);
        v156 = v162;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v156, -1, -1);
        v157 = v143;
        v138 = v171;
        v133 = v178;
        MEMORY[0x1B8C99550](v157, -1, -1);
      }

      else
      {
        (*(v85 + 8))(v167, v140);

        v133 = v178;
        v155 = v170;
      }

      sub_1B69D62F8();
      swift_allocError();
      *v158 = v155;
      v158[1] = v138;
    }

    else
    {
      if (!v60)
      {

        v61 = v172;
        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v62 = sub_1B6AB8F90();
        __swift_project_value_buffer(v62, qword_1EDBCFD80);
        v63 = v159[0];
        v64 = v164;
        v170 = *(v61 + 16);
        (v170)(v159[0], v163, v164);

        v65 = sub_1B6AB8F80();
        v66 = sub_1B6AB98D0();

        LODWORD(v171) = v66;
        if (!os_log_type_enabled(v65, v66))
        {
          (*(v61 + 8))(v63, v64);

LABEL_22:
          sub_1B6993C94(v176, v178);
          v109 = v175;
LABEL_23:
          sub_1B6993C94(v109, v166);

          return;
        }

        v67 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        *&v179[0] = v165;
        *v67 = 136315650;
        v167 = v65;
        v68 = v160;
        (v170)(v160, v63, v64);
        v69 = *(v61 + 8);
        v69(v63, v64);
        v70 = sub_1B6ABA080();
        v72 = v71;
        v69(v68, v64);
        v73 = sub_1B698F63C(v70, v72, v179);

        *(v67 + 4) = v73;
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_1B698F63C(v169, v174, v179);
        *(v67 + 22) = 2080;
        *&v180 = v173;
        *(&v180 + 1) = v177;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v74 = sub_1B6AB9330();
        v76 = sub_1B698F63C(v74, v75, v179);

        *(v67 + 24) = v76;
        v65 = v167;
        _os_log_impl(&dword_1B697C000, v167, v171, "Value: %s, at key: %s updated in keychain, access group: %s", v67, 0x20u);
        v77 = v165;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v77, -1, -1);
        v78 = v67;
LABEL_21:
        MEMORY[0x1B8C99550](v78, -1, -1);
        goto LABEL_22;
      }

      v88 = SecCopyErrorMessageString(v60, 0);
      v89 = v172;
      if (v88)
      {
        v90 = v88;
        v167 = sub_1B6AB92E0();
        v171 = v91;
      }

      else
      {
        v167 = 0x206E776F6E6B6E55;

        v171 = 0xED0000726F727265;
      }

      v110 = v170;
      v111 = v163;
      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v112 = sub_1B6AB8F90();
      __swift_project_value_buffer(v112, qword_1EDBCFD80);
      v113 = v110;
      v114 = v164;
      v163 = *(v89 + 16);
      v163(v113, v111, v164);

      v115 = v171;

      v116 = sub_1B6AB8F80();
      v117 = sub_1B6AB98E0();
      v171 = v115;

      LODWORD(v165) = v117;
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        *&v179[0] = v162;
        *v118 = 136315906;
        v161 = v116;
        v119 = v160;
        v120 = v170;
        v163(v160, v170, v114);
        v121 = *(v89 + 8);
        v121(v120, v114);
        v122 = sub_1B6ABA080();
        v124 = v123;
        v121(v119, v114);
        v125 = sub_1B698F63C(v122, v124, v179);

        *(v118 + 4) = v125;
        *(v118 + 12) = 2080;
        *(v118 + 14) = sub_1B698F63C(v169, v174, v179);
        *(v118 + 22) = 2080;
        *&v180 = v173;
        *(&v180 + 1) = v177;
        sub_1B69825A8(0, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        v126 = sub_1B6AB9330();
        v128 = sub_1B698F63C(v126, v127, v179);

        *(v118 + 24) = v128;
        *(v118 + 32) = 2080;
        v129 = v167;
        v130 = v171;
        *(v118 + 34) = sub_1B698F63C(v167, v171, v179);
        v131 = v161;
        _os_log_impl(&dword_1B697C000, v161, v165, "Failed to write value: %s, for key: %s to keychain access group: %s, error: %s", v118, 0x2Au);
        v132 = v162;
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v132, -1, -1);
        v133 = v178;
        MEMORY[0x1B8C99550](v118, -1, -1);
      }

      else
      {
        (*(v89 + 8))(v170, v114);

        v133 = v178;
        v129 = v167;
        v130 = v171;
      }

      sub_1B69D62F8();
      swift_allocError();
      *v134 = v129;
      v134[1] = v130;
    }

    swift_willThrow();
    sub_1B6993C94(v176, v133);
    v32 = v175;
    v33 = v166;
    goto LABEL_39;
  }

  v32 = v176;
  v33 = v178;
LABEL_39:
  sub_1B6993C94(v32, v33);
}

void sub_1B69D5350(uint64_t a1)
{
  if (!qword_1EB95ACB8)
  {
    type metadata accessor for CFString(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95ACB8);
    }
  }
}

char *sub_1B69D53BC(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1B6993C94(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B6993C94(v7, v6);
    *v4 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B6AB8900() && __OFSUB__(v7, sub_1B6AB8930()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1B6AB8950();
      swift_allocObject();
      v14 = sub_1B6AB88E0();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1B69D5C98(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1B6993C94(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    sub_1B6AB8BC0();
    result = sub_1B69D5C98(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_1B69D5760@<X0>(void *(*a1)(__int128 *__return_ptr, char *, char *)@<X0>, uint64_t a3@<X8>)
{
  v5 = v3;
  v30 = *MEMORY[0x1E69E9840];
  v9 = *v3;
  v8 = v3[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {

      sub_1B6993C94(v9, v8);
      *&v29 = v9;
      *(&v29 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1B6ABD8A0;
      sub_1B6993C94(0, 0xC000000000000000);
      sub_1B6AB8BC0();
      v13 = v29;
      result = sub_1B69D5D4C(*(v29 + 16), *(v29 + 24), a1, &v25);
      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
      *v3 = v13;
      v3[1] = *(&v13 + 1) | 0x8000000000000000;
      if (v4)
      {
        return result;
      }
    }

    else
    {
      *(&v29 + 7) = 0;
      *&v29 = 0;
      result = a1(&v25, &v29, &v29);
      if (v4)
      {
        return result;
      }

      v14 = v25;
      v15 = v26;
      v16 = v27;
      v17 = v28;
    }

    goto LABEL_20;
  }

  if (!v10)
  {
    sub_1B6993C94(v9, v8);
    *&v29 = v9;
    WORD4(v29) = v8;
    BYTE10(v29) = BYTE2(v8);
    BYTE11(v29) = BYTE3(v8);
    BYTE12(v29) = BYTE4(v8);
    BYTE13(v29) = BYTE5(v8);
    BYTE14(v29) = BYTE6(v8);
    result = a1(&v25, &v29, &v29 + BYTE6(v8));
    if (v4)
    {
      v12 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
      *v3 = v29;
      v3[1] = v12;
      return result;
    }

    v14 = v25;
    v15 = v26;
    v16 = v27;
    v17 = v28;
    v20 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
    *v3 = v29;
    v3[1] = v20;
    goto LABEL_20;
  }

  v18 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1B6993C94(v9, v8);
  *v3 = xmmword_1B6ABD8A0;
  sub_1B6993C94(0, 0xC000000000000000);
  v19 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_1B6AB8900() && __OFSUB__(v9, sub_1B6AB8930()))
    {
LABEL_24:
      __break(1u);
    }

    sub_1B6AB8950();
    swift_allocObject();
    v21 = sub_1B6AB88E0();

    v18 = v21;
  }

  if (v19 < v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_1B69D5D4C(v9, v9 >> 32, a1, &v25);
  v15 = v26;
  v16 = v27;
  v23 = v28;
  v24 = v25;

  *v5 = v9;
  v5[1] = v18 | 0x4000000000000000;
  if (v4)
  {
    return result;
  }

  v17 = v23;
  v14 = v24;
LABEL_20:
  *a3 = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  return result;
}

_BYTE *sub_1B69D5B18@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B699FB2C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B69D607C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B69D60F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1B69D5BAC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B69D5C18@<X0>(void *(*a1)(__int128 *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v11;
      v8 = v12;
      v9 = v13;
      *a4 = v10;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      *(a4 + 32) = v9;
      return result;
    }
  }

  else
  {
    result = (a1)(&v10, 0, 0, 0, a3);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B69D5C98(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B6AB8900();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B6AB8930();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B6AB8920();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_1B69D5D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_1B6AB8900();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_1B6AB8930();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_1B6AB8920();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *a4 = v19;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v18;
  }

  return result;
}

unint64_t sub_1B69D5E18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B6AB9410();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8C97C20](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1B69D5E94@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1B6AB9CB0();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1B69D5EE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 2);
  v6 = *(a3 + 3);
  v15 = *a3;
  v16 = v5;
  v17 = v6;
  sub_1B69D5C18(sub_1B69D6568, a1, a2, &v11);
  v7 = v12;
  v8 = v13;
  result = *&v11;
  v10 = v14;
  *a4 = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  return result;
}

double sub_1B69D5F6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_1B6AB1978(v9, a1, a2, *a3, a3[1], a3[2], a3[3]);
  v6 = v10;
  v7 = v9[1];
  *a4 = v9[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v6;
  *(a4 + 40) = v5;

  return result;
}

uint64_t sub_1B69D5FDC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B6AB8950();
      swift_allocObject();
      sub_1B6AB8910();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B6AB8C00();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B69D607C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B6AB8950();
  swift_allocObject();
  result = sub_1B6AB88F0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B6AB8C00();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B69D60F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B6AB8950();
  swift_allocObject();
  result = sub_1B6AB88F0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B69D617C(uint64_t a1)
{
  sub_1B69825A8(0, &qword_1EDBC9BC8, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
  v3 = v2;
  v10[3] = v2;
  v10[4] = sub_1B69D64D0();
  v10[0] = a1;
  v4 = __swift_project_boxed_opaque_existential_1(v10, v3);
  v5 = (*v4 + 32);
  v6 = *(*v4 + 16);

  sub_1B69D5B18(v5, &v5[v6], &v9);
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t sub_1B69D6244(uint64_t a1)
{
  sub_1B69D5350(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B69D62A0()
{
  result = qword_1EB95AAF0;
  if (!qword_1EB95AAF0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AAF0);
  }

  return result;
}

unint64_t sub_1B69D62F8()
{
  result = qword_1EB95ACC0;
  if (!qword_1EB95ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95ACC0);
  }

  return result;
}

void *sub_1B69D634C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1B69D5BAC(sub_1B69D63B4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void sub_1B69D63D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B69D6438(uint64_t a1)
{
  if (!qword_1EB95ACD0)
  {
    type metadata accessor for CFString(255);
    sub_1B69825A8(255, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95ACD0);
    }
  }
}

unint64_t sub_1B69D64D0()
{
  result = qword_1EDBCA4C8;
  if (!qword_1EDBCA4C8)
  {
    sub_1B69825A8(255, &qword_1EDBC9BC8, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCA4C8);
  }

  return result;
}

char *BridgedFlushManager.__allocating_init(appSessionManager:client:endpoint:config:)(char *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = *&a1[OBJC_IVAR___AAAppSessionManager_appSessionManager];
  type metadata accessor for URLSessionUploadClientFactory();
  v12 = swift_allocObject();

  v13 = a2;
  swift_unknownObjectRetain();
  v14 = a4;
  *&v10[OBJC_IVAR___AAFlushManager_flushManager] = sub_1B69D6A7C(v11, v13, a3, 0, v14, v12);
  v17.receiver = v10;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  swift_unknownObjectRelease();
  return v15;
}

char *BridgedFlushManager.init(appSessionManager:client:endpoint:config:)(char *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *&a1[OBJC_IVAR___AAAppSessionManager_appSessionManager];
  type metadata accessor for URLSessionUploadClientFactory();
  v12 = swift_allocObject();

  v13 = a2;
  swift_unknownObjectRetain();
  v14 = a4;
  *&v5[OBJC_IVAR___AAFlushManager_flushManager] = sub_1B69D6A7C(v11, v13, a3, 0, v14, v12);
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  swift_unknownObjectRelease();
  return v15;
}

id BridgedFlushManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedFlushManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B69D6A7C(uint64_t a1, void *a2, void *a3, uint64_t a4, char *a5, uint64_t *a6)
{
  v66 = a1;
  v67 = a4;
  v69 = a3;
  v9 = *a6;
  v10 = sub_1B6AB9980();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1B6AB9950();
  MEMORY[0x1EEE9AC00](v62);
  v61 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB9090();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59[1] = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB8BB0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77[3] = v9;
  v77[4] = &protocol witness table for URLSessionUploadClientFactory;
  v77[0] = a6;
  v19 = type metadata accessor for UploadDropboxFileManager();
  v20 = swift_allocObject();
  sub_1B6982544(v77, v76);
  type metadata accessor for MescalSigner();
  swift_allocObject();
  v60 = a2;
  v21 = sub_1B6984F70(v60);
  v22 = type metadata accessor for SHA1Base64SigningService();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = &off_1F2E755D0;
  v24 = *(v16 + 16);
  v68 = a5;
  v24(v18, &a5[OBJC_IVAR___AAUploadBatchEventConfig_directory], v15);
  v25 = [v69 name];
  v26 = sub_1B6AB92E0();
  v28 = v27;

  v29 = type metadata accessor for DocumentDirectoryUploadDropboxPathProvider(0);
  v30 = swift_allocObject();

  v31 = sub_1B6985BBC(v18, v26, v28, v20, v30);
  v75[3] = v22;
  v75[4] = &off_1F2E75D60;
  v75[0] = v23;
  v74[3] = v29;
  v74[4] = &off_1F2E7D060;
  v74[0] = v31;
  v73[3] = v19;
  v73[4] = &off_1F2E7BBC8;
  v73[0] = v20;
  type metadata accessor for FlushManager(0);
  v32 = swift_allocObject();
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v75, v22);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v72[3] = v22;
  v72[4] = &off_1F2E75D60;
  v72[0] = v37;
  sub_1B698C854();

  sub_1B6AB9050();
  v71 = MEMORY[0x1E69E7CC0];
  sub_1B69D7310(&qword_1EDBCBB48, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1B69D72B8(0);
  sub_1B69D7310(&qword_1EDBCBB68, sub_1B69D72B8, MEMORY[0x1E69E6328]);
  sub_1B6AB9BE0();
  (*(v64 + 104))(v63, *MEMORY[0x1E69E8090], v65);
  *(v32 + 30) = sub_1B6AB99D0();
  v38 = OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger;
  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v39 = sub_1B6AB8F90();
  v40 = __swift_project_value_buffer(v39, qword_1EDBCFD80);
  (*(*(v39 - 8) + 16))(&v32[v38], v40, v39);
  *(v32 + 2) = v66;
  *(v32 + 3) = &off_1F2E7C2C0;
  v42 = v68;
  v41 = v69;
  *(v32 + 4) = v60;
  *(v32 + 5) = v41;
  *(v32 + 6) = v67;
  *(v32 + 7) = v42;
  sub_1B6982544(v76, (v32 + 64));
  sub_1B6982544(v72, (v32 + 104));
  sub_1B6982544(v74, (v32 + 144));
  sub_1B6982544(v73, (v32 + 184));
  swift_beginAccess();
  sub_1B69D7358(0, v43, v44, v45);
  v46 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v47 = swift_allocObject();
  v48 = v42;
  v49 = swift_slowAlloc();
  *(v47 + 16) = v49;
  *v49 = 0;
  *(v47 + 24) = 0x10000;
  *(v46 + 16) = v47;
  *(v46 + 24) = 0;
  *(v32 + 29) = v46;
  swift_endAccess();
  v50 = v48[OBJC_IVAR___AAUploadBatchEventConfig_transparencyLoggingEnabled];
  v51 = type metadata accessor for TransparencyLogging();
  v52 = objc_allocWithZone(v51);
  v52[OBJC_IVAR___AATransparencyLogging_isEnabled] = v50;
  if (v50 == 1)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v53 = qword_1EDBCCB28;
    v54 = sub_1B6AB9900();
    sub_1B6AB8F70("Transparency logging is enabled", 31, 2, &dword_1B697C000, v53, v54, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDBCCB28;
    v56 = sub_1B6AB9900();
    sub_1B6AB8F70("Transparency logging is disabled", 32, 2, &dword_1B697C000, v55, v56, MEMORY[0x1E69E7CC0]);
  }

  v70.receiver = v52;
  v70.super_class = v51;
  v57 = objc_msgSendSuper2(&v70, sel_init);

  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v72);
  *(v32 + 28) = v57;
  __swift_destroy_boxed_opaque_existential_1(v75);
  return v32;
}

void sub_1B69D72B8(uint64_t a1)
{
  if (!qword_1EDBCBB70)
  {
    sub_1B6AB9950();
    v1 = sub_1B6AB95D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBCBB70);
    }
  }
}

uint64_t sub_1B69D7310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B69D7358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EDBCABA0)
  {
    v4 = type metadata accessor for Atomic(0, &type metadata for FlushManager.State, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDBCABA0);
    }
  }
}

id BridgedRawDataEvent.__allocating_init(name:dictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AARawDataEvent_name];
  *v8 = a1;
  v8[1] = a2;
  *&v7[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v7[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = 0;
  v7[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedRawDataEvent.init(name:dictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AARawDataEvent_name];
  *v8 = a1;
  v8[1] = a2;
  *&v3[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v3[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = 0;
  v3[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedRawDataEvent.__allocating_init(name:dictionary:requiresDiagnosticsConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___AARawDataEvent_name];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v9[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v9[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedRawDataEvent.init(name:dictionary:requiresDiagnosticsConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___AARawDataEvent_name];
  *v10 = a1;
  v10[1] = a2;
  *&v4[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v4[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v4[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedRawDataEvent.__allocating_init(name:dictionary:requiresDiagnosticsConsent:requiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___AARawDataEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v11[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v11[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v11[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawDataEvent.init(name:dictionary:requiresDiagnosticsConsent:requiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___AARawDataEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v5[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v5[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v5[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawDataEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRawDataEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B69D7C9C()
{
  v1 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B69D7D34(char a1)
{
  v3 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B69D7E2C()
{
  v1 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B69D7EC4(char a1)
{
  v3 = OBJC_IVAR___AADataEventTraits_unique;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B69D7FBC()
{
  v1 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B69D8054(char a1)
{
  v3 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id BridgedDataEventTraits.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedDataEventTraits.init()()
{
  v0[OBJC_IVAR___AADataEventTraits_onlyOnce] = 0;
  v0[OBJC_IVAR___AADataEventTraits_unique] = 0;
  v0[OBJC_IVAR___AADataEventTraits_discardWhenPresent] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedDataEventTraits();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_1B69D821C()
{
  v1 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = sub_1B69E37D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1B69E37D8((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v2[v4 + 32] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v5 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  if (*(v0 + v5) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B69E37D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B69E37D8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v2[v7 + 32] = 1;
  }

  v8 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  if (*(v0 + v8) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B69E37D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1B69E37D8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v2[v10 + 32] = 2;
  }

  return v2;
}

id BridgedDataEventTraits.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedDataEventTraits();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

id sub_1B69D86C8()
{
  v0 = type metadata accessor for BridgedTimestampJitter();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___AATimestampJitter_enabled] = 0;
  *&v1[OBJC_IVAR___AATimestampJitter_lowerBound] = 0xC082C00000000000;
  *&v1[OBJC_IVAR___AATimestampJitter_upperBound] = 0x4082C00000000000;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_1EDBC8A38 = result;
  return result;
}

id static BridgedTimestampJitter.default.getter()
{
  if (qword_1EDBC8A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8A38;

  return v1;
}

id BridgedTimestampJitter.with(enabled:)(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AATimestampJitter_lowerBound);
  v5 = *(v1 + OBJC_IVAR___AATimestampJitter_upperBound);
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR___AATimestampJitter_enabled] = a1;
  *&v6[OBJC_IVAR___AATimestampJitter_lowerBound] = v4;
  *&v6[OBJC_IVAR___AATimestampJitter_upperBound] = v5;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedTimestampJitter.with(lowerBound:)(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AATimestampJitter_enabled);
  v5 = *(v1 + OBJC_IVAR___AATimestampJitter_upperBound);
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR___AATimestampJitter_enabled] = v4;
  *&v6[OBJC_IVAR___AATimestampJitter_lowerBound] = a1;
  *&v6[OBJC_IVAR___AATimestampJitter_upperBound] = v5;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedTimestampJitter.with(upperBound:)(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AATimestampJitter_enabled);
  v5 = *(v1 + OBJC_IVAR___AATimestampJitter_lowerBound);
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR___AATimestampJitter_enabled] = v4;
  *&v6[OBJC_IVAR___AATimestampJitter_lowerBound] = v5;
  *&v6[OBJC_IVAR___AATimestampJitter_upperBound] = a1;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedTimestampJitter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedTimestampJitter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B69D8D5C(uint64_t a1, uint64_t a2)
{
  sub_1B6ABA1F0();
  sub_1B6AB9260();
  return sub_1B6ABA230();
}

uint64_t sub_1B69D8DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1B69D8E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B6ABA1F0();
  sub_1B6AB9260();
  return sub_1B6ABA230();
}

void *sub_1B69D8E6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1B69D8E84(uint64_t a1)
{
  v2 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1B69D8EC0(uint64_t a1)
{
  v2 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1B69D8F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

id JSON.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B69E03A4(a1, a2);
  sub_1B6993C94(a1, a2);
  return v6;
}

id JSON.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B69E03A4(a1, a2);
  sub_1B6993C94(a1, a2);
  return v4;
}

id sub_1B69D90E4(uint64_t a1, uint64_t a2)
{
  sub_1B69C1678(v2 + OBJC_IVAR___AAJSON_value, &v17);
  if (!*(&v18 + 1))
  {
    sub_1B6981634(&v17);
    goto LABEL_7;
  }

  sub_1B69881C8(0, &qword_1EDBCCC60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = type metadata accessor for JSON();
    v17 = 0u;
    v18 = 0u;
    v8 = objc_allocWithZone(v7);
    sub_1B69C1678(&v17, v8 + OBJC_IVAR___AAJSON_value);
    v16.receiver = v8;
    v16.super_class = v7;
    v9 = objc_msgSendSuper2(&v16, sel_init);
    goto LABEL_10;
  }

  if (*(v15 + 16) && (v5 = sub_1B6993940(a1, a2), (v6 & 1) != 0))
  {
    sub_1B698FE74(*(v15 + 56) + 32 * v5, &v17);
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  v10 = type metadata accessor for JSON();
  v11 = objc_allocWithZone(v10);
  sub_1B69C1678(&v17, v11 + OBJC_IVAR___AAJSON_value);
  v14.receiver = v11;
  v14.super_class = v10;
  v9 = objc_msgSendSuper2(&v14, sel_init);
LABEL_10:
  v12 = v9;
  sub_1B6981634(&v17);
  return v12;
}

id sub_1B69D92A8(unint64_t a1)
{
  sub_1B69C1678(v1 + OBJC_IVAR___AAJSON_value, &v16);
  if (!*(&v17 + 1))
  {
    sub_1B6981634(&v16);
    goto LABEL_7;
  }

  sub_1B6980954(0, &qword_1EDBC96D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v6 = type metadata accessor for JSON();
    v16 = 0u;
    v17 = 0u;
    v7 = objc_allocWithZone(v6);
    sub_1B69C1678(&v16, v7 + OBJC_IVAR___AAJSON_value);
    v15.receiver = v7;
    v15.super_class = v6;
    v5 = objc_msgSendSuper2(&v15, sel_init);
    goto LABEL_9;
  }

  if ((a1 & 0x8000000000000000) != 0 || *(v14 + 16) <= a1)
  {

    v8 = type metadata accessor for JSON();
    v16 = 0u;
    v17 = 0u;
    v9 = objc_allocWithZone(v8);
    sub_1B69C1678(&v16, v9 + OBJC_IVAR___AAJSON_value);
    v13.receiver = v9;
    v13.super_class = v8;
    v5 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    sub_1B698FE74(v14 + 32 * a1 + 32, &v16);

    v3 = type metadata accessor for JSON();
    v4 = objc_allocWithZone(v3);
    sub_1B69C1678(&v16, v4 + OBJC_IVAR___AAJSON_value);
    v12.receiver = v4;
    v12.super_class = v3;
    v5 = objc_msgSendSuper2(&v12, sel_init);
  }

LABEL_9:
  v10 = v5;
  sub_1B6981634(&v16);
  return v10;
}

BOOL sub_1B69D9488()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  v1 = v3[3] != 0;
  sub_1B6981634(v3);
  return v1;
}

uint64_t sub_1B69D96CC()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B6981634(v3);
    return 0;
  }
}

uint64_t sub_1B69D9764(uint64_t a1)
{
  sub_1B69C1678(v1 + OBJC_IVAR___AAJSON_value, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B6981634(v4);
    return 0;
  }
}

uint64_t sub_1B69D97F0()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B6981634(v3);
    return 0;
  }
}

uint64_t sub_1B69D9874()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1B6981634(v3);
    return 2;
  }
}

uint64_t sub_1B69D995C()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v9);
  if (!v9[3])
  {
    sub_1B6981634(v9);
    return 0;
  }

  sub_1B6980954(0, &qword_1EDBC96D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v7[0] + 16);
  if (v1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1B6AB9D80();
    v2 = v7[0] + 32;
    do
    {
      sub_1B698FE74(v2, v9);
      sub_1B698FE74(v9, v7);
      v3 = type metadata accessor for JSON();
      v4 = objc_allocWithZone(v3);
      sub_1B69C1678(v7, v4 + OBJC_IVAR___AAJSON_value);
      v6.receiver = v4;
      v6.super_class = v3;
      objc_msgSendSuper2(&v6, sel_init);
      sub_1B6981634(v7);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_1B6AB9D50();
      sub_1B6AB9D90();
      sub_1B6AB9DA0();
      sub_1B6AB9D60();
      v2 += 32;
      --v1;
    }

    while (v1);

    return v8;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1B69D9B74()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, &v46);
  if (!*(&v47[0] + 1))
  {
    sub_1B6981634(&v46);
    return 0;
  }

  sub_1B69881C8(0, &qword_1EDBCCC60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = 0;
  v3 = v43 + 64;
  v2 = *(v43 + 64);
  v40 = v43;
  v4 = 1 << *(v43 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;
  v8 = MEMORY[0x1E69E7CC8];
  if ((v5 & v2) == 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v1;
LABEL_16:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v40 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1B698FE74(*(v40 + 56) + 32 * v16, v42);
    *&v43 = v19;
    *(&v43 + 1) = v18;
    sub_1B69979CC(v42, &v44);

    v14 = v12;
LABEL_17:
    v46 = v43;
    v47[0] = v44;
    v47[1] = v45;
    v20 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {

      return v8;
    }

    v21 = v46;
    sub_1B69979CC(v47, &v43);
    v22 = type metadata accessor for JSON();
    v23 = objc_allocWithZone(v22);
    sub_1B69C1678(&v43, v23 + OBJC_IVAR___AAJSON_value);
    v41.receiver = v23;
    v41.super_class = v22;
    v24 = objc_msgSendSuper2(&v41, sel_init);
    sub_1B6981634(&v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = v8;
    v26 = sub_1B6993940(v21, v20);
    v29 = v8[2];
    v30 = (v27 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v27;
    if (v8[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v38 = v26;
      sub_1B69DDFC8(v26, v27, v28);
      v26 = v38;
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_7:
      v9 = v26;

      v8 = v43;
      v10 = *(v43 + 56);
      v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v24;

      v1 = v14;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1B69DAA04(v32, isUniquelyReferenced_nonNull_native, v28);
      v26 = sub_1B6993940(v21, v20);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_37;
      }

LABEL_23:
      if (v33)
      {
        goto LABEL_7;
      }

LABEL_24:
      v8 = v43;
      *(v43 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v35 = (v8[6] + 16 * v26);
      *v35 = v21;
      v35[1] = v20;
      *(v8[7] + 8 * v26) = v24;
      v36 = v8[2];
      v31 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v31)
      {
        goto LABEL_36;
      }

      v8[2] = v37;
      v1 = v14;
      if (!v6)
      {
LABEL_9:
        if (v7 <= v1 + 1)
        {
          v13 = v1 + 1;
        }

        else
        {
          v13 = v7;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if (v12 >= v7)
          {
            v6 = 0;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            goto LABEL_17;
          }

          v6 = *(v3 + 8 * v12);
          ++v1;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1B6ABA190();
  __break(1u);
  return result;
}

id sub_1B69D9EFC()
{
  v1 = OBJC_IVAR___AAJSON_value;
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }
  }

  else
  {
    sub_1B6981634(v4);
  }

  sub_1B69C1678(v0 + v1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }
  }

  else
  {
    sub_1B6981634(v4);
  }

  sub_1B69C1678(v0 + v1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    }
  }

  else
  {
    sub_1B6981634(v4);
  }

  return 0;
}

void *sub_1B69DA064(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!sub_1B69D9B74() && !sub_1B69D995C())
  {
    sub_1B69E04CC();
    swift_allocError();
    *v8 = 0;
    goto LABEL_11;
  }

  sub_1B69C1678(v1 + OBJC_IVAR___AAJSON_value, &v10);
  if (v11)
  {
    sub_1B69979CC(&v10, &v12);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v13 = sub_1B69E0520();
    *&v12 = v3;
    if (v11)
    {
      sub_1B6981634(&v10);
    }
  }

  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v12, v13);
  v5 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  *&v12 = 0;
  v6 = [v4 dataWithJSONObject:v5 options:a1 error:&v12];
  swift_unknownObjectRelease();
  v7 = v12;
  if (!v6)
  {
    v1 = v7;
    sub_1B6AB8A70();

LABEL_11:
    swift_willThrow();
    return v1;
  }

  v1 = sub_1B6AB8C80();

  return v1;
}

id JSON.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSON.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSON();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t JSON.payload()()
{
  if (sub_1B69D9B74())
  {

    sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v4);
    if (v5)
    {
      sub_1B69881C8(0, &qword_1EDBCCC60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
      if (swift_dynamicCast())
      {
        return v3;
      }
    }

    else
    {
      sub_1B6981634(v4);
    }
  }

  sub_1B69E04CC();
  swift_allocError();
  *v2 = 0;
  return swift_willThrow();
}

uint64_t JSON.description.getter()
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, &v16);
  if (v17)
  {
    sub_1B69979CC(&v16, &v18);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v19 = sub_1B69E0520();
    *&v18 = v2;
    if (v17)
    {
      sub_1B6981634(&v16);
    }
  }

  v3 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v18, v19);
  v4 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  *&v18 = 0;
  v5 = [v3 dataWithJSONObject:v4 options:4 error:&v18];
  swift_unknownObjectRelease();
  v6 = v18;
  if (v5)
  {
    v7 = sub_1B6AB8C80();
    v9 = v8;

    sub_1B6AB9310();
    v10 = sub_1B6AB92F0();
    v12 = v11;
    sub_1B6993C94(v7, v9);
    if (v12)
    {
      return v10;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else
  {
    v14 = v6;
    v15 = sub_1B6AB8A70();

    swift_willThrow();
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    *&v16 = v15;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();

    return v18;
  }
}

unint64_t sub_1B69DA770(uint64_t a1)
{
  sub_1B6ABA1F0();
  type metadata accessor for CFString(0);
  sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString, &unk_1B6ABD088);
  sub_1B6AB8F50();
  v2 = sub_1B6ABA230();

  return sub_1B69DD504(a1, v2);
}

unint64_t sub_1B69DA824(uint64_t a1, unint64_t a2)
{
  sub_1B6ABA1F0();
  switch(a2)
  {
    case 0uLL:
      v4 = 0;
      goto LABEL_7;
    case 1uLL:
      v4 = 1;
      goto LABEL_7;
    case 2uLL:
      v4 = 2;
LABEL_7:
      MEMORY[0x1B8C98A40](v4);
      goto LABEL_9;
  }

  MEMORY[0x1B8C98A40](3);
  sub_1B6AB9380();
LABEL_9:
  v5 = sub_1B6ABA230();

  return sub_1B69DD610(a1, a2, v5);
}

unint64_t sub_1B69DA8D8(uint64_t a1)
{
  sub_1B6AB8E40();
  sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1B6AB9250();

  return sub_1B69DD80C(a1, v2);
}

unint64_t sub_1B69DA970(uint64_t a1, uint64_t a2)
{
  sub_1B6AB92E0();
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  v3 = sub_1B6ABA230();

  return sub_1B69DD9CC(a1, v3);
}

uint64_t sub_1B69DAA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  sub_1B69E0DB0(0, &qword_1EDBCAFD8, a3, type metadata accessor for JSON);
  v36 = v5;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1B69DACB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69C11A0(0, &qword_1EDBCB630, sub_1B69E0E68, &type metadata for UploadBatchQueueKey, MEMORY[0x1E69E6158]);
  v38 = v4;
  result = sub_1B6AB9E80();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v42 = *(v23 + 16);
      v26 = *(v23 + 32);
      v27 = (v22 + 16 * v21);
      v28 = v27[1];
      v40 = *v27;
      v41 = *(v23 + 24);
      if ((v38 & 1) == 0)
      {
        sub_1B69E0EBC(v24, v25, v42, v41, v26);
      }

      sub_1B6ABA1F0();
      if (v26)
      {
        MEMORY[0x1B8C98A40](1);
        sub_1B6AB9380();
      }

      else
      {
        MEMORY[0x1B8C98A40](0);
      }

      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v42;
      *(v16 + 24) = v41;
      *(v16 + 32) = v26;
      v17 = (*(v7 + 56) + 16 * v15);
      v12 = v39;
      *v17 = v40;
      v17[1] = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1B69DB000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69E0B1C(0);
  result = sub_1B6AB9E80();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      if (v4)
      {
        v24 = v23[1];
        v34 = *v23;
        v35 = v24;
      }

      else
      {
        sub_1B69C1678(v23, &v34);
        v25 = v22;
      }

      sub_1B6ABA1F0();
      type metadata accessor for CFString(0);
      sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString, &unk_1B6ABD088);
      sub_1B6AB8F50();
      result = sub_1B6ABA230();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = (*(v7 + 56) + 32 * v15);
      v17 = v35;
      *v16 = v34;
      v16[1] = v17;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}