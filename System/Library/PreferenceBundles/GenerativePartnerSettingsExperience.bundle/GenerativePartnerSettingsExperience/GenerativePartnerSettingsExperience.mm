uint64_t sub_12F0()
{
  v0 = sub_3A34();
  sub_37BC(v0, qword_C430);
  sub_33DC(v0, qword_C430);
  return sub_3A24();
}

uint64_t sub_1370()
{
  v1 = OBJC_IVAR____TtC35GenerativePartnerSettingsExperience12ParamsHolder_deepLinkParams;
  v2 = sub_39D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ParamsHolder(uint64_t a1)
{
  result = qword_C318;
  if (!qword_C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1460(uint64_t a1)
{
  result = sub_39D4();
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

unint64_t sub_1528()
{
  result = qword_C2A0;
  if (!qword_C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A0);
  }

  return result;
}

uint64_t sub_1598(uint64_t a1)
{
  v1 = sub_2320(&qword_C2A8, &qword_3EB0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_39B4();
  sub_36C8(&qword_C2B0, &type metadata accessor for GenerativePartnerSettingsPanelView, &protocol conformance descriptor for GenerativePartnerSettingsPanelView);

  sub_3AA4();
  sub_38B8();
  sub_3680(v5, &qword_C2A8, &qword_3EB0, v6);

  sub_3A54();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_3A44();
  v3[8] = v4;
  sub_38D0(v4);
  v3[9] = v5;
  v3[10] = sub_38E0();
  sub_39D4();
  v3[11] = sub_38E0();
  v6 = sub_3944();
  v3[12] = v6;
  sub_38D0(v6);
  v3[13] = v7;
  v3[14] = sub_38E0();
  v8 = sub_3A84();
  v3[15] = v8;
  sub_38D0(v8);
  v3[16] = v9;
  v3[17] = sub_38E0();
  v10 = sub_3994();
  v3[18] = v10;
  sub_38D0(v10);
  v3[19] = v11;
  v3[20] = sub_38E0();
  sub_2320(&qword_C2C0, &qword_3EC8);
  v3[21] = sub_38E0();
  sub_3B14();
  v3[22] = sub_3B04();
  v13 = sub_3AF4();

  return _swift_task_switch(sub_1964, v13, v12);
}

uint64_t sub_1964()
{
  v92 = v0;
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  sub_3A74();
  sub_3964();
  v84 = *(v3 + 8);
  v84(v2, v4);
  v5 = sub_3974();
  if (sub_334C(v1, 1, v5) == 1)
  {
    sub_3374(v0[21]);
  }

  else
  {
    v6 = sub_3954();
    v7 = sub_38F8();
    v8(v7);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_5:
  v85 = v6;
  if (qword_C310 != -1)
  {
LABEL_47:
    swift_once();
  }

  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];
  v12 = v0[6];
  v13 = sub_3A34();
  sub_33DC(v13, qword_C430);
  (*(v10 + 16))(v9, v12, v11);
  v14 = v85;

  v15 = sub_3A14();
  v16 = sub_3B24();

  v90 = v0;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[20];
    v19 = v0[17];
    v18 = v0[18];
    v20 = v0[16];
    v86 = v0[15];
    v21 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v21 = 136315394;
    sub_3A74();
    sub_36C8(&qword_C2E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v22 = sub_3B74();
    v24 = v23;
    v84(v17, v18);
    (*(v20 + 8))(v19, v86);
    v25 = sub_2B30(v22, v24, v91);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = sub_3AE4();
    v28 = sub_2B30(v26, v27, v91);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_0, v15, v16, "[GenerativePartnerSettingsExperience] onSettingsExperienceOpenURL url: %s, queryItems: %s", v21, 0x16u);
    swift_arrayDestroy();

    v14 = v85;
  }

  else
  {

    v29 = sub_38F8();
    v30(v29);
  }

  v89 = v14[2];
  if (v89)
  {
    v31 = 0;
    v87 = v14 + ((*(v0[13] + 80) + 32) & ~*(v0[13] + 80));
    v32 = &_swiftEmptyDictionarySingleton;
    v88 = v0[13];
    while (1)
    {
      if (v31 >= v14[2])
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      (*(v88 + 16))(v0[14], v87 + *(v88 + 72) * v31, v0[12]);
      v33 = sub_3924();
      v35 = v34;
      v0 = sub_3934();
      v37 = v36;
      v38 = sub_38F8();
      v39(v38);
      if (v37)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v91[0] = v32;
        v40 = sub_3180(v33, v35);
        if (__OFADD__(v32[2], (v41 & 1) == 0))
        {
          goto LABEL_45;
        }

        v42 = v40;
        v43 = v41;
        v44 = sub_2320(&qword_C2D8, &qword_3ED8);
        if (sub_3904(v44))
        {
          v45 = sub_3180(v33, v35);
          if ((v43 & 1) != (v46 & 1))
          {

            return sub_3B94();
          }

          v42 = v45;
        }

        if (v43)
        {

          v32 = v91[0];
          v47 = (*(v91[0] + 56) + 16 * v42);
          *v47 = v0;
          v47[1] = v37;
        }

        else
        {
          v32 = v91[0];
          *(v91[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = (v32[6] + 16 * v42);
          *v51 = v33;
          v51[1] = v35;
          v52 = (v32[7] + 16 * v42);
          *v52 = v0;
          v52[1] = v37;
          v53 = v32[2];
          v54 = __OFADD__(v53, 1);
          v55 = v53 + 1;
          if (v54)
          {
            goto LABEL_46;
          }

          v32[2] = v55;
        }

        v0 = v90;
        v14 = v85;
      }

      else
      {
        sub_3180(v33, v35);
        v49 = v48;

        if (v49)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v91[0] = v32;
          v50 = sub_2320(&qword_C2D8, &qword_3ED8);
          sub_3904(v50);
          v32 = v91[0];

          sub_3B64();
        }

        v0 = v90;
      }

      if (v89 == ++v31)
      {
        goto LABEL_28;
      }
    }
  }

  v32 = &_swiftEmptyDictionarySingleton;
LABEL_28:
  v56 = v0[20];
  v57 = v0[18];

  sub_3A74();
  v58 = sub_3984();
  v84(v56, v57);
  v0[2] = 0x6C616E7265747845;
  v0[3] = 0xEF6C65646F4D4941;
  v59 = swift_task_alloc();
  *(v59 + 16) = v0 + 2;
  v61 = sub_25D0(0x7FFFFFFFFFFFFFFFLL, 1, sub_3660, v59, v58, v60);

  sub_2220(1, v61);
  v63 = v62;
  v91[0] = &_swiftEmptyArrayStorage;
  v65 = v64 >> 1;
  v67 = (v66 + 32 * v62 + 16);
  while (v65 != v63)
  {
    if (v63 >= v65)
    {
      __break(1u);
      goto LABEL_44;
    }

    ++v63;
    v69 = *v67;
    v68 = v67[1];
    v70 = *(v67 - 1);
    v71 = swift_unknownObjectRetain();
    sub_30A0(v71, v70, v69, v68);
    v67 += 4;
  }

  swift_unknownObjectRelease();
  v0[4] = v91[0];
  v72 = sub_38F8();
  sub_2320(v72, v73);
  sub_3680(&qword_C2D0, &qword_C2C8, &qword_3ED0, &protocol conformance descriptor for [A]);
  v74 = sub_3AB4();
  v76 = v75;

  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v32;
    sub_31F8(v74, v76, 1752457584, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  v79 = v0[10];
  v81 = v0[8];
  v80 = v0[9];
  sub_39E4();
  sub_39C4();
  sub_3A64();
  sub_3A94();
  (*(v80 + 8))(v79, v81);

  v82 = v0[1];

  return v82();
}

uint64_t sub_2220(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_35E8(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_357C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B8()
{
  sub_3A04();
  swift_allocObject();
  return sub_39F4();
}

uint64_t sub_22F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22B8();
  *a1 = result;
  return result;
}

uint64_t sub_2320(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2368()
{

  return GenerativePartnerSettingsPanelView.init(viewModel:)(v0);
}

uint64_t sub_23A4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2450;

  return sub_1744(a1, a2, v2);
}

uint64_t sub_2450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2544(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_258C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_3B84() & 1;
  }
}

void *sub_25D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v39 = a3;
  if (a1 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = a5;
  v15 = *(a5 + 16);
  if (!a1 || !v15)
  {
    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v6 = sub_357C(0, v15, a5);
    v10 = v24;
    v11 = v25;
    v12 = v26;

    v13 = sub_2A00(0, 1, 1, &_swiftEmptyArrayStorage);
    v8 = v13[2];
    a6 = v13[3];
LABEL_35:
    v9 = v8 + 1;
    if (v8 < a6 >> 1)
    {
LABEL_36:
      v13[2] = v9;
      v30 = &v13[4 * v8];
      v30[4] = v6;
      v30[5] = v10;
      v30[6] = v11;
      v30[7] = v12;
      return v13;
    }

LABEL_40:
    v13 = sub_2A00((a6 > 1), v9, 1, v13);
    goto LABEL_36;
  }

  v6 = a4;
  v35 = a2;
  v12 = 0;
  v31 = a5 + 32;
  v16 = -v15;
  v13 = &_swiftEmptyArrayStorage;
  v33 = -v15;
  v34 = *(a5 + 16);
  while (1)
  {
    v37 = v13;
    v10 = 2 * v12;
    while (2)
    {
      v17 = 0;
      v13 = (v16 + v12);
      v36 = v10;
      while (1)
      {
        if (!(v13 + v17))
        {
          v13 = v37;
          v23 = v34;
          goto LABEL_28;
        }

        a6 = v12 + v17;
        if ((v12 + v17) >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v18 = v9 + 8 * v10;
        v11 = *(v18 + 40);
        v38[0] = *(v18 + 32);
        v38[1] = v11;

        v19 = v39(v38);
        if (v7)
        {

          return v13;
        }

        v8 = v19;

        if (v8)
        {
          break;
        }

        ++v17;
        v10 += 2;
      }

      if (!v17 && (v35 & 1) != 0)
      {
        ++v12;
        v10 = v36 + 2;
        v16 = v33;
        continue;
      }

      break;
    }

    if (v12 < 0)
    {
      break;
    }

    v13 = v37;
    if (*(v9 + 16) < (v12 + v17))
    {
      goto LABEL_44;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2A00(0, v37[2] + 1, 1, v37);
    }

    v8 = v13[2];
    v21 = v13[3];
    v11 = v8 + 1;
    if (v8 >= v21 >> 1)
    {
      v13 = sub_2A00((v21 > 1), v8 + 1, 1, v13);
    }

    v13[2] = v11;
    v22 = &v13[4 * v8];
    v22[4] = v9;
    v22[5] = v31;
    v22[6] = v12;
    v22[7] = v10 + 1;
    v12 += v17 + 1;
    v16 = v33;
    v23 = v34;
    if (v11 == a1)
    {
LABEL_28:
      if (v12 == v23 && (v35 & 1) != 0)
      {

        return v13;
      }

      if (v23 < v12)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_357C(v12, v23, v9);
        v10 = v27;
        v11 = v28;
        v12 = v29;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          v8 = v13[2];
          a6 = v13[3];
          goto LABEL_35;
        }
      }

      v13 = sub_2A00(0, v13[2] + 1, 1, v13);
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_28F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2320(&qword_C2F0, &qword_3EE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2A00(void *result, int64_t a2, char a3, void *a4)
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
    sub_2320(&qword_C2F8, &qword_3EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2320(&unk_C300, &qword_3EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2B30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2BF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_375C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_3710(v11);
  return v7;
}

unint64_t sub_2BF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2CF4(a5, a6);
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
    result = sub_3B44();
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

char *sub_2CF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2D40(a1, a2);
  sub_2E58(&off_8400);
  return v3;
}

char *sub_2D40(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_3AD4())
  {
    result = sub_2F3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_3B34();
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

        v9 = result + 32;
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
          result = sub_3B44();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_2E58(uint64_t result)
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

    result = sub_2FAC(result, v7, 1, v3);
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

void *sub_2F3C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2320(&qword_C2E8, &qword_3EE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2320(&qword_C2E8, &qword_3EE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_30A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_3514(v7 + v6, 1);
  v9 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v9;
      return;
    }

    __break(1u);
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, v6);
  v12 = v10 + v6;
  if (!v11)
  {
    *(v9 + 16) = v12;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

unint64_t sub_3180(uint64_t a1, uint64_t a2)
{
  sub_3BA4();
  sub_3AC4();
  v4 = sub_3BB4();

  return sub_3460(a1, a2, v4);
}

uint64_t sub_31F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_3180(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_2320(&qword_C2D8, &qword_3ED8);
  if (!sub_3B54(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = sub_3180(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    result = sub_3B94();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    sub_3414(v18, a3, a4, a1, a2, v22);
  }
}

uint64_t sub_3374(uint64_t a1)
{
  v2 = sub_2320(&qword_C2C0, &qword_3EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_33DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_3414(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_3460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_3B84() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_3514(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_28F8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unint64_t sub_357C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_35E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_3680(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2544(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_36C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3710(void *a1)
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

uint64_t sub_375C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_37BC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_3830()
{
  sub_2544(&qword_C2A8, &qword_3EB0);
  sub_38B8();
  sub_3680(v0, &qword_C2A8, &qword_3EB0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_38E0()
{

  return swift_task_alloc();
}

BOOL sub_3904(uint64_t a1)
{

  return sub_3B54(v1, v2);
}