uint64_t sub_254FD3CD0(uint64_t a1, unsigned int *a2)
{
  result = 1;
  if (a1 && a2)
  {
    a2[10] = 0;
    v5 = sub_254FF1EE4();
    v6 = *a2;
    if ((v6 & 0x80000000) != 0)
    {
      goto LABEL_80;
    }

    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = 12 * v6;
    while (v10 != v9)
    {
      if (v9 == 0x5FFFFFFF4)
      {
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
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        sub_254FF2384();
        __break(1u);
        JUMPOUT(0x254FD4214);
      }

      v11 = *(a2 + 1);
      if (!v11)
      {
        goto LABEL_81;
      }

      v12 = v11 + v9;
      v13 = *(v11 + v9);
      v14 = *(v11 + v9 + 4);
      v15 = *(v12 + 5);
      switch(v13)
      {
        case 0:
          if (v14 != 2 || v15 == 0)
          {
            goto LABEL_61;
          }

          a2[10] |= 4u;
          swift_isUniquelyReferenced_nonNull_native();
          v17 = sub_254FC4CCC(4);
          if (__OFADD__(v7[2], (v18 & 1) == 0))
          {
            goto LABEL_72;
          }

          v19 = v17;
          v20 = v18;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_17;
          }

          v21 = sub_254FC4CCC(4);
          if ((v20 & 1) != (v22 & 1))
          {
            goto LABEL_83;
          }

          v19 = v21;
LABEL_17:
          if (v20)
          {
            goto LABEL_58;
          }

          v7[(v19 >> 6) + 8] |= 1 << v19;
          *(v7[6] + 4 * v19) = 4;
          *(v7[7] + 4 * v19) = v8;
          v23 = v7[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (!v24)
          {
            goto LABEL_60;
          }

          goto LABEL_77;
        case 2:
          if (v14 != 2 || v15 == 0)
          {
            goto LABEL_61;
          }

          a2[10] |= 8u;
          swift_isUniquelyReferenced_nonNull_native();
          v34 = sub_254FC4CCC(8);
          if (__OFADD__(v7[2], (v35 & 1) == 0))
          {
            goto LABEL_73;
          }

          v19 = v34;
          v36 = v35;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_43;
          }

          v37 = sub_254FC4CCC(8);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_83;
          }

          v19 = v37;
LABEL_43:
          if (v36)
          {
            goto LABEL_58;
          }

          v7[(v19 >> 6) + 8] |= 1 << v19;
          *(v7[6] + 4 * v19) = 8;
          *(v7[7] + 4 * v19) = v8;
          v39 = v7[2];
          v24 = __OFADD__(v39, 1);
          v25 = v39 + 1;
          if (!v24)
          {
            goto LABEL_60;
          }

          goto LABEL_76;
        case 4:
          if (!v15)
          {
            goto LABEL_61;
          }

          if (v14 != 32 && v14 != 4)
          {
            goto LABEL_61;
          }

          a2[10] |= 1u;
          swift_isUniquelyReferenced_nonNull_native();
          v27 = sub_254FC4CCC(1);
          if (__OFADD__(v7[2], (v28 & 1) == 0))
          {
            goto LABEL_75;
          }

          v19 = v27;
          v29 = v28;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_31;
          }

          v30 = sub_254FC4CCC(1);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_83;
          }

          v19 = v30;
LABEL_31:
          if (v29)
          {
            goto LABEL_58;
          }

          v7[(v19 >> 6) + 8] |= 1 << v19;
          *(v7[6] + 4 * v19) = 1;
          *(v7[7] + 4 * v19) = v8;
          v32 = v7[2];
          v24 = __OFADD__(v32, 1);
          v25 = v32 + 1;
          if (!v24)
          {
            goto LABEL_60;
          }

          goto LABEL_78;
        case 5:
          if (!v15)
          {
            goto LABEL_61;
          }

          if (v14 != 16 && v14 != 8)
          {
            goto LABEL_61;
          }

          a2[10] |= 2u;
          swift_isUniquelyReferenced_nonNull_native();
          v41 = sub_254FC4CCC(2);
          if (__OFADD__(v7[2], (v42 & 1) == 0))
          {
            goto LABEL_74;
          }

          v19 = v41;
          v43 = v42;
          sub_254FC0048(&qword_27F76CB30, qword_254FF3AC8);
          if ((sub_254FF22A4() & 1) == 0)
          {
            goto LABEL_57;
          }

          v44 = sub_254FC4CCC(2);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_83;
          }

          v19 = v44;
LABEL_57:
          if (v43)
          {
LABEL_58:
            *(v7[7] + 4 * v19) = v8;
          }

          else
          {
            v7[(v19 >> 6) + 8] |= 1 << v19;
            *(v7[6] + 4 * v19) = 2;
            *(v7[7] + 4 * v19) = v8;
            v46 = v7[2];
            v24 = __OFADD__(v46, 1);
            v25 = v46 + 1;
            if (v24)
            {
              goto LABEL_79;
            }

LABEL_60:
            v7[2] = v25;
          }

LABEL_61:
          v9 += 12;
          ++v8;
          break;
        default:
          goto LABEL_61;
      }
    }

    v47 = 0;
    v48 = v7[2];
    v49 = 1;
    do
    {
      if (v48)
      {
        v50 = sub_254FC4CCC(*(&unk_286730878 + v47 + 32));
        if (v51)
        {
          v52 = *(a2 + 4);
          if (!v52)
          {
            goto LABEL_82;
          }

          *(v52 + 8 * *(v7[7] + 4 * v50)) = v49;
          v24 = __OFADD__(v49++, 1);
          if (v24)
          {
            goto LABEL_71;
          }
        }
      }

      v47 += 4;
    }

    while (v47 != 16);
    *(a2 + 8) = 1000000.0 / v49;

    return 0;
  }

  return result;
}

uint64_t sub_254FD4230(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t sub_254FD4260(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  result = 1;
  if (a1 && a2)
  {
    result = *(*(type metadata accessor for SQLiteVTabCursor(0) - 8) + 64);
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v8 = sqlite3_malloc(result);
      if (!v8)
      {
        return 1;
      }

      v9 = v8;
      v10 = dispatch_semaphore_create(0);
      v11 = sub_254FF2114();
      sub_254FC4BB8(v6, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v9;
      v12[5] = a2;
      v12[6] = v9;
      v12[7] = v10;
      v13 = v10;
      sub_254FD45D0(0, 0, v6, &unk_254FF3AA8, v12);

      sub_254FF2184();

      return 0;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254FD43D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for SQLiteVTabCursor(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254FD4494, 0, 0);
}

uint64_t sub_254FD4494()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v2[7];
  v6 = sub_254FF1614();
  sub_254FC4BB8(v1 + v5, 1, 1, v6);
  sub_254FC4BB8(v1 + v2[8], 1, 1, v6);
  v7 = MEMORY[0x277D84F90];
  *v1 = 0;
  v1[1] = v7;
  v1[2] = 0;
  v8 = (v1 + v2[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  swift_arrayInitWithCopy();
  *v4 = v3;
  sub_254FF2194();
  sub_254FD688C(v1);

  sub_254FD3410();

  return v10();
}

uint64_t sub_254FD45D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_254FD6A34(a3, v24 - v10, &qword_27F76CAA8, &qword_254FF3880);
  v12 = sub_254FF2114();
  v13 = sub_254FC5364(v11, 1, v12);

  if (v13 == 1)
  {
    sub_254FC8740(v11, &qword_27F76CAA8, &qword_254FF3880);
  }

  else
  {
    sub_254FF2104();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_254FF20F4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_254FF1FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_254FC8740(a3, &qword_27F76CAA8, &qword_254FF3880);

      return v22;
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

  sub_254FC8740(a3, &qword_27F76CAA8, &qword_254FF3880);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_254FD48B8(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  sub_254FD688C(a1);
  sqlite3_free(a1);
  return 0;
}

uint64_t sub_254FD48FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, sqlite3_value **a5)
{
  v8 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  if (!a1 || !a5)
  {
    return 1;
  }

  v14 = swift_allocBox();
  v16 = v15;
  v17 = sub_254FF1614();
  sub_254FC4BB8(v16, 1, 1, v17);
  v18 = swift_allocBox();
  v20 = v19;
  result = sub_254FC4BB8(v19, 1, 1, v17);
  if (!*a1)
  {
    __break(1u);
    return result;
  }

  v22 = *(*a1 + 32);
  v45 = v14;
  v46 = v18;
  if ((a2 & 1) == 0)
  {
    v23 = v22;
    if ((a2 & 2) == 0)
    {
      if ((a2 & 4) == 0)
      {
        v24 = v22;
        v25 = 0;
        v26 = 0;
        v44 = 0;
        v27 = 0;
        v28 = 0;
        if ((a2 & 8) == 0)
        {
          goto LABEL_28;
        }

LABEL_25:
        if (sqlite3_value_text(a5[v25]))
        {
          v27 = sub_254FF1FE4();
          v28 = v35;
          goto LABEL_28;
        }

LABEL_27:
        v27 = 0;
        v28 = 0;
        goto LABEL_28;
      }

      v33 = v22;
      v25 = 0;
      goto LABEL_19;
    }

    v32 = v22;
    v31 = 0;
    goto LABEL_15;
  }

  v29 = *a5;
  v23 = v22;
  v30 = v22;
  sqlite3_value_double(v29);
  sub_254FF1564();
  v31 = 1;
  sub_254FC4BB8(v13, 0, 1, v17);
  sub_254FD65E0(v13, v16);
  if ((a2 & 2) != 0)
  {
LABEL_15:
    sqlite3_value_double(a5[v31]);
    sub_254FF1564();
    sub_254FC4BB8(v13, 0, 1, v17);
    sub_254FD65E0(v13, v20);
    v25 = v31 + 1;
    if ((a2 & 4) == 0)
    {
LABEL_22:
      v26 = 0;
      v44 = 0;
      if ((a2 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_19:
    if (sqlite3_value_text(a5[v25]))
    {
      v26 = sub_254FF1FE4();
      v44 = v34;
      ++v25;
      if ((a2 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if ((a2 & 4) != 0)
  {
    v25 = 1;
    goto LABEL_19;
  }

  v26 = 0;
  if ((a2 & 8) != 0)
  {
    v25 = 1;
    v44 = 0;
    goto LABEL_25;
  }

  v27 = 0;
  v28 = 0;
  v44 = 0;
LABEL_28:
  v36 = dispatch_semaphore_create(0);
  v37 = sub_254FF2114();
  sub_254FC4BB8(v10, 1, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v23;
  v39 = v46;
  v38[5] = v45;
  v38[6] = v39;
  v38[7] = v27;
  v38[8] = v28;
  v40 = v44;
  v38[9] = v26;
  v38[10] = v40;
  v38[11] = a1;
  v38[12] = v36;
  v41 = v23;

  v42 = v36;
  sub_254FD6FFC(0, 0, v10, &unk_254FF3A98, v38);

  sub_254FF2184();

  return 0;
}

uint64_t sub_254FD4C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v12;
  *(v8 + 112) = v13;
  *(v8 + 88) = v11;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 64) = a4;
  sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_projectBox();
  *(v8 + 144) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_254FD4D60, 0, 0);
}

uint64_t sub_254FD4D60()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  swift_beginAccess();
  sub_254FD6A34(v1, v3, &qword_27F76CA00, &qword_254FF3790);
  swift_beginAccess();
  sub_254FD6A34(v2, v4, &qword_27F76CA00, &qword_254FF3790);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_254FD4E78;

  return sub_254FCB1A0();
}

uint64_t sub_254FD4E78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_254FD3074();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 160) = v1;

  v7 = *(v4 + 128);
  v8 = *(v4 + 120);
  if (v1)
  {
    sub_254FD6FE4(v8);
    sub_254FD6FE4(v7);
    v9 = sub_254FD5088;
  }

  else
  {
    *(v5 + 168) = a1;
    sub_254FD6FE4(v8);
    sub_254FD6FE4(v7);
    v9 = sub_254FD4FFC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_254FD4FFC()
{
  v1 = *(v0 + 104);
  *(v1 + 8) = *(v0 + 168);
  *(v1 + 16) = 0;

  sub_254FF2194();

  sub_254FD3410();

  return v2();
}

uint64_t sub_254FD5088()
{
  sub_254FD3208();

  sub_254FD3410();

  return v0();
}

uint64_t sub_254FD50F0(uint64_t result)
{
  if (!result)
  {
    return 1;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    *(v1 + 16) = v4;
  }

  return result;
}

BOOL sub_254FD5120(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 >> 62)
  {
    v3 = sub_254FF22E4();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == v3;
}

uint64_t sub_254FD5180(void *a1, sqlite3_context *a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  sub_254FD51D0(a1, a3, a2, &v4);
  return v4;
}

void sub_254FD51D0(void *a1@<X0>, int a2@<W1>, sqlite3_context *a3@<X2>, int *a4@<X8>)
{
  v9 = a1[1];
  v8 = a1[2];
  sub_254FDA638();
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x259C31960](v8, v9);
  }

  else
  {
    v10 = *(v9 + 8 * v8 + 32);
  }

  v11 = v10;
  if (!*a1)
  {
    __break(1u);
    JUMPOUT(0x254FD5848);
  }

  v12 = *(*a1 + 24);
  switch(a2)
  {
    case 0:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId;
      goto LABEL_11;
    case 1:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName;
      goto LABEL_11;
    case 2:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID;
      goto LABEL_11;
    case 3:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail;
      goto LABEL_11;
    case 4:
      v14 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
      goto LABEL_14;
    case 5:
      v14 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
LABEL_14:
      v19 = *v14;
      swift_beginAccess();
      v16 = *&v11[v19];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = &qword_27F76CB18;
      v18 = 0x277CBEAA8;
      goto LABEL_20;
    case 6:
      v20 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
      goto LABEL_18;
    case 7:
      v13 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier;
LABEL_11:
      v15 = *v13;
      swift_beginAccess();
      v16 = *&v11[v15];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = &qword_27F76CB20;
      v18 = 0x277CCACA8;
      goto LABEL_20;
    case 8:
      v20 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication;
LABEL_18:
      v21 = *v20;
      swift_beginAccess();
      v16 = *&v11[v21];
      if (!v16)
      {
        goto LABEL_22;
      }

      v17 = &unk_27F76CB28;
      v18 = 0x277CCABB0;
LABEL_20:
      v22 = sub_254FD65A0(0, v17, v18);
      v23 = v16;
      break;
    default:
      v16 = 0;
LABEL_22:
      v22 = 0;
      break;
  }

  v41[0] = v16;
  v41[1] = 0;
  v41[2] = 0;
  v41[3] = v22;
  v24 = v12;
  v25 = [v24 columns];
  sub_254FD65A0(0, &qword_27F76CB08, 0x277CF1A80);
  v26 = sub_254FF2074();

  sub_254FDA638();
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x259C31960](a2, v26);
  }

  else
  {
    v27 = *(v26 + 8 * a2 + 32);
  }

  v28 = v27;

  v29 = [v28 dataType];

  switch(v29)
  {
    case 0uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      sqlite3_result_int64(a3, v38);
      goto LABEL_48;
    case 1uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      sqlite3_result_double(a3, *&v38);
      goto LABEL_48;
    case 2uLL:
    case 5uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      sub_254FD65A0(0, &qword_27F76CB20, 0x277CCACA8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      v30 = v38;
      v31 = [v38 UTF8String];
      if (qword_27F76C798 != -1)
      {
        swift_once();
      }

      sqlite3_result_text(a3, v31, -1, qword_27F76EC70);
      goto LABEL_37;
    case 3uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
        goto LABEL_49;
      }

      sub_254FD65A0(0, &qword_27F76CB18, 0x277CBEAA8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_50;
      }

      [v38 timeIntervalSinceReferenceDate];
      sqlite3_result_double(a3, v36);

      v11 = v38;
      goto LABEL_48;
    case 4uLL:
    case 6uLL:
      sub_254FD6A34(v41, v39, &qword_27F76C870, &qword_254FF3110);
      if (!v40)
      {
LABEL_49:
        sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);

        sub_254FC8740(v39, &qword_27F76C870, &qword_254FF3110);
LABEL_51:
        v35 = 1;
        goto LABEL_52;
      }

      sub_254FD65A0(0, &qword_27F76CB10, 0x277CBEA90);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_50:
        sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);

        goto LABEL_51;
      }

      v30 = v38;
      v32 = [v38 bytes];
      v33 = [v38 length];
      if (v33 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v34 = v33;
        if (v33 <= 0x7FFFFFFF)
        {
          if (qword_27F76C798 == -1)
          {
            goto LABEL_36;
          }

          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_57:
      v37 = v34;
      swift_once();
      v34 = v37;
LABEL_36:
      sqlite3_result_blob(a3, v32, v34, qword_27F76EC70);
LABEL_37:

LABEL_48:
      sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);
      v35 = 0;
LABEL_52:
      *a4 = v35;
      return;
    default:
      sub_254FC8740(v41, &qword_27F76C870, &qword_254FF3110);

      v35 = 17;
      goto LABEL_52;
  }
}

uint64_t sub_254FD588C(uint64_t a1, void *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 16);
    }
  }

  return result;
}

id static DeviceActivityIPSQLConnector.schema.getter()
{
  sub_254FC0048(&qword_27F76CAF8, &qword_254FF3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254FF3910;
  v1 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  v2 = sub_254FD6FBC();
  result = sub_254FD6038(v2 & 0xFFFFFFFFFFFFLL | 0x6449000000000000, 0xE800000000000000, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v0 + 32) = result;
  v4 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  v5 = sub_254FD6FBC();
  result = sub_254FD6038(v5 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, 2);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v0 + 40) = result;
  v6 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x44495344746C61, 0xE700000000000000, 2);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 48) = result;
  v7 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x6D4564756F6C6369, 0xEB000000006C6961, 2);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 56) = result;
  v8 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x6D69547472617473, 0xE900000000000065, 3);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v0 + 64) = result;
  v9 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x656D6954646E65, 0xE700000000000000, 3);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 72) = result;
  v10 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x6E6F697461727564, 0xE800000000000000, 1);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v0 + 80) = result;
  v11 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0xD000000000000010, 0x8000000254FF4F90, 2);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v0 + 88) = result;
  v12 = objc_allocWithZone(MEMORY[0x277CF1A80]);
  result = sub_254FD6038(0x63696C7070417369, 0xED00006E6F697461, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v0 + 96) = result;
  v13 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
  result = sub_254FD60A4(0xD000000000000012, 0x8000000254FF5AF0, v0);
  if (!result)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t static DeviceActivityIPSQLConnector.vtabDestroyBlock.setter(void (__cdecl *a1)(void *))
{
  result = swift_beginAccess();
  off_281D50AC0 = a1;
  return result;
}

uint64_t sub_254FD5C88@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = off_281D50AC0;
  return result;
}

uint64_t sub_254FD5CD4(void (__cdecl **a1)(void *))
{
  v1 = *a1;
  result = swift_beginAccess();
  off_281D50AC0 = v1;
  return result;
}

double sub_254FD5D3C()
{
  v0 = swift_slowAlloc();
  *v0 = 0;
  *(v0 + 8) = sub_254FD3CCC;
  *(v0 + 16) = sub_254FD3CCC;
  *(v0 + 24) = sub_254FD422C;
  *(v0 + 32) = sub_254FD425C;
  *(v0 + 40) = sub_254FD425C;
  *(v0 + 48) = sub_254FD48B4;
  *(v0 + 56) = sub_254FD48F8;
  *(v0 + 64) = sub_254FD50EC;
  *(v0 + 72) = sub_254FD511C;
  *(v0 + 80) = sub_254FD517C;
  *(v0 + 88) = sub_254FD5888;
  *(v0 + 96) = sub_254FD58AC;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  return result;
}

uint64_t static DeviceActivityIPSQLConnector.vtabModule.getter()
{
  if (qword_27F76C7A0 != -1)
  {
    swift_once();
  }

  return qword_27F76CAF0;
}

void *sub_254FD5E84()
{
  v0 = sqlite3_malloc(16);
  if (v0)
  {
    v1 = [objc_allocWithZone(type metadata accessor for DeviceActivityHelpers(0)) init];
    if (v1)
    {
      v2 = v1;
      v4 = static DeviceActivityIPSQLConnector.schema.getter();
      swift_arrayInitWithCopy();
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

uint64_t DeviceActivityConnectorError.hashValue.getter()
{
  v1 = *v0;
  sub_254FF2404();
  MEMORY[0x259C31B10](v1);
  return sub_254FF2434();
}

id sub_254FD6038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254FF1F24();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 dataType:a3];

  return v6;
}

id sub_254FD60A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = sub_254FF1F24();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_254FD65A0(0, &qword_27F76CB08, 0x277CF1A80);
  v6 = sub_254FF2064();

LABEL_6:
  v7 = [v3 initWithTableName:v5 columns:v6];

  return v7;
}

unint64_t sub_254FD6154()
{
  result = qword_27F76CB00;
  if (!qword_27F76CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CB00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceActivityConnectorError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254FD62F0);
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

__n128 sub_254FD6328(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_254FD6334(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_254FD6374(uint64_t result, int a2, int a3)
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

uint64_t sub_254FD63C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_254FD64B8;

  return v6(a1);
}

uint64_t sub_254FD64B8()
{
  sub_254FD3208();
  v1 = *v0;
  sub_254FD3074();
  *v2 = v1;

  sub_254FD3410();

  return v3();
}

uint64_t sub_254FD65A0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_254FD65E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FD6650()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_254FD66B8(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = swift_task_alloc();
  v5 = sub_254FD6FAC(v4);
  *v5 = v6;
  v5[1] = sub_254FD67A8;
  sub_254FD6FD0();

  return sub_254FD4C78(v7, v8, v9, v10, v11, v12, v2, v3);
}

uint64_t sub_254FD67A8()
{
  sub_254FD3208();
  v1 = *v0;
  sub_254FD3074();
  *v2 = v1;

  sub_254FD3410();

  return v3();
}

uint64_t sub_254FD688C(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteVTabCursor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SQLiteVTabCursor(uint64_t a1)
{
  result = qword_27F76CB40;
  if (!qword_27F76CB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254FD6934()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_254FD6974(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = swift_task_alloc();
  v4 = sub_254FD6FAC(v3);
  *v4 = v5;
  v4[1] = sub_254FD67A8;
  sub_254FD6FD0();

  return sub_254FD43D0(v6, v7, v8, v9, v10, v11, v2);
}

uint64_t sub_254FD6A34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_254FC0048(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_254FD6A9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_254FD6AD4()
{
  v0 = swift_task_alloc();
  v1 = sub_254FD6FAC(v0);
  *v1 = v2;
  v3 = sub_254FD33F0(v1);

  return v4(v3);
}

unint64_t sub_254FD6B6C()
{
  result = qword_27F76CB38;
  if (!qword_27F76CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CB38);
  }

  return result;
}

uint64_t sub_254FD6BF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_254FD6C30(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_254FD6CA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = a1 + *(a3 + 28);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FD6D48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v8 = v5 + *(a4 + 28);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FD6DD4(uint64_t a1)
{
  type metadata accessor for sqlite3_vtab_cursor(319);
  if (v1 <= 0x3F)
  {
    sub_254FD6EF0(319, &qword_27F76CB50, type metadata accessor for ActivitySegment, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_254FD6EF0(319, &qword_27F76CB58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_254FD6F54();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254FD6EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_254FD6F54()
{
  if (!qword_27F76CB60)
  {
    v0 = sub_254FF21A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F76CB60);
    }
  }
}

uint64_t sub_254FD6FE4(uint64_t a1)
{

  return sub_254FC8740(a1, v1, v2);
}

uint64_t sub_254FD6FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  sub_254FD32E4(v8);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_254FDA578(a3, v22 - v10, &qword_27F76CAA8, &qword_254FF3880);
  v12 = sub_254FF2114();
  v13 = sub_254FC5364(v11, 1, v12);

  if (v13 == 1)
  {
    sub_254FC538C(v11, &qword_27F76CAA8, &qword_254FF3880);
  }

  else
  {
    sub_254FF2104();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_254FF20F4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_254FF1FB4() + 32;

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
      v20 = sub_254FDA714();

      sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);

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

  sub_254FC538C(a3, &qword_27F76CAA8, &qword_254FF3880);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return sub_254FDA714();
}

uint64_t DeviceActivityVirtualTable.Module.moduleName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeviceActivityVirtualTable.Module.moduleType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  sub_254FF1DF4();
  sub_254FC5864();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t DeviceActivityVirtualTable.Module.createTable(using:databaseName:tableName:args:)()
{
  type metadata accessor for DeviceActivityVirtualTable.Table(0);
  v0 = swift_allocObject();

  sub_254FD7718(v1, 0xD000000000000012, 0x8000000254FF5AF0);
  return v0;
}

uint64_t sub_254FD73C4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = sub_254FC4A10(a2, v7);
  MEMORY[0x28223BE20](v9);
  sub_254FC7780();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(a1, v12, v3, v7, v8);
  sub_254FC49C4(a2);
  return v14;
}

uint64_t DeviceActivityVirtualTable.Module.deinit()
{

  v1 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  sub_254FF1DF4();
  sub_254FC5864();
  (*(v2 + 8))(v0 + v1);
  swift_unownedRelease();
  sub_254FC49C4((v0 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource));
  return v0;
}

uint64_t sub_254FD75A4@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceActivityVirtualTable.Module.createTable(using:databaseName:tableName:args:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DeviceActivityVirtualTable.Table.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t DeviceActivityVirtualTable.Table.createSQL.getter()
{
  v1 = sub_254FF18B4();
  sub_254FC583C();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_254FC7780();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable5Table_tableSchema, v1);
  v8 = sub_254FF1884();
  (*(v3 + 8))(v7, v1);
  return v8;
}

void sub_254FD7718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254FDA734();
  v5 = v4;
  v7 = v6;
  v195 = v6;
  v9 = v8;
  v10 = sub_254FC0048(&qword_27F76CB98, &qword_254FF3D60);
  sub_254FD32E4(v10);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v11);
  v12 = sub_254FC0048(&qword_27F76CBA0, &qword_254FF3D68);
  sub_254FD32E4(v12);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v13);
  v212 = v190 - v14;
  v15 = sub_254FC0048(&qword_27F76CBA8, &qword_254FF3D70);
  sub_254FD32E4(v15);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v16);
  v18 = v190 - v17;
  v19 = sub_254FC0048(&qword_27F76CBB0, &qword_254FF3D78);
  sub_254FD32E4(v19);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v20);
  v22 = v190 - v21;
  v206 = sub_254FF1864();
  v210 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  sub_254FC7780();
  v25 = v24 - v23;
  v211 = v24 - v23;
  v205 = sub_254FF18B4();
  sub_254FC583C();
  v198 = v26;
  MEMORY[0x28223BE20](v27);
  sub_254FC7780();
  v196 = v29 - v28;
  v197 = v3;
  *(v3 + 16) = xmmword_254FF3B30;
  *(v3 + 32) = v9;
  *(v3 + 40) = v7;
  v193 = v9;
  v201 = v5;
  *(v3 + 48) = v5;
  sub_254FC0048(&qword_27F76CBB8, &qword_254FF3D80);
  v30 = *(sub_254FF18E4() - 8);
  v209 = *(v30 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  v194 = v32;
  *(v32 + 16) = xmmword_254FF3B40;
  v204 = v32 + v31;
  v200 = *MEMORY[0x277CF1848];
  v33 = v210 + 104;
  v202 = *(v210 + 104);
  v202(v25);
  v210 = v33;
  v207 = sub_254FF18F4();
  v34 = v22;
  sub_254FD3690();
  sub_254FC4BB8(v35, v36, v37, v38);
  v208 = sub_254FF1874();
  v39 = v18;
  sub_254FD3690();
  sub_254FC4BB8(v40, v41, v42, v43);
  sub_254FD3690();
  v44 = v205;
  sub_254FC4BB8(v45, v46, v47, v205);
  v48 = sub_254FF1854();
  sub_254FDA6E4();
  sub_254FD3690();
  v203 = v48;
  sub_254FC4BB8(v49, v50, v51, v48);
  swift_unownedRetain();

  sub_254FDA6A8();
  v52 = v204;
  sub_254FDA64C();
  v53 = v211;
  v199 = v34;
  sub_254FF18C4();
  v54 = v53;
  v55 = v200;
  v56 = v202;
  (v202)(v54, v200, v206);
  v57 = sub_254FDA63C();
  v58 = v207;
  sub_254FC4BB8(v57, v59, v60, v207);
  sub_254FD3690();
  v61 = v208;
  sub_254FC4BB8(v62, v63, v64, v208);
  v65 = sub_254FDA63C();
  sub_254FC4BB8(v65, v66, v67, v44);
  sub_254FD3690();
  sub_254FC4BB8(v68, v69, v70, v48);
  sub_254FDA6A8();
  v71 = v209;
  v72 = v52;
  sub_254FDA64C();
  v73 = v211;
  sub_254FF18C4();
  sub_254FDA6F0(v72 + 2 * v71);
  v74 = v73;
  v75 = v55;
  v76 = v206;
  v56(v74, v55, v206);
  sub_254FD3690();
  sub_254FC4BB8(v77, v78, v79, v58);
  v80 = v39;
  sub_254FD3690();
  sub_254FC4BB8(v81, v82, v83, v61);
  sub_254FD3690();
  v84 = v205;
  sub_254FC4BB8(v85, v86, v87, v205);
  sub_254FDA6E4();
  sub_254FD3690();
  v88 = v203;
  sub_254FC4BB8(v89, v90, v91, v203);
  sub_254FDA6A8();
  sub_254FDA6D8();
  sub_254FDA64C();
  v92 = v211;
  v190[1] = v80;
  sub_254FF18C4();
  v93 = v209;
  sub_254FDA6F0(3 * v209);
  v94 = v75;
  v95 = v202;
  (v202)(v92, v94, v76);
  v96 = sub_254FDA63C();
  sub_254FC4BB8(v96, v97, v98, v207);
  sub_254FD3690();
  v99 = v208;
  sub_254FC4BB8(v100, v101, v102, v208);
  sub_254FD3690();
  sub_254FC4BB8(v103, v104, v105, v84);
  sub_254FD3690();
  sub_254FC4BB8(v106, v107, v108, v88);
  sub_254FDA6A8();
  v109 = v204;
  sub_254FDA6D8();
  sub_254FDA64C();
  v110 = v211;
  sub_254FF18C4();
  v191 = v109 + 4 * v93;
  v192 = *MEMORY[0x277CF1838];
  v111 = v206;
  v95(v110);
  v112 = sub_254FDA63C();
  v113 = v207;
  sub_254FC4BB8(v112, v114, v115, v207);
  sub_254FD3690();
  sub_254FC4BB8(v116, v117, v118, v99);
  sub_254FD3690();
  v119 = v205;
  sub_254FC4BB8(v120, v121, v122, v205);
  sub_254FD3690();
  v123 = v203;
  sub_254FC4BB8(v124, v125, v126, v203);
  sub_254FDA6A8();
  sub_254FDA64C();
  v127 = v211;
  sub_254FF18C4();
  v128 = v209;
  v191 = 5 * v209;
  v129 = v127;
  v130 = v202;
  (v202)(v129, v192, v111);
  v131 = sub_254FDA63C();
  sub_254FC4BB8(v131, v132, v133, v113);
  sub_254FD3690();
  sub_254FC4BB8(v134, v135, v136, v208);
  sub_254FD3690();
  sub_254FC4BB8(v137, v138, v139, v119);
  sub_254FD3690();
  sub_254FC4BB8(v140, v141, v142, v123);
  sub_254FDA6A8();
  v143 = v204;
  sub_254FDA64C();
  v144 = v211;
  sub_254FF18C4();
  sub_254FDA6F0(v143 + 6 * v128);
  (v130)(v144, *MEMORY[0x277CF1840], v206);
  v145 = sub_254FDA63C();
  v146 = v207;
  sub_254FC4BB8(v145, v147, v148, v207);
  sub_254FD3690();
  v149 = v208;
  sub_254FC4BB8(v150, v151, v152, v208);
  sub_254FD3690();
  sub_254FC4BB8(v153, v154, v155, v119);
  sub_254FD3690();
  v156 = v203;
  sub_254FC4BB8(v157, v158, v159, v203);
  sub_254FDA6A8();
  sub_254FDA6D8();
  sub_254FDA64C();
  v160 = v211;
  sub_254FF18C4();
  sub_254FDA6F0(7 * v209);
  v191 = "tity.Software AS S";
  v161 = v206;
  (v130)(v160, v200, v206);
  sub_254FD3690();
  sub_254FC4BB8(v162, v163, v164, v146);
  sub_254FD3690();
  sub_254FC4BB8(v165, v166, v167, v149);
  sub_254FD3690();
  v168 = v205;
  sub_254FC4BB8(v169, v170, v171, v205);
  v172 = sub_254FDA63C();
  sub_254FC4BB8(v172, v173, v174, v156);
  sub_254FDA6D8();
  sub_254FDA64C();
  sub_254FDA74C(v175);
  (v130)(v160, *MEMORY[0x277CF1850], v161);
  sub_254FD3690();
  sub_254FC4BB8(v176, v177, v178, v207);
  sub_254FD3690();
  sub_254FC4BB8(v179, v180, v181, v208);
  v182 = sub_254FDA63C();
  sub_254FC4BB8(v182, v183, v184, v168);
  sub_254FD3690();
  sub_254FC4BB8(v185, v186, v187, v203);
  sub_254FDA6A8();
  sub_254FDA64C();
  sub_254FDA74C(v188);
  sub_254FDA64C();
  sub_254FF1894();
  sub_254FDA6B4();
  v189();

  sub_254FDA6FC();
}

void *DeviceActivityVirtualTable.Table.createCursor()()
{
  type metadata accessor for DeviceActivityVirtualTable.Cursor();
  v1 = swift_allocObject();
  v1[3] = MEMORY[0x277D84F90];
  v1[4] = 0;
  v1[2] = v0;

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Table.bestIndex(indexInfo:)(sqlite3_index_info *indexInfo)
{
  sub_254FDA734();
  v2 = v1;
  v3 = sub_254FF1EB4();
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if ((v7 & 0x80000000) != 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    JUMPOUT(0x254FD84C0);
  }

  v8 = 0;
  v9 = 0;
  v31 = (v4 + 8);
  v32 = 0;
  for (i = 1; v7; --v7)
  {
    v10 = *(v2 + 1);
    if (!v10)
    {
      goto LABEL_41;
    }

    if (*(v10 + v9 + 5))
    {
      v11 = *(v10 + v9 + 4);
      switch(*(v10 + v9))
      {
        case 0:
          if (v11 != 2)
          {
            break;
          }

          v12 = *(v2 + 4);
          if (!v12)
          {
            goto LABEL_44;
          }

          sub_254FDA678(v12);
          i = v13;
          if (v14)
          {
            goto LABEL_39;
          }

          v15 = v32 | 4;
          goto LABEL_33;
        case 2:
          if (v11 != 2)
          {
            break;
          }

          v25 = *(v2 + 4);
          if (!v25)
          {
            goto LABEL_45;
          }

          sub_254FDA678(v25);
          i = v26;
          if (v14)
          {
            goto LABEL_38;
          }

          v15 = v32 | 8;
          goto LABEL_33;
        case 4:
          if (v11 != 32 && v11 != 4)
          {
            break;
          }

          v23 = *(v2 + 4);
          if (!v23)
          {
            goto LABEL_42;
          }

          sub_254FDA678(v23);
          i = v24;
          if (v14)
          {
            goto LABEL_37;
          }

          v15 = v32 | 1;
          goto LABEL_33;
        case 5:
          if (v11 != 16 && v11 != 8)
          {
            break;
          }

          v28 = *(v2 + 4);
          if (!v28)
          {
            goto LABEL_43;
          }

          sub_254FDA678(v28);
          i = v29;
          if (v14)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v15 = v32 | 2;
LABEL_33:
          v32 = v15;
          break;
        default:
          break;
      }
    }

    else
    {
      sub_254FF1D14();
      v16 = v6;
      v17 = sub_254FF1EA4();
      v18 = sub_254FF2154();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = v3;
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_254FBD000, v17, v18, "DeviceActivityVirtualTable: constraint not usable, skipping", v20, 2u);
        v21 = v20;
        v3 = v19;
        MEMORY[0x259C32150](v21, -1, -1);
      }

      v6 = v16;
      (*v31)(v16, v3);
    }

    v9 += 12;
    v8 += 8;
  }

  v2[10] = v32;
  *(v2 + 8) = 1000000.0 / i;
  sub_254FDA6FC();
}

uint64_t DeviceActivityVirtualTable.Table.deinit()
{
  swift_unownedRelease();

  v1 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable5Table_tableSchema;
  sub_254FF18B4();
  sub_254FC5864();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_254FD8558(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void *sub_254FD85F0@<X0>(void *a1@<X8>)
{
  result = DeviceActivityVirtualTable.Table.createCursor()();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Cursor.filter(idxNum:idxStr:args:)(Swift::Int32 idxNum, Swift::String_optional idxStr, Swift::OpaquePointer args)
{
  sub_254FDA734();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_254FC0048(&qword_27F76CAA8, &qword_254FF3880);
  sub_254FD32E4(v9);
  sub_254FC77C8();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  sub_254FC5864();
  sub_254FC77C8();
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v44 = swift_allocBox();
  v17 = v16;
  v18 = sub_254FF1614();
  sub_254FD3690();
  sub_254FC4BB8(v19, v20, v21, v18);
  v43 = swift_allocBox();
  v23 = v22;
  sub_254FD3690();
  sub_254FC4BB8(v24, v25, v26, v18);
  v27 = *(*(v3 + 16) + 32);
  swift_unownedRetainStrong();
  sub_254FD9D58(v27 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource, v46);

  if (v8)
  {
    if (!*(v6 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    sqlite3_value_double(*(v6 + 32));
    sub_254FF1564();
    v28 = 1;
    sub_254FC4BB8(v15, 0, 1, v18);
    sub_254FD65E0(v15, v17);
    if ((v8 & 2) == 0)
    {
      if ((v8 & 4) == 0)
      {
        v29 = 0;
        if ((v8 & 8) == 0)
        {
          v31 = 0;
          v32 = 0;
          v30 = 0;
LABEL_26:
          v35 = dispatch_semaphore_create(0);
          sub_254FF2114();
          v36 = sub_254FDA63C();
          sub_254FC4BB8(v36, v37, v38, v39);
          sub_254FD9D58(v46, v45);
          v40 = swift_allocObject();
          v40[2] = 0;
          v40[3] = 0;
          v40[4] = v4;
          sub_254FC5820(v45, (v40 + 5));
          v41 = v43;
          v40[10] = v44;
          v40[11] = v41;
          v40[12] = v31;
          v40[13] = v32;
          v40[14] = v29;
          v40[15] = v30;
          v40[16] = v35;

          v42 = v35;
          sub_254FD6FFC(0, 0, v12, &unk_254FF3B58, v40);

          sub_254FF2184();
          DeviceActivityVirtualTable.Cursor.next()();
          sub_254FC49C4(v46);

          sub_254FDA6FC();
          return;
        }

        v28 = 1;
        v30 = 0;
        goto LABEL_22;
      }

      v28 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v28 = 0;
    if ((v8 & 2) == 0)
    {
      if ((v8 & 4) == 0)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        if ((v8 & 8) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  if (v28 >= *(v6 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sqlite3_value_double(*(v6 + 8 * v28 + 32));
  sub_254FF1564();
  sub_254FC4BB8(v15, 0, 1, v18);
  sub_254FD65E0(v15, v23);
  ++v28;
  if ((v8 & 4) == 0)
  {
LABEL_19:
    v29 = 0;
    v30 = 0;
    if ((v8 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_15:
  if (v28 >= *(v6 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!sqlite3_value_text(*(v6 + 8 * v28 + 32)))
  {
    goto LABEL_19;
  }

  v29 = sub_254FF1FE4();
  v30 = v33;
  ++v28;
  if ((v8 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v28 < *(v6 + 16))
  {
    if (sqlite3_value_text(*(v6 + 8 * v28 + 32)))
    {
      v31 = sub_254FF1FE4();
      v32 = v34;
      goto LABEL_26;
    }

LABEL_25:
    v31 = 0;
    v32 = 0;
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_254FD89D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v12;
  *(v8 + 136) = v13;
  *(v8 + 112) = v11;
  *(v8 + 96) = a5;
  *(v8 + 104) = a8;
  *(v8 + 88) = a4;
  sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_projectBox();
  *(v8 + 168) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_254FD8AC0, 0, 0);
}

uint64_t sub_254FD8AC0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[12];
  v6 = v5[3];
  v7 = v5[4];
  sub_254FC3908(v5, v6);
  sub_254FDA64C();
  swift_beginAccess();
  sub_254FDA578(v2, v3, &qword_27F76CA00, &qword_254FF3790);
  sub_254FDA64C();
  swift_beginAccess();
  sub_254FDA578(v1, v4, &qword_27F76CA00, &qword_254FF3790);
  v16 = (*(v7 + 40) + **(v7 + 40));
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_254FD8C6C;
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[19];

  return v16(v14, v9, v12, v13, v10, v11, v6, v7);
}

uint64_t sub_254FD8C6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    sub_254FDA6B4();
    sub_254FC538C(v5, v6, v7);
    sub_254FDA6B4();
    sub_254FC538C(v8, v9, v10);
    v11 = sub_254FD8EB8;
  }

  else
  {
    *(v4 + 192) = a1;
    sub_254FDA6B4();
    sub_254FC538C(v12, v13, v14);
    sub_254FDA6B4();
    sub_254FC538C(v15, v16, v17);
    v11 = sub_254FD8E08;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_254FD8E08()
{
  v1 = v0[24];
  v2 = v0[11];
  swift_beginAccess();
  *(v2 + 24) = v1;

  sub_254FF2194();

  v3 = v0[1];

  return v3();
}

uint64_t sub_254FD8EB8()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Cursor.next()()
{
  v1 = v0;
  sub_254FDA64C();
  swift_beginAccess();
  if (sub_254FDA46C(*(v0 + 24)))
  {
    swift_beginAccess();
    v2 = sub_254FD8FF8();
    swift_endAccess();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

BOOL sub_254FD8FB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_254FF22E4();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

id sub_254FD8FF8()
{
  v1 = *v0;
  if (sub_254FD8FB4(*v0))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_254FDA46C(v1);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v3 = MEMORY[0x259C31960](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + 32);
LABEL_6:
  v4 = v3;
  result = sub_254FDA46C(v1);
  if (result)
  {
    sub_254FDA3C8(0, 1);
    return v4;
  }

LABEL_12:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityVirtualTable.Cursor.column(context:index:)(Swift::OpaquePointer context, Swift::Int index)
{
  sub_254FDA734();
  v5 = v4;
  v7 = v6;
  v59 = sub_254FF18E4();
  sub_254FC583C();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_254FC7780();
  v13 = v12 - v11;
  v14 = sub_254FF18B4();
  sub_254FC583C();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_254FC7780();
  v20 = (v19 - v18);
  sub_254FF1864();
  sub_254FC583C();
  v22 = MEMORY[0x28223BE20](v21);
  v60 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v61 = v2;
  v27 = *(v2 + 32);
  if (v27)
  {
    v57 = v26;
    v58 = v3;
    v55 = &v53 - v25;
    v56 = v24;
    v54 = v7;
    switch(v5)
    {
      case 0uLL:
        v28 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceId;
        goto LABEL_10;
      case 1uLL:
        v28 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_deviceName;
        goto LABEL_10;
      case 2uLL:
        v28 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_altDSID;
        goto LABEL_10;
      case 3uLL:
        v28 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_icloudEmail;
        goto LABEL_10;
      case 4uLL:
        v30 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_startTime;
        goto LABEL_13;
      case 5uLL:
        v30 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_endTime;
LABEL_13:
        v35 = *v30;
        sub_254FDA64C();
        swift_beginAccess();
        v32 = *&v27[v35];
        if (!v32)
        {
          goto LABEL_21;
        }

        v33 = &qword_27F76CB18;
        v34 = 0x277CBEAA8;
        goto LABEL_19;
      case 6uLL:
        v36 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_duration;
        goto LABEL_17;
      case 7uLL:
        v28 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_bundleIdentifier;
LABEL_10:
        v31 = *v28;
        sub_254FDA64C();
        swift_beginAccess();
        v32 = *&v27[v31];
        if (!v32)
        {
          goto LABEL_21;
        }

        v33 = &qword_27F76CB20;
        v34 = 0x277CCACA8;
        goto LABEL_19;
      case 8uLL:
        v36 = &OBJC_IVAR____TtC31IntelligencePlatformDataActions15ActivitySegment_isApplication;
LABEL_17:
        v37 = *v36;
        sub_254FDA64C();
        swift_beginAccess();
        v32 = *&v27[v37];
        if (!v32)
        {
          goto LABEL_21;
        }

        v33 = &unk_27F76CB28;
        v34 = 0x277CCABB0;
LABEL_19:
        v38 = sub_254FD65A0(0, v33, v34);
        v39 = v32;
        break;
      default:
        v32 = 0;
LABEL_21:
        v38 = 0;
        break;
    }

    v64[0] = v32;
    v64[1] = 0;
    v64[2] = 0;
    v64[3] = v38;
    (*(v16 + 16))(v20, *(v61 + 16) + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable5Table_tableSchema, v14);
    v40 = v27;
    v41 = v20;
    v42 = sub_254FF18A4();
    v44 = *(v16 + 8);
    v43 = (v16 + 8);
    v44(v20, v14);
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v42 + 16) > v5)
    {
      v43 = v40;
      v14 = v59;
      (*(v9 + 16))(v13, v42 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, v59);

      v40 = v55;
      sub_254FF18D4();
      (*(v9 + 8))(v13, v14);
      v20 = v56;
      v13 = v57;
      v45 = v60;
      (*(v57 + 16))(v60, v40, v56);
      v46 = (*(v13 + 88))(v45, v20);
      if (v46 == *MEMORY[0x277CF1850])
      {
        sub_254FDA6C0(v46, v47, &qword_27F76C870, &qword_254FF3110);
        if (v63)
        {
          if (sub_254FDA658())
          {
            sqlite3_result_int64(v54, v65);
          }

          goto LABEL_49;
        }

LABEL_51:

        (*(v13 + 8))(v40, v20);
        sub_254FC538C(v64, &qword_27F76C870, &qword_254FF3110);
        v51 = &v62;
        goto LABEL_52;
      }

      if (v46 == *MEMORY[0x277CF1840])
      {
        sub_254FDA6C0(v46, v47, &qword_27F76C870, &qword_254FF3110);
        if (v63)
        {
          if (sub_254FDA658())
          {
            sqlite3_result_double(v54, *&v65);
          }

          goto LABEL_49;
        }

        goto LABEL_51;
      }

      if (v46 == *MEMORY[0x277CF1848])
      {
LABEL_33:
        sub_254FDA6C0(v46, v47, &qword_27F76C870, &qword_254FF3110);
        if (!v63)
        {
          goto LABEL_51;
        }

        sub_254FD65A0(0, &qword_27F76CB20, 0x277CCACA8);
        if (sub_254FDA658())
        {
          v41 = [sub_254FDA6E4() UTF8String];
          if (qword_27F76C798 == -1)
          {
LABEL_36:
            sqlite3_result_text(v54, v41, -1, qword_27F76EC70);
LABEL_48:

            goto LABEL_49;
          }

LABEL_59:
          sub_254FDA688(&qword_27F76C798);
          goto LABEL_36;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (v46 == *MEMORY[0x277CF1838])
      {
        sub_254FDA6C0(v46, v47, &qword_27F76C870, &qword_254FF3110);
        if (!v63)
        {
          goto LABEL_51;
        }

        sub_254FD65A0(0, &qword_27F76CB18, 0x277CBEAA8);
        if (sub_254FDA658())
        {
          [v65 timeIntervalSinceReferenceDate];
          sqlite3_result_double(v54, v48);

LABEL_50:
          (*(v13 + 8))(v40, v20);
          v51 = v64;
LABEL_52:
          sub_254FC538C(v51, &qword_27F76C870, &qword_254FF3110);
          goto LABEL_53;
        }

        goto LABEL_49;
      }

      if (v46 != *MEMORY[0x277CF1830])
      {
        if (v46 == *MEMORY[0x277CF1820])
        {
          goto LABEL_33;
        }

        if (v46 != *MEMORY[0x277CF1828])
        {
          sqlite3_result_null(v54);

          v52 = *(v13 + 8);
          v52(v40, v20);
          sub_254FC538C(v64, &qword_27F76C870, &qword_254FF3110);
          v52(v45, v20);
          goto LABEL_53;
        }
      }

      sub_254FDA6C0(v46, v47, &qword_27F76C870, &qword_254FF3110);
      if (!v63)
      {
        goto LABEL_51;
      }

      sub_254FD65A0(0, &qword_27F76CB10, 0x277CBEA90);
      if ((sub_254FDA658() & 1) == 0)
      {
        goto LABEL_49;
      }

      v49 = [sub_254FDA6E4() bytes];
      v50 = [v14 length];
      if (v50 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        LODWORD(v42) = v50;
        if (v50 <= 0x7FFFFFFF)
        {
          if (qword_27F76C798 == -1)
          {
LABEL_47:
            sqlite3_result_blob(v54, v49, v42, qword_27F76EC70);
            goto LABEL_48;
          }

LABEL_62:
          sub_254FDA688(&qword_27F76C798);
          goto LABEL_47;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_59;
  }

  sub_254FC389C();
  swift_allocError();
  *v29 = 2;
  swift_willThrow();
LABEL_53:
  sub_254FDA6FC();
}

uint64_t DeviceActivityVirtualTable.Cursor.deinit()
{

  return v0;
}

uint64_t DeviceActivityVirtualTable.Cursor.__deallocating_deinit()
{
  DeviceActivityVirtualTable.Cursor.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_254FD99E4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_254FD9A08(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_254FC3C30();
    *v1 = v5;
  }
}

uint64_t sub_254FD9A70(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_254FF22E4();
LABEL_9:
  result = sub_254FF2274();
  *v2 = result;
  return result;
}

uint64_t sub_254FD9B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v13 = sub_254FD9C34(a1, v11, v12, a4, a5);
  (*(v9 + 8))(a2, a4);
  return v13;
}

uint64_t sub_254FD9C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource);
  v9[3] = a4;
  v9[4] = a5;
  v10 = sub_254FDA5D8(v9);
  (*(*(a4 - 8) + 32))(v10, a2, a4);
  *(a3 + 16) = 0xD00000000000001ALL;
  *(a3 + 24) = 0x8000000254FF3C40;
  v11 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  v12 = *MEMORY[0x277D21220];
  v13 = sub_254FF1DF4();
  (*(*(v13 - 8) + 104))(a3 + v11, v12, v13);
  *(a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_ipsqlDb) = a1;
  swift_unownedRetain();

  return a3;
}

uint64_t sub_254FD9D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254FD9DBC()
{
  swift_unknownObjectRelease();

  sub_254FC49C4((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_254FD9E2C(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_254FD9F30;

  return sub_254FD89D8(a1, v11, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_254FD9F30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_254FDA0B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceActivityVirtualTable(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x254FDA19CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254FDA1FC(uint64_t a1)
{
  result = sub_254FF1DF4();
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

uint64_t sub_254FDA2E0(uint64_t a1)
{
  result = sub_254FF18B4();
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

uint64_t sub_254FDA3C8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_254FDA46C(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_254FDA46C(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_254FD9A70(result, 1);

  return sub_254FDA490(v4, a2, 0);
}

uint64_t sub_254FDA46C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_254FF22E4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_254FDA490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ActivitySegment();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_254FF22E4();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_254FD1648(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_254FF22E4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_254FDA578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254FC0048(a3, a4);
  sub_254FC5864();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t *sub_254FDA5D8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_254FDA658()
{

  return swift_dynamicCast();
}

uint64_t sub_254FDA688(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_254FDA6C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_254FDA578(v4 - 112, v4 - 144, a3, a4);
}

uint64_t sub_254FDA714()
{

  return swift_task_create();
}

uint64_t sub_254FDA74C(uint64_t a1)
{

  return sub_254FF18C4();
}

uint64_t Email.dateSent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Email(0) + 24);
  v4 = sub_254FF1614();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Email(uint64_t a1)
{
  result = qword_27F76CBC0;
  if (!qword_27F76CBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Email.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Email(0) + 28);

  return sub_254FC6204(v3, a1);
}

uint64_t Email.to.getter()
{
  type metadata accessor for Email(0);

  return sub_254FBF6B0();
}

uint64_t Email.from.getter()
{
  type metadata accessor for Email(0);

  return sub_254FBF6B0();
}

uint64_t sub_254FDA948@<X0>(uint64_t *a1@<X8>)
{
  result = Email.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FDA984(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FF1614();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
      v10 = *(a3 + 28);
    }

    return sub_254FC5364(a1 + v10, a2, v9);
  }
}

uint64_t sub_254FDAA70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_254FF1614();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
      v10 = *(a4 + 28);
    }

    return sub_254FC4BB8(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_254FDAB44(uint64_t a1)
{
  sub_254FF1614();
  if (v1 <= 0x3F)
  {
    sub_254FC7370(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_254FDABE0()
{
  type metadata accessor for IPSQLQuerySource(0);
  v0 = swift_allocObject();
  result = IPSQLQuerySource.init(sqlConnection:)(0);
  qword_27F76EC98 = v0;
  return result;
}

uint64_t IPSQLQuerySource.__allocating_init(sqlConnection:)(uint64_t a1)
{
  v2 = swift_allocObject();
  IPSQLQuerySource.init(sqlConnection:)(a1);
  return v2;
}

uint64_t sub_254FDAC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a3 + 16) || (v7 = sub_254FC4A60(0x7377656956), (v8 & 1) == 0) || (sub_254FC4B5C(*(a3 + 56) + 32 * v7, &v60), v9 = sub_254FC0048(&qword_27F76CC20, " 8"), sub_254FDCE08(v9, v10, v11, v9, v12, v13, v14, v15, v50, a2, v56), result = swift_dynamicCast(), (result & 1) == 0))
  {
LABEL_26:
    v34 = 1;
    goto LABEL_27;
  }

  v51 = a4;
  v17 = 0;
  v18 = v57;
  v19 = *(v57 + 16);
  while (1)
  {
    if (v19 == v17)
    {

      v34 = 1;
      a4 = v51;
      goto LABEL_27;
    }

    if (v17 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = *(v18 + 8 * v17 + 32);
    if (!*(v20 + 16))
    {
      goto LABEL_17;
    }

    v21 = sub_254FC4A60(0x656D614E77656976);
    if ((v22 & 1) == 0 || (v23 = sub_254FC4B5C(*(v20 + 56) + 32 * v21, &v60), sub_254FDCE08(v23, v24, v25, v26, v27, v28, v29, v30, v51, v54, v57), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_17;
    }

    if (v57 == a1 && v59 == v54)
    {
      break;
    }

    v32 = a1;
    v33 = sub_254FF2364();

    if (v33)
    {
      goto LABEL_20;
    }

    a1 = v32;
LABEL_17:
    ++v17;
  }

LABEL_20:

  sub_254FBFF80(v20, &v60, 0xD000000000000012);

  a4 = v51;
  if (!v61)
  {
    goto LABEL_25;
  }

  v35 = sub_254FC0048(&qword_27F76CC28, &qword_254FF3F08);
  sub_254FDCE08(v35, v36, v37, v35, v38, v39, v40, v41, v51, v54, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_254FBFF80(v58, &v60, 0xD000000000000014);

  if (!v61)
  {
LABEL_25:
    sub_254FC8740(&v60, &qword_27F76C870, &qword_254FF3110);
    goto LABEL_26;
  }

  sub_254FDCE08(v42, v43, v44, MEMORY[0x277D839F8], v45, v46, v47, v48, v52, v55, v58);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_254FF1564();
  v34 = 0;
LABEL_27:
  v49 = sub_254FF1614();
  return sub_254FC4BB8(a4, v34, 1, v49);
}

uint64_t sub_254FDAF2C()
{
  v151 = *MEMORY[0x277D85DE8];
  v1 = sub_254FF1EB4();
  sub_254FC583C();
  v146 = v2;
  MEMORY[0x28223BE20](v3);
  sub_254FC590C();
  v143 = (v4 - v5);
  sub_254FDCE18();
  MEMORY[0x28223BE20](v6);
  sub_254FDCE60();
  v142 = v7;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v8);
  sub_254FDCE60();
  v140 = v9;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v10);
  v141 = v134 - v11;
  v12 = sub_254FF1F94();
  sub_254FC583C();
  v144 = v13;
  MEMORY[0x28223BE20](v14);
  sub_254FC7780();
  v17 = v16 - v15;
  v18 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  MEMORY[0x28223BE20](v18 - 8);
  sub_254FC590C();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v134 - v23;
  v25 = sub_254FF1614();
  sub_254FC583C();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_254FC590C();
  v139 = v29 - v30;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v31);
  sub_254FDCE60();
  v138 = v32;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v33);
  sub_254FDCE60();
  v147 = v34;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v35);
  v37 = v134 - v36;
  v38 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt;
  swift_beginAccess();
  sub_254FDCD30(v0 + v38, v24);
  if (sub_254FC5364(v24, 1, v25) != 1)
  {
    v135 = v1;
    v137 = v27;
    v39 = *(v27 + 32);
    v148 = v25;
    v136 = v39;
    v39(v37, v24, v25);
    v40 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewService);
    v41 = *(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewQuery);
    v150[0] = 0;
    v42 = [v40 viewValidateWithViewQuery:v41 applyFixes:1 verbose:5 error:v150];
    v43 = v150[0];
    if (v42)
    {
      v44 = v42;
      v145 = v37;
      sub_254FF1F54();
      v45 = v43;

      sub_254FF1F84();
      v46 = sub_254FF1F64();
      v48 = v47;

      v144[1](v17, v12);
      v49 = v148;
      if (v48 >> 60 == 15)
      {
        goto LABEL_19;
      }

      v50 = objc_opt_self();
      sub_254FDCE6C();
      v51 = sub_254FF1534();
      v150[0] = 0;
      v52 = [v50 JSONObjectWithData:v51 options:0 error:v150];

      if (v52)
      {
        v134[1] = v46;
        v134[2] = v48;
        v53 = v150[0];
        sub_254FF21B4();
        swift_unknownObjectRelease();
        sub_254FC0048(&qword_27F76CC28, &qword_254FF3F08);
        if (swift_dynamicCast())
        {
          v54 = 0;
          v55 = v148;
          v144 = v149;
          v56 = *(v0 + 16);
          v57 = *(v56 + 16);
          v143 = (v137 + 8);
          for (i = (v56 + 40); ; i += 2)
          {
            if (v57 == v54)
            {
              v99 = sub_254FDCE34();
              v100(v99);
              sub_254FDCDE8();

              return 0;
            }

            if (v54 >= *(v56 + 16))
            {
              __break(1u);
            }

            v60 = *(i - 1);
            v59 = *i;

            sub_254FDAC64(v60, v59, v144, v21);
            if (sub_254FC5364(v21, 1, v55) == 1)
            {
              break;
            }

            v61 = v147;
            v136(v147, v21, v55);
            if (sub_254FF15B4())
            {

              sub_254FF1D14();
              v111 = *(v137 + 16);
              v112 = v138;
              v111(v138, v61, v55);
              v113 = v145;
              v111(v139, v145, v55);

              v114 = sub_254FF1EA4();
              v115 = sub_254FF2164();

              if (os_log_type_enabled(v114, v115))
              {
                v116 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v150[0] = v144;
                *v116 = 136315650;
                v117 = sub_254FC4454(v60, v59, v150);
                LODWORD(v142) = v115;
                v118 = v117;

                *(v116 + 4) = v118;
                *(v116 + 12) = 2080;
                sub_254FDCDA0(&qword_27F76CC38, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                v119 = sub_254FF2344();
                v121 = v120;
                v122 = *v143;
                (*v143)(v112, v55);
                v123 = sub_254FC4454(v119, v121, v150);

                *(v116 + 14) = v123;
                *(v116 + 22) = 2080;
                v124 = sub_254FF2344();
                v126 = v125;
                v127 = sub_254FDCE6C();
                (v122)(v127);
                v128 = sub_254FC4454(v124, v126, v150);

                *(v116 + 24) = v128;
                _os_log_impl(&dword_254FBD000, v114, v142, "IPSQLConnection: %s [updated: %s] updated after connection [updated: %s]. Refreshing connection", v116, 0x20u);
                swift_arrayDestroy();
                sub_254FC592C();
                MEMORY[0x259C32150]();
                sub_254FC592C();
                MEMORY[0x259C32150]();
                sub_254FDCDE8();

                sub_254FDCE54();
                sub_254FDCE48();
                v129();
                v122(v147, v55);
                v122(v145, v55);
              }

              else
              {
                sub_254FDCDE8();

                v131 = *v143;
                v132 = sub_254FDCE6C();
                v131(v132);
                (v131)(v112, v55);
                sub_254FDCE54();
                sub_254FDCE48();
                v133();
                (v131)(v61, v55);
                (v131)(v113, v55);
              }

              return 1;
            }

            (*v143)(v61, v55);

            ++v54;
          }

          sub_254FC8740(v21, &qword_27F76CA00, &qword_254FF3790);
          sub_254FF1D14();

          v101 = sub_254FF1EA4();
          v102 = sub_254FF2174();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v150[0] = v104;
            *v103 = 136315138;
            v105 = sub_254FC4454(v60, v59, v150);

            *(v103 + 4) = v105;
            sub_254FDCE24();
            _os_log_impl(v106, v107, v108, v109, v110, 0xCu);
            sub_254FC49C4(v104);
            sub_254FC592C();
            MEMORY[0x259C32150]();
            sub_254FC592C();
            MEMORY[0x259C32150]();
            sub_254FDCDE8();
          }

          else
          {
            sub_254FDCDE8();
          }

          sub_254FDCE54();
          sub_254FDCE48();
          v130();
          v96 = sub_254FDCE34();
          goto LABEL_22;
        }

        sub_254FDCDE8();
        v49 = v148;
LABEL_19:
        sub_254FF1D14();
        v87 = sub_254FF1EA4();
        v88 = sub_254FF2174();
        if (os_log_type_enabled(v87, v88))
        {
          *swift_slowAlloc() = 0;
          sub_254FDCE24();
          _os_log_impl(v89, v90, v91, v92, v93, 2u);
          sub_254FC592C();
          MEMORY[0x259C32150]();
        }

        sub_254FDCE54();
        sub_254FDCE48();
        v94();
        v95 = *(v137 + 8);
        v96 = v145;
        v97 = v49;
LABEL_22:
        v95(v96, v97);
        return 1;
      }

      v67 = v150[0];
      v63 = sub_254FF14F4();

      swift_willThrow();
      v68 = sub_254FDCE6C();
      sub_254FC4BE0(v68, v69);
      v37 = v145;
      v66 = v146;
      v64 = v135;
      v65 = v148;
    }

    else
    {
      v62 = v150[0];
      v63 = sub_254FF14F4();

      swift_willThrow();
      v64 = v135;
      v65 = v148;
      v66 = v146;
    }

    v70 = v143;
    sub_254FF1D14();
    v71 = v63;
    v72 = sub_254FF1EA4();
    v73 = sub_254FF2174();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v137;
    if (v74)
    {
      v76 = swift_slowAlloc();
      v145 = v37;
      v77 = v76;
      v78 = v65;
      v79 = swift_slowAlloc();
      *v77 = 138412290;
      v80 = v63;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v81;
      *v79 = v81;
      sub_254FDCE24();
      _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
      sub_254FC8740(v79, &qword_27F76CBE0, &qword_254FF3F40);
      v65 = v78;
      sub_254FC592C();
      MEMORY[0x259C32150]();
      v37 = v145;
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v66 + 8))(v70, v64);
    (*(v75 + 8))(v37, v65);
    return 1;
  }

  sub_254FC8740(v24, &qword_27F76CA00, &qword_254FF3790);
  return 1;
}

uint64_t sub_254FDBB40()
{
  v1 = v0;
  sub_254FF1EB4();
  sub_254FC583C();
  MEMORY[0x28223BE20](v2);
  sub_254FC7780();
  v3 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - v4;
  if (*(v0 + 24) == 1 && (sub_254FDAF2C() & 1) != 0)
  {
    sub_254FF1604();
    v6 = sub_254FF1614();
    sub_254FC4BB8(v5, 0, 1, v6);
    v7 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt;
    swift_beginAccess();
    sub_254FD65E0(v5, v1 + v7);
    swift_endAccess();
    sub_254FF1E54();
    v8 = *(v1 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_useCase);
    v9 = sub_254FF1E34();
    v10 = objc_allocWithZone(type metadata accessor for DeviceActivityHelpers(0));

    v11 = [v10 init];
    v12 = type metadata accessor for DeviceActivityVirtualTable.Module(0);
    v13 = swift_allocObject();
    v14 = sub_254FDC950(v9, v11, v13);
    v16[3] = v12;
    v16[4] = sub_254FDCDA0(&qword_27F76CBE8, type metadata accessor for DeviceActivityVirtualTable.Module, &protocol conformance descriptor for DeviceActivityVirtualTable.Module);
    v16[0] = v14;

    sub_254FF1E44();
    sub_254FC49C4(v16);

    sub_254FF1E14();

    *(v1 + 32) = v9;
  }
}

uint64_t IPSQLQuerySource.init(sqlConnection:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = &unk_2867307B8;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  v4 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt;
  v5 = sub_254FF1614();
  sub_254FC4BB8(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_useCase;
  *(v2 + v6) = sub_254FF1F24();
  v7 = OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewService;
  *(v2 + v7) = [objc_allocWithZone(MEMORY[0x277D1F4B8]) init];
  sub_254FF1E94();
  sub_254FDCDA0(&qword_27F76CBF8, MEMORY[0x277D20478], MEMORY[0x277D20280]);
  sub_254FF1844();
  sub_254FDCA38();

  *(v2 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_viewQuery) = sub_254FDC060(v8, 0);
  if (a1)
  {
    *(v2 + 32) = a1;

    *(v2 + 24) = 0;
  }

  return v2;
}

id sub_254FDC060(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_254FF2064();

  v5 = [v3 initWithNames:v4 includeDependencies:a2 & 1];

  return v5;
}

uint64_t sub_254FDC0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[2] = &v8;
  v8 = MEMORY[0x277D84F90];
  sub_254FDC578(a1, a2, a3, sub_254FDCA7C, v7);
  result = v8;
  if (v4)
  {
  }

  a4[3] = &type metadata for SQLConnectionResultSet;
  a4[4] = &protocol witness table for SQLConnectionResultSet;
  *a4 = result;
  a4[1] = 0;
  return result;
}

uint64_t sub_254FDC180(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v30 = a2;
  v5 = sub_254FF1DD4();
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  v31 = v8 + 16;
  v32 = (v8 + 8);
  v29[1] = a1;
LABEL_2:
  result = sub_254FF1E64();
  if (!v3 && (result & 1) != 0)
  {
    v10 = sub_254FF1EE4();
    v11 = sub_254FF1E84();
    v12 = 0;
    v34 = *(v11 + 16);
    while (1)
    {
      if (v34 == v12)
      {

        v26 = v30;
        sub_254FDC8C4();
        v27 = *(*v26 + 16);
        sub_254FDC910(v27);
        v28 = *v26;
        *(v28 + 16) = v27 + 1;
        *(v28 + 8 * v27 + 32) = v10;
        goto LABEL_2;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      (*(v33 + 16))(v7, v11 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v12, v5);
      v13 = sub_254FF1DC4();
      v15 = v14;
      sub_254FF1DB4();
      v35 = v12;
      (*v32)();
      *&v36[0] = v13;
      *(&v36[0] + 1) = v15;
      sub_254FF21F4();
      sub_254FC4B5C(v38, v36);
      swift_isUniquelyReferenced_nonNull_native();
      v39 = v10;
      v16 = sub_254FC4AC4(v37);
      if (__OFADD__(v10[2], (v17 & 1) == 0))
      {
        goto LABEL_19;
      }

      v18 = v16;
      v19 = v17;
      sub_254FC0048(&qword_27F76CC30, &qword_254FF3F10);
      if (sub_254FF22A4())
      {
        v20 = sub_254FC4AC4(v37);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_21;
        }

        v18 = v20;
      }

      v10 = v39;
      if (v19)
      {
        v22 = (v39[7] + 32 * v18);
        sub_254FC49C4(v22);
        sub_254FDCD20(v36, v22);
        sub_254FC4B08(v37);
        sub_254FC49C4(v38);
        v3 = 0;
      }

      else
      {
        v39[(v18 >> 6) + 8] |= 1 << v18;
        sub_254FC5714(v37, v10[6] + 40 * v18);
        sub_254FDCD20(v36, (v10[7] + 32 * v18));
        sub_254FC4B08(v37);
        sub_254FC49C4(v38);
        v23 = v10[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_20;
        }

        v3 = 0;
        v10[2] = v25;
      }

      v12 = v35 + 1;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_254FF2384();
    __break(1u);
  }

  return result;
}

uint64_t sub_254FDC578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_254FF1EB4();
  sub_254FC583C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_254FC7780();
  v11 = v10 - v9;
  if (sub_254FDBB40())
  {
    sub_254FF1E24();
  }

  else
  {
    sub_254FF1D14();
    v13 = sub_254FF1EA4();
    v14 = sub_254FF2174();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_254FBD000, v13, v14, "IPSQLQuerySource: sqlConnection is not available, returning empty results", v15, 2u);
      sub_254FC592C();
      MEMORY[0x259C32150]();
    }

    (*(v7 + 8))(v11, v5);
    sub_254FC389C();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }
}

uint64_t IPSQLQuerySource.deinit()
{

  sub_254FC8740(v0 + OBJC_IVAR____TtC31IntelligencePlatformDataActions16IPSQLQuerySource_sqlConnectionCreatedAt, &qword_27F76CA00, &qword_254FF3790);

  return v0;
}

uint64_t IPSQLQuerySource.__deallocating_deinit()
{
  IPSQLQuerySource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnectionResultSet.next()()
{
  v1 = v0[1];
  if (v1 >= *(*v0 + 16))
  {
    v2 = 0;
  }

  else if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v0[1] = v1 + 1;
  }

  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

void sub_254FDC8C4()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_254FC3ED0();
    *v0 = v3;
  }
}

void sub_254FDC910(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_254FC3ED0();
    *v1 = v2;
  }
}

uint64_t sub_254FDC950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_deviceActivitySource);
  v6[3] = type metadata accessor for DeviceActivityHelpers(0);
  v6[4] = &protocol witness table for DeviceActivityHelpers;
  *v6 = a2;
  *(a3 + 16) = 0xD00000000000001ALL;
  *(a3 + 24) = 0x8000000254FF6050;
  v7 = OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_moduleType;
  v8 = *MEMORY[0x277D21220];
  v9 = sub_254FF1DF4();
  (*(*(v9 - 8) + 104))(a3 + v7, v8, v9);
  *(a3 + OBJC_IVAR____TtCO31IntelligencePlatformDataActions26DeviceActivityVirtualTable6Module_ipsqlDb) = a1;
  swift_unownedRetain();

  return a3;
}

unint64_t sub_254FDCA38()
{
  result = qword_27F76CC00;
  if (!qword_27F76CC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F76CC00);
  }

  return result;
}

uint64_t type metadata accessor for IPSQLQuerySource(uint64_t a1)
{
  result = qword_27F76CC10;
  if (!qword_27F76CC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_254FDCAEC(uint64_t a1)
{
  sub_254FDCCB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_254FDCCB8(uint64_t a1)
{
  if (!qword_27F76CB58)
  {
    sub_254FF1614();
    v1 = sub_254FF21A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F76CB58);
    }
  }
}

_OWORD *sub_254FDCD20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_254FDCD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FDCDA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254FDCDE8()
{
  v2 = *(v0 - 296);
  v3 = *(v0 - 288);

  return sub_254FC4BE0(v2, v3);
}

uint64_t LiveGlobalKnowledgeError.hashValue.getter()
{
  v1 = *v0;
  sub_254FF2404();
  MEMORY[0x259C31B10](v1);
  return sub_254FF2434();
}

uint64_t sub_254FDCF0C()
{
  qword_27F76ECB8 = sub_254FF1D74();
  unk_27F76ECC0 = MEMORY[0x277D1F4D0];
  sub_254FDA5D8(qword_27F76ECA0);
  return sub_254FF1D64();
}

uint64_t LiveGlobalKnowledgeQuerySource.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_254FF1D74();
  v3 = MEMORY[0x277D1F4D0];
  a1[3] = v2;
  a1[4] = v3;
  sub_254FDA5D8(a1);
  return sub_254FF1D64();
}

uint64_t LiveGlobalKnowledgeQuerySource.callPegasusProxyWithTimeout(request:timeoutMs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v129 = a3;
  v127 = sub_254FF1D34();
  sub_254FC583C();
  v126 = v4;
  MEMORY[0x28223BE20](v5);
  sub_254FC5888();
  v130 = v6;
  v137 = sub_254FF17E4();
  sub_254FC583C();
  v134 = v7;
  MEMORY[0x28223BE20](v8);
  sub_254FC5888();
  v133 = v9;
  v10 = sub_254FC0048(&qword_27F76CC40, &qword_254FF3F30);
  MEMORY[0x28223BE20](v10 - 8);
  sub_254FDE4EC();
  v136 = v11;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v12);
  v147 = v125 - v13;
  v14 = sub_254FF1CB4();
  sub_254FC583C();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_254FDE4EC();
  v139 = v18;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v19);
  sub_254FDCE60();
  v128 = v20;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v21);
  sub_254FDCE60();
  v135 = v22;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v23);
  v25 = v125 - v24;
  v150 = sub_254FF1EB4();
  sub_254FC583C();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_254FDE4EC();
  v148 = v29;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v30);
  sub_254FDCE60();
  v131 = v31;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v32);
  sub_254FDCE60();
  v132 = v33;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v34);
  sub_254FDCE60();
  v138 = v35;
  sub_254FDCE18();
  MEMORY[0x28223BE20](v36);
  v38 = v125 - v37;
  sub_254FF1D14();
  v39 = v14;
  v143 = *(v16 + 16);
  v144 = v16 + 16;
  v143(v25, a1, v14);
  v40 = sub_254FF1EA4();
  v41 = sub_254FF2164();
  v42 = sub_254FDE584(v41);
  v149 = v27;
  v146 = v16;
  if (v42)
  {
    v43 = sub_254FDE56C();
    v44 = swift_slowAlloc();
    v125[1] = a1;
    v45 = v44;
    v151 = v44;
    *v43 = 136642819;
    v46 = sub_254FF1C94();
    v47 = v16;
    v49 = v48;
    v145 = *(v47 + 8);
    v145(v25, v39);
    v50 = sub_254FC4454(v46, v49, &v151);
    v51 = v147;

    *(v43 + 4) = v50;
    _os_log_impl(&dword_254FBD000, v40, v41, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeout request: %{sensitive}s", v43, 0xCu);
    sub_254FC49C4(v45);
    sub_254FDE524();
    sub_254FDE524();

    v52 = *(v149 + 8);
    v52(v38, v150);
    v53 = v39;
  }

  else
  {

    v145 = *(v16 + 8);
    v145(v25, v39);
    v52 = *(v27 + 8);
    v52(v38, v150);
    v53 = v39;
    v51 = v147;
  }

  sub_254FC3908(v140, v140[3]);
  v54 = v142;
  v55 = sub_254FF1D94();
  v56 = v54;
  if (v54)
  {
    v57 = v139;
LABEL_19:
    sub_254FF1D14();
    v99 = sub_254FDE4D8();
    v100(v99);
    v101 = v56;
    v102 = sub_254FF1EA4();
    v103 = v53;
    v104 = sub_254FF2174();

    if (os_log_type_enabled(v102, v104))
    {
      v105 = v57;
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v142 = v52;
      v151 = v107;
      *v106 = 136315395;
      swift_getErrorValue();
      v108 = sub_254FF2394();
      v110 = sub_254FC4454(v108, v109, &v151);

      *(v106 + 4) = v110;
      *(v106 + 12) = 2085;
      v111 = sub_254FF1C94();
      v113 = v112;
      sub_254FDE548();
      v114(v105, v103);
      v115 = sub_254FC4454(v111, v113, &v151);

      *(v106 + 14) = v115;
      _os_log_impl(&dword_254FBD000, v102, v104, "LiveGlobalKnowledgeQuerySource callPegasusProxyWithTimeout error: %s, request: %{sensitive}s", v106, 0x16u);
      swift_arrayDestroy();
      sub_254FDE524();
      sub_254FDE524();

      v142(v148, v150);
    }

    else
    {

      sub_254FDE548();
      v116(v57, v103);
      v117 = sub_254FDE53C();
      (v52)(v117);
    }

    return swift_willThrow();
  }

  v58 = v51;
  if (v55)
  {
    v59 = v138;
    sub_254FF1D14();
    v60 = v135;
    v61 = sub_254FDE4D8();
    v62(v61);
    v63 = sub_254FF1EA4();
    v64 = sub_254FF2174();
    if (sub_254FDE584(v64))
    {
      sub_254FDE56C();
      v65 = sub_254FDE59C();
      v142 = v52;
      v66 = v65;
      v151 = v65;
      *v60 = 136642819;
      sub_254FF1C94();
      v67 = sub_254FDE500();
      v68(v67);
      sub_254FC4454(v52, v53, &v151);
      sub_254FDE5DC();
      *(v60 + 4) = v59;
      sub_254FDE5BC(&dword_254FBD000, v69, v70, "LiveGlobalKnowledgeQuerySource callPegasusProxyWithTimeout timeout from Pegasus proxy for request: %{sensitive}s");
      sub_254FC49C4(v66);
      v58 = v147;
      v52 = v142;
      sub_254FDE524();
      sub_254FDE524();

      v71 = v138;
    }

    else
    {

      sub_254FDE548();
      v87(v60, v53);
      v71 = sub_254FDE53C();
    }

    v52(v71, v150);
    v57 = v139;
    sub_254FDE14C();
    v56 = sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
    *v88 = 1;
LABEL_18:
    swift_willThrow();
    sub_254FC8740(v58, &qword_27F76CC40, &qword_254FF3F30);
    goto LABEL_19;
  }

  v72 = v136;
  sub_254FDE0DC(v51, v136);
  v73 = v137;
  if (sub_254FC5364(v72, 1, v137) == 1)
  {
    sub_254FC8740(v72, &qword_27F76CC40, &qword_254FF3F30);
    v74 = v131;
    sub_254FF1D14();
    v75 = v128;
    v76 = sub_254FDE4D8();
    v77(v76);
    v78 = sub_254FF1EA4();
    v79 = sub_254FF2174();
    if (sub_254FDE584(v79))
    {
      sub_254FDE56C();
      v80 = sub_254FDE59C();
      v142 = v52;
      v81 = v80;
      v151 = v80;
      *v75 = 136642819;
      sub_254FF1C94();
      v82 = sub_254FDE500();
      v83(v82);
      sub_254FC4454(v52, v53, &v151);
      sub_254FDE5DC();
      *(v75 + 4) = v74;
      sub_254FDE5BC(&dword_254FBD000, v84, v85, "LiveGlobalKnowledgeQuerySource callPegasusProxyWithTimeout received nil response from Pegasus proxy for request: %{sensitive}s");
      sub_254FC49C4(v81);
      v58 = v147;
      v52 = v142;
      sub_254FDE524();
      sub_254FDE524();

      v86 = v131;
    }

    else
    {

      sub_254FDE548();
      v97(v75, v53);
      v86 = sub_254FDE53C();
    }

    v52(v86, v150);
    v57 = v139;
    sub_254FDE14C();
    v56 = sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
    *v98 = 0;
    goto LABEL_18;
  }

  v89 = v134;
  v90 = v129;
  (*(v134 + 32))(v129, v72, v73);
  sub_254FF1D14();
  v91 = v133;
  (*(v89 + 16))(v133, v90, v73);
  v92 = sub_254FF1EA4();
  v93 = sub_254FF2164();
  if (sub_254FDE584(v93))
  {
    v94 = v52;
    v95 = sub_254FDE56C();
    v96 = swift_slowAlloc();
    v151 = v96;
    *v95 = 136642819;
    sub_254FF1D24();
    sub_254FDE1A0();
    v120 = sub_254FF1D44();
    v122 = v121;
    (*(v126 + 8))(v130, v127);
    (*(v134 + 8))(v133, v137);
    v123 = sub_254FC4454(v120, v122, &v151);

    *(v95 + 4) = v123;
    _os_log_impl(&dword_254FBD000, v92, v93, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeout response: %{sensitive}s", v95, 0xCu);
    sub_254FC49C4(v96);
    sub_254FDE524();
    sub_254FDE524();

    v94(v132, v150);
    v124 = v147;
  }

  else
  {

    (*(v89 + 8))(v91, v73);
    v119 = sub_254FDE53C();
    (v52)(v119);
    v124 = v58;
  }

  return sub_254FC8740(v124, &qword_27F76CC40, &qword_254FF3F30);
}

void LiveGlobalKnowledgeQuerySource.callPegasusProxyWithTimeoutAndRetry(request:timeoutMs:maxRetries:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v59 = a1;
  v60 = a2;
  v58 = a4;
  v9 = sub_254FF1EB4();
  v10 = MEMORY[0x28223BE20](v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  MEMORY[0x28223BE20](v11);
  v61 = a3;
  if (a3 < 0)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v53 = v16;
    v54 = &v52 - v15;
    v18 = 0;
    v19 = 0;
    v20 = (v14 + 8);
    *&v17 = 138412290;
    v56 = v17;
    v57 = (v14 + 8);
    v55 = v9;
    while (v61 != v18)
    {
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      LiveGlobalKnowledgeQuerySource.callPegasusProxyWithTimeout(request:timeoutMs:)(v59, v60, v58);
      if (!v6)
      {
        v43 = v19;
        goto LABEL_23;
      }

      v63 = v6;
      v21 = v6;
      sub_254FC0048(&qword_27F76CC58, &qword_254FF3F38);
      if (!swift_dynamicCast())
      {
        goto LABEL_22;
      }

      v22 = v62;
      if (v62 > 1u)
      {
        v44 = v53;
        sub_254FF1D14();
        v45 = sub_254FF1EA4();
        v46 = sub_254FF2174();
        if (sub_254FDE584(v46))
        {
          v47 = sub_254FDE56C();
          v48 = swift_slowAlloc();
          *v47 = v56;
          sub_254FDE14C();
          sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
          *v49 = v22;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_254FBD000, v45, v46, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeoutAndRetry non retryable error: %@", v47, 0xCu);
          sub_254FC8740(v48, &qword_27F76CBE0, &qword_254FF3F40);
          sub_254FDE524();
          sub_254FDE524();
        }

        (*v20)(v44, v9);
        sub_254FDE14C();
        sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
        *v51 = v22;
        swift_willThrow();
LABEL_22:

        v43 = v63;
LABEL_23:

        return;
      }

      sub_254FF1D14();
      v23 = sub_254FF1EA4();
      v24 = sub_254FF2174();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = sub_254FDE56C();
        v26 = v7;
        v27 = v19;
        v28 = swift_slowAlloc();
        *v25 = v56;
        sub_254FDE14C();
        sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
        *v29 = v22;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v30;
        *v28 = v30;
        _os_log_impl(&dword_254FBD000, v23, v24, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeoutAndRetry retrying due to error: %@", v25, 0xCu);
        sub_254FC8740(v28, &qword_27F76CBE0, &qword_254FF3F40);
        v19 = v27;
        v7 = v26;
        sub_254FDE524();
        v9 = v55;
        v20 = v57;
        sub_254FDE524();
      }

      (*v20)(v13, v9);
      sub_254FDE14C();
      v31 = sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
      *v32 = v22;

      v6 = 0;
      ++v18;
      v19 = v31;
    }

    v33 = v54;
    sub_254FF1D14();
    v34 = v19;
    v35 = sub_254FF1EA4();
    v36 = sub_254FF2174();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_254FDE56C();
      v38 = swift_slowAlloc();
      *v37 = v56;
      if (!v19)
      {
        sub_254FDE14C();
        sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
        *v39 = 4;
      }

      v40 = v19;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v41;
      *v38 = v41;
      _os_log_impl(&dword_254FBD000, v35, v36, "LiveGlobalKnowledgeQuerySource: callPegasusProxyWithTimeoutAndRetry all retries failed. Returning last retryable error: %@", v37, 0xCu);
      sub_254FC8740(v38, &qword_27F76CBE0, &qword_254FF3F40);
      sub_254FDE524();
      sub_254FDE524();
    }

    (*v57)(v33, v9);
    if (!v19)
    {
      sub_254FDE14C();
      sub_254FDE554(&type metadata for LiveGlobalKnowledgeError);
      *v42 = 4;
    }

    swift_willThrow();
  }
}

uint64_t sub_254FDE0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CC40, &qword_254FF3F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254FDE14C()
{
  result = qword_27F76CC48;
  if (!qword_27F76CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC48);
  }

  return result;
}

unint64_t sub_254FDE1A0()
{
  result = qword_27F76CC50;
  if (!qword_27F76CC50)
  {
    sub_254FF17E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC50);
  }

  return result;
}

unint64_t sub_254FDE1FC()
{
  result = qword_27F76CC60;
  if (!qword_27F76CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveGlobalKnowledgeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledgeError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x254FDE3A4);
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

__n128 sub_254FDE42C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254FDE440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_254FDE480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_254FDE524()
{

  JUMPOUT(0x259C32150);
}

uint64_t sub_254FDE554(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_254FDE56C()
{

  return swift_slowAlloc();
}

BOOL sub_254FDE584(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_254FDE59C()
{

  return swift_slowAlloc();
}

void sub_254FDE5BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_254FDE5DC()
{
}

uint64_t Location.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Location.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Location.addressString.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Location.address.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0x80uLL);
  memcpy(a1, (v1 + 48), 0x80uLL);
  return sub_254FDE6E0(__dst, v4);
}

uint64_t sub_254FDE6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254FC0048(&qword_27F76CC68, &qword_254FF40B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254FDE768@<X0>(uint64_t *a1@<X8>)
{
  result = Location.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FDE790(uint64_t a1)
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

uint64_t sub_254FDE7BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 201))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_254FDE7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Organization.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Organization.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Organization.domainName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_254FDE910@<X0>(uint64_t *a1@<X8>)
{
  result = Organization.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_254FDE938(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_254FDE94C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_254FDE98C(uint64_t result, int a2, int a3)
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

uint64_t PublicEvent.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PublicEvent.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PublicEvent.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PublicEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PublicEvent(0) + 28);

  return sub_254FDCD30(v3, a1);
}

uint64_t type metadata accessor for PublicEvent(uint64_t a1)
{
  result = qword_27F76CC70;
  if (!qword_27F76CC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254FDEB08@<X0>(uint64_t *a1@<X8>)
{
  result = PublicEvent.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_254FDEB44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v9 = a1 + *(a3 + 28);

    return sub_254FC5364(v9, a2, v8);
  }
}

uint64_t sub_254FDEBEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
    v8 = v5 + *(a4 + 28);

    return sub_254FC4BB8(v8, a2, a2, v7);
  }

  return result;
}

void sub_254FDEC78(uint64_t a1)
{
  sub_254FD6F54();
  if (v1 <= 0x3F)
  {
    sub_254FDCCB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for Reservation(uint64_t a1)
{
  result = qword_27F76CCA8;
  if (!qword_27F76CCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Reservation.attendees.getter()
{
  type metadata accessor for Reservation(0);
}

uint64_t Reservation.location.getter()
{
  v0 = sub_254FDFCA8();
  sub_254FDFCDC(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15], v9[16], v9[17], v9[18], v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[25]);
  sub_254FDFCC0();
  return sub_254FDF09C(v10, v9, &qword_27F76CC80, "45");
}

uint64_t Reservation.startingLocation.getter()
{
  v0 = sub_254FDFCA8();
  sub_254FDFCDC(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15], v9[16], v9[17], v9[18], v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[25]);
  sub_254FDFCC0();
  return sub_254FDF09C(v10, v9, &qword_27F76CC80, "45");
}

uint64_t Reservation.endLocation.getter()
{
  v0 = sub_254FDFCA8();
  sub_254FDFCDC(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10], v9[11], v9[12], v9[13], v9[14], v9[15], v9[16], v9[17], v9[18], v9[19], v9[20], v9[21], v9[22], v9[23], v9[24], v9[25]);
  sub_254FDFCC0();
  return sub_254FDF09C(v10, v9, &qword_27F76CC80, "45");
}

uint64_t Reservation.bookingProvider.getter()
{
  type metadata accessor for Reservation(0);
  sub_254FDFC80();
  return sub_254FBF6B0();
}

uint64_t Reservation.businessName.getter()
{
  type metadata accessor for Reservation(0);
  sub_254FDFC80();
  return sub_254FBF6B0();
}

uint64_t sub_254FDF09C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254FC0048(a3, a4);
  v5 = sub_254FBF6B0();
  v6(v5);
  return a2;
}

uint64_t Reservation.phoneNumber.getter()
{
  type metadata accessor for Reservation(0);
  sub_254FDFC80();
  return sub_254FBF6B0();
}

uint64_t Reservation.reservationId.getter()
{
  type metadata accessor for Reservation(0);
  sub_254FDFC80();
  return sub_254FBF6B0();
}

uint64_t Reservation.confirmationNumber.getter()
{
  type metadata accessor for Reservation(0);
  sub_254FDFC80();
  return sub_254FBF6B0();
}

uint64_t Reservation.status.getter()
{
  type metadata accessor for Reservation(0);
  sub_254FDFC80();
  return sub_254FBF6B0();
}

uint64_t Reservation.seatNumbers.getter()
{
  type metadata accessor for Reservation(0);
}

uint64_t Reservation.roomNumbers.getter()
{
  type metadata accessor for Reservation(0);
}

uint64_t sub_254FDF228@<X0>(uint64_t *a1@<X8>)
{
  result = Reservation.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatformDataActions::ReservationType_optional __swiftcall ReservationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReservationType.rawValue.getter()
{
  result = 0x746867696C66;
  switch(*v0)
  {
    case 1:
      result = 0x6C65746F68;
      break;
    case 2:
      result = 0x72656E6E6964;
      break;
    case 3:
      result = 0x726F70736E617274;
      break;
    case 4:
      result = 0x656C6369686576;
      break;
    case 5:
      result = 2003789939;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254FDF384()
{
  result = qword_27F76CC90;
  if (!qword_27F76CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC90);
  }

  return result;
}

uint64_t sub_254FDF3FC@<X0>(uint64_t *a1@<X8>)
{
  result = ReservationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_254FDF428()
{
  result = qword_27F76CC98;
  if (!qword_27F76CC98)
  {
    sub_254FC5448(&qword_27F76CCA0, &qword_254FF43B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CC98);
  }

  return result;
}

uint64_t sub_254FDF4B0(uint64_t a1, uint64_t a2, int *a3)
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
    sub_254FC0048(&qword_27F76C888, &unk_254FF3130);
    sub_254FDFC9C();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
      sub_254FDFC9C();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[13];
      }

      else
      {
        sub_254FC0048(&qword_27F76CC88, ",5");
        sub_254FDFC9C();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[17];
        }

        else
        {
          v10 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
          v11 = a3[18];
        }
      }
    }

    return sub_254FC5364(a1 + v11, a2, v10);
  }
}

uint64_t sub_254FDF63C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_254FC0048(&qword_27F76C888, &unk_254FF3130);
    sub_254FDFC9C();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
      sub_254FDFC9C();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[13];
      }

      else
      {
        sub_254FC0048(&qword_27F76CC88, ",5");
        sub_254FDFC9C();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[17];
        }

        else
        {
          v10 = sub_254FC0048(&qword_27F76C910, &qword_254FF31C0);
          v11 = a4[18];
        }
      }
    }

    return sub_254FC4BB8(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_254FDF7B0(uint64_t a1)
{
  sub_254FDFAC8(319, &qword_27F76CCB8, MEMORY[0x277CB9DB8], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_254FDFAC8(319, &qword_27F76CCC0, MEMORY[0x277CB9DB8], MEMORY[0x277D83940]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_254FDFB2C(319, &qword_27F76CCC8, &type metadata for Location, MEMORY[0x277D83D88]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_254FDFB2C(319, &qword_27F76CCD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_254FDFAC8(319, &qword_27F76CB58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_254FDFB2C(319, &qword_27F76CB60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              sub_254FDFAC8(319, &qword_27F76CCD8, MEMORY[0x277CBA1B8], MEMORY[0x277D83D88]);
              if (v15 > 0x3F)
              {
                return v14;
              }

              sub_254FDFAC8(319, &qword_27F76C960, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
              if (v16 > 0x3F)
              {
                return v14;
              }

              else
              {
                sub_254FDFB2C(319, &qword_27F76CCE0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                v2 = v17;
                if (v18 <= 0x3F)
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

  return v2;
}

void sub_254FDFAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_254FDFB2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ReservationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x254FDFC48);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254FDFC80()
{
}

uint64_t sub_254FDFCA8()
{

  return type metadata accessor for Reservation(0);
}

void *sub_254FDFCC0()
{

  return memcpy(v0, (v1 + v2), 0xC9uLL);
}

void *sub_254FDFCDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  return memcpy(va, (v34 + v35), 0xC9uLL);
}

uint64_t sub_254FDFCF8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_254FDF09C(v4 + a3, v3, a1, a2);
}

uint64_t Software.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Software.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Software.bundleId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void Software.publisher.getter(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_254FDFDBC(v2, v3, v4, v5, v6, v7);
}

void sub_254FDFDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_254FDFE0C@<X0>(uint64_t *a1@<X8>)
{
  result = Software.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatformDataActions::SoftwareCategory_optional __swiftcall SoftwareCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_254FF2324();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SoftwareCategory.rawValue.getter()
{
  result = 0x73656D6147;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6961747265746E45;
      break;
    case 3:
      result = 0x6976697461657243;
      break;
    case 4:
      result = 0x69746375646F7250;
      break;
    case 5:
      result = 0x6F69746163756445;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x726568744FLL;
      break;
    case 9:
      result = 0x656974696C697455;
      break;
    case 0xA:
      result = 0x6D6574737953;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x6C6576617254;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254FE0058()
{
  result = qword_27F76CCE8;
  if (!qword_27F76CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CCE8);
  }

  return result;
}

unint64_t sub_254FE00D0@<X0>(unint64_t *a1@<X8>)
{
  result = SoftwareCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_254FE00FC()
{
  result = qword_27F76CCF0;
  if (!qword_27F76CCF0)
  {
    sub_254FC5448(&qword_27F76CCF8, &qword_254FF45A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F76CCF0);
  }

  return result;
}

uint64_t sub_254FE0170(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_254FE0188(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_254FE01C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SoftwareCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SoftwareCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
        JUMPOUT(0x254FE0384);
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

void sub_254FE03BC(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v7 = *(result + 16);
  v32 = MEMORY[0x277D84F90];
  v8 = result + 40;
  v31 = result + 40;
LABEL_2:
  for (i = v8 + 16 * v6; ; i += 16)
  {
    if (v7 == v6)
    {

      return;
    }

    if (v6 >= v7)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_24;
    }

    v10 = *(i - 8);
    swift_beginAccess();
    v11 = *a2;
    v12 = *(*a2 + 16);

    if (!v12 || (v13 = sub_254FC4A60(v10), (v14 & 1) == 0))
    {
      swift_endAccess();

      memset(&v43, 0, 64);
      goto LABEL_16;
    }

    v15 = (*(v11 + 56) + 16 * v13);
    v16 = v15[1];
    v44 = *v15;
    swift_endAccess();
    v17 = *a3;
    if (!*(*a3 + 16))
    {
      v21 = 0;
      v22 = 0;
      goto LABEL_13;
    }

    v18 = sub_254FC4A60(v10);
    if (v19)
    {
      v20 = (*(v17 + 56) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
LABEL_13:

      goto LABEL_15;
    }

    v21 = 0;
    v22 = 0;
LABEL_15:
    id._countAndFlagsBits = a4;
    id._object = a5;
    v23._countAndFlagsBits = v44;
    v23._object = v16;
    v24.value._countAndFlagsBits = v21;
    v24.value._object = v22;
    SportsAction.getTeamForId(id:shortName:)(&v43, v23, v24);

    if (v43.value.id._object)
    {
      id = v43.value.id;
      name = v43.value.name;
      league = v43.value.league;
      imageData = v43.value.imageData;
      v25 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254FC4070();
        v25 = v29;
      }

      v8 = v31;
      v26 = *(v25 + 16);
      if (v26 >= *(v25 + 24) >> 1)
      {
        sub_254FC4070();
        v25 = v30;
      }

      v37 = league;
      v38 = imageData;
      v27 = id;
      v36 = name;
      *(v25 + 16) = v26 + 1;
      v32 = v25;
      v28 = (v25 + (v26 << 6));
      v28[4] = v37;
      v28[5] = v38;
      v28[2] = v27;
      v28[3] = v36;
      ++v6;
      goto LABEL_2;
    }

LABEL_16:
    id = v43.value.id;
    name = v43.value.name;
    league = v43.value.league;
    imageData = v43.value.imageData;
    sub_254FC538C(&id, &qword_27F76CD80, &qword_254FF47C8);
    ++v6;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_254FE065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_254FC0048(&qword_27F76CD38, "B1");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SportsAction.CacheEntry(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_254FC5364(a1, 1, v14) == 1)
  {
    sub_254FC538C(a1, &qword_27F76CD38, "B1");
    sub_254FE95E0(v10, a2);

    return sub_254FC538C(v10, &qword_27F76CD38, "B1");
  }

  else
  {
    sub_254FEDBC0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_254FE9728(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_254FE07FC()
{
  v0 = sub_254FE9880(&unk_286730B08);
  if (qword_27F76C790 != -1)
  {
    swift_once();
  }

  qword_27F76CD00 = v0;
  *algn_27F76CD08 = qword_27F76C9A0;
}

uint64_t SportsAction.init(dataActionsQueryService:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_254FE9880(&unk_286730B48);
  v5 = result;
  if (!v3)
  {
    if (qword_27F76C790 != -1)
    {
      swift_once();
    }

    v3 = qword_27F76C9A0;
  }

  *a2 = v5;
  a2[1] = v3;
  return result;
}

uint64_t static SportsAction.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F76C7B8 != -1)
  {
    swift_once();
  }

  v2 = *algn_27F76CD08;
  *a1 = qword_27F76CD00;
  a1[1] = v2;
}

uint64_t sub_254FE0978()
{
  type metadata accessor for SportsAction.CacheStorage();
  v0 = swift_allocObject();
  type metadata accessor for SportsAction.CacheEntry(0);
  result = sub_254FF1EE4();
  *(v0 + 16) = result;
  off_27F76CD10 = v0;
  return result;
}

uint64_t sub_254FE09E0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_254FE0A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v40 - v5;
  v6 = sub_254FF1CF4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_254FF1D04();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_254FF1CE4();
  v9 = *(v51 - 1);
  MEMORY[0x28223BE20](v51);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_254FF1CD4();
  v12 = *(v56 - 8);
  v13 = MEMORY[0x28223BE20](v56);
  v52 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  v47 = a2;
  if (v17)
  {
    v57 = MEMORY[0x277D84F90];
    sub_254FC4DF8(0, v17, 0);
    v19 = v57;
    LODWORD(v50) = *MEMORY[0x277D1F358];
    v49 = *(v9 + 104);
    *&v48 = v12 + 32;
    v20 = a1 + 40;
    do
    {
      (v49)(v11, v50, v51);

      sub_254FF1CC4();
      v57 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_254FC4DF8(v21 > 1, v22 + 1, 1);
        v19 = v57;
      }

      *(v19 + 16) = v22 + 1;
      (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v16, v56);
      v20 += 16;
      --v17;
    }

    while (v17);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v23 = *(v19 + 16);
  if (v23)
  {
    v57 = v18;
    sub_254FC4DD8(0, v23, 0);
    v25 = v56;
    v24 = v57;
    v27 = *(v12 + 16);
    v26 = v12 + 16;
    v28 = v19 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v50 = *(v26 + 56);
    v51 = v27;
    v49 = (v26 - 8);
    v48 = xmmword_254FF3720;
    v29 = v55;
    do
    {
      v31 = v51;
      v30 = v52;
      v51(v52, v28, v25);
      v32 = *(v54 + 48);
      v31(v29, v30, v25);
      sub_254FC0048(&qword_27F76CD88, &qword_254FF47D0);
      sub_254FF1C84();
      v33 = swift_allocObject();
      *(v33 + 16) = v48;
      v29 = v55;
      sub_254FF1C34();
      v34 = sub_254FE9B28(v33);
      (*v49)(v30, v25);
      *&v29[v32] = v34;
      v57 = v24;
      v36 = *(v24 + 16);
      v35 = *(v24 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_254FC4DD8(v35 > 1, v36 + 1, 1);
        v24 = v57;
      }

      *(v24 + 16) = v36 + 1;
      sub_254FC57C8();
      v28 += v50;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_254FE108C(v24);
  v38 = v42;
  v37 = v43;
  *v42 = 0xD000000000000041;
  v38[1] = 0x8000000254FF61F0;
  (*(v41 + 104))(v38, *MEMORY[0x277D1F3B0], v37);
  (*(v45 + 104))(v44, *MEMORY[0x277D1F368], v46);
  return sub_254FF1CA4();
}

uint64_t sub_254FE108C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_254FC0048(&qword_27F76CD90, &qword_254FF47D8);
    v2 = sub_254FF2304();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v4 = v2;
  sub_254FE9E6C(a1, 1, &v4);
  return v4;
}

uint64_t sub_254FE1134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_254FC0048(&qword_27F76CAC0, &qword_254FF38D0);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v43 - v5;
  v6 = sub_254FF1CF4();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_254FF1D04();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_254FF1CE4();
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_254FF1CD4();
  v12 = *(v60 - 8);
  v13 = MEMORY[0x28223BE20](v60);
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  v50 = a2;
  if (v17)
  {
    v61 = MEMORY[0x277D84F90];
    sub_254FC4DF8(0, v17, 0);
    v19 = v61;
    LODWORD(v54) = *MEMORY[0x277D1F360];
    v21 = *(v9 + 104);
    v20 = v9 + 104;
    v52 = (v12 + 32);
    v53 = v21;
    v22 = a1 + 40;
    do
    {
      v23 = v20;
      v53(v11, v54, v55);

      sub_254FF1CC4();
      v61 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_254FC4DF8(v24 > 1, v25 + 1, 1);
        v19 = v61;
      }

      *(v19 + 16) = v25 + 1;
      (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v16, v60);
      v22 += 16;
      --v17;
      v20 = v23;
    }

    while (v17);
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v26 = *(v19 + 16);
  if (v26)
  {
    v61 = v18;
    sub_254FC4DD8(0, v26, 0);
    v27 = v61;
    v29 = *(v12 + 16);
    v28 = v12 + 16;
    v30 = v19 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v53 = *(v28 + 56);
    v54 = v29;
    v55 = v28;
    v52 = (v28 - 8);
    v51 = xmmword_254FF46D0;
    v31 = v59;
    v32 = v56;
    do
    {
      v33 = v60;
      v34 = v54;
      v54(v32, v30, v60);
      v35 = *(v58 + 48);
      v34(v31, v32, v33);
      sub_254FC0048(&qword_27F76CD88, &qword_254FF47D0);
      sub_254FF1C84();
      v36 = swift_allocObject();
      *(v36 + 16) = v51;
      sub_254FF1C74();
      sub_254FF1C44();
      sub_254FF1C64();
      v31 = v59;
      sub_254FF1C54();
      v37 = sub_254FE9B28(v36);
      (*v52)(v32, v33);
      *&v31[v35] = v37;
      v61 = v27;
      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_254FC4DD8(v38 > 1, v39 + 1, 1);
        v27 = v61;
      }

      *(v27 + 16) = v39 + 1;
      sub_254FC57C8();
      v30 += v53;
      --v26;
    }

    while (v26);
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  sub_254FE108C(v27);
  v41 = v45;
  v40 = v46;
  *v45 = 0xD000000000000041;
  v41[1] = 0x8000000254FF61F0;
  (*(v44 + 104))(v41, *MEMORY[0x277D1F3B0], v40);
  (*(v48 + 104))(v47, *MEMORY[0x277D1F368], v49);
  return sub_254FF1CA4();
}

void sub_254FE17D8(uint64_t a1@<X8>)
{
  v4 = sub_254FF1EB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  os_unfair_lock_lock((v8 + 24));
  sub_254FC827C((v8 + 16), &v14);
  if (v2)
  {
    os_unfair_lock_unlock((v8 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v8 + 24));
    v17[0] = v14;
    v17[1] = v15;
    v18 = v16;
    if (*(&v15 + 1))
    {
      sub_254FC38F0(v17, a1);
    }

    else
    {
      sub_254FC538C(v17, &qword_27F76C9B0, &unk_254FF3640);
      sub_254FF1D14();
      v9 = sub_254FF1EA4();
      v10 = sub_254FF2164();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_254FBD000, v9, v10, "SportsAction: processEventDetails: liveGlobalKnowledgeQuerySource is nil", v11, 2u);
        MEMORY[0x259C32150](v11, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      sub_254FDE14C();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
    }
  }
}

void sub_254FE19CC(uint64_t a1@<X8>)
{
  v4 = sub_254FF1EB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  os_unfair_lock_lock((v8 + 24));
  sub_254FC80C0((v8 + 16), &v14);
  if (v2)
  {
    os_unfair_lock_unlock((v8 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v8 + 24));
    v17[0] = v14;
    v17[1] = v15;
    v18 = v16;
    if (*(&v15 + 1))
    {
      sub_254FC38F0(v17, a1);
    }

    else
    {
      sub_254FC538C(v17, &qword_27F76C840, &qword_254FF4810);
      sub_254FF1D14();
      v9 = sub_254FF1EA4();
      v10 = sub_254FF2164();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_254FBD000, v9, v10, "SportsAction: processEventDetails: sqlConnection is nil", v11, 2u);
        MEMORY[0x259C32150](v11, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      sub_254FC389C();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_254FE1BBC(uint64_t a1)
{
  v3 = v2;
  v430 = a1;
  v4 = sub_254FC0048(&qword_27F76CD50, &unk_254FF47A0);
  MEMORY[0x28223BE20](v4 - 8);
  v359 = &v341 - v5;
  v358 = type metadata accessor for SportsEvent(0);
  v354 = *(v358 - 8);
  v6 = MEMORY[0x28223BE20](v358);
  v361 = &v341 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v355 = &v341 - v8;
  v389 = sub_254FF1614();
  v365 = *(v389 - 8);
  v9 = MEMORY[0x28223BE20](v389);
  v357 = &v341 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v363 = &v341 - v11;
  v12 = sub_254FF17B4();
  MEMORY[0x28223BE20](v12 - 8);
  v416 = &v341 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = sub_254FF1C84();
  *&v432 = *(v429 - 8);
  v14 = MEMORY[0x28223BE20](v429);
  v394 = &v341 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v396 = &v341 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v415 = &v341 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v428 = &v341 - v21;
  MEMORY[0x28223BE20](v20);
  v447 = &v341 - v22;
  v400 = sub_254FF1684();
  v417 = *(v400 - 8);
  MEMORY[0x28223BE20](v400);
  v427 = &v341 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_254FC0048(&qword_27F76CA00, &qword_254FF3790);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v364 = &v341 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v401 = &v341 - v28;
  MEMORY[0x28223BE20](v27);
  v392 = &v341 - v29;
  v382 = sub_254FF1744();
  v367 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v381 = &v341 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v390 = sub_254FF1814();
  v410 = *(v390 - 8);
  MEMORY[0x28223BE20](v390);
  v399 = &v341 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = sub_254FF1EB4();
  v368 = *(v369 - 8);
  v32 = MEMORY[0x28223BE20](v369);
  v362 = &v341 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v370 = &v341 - v35;
  MEMORY[0x28223BE20](v34);
  v366 = &v341 - v36;
  v377 = sub_254FF16C4();
  v426 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v376 = &v341 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_254FC0048(&qword_27F76CD58, &qword_254FF47B0);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v397 = (&v341 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  *&v391 = &v341 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v393 = &v341 - v44;
  MEMORY[0x28223BE20](v43);
  v414 = &v341 - v45;
  v431 = sub_254FF1794();
  *&v425 = *(v431 - 8);
  v46 = MEMORY[0x28223BE20](v431);
  v380 = &v341 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v407 = &v341 - v49;
  MEMORY[0x28223BE20](v48);
  v422 = &v341 - v50;
  v418 = sub_254FF16A4();
  v419 = *(v418 - 8);
  v51 = MEMORY[0x28223BE20](v418);
  v360 = &v341 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v379 = &v341 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v375 = &v341 - v56;
  MEMORY[0x28223BE20](v55);
  v405 = (&v341 - v57);
  v404 = sub_254FF1834();
  *&v409 = *(v404 - 8);
  MEMORY[0x28223BE20](v404);
  *&v403 = &v341 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_254FF17A4();
  v60 = MEMORY[0x28223BE20](v59 - 8);
  v372 = &v341 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  *&v421 = &v341 - v62;
  v386 = sub_254FF1C14();
  v412 = *(v386 - 8);
  v63 = MEMORY[0x28223BE20](v386);
  v371 = &v341 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v423 = &v341 - v66;
  MEMORY[0x28223BE20](v65);
  *&v420 = &v341 - v67;
  v395 = sub_254FF1724();
  v424 = *(v395 - 8);
  v68 = MEMORY[0x28223BE20](v395);
  v356 = &v341 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v388 = &v341 - v71;
  MEMORY[0x28223BE20](v70);
  v433 = &v341 - v72;
  v73 = sub_254FF17E4();
  v373 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v75 = &v341 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_254FF1CB4();
  v77 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v79 = &v341 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v1[1];
  *&v440 = *v1;
  v81 = v440;
  *(&v440 + 1) = v80;
  sub_254FE1134(v430, v79);
  *&v436 = v81;
  *(&v436 + 1) = v80;
  sub_254FE17D8(&v440);
  if (v2)
  {
    return (*(v77 + 8))(v79, v76);
  }

  v343 = v80;
  v344 = v81;
  v348 = v73;
  v351 = v77;
  v353 = v76;
  v83 = *(&v441 + 1);
  v84 = v442;
  sub_254FC3908(&v440, *(&v441 + 1));
  (*(v84 + 8))(v79, v83, v84);
  v342 = v79;
  sub_254FC49C4(&v440);
  v350 = sub_254FF1EE4();
  v446 = v350;
  v345 = sub_254FF1EE4();
  v445 = v345;
  v346 = v75;
  v85 = sub_254FF17D4();
  v86 = 0;
  v406 = *(v85 + 16);
  v87 = v424;
  v413 = v424 + 16;
  v408 = v412 + 1;
  v412 = (v424 + 8);
  v385 = v409 + 16;
  v398 = v419 + 1;
  v384 = v409 + 8;
  v383 = v425 + 16;
  v352 = *MEMORY[0x277D38F98];
  v419 = (v425 + 8);
  v347 = v426 + 1;
  v88 = v395;
  v89 = v432;
  v90 = v433;
  v402 = v85;
LABEL_4:
  v91 = v373;
  v92 = v386;
  while (v406 != v86)
  {
    if (v86 >= *(v85 + 16))
    {
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v93 = v85 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v94 = *(v87 + 72);
    v426 = v86;
    (*(v87 + 16))(v90, v93 + v94 * v86, v88);
    sub_254FF1674();
    v95 = v420;
    sub_254FF1BE4();
    if (v3)
    {

      (*v412)(v90, v88);
      (*(v91 + 8))(v346, v348);
      (*(v351 + 8))(v342, v353);
    }

    v96 = v423;
    sub_254FF1BF4();
    sub_254FEDC98(&qword_27F76CD60, MEMORY[0x277D1F200], MEMORY[0x277D1F208]);
    v97 = v95;
    v98 = sub_254FF1F14();
    v99 = *v408;
    (*v408)(v96, v92);
    v99(v97, v92);
    if (v98)
    {
      v430 = 0;
      *&v387 = sub_254FF16F4();
      v100 = v345;
      v89 = v432;
      v101 = v425;
      v102 = v405;
      v103 = v404;
      v104 = v409;
      v105 = v403;
      v378 = *(v387 + 16);
      if (v378)
      {
        v106 = 0;
        v374 = v387 + ((*(v409 + 80) + 32) & ~*(v409 + 80));
        do
        {
          if (v106 >= *(v387 + 16))
          {
            goto LABEL_167;
          }

          v107 = v105;
          v108 = v103;
          (*(v104 + 16))(v105, v374 + *(v104 + 72) * v106, v103);
          sub_254FF1704();
          v109 = sub_254FF1694();
          v110 = v104;
          v112 = v111;
          (*v398)(v102, v418);
          v113 = sub_254FF1664();
          v411 = v114;
          (*(v110 + 8))(v107, v108);
          v115 = v445;
          swift_isUniquelyReferenced_nonNull_native();
          *&v440 = v115;
          v116 = sub_254FC4A60(v109);
          if (__OFADD__(*(v115 + 16), (v117 & 1) == 0))
          {
            goto LABEL_168;
          }

          v118 = v116;
          v119 = v117;
          sub_254FC0048(&qword_27F76CD68, &qword_254FF47B8);
          if (sub_254FF22A4())
          {
            v120 = sub_254FC4A60(v109);
            v89 = v432;
            if ((v119 & 1) != (v121 & 1))
            {
              goto LABEL_178;
            }

            v118 = v120;
            if ((v119 & 1) == 0)
            {
LABEL_17:
              v100 = v440;
              *(v440 + 8 * (v118 >> 6) + 64) |= 1 << v118;
              v122 = (v100[6] + 16 * v118);
              *v122 = v109;
              v122[1] = v112;
              v123 = (v100[7] + 16 * v118);
              v124 = v411;
              *v123 = v113;
              v123[1] = v124;
              v125 = v100[2];
              v126 = __OFADD__(v125, 1);
              v127 = v125 + 1;
              if (v126)
              {
                goto LABEL_170;
              }

              v100[2] = v127;
              goto LABEL_21;
            }
          }

          else
          {
            v89 = v432;
            if ((v119 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v100 = v440;
          v128 = (*(v440 + 56) + 16 * v118);
          v129 = v411;
          *v128 = v113;
          v128[1] = v129;

LABEL_21:
          ++v106;
          v445 = v100;
          v101 = v425;
          v102 = v405;
          v103 = v404;
          v104 = v409;
          v105 = v403;
        }

        while (v378 != v106);
      }

      v345 = v100;

      v90 = v433;
      v130 = sub_254FF16E4();
      v411 = *(v130 + 16);
      if (v411)
      {
        v131 = 0;
        *&v387 = v130 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v3 = v430;
        v88 = v395;
        v378 = v130;
        while (1)
        {
          if (v131 >= *(v130 + 16))
          {
            goto LABEL_169;
          }

          v132 = v387 + *(v101 + 72) * v131;
          v133 = *(v101 + 16);
          v134 = v422;
          v135 = v431;
          v133(v422, v132, v431);
          sub_254FF1784();
          v136 = v414;
          v137 = sub_254FF1774();
          if (sub_254FC5364(v136, 1, v137) == 1)
          {
            (*v419)(v134, v135);
          }

          else
          {
            v138 = v393;
            sub_254FC5770();
            v139 = *(v137 - 8);
            v140 = (*(v139 + 88))(v138, v137);
            if (v140 == v352)
            {
              v141 = v375;
              sub_254FF1704();
              v142 = sub_254FF1694();
              v144 = v143;
              (*v398)(v141, v418);
              v145 = v376;
              sub_254FF1754();
              v349 = sub_254FF1694();
              v350 = v146;
              (*v347)(v145, v377);
              v147 = v446;
              swift_isUniquelyReferenced_nonNull_native();
              *&v440 = v147;
              v374 = v142;
              v148 = v144;
              v149 = sub_254FC4A60(v142);
              if (__OFADD__(*(v147 + 16), (v150 & 1) == 0))
              {
                goto LABEL_172;
              }

              v151 = v149;
              v152 = v150;
              sub_254FC0048(&qword_27F76CD68, &qword_254FF47B8);
              if (sub_254FF22A4())
              {
                v153 = sub_254FC4A60(v374);
                v155 = v431;
                v90 = v433;
                if ((v152 & 1) != (v154 & 1))
                {
                  goto LABEL_178;
                }

                v151 = v153;
                if ((v152 & 1) == 0)
                {
LABEL_32:
                  v156 = v440;
                  *(v440 + 8 * (v151 >> 6) + 64) |= 1 << v151;
                  v157 = (v156[6] + 16 * v151);
                  *v157 = v374;
                  v157[1] = v148;
                  v158 = (v156[7] + 16 * v151);
                  v159 = v350;
                  *v158 = v349;
                  v158[1] = v159;
                  (*v419)(v422, v155);
                  v160 = v156[2];
                  v126 = __OFADD__(v160, 1);
                  v161 = v160 + 1;
                  if (v126)
                  {
                    goto LABEL_175;
                  }

                  v162 = v156;
                  v156[2] = v161;
                  goto LABEL_37;
                }
              }

              else
              {
                v155 = v431;
                v90 = v433;
                if ((v152 & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              v163 = v440;
              v164 = (*(v440 + 56) + 16 * v151);
              v165 = v350;
              *v164 = v349;
              v164[1] = v165;

              (*v419)(v422, v155);
              v162 = v163;
LABEL_37:
              v3 = v430;
              v88 = v395;
              v89 = v432;
              v136 = v414;
              v350 = v162;
              v446 = v162;
              (*(v139 + 8))(v393, v137);
              goto LABEL_38;
            }

            (*v419)(v422, v431);
            (*(v139 + 8))(v138, v137);
          }

LABEL_38:
          ++v131;
          sub_254FC538C(v136, &qword_27F76CD58, &qword_254FF47B0);
          v101 = v425;
          v130 = v378;
          if (v411 == v131)
          {
            goto LABEL_41;
          }
        }
      }

      v3 = v430;
      v88 = v395;
LABEL_41:
      v86 = v426 + 1;

      (*v412)(v90, v88);
      v87 = v424;
      v85 = v402;
      goto LABEL_4;
    }

    v90 = v433;
    (*v412)(v433, v88);
    v86 = v426 + 1;
    v87 = v424;
    v89 = v432;
    v85 = v402;
  }

  v166 = v366;
  sub_254FF1D14();
  v167 = sub_254FF1EA4();
  v168 = sub_254FF2164();
  v169 = os_log_type_enabled(v167, v168);
  v170 = &unk_254FF3000;
  v430 = v3;
  if (v169)
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    *&v440 = v172;
    *v171 = 136642819;

    v173 = sub_254FF1ED4();
    v175 = v174;
    v170 = &unk_254FF3000;

    v176 = sub_254FC4454(v173, v175, &v440);

    *(v171 + 4) = v176;
    _os_log_impl(&dword_254FBD000, v167, v168, "SportsAction: teamSbIdToUmcId: %{sensitive}s", v171, 0xCu);
    sub_254FC49C4(v172);
    MEMORY[0x259C32150](v172, -1, -1);
    MEMORY[0x259C32150](v171, -1, -1);
  }

  v406 = *(v368 + 8);
  v406(v166, v369);
  v177 = v370;
  v178 = v391;
  v179 = v367;
  v180 = sub_254FF1EE4();
  v181 = sub_254FF17C4();
  v182 = *(v181 + 16);
  v183 = v399;
  if (v182)
  {
    v433 = *(v410 + 2);
    v184 = (*(v410 + 80) + 32) & ~*(v410 + 80);
    v405 = v181;
    v185 = v181 + v184;
    v426 = *(v410 + 9);
    *&v425 = v410 + 8;
    *&v409 = v179 + 8;
    LODWORD(v420) = *MEMORY[0x277D38FA0];
    v186 = v390;
    v187 = v407;
    v410 = (v410 + 16);
    do
    {
      (v433)(v183, v185, v186);
      sub_254FF1804();
      sub_254FF1784();
      v188 = *v419;
      (*v419)(v187, v431);
      v189 = sub_254FF1774();
      if (sub_254FC5364(v178, 1, v189) == 1)
      {
        (*v425)(v183, v186);
      }

      else
      {
        v190 = v397;
        sub_254FC5770();
        v191 = *(v189 - 8);
        v192 = (*(v191 + 88))(v190, v189);
        if (v192 == v420)
        {
          v193 = v379;
          sub_254FF17F4();
          *&v421 = sub_254FF1694();
          v422 = v194;
          (*v398)(v193, v418);
          v195 = v380;
          sub_254FF1804();
          v196 = v381;
          sub_254FF1764();
          v188(v195, v431);
          v411 = sub_254FF1694();
          v414 = v197;
          (*v409)(v196, v382);
          swift_isUniquelyReferenced_nonNull_native();
          *&v440 = v180;
          v198 = sub_254FC4A60(v421);
          if (__OFADD__(v180[2], (v199 & 1) == 0))
          {
            goto LABEL_171;
          }

          v200 = v198;
          v201 = v199;
          sub_254FC0048(&qword_27F76CD68, &qword_254FF47B8);
          if (sub_254FF22A4())
          {
            v202 = sub_254FC4A60(v421);
            if ((v201 & 1) != (v203 & 1))
            {
              goto LABEL_178;
            }

            v200 = v202;
          }

          v186 = v390;
          v180 = v440;
          if (v201)
          {
            v204 = (*(v440 + 56) + 16 * v200);
            v205 = v414;
            *v204 = v411;
            v204[1] = v205;
          }

          else
          {
            *(v440 + 8 * (v200 >> 6) + 64) |= 1 << v200;
            v206 = (v180[6] + 16 * v200);
            v207 = v422;
            *v206 = v421;
            v206[1] = v207;
            v208 = (v180[7] + 16 * v200);
            v209 = v414;
            *v208 = v411;
            v208[1] = v209;
            v210 = v180[2];
            v126 = __OFADD__(v210, 1);
            v211 = v210 + 1;
            if (v126)
            {
              goto LABEL_174;
            }

            v180[2] = v211;
          }

          v183 = v399;
          v212 = v397;
          v178 = v391;
          (*v425)(v399, v186);
          (*(v191 + 8))(v212, v189);
        }

        else
        {
          v183 = v399;
          v186 = v390;
          (*v425)(v399, v390);
          (*(v191 + 8))(v190, v189);
          v178 = v391;
        }
      }

      sub_254FC538C(v178, &qword_27F76CD58, &qword_254FF47B0);
      v185 += v426;
      --v182;
      v187 = v407;
    }

    while (v182);

    v89 = v432;
    v177 = v370;
    v170 = &unk_254FF3000;
  }

  else
  {
  }

  sub_254FF1D14();
  v213 = v177;
  v214 = sub_254FF1EA4();
  v215 = sub_254FF2164();
  v216 = os_log_type_enabled(v214, v215);
  v405 = v180;
  if (v216)
  {
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    *&v440 = v218;
    *v217 = v170[483];

    v219 = sub_254FF1ED4();
    v221 = v220;

    v222 = sub_254FC4454(v219, v221, &v440);

    *(v217 + 4) = v222;
    _os_log_impl(&dword_254FBD000, v214, v215, "SportsAction: eventSbIdToStatsId: %{sensitive}s", v217, 0xCu);
    sub_254FC49C4(v218);
    MEMORY[0x259C32150](v218, -1, -1);
    MEMORY[0x259C32150](v217, -1, -1);

    v223 = (v368 + 8);
    v224 = v370;
  }

  else
  {

    v223 = (v368 + 8);
    v224 = v213;
  }

  v393 = v223;
  v406(v224, v369);
  v225 = v389;
  v226 = v423;
  v227 = sub_254FF17D4();
  v228 = 0;
  v414 = *(v227 + 16);
  v431 = v417 + 16;
  v426 = (v417 + 8);
  v402 = (v365 + 32);
  v399 = (v365 + 16);
  v397 = (v365 + 8);
  *&v229 = v170[483];
  v391 = v229;
  v404 = MEMORY[0x277D84F90];
  v230 = v392;
  v411 = v227;
  v433 = (v89 + 8);
  while (2)
  {
    v231 = v353;
    v232 = v424;
    while (1)
    {
      if (v228 == v414)
      {

        (*(v373 + 8))(v346, v348);
        (*(v351 + 8))(v342, v231);

        return v404;
      }

      if (v228 >= *(v227 + 16))
      {
        goto LABEL_173;
      }

      v233 = v230;
      v234 = *(v232 + 16);
      v234(v388, v227 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v228, v395);
      sub_254FC4BB8(v233, 1, 1, v225);
      sub_254FF1674();
      v235 = v371;
      v236 = v430;
      sub_254FF1BE4();
      v430 = v236;
      if (v236)
      {

        sub_254FC538C(v233, &qword_27F76CA00, &qword_254FF3790);
        (*v412)(v388, v395);
        (*(v373 + 8))(v346, v348);
        (*(v351 + 8))(v342, v353);
      }

      v410 = v234;
      v422 = v228 + 1;
      sub_254FF1C04();
      sub_254FEDC98(&qword_27F76CD60, MEMORY[0x277D1F200], MEMORY[0x277D1F208]);
      v237 = v386;
      v238 = v235;
      v239 = sub_254FF1F14();
      v240 = *v408;
      (*v408)(v226, v237);
      v240(v238, v237);
      if (v239)
      {
        break;
      }

      v230 = v392;
      sub_254FC538C(v392, &qword_27F76CA00, &qword_254FF3790);
      (*v412)(v388, v395);
LABEL_132:
      v231 = v353;
      v226 = v423;
LABEL_133:
      v232 = v424;
      v227 = v411;
      v228 = v422;
    }

    v241 = sub_254FF1714();
    v407 = 0;
    v419 = 0;
    *&v409 = 0;
    *&v420 = 0;
    v242 = 0;
    *&v432 = *(v241 + 16);
    *&v421 = MEMORY[0x277D84F90];
    v243 = v400;
    v244 = v433;
    *&v425 = v241;
LABEL_73:
    v245 = v427;
    while (v432 != v242)
    {
      if (v242 >= *(v241 + 16))
      {
        goto LABEL_166;
      }

      (*(v417 + 16))(v245, v241 + ((*(v417 + 80) + 32) & ~*(v417 + 80)) + *(v417 + 72) * v242, v243);
      sub_254FF1674();
      v246 = v430;
      sub_254FF1C24();
      v430 = v246;
      if (v246)
      {

        (*v426)(v427, v243);
        sub_254FC538C(v392, &qword_27F76CA00, &qword_254FF3790);
        (*v412)(v388, v395);
        (*(v373 + 8))(v346, v348);
        (*(v351 + 8))(v342, v353);
      }

      sub_254FF1C44();
      sub_254FEDC98(&qword_27F76CD70, MEMORY[0x277D1F310], MEMORY[0x277D1F328]);
      sub_254FF2024();
      sub_254FF2024();
      if (v440 == v436 && *(&v440 + 1) == *(&v436 + 1))
      {
        v248 = 1;
      }

      else
      {
        v248 = sub_254FF2364();
      }

      v249 = *v244;
      v250 = v429;
      v249(v428, v429);

      if (v248)
      {
        v273 = sub_254FF1664();
        v275 = v274;
        v276 = v421;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v403 = v275;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_254FC3D0C();
          v276 = v288;
        }

        v278 = *(v276 + 16);
        if (v278 >= *(v276 + 24) >> 1)
        {
          sub_254FC3D0C();
          *&v421 = v289;
        }

        else
        {
          *&v421 = v276;
        }

        ++v242;
        v279 = v433;
        v249(v447, v429);
        (*v426)(v427, v243);
        v280 = v421;
        *(v421 + 16) = v278 + 1;
        v281 = v280 + 16 * v278;
        v244 = v279;
        v282 = v403;
        *(v281 + 32) = v273;
        *(v281 + 40) = v282;
        goto LABEL_127;
      }

      v251 = v415;
      sub_254FF1C74();
      sub_254FF2024();
      sub_254FF2024();
      if (v440 == v436 && *(&v440 + 1) == *(&v436 + 1))
      {
        v249(v251, v250);
      }

      else
      {
        v253 = sub_254FF2364();
        v254 = v251;
        v255 = v253;
        v249(v254, v250);

        if ((v255 & 1) == 0)
        {
          v256 = v429;
          goto LABEL_105;
        }
      }

      v257 = sub_254FF1664();
      v259 = v258;
      *&v436 = 0;
      MEMORY[0x28223BE20](v257);
      *(&v341 - 2) = &v436;
      v256 = v429;
      if ((v259 & 0x1000000000000000) == 0)
      {
        if ((v259 & 0x2000000000000000) != 0)
        {
          *&v440 = v260;
          *(&v440 + 1) = v259 & 0xFFFFFFFFFFFFFFLL;
          if (v260 >= 0x21u || ((0x100003E01uLL >> v260) & 1) == 0)
          {
            goto LABEL_99;
          }

LABEL_101:
          v263 = 0;
LABEL_102:
          LOBYTE(v434) = v263;
          goto LABEL_103;
        }

        if ((v260 & 0x1000000000000000) != 0)
        {
          v261 = *((v259 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v261 < 0x21 && ((0x100003E01uLL >> v261) & 1) != 0)
          {
            goto LABEL_101;
          }

LABEL_99:
          v262 = _swift_stdlib_strtod_clocale();
          if (!v262)
          {
            goto LABEL_101;
          }

          v263 = *v262 == 0;
          goto LABEL_102;
        }
      }

      v272 = v430;
      sub_254FF2244();
      v430 = v272;
LABEL_103:

      if (v434)
      {
        v264 = v401;
        sub_254FF15D4();
        v249(v447, v256);
        v245 = v427;
        (*v426)(v427, v243);
        sub_254FC538C(v392, &qword_27F76CA00, &qword_254FF3790);
        sub_254FC4BB8(v264, 0, 1, v389);
        v244 = v433;
        sub_254FC57C8();
        goto LABEL_116;
      }

LABEL_105:
      v265 = v396;
      sub_254FF1C64();
      sub_254FF2024();
      sub_254FF2024();
      if (v440 == v436 && *(&v440 + 1) == *(&v436 + 1))
      {
        v249(v265, v256);

LABEL_124:

        v283 = v427;
        *&v409 = sub_254FF1664();
        *&v420 = v284;
        v244 = v433;
        v249(v447, v256);
        v243 = v400;
        (*v426)(v283, v400);
        ++v242;
        goto LABEL_73;
      }

      v267 = sub_254FF2364();
      v249(v265, v256);

      if (v267)
      {
        goto LABEL_124;
      }

      v268 = v394;
      sub_254FF1C54();
      sub_254FF2024();
      sub_254FF2024();
      v269 = v440 == v436 && *(&v440 + 1) == *(&v436 + 1);
      v243 = v400;
      if (v269)
      {
        v285 = v268;
        v244 = v433;
        v249(v285, v256);

LABEL_126:

        v286 = v427;
        v407 = sub_254FF1664();
        v419 = v287;
        v249(v447, v256);
        (*v426)(v286, v243);
        ++v242;
LABEL_127:
        v241 = v425;
        goto LABEL_73;
      }

      v270 = sub_254FF2364();
      v271 = v268;
      v244 = v433;
      v249(v271, v256);

      if (v270)
      {
        goto LABEL_126;
      }

      v249(v447, v256);
      v245 = v427;
      (*v426)(v427, v243);
LABEL_116:
      ++v242;
      v241 = v425;
    }

    v230 = v392;
    v290 = v364;
    sub_254FC5770();
    v225 = v389;
    if (sub_254FC5364(v290, 1, v389) == 1)
    {

      sub_254FC538C(v230, &qword_27F76CA00, &qword_254FF3790);
      (*v412)(v388, v395);

      sub_254FC538C(v290, &qword_27F76CA00, &qword_254FF3790);
      goto LABEL_132;
    }

    (*v402)(v363, v290, v225);
    v291 = v344;

    v292 = v343;

    v293 = v291;
    v294 = v430;
    sub_254FE03BC(v421, &v446, &v445, v293, v292);
    v430 = v294;
    v444 = v295;
    if (!v420)
    {

      v432 = 0u;
      v421 = 0u;
      v425 = 0u;
      v420 = 0u;
      v409 = 0u;
      v403 = 0u;
      v390 = 0u;
      v387 = 0u;
      v300 = v418;
LABEL_145:
      v305 = v360;
LABEL_146:
      v312 = v388;
      sub_254FF1704();
      v313 = sub_254FF1694();
      v315 = v314;
      (*v398)(v305, v300);
      v316 = sub_254FC0090(v313, v315, v405);
      v318 = v317;

      if (v318)
      {
        v319 = v316;
      }

      else
      {
        v319 = 0;
      }

      if (!v318)
      {
        v318 = 0xE000000000000000;
      }

      v320 = v444;
      v440 = v432;
      v441 = v421;
      v442 = v425;
      v443 = v420;
      v436 = v409;
      v437 = v403;
      v438 = v390;
      v439 = v387;
      v321 = v357;
      (*v399)(v357, v363, v225);

      v322 = v359;
      *&v432 = v320;
      SportsEvent.init(id:teams:homeTeam:awayTeam:startTime:firstTeamId:)(v319, v318, v320, &v440, &v436, v321, 0, v359);
      if (sub_254FC5364(v322, 1, v358) == 1)
      {
        sub_254FC538C(v322, &qword_27F76CD50, &unk_254FF47A0);
        v323 = v362;
        sub_254FF1D14();
        v324 = v356;
        v325 = v395;
        v410(v356, v312, v395);
        v326 = sub_254FF1EA4();
        v327 = sub_254FF2174();
        if (os_log_type_enabled(v326, v327))
        {
          v328 = swift_slowAlloc();
          v329 = swift_slowAlloc();
          *&v440 = v329;
          *v328 = v391;
          sub_254FEDC98(&qword_27F76CD78, MEMORY[0x277D38EE0], MEMORY[0x277D38ED8]);
          v330 = sub_254FF1D54();
          v331 = v325;
          v333 = v332;
          v334 = *v412;
          (*v412)(v324, v331);
          v335 = sub_254FC4454(v330, v333, &v440);

          *(v328 + 4) = v335;
          _os_log_impl(&dword_254FBD000, v326, v327, "SportsAction: Could not create event for %{sensitive}s", v328, 0xCu);
          sub_254FC49C4(v329);
          MEMORY[0x259C32150](v329, -1, -1);
          MEMORY[0x259C32150](v328, -1, -1);

          v406(v362, v369);
          v225 = v389;
          (*v397)(v363, v389);
          v336 = v392;
          sub_254FC538C(v392, &qword_27F76CA00, &qword_254FF3790);
          v334(v388, v331);
          v230 = v336;
        }

        else
        {

          v337 = *v412;
          (*v412)(v324, v325);
          v406(v323, v369);
          v225 = v389;
          (*v397)(v363, v389);
          v230 = v392;
          sub_254FC538C(v392, &qword_27F76CA00, &qword_254FF3790);
          v337(v312, v325);
        }

        v226 = v423;
        v231 = v353;
        goto LABEL_133;
      }

      sub_254FEDBC0();
      sub_254FEDB10();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254FC3F94();
        v404 = v339;
      }

      v338 = *(v404 + 16);
      if (v338 >= *(v404 + 24) >> 1)
      {
        sub_254FC3F94();
        v404 = v340;
      }

      sub_254FEDB68(v355, type metadata accessor for SportsEvent);
      v225 = v389;
      (*v397)(v363, v389);
      v230 = v392;
      sub_254FC538C(v392, &qword_27F76CA00, &qword_254FF3790);
      (*v412)(v388, v395);
      *(v404 + 16) = v338 + 1;
      sub_254FEDBC0();

      v226 = v423;
      v227 = v411;
      v228 = v422;
      continue;
    }

    break;
  }

  v296 = v295;
  v297 = sub_254FC0090(v409, v420, v350);
  v299 = v298;

  v300 = v418;
  if (!v299)
  {

    v432 = 0u;
    v421 = 0u;
    v425 = 0u;
    v420 = 0u;
    v409 = 0u;
    v403 = 0u;
    v390 = 0u;
    v387 = 0u;
    v225 = v389;
    goto LABEL_145;
  }

  v435 = v296;

  v301 = v430;
  sub_254FEA344(&v435, v297, v299);
  v302 = &v445;
  v430 = v301;
  if (v301)
  {
    goto LABEL_179;
  }

  v303 = v435;

  v444 = v303;
  v304 = *(v303 + 16);

  v432 = 0u;
  v421 = 0u;
  v425 = 0u;
  v420 = 0u;
  v409 = 0u;
  v403 = 0u;
  v390 = 0u;
  v387 = 0u;
  v225 = v389;
  v305 = v360;
  if (v304 != 2)
  {
LABEL_141:
    v311 = sub_254FE5754(v407, v419, v344);

    if ((v311 & 1) == 0)
    {
      sub_254FE587C();
    }

    goto LABEL_146;
  }

  v306 = *(v303 + 16);
  if (!v306)
  {
    goto LABEL_176;
  }

  v307 = *(v303 + 48);
  v436 = *(v303 + 32);
  v437 = v307;
  v308 = *(v303 + 80);
  v438 = *(v303 + 64);
  v439 = v308;
  if (v306 != 1)
  {
    v420 = v439;
    v425 = v438;
    v421 = v437;
    v432 = v436;
    v309 = *(v303 + 112);
    v440 = *(v303 + 96);
    v441 = v309;
    v310 = *(v303 + 144);
    v442 = *(v303 + 128);
    v443 = v310;
    v403 = v441;
    v409 = v440;
    v387 = v310;
    v390 = v442;
    sub_254FE9A5C(&v436, &v434);
    sub_254FE9A5C(&v440, &v434);
    goto LABEL_141;
  }

LABEL_177:
  __break(1u);
LABEL_178:
  sub_254FF2384();
  __break(1u);
LABEL_179:

  __break(1u);
  return result;
}

void __swiftcall SportsAction.getTeamForId(id:shortName:)(IntelligencePlatformDataActions::SportsTeam_optional *__return_ptr retstr, Swift::String id, Swift::String_optional shortName)
{
  object = shortName.value._object;
  countAndFlagsBits = shortName.value._countAndFlagsBits;
  v6 = id._object;
  v7 = id._countAndFlagsBits;
  sub_254FC0048(&qword_27F76CD18, &unk_254FF4710);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_254FF3720;
  v26._countAndFlagsBits = v7;
  v26._object = v6;

  v10 = MEMORY[0x277D837D0];
  v11 = sub_254FF2014();
  v12 = MEMORY[0x277D21228];
  *(v9 + 56) = v10;
  *(v9 + 64) = v12;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v30 = MEMORY[0x277D84F90];
  v25[0] = *v3;
  sub_254FE19CC(&v26);
  v14 = v28._countAndFlagsBits;
  v15 = sub_254FC3908(&v26, v27._object);
  MEMORY[0x28223BE20](v15);
  sub_254FEDD00();
  *(v16 - 16) = &v30;
  (*(v14 + 24))(0xD000000000000079, 0x8000000254FF6070, v9, sub_254FE9B0C);
  sub_254FC49C4(&v26);

  if (v30[1]._countAndFlagsBits)
  {
    v17 = v30[3];
    v26 = v30[2];
    v27 = v17;
    v18 = v30[5];
    v28 = v30[4];
    v29 = v18;
    sub_254FE9A5C(&v26, v25);

    if (object)
    {
      v19 = v29;
      v20 = v28;
      v21 = v26;

      v22._countAndFlagsBits = countAndFlagsBits;
      v22._object = object;
      SportsTeam.init(id:name:league:imageData:)(retstr, v21, v22, v20, v19);
      sub_254FE9AB8(&v26);
    }

    else
    {
      v23 = v27;
      retstr->value.id = v26;
      retstr->value.name = v23;
      v24 = v29;
      retstr->value.league = v28;
      retstr->value.imageData = v24;
    }
  }

  else
  {

    retstr->value.league = 0u;
    retstr->value.imageData = 0u;
    retstr->value.id = 0u;
    retstr->value.name = 0u;
  }
}

uint64_t sub_254FE5754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_254FF2404();
  sub_254FF2424();
  if (a2)
  {
    sub_254FF1FC4();
  }

  v7 = sub_254FF2434();
  v8 = a3 + 56;
  v9 = -1 << *(a3 + 32);
  v10 = v7 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = *(a3 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a2)
    {
      return 1;
    }

LABEL_16:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v15 = *v13 == a1 && v14 == a2;
  if (!v15 && (sub_254FF2364() & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

void sub_254FE587C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        sub_254FD2F04();
        v1 = v28;
      }

      v2 = (v2 << 6) - 32;
      v4 = 1;
      v5 = 32;
      do
      {
        if (v4 - 1 != v3)
        {
          v6 = *(v1 + 16);
          if (v4 - 1 >= v6)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          v7 = (v1 + v5);
          v8 = *(v1 + v5);
          v9 = *(v1 + v5 + 16);
          v10 = *(v1 + v5 + 48);
          v31 = *(v1 + v5 + 32);
          v32 = v10;
          v29 = v8;
          v30 = v9;
          if (v3 >= v6)
          {
            goto LABEL_14;
          }

          v11 = (v1 + v2);
          v12 = *(v1 + v2);
          v13 = *(v1 + v2 + 16);
          v14 = *(v1 + v2 + 48);
          v35 = *(v1 + v2 + 32);
          v36 = v14;
          v33 = v12;
          v34 = v13;
          sub_254FE9A5C(&v29, v38);
          sub_254FE9A5C(&v33, v38);
          v15 = *v7;
          v16 = v7[1];
          v17 = v7[3];
          v37[2] = v7[2];
          v37[3] = v17;
          v37[0] = v15;
          v37[1] = v16;
          v18 = v33;
          v19 = v34;
          v20 = v36;
          v7[2] = v35;
          v7[3] = v20;
          *v7 = v18;
          v7[1] = v19;
          sub_254FE9AB8(v37);
          if (v3 >= *(v1 + 16))
          {
            goto LABEL_15;
          }

          v21 = *v11;
          v22 = v11[1];
          v23 = v11[3];
          v38[2] = v11[2];
          v38[3] = v23;
          v38[0] = v21;
          v38[1] = v22;
          v24 = v29;
          v25 = v30;
          v26 = v32;
          v11[2] = v31;
          v11[3] = v26;
          *v11 = v24;
          v11[1] = v25;
          sub_254FE9AB8(v38);
        }

        --v3;
        v2 -= 64;
        v5 += 64;
      }

      while (v4++ < v3);
      *v0 = v1;
    }
  }
}

void *sub_254FE59E0(void (**a1)(char *, uint64_t))
{
  v85 = a1;
  v2 = sub_254FF1744();
  v77 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254FC0048(&qword_27F76CD58, &qword_254FF47B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v82 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v84 = &v56 - v8;
  v83 = sub_254FF1794();
  v62 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v87 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254FF17A4();
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_254FF1C14();
  v81 = *(v76 - 8);
  v12 = MEMORY[0x28223BE20](v76);
  v75 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = &v56 - v14;
  v79 = sub_254FF1724();
  v68 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v80 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_254FF17E4();
  v59 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_254FF1CB4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v1[1];
  v90 = *v1;
  v22 = v90;
  v91 = v23;
  sub_254FE0A18(v85, v21);
  v88 = v22;
  v89 = v23;
  v24 = v86;
  sub_254FE17D8(&v90);
  if (v24)
  {
    v26 = *(v19 + 8);
    v25 = (v19 + 8);
    v26(v21, v18);
    return v25;
  }

  else
  {
    v58 = v19;
    v67 = v18;
    v27 = v92;
    v28 = v93;
    sub_254FC3908(&v90, v92);
    (*(v28 + 8))(v21, v27, v28);
    v56 = v21;
    v73 = 0;
    sub_254FC49C4(&v90);
    v94 = MEMORY[0x277D84FA0];
    v57 = v17;
    result = sub_254FF17D4();
    v30 = 0;
    v66 = result[2];
    v31 = v68;
    v63 = v68 + 16;
    v72 = (v81 + 8);
    v64 = (v68 + 8);
    v86 = v62 + 16;
    v85 = (v62 + 8);
    LODWORD(v81) = *MEMORY[0x277D38FA0];
    v78 = (v77 + 4);
    ++v77;
    v25 = v83;
    v32 = v84;
    v33 = v69;
    for (i = result; ; result = i)
    {
      v34 = v67;
      if (v30 == v66)
      {

        v25 = sub_254FE6474(v94);
        (*(v59 + 8))(v57, v33);
        (*(v58 + 8))(v56, v34);
        return v25;
      }

      if (v30 >= result[2])
      {
        break;
      }

      v35 = result + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v36 = *(v31 + 72);
      v71 = v30;
      (*(v31 + 16))(v80, &v35[v36 * v30], v79);
      sub_254FF1674();
      v37 = v73;
      sub_254FF1BE4();
      v73 = v37;
      if (v37)
      {

        (*v64)(v80, v79);

        (*(v59 + 8))(v57, v33);
        (*(v58 + 8))(v56, v67);
        return v25;
      }

      sub_254FF1C04();
      sub_254FEDC98(&qword_27F76CDC8, MEMORY[0x277D1F200], MEMORY[0x277D1F218]);
      sub_254FF2024();
      sub_254FF2024();
      if (v90 == v88 && v91 == v89)
      {
        v39 = 1;
      }

      else
      {
        v39 = sub_254FF2364();
      }

      v70 = *v72;
      v70(v75, v76);

      v33 = v69;
      v40 = v79;
      if (v39)
      {
        v41 = sub_254FF16E4();
        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = (*(v62 + 80) + 32) & ~*(v62 + 80);
          v60 = v41;
          v44 = v41 + v43;
          v45 = *(v62 + 72);
          v46 = *(v62 + 16);
          do
          {
            v47 = v87;
            v46(v87, v44, v25);
            sub_254FF1784();
            (*v85)(v47, v25);
            v48 = sub_254FF1774();
            if (sub_254FC5364(v32, 1, v48) != 1)
            {
              v49 = v2;
              v50 = v82;
              sub_254FC5770();
              v51 = *(v48 - 8);
              v52 = (*(v51 + 88))(v50, v48);
              if (v52 == v81)
              {
                (*(v51 + 96))(v50, v48);
                v2 = v49;
                (*v78)(v4, v50, v49);
                v53 = sub_254FF1694();
                sub_254FED090(&v90, v53, v54);

                (*v77)(v4, v49);
              }

              else
              {
                (*(v51 + 8))(v50, v48);
                v2 = v49;
              }

              v25 = v83;
              v32 = v84;
            }

            sub_254FC538C(v32, &qword_27F76CD58, &qword_254FF47B0);
            v44 += v45;
            --v42;
          }

          while (v42);

          v33 = v69;
          v40 = v79;
        }

        else
        {
        }
      }

      v55 = v71 + 1;
      v70(v74, v76);
      (*v64)(v80, v40);
      v30 = v55;
      v31 = v68;
    }

    __break(1u);
  }

  return result;
}

void *sub_254FE6474(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_254FC42EC(*(a1 + 16), 0);
  v4 = sub_254FED92C(&v6, v3 + 4, v2, a1);
  sub_254FEDCE0(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t SportsAction.getUpcomingGames(team:)(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v8 = *v1;
  sub_254FC0048(&qword_27F76C8C0, &qword_254FF37B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_254FF3720;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  v6 = sub_254FE65F0(v5);

  if (!v2)
  {
    *&v8 = v6;

    sub_254FEA45C(&v8);

    return v8;
  }

  return result;
}

uint64_t sub_254FE65F0(void (**a1)(char *, uint64_t))
{
  v176 = sub_254FF1D84();
  v170 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v175 = &v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_254FF1614();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_254FC0048(&qword_27F76CD38, "B1");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v165 = (&v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v179 = &v163 - v8;
  v186 = type metadata accessor for SportsAction.CacheEntry(0);
  v190 = *(v186 - 8);
  v9 = MEMORY[0x28223BE20](v186);
  v11 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v177 = (&v163 - v12);
  v189 = sub_254FC0048(&qword_27F76CD40, "B1");
  MEMORY[0x28223BE20](v189);
  v197 = (&v163 - v13);
  v14 = sub_254FF1EB4();
  v15 = *(v14 - 8);
  v195 = v14;
  v196 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v174 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v164 = (&v163 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v168 = &v163 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v167 = &v163 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v166 = &v163 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v182 = &v163 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v163 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v194 = &v163 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v163 - v32;
  v34 = v1[1];
  v183 = *v1;
  v184 = v34;
  sub_254FF1D14();
  v35 = sub_254FF1EA4();
  v36 = sub_254FF2164();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v11;
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    if (qword_27F76C7C0 != -1)
    {
      swift_once();
    }

    v39 = off_27F76CD10;
    swift_beginAccess();
    *(v38 + 4) = *(v39[2] + 16);
    _os_log_impl(&dword_254FBD000, v35, v36, "SportsAction: Cache contains %ld items", v38, 0xCu);
    MEMORY[0x259C32150](v38, -1, -1);
    v11 = v37;
  }

  v181 = a1;

  v41 = v196 + 1;
  isa = v196[1].isa;
  ++v196;
  v193 = isa;
  isa(v33, v195);
  if (qword_27F76C7C0 != -1)
  {
    swift_once();
  }

  v42 = off_27F76CD10;
  swift_beginAccess();
  v180 = v42;
  v43 = v42[2];
  v44 = (v43 + 64);
  v45 = 1 << *(v43 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v43 + 64);
  v48 = (v45 + 63) >> 6;
  v191 = v43;
  swift_bridgeObjectRetain_n();
  v49 = 0;
  *&v50 = 136643075;
  v185 = v50;
  v188 = v44;
  if (v47)
  {
    while (1)
    {
      v51 = v11;
LABEL_15:
      v53 = (*(v191 + 48) + 16 * (__clz(__rbit64(v47)) | (v49 << 6)));
      v54 = *v53;
      v55 = v53[1];
      v56 = v197;
      sub_254FEDB10();
      v192 = v54;
      *v56 = v54;
      v56[1] = v55;

      v57 = v194;
      sub_254FF1D14();
      sub_254FEDB10();

      v41 = sub_254FF1EA4();
      v58 = sub_254FF2164();

      if (os_log_type_enabled(v41, v58))
      {
        v59 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v198 = v187;
        *v59 = v185;
        *(v59 + 4) = sub_254FC4454(v192, v55, &v198);
        *(v59 + 12) = 2080;
        v60 = sub_254FF1584();
        v62 = v61;
        sub_254FEDB68(v51, type metadata accessor for SportsAction.CacheEntry);
        v63 = sub_254FC4454(v60, v62, &v198);

        *(v59 + 14) = v63;
        _os_log_impl(&dword_254FBD000, v41, v58, "SportsAction: Cache key %{sensitive}s, timestamp: %s", v59, 0x16u);
        v64 = v187;
        swift_arrayDestroy();
        MEMORY[0x259C32150](v64, -1, -1);
        MEMORY[0x259C32150](v59, -1, -1);

        v65 = v194;
      }

      else
      {

        sub_254FEDB68(v51, type metadata accessor for SportsAction.CacheEntry);
        v65 = v57;
      }

      v193(v65, v195);
      v11 = v51;
      v44 = v188;
      v47 &= v47 - 1;
      sub_254FC538C(v197, &qword_27F76CD40, "B1");
      if (!v47)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v52 >= v48)
    {
      break;
    }

    v47 = v44[v52].isa;
    ++v49;
    if (v47)
    {
      v51 = v11;
      v49 = v52;
      goto LABEL_15;
    }
  }

  v66 = v181;
  v198 = v181;

  v67 = v178;
  sub_254FEA3F0(&v198);
  if (!v67)
  {
    sub_254FC0048(&qword_27F76C880, &qword_254FF3120);
    sub_254FC53E4();
    v68 = sub_254FF1F04();
    v70 = v69;

    v71 = v180[2];

    v72 = v179;
    sub_254FC00E4(v71, v179, v68);

    v73 = sub_254FC5364(v72, 1, v186);
    v74 = v183;
    v75 = v184;
    if (v73 == 1)
    {
      v197 = v68;
      sub_254FC538C(v72, &qword_27F76CD38, "B1");
      goto LABEL_28;
    }

    v76 = v177;
    sub_254FEDBC0();
    v77 = v171;
    sub_254FF1604();
    sub_254FF1594();
    v79 = v78;
    (*(v172 + 8))(v77, v173);
    if (v79 < 1800.0)
    {

      v80 = v169;
      sub_254FF1D14();

      v81 = sub_254FF1EA4();
      v82 = sub_254FF2164();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v198 = v84;
        *v83 = 136642819;
        v85 = MEMORY[0x259C31780](v66, MEMORY[0x277D837D0]);
        v87 = sub_254FC4454(v85, v86, &v198);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_254FBD000, v81, v82, "SportsAction: Using cached games for: %{sensitive}s", v83, 0xCu);
        sub_254FC49C4(v84);
        MEMORY[0x259C32150](v84, -1, -1);
        v88 = v83;
        v76 = v177;
        MEMORY[0x259C32150](v88, -1, -1);
      }

      v193(v80, v195);
      v89 = *v76;

      sub_254FEDB68(v76, type metadata accessor for SportsAction.CacheEntry);
      return v89;
    }

    v197 = v68;
    sub_254FEDB68(v76, type metadata accessor for SportsAction.CacheEntry);
LABEL_28:
    v198 = v74;
    v199 = v75;
    sub_254FE7B08();
    v90 = v182;
    sub_254FF1D14();

    v91 = sub_254FF1EA4();
    v92 = sub_254FF2164();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v198 = v94;
      *v93 = 136642819;
      v95 = MEMORY[0x259C31780](v66, MEMORY[0x277D837D0]);
      v97 = v70;
      v98 = sub_254FC4454(v95, v96, &v198);

      *(v93 + 4) = v98;
      v70 = v97;
      v75 = v184;
      _os_log_impl(&dword_254FBD000, v91, v92, "SportsAction: Fetching games for: %{sensitive}s", v93, 0xCu);
      sub_254FC49C4(v94);
      v99 = v94;
      v74 = v183;
      MEMORY[0x259C32150](v99, -1, -1);
      MEMORY[0x259C32150](v93, -1, -1);

      v100 = v182;
    }

    else
    {

      v100 = v90;
    }

    v193(v100, v195);
    v198 = v74;
    v199 = v75;
    v101 = sub_254FE59E0(v66);
    v112 = v101;
    if (!v101[2])
    {

      v124 = v166;
      sub_254FF1D14();

      v125 = sub_254FF1EA4();
      v126 = sub_254FF2174();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v198 = v128;
        *v127 = 136642819;
        v129 = MEMORY[0x259C31780](v66, MEMORY[0x277D837D0]);
        v131 = sub_254FC4454(v129, v130, &v198);

        *(v127 + 4) = v131;
        _os_log_impl(&dword_254FBD000, v125, v126, "SportsAction: No games found for: %{sensitive}s", v127, 0xCu);
        sub_254FC49C4(v128);
        MEMORY[0x259C32150](v128, -1, -1);
        MEMORY[0x259C32150](v127, -1, -1);
      }

      v193(v124, v195);
      return MEMORY[0x277D84F90];
    }

    v194 = v70;
    v113 = v167;
    sub_254FF1D14();

    v114 = sub_254FF1EA4();
    v115 = sub_254FF2164();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v198 = v117;
      *v116 = 136642819;
      v118 = MEMORY[0x259C317A0](v112, MEMORY[0x277D837D0]);
      v120 = sub_254FC4454(v118, v119, &v198);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_254FBD000, v114, v115, "SportsAction: games found: %{sensitive}s", v116, 0xCu);
      sub_254FC49C4(v117);
      MEMORY[0x259C32150](v117, -1, -1);
      v121 = v116;
      v74 = v183;
      MEMORY[0x259C32150](v121, -1, -1);
    }

    v193(v113, v195);
    v122 = v168;
    v198 = v74;
    v199 = v184;
    v89 = sub_254FE1BBC(v112);
    sub_254FF1D14();

    v132 = sub_254FF1EA4();
    v133 = sub_254FF2164();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v198 = v135;
      *v134 = 136642819;
      v136 = type metadata accessor for SportsEvent(0);
      v137 = MEMORY[0x259C31780](v89, v136);
      v139 = sub_254FC4454(v137, v138, &v198);

      *(v134 + 4) = v139;
      _os_log_impl(&dword_254FBD000, v132, v133, "SportsAction: Games found: %{sensitive}s", v134, 0xCu);
      sub_254FC49C4(v135);
      MEMORY[0x259C32150](v135, -1, -1);
      MEMORY[0x259C32150](v134, -1, -1);

      v140 = v168;
    }

    else
    {

      v140 = v122;
    }

    v193(v140, v195);
    v141 = v181;
    v142 = v194;
    if (*(v89 + 16))
    {

      v143 = v186;

      v144 = v165;
      sub_254FF1604();
      *v144 = v89;
      sub_254FC4BB8(v144, 0, 1, v143);
      swift_beginAccess();
      sub_254FE065C(v144, v197, v142);
      swift_endAccess();
      return v89;
    }

    v41 = v164;
    sub_254FF1D14();

    v44 = sub_254FF1EA4();
    v145 = sub_254FF2174();

    if (os_log_type_enabled(v44, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v198 = v147;
      *v146 = v185;
      v148 = MEMORY[0x277D837D0];
      v149 = MEMORY[0x259C31780](v141, MEMORY[0x277D837D0]);
      v151 = v41;
      v152 = sub_254FC4454(v149, v150, &v198);

      *(v146 + 4) = v152;
      *(v146 + 12) = 2085;
      v153 = MEMORY[0x259C317A0](v112, v148);
      v155 = v154;

      v156 = sub_254FC4454(v153, v155, &v198);

      *(v146 + 14) = v156;
      _os_log_impl(&dword_254FBD000, v44, v145, "SportsAction: Games array is empty for: %{sensitive}s and found events: %{sensitive}s", v146, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C32150](v147, -1, -1);
      MEMORY[0x259C32150](v146, -1, -1);

      v157 = v151;
LABEL_56:
      v193(v157, v195);
      v158 = v176;
      v159 = v175;
      v160 = v174;
      sub_254FC389C();
      v161 = swift_allocError();
      *v162 = 2;
      swift_willThrow();
      sub_254FF1D14();
      v102 = v161;
      v103 = sub_254FF1EA4();
      v104 = sub_254FF2174();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *v105 = 138412290;
        v107 = v161;
        v108 = _swift_stdlib_bridgeErrorToNSError();
        *(v105 + 4) = v108;
        *v106 = v108;
        _os_log_impl(&dword_254FBD000, v103, v104, "SportsAction error: %@", v105, 0xCu);
        sub_254FC538C(v106, &qword_27F76CBE0, &qword_254FF3F40);
        MEMORY[0x259C32150](v106, -1, -1);
        MEMORY[0x259C32150](v105, -1, -1);
      }

      v193(v160, v195);
      v198 = v161;
      v109 = v161;
      v89 = sub_254FC0048(&qword_27F76CC58, &qword_254FF3F38);
      if (swift_dynamicCast())
      {
        (*(v170 + 8))(v159, v158);
        goto LABEL_37;
      }

      v198 = v161;
      v110 = v161;
      if (swift_dynamicCast())
      {
LABEL_37:
        sub_254FC389C();
        v89 = swift_allocError();
        *v111 = 5;
        swift_willThrow();
      }

      else
      {
        swift_willThrow();
      }

      return v89;
    }

LABEL_55:

    v157 = v41;
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_254FE7B08()
{
  v0 = sub_254FC0048(&qword_27F76CD38, "B1");
  MEMORY[0x28223BE20](v0 - 8);
  v42 = &v41 - v1;
  v47 = sub_254FF1614();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsAction.CacheEntry(0);
  v49 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - v8;
  v9 = sub_254FC0048(&qword_27F76CDD8, &qword_254FF4808);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = (&v41 - v13);
  if (qword_27F76C7C0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = off_27F76CD10;
  swift_beginAccess();
  v41 = v14;
  v15 = v14[2];
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v44 = v15;
  v45 = (v2 + 8);

  v21 = 0;
  v50 = v4;
  v51 = v7;
  v52 = v12;
  while (1)
  {
    if (!v19)
    {
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          v39 = sub_254FC0048(&qword_27F76CD40, "B1");
          sub_254FC4BB8(v12, 1, 1, v39);
          v19 = 0;
          goto LABEL_12;
        }

        v19 = *(v16 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v22 = v21;
LABEL_11:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = (*(v44 + 48) + 16 * (v23 | (v22 << 6)));
    v26 = *v24;
    v25 = v24[1];
    sub_254FEDB10();
    v27 = sub_254FC0048(&qword_27F76CD40, "B1");
    v28 = v52;
    *v52 = v26;
    v28[1] = v25;
    v29 = v28;
    sub_254FEDBC0();
    sub_254FC4BB8(v29, 0, 1, v27);

    v4 = v50;
LABEL_12:
    v30 = v48;
    sub_254FC57C8();
    v31 = sub_254FC0048(&qword_27F76CD40, "B1");
    if (sub_254FC5364(v30, 1, v31) == 1)
    {
    }

    v2 = *v30;
    v32 = v51;
    sub_254FEDBC0();
    v7 = v46;
    sub_254FF1604();
    sub_254FF1594();
    v34 = v33;
    (*v45)(v7, v47);
    if (v34 >= 1800.0)
    {
      v35 = v41;
      swift_beginAccess();
      sub_254FC4A60(v2);
      if (v36)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v53 = v35[2];
        v35[2] = 0x8000000000000000;
        sub_254FC0048(&qword_27F76CD48, &qword_254FF4798);
        v4 = v50;
        sub_254FF22A4();
        v37 = v53;

        sub_254FEDBC0();
        sub_254FF22C4();
        v35[2] = v37;

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v2 = v51;
      v12 = v52;
      v7 = v42;
      sub_254FC4BB8(v42, v38, 1, v4);
      sub_254FC538C(v7, &qword_27F76CD38, "B1");
      swift_endAccess();

      sub_254FEDB68(v2, type metadata accessor for SportsAction.CacheEntry);
    }

    else
    {
      sub_254FEDB68(v32, type metadata accessor for SportsAction.CacheEntry);

      v12 = v52;
    }
  }
}

uint64_t SportsAction.getTeamsFromSql(query:bindings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = MEMORY[0x277D84F90];
  sub_254FE19CC(v11);
  if (v3)
  {
  }

  else
  {
    v7 = v11[4];
    v8 = sub_254FC3908(v11, v11[3]);
    MEMORY[0x28223BE20](v8);
    sub_254FEDD00();
    *(v9 - 16) = &v12;
    (*(v7 + 24))(a1, a2, a3, sub_254FEDCE8);
    sub_254FC49C4(v11);
  }

  return v12;
}

uint64_t SportsAction.getAllTeams()()
{
  v5 = MEMORY[0x277D84F90];
  sub_254FE19CC(v4);
  v0 = v4[4];
  v1 = sub_254FC3908(v4, v4[3]);
  MEMORY[0x28223BE20](v1);
  sub_254FEDD00();
  *(v2 - 16) = &v5;
  (*(v0 + 24))(0xD000000000000083, 0x8000000254FF60F0, MEMORY[0x277D84F90], sub_254FEDCE8);
  sub_254FC49C4(v4);
  return v5;
}

uint64_t sub_254FE8374(uint64_t a1, uint64_t *a2)
{
  v72 = a2;
  v3 = sub_254FF1EB4();
  v71 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254FF1DD4();
  v76 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v62 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  result = sub_254FF1E74();
  if (!v2)
  {
    v67 = v9;
    v68 = v12;
    v70 = v17;
    v65 = v5;
    v69 = v6;
    sub_254FF1E74();
    v66 = v15;
    v19 = v68;
    sub_254FF1E74();
    v20 = v70;
    sub_254FF1E74();
    v64 = (v71 + 8);
    *&v21 = 136315138;
    v62 = v21;
    v63 = v3;
    while ((sub_254FF1E64() & 1) != 0)
    {
      v22 = sub_254FF1DA4();
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        v26 = sub_254FF1DA4();
        if (v27)
        {
          v71 = v26;
          v28 = v27;
          v29 = sub_254FF1DA4();
          if (v30)
          {
            v31 = v29;
            v32 = v30;
            v33 = sub_254FF1DA4();
            if (v34)
            {
              v35 = v33;
              v36 = v34;

              v37._countAndFlagsBits = v71;
              v37._object = v28;
              v38._countAndFlagsBits = v24;
              v38._object = v25;
              v39._countAndFlagsBits = v31;
              v39._object = v32;
              v40._countAndFlagsBits = v35;
              v40._object = v36;
              SportsTeam.init(id:name:league:imageData:)(v73, v37, v38, v39, v40);
              v41 = *&v73[8];
              *&v73[64] = *&v73[16];
              v74 = *&v73[32];
              v75 = *&v73[48];
              if (*&v73[8])
              {
                v42 = *v73;

                v43 = v72;
                v44 = *v72;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v43 = v44;
                v20 = v70;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_254FC4070();
                  v44 = v58;
                  *v43 = v58;
                }

                v46 = *(v44 + 16);
                if (v46 >= *(v44 + 24) >> 1)
                {
                  sub_254FC4070();
                  v44 = v59;
                  *v72 = v59;
                }

                *(v44 + 16) = v46 + 1;
                v47 = v44 + (v46 << 6);
                *(v47 + 32) = v42;
                *(v47 + 40) = v41;
                v48 = *&v73[64];
                v49 = v75;
                *(v47 + 64) = v74;
                *(v47 + 80) = v49;
                *(v47 + 48) = v48;
              }

              else
              {
                v50 = v65;
                sub_254FF1D14();

                v51 = sub_254FF1EA4();
                v52 = sub_254FF2174();

                v53 = os_log_type_enabled(v51, v52);
                v20 = v70;
                if (v53)
                {
                  v54 = v51;
                  v55 = swift_slowAlloc();
                  v56 = swift_slowAlloc();
                  *v73 = v56;
                  *v55 = v62;
                  v57 = sub_254FC4454(v71, v28, v73);

                  *(v55 + 4) = v57;
                  _os_log_impl(&dword_254FBD000, v54, v52, "SportsAction: Failed to create team from SQL for %s", v55, 0xCu);
                  sub_254FC49C4(v56);
                  MEMORY[0x259C32150](v56, -1, -1);
                  MEMORY[0x259C32150](v55, -1, -1);

                  v19 = v68;
                  (*v64)(v65, v63);
                }

                else
                {

                  (*v64)(v50, v63);
                }
              }
            }

            else
            {

              v20 = v70;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    v60 = *(v76 + 8);
    v61 = v69;
    v60(v67, v69);
    v60(v19, v61);
    v60(v66, v61);
    return (v60)(v20, v61);
  }

  return result;
}