uint64_t sub_1FA8()
{
  swift_getKeyPath();
  sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox, &unk_3BED8);
  sub_39C38();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2058@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox, &unk_3BED8);
  sub_39C38();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2104(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2144(v1, v2);
}

uint64_t sub_2144(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_3AB28() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox, &unk_3BED8);
    sub_39C28();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_22B4()
{

  v1 = OBJC_IVAR____TtC19MobileStoreSettings19AuthKitContextIDBox___observationRegistrar;
  v2 = sub_39C58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_2368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v3 = type metadata accessor for AppStoreSettingsExperience(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3EA0(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_3A7E8();
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_3F08(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_3EA0(a1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_3A7E8();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_3F08(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7);
  sub_3CB4(&qword_51DC0, &qword_3DA50);
  sub_3A508();
  sub_1B238(v14, v15, v16, v17, v13);
}

uint64_t sub_257C@<X0>(uint64_t *a1@<X2>, void *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  swift_getKeyPath();
  sub_3FDC(&qword_51DB8, type metadata accessor for AuthKitContextIDBox, &unk_3BED8);
  sub_39C38();

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2144(v1, v2);
}

uint64_t sub_2758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_39B08();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_39BF8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_3CB4(&unk_51DA0, &qword_3BF80);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_39FE8();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = sub_3A7F8();
  v3[19] = sub_3A7E8();
  v8 = sub_3A798();

  return _swift_task_switch(sub_2968, v8, v7);
}

uint64_t sub_2968()
{
  v57 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);

  sub_3A5F8();
  sub_3A608();
  sub_39B28();
  v50 = *(v4 + 8);
  v50(v3, v5);
  sub_4390(v1, v2);
  v6 = sub_39B38();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v2, 1, v6);
  v9 = *(v0 + 104);
  if (v8 == 1)
  {
    sub_4400(*(v0 + 104));
    goto LABEL_34;
  }

  v10 = sub_39B18();
  result = (*(v7 + 8))(v9, v6);
  if (!v10)
  {
LABEL_34:
    v29 = *(v0 + 96);
    v30 = *(v0 + 80);
    sub_3A608();
    v31 = sub_39BA8();
    v33 = v32;
    v50(v29, v30);
    v34._rawValue = &off_4D8B8;
    v59._countAndFlagsBits = v31;
    v59._object = v33;
    v35 = sub_3AB08(v34, v59);

    if (v35)
    {
      if (v35 != 1)
      {
LABEL_39:
        sub_3A618();
        v38 = *(v0 + 128);
        v37 = *(v0 + 136);
        v39 = *(v0 + 120);
        sub_4400(*(v0 + 112));
        (*(v38 + 8))(v37, v39);

        v40 = *(v0 + 8);

        return v40();
      }

      v36 = 1;
    }

    else
    {
      v36 = 0;
    }

    *(v0 + 160) = v36;
    sub_4468();
    sub_39FD8();
    goto LABEL_39;
  }

  v54 = *(v10 + 16);
  if (!v54)
  {
LABEL_33:

    goto LABEL_34;
  }

  v12 = 0;
  v13 = *(v0 + 48);
  v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v55 = (v13 + 8);
  v53 = v10;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_48;
    }

    v15 = *(v13 + 72);
    v16 = *(v13 + 16);
    v16(*(v0 + 72), v14 + v15 * v12, *(v0 + 40));
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_39AE8() == 0x7541796669746F6ELL && v17 == 0xED000074694B6874)
    {
    }

    else
    {
      v18 = sub_3AB28();

      if ((v18 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v19 = sub_39AF8();
    if (!v20)
    {
LABEL_6:
      (*v55)(*(v0 + 72), *(v0 + 40));

      goto LABEL_7;
    }

    v51 = v15;
    v52 = v16;
    v21 = *(v0 + 72);
    v22 = *(v0 + 40);
    if (v19 == 1702195828 && v20 == 0xE400000000000000)
    {
      break;
    }

    v23 = sub_3AB28();

    v24 = *v55;
    (*v55)(v21, v22);

    v10 = v53;
    if (v23)
    {
      goto LABEL_23;
    }

LABEL_7:
    if (v54 == ++v12)
    {
      goto LABEL_33;
    }
  }

  v24 = *v55;
  (*v55)(v21, v22);

LABEL_23:
  v25 = 0;
  while (v25 < *(v53 + 16))
  {
    v52(*(v0 + 56), v14, *(v0 + 40));
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_39AE8() == 0xD000000000000010 && 0x800000000003DD90 == v26)
    {

LABEL_43:

      v41 = *(v0 + 64);
      v42 = *(v0 + 40);
      (*(*(v0 + 48) + 32))(v41, *(v0 + 56), v42);
      v43 = sub_39AF8();
      v45 = v44;
      v24(v41, v42);
      if (!v45)
      {
        goto LABEL_34;
      }

      type metadata accessor for AppStoreSettingsExperience(0);

      v46 = sub_39E78();
      v47 = sub_3A878();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v56 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_36FC(v43, v45, &v56);
        _os_log_impl(&dword_0, v46, v47, "Parsed AuthKit context ID from URL: %s", v48, 0xCu);
        sub_44BC(v49);
      }

      sub_2144(v43, v45);
      goto LABEL_39;
    }

    v28 = sub_3AB28();

    if (v28)
    {
      goto LABEL_43;
    }

    ++v25;
    result = (v24)(*(v0 + 56), *(v0 + 40));
    v14 += v51;
    if (v54 == v25)
    {
      goto LABEL_33;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_30B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = sub_3CB4(&qword_51D88, &qword_3BF68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_3EA0(v2, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_3F08(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  type metadata accessor for AppStoreSettingsView(0);
  sub_3FDC(&qword_51D90, type metadata accessor for AppStoreSettingsView, &unk_3D0D0);
  sub_3A628();
  sub_3EA0(v2, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_3F08(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9);
  sub_42E4();
  sub_3A5E8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_3304@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AuthKitContextIDBox(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_39C48();
  *a1 = v2;
  return sub_39E88();
}

uint64_t sub_3398(uint64_t *a1)
{
  if (sub_38048(2, 26, 0, 0))
  {
    sub_3A1C8();

    return sub_3A018();
  }

  else
  {
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    sub_3A018();
    sub_3A928();
    swift_getWitnessTable();
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    return sub_3A018();
  }
}

uint64_t sub_34FC(uint64_t *a1)
{
  if (sub_38048(2, 26, 0, 0))
  {
    sub_3A1C8();
    sub_3A018();
  }

  else
  {
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    sub_3A018();
    sub_3A928();
    swift_getWitnessTable();
    sub_3A028();
    swift_getWitnessTable();
    sub_3A1B8();
    sub_3A018();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_36FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_37C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_4508(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_44BC(v11);
  return v7;
}

unint64_t sub_37C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_38D4(a5, a6);
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
    result = sub_3AA78();
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

char *sub_38D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_3920(a1, a2);
  sub_3A50(&off_4D890);
  return v3;
}

char *sub_3920(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_3B3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_3AA78();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_3A758();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3B3C(v10, 0);
        result = sub_3AA28();
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

uint64_t sub_3A50(uint64_t result)
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

  result = sub_3BB0(result, v11, 1, v3);
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

void *sub_3B3C(uint64_t a1, uint64_t a2)
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

  sub_3CB4(&qword_51DB0, &qword_3BF88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3BB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_3CB4(&qword_51DB0, &qword_3BF88);
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

uint64_t sub_3CA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3CB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3D24(uint64_t a1)
{
  result = sub_39C58();
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

uint64_t sub_3E4C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsExperience(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsExperience(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3F6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2368(v4, a1);
}

uint64_t sub_3FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4024()
{
  v1 = (type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_39E98();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_410C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_41F0;

  return sub_2758(a1, a2, v2 + v7);
}

uint64_t sub_41F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_42E4()
{
  result = qword_51D98;
  if (!qword_51D98)
  {
    sub_4348(&qword_51D88, &qword_3BF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51D98);
  }

  return result;
}

uint64_t sub_4348(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4390(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&unk_51DA0, &qword_3BF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4400(uint64_t a1)
{
  v2 = sub_3CB4(&unk_51DA0, &qword_3BF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4468()
{
  result = qword_527A0;
  if (!qword_527A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_527A0);
  }

  return result;
}

uint64_t sub_44BC(void *a1)
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

uint64_t sub_4508(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4568()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_45AC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_257C(v4, a1);
}

uint64_t sub_4620()
{
  v1 = (type metadata accessor for AppStoreSettingsExperience(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_39E98();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4710(uint64_t *a1)
{
  type metadata accessor for AppStoreSettingsExperience(0);

  return sub_269C(a1);
}

uint64_t sub_4798(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_39E98();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_4858(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_39E98();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_48FC(uint64_t a1)
{
  result = type metadata accessor for AuthKitContextIDBox(319);
  if (v2 <= 0x3F)
  {
    result = sub_39E98();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_4980()
{
  sub_4348(&qword_51D88, &qword_3BF68);
  sub_42E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for VideoAutoplaySetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoAutoplaySetting(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_4B60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C6E6F5F69666977;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 6710895;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 28271;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x6C6E6F5F69666977;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 6710895;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 28271;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3AB28();
  }

  return v11 & 1;
}

Swift::Int sub_4C54()
{
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

uint64_t sub_4CE8(uint64_t a1)
{
  sub_3A738();
}

Swift::Int sub_4D68(uint64_t a1)
{
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

unint64_t sub_4DF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5EA8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_4E28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x6C6E6F5F69666977;
  if (v2 != 1)
  {
    v5 = 6710895;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28271;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_4E7C()
{
  result = qword_51EC0;
  if (!qword_51EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51EC0);
  }

  return result;
}

uint64_t sub_4ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_3A158();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_39B68();
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3CB4(&qword_51EC8, &qword_3C130);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = sub_3CB4(&qword_51ED0, &qword_3C138);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v29 = a1;
  v30 = a2;
  sub_3CB4(&qword_51ED8, &qword_3C140);
  sub_5FE0();
  sub_3A2B8();
  sub_32020(v9);
  v31 = sub_3A708();
  v32 = v18;
  v19 = sub_6254(&qword_51F00, &qword_51EC8, &qword_3C130, &protocol conformance descriptor for List<A, B>);
  v20 = sub_6144();
  sub_3A368();

  (*(v11 + 8))(v13, v10);
  v21 = v25;
  v22 = v26;
  v23 = v27;
  (*(v26 + 104))(v25, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v27);
  v31 = v10;
  v32 = &type metadata for String;
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  sub_3A3A8();
  (*(v22 + 8))(v21, v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_5264(uint64_t a1, uint64_t a2)
{
  v4 = sub_39B68();
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v22 - 2) = a1;
  *(&v22 - 1) = a2;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_31CF8(v6);
  v26 = sub_3A708();
  v27 = v8;
  sub_6144();
  v9 = sub_3A2E8();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v26 = v9;
  v27 = v11;
  v28 = v13 & 1;
  v29 = v15;
  sub_3CB4(&qword_51F08, &qword_3C158);
  v16 = sub_4348(&qword_51EE8, &qword_3C148);
  v17 = sub_4348(&qword_51EF0, &qword_3C150);
  v18 = sub_3A148();
  v19 = sub_6254(&qword_51EF8, &qword_51EF0, &qword_3C150, &protocol conformance descriptor for Picker<A, B, C>);
  v22 = v17;
  v23 = v18;
  v24 = v19;
  v25 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v16;
  v23 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_3A558();
}

uint64_t sub_553C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a2;
  v21 = a3;
  v3 = sub_3A148();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB4(&qword_51EF0, &qword_3C150);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = sub_3CB4(&qword_51EE8, &qword_3C148);
  v18 = *(v10 - 8);
  v19 = v10;
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  sub_3A7F8();
  v17[2] = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_61A0();
  v13 = sub_3A048();
  swift_getKeyPath();
  sub_3A068();

  v26 = v22;
  v27 = v23;
  v28 = v24;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3CB4(&qword_51F18, &qword_3C188);
  sub_6200();
  sub_6254(&qword_51F28, &qword_51F18, &qword_3C188, &protocol conformance descriptor for TupleView<A>);
  sub_3A4C8();
  sub_3A138();
  v14 = sub_6254(&qword_51EF8, &qword_51EF0, &qword_3C150, &protocol conformance descriptor for Picker<A, B, C>);
  sub_3A338();
  (*(v20 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  v22 = v6;
  v23 = v3;
  v24 = v14;
  v25 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v15 = v19;
  sub_3A348();
  (*(v18 + 8))(v12, v15);
}

id sub_59AC@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v1 = sub_39B68();
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v50 - v5;
  v7 = sub_3CB4(&qword_51F30, &qword_3C190);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v54 = &v50 - v12;
  v13 = __chkstk_darwin(v11);
  v52 = &v50 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v50 - v22;
  __chkstk_darwin(v21);
  v25 = &v50 - v24;
  sub_3A7F8();
  v53 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_31054(v6);
  v58 = sub_3A708();
  v59 = v26;
  sub_6144();
  *v25 = sub_3A2E8();
  *(v25 + 1) = v27;
  v25[16] = v28 & 1;
  *(v25 + 3) = v29;
  v57 = v25;
  *(v25 + 16) = 256;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v31 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_3137C(v4);
    }

    else
    {
      sub_316A4(v4);
    }

    v58 = sub_3A708();
    v59 = v33;
    *v20 = sub_3A2E8();
    *(v20 + 1) = v34;
    v20[16] = v35 & 1;
    *(v20 + 3) = v36;
    *(v20 + 16) = 257;
    v37 = v8[4];
    v38 = v23;
    v51 = v23;
    v37(v23, v20, v7);
    sub_319CC(v6);
    v58 = sub_3A708();
    v59 = v39;
    *v17 = sub_3A2E8();
    *(v17 + 1) = v40;
    v17[16] = v41 & 1;
    *(v17 + 3) = v42;
    *(v17 + 16) = 258;
    v43 = v8[2];
    v44 = v52;
    v43(v52, v57, v7);
    v45 = v54;
    v43(v54, v38, v7);
    v46 = v55;
    v43(v55, v17, v7);
    v47 = v56;
    v43(v56, v44, v7);
    v48 = sub_3CB4(&qword_51F38, qword_3C198);
    v43(&v47[*(v48 + 48)], v45, v7);
    v43(&v47[*(v48 + 64)], v46, v7);
    v49 = v8[1];
    v49(v17, v7);
    v49(v51, v7);
    v49(v57, v7);
    v49(v46, v7);
    v49(v45, v7);
    v49(v44, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_5EA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4D908;
  v6._object = a2;
  v4 = sub_3AB08(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

__n128 sub_5EF4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_5F00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_5F5C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_5FE0()
{
  result = qword_51EE0;
  if (!qword_51EE0)
  {
    sub_4348(&qword_51ED8, &qword_3C140);
    sub_4348(&qword_51EE8, &qword_3C148);
    sub_4348(&qword_51EF0, &qword_3C150);
    sub_3A148();
    sub_6254(&qword_51EF8, &qword_51EF0, &qword_3C150, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51EE0);
  }

  return result;
}

unint64_t sub_6144()
{
  result = qword_52770;
  if (!qword_52770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52770);
  }

  return result;
}

unint64_t sub_61A0()
{
  result = qword_51F10;
  if (!qword_51F10)
  {
    type metadata accessor for AppStoreSettingsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51F10);
  }

  return result;
}

unint64_t sub_6200()
{
  result = qword_51F20;
  if (!qword_51F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_51F20);
  }

  return result;
}

uint64_t sub_6254(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_629C()
{
  sub_4348(&qword_51ED0, &qword_3C138);
  sub_4348(&qword_51EC8, &qword_3C130);
  sub_6254(&qword_51F00, &qword_51EC8, &qword_3C130, &protocol conformance descriptor for List<A, B>);
  sub_6144();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_6384()
{
  v0 = type metadata accessor for AppStoreSystemPolicyViewModel();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel____lazy_storage___systemPolicyForApp] = 0;
  v2 = &v1[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_applicationBundleIdentifier];
  *v2 = 0xD000000000000012;
  *(v2 + 1) = 0x800000000003DC50;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_2F440();

  return v3;
}

uint64_t sub_6434@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for AppStoreSystemPolicyView(0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24[1] = v4;
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_39F68();
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3CB4(&qword_51FE8, &qword_3C230);
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  type metadata accessor for AppStoreSystemPolicyViewModel();
  sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel, &unk_3DBD4);
  v14 = sub_39F88();
  v15 = *&v14[OBJC_IVAR____TtC19MobileStoreSettings29AppStoreSystemPolicyViewModel_sections];

  v32 = v15;
  swift_getKeyPath();
  sub_3CB4(&qword_51FF0, &qword_3C268);
  sub_3CB4(&qword_51FF8, &unk_3C270);
  sub_6254(&qword_52000, &qword_51FF0, &qword_3C268, &protocol conformance descriptor for [A]);
  sub_7DAC();
  sub_7E28();
  sub_3A528();
  v25 = v2;
  sub_28B2C(v9);
  sub_8318(v2, v5);
  v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v17 = swift_allocObject();
  sub_8390(v5, v17 + v16);
  sub_8474(&qword_520A8, &qword_51FE8, &qword_3C230, sub_7E28);
  sub_8804(&qword_52790, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v18 = v31;
  v19 = v27;
  v20 = v29;
  sub_3A3C8();

  (*(v30 + 8))(v9, v20);
  (*(v28 + 8))(v13, v19);
  sub_8318(v25, v5);
  v21 = swift_allocObject();
  sub_8390(v5, v21 + v16);
  result = sub_3CB4(&qword_520B0, &qword_3C2C8);
  v23 = (v18 + *(result + 36));
  *v23 = sub_8618;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  return result;
}

void sub_68E0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_3A6F8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_6948(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_3A6D8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setIdentifier:?];
}

uint64_t sub_69B8(void **a1)
{
  v1 = *a1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [v1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_3A6F8();
    v7 = v6;

    v18 = v5;
    v19 = v7;
    sub_6144();
    v8 = sub_3A2E8();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = v12 & 1;
  }

  else
  {

    v8 = 0;
    v10 = 0;
    v15 = 0;
    v14 = 0;
  }

  v18 = v8;
  v19 = v10;
  v20 = v15;
  v21 = v14;
  sub_7564(v1, v17);
  sub_3CB4(&qword_52020, &qword_3C280);
  sub_3CB4(&qword_52030, &qword_3C288);
  sub_7EE4();
  sub_8474(&qword_52028, &qword_52030, &qword_3C288, sub_7F60);
  sub_3A548();
}

uint64_t sub_6C1C(uint64_t a1, uint64_t a2)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();

  sub_3CB4(&qword_520B8, &qword_3C310);
  sub_3CB4(&qword_52040, &qword_3C290);
  sub_6254(&qword_520C0, &qword_520B8, &qword_3C310, &protocol conformance descriptor for [A]);
  sub_7DAC();
  sub_7F60();
  sub_3A528();
}

id sub_6D88@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_3CB4(&qword_52050, &qword_3C298);
  __chkstk_darwin(v3 - 8);
  v24 = &v20 - v4;
  v22 = sub_3CB4(&qword_52040, &qword_3C290);
  __chkstk_darwin(v22);
  v21 = &v20 - v5;
  v6 = *a1;
  sub_3A7F8();
  v20 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_70C0(v6, &v28);
  v8 = v28;
  v9 = v29;
  v10 = BYTE8(v29);
  v11 = BYTE9(v29);
  result = [v6 identifier];
  if (result)
  {
    v13 = result;
    sub_3A6F8();

    sub_3CB4(&qword_52060, &qword_3C2A0);
    sub_80D4();
    sub_3A398();

    sub_86E8(v8, *(&v8 + 1), v9, v10, v11);
    if ([v6 propertyForKey:PSEnabledKey])
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28 = v26;
    v29 = v27;
    if (*(&v27 + 1))
    {
      if (swift_dynamicCast())
      {
        v14 = v25 ^ 1;
LABEL_12:
        KeyPath = swift_getKeyPath();
        v16 = swift_allocObject();
        *(v16 + 16) = v14 & 1;
        v17 = v21;
        sub_8750(v24, v21, &qword_52050, &qword_3C298);
        v18 = v23;
        v19 = (v17 + *(v22 + 36));
        *v19 = KeyPath;
        v19[1] = sub_8748;
        v19[2] = v16;
        sub_8750(v17, v18, &qword_52040, &qword_3C290);
      }
    }

    else
    {
      sub_8680(&v28);
    }

    v14 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double sub_70C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [a1 cellType];
  if ((v4 - 1) >= 2)
  {
    if (v4 == &dword_4 + 2)
    {
      sub_87B8();
      sub_8804(&qword_520C8, sub_87B8, &protocol conformance descriptor for PSSpecifier);
      v14 = a1;
      sub_39FF8();
      v16 = v15;
      v17 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
      v18 = [objc_opt_self() mainScreen];
      [v18 scale];
      v20 = v19;

      [v17 setScale:v20];
      [v17 setDrawBorder:1];
      sub_8270();
      sub_82C4();
      v21 = v16;
      v22 = v17;
      sub_3A1A8();
      sub_3CB4(&qword_52080, &unk_3C2B0);
      sub_81E4();
      sub_3A1A8();
    }

    else
    {
      sub_3CB4(&qword_52080, &unk_3C2B0);
      sub_81E4();
      sub_3A1A8();
    }
  }

  else
  {
    sub_87B8();
    sub_8804(&qword_520C8, sub_87B8, &protocol conformance descriptor for PSSpecifier);
    v5 = a1;
    sub_39FF8();
    v7 = v6;
    v8 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    v9 = [objc_opt_self() mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setScale:v11];
    [v8 setDrawBorder:1];
    sub_8270();
    sub_82C4();
    v12 = v7;
    v13 = v8;
    sub_3A1A8();
    sub_3CB4(&qword_52080, &unk_3C2B0);
    sub_81E4();
    sub_3A1A8();
  }

  result = *&v24;
  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 25) = v27;
  return result;
}

uint64_t sub_7564@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ([a1 propertyForKey:PSFooterTextGroupKey])
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_8680(v16);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    v4 = 0;
    v6 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v16[0] = v13;
  sub_6144();
  v4 = sub_3A2E8();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12 = v8 & 1;
LABEL_11:
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

void sub_76E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_39F68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 104))(v6, enum case for ScenePhase.active(_:), v3);
  v7 = sub_39F58();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    type metadata accessor for AppStoreSystemPolicyView(0);
    type metadata accessor for AppStoreSystemPolicyViewModel();
    sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel, &unk_3DBD4);
    v8 = sub_39F88();
    sub_2F440();
  }

  else
  {
  }
}

uint64_t sub_78EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_79C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3CB4(&qword_51F40, &unk_3C1B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for AppStoreSystemPolicyView(uint64_t a1)
{
  result = qword_51FA0;
  if (!qword_51FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7ADC(uint64_t a1)
{
  sub_7B60(319);
  if (v1 <= 0x3F)
  {
    sub_7BB8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_7B60(uint64_t a1)
{
  if (!qword_52680)
  {
    sub_39F68();
    v1 = sub_39F78();
    if (!v2)
    {
      atomic_store(v1, &qword_52680);
    }
  }
}

void sub_7BB8(uint64_t a1)
{
  if (!qword_51FB0)
  {
    type metadata accessor for AppStoreSystemPolicyViewModel();
    sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel, &unk_3DBD4);
    v1 = sub_39FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_51FB0);
    }
  }
}

void sub_7C68(uint64_t a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSystemPolicyView(0);
  type metadata accessor for AppStoreSystemPolicyViewModel();
  sub_8804(&qword_51FB8, type metadata accessor for AppStoreSystemPolicyViewModel, &unk_3DBD4);
  v1 = sub_39F88();
  sub_2F440();
}

unint64_t sub_7DAC()
{
  result = qword_52008;
  if (!qword_52008)
  {
    sub_4348(&qword_51DC0, &qword_3DA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52008);
  }

  return result;
}

unint64_t sub_7E28()
{
  result = qword_52010;
  if (!qword_52010)
  {
    sub_4348(&qword_51FF8, &unk_3C270);
    sub_7EE4();
    sub_8474(&qword_52028, &qword_52030, &qword_3C288, sub_7F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52010);
  }

  return result;
}

unint64_t sub_7EE4()
{
  result = qword_52018;
  if (!qword_52018)
  {
    sub_4348(&qword_52020, &qword_3C280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52018);
  }

  return result;
}

unint64_t sub_7F60()
{
  result = qword_52038;
  if (!qword_52038)
  {
    sub_4348(&qword_52040, &qword_3C290);
    sub_8018();
    sub_6254(&unk_528D0, &qword_520A0, &unk_3D210, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52038);
  }

  return result;
}

unint64_t sub_8018()
{
  result = qword_52048;
  if (!qword_52048)
  {
    sub_4348(&qword_52050, &qword_3C298);
    sub_80D4();
    sub_8804(&qword_52098, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52048);
  }

  return result;
}

unint64_t sub_80D4()
{
  result = qword_52058;
  if (!qword_52058)
  {
    sub_4348(&qword_52060, &qword_3C2A0);
    sub_8158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52058);
  }

  return result;
}

unint64_t sub_8158()
{
  result = qword_52068;
  if (!qword_52068)
  {
    sub_4348(&qword_52070, &qword_3C2A8);
    sub_81E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52068);
  }

  return result;
}

unint64_t sub_81E4()
{
  result = qword_52078;
  if (!qword_52078)
  {
    sub_4348(&qword_52080, &unk_3C2B0);
    sub_8270();
    sub_82C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52078);
  }

  return result;
}

unint64_t sub_8270()
{
  result = qword_52088;
  if (!qword_52088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52088);
  }

  return result;
}

unint64_t sub_82C4()
{
  result = qword_52090;
  if (!qword_52090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52090);
  }

  return result;
}

uint64_t sub_8318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSystemPolicyView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_8380(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_8390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSystemPolicyView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_83F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreSystemPolicyView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_76E0(a1, a2, v6);
}

uint64_t sub_8474(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_84F0()
{
  v1 = type metadata accessor for AppStoreSystemPolicyView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_39F68();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_8380(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8), *(v0 + v3 + *(v1 + 20) + 16));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_8618()
{
  v1 = *(type metadata accessor for AppStoreSystemPolicyView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_7C68(v2);
}

uint64_t sub_8680(uint64_t a1)
{
  v2 = sub_3CB4(&qword_52990, qword_3C2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_86E8(uint64_t result, void *a2, void *a3, char a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_86F8(result, a2, a3);
  }
}

void sub_86F8(uint64_t a1, void *a2, void *a3)
{
}

uint64_t sub_8750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3CB4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_87B8()
{
  result = qword_52D40;
  if (!qword_52D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52D40);
  }

  return result;
}

uint64_t sub_8804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_8850()
{
  result = qword_520D0;
  if (!qword_520D0)
  {
    sub_4348(&qword_520B0, &qword_3C2C8);
    sub_4348(&qword_51FE8, &qword_3C230);
    sub_39F68();
    sub_8474(&qword_520A8, &qword_51FE8, &qword_3C230, sub_7E28);
    sub_8804(&qword_52790, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_520D0);
  }

  return result;
}

uint64_t sub_89A0()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_8A10()
{
  result = qword_52190;
  if (!qword_52190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52190);
  }

  return result;
}

uint64_t sub_8A64(uint64_t *a1)
{
  v1 = *a1;
  sub_3A7F8();
  v3[2] = v1;
  return sub_2F638(sub_8F44, v3, "MobileStoreSettings/AuthorizedAutoUpdatesSettingsWrapper.swift", 62, 2u, 24);
}

void sub_8AD8(void *a1)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 parentViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 title];
    [v3 setTitle:v4];
  }

  v5 = [a1 parentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 navigationItem];

    v8 = [a1 navigationItem];
    v9 = [v8 rightBarButtonItems];

    [v7 setRightBarButtonItems:v9];
  }

  else
  {
  }
}

uint64_t sub_8C68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AuthorizedAutoUpdatesSettingsWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_8CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8DD8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_8D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8DD8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_8DB0(uint64_t a1)
{
  sub_8DD8();
  sub_3A238();
  __break(1u);
}

unint64_t sub_8DD8()
{
  result = qword_52198;
  if (!qword_52198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52198);
  }

  return result;
}

id sub_8E2C()
{
  v0 = [objc_allocWithZone(AutoUpdateSettingsController) init];
  sub_3CB4(&qword_521A0, qword_3C460);
  sub_3A278();
  swift_getKeyPath();
  v1 = sub_39B88();

  v2 = *(v4 + 16);
  *(v4 + 16) = v1;

  return v0;
}

id sub_8F08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentViewController];
  *a2 = result;
  return result;
}

uint64_t sub_8F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_3A158();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_39B68();
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3CB4(&qword_521A8, &qword_3C538);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = sub_3CB4(&qword_521B0, &qword_3C540);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v29 = a1;
  v30 = a2;
  sub_3CB4(&qword_521B8, &qword_3C548);
  sub_A9B0();
  sub_3A2B8();
  sub_33114(v9);
  v31 = sub_3A708();
  v32 = v18;
  v19 = sub_6254(&qword_52200, &qword_521A8, &qword_3C538, &protocol conformance descriptor for List<A, B>);
  v20 = sub_6144();
  sub_3A368();

  (*(v11 + 8))(v13, v10);
  v21 = v25;
  v22 = v26;
  v23 = v27;
  (*(v26 + 104))(v25, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v27);
  v31 = v10;
  v32 = &type metadata for String;
  v33 = v19;
  v34 = v20;
  swift_getOpaqueTypeConformance2();
  sub_3A3A8();
  (*(v22 + 8))(v21, v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_9320(void *a1, uint64_t a2)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_A220(a1, v5);
  sub_3CB4(&qword_52208, &qword_3C578);
  sub_3CB4(&qword_521E8, &qword_3C560);
  sub_4348(&qword_521C8, &qword_3C550);
  sub_4348(&qword_521D0, &qword_3C558);
  sub_3A148();
  sub_6254(&qword_521D8, &qword_521D0, &qword_3C558, &protocol conformance descriptor for Picker<A, B, C>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_AB14();
  sub_3A558();
}

uint64_t sub_9530@<X0>(uint64_t a3@<X8>)
{
  v33 = a3;
  v3 = sub_3A148();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB4(&qword_52210, &qword_3C5C8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v25 = sub_3CB4(&qword_521D0, &qword_3C558);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v24 - v11;
  v13 = sub_3CB4(&qword_521C8, &qword_3C550);
  v28 = *(v13 - 8);
  v29 = v13;
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  sub_3A7F8();
  v26 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_ACE8(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v16 = sub_3A048();
  swift_getKeyPath();
  sub_3A068();

  v24 = &v24;
  __chkstk_darwin(v17);
  sub_AC78(v10, v8);
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_39D48();
  sub_3CB4(&qword_52218, &qword_3C5D0);
  sub_ACE8(&qword_52220, &type metadata accessor for CellularSettings.Prompt, &protocol conformance descriptor for CellularSettings.Prompt);
  sub_6254(&qword_52228, &qword_52218, &qword_3C5D0, &protocol conformance descriptor for TupleView<A>);
  sub_3A4C8();
  sub_AD30(v10);
  v18 = v30;
  sub_3A138();
  v19 = sub_6254(&qword_521D8, &qword_521D0, &qword_3C558, &protocol conformance descriptor for Picker<A, B, C>);
  v20 = v25;
  v21 = v32;
  sub_3A338();
  (*(v31 + 8))(v18, v21);
  (*(v27 + 8))(v12, v20);
  v34 = v20;
  v35 = v21;
  v36 = v19;
  v37 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_3A348();
  (*(v28 + 8))(v15, v22);
}

uint64_t sub_9AC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v79[1] = a2;
  v86 = a1;
  v93 = a3;
  v3 = sub_39D48();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_39B68();
  v8 = __chkstk_darwin(v7 - 8);
  v85 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v79 - v10;
  v84 = sub_3CB4(&qword_52230, &qword_3C5D8);
  v89 = *(v84 - 8);
  v12 = __chkstk_darwin(v84);
  v92 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v91 = v79 - v15;
  v16 = __chkstk_darwin(v14);
  v90 = v79 - v17;
  v18 = __chkstk_darwin(v16);
  v88 = v79 - v19;
  v20 = __chkstk_darwin(v18);
  v81 = v79 - v21;
  v22 = __chkstk_darwin(v20);
  v100 = v79 - v23;
  __chkstk_darwin(v22);
  v99 = v79 - v24;
  sub_3A7F8();
  v87 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_32348(v11);
  v101 = sub_3A708();
  v102 = v25;
  v83 = sub_6144();
  v26 = sub_3A2E8();
  v80 = v11;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *(v4 + 104);
  v98 = v4 + 104;
  v82 = v33;
  v33(v6, enum case for CellularSettings.Prompt.never(_:), v3);
  v95 = sub_3CB4(&qword_51C18, &unk_3C5E0);
  v34 = v6;
  v35 = v3;
  v36 = v99;
  v37 = &v99[*(v95 + 36)];
  v38 = v34;
  v39 = v35;
  v96 = *(v4 + 32);
  v97 = v4 + 32;
  v96(v37);
  v94 = sub_3CB4(&qword_51C20, &qword_3BE50);
  v37[*(v94 + 36)] = 1;
  *v36 = v26;
  *(v36 + 1) = v28;
  v36[16] = v30 & 1;
  *(v36 + 3) = v32;
  if (v86)
  {
    v40 = v86;
    sub_129A0();
    v42 = v41;
    v44 = v43;

    sub_32368(v42, v44, v85);

    v101 = sub_3A708();
    v102 = v45;
    v46 = sub_3A2E8();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v39;
    v54 = v39;
    v55 = v82;
    v82(v38, enum case for CellularSettings.Prompt.overLimit(_:), v54);
    v56 = v55;
    v57 = v81;
    v58 = &v81[*(v95 + 36)];
    (v96)(v58, v38, v53);
    v58[*(v94 + 36)] = 1;
    *v57 = v46;
    *(v57 + 1) = v48;
    v57[16] = v50 & 1;
    *(v57 + 3) = v52;
    v59 = v89;
    v60 = v57;
    v61 = v84;
    (*(v89 + 32))(v100, v60, v84);
    sub_32708(v80);
    v101 = sub_3A708();
    v102 = v62;
    v63 = sub_3A2E8();
    v65 = v64;
    LOBYTE(v48) = v66;
    v68 = v67;
    v56(v38, enum case for CellularSettings.Prompt.always(_:), v53);
    v69 = v88;
    v70 = &v88[*(v95 + 36)];
    (v96)(v70, v38, v53);
    v70[*(v94 + 36)] = 1;
    *v69 = v63;
    *(v69 + 1) = v65;
    v69[16] = v48 & 1;
    *(v69 + 3) = v68;
    v71 = *(v59 + 16);
    v72 = v90;
    v71(v90, v99, v61);
    v73 = v91;
    v71(v91, v100, v61);
    v74 = v92;
    v71(v92, v69, v61);
    v75 = v93;
    v71(v93, v72, v61);
    v76 = sub_3CB4(&qword_52238, &unk_3C5F0);
    v71(&v75[*(v76 + 48)], v73, v61);
    v71(&v75[*(v76 + 64)], v74, v61);
    v77 = *(v59 + 8);
    v77(v69, v61);
    v77(v100, v61);
    v77(v99, v61);
    v77(v74, v61);
    v77(v73, v61);
    v77(v72, v61);
  }

  else
  {
    type metadata accessor for AppStoreSettingsViewModel(0);
    sub_ACE8(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
    result = sub_3A058();
    __break(1u);
  }

  return result;
}

uint64_t sub_A220@<X0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  v5 = sub_39B68();
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_39D48();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  v12 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = a1;
    sub_39EE8();

    v14 = (*(v9 + 88))(v11, v8);
    v44 = v12;
    v45 = a3;
    if (v14 == enum case for CellularSettings.Prompt.always(_:))
    {

      sub_32724(v7);
      *&v49 = sub_3A708();
      *(&v49 + 1) = v15;
      sub_6144();
      v16 = sub_3A2E8();
      v18 = v17;
      *&v46 = v16;
      *(&v46 + 1) = v17;
      v20 = v19 & 1;
      *&v47 = v19 & 1;
      *(&v47 + 1) = v21;
      LOBYTE(v48) = 0;
      sub_3CA4(v16, v17, v19 & 1);

      sub_3A1A8();
      v46 = v49;
      v47 = v50;
      v48 = v51;
      sub_3CB4(&qword_528F0, &qword_3C568);
      sub_3CB4(&qword_521F8, &qword_3C570);
      sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
      sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    }

    else if (v14 == enum case for CellularSettings.Prompt.overLimit(_:))
    {
      sub_129A0();
      v23 = v22;
      v25 = v24;

      sub_32A4C(v23, v25, v7);

      *&v49 = sub_3A708();
      *(&v49 + 1) = v26;
      sub_6144();
      v16 = sub_3A2E8();
      v18 = v27;
      v20 = v28 & 1;
      *&v46 = v16;
      *(&v46 + 1) = v27;
      *&v47 = v28 & 1;
      *(&v47 + 1) = v29;
      LOBYTE(v48) = 1;
      sub_3CA4(v16, v27, v28 & 1);

      sub_3A1A8();
      v46 = v49;
      v47 = v50;
      v48 = v51;
      sub_3CB4(&qword_528F0, &qword_3C568);
      sub_3CB4(&qword_521F8, &qword_3C570);
      sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
      sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    }

    else
    {
      v30 = enum case for CellularSettings.Prompt.never(_:);
      v31 = v14;

      if (v31 != v30)
      {
        v46 = 0u;
        v47 = 0u;
        LOBYTE(v48) = 1;
        sub_3A1A8();
        v46 = v49;
        v47 = v50;
        LOBYTE(v48) = v51;
        HIBYTE(v48) = 1;
        sub_3CB4(&qword_528F0, &qword_3C568);
        sub_3CB4(&qword_521F8, &qword_3C570);
        sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
        sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
        sub_3A1A8();
        v42 = v50;
        v43 = v49;
        v39 = v51;
        v40 = v52;
        (*(v9 + 8))(v11, v8);

        v38 = v42;
        v37 = v43;
        goto LABEL_11;
      }

      sub_32DE8(v7);
      *&v49 = sub_3A708();
      *(&v49 + 1) = v32;
      sub_6144();
      v16 = sub_3A2E8();
      v18 = v33;
      *&v46 = v16;
      *(&v46 + 1) = v33;
      v20 = v34 & 1;
      *&v47 = v34 & 1;
      *(&v47 + 1) = v35;
      LOBYTE(v48) = 0;
      sub_3CA4(v16, v33, v34 & 1);

      sub_3A1A8();
      v46 = v49;
      v47 = v50;
      LOBYTE(v48) = v51;
      HIBYTE(v48) = 1;
      sub_3CB4(&qword_528F0, &qword_3C568);
      sub_3CB4(&qword_521F8, &qword_3C570);
      sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
      sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    }

    sub_3A1A8();
    sub_AC60(v16, v18, v20);

    v37 = v49;
    v38 = v50;
    v39 = v51;
    v40 = v52;
LABEL_11:
    v41 = v45;
    *v45 = v37;
    v41[1] = v38;
    *(v41 + 32) = v39;
    *(v41 + 33) = v40;
    return result;
  }

  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_ACE8(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  result = sub_3A058();
  __break(1u);
  return result;
}

unint64_t sub_A9B0()
{
  result = qword_521C0;
  if (!qword_521C0)
  {
    sub_4348(&qword_521B8, &qword_3C548);
    sub_4348(&qword_521C8, &qword_3C550);
    sub_4348(&qword_521D0, &qword_3C558);
    sub_3A148();
    sub_6254(&qword_521D8, &qword_521D0, &qword_3C558, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_AB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_521C0);
  }

  return result;
}

unint64_t sub_AB14()
{
  result = qword_521E0;
  if (!qword_521E0)
  {
    sub_4348(&qword_521E8, &qword_3C560);
    sub_ABE0(&qword_521F0, &qword_528F0, &qword_3C568);
    sub_ABE0(&unk_52A10, &qword_521F8, &qword_3C570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_521E0);
  }

  return result;
}

uint64_t sub_ABE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4348(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_AC60(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_AC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52210, &qword_3C5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_ACE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AD30(uint64_t a1)
{
  v2 = sub_3CB4(&qword_52210, &qword_3C5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AD98()
{
  sub_4348(&qword_521B0, &qword_3C540);
  sub_4348(&qword_521A8, &qword_3C538);
  sub_6254(&qword_52200, &qword_521A8, &qword_3C538, &protocol conformance descriptor for List<A, B>);
  sub_6144();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_AE80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_39B68();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v48[-v7];
  sub_3343C(&v48[-v7]);
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = sub_3A6D8();
  v11 = [v9 initWithSuiteName:v10];

  if (v11)
  {
    v50 = "deoSetLastAutoPlayVideoValue";
    v12 = sub_3A6D8();
    v49 = [v11 BOOLForKey:v12];

    v13 = sub_3A6D8();
    v14 = [v11 stringForKey:v13];

    v53 = v2;
    v54 = a1;
    v52 = v14;
    if (v14)
    {
      sub_3A6F8();
      v51 = v15;
    }

    else
    {
      v51 = 0;
    }

    IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
    v58 = "AutoPlayVideoSetting";
    v17 = sub_3A6D8();
    v18 = [v11 objectForKey:v17];

    if (v18)
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    sub_8680(&v60);
    v19 = sub_3A6D8();
    v20 = [v11 BOOLForKey:v19];

    v59 = IsVideoAutoplayEnabled;
    if (IsVideoAutoplayEnabled == v20)
    {
      v21 = (v18 == 0) & (IsVideoAutoplayEnabled ^ 1);
    }

    else
    {
      v21 = 1;
    }

    v22 = [objc_opt_self() processInfo];
    v57 = [v22 isLowPowerModeEnabled];

    v55 = 0xD000000000000015;
    v56 = "LastUserSetAutoPlayVideoValue";
    v23 = sub_3A6D8();
    v24 = [v11 objectForKey:v23];

    if (v24)
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    sub_8680(&v60);
    v25 = sub_3A6D8();
    v26 = [v11 BOOLForKey:v25];

    v27 = v57;
    if (v57 == v26)
    {
      v28 = v49 ^ 1 | v21;
      if (v24)
      {
        if (v28)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }

      if (((v28 | v57) & 1) == 0)
      {
LABEL_25:

        v2 = v53;
        a1 = v54;
        return (*(v3 + 32))(a1, v8, v2);
      }
    }

LABEL_17:
    if (v59)
    {
      v29 = sub_3A6D8();
      [v11 setBool:0 forKey:v29];

      v2 = v53;
      if (!v27)
      {
LABEL_19:
        v30 = sub_3A6D8();
        [v11 setBool:0 forKey:v30];

        if (v59)
        {
          v31 = sub_3A6D8();
          [v11 setBool:0 forKey:v31];

          v32 = sub_3A6D8();
          [v11 setBool:0 forKey:v32];

          if (v51)
          {

            v33 = sub_3A6D8();
            v34 = v52;
            [v11 setObject:v52 forKey:v33];

            v35 = sub_3A6D8();
            [v11 setBool:1 forKey:v35];
          }

          else
          {

            v44 = sub_3A6D8();
            [v11 setURL:0 forKey:v44];

            v35 = sub_3A6D8();
            [v11 setBool:0 forKey:v35];
          }
        }

        else
        {
        }

        v27 = v57;
        goto LABEL_30;
      }
    }

    else
    {
      v36 = sub_3A6D8();
      v37 = sub_3A6D8();
      [v11 setObject:v36 forKey:v37];

      v27 = v57;
      v38 = sub_3A6D8();
      [v11 setBool:1 forKey:v38];

      v39 = sub_3A6D8();
      [v11 setBool:0 forKey:v39];

      sub_33764(v6);
      v2 = v53;
      (*(v3 + 8))(v8, v53);
      (*(v3 + 32))(v8, v6, v2);
      if (!v27)
      {
        goto LABEL_19;
      }
    }

    v40 = sub_3A6D8();
    v41 = sub_3A6D8();
    [v11 setObject:v40 forKey:v41];

    v42 = sub_3A6D8();
    [v11 setBool:1 forKey:v42];

    v43 = sub_3A6D8();
    [v11 setBool:0 forKey:v43];

    sub_33A8C(v6);
    (*(v3 + 8))(v8, v2);
    (*(v3 + 32))(v8, v6, v2);

LABEL_30:
    v45 = sub_3A6D8();
    [v11 setBool:v59 forKey:v45];

    v46 = sub_3A6D8();
    [v11 setBool:v27 forKey:v46];

    [v11 synchronize];
    a1 = v54;
  }

  return (*(v3 + 32))(a1, v8, v2);
}

void sub_B700(char a1, char a2)
{
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = sub_3A6D8();
  v14 = [v3 initWithSuiteName:v4];

  if (v14)
  {
    v5 = sub_3A6D8();

    v6 = sub_3A6D8();
    [v14 setObject:v5 forKey:v6];

    if (a2)
    {
      IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
      v8 = sub_3A6D8();
      [v14 setBool:IsVideoAutoplayEnabled forKey:v8];

      v9 = sub_3A6D8();
      [v14 setBool:0 forKey:v9];

      v10 = sub_3A6D8();
      [v14 setBool:0 forKey:v10];

      v11 = sub_3A6D8();
      [v14 setBool:1 forKey:v11];

      v12 = sub_3A6D8();

      v13 = sub_3A6D8();
      [v14 setObject:v12 forKey:v13];
    }

    [v14 synchronize];
  }
}

id sub_B9D8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_8680(&v13);
    return &dword_0 + 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_8680(&v13);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 BOOLForKey:v8];

    return v9;
  }

  return &dword_0 + 1;
}

id sub_BB78()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_8680(&v13);
    return &dword_0 + 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_8680(&v13);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 BOOLForKey:v8];

    return v9;
  }

  return &dword_0 + 1;
}

uint64_t sub_BD18()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_3A6D8();
  v4 = [v2 stringForKey:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_3A6F8();
  v7 = v6;

  v8 = v5 == 28271 && v7 == 0xE200000000000000;
  if (v8 || (sub_3AB28() & 1) != 0)
  {

    return 0;
  }

  if (v5 == 0x6C6E6F5F69666977 && v7 == 0xE900000000000079 || (sub_3AB28() & 1) != 0)
  {

    return 1;
  }

  else if (v5 == 6710895 && v7 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v10 = sub_3AB28();

    if (v10)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

id sub_BEE4()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_8680(&v13);
    return &dword_0 + 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  sub_8680(&v13);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_3A6D8();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_3A6D8();
    v9 = [v7 BOOLForKey:v8];

    return v9;
  }

  return &dword_0 + 1;
}

uint64_t sub_C084()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 1;
  }

  v3 = sub_3A6D8();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_8680(&v18);
  v5 = sub_3A6D8();
  v6 = [v2 BOOLForKey:v5];

  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_3A6D8();
  v9 = [v2 objectForKey:v8];

  if (v9)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_8680(&v18);
  v10 = sub_3A6D8();
  v11 = [v2 BOOLForKey:v10];

  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_3A6D8();
  v14 = [v2 objectForKey:v13];

  if (v14)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_8680(&v18);
  v15 = sub_3A6D8();
  v16 = [v2 BOOLForKey:v15];

  if (v16)
  {
    if (!((v7 | v12) & 1 | (v14 != 0)))
    {
      return 1;
    }
  }

  else if (((v7 | v12) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

id sub_C3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPrivacyViewWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_C438(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C450(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_C460(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_C484()
{
  result = qword_52308;
  if (!qword_52308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52308);
  }

  return result;
}

void *sub_C4DC@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for OnboardingPrivacyViewWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV19MobileStoreSettings28OnboardingPrivacyViewWrapper11Coordinator_onDismiss];
  *v7 = v4;
  v7[1] = v3;
  sub_C450(v4, v3);
  v9.receiver = v6;
  v9.super_class = v5;
  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_C55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C64C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_C5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C64C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_C624(uint64_t a1)
{
  sub_C64C();
  sub_3A238();
  __break(1u);
}

unint64_t sub_C64C()
{
  result = qword_52310;
  if (!qword_52310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_52310);
  }

  return result;
}

void sub_C6A0()
{
  v0 = sub_39B68();
  __chkstk_darwin(v0 - 8);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB4(&qword_52318, &unk_3DA60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_3C620;
  v4 = sub_3A6D8();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier:v4];

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v3 + 32) = v6;
  v7 = sub_3A6D8();
  v8 = [v5 bundleWithIdentifier:v7];

  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v3 + 40) = v8;
  v9 = objc_allocWithZone(OBPrivacyCombinedController);
  sub_CA44();
  isa = sub_3A768().super.isa;

  v11 = [v9 initWithBundles:isa];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v12 = objc_allocWithZone(UINavigationController);
  v13 = v11;
  [v12 initWithRootViewController:v13];
  v14 = [v13 navigationItem];

  sub_33DB4(v2);
  sub_3A708();
  v24 = type metadata accessor for OnboardingPrivacyViewWrapper.Coordinator();
  sub_3CB4(&qword_52328, &qword_3C770);
  sub_3A278();
  v15 = sub_3A6D8();

  v16 = v24;
  if (v24)
  {
    v17 = sub_CA90(v23, v24);
    v18 = *(v16 - 8);
    __chkstk_darwin(v17);
    v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_3AB18();
    (*(v18 + 8))(v20, v16);
    sub_44BC(v23);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:2 target:v21 action:"dismissViewController"];

  swift_unknownObjectRelease();
  [v14 setRightBarButtonItem:v22];
}

unint64_t sub_CA44()
{
  result = qword_52320;
  if (!qword_52320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_52320);
  }

  return result;
}

void *sub_CA90(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_CAD4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_CB80@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a2 = v4;
  return result;
}

uint64_t sub_CC3C(uint64_t a1)
{
  v2 = sub_39D48();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_D26C(v4);
}

uint64_t sub_CD58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v1;
}

uint64_t sub_CDE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v1;
}

void sub_CE94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_CFB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_D0CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_D1FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();
}

uint64_t sub_D26C(uint64_t a1)
{
  v3 = sub_39D48();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);
  v1;
  sub_39EF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  swift_beginAccess();
  sub_39D28();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_D414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v1;
}

void sub_D488(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_39EF8();
  if (v2[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    sub_B700(v3, 1);
  }
}

void sub_D570(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_39EF8();
  if (v2[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    sub_B700(v3, 1);
  }
}

void sub_D650()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

void sub_D76C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_3A6D8();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_3A6D8();
    [v2 setBool:v4 forKey:v3];
  }
}

uint64_t sub_D888()
{
  v0 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v3 = v13[15];
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_3A6D8();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v7 = sub_3A6D8();
    [v6 setBool:v3 forKey:v7];
  }

  v8 = sub_3A818();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v9 = v13[14];
  sub_3A7F8();
  v10 = sub_3A7E8();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v9;
  sub_DD34(0, 0, v2, &unk_3CB98, v11);
}

uint64_t sub_DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_3A7F8();
  v4[3] = sub_3A7E8();
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_DB98;

  return static AppDistributor.setShouldShowInstallConfirmations(for:shouldShow:)(0xD000000000000012, 0x800000000003DC50, a4);
}

uint64_t sub_DB98()
{

  v1 = sub_3A798();

  return _swift_task_switch(sub_DCD4, v1, v0);
}

uint64_t sub_DCD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_DD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1A5AC(a3, v25 - v10, &unk_524C0, &qword_3C850);
  v12 = sub_3A818();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A614(v11, &unk_524C0, &qword_3C850);
  }

  else
  {
    sub_3A808();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_3A798();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_3A728() + 32;
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

      sub_1A614(a3, &unk_524C0, &qword_3C850);

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

  sub_1A614(a3, &unk_524C0, &qword_3C850);
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

uint64_t sub_E048(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  return v3;
}

char *sub_E0B4()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v1 - 8);
  v139 = &v120 - v2;
  v3 = sub_39D08();
  __chkstk_darwin(v3 - 8);
  v138 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB4(&qword_52540, &qword_3CEE0);
  v136 = *(v5 - 1);
  v137 = v5;
  __chkstk_darwin(v5);
  v135 = &v120 - v6;
  v7 = sub_3CB4(&qword_52548, &qword_3CEE8);
  v133 = *(v7 - 8);
  v134 = v7;
  __chkstk_darwin(v7);
  v132 = &v120 - v8;
  v9 = sub_39D48();
  v10 = *(v9 - 8);
  v142 = v9;
  v143 = v10;
  v11 = __chkstk_darwin(v9);
  v141 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v140 = &v120 - v13;
  v14 = sub_3CB4(&qword_52550, &qword_3CEF0);
  v130 = *(v14 - 8);
  v131 = v14;
  __chkstk_darwin(v14);
  v129 = &v120 - v15;
  v128 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  v16 = __chkstk_darwin(v128);
  v127 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v124 = &v120 - v18;
  v126 = sub_3CB4(&qword_52558, &qword_3CEF8);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v120 - v19;
  v122 = sub_3CB4(&qword_52560, &qword_3CF00);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v21 = &v120 - v20;
  v22 = sub_3CB4(&qword_52568, &qword_3CF08);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v120 - v24;
  v26 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutoPlayVideoDefaultSetting];
  *v26 = 0xD00000000000001BLL;
  v26[1] = 0x800000000003E680;
  v27 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadsKinds];
  *v27 = 0xD000000000000016;
  v27[1] = 0x800000000003E6A0;
  v28 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware];
  *v28 = 0x6572617774666F73;
  v28[1] = 0xE800000000000000;
  v29 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__isSignedIn;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v30 = *(v23 + 32);
  v30(&v0[v29], v25, v22);
  v31 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__isLowPowerMode;
  v32 = [objc_opt_self() processInfo];
  LOBYTE(v29) = [v32 isLowPowerModeEnabled];

  LOBYTE(v145) = v29;
  sub_39ED8();
  v30(&v0[v31], v25, v22);
  v33 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__hasMultipleMarketplaces;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v30(&v0[v33], v25, v22);
  v34 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__hasEverHadMultipleMarketplaces;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v30(&v0[v34], v25, v22);
  v120 = v30;
  v35 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__telephonyClient;
  v145 = 0;
  sub_3CB4(&qword_52488, &qword_3C7D0);
  sub_39ED8();
  (*(v121 + 32))(&v0[v35], v21, v122);
  v36 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__isCellularPolicyEnabled;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v30(&v0[v36], v25, v22);
  v37 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__cachedCellularLimit;
  v145 = 0;
  v146 = 1;
  sub_3CB4(&qword_52498, &qword_3C7D8);
  v38 = v123;
  sub_39ED8();
  (*(v125 + 32))(&v0[v37], v38, v126);
  v39 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__videoAutoplayFooterValue;
  v40 = sub_39B68();
  v41 = v124;
  (*(*(v40 - 8) + 56))(v124, 1, 1, v40);
  sub_1A5AC(v41, v127, &qword_524A8, &qword_3C7E0);
  v42 = v129;
  sub_39ED8();
  v43 = v41;
  v44 = v120;
  sub_1A614(v43, &qword_524A8, &qword_3C7E0);
  v130[4](&v0[v39], v42, v131);
  v45 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__showResetIdentifiersButton;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v44(&v0[v45], v25, v22);
  v46 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__autoDownloadAppsEnabled;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v44(&v0[v46], v25, v22);
  v47 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__autoUpdatesEnabled;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v44(&v0[v47], v25, v22);
  v48 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__autoBackgroundAssetsEnabled;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v44(&v0[v48], v25, v22);
  v49 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__cellularAutoDownloadsEnabled;
  LOBYTE(v145) = 1;
  sub_39ED8();
  v131 = v22;
  v44(&v0[v49], v25, v22);
  v50 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__cellularAutoDownloadPrompt;
  v52 = v142;
  v51 = v143;
  v53 = v140;
  (*(v143 + 104))(v140, enum case for CellularSettings.Prompt.overLimit(_:), v142);
  v54 = v51;
  v55 = *(v51 + 16);
  v129 = (v51 + 16);
  v128 = v55;
  v55(v141, v53, v52);
  v56 = v132;
  sub_39ED8();
  v57 = *(v54 + 8);
  v143 = v54 + 8;
  v130 = v57;
  (v57)(v53, v52);
  (*(v133 + 32))(&v0[v50], v56, v134);
  v58 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__videoAutoplayValue;
  LOBYTE(v145) = sub_BD18();
  v59 = v135;
  sub_39ED8();
  (*(v136 + 32))(&v0[v58], v59, v137);
  if (sub_BD18())
  {
    v60 = sub_3AB28();
  }

  else
  {
    v60 = 1;
  }

  v61 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__videoAutoplayToggleValue;
  LOBYTE(v145) = v60 & 1;
  sub_39ED8();
  v62 = v131;
  v44(&v0[v61], v25, v131);
  v63 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__inAppRatingsAndReviewsEnabled;
  LOBYTE(v145) = 1;
  sub_39ED8();
  v44(&v0[v63], v25, v62);
  v64 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__offloadUnusedAppsEnabled;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v44(&v0[v64], v25, v62);
  v65 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__installConfirmationsEnabled;
  LOBYTE(v145) = 0;
  sub_39ED8();
  v44(&v0[v65], v25, v62);
  v66 = &v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag];
  *v66 = 0u;
  *(v66 + 1) = 0u;
  *(v66 + 4) = 0;
  *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued] = 0;
  *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsRequestsQueued] = 0;
  sub_39CF8();
  sub_39D38();
  v138 = "iencePluginLoader";
  sub_39E88();
  v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] = 1;
  v67 = type metadata accessor for AppStoreSettingsViewModel(0);
  v144.receiver = v0;
  v144.super_class = v67;
  v68 = objc_msgSendSuper2(&v144, "init");
  sub_FF84();
  sub_1017C();
  sub_11854();
  v69 = sub_3A818();
  v70 = v139;
  v136 = *(*(v69 - 8) + 56);
  (v136)(v139, 1, 1, v69);
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_3A7F8();

  v72 = sub_3A7E8();
  v73 = swift_allocObject();
  v73[2] = v72;
  v73[3] = &protocol witness table for MainActor;
  v73[4] = v71;

  sub_DD34(0, 0, v70, &unk_3CF18, v73);

  v74 = sub_19558();
  swift_getKeyPath();
  swift_getKeyPath();
  v145 = v74;
  v75 = v68;
  sub_39EF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v76 = v145;
  if (v145)
  {
    [v145 setDelegate:v75];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v77 = v145;
  if (v145)
  {
    sub_19954(&off_4D970);
    sub_1AEA0(&unk_4D990);
    isa = sub_3A828().super.isa;

    v145 = 0;
    v79 = [v77 getLocalPolicies:isa error:&v145];

    v80 = v145;
    v137 = v77;
    if (v79)
    {
      sub_1AF40(0, &unk_52D50, CTDataUsagePolicies_ptr);
      sub_18510();
      v81 = sub_3A838();
      v82 = v80;

      if ((v81 & 0xC000000000000001) != 0)
      {
        if (sub_3A9B8() == 1)
        {
          goto LABEL_10;
        }
      }

      else if (*(v81 + 16) == 1)
      {
LABEL_10:
        v83 = sub_2F7C0(v81);

        if (v83)
        {
          v84 = [v83 cellular] == &dword_0 + 1;
          v85 = v139;
          (v136)(v139, 1, 1, v69);
          v86 = v75;
          v87 = sub_3A7E8();
          v88 = swift_allocObject();
          *(v88 + 16) = v87;
          *(v88 + 24) = &protocol witness table for MainActor;
          *(v88 + 32) = v86;
          *(v88 + 40) = v84;
          sub_DD34(0, 0, v85, &unk_3CF20, v88);
        }

        goto LABEL_15;
      }
    }

    else
    {
      v89 = v145;
      sub_39B48();

      swift_willThrow();
    }

LABEL_15:
    swift_beginAccess();
    v90 = v140;
    sub_39D18();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v91 = v142;
    v128(v141, v90, v142);
    v92 = v75;
    sub_39EF8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    swift_beginAccess();
    sub_39D28();
    swift_endAccess();

    (v130)(v90, v91);
  }

  v93 = sub_B9D8();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v145) = v93 & 1;
  v94 = v75;
  sub_39EF8();
  sub_CE94();
  v95 = sub_BB78();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v145) = v95 & 1;
  v96 = v94;
  sub_39EF8();
  sub_CFB0();
  v97 = objc_allocWithZone(NSUserDefaults);
  v98 = sub_3A6D8();
  v99 = [v97 initWithSuiteName:v98];

  if (v99)
  {
    v100 = sub_3A6D8();
    v101 = [v99 BOOLForKey:v100];
  }

  else
  {
    v101 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v145) = v101;
  v102 = v96;
  sub_39EF8();
  sub_D0CC();
  v103 = sub_BEE4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v145) = v103 & 1;
  v104 = v102;
  sub_39EF8();
  sub_D650();
  v105 = objc_allocWithZone(NSUserDefaults);
  v106 = sub_3A6D8();
  v107 = [v105 initWithSuiteName:v106];

  if (v107)
  {
    v108 = sub_3A6D8();
    v109 = [v107 BOOLForKey:v108];
  }

  else
  {
    v109 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v145) = v109;
  v110 = v104;
  sub_39EF8();
  sub_D76C();
  v111 = objc_opt_self();
  v112 = [v111 defaultCenter];
  [v112 addObserver:v110 selector:"lowPowerModeChanged" name:NSProcessInfoPowerStateDidChangeNotification object:0];

  v113 = [v111 defaultCenter];
  [v113 addObserver:v110 selector:"accountChanged" name:ACDAccountStoreDidChangeNotification object:0];

  v114 = [v111 defaultCenter];
  [v114 addObserver:v110 selector:"automaticDownloadsKindsChanged" name:SSDeviceAutomaticDownloadKindsChangedNotification object:0];

  v115 = [v111 defaultCenter];
  [v115 addObserver:v110 selector:"urlBagDidLoadNotification" name:ISURLBagDidLoadNotification object:0];

  v116 = [v111 defaultCenter];
  v117 = v110;
  v118 = sub_39C78();
  [v116 addObserver:v117 selector:"appDistributorsOrTrustedDevelopersChanged" name:v118 object:0];

  return v117;
}

uint64_t sub_F718(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  sub_39DF8();
  v2[25] = swift_task_alloc();
  sub_39DB8();
  v2[26] = swift_task_alloc();
  sub_39DD8();
  v2[27] = swift_task_alloc();
  v3 = sub_39E18();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  sub_39E48();
  v2[31] = swift_task_alloc();
  sub_39D78();
  v2[32] = swift_task_alloc();
  v4 = sub_39E28();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  sub_3A7F8();
  v2[36] = sub_3A7E8();
  v6 = sub_3A798();
  v2[37] = v6;
  v2[38] = v5;

  return _swift_task_switch(sub_F944, v6, v5);
}

uint64_t sub_F944()
{
  v1 = *(v0 + 192);
  v2 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag;
  *(v0 + 312) = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel__bag;
  swift_beginAccess();
  sub_1A5AC(v1 + v2, v0 + 16, &qword_52538, &qword_3CC00);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 184);

    sub_1A748((v0 + 16), v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_1A614(v0 + 16, &qword_52538, &qword_3CC00);
    sub_39D68();
    sub_39E38();
    sub_39D98();
    sub_39DC8();
    sub_39DA8();
    sub_39DE8();
    sub_39E08();
    v6 = swift_task_alloc();
    *(v0 + 320) = v6;
    *v6 = v0;
    v6[1] = sub_FBFC;
    v7 = *(v0 + 240);

    return BagService.createBag(policy:)(v0 + 56, v7);
  }
}

uint64_t sub_FBFC()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  (*(v2[29] + 8))(v2[30], v2[28]);
  v3 = v2[38];
  v4 = v2[37];
  if (v0)
  {
    v5 = sub_FEA4;
  }

  else
  {
    v5 = sub_FD84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_FD84()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);

  (*(v4 + 8))(v2, v3);
  sub_1A674(v0 + 56, v0 + 96);
  swift_beginAccess();
  sub_1A6D8(v0 + 96, v6 + v1);
  swift_endAccess();
  sub_1A748((v0 + 56), v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_FEA4()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_FF84()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];

  v3 = [v2 ams_DSID];
  if (v3)
  {

    if (v2)
    {
      v4 = [v2 username];
      if (v4)
      {
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v0;
  sub_39EF8();
  v6 = v5;
  v7 = sub_39E78();
  v8 = sub_3A8A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    *(v9 + 4) = v10;

    _os_log_impl(&dword_0, v7, v8, "Updated isSignedIn: %{BOOL}d", v9, 8u);
  }

  else
  {

    v7 = v2;
    v2 = v6;
  }
}

void sub_1017C()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-v2];
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 ams_activeiTunesAccount];

  if (!v5)
  {
    v21 = 0u;
    v22 = 0u;
LABEL_9:
    sub_1A614(&v21, &qword_52990, qword_3C2D0);
    goto LABEL_10;
  }

  v6 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadsKinds + 8];
  *&v19 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadsKinds];
  *(&v19 + 1) = v6;

  v7 = v5;
  v8 = [v7 objectForKeyedSubscript:sub_3AB38()];
  swift_unknownObjectRelease();

  if (v8)
  {
    sub_3A938();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    goto LABEL_9;
  }

  sub_3CB4(&qword_52530, &qword_3CBB0);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v10 = v19;
  v11 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware + 8];
  *&v21 = *&v0[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware];
  *(&v21 + 1) = v11;
  __chkstk_darwin(v9);
  *&v18[-16] = &v21;
  v12 = sub_CAD4(sub_1B218, &v18[-32], v10);

LABEL_11:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = v12 & 1;
  v13 = v0;
  sub_39EF8();
  sub_143E8();
  v14 = sub_3A818();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_3A7F8();
  v15 = v13;
  v16 = sub_3A7E8();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_DD34(0, 0, v3, &unk_3CBA8, v17);
}

uint64_t sub_104A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_39E48();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_39D78();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_3A7F8();
  v4[16] = sub_3A7E8();
  v8 = sub_3A798();
  v4[17] = v8;
  v4[18] = v7;

  return _swift_task_switch(sub_105F8, v8, v7);
}

uint64_t sub_105F8()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];
  v0[19] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_10724;

    return sub_F718((v0 + 2));
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10724()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10CF0;
  }

  else
  {
    v5 = sub_10860;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10860()
{
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v8 = sub_3A858();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_44BC(v0 + 2);
  v9 = objc_allocWithZone(AMSAutomaticDownloadKindsFetchTask);
  v10 = v1;
  v11 = [v9 initWithAccount:v10 bag:v8];
  v0[22] = v11;
  swift_unknownObjectRelease();

  v0[23] = [v11 perform];
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_10A30;

  return sub_1101C();
}

uint64_t sub_10A30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_10E80;
  }

  else
  {

    *(v4 + 208) = a1;
    v5 = *(v4 + 136);
    v6 = *(v4 + 144);
    v7 = sub_10B60;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10B60()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);

  v5 = [v1 enabledMediaKinds];
  v6 = sub_3A778();

  v7 = *&v4[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware + 8];
  *(v0 + 56) = *&v4[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware];
  *(v0 + 64) = v7;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 56;
  v9 = sub_CAD4(sub_1B218, v8, v6);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 216) = v9 & 1;
  v10 = v4;
  sub_39EF8();
  sub_143E8();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10CF0()
{

  swift_errorRetain();
  v1 = sub_39E78();
  v2 = sub_3A888();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v1, v2, "Error when fetching automatic downloads: %{public}@", v5, 0xCu);
    sub_1A614(v6, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10E80()
{
  v1 = v0[22];
  v2 = v0[23];

  swift_errorRetain();
  v3 = sub_39E78();
  v4 = sub_3A888();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Error when fetching automatic downloads: %{public}@", v7, 0xCu);
    sub_1A614(v8, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1101C()
{
  v1[19] = v0;
  v2 = sub_3CB4(&qword_52500, &qword_3C940);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_110E8, 0, 0);
}

uint64_t sub_110E8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_112B8;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_19E64(v1 + 14);
  sub_1AF40(0, &qword_52508, AMSAutomaticDownloadKindsResult_ptr);
  sub_3CB4(&unk_52510, &qword_3C948);
  sub_3A7A8();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_187AC;
  v1[13] = &unk_4DE60;
  [v11 resultWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_112B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_11434;
  }

  else
  {
    v2 = sub_113C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_113C8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_11434()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_114A8()
{
  v1[19] = v0;
  v2 = sub_3CB4(&qword_52520, &qword_3CA90);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_11574, 0, 0);
}

uint64_t sub_11574()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_11744;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_19E64(v1 + 14);
  sub_1AF40(0, &qword_52528, AMSNetworkConstraints_ptr);
  sub_3CB4(&unk_52510, &qword_3C948);
  sub_3A7A8();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_187AC;
  v1[13] = &unk_4DEB0;
  [v11 resultWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_11744()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1B1D8;
  }

  else
  {
    v2 = sub_1B234;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_11854()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v1 - 8);
  v3 = &v35[-v2];
  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_3A6D8();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v7 = sub_3A6D8();
    v8 = [v6 BOOLForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v35[15] = v8;
  v9 = v0;
  sub_39EF8();
  v10 = objc_allocWithZone(NSUserDefaults);
  v11 = sub_3A6D8();
  v12 = [v10 initWithSuiteName:v11];

  if (v12)
  {
    v13 = sub_3A6D8();
    v14 = [v12 BOOLForKey:v13];
  }

  else
  {
    v14 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v35[14] = v14;
  v15 = v9;
  sub_39EF8();
  v16 = objc_allocWithZone(NSUserDefaults);
  v17 = sub_3A6D8();
  v18 = [v16 initWithSuiteName:v17];

  if (v18)
  {
    v19 = sub_3A6D8();
    v20 = [v18 BOOLForKey:v19];
  }

  else
  {
    v20 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v35[13] = v20;
  v21 = v15;
  sub_39EF8();
  sub_D888();
  v22 = v21;
  v23 = sub_39E78();
  v24 = sub_3A8A8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    *(v25 + 4) = v35[12];

    _os_log_impl(&dword_0, v23, v24, "hasMultipleMarketplaces initialized to: %{BOOL}d", v25, 8u);
  }

  else
  {

    v23 = v22;
  }

  v26 = sub_3A818();
  v27 = *(*(v26 - 8) + 56);
  v27(v3, 1, 1, v26);
  sub_3A7F8();
  v28 = v22;
  v29 = sub_3A7E8();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v28;
  sub_DD34(0, 0, v3, &unk_3CB78, v30);

  v27(v3, 1, 1, v26);
  v31 = v28;
  v32 = sub_3A7E8();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v31;
  sub_DD34(0, 0, v3, &unk_3CB88, v33);
}

uint64_t sub_11D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_3A578();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_3A598();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_3A7F8();
  v4[17] = sub_3A7E8();
  v7 = swift_task_alloc();
  v4[18] = v7;
  *v7 = v4;
  v7[1] = sub_11EA8;

  return static AppDistributor.shouldShowAppInstallationSettings()();
}

uint64_t sub_11EA8(char a1)
{
  *(*v1 + 153) = a1;

  v3 = sub_3A798();

  return _swift_task_switch(sub_11FEC, v3, v2);
}

uint64_t sub_11FEC()
{
  v1 = *(v0 + 153);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v1 != *(v0 + 152))
  {
    v2 = objc_allocWithZone(NSUserDefaults);
    v3 = sub_3A6D8();
    v4 = [v2 initWithSuiteName:v3];

    if (v4)
    {
      v5 = *(v0 + 153);
      v6 = sub_3A6D8();
      [v4 setBool:v5 forKey:v6];
    }

    v7 = *(v0 + 153);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 96);
    v20 = *(v0 + 104);
    v12 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 72);
    sub_1AF40(0, &qword_524D8, OS_dispatch_queue_ptr);
    v14 = sub_3A8C8();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v7;
    *(v0 + 48) = sub_1A358;
    *(v0 + 56) = v15;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_12450;
    *(v0 + 40) = &unk_4DF50;
    v16 = _Block_copy((v0 + 16));
    v17 = v13;
    sub_3A588();
    *(v0 + 64) = &_swiftEmptyArrayStorage;
    sub_19344();
    sub_3CB4(&qword_524E8, &qword_3C8C8);
    sub_1939C();
    sub_3A948();
    sub_3A8D8();
    _Block_release(v16);

    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v8, v20);
  }

  v18 = *(v0 + 8);

  return v18();
}

void sub_122E8(void *a1, char a2)
{
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  sub_39EF8();
  v4 = sub_39E78();
  v5 = sub_3A8A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a2 & 1;
    _os_log_impl(&dword_0, v4, v5, "Updated hasMultipleMarketplaces to %{BOOL}d", v6, 8u);
  }
}

uint64_t sub_12450(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_12494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_3A7F8();
  v4[4] = sub_3A7E8();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_12558;

  return static AppDistributor.shouldShowInstallConfirmations(for:)(0xD000000000000012, 0x800000000003DC50);
}

uint64_t sub_12558(char a1)
{
  *(*v1 + 50) = a1;

  v3 = sub_3A798();

  return _swift_task_switch(sub_1269C, v3, v2);
}

uint64_t sub_1269C()
{
  v1 = *(v0 + 50);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v1 != *(v0 + 48))
  {
    v2 = *(v0 + 50);
    v3 = *(v0 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 49) = v2;
    v3;
    sub_39EF8();
    sub_D888();
    v4 = objc_allocWithZone(NSUserDefaults);
    v5 = sub_3A6D8();
    v6 = [v4 initWithSuiteName:v5];

    if (v6)
    {
      v7 = *(v0 + 50);
      v8 = sub_3A6D8();
      [v6 setBool:v7 forKey:v8];
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_12850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  sub_3A7F8();
  *(v5 + 24) = sub_3A7E8();
  v7 = sub_3A798();

  return _swift_task_switch(sub_128EC, v7, v6);
}

uint64_t sub_128EC()
{
  v1 = *(v0 + 33);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v1;
  v3 = v2;
  sub_39EF8();
  v4 = *(v0 + 8);

  return v4();
}

void sub_129A0()
{
  v1 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (BYTE8(v21[0]) != 1)
  {
    v9 = *&v21[0];
LABEL_14:
    v16 = [objc_opt_self() stringFromByteCount:v9 countStyle:2];
    sub_3A6F8();

    return;
  }

  v4 = objc_allocWithZone(NSUserDefaults);
  v5 = sub_3A6D8();
  v6 = [v4 initWithSuiteName:v5];

  if (v6)
  {
    v7 = sub_3A6D8();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      sub_3A938();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21[0] = v19;
    v21[1] = v20;
    if (*(&v20 + 1))
    {
      if (swift_dynamicCast())
      {
        v9 = v18;
        if (v18 >= 1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_1A614(v21, &qword_52990, qword_3C2D0);
    }

    v9 = 200000000;
LABEL_13:
    swift_getKeyPath();
    swift_getKeyPath();
    *&v21[0] = v9;
    BYTE8(v21[0]) = 0;
    v10 = v0;
    sub_39EF8();
    v11 = sub_3A818();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    sub_3A7F8();
    v12 = v10;
    v13 = v6;
    v14 = sub_3A7E8();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v12;
    v15[5] = v13;
    sub_DD34(0, 0, v3, &unk_3CA80, v15);

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_12CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_39E48();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_39D78();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = sub_3A7F8();
  v5[23] = sub_3A7E8();
  v9 = sub_3A798();
  v5[24] = v9;
  v5[25] = v8;

  return _swift_task_switch(sub_12E38, v9, v8);
}

uint64_t sub_12E38()
{
  *(v0 + 208) = sub_3A6D8();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_12EEC;

  return sub_F718(v0 + 16);
}

uint64_t sub_12EEC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[26];

    v4 = v2[24];
    v5 = v2[25];
    v6 = sub_13770;
  }

  else
  {
    v2[28] = objc_opt_self();
    v4 = v2[24];
    v5 = v2[25];
    v6 = sub_13024;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_13024()
{
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v9 = sub_3A858();
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_44BC(v0 + 2);
  v0[29] = [v1 networkConstraintsForMediaType:v2 withBag:v9];
  swift_unknownObjectRelease();

  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_131D0;

  return sub_114A8();
}

uint64_t sub_131D0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[29];
  if (v1)
  {

    v7 = v5[24];
    v8 = v5[25];
    v9 = sub_13770;
  }

  else
  {

    v5[31] = a1;
    v7 = v5[24];
    v8 = v5[25];
    v9 = sub_1331C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1331C()
{
  v1 = [*(v0 + 248) sizeLimitForNetworkType:AMSNetworkTypeCellular];
  v2 = *(v0 + 248);
  *(v0 + 256) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 64) & 1) != 0 || v1 != *(v0 + 56))
  {
    *(v0 + 104) = v1;
    v5 = sub_3AB38();
    v6 = *(v0 + 120);
    v7 = sub_3A6D8();
    [v6 setObject:v5 forKey:v7];

    swift_unknownObjectRelease();
    if (v1 >= 1)
    {
      goto LABEL_4;
    }

LABEL_10:
    v1 = 200000000;
    goto LABEL_4;
  }

  if (v1 < 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  *(v0 + 264) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 80) & 1) != 0 || v1 != *(v0 + 72))
  {

    return _swift_task_switch(sub_1354C, 0, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1354C(uint64_t a1)
{
  *(v1 + 272) = sub_3A7E8();
  v3 = sub_3A798();

  return _swift_task_switch(sub_135D8, v3, v2);
}

uint64_t sub_135D8()
{

  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  v3 = v2;
  sub_39EF8();

  v4 = *(v0 + 192);
  v5 = *(v0 + 200);

  return _swift_task_switch(sub_136F0, v4, v5);
}

uint64_t sub_136F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_13770()
{
  *(v0 + 256) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 64) & 1) == 0)
  {
    v1 = *(v0 + 120);
    v2 = sub_3A6D8();
    [v1 setObject:0 forKey:v2];
  }

  *(v0 + 264) = 200000000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if ((*(v0 + 80) & 1) != 0 || *(v0 + 72) != 200000000)
  {

    return _swift_task_switch(sub_1354C, 0, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

void sub_13924()
{
  v1 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v15[-v5];
  type metadata accessor for AppStoreSettingsDefaults();
  sub_AE80(v6);
  v7 = sub_39B68();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A5AC(v6, v4, &qword_524A8, &qword_3C7E0);
  v8 = v0;
  sub_39EF8();
  sub_1A614(v6, &qword_524A8, &qword_3C7E0);
  v9 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults;
  v8[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] = 0;
  v10 = sub_BD18();
  swift_getKeyPath();
  swift_getKeyPath();
  v15[15] = v10;
  v11 = v8;
  sub_39EF8();
  if (v8[v9] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    sub_B700(v15[12], 1);
  }

  if (sub_BD18())
  {
    v12 = sub_3AB28();
  }

  else
  {
    v12 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v15[14] = v12 & 1;
  v13 = v11;
  sub_39EF8();
  if (v8[v9])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v15[13])
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    sub_B700(v14, 1);
  }

  v8[v9] = 1;
}

uint64_t sub_13C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = sub_3A7F8();
  v4[9] = sub_3A7E8();
  v5 = swift_task_alloc();
  v4[10] = v5;
  *v5 = v4;
  v5[1] = sub_13D10;

  return sub_F718((v4 + 2));
}

uint64_t sub_13D10()
{
  *(*v1 + 88) = v0;

  v3 = sub_3A798();
  if (v0)
  {
    v4 = sub_14274;
  }

  else
  {
    v4 = sub_13E6C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_13E6C()
{

  sub_CA90((v0 + 16), *(v0 + 40));
  v1 = sub_39E58();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    sub_44BC((v0 + 16));
    v5 = v3 == 28271 && v4 == 0xE200000000000000;
    if (v5 || (sub_3AB28() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      v14 = v3 == 0x6C6E6F5F69666977 && v4 == 0xE900000000000079;
      if (v14 || (sub_3AB28() & 1) != 0)
      {

        v6 = 1;
      }

      else if (v3 == 6710895 && v4 == 0xE300000000000000)
      {

        v6 = 2;
      }

      else
      {
        v21 = sub_3AB28();

        if (v21)
        {
          v6 = 2;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    if (sub_C084())
    {
      v7 = *(v0 + 56);
      v8 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults;
      v7[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_shouldUpdateVideoAutoplayDefaults] = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 96) = v6;
      v9 = v7;
      sub_39EF8();
      if (v7[v8] == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_39EE8();

        sub_B700(*(v0 + 99), 1);
      }

      if (v6)
      {
        v10 = sub_3AB28();
      }

      else
      {
        v10 = 1;
      }

      v15 = *(v0 + 56);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 97) = v10 & 1;
      v16 = v15;
      sub_39EF8();
      if (v7[v8])
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_39EE8();

        if (*(v0 + 98))
        {
          v17 = 0;
        }

        else
        {
          v17 = 2;
        }

        sub_B700(v17, 1);
      }

      sub_B700(v6, 0);
      v7[v8] = 1;
    }
  }

  else
  {
    sub_44BC((v0 + 16));
    v11 = sub_39E78();
    v12 = sub_3A888();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Auto play video setting was missing from the bag", v13, 2u);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_14274()
{

  swift_errorRetain();
  v1 = sub_39E78();
  v2 = sub_3A888();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Error when loading auto play video setting from the bag: %{public}@", v3, 0xCu);
    sub_1A614(v4, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_143E8()
{
  v1 = v0;
  v2 = sub_3A578();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A598();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3A5B8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = &v27 - v15;
  v17 = *&v1[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued] = v19;
    sub_1AF40(0, &qword_524D8, OS_dispatch_queue_ptr);
    v30 = v3;
    v32 = v6;
    v29 = sub_3A8C8();
    sub_3A5A8();
    sub_3A5C8();
    v31 = *(v10 + 8);
    v31(v13, v9);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v1;
    aBlock[4] = sub_19324;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_12450;
    aBlock[3] = &unk_4DE10;
    v22 = _Block_copy(aBlock);
    v23 = v33;
    v28 = v9;
    v24 = v22;

    v25 = v1;
    sub_3A588();
    v34 = &_swiftEmptyArrayStorage;
    sub_19344();
    sub_3CB4(&qword_524E8, &qword_3C8C8);
    sub_1939C();
    sub_3A948();
    v26 = v29;
    sub_3A8B8();
    _Block_release(v24);

    (*(v30 + 8))(v5, v2);
    (*(v23 + 8))(v8, v32);
    v31(v16, v28);
  }

  return result;
}

uint64_t sub_147C4(char a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  *(v2 + 320) = a1;
  v3 = sub_39E48();
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();
  v4 = sub_39D78();
  *(v2 + 144) = v4;
  *(v2 + 152) = *(v4 - 8);
  *(v2 + 160) = swift_task_alloc();
  sub_3A7F8();
  *(v2 + 168) = sub_3A7E8();
  v6 = sub_3A798();
  *(v2 + 176) = v6;
  *(v2 + 184) = v5;

  return _swift_task_switch(sub_14918, v6, v5);
}

uint64_t sub_14918()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];
  v0[24] = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_14A48;

    return sub_F718((v0 + 2));
  }

  else
  {

    v5 = v0[1];

    return v5(2);
  }
}

uint64_t sub_14A48()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_15424;
  }

  else
  {
    v5 = sub_14B84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_14B84()
{
  v1 = v0[24];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v8 = sub_3A858();
  v0[27] = v8;
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_44BC(v0 + 2);
  v9 = [objc_allocWithZone(AMSAutomaticDownloadKindsFetchTask) initWithAccount:v1 bag:v8];
  v0[28] = v9;
  v0[29] = [v9 perform];
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_14D34;

  return sub_1101C();
}

uint64_t sub_14D34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = sub_155B8;
  }

  else
  {

    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
    v6 = sub_14E50;
  }

  return _swift_task_switch(v6, v4, v5);
}

void sub_14E50()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 320);
  v3 = [*(v0 + 248) enabledMediaKinds];
  v4 = sub_3A778();

  *(v0 + 104) = v4;
  v5 = v1 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware;
  v6 = *(v1 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware);
  *(v0 + 264) = v6;
  v7 = *(v5 + 8);
  *(v0 + 272) = v7;
  if (v2 == 1)
  {
    *(v0 + 88) = v6;
    *(v0 + 96) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 88;
    v9 = sub_CAD4(sub_1B218, v8, v4);

    if ((v9 & 1) == 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_30740(0, *(v4 + 16) + 1, 1, v4);
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_30740((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v6;
      *(v12 + 40) = v7;
    }

    goto LABEL_19;
  }

  *(v0 + 56) = v6;
  *(v0 + 64) = v7;
  v13 = swift_task_alloc();
  *(v13 + 16) = v0 + 56;
  v14 = sub_CAD4(sub_19528, v13, v4);

  if (v14)
  {
    v15 = *(v0 + 112);
    v16 = sub_19C14((v0 + 104), v15);

    v17 = *(v0 + 104);
    v18 = *(v17 + 16);
    if (v16 > v18)
    {
      __break(1u);
    }

    else if ((v16 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v18, v16 - v18))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v16 > *(v17 + 24) >> 1)
        {
          if (v18 <= v16)
          {
            v20 = v16;
          }

          else
          {
            v20 = v18;
          }

          *(v0 + 104) = sub_30740(isUniquelyReferenced_nonNull_native, v20, 1, v17);
        }

        sub_30F94(v16, v18, 0);
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_19:
  v21 = *(v0 + 216);
  v22 = *(v0 + 192);
  v23 = objc_allocWithZone(AMSAutomaticDownloadKindsSetTask);
  v24 = v22;
  swift_unknownObjectRetain();
  isa = sub_3A768().super.isa;

  v26 = [v23 initWithEnabledMediaKinds:isa account:v24 bag:v21];
  *(v0 + 280) = v26;
  swift_unknownObjectRelease();

  *(v0 + 288) = [v26 perform];
  v27 = swift_task_alloc();
  *(v0 + 296) = v27;
  *v27 = v0;
  v27[1] = sub_15198;

  sub_1101C();
}

uint64_t sub_15198(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = *(v4 + 176);
    v6 = *(v4 + 184);
    v7 = sub_15764;
  }

  else
  {

    *(v4 + 312) = a1;
    v5 = *(v4 + 176);
    v6 = *(v4 + 184);
    v7 = sub_152C8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_152C8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[31];
  v12 = v0[28];
  v13 = v0[24];

  v6 = [v1 enabledMediaKinds];
  v7 = sub_3A778();

  v0[9] = v4;
  v0[10] = v2;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 9;
  v9 = sub_CAD4(sub_1B218, v8, v7);

  swift_unknownObjectRelease();

  v10 = v0[1];

  return v10(v9 & 1);
}

uint64_t sub_15424()
{

  swift_errorRetain();
  v1 = sub_39E78();
  v2 = sub_3A888();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 192);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v1, v2, "Error when toggling automatic downloads: %{public}@", v5, 0xCu);
    sub_1A614(v6, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8(2);
}

uint64_t sub_155B8()
{
  v2 = v0[28];
  v1 = v0[29];

  swift_unknownObjectRelease();
  swift_errorRetain();
  v3 = sub_39E78();
  v4 = sub_3A888();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Error when toggling automatic downloads: %{public}@", v7, 0xCu);
    sub_1A614(v8, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(2);
}

uint64_t sub_15764()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[31];
  v4 = v0[28];

  swift_unknownObjectRelease();

  swift_errorRetain();
  v5 = sub_39E78();
  v6 = sub_3A888();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "Error when toggling automatic downloads: %{public}@", v9, 0xCu);
    sub_1A614(v10, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(2);
}

void sub_1591C(uint64_t a1, void *a2)
{
  v3 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    *(Strong + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued) = v10;
    if (v10)
    {

      return;
    }

    v11 = sub_3A818();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = v7;
    v13 = a2;
    v14 = sub_3A7E8();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v12;
    v15[5] = v13;
    sub_DD34(0, 0, v5, &unk_3C8D8, v15);
  }
}

uint64_t sub_15B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_3A7F8();
  v5[4] = sub_3A7E8();
  v7 = sub_3A798();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_15BB8, v7, v6);
}

void sub_15BB8()
{
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsRequestsQueued;
  *(v0 + 56) = OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsRequestsQueued;
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    v7 = *(v0 + 72);
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_15CC0;
    v9 = *(v0 + 24);

    sub_147C4(v7, v9);
  }
}

uint64_t sub_15CC0(char a1)
{
  v2 = *v1;
  *(*v1 + 75) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_15DE8, v4, v3);
}

uint64_t sub_15DE8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v4 = *(v2 + v1);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v0 + 75);
    *(*(v0 + 16) + *(v0 + 56)) = v6;
    if (v7 != 2 && !v6 && !*(*(v0 + 16) + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_autoDownloadAppsTogglesQueued))
    {
      v8 = *(v0 + 75) & 1;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_39EE8();

      if (*(v0 + 73) != v8)
      {
        v9 = *(v0 + 75);
        v10 = *(v0 + 16);
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 74) = v9 & 1;
        v10;
        sub_39EF8();
        sub_143E8();
      }
    }

    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

uint64_t sub_15F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_3CB4(&qword_52580, &qword_3CF30);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v6 = sub_39E48();
  v4[31] = v6;
  v4[32] = *(v6 - 8);
  v4[33] = swift_task_alloc();
  v7 = sub_39D78();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  sub_3A7F8();
  v4[37] = sub_3A7E8();
  v9 = sub_3A798();
  v4[38] = v9;
  v4[39] = v8;

  return _swift_task_switch(sub_160FC, v9, v8);
}

uint64_t sub_160FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_16214;

    return sub_F718((v0 + 18));
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_16214()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);
  if (v0)
  {
    v5 = sub_16828;
  }

  else
  {
    v5 = sub_16350;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_16350()
{
  v1 = v0;
  v2 = v0[35];
  v3 = v0[36];
  v14 = v0 + 2;
  v15 = v0 + 26;
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v7 = v1[31];
  v16 = v1[30];
  v9 = v1[28];
  v8 = v1[29];
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v10 = sub_3A858();
  v1[43] = v10;
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v3, v4);
  sub_44BC(v1 + 18);
  v11 = [objc_opt_self() shouldEnableResetUIFromBag:v10];
  v1[44] = v11;
  v1[2] = v1;
  v1[7] = v15;
  v1[3] = sub_16604;
  swift_continuation_init();
  v1[17] = v9;
  v12 = sub_19E64(v1 + 14);
  sub_1AF40(0, &qword_52588, NSNumber_ptr);
  sub_3CB4(&unk_52510, &qword_3C948);
  sub_3A7A8();
  (*(v8 + 32))(v12, v16, v9);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_16B80;
  v1[13] = &unk_4E0E0;
  [v11 resultWithCompletion:?];
  (*(v8 + 8))(v12, v9);

  return _swift_continuation_await(v14);
}

uint64_t sub_16604()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  v3 = *(v1 + 312);
  v4 = *(v1 + 304);
  if (v2)
  {
    v5 = sub_169C4;
  }

  else
  {
    v5 = sub_16734;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_16734()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 208);

  LOBYTE(v1) = [v2 BOOLValue];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 368) = v1;
  sub_39EF8();

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_16828()
{

  swift_errorRetain();
  v1 = sub_39E78();
  v2 = sub_3A888();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 320);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v1, v2, "Error occured when determine whether to show reset identifiers button: %{public}@", v5, 0xCu);
    sub_1A614(v6, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_169C4()
{
  v1 = v0[44];

  swift_willThrow();
  swift_unknownObjectRelease();

  swift_errorRetain();
  v2 = sub_39E78();
  v3 = sub_3A888();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[40];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v2, v3, "Error occured when determine whether to show reset identifiers button: %{public}@", v6, 0xCu);
    sub_1A614(v7, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

void sub_16B80(uint64_t a1, void *a2, void *a3)
{
  sub_CA90((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_3CB4(&qword_52580, &qword_3CF30);
    sub_3A7B8();
  }

  else if (a2)
  {
    v6 = a2;
    sub_3CB4(&qword_52580, &qword_3CF30);
    sub_3A7C8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_16C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4348(&unk_52510, &qword_3C948);
  sub_3A7D8();
  return sub_3A7B8();
}

uint64_t sub_16C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4348(&unk_52510, &qword_3C948);
  sub_3A7D8();
  return sub_3A7C8();
}

uint64_t sub_16D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = sub_3A7F8();
  v4[9] = sub_3A7E8();
  v5 = swift_task_alloc();
  v4[10] = v5;
  *v5 = v4;
  v5[1] = sub_16DBC;

  return sub_F718((v4 + 2));
}

uint64_t sub_16DBC()
{
  *(*v1 + 88) = v0;

  v3 = sub_3A798();
  if (v0)
  {
    v4 = sub_16F88;
  }

  else
  {
    v4 = sub_16F18;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_16F18()
{

  sub_1AF88(v0 + 16);
  sub_44BC((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_16F88()
{

  swift_errorRetain();
  v1 = sub_39E78();
  v2 = sub_3A888();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Error occurred when resetting metrics identifiers: %{public}@", v3, 0xCu);
    sub_1A614(v4, &qword_524F8, &qword_3C930);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_170FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17194, v6, v5);
}

uint64_t sub_17194()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v3;
  v4 = v1;
  sub_39EF8();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17334, v6, v5);
}

uint64_t sub_17334()
{

  sub_FF84();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_173B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_1B1E8, v6, v5);
}

uint64_t sub_17470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17508, v6, v5);
}

uint64_t sub_17508()
{

  sub_1017C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_3A7F8();
  *(v4 + 24) = sub_3A7E8();
  v6 = sub_3A798();

  return _swift_task_switch(sub_17624, v6, v5);
}

uint64_t sub_17624()
{

  sub_11854();
  v1 = *(v0 + 8);

  return v1();
}

void sub_176A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_3A818();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_3A7F8();
  v10 = a1;
  v11 = sub_3A7E8();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_DD34(0, 0, v8, a4, v12);
}

void sub_177D4(void *a1)
{
  v3 = sub_3CB4(&unk_524C0, &qword_3C850);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v6 = [a1 policies];
  v7 = sub_1AF40(0, &unk_52D50, CTDataUsagePolicies_ptr);
  sub_18510();
  v8 = sub_3A838();

  v36 = v1;
  v37 = v5;
  v39 = v8;
  v40 = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_3A978();
    sub_3A848();
    v8 = v45;
    v9 = v46;
    v10 = v47;
    v11 = v48;
    v12 = v49;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);

    v11 = 0;
  }

  v38 = v10;
  v16 = (v10 + 64) >> 6;
  v42 = 0x800000000003DC50;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v21)
    {
      while (1)
      {
        v41 = v12;
        v23 = v21;
        v24 = [v21 bundleId];
        v25 = sub_3A6F8();
        v27 = v26;

        if (v25 == 0xD000000000000012 && v42 == v27)
        {
          break;
        }

        v29 = sub_3AB28();

        if (v29)
        {
          goto LABEL_25;
        }

        v11 = v19;
        v12 = v20;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v22 = sub_3A9D8();
        if (v22)
        {
          v43 = v22;
          swift_dynamicCast();
          v21 = v44;
          v19 = v11;
          v20 = v12;
          if (v44)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_18578(v8);

      v30 = [v23 cellular] == &dword_0 + 1;
      v31 = sub_3A818();
      v32 = v37;
      (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
      sub_3A7F8();
      v33 = v36;
      v34 = sub_3A7E8();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = &protocol witness table for MainActor;
      *(v35 + 32) = v33;
      *(v35 + 40) = v30;
      sub_DD34(0, 0, v32, &unk_3C860, v35);
    }

    else
    {
LABEL_23:
      sub_18578(v8);
    }
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_23;
      }

      v18 = *(v9 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_17C0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreSettingsViewModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppStoreSettingsViewModel(uint64_t a1)
{
  result = qword_52468;
  if (!qword_52468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_180E8(uint64_t a1)
{
  sub_18478(319, &qword_52478, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_183CC(319, &qword_52480, &qword_52488, &qword_3C7D0);
    if (v2 <= 0x3F)
    {
      sub_183CC(319, &qword_52490, &qword_52498, &qword_3C7D8);
      if (v3 <= 0x3F)
      {
        sub_183CC(319, &qword_524A0, &qword_524A8, &qword_3C7E0);
        if (v4 <= 0x3F)
        {
          sub_18420(319);
          if (v5 <= 0x3F)
          {
            sub_18478(319, &qword_524B8, &type metadata for VideoAutoplaySetting);
            if (v6 <= 0x3F)
            {
              sub_39D58();
              if (v7 <= 0x3F)
              {
                sub_39E98();
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_183CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_4348(a3, a4);
    v5 = sub_39F08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_18420(uint64_t a1)
{
  if (!qword_524B0)
  {
    sub_39D48();
    v1 = sub_39F08();
    if (!v2)
    {
      atomic_store(v1, &qword_524B0);
    }
  }
}

void sub_18478(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_39F08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_184D0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppStoreSettingsViewModel(0);
  result = sub_39EB8();
  *a2 = result;
  return result;
}

unint64_t sub_18510()
{
  result = qword_524D0;
  if (!qword_524D0)
  {
    sub_1AF40(255, &unk_52D50, CTDataUsagePolicies_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_524D0);
  }

  return result;
}

uint64_t sub_18724(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8;
  v9 = sub_39EF8();
  return a7(v9);
}

void sub_187AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_CA90((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    swift_errorRetain();
    sub_16C30(v5, v6, &type metadata for Swift.AnyObject + 8);
  }

  else if (a2)
  {
    v7 = a2;
    swift_unknownObjectRetain();
    sub_16C98(v5, &v7, &type metadata for Swift.AnyObject + 8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1886C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a2 = v4;
  return result;
}

uint64_t sub_188EC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_39EF8();
}

uint64_t sub_18A28@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_18AB0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_39EF8();
}

uint64_t sub_18B44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();
}

uint64_t sub_18BBC(uint64_t a1, void **a2)
{
  v4 = sub_3CB4(&qword_524A8, &qword_3C7E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_1A5AC(a1, &v13 - v8, &qword_524A8, &qword_3C7E0);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A5AC(v9, v7, &qword_524A8, &qword_3C7E0);
  v11 = v10;
  sub_39EF8();
  return sub_1A614(v9, &qword_524A8, &qword_3C7E0);
}

uint64_t sub_18D10(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_39EF8();
}

uint64_t sub_18D7C@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  *a4 = v6;
  return result;
}

uint64_t sub_18E00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B210;

  return sub_12850(a1, v4, v5, v6, v7);
}

uint64_t sub_18EC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18FBC;

  return v6(a1);
}

uint64_t sub_18FBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_190B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_190EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B210;

  return sub_18EC4(a1, v4);
}

uint64_t sub_191A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_41F0;

  return sub_18EC4(a1, v4);
}

uint64_t sub_192AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_192E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1932C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_19344()
{
  result = qword_524E0;
  if (!qword_524E0)
  {
    sub_3A578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_524E0);
  }

  return result;
}

unint64_t sub_1939C()
{
  result = qword_524F0;
  if (!qword_524F0)
  {
    sub_4348(&qword_524E8, &qword_3C8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_524F0);
  }

  return result;
}

uint64_t sub_19404(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B210;

  return sub_15B20(a1, v4, v5, v7, v6);
}

id sub_19558()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  wifiCapability = MobileGestalt_get_wifiCapability();

  if (!wifiCapability)
  {
    return 0;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    cellularDataCapability = MobileGestalt_get_cellularDataCapability();

    if (!cellularDataCapability)
    {
      return 0;
    }

    sub_1AF40(0, &qword_524D8, OS_dispatch_queue_ptr);
    v6 = sub_3A8C8();
    v7 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v6];

    v28 = 0;
    v27 = v7;
    v8 = [v7 getSubscriptionInfoWithError:&v28];
    if (!v8)
    {
      v19 = v28;
      sub_39B48();

      swift_willThrow();

      return 0;
    }

    v9 = v8;
    v10 = v28;
    v11 = [v9 subscriptions];

    if (!v11)
    {
      goto LABEL_33;
    }

    sub_1AF40(0, &qword_52578, CTXPCServiceSubscriptionContext_ptr);
    v12 = sub_3A778();

    if (v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_3AAE8())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_3AA58();
        }

        else
        {
          if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_30;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        sub_3A7F8();
        sub_3A7E8();
        sub_3A798();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v18 = [v16 slotID];

        if (v18 == &dword_0 + 1)
        {

          v20 = sub_3A6D8();
          v21 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
          v28 = 0;
          v22 = [v27 copyCarrierBundleValue:v16 key:v20 bundleType:v21 error:&v28];

          v23 = v28;
          if (v22)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              LOBYTE(v28) = 2;
              v24 = v23;
              sub_3A788();

              if (v28 != 2 && (v28 & 1) == 0)
              {
LABEL_33:

                return 0;
              }
            }

            else
            {
              v26 = v23;
            }
          }

          else
          {
            v25 = v28;
            sub_39B48();

            swift_willThrow();
          }

          return v27;
        }

        ++v14;
        if (v17 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

Swift::Int sub_19954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3CB4(&qword_52570, &qword_3CF28);
    v3 = sub_3AA18();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_3AB48();

      sub_3A738();
      result = sub_3AB58();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_3AB28();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_19ABC(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = (a2 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware);
  sub_3A7F8();
  v3 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v6 == *v11 && v5 == v11[1])
    {
      break;
    }

    v8 = sub_3AB28();

    if (v8)
    {
      return v3;
    }

    if (v10 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_19C14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_19ABC(*a1, a2);
  v25 = result;
  if (v2)
  {
    return v25;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (v7 == v8)
    {
      return v25;
    }

    v24 = (a2 + OBJC_IVAR____TtC19MobileStoreSettings25AppStoreSettingsViewModel_kAutomaticDownloadKindsSoftware);
    v10 = 16 * result;
    while (v7 < v8)
    {
      v11 = v4 + v10;
      v13 = *(v4 + v10 + 48);
      v12 = *(v4 + v10 + 56);
      sub_3A7F8();

      sub_3A7E8();
      sub_3A798();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v13 == *v24 && v12 == v24[1])
      {
      }

      else
      {
        v14 = sub_3AB28();

        if ((v14 & 1) == 0)
        {
          v15 = v25;
          if (v7 != v25)
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            if (v25 >= *v9)
            {
              goto LABEL_27;
            }

            if (v7 >= *v9)
            {
              goto LABEL_28;
            }

            v16 = (v4 + 32 + 16 * v25);
            v18 = *v16;
            v17 = v16[1];
            v19 = *(v11 + 48);
            v20 = *(v11 + 56);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_19544(v4);
            }

            v21 = v4 + 16 * v25;
            *(v21 + 32) = v19;
            *(v21 + 40) = v20;

            if (v7 >= *(v4 + 16))
            {
              goto LABEL_29;
            }

            v22 = v4 + v10;
            *(v22 + 48) = v18;
            *(v22 + 56) = v17;

            *a1 = v4;
            v15 = v25;
          }

          v25 = v15 + 1;
        }
      }

      ++v7;
      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v10 += 16;
      if (v7 == v8)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_19E64(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_19FA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_19FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B210;

  return sub_12CE4(a1, v4, v5, v7, v6);
}

uint64_t sub_1A1B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_11D44(a1, v4, v5, v6);
}

uint64_t sub_1A26C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_12494(a1, v4, v5, v6);
}

uint64_t sub_1A320()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1A364()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1A39C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_DAD0(a1, v4, v5, v6);
}

uint64_t sub_1A450(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_104A8(a1, v4, v5, v6);
}

uint64_t sub_1A504(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_3AB28() & 1;
  }
}

uint64_t sub_1A5AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3CB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A614(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3CB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB4(&qword_52538, &qword_3CC00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A748(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AA28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_1758C(a1, v4, v5, v6);
}

uint64_t sub_1AADC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_17470(a1, v4, v5, v6);
}

uint64_t sub_1AB90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_173B8(a1, v4, v5, v6);
}

uint64_t sub_1AC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_41F0;

  return sub_1729C(a1, v4, v5, v6);
}

uint64_t sub_1ACF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_170FC(a1, v4, v5, v6);
}

uint64_t sub_1ADAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1ADEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B210;

  return sub_15F44(a1, v4, v5, v6);
}

uint64_t sub_1AEF4(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1AF40(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1AF88(uint64_t a1)
{
  v1 = sub_39E48();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_39D78();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A868();
  sub_39D68();
  sub_39E38();
  v9 = sub_3A858();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v10 = [objc_opt_self() ams_sharedAccountStore];
  v11 = [v10 ams_activeiTunesAccount];

  v12 = [objc_opt_self() performUserResetForStoresInBag:v9 forAccount:v11];
  swift_unknownObjectRelease();
}

uint64_t sub_1B238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for AppStoreSettingsView(0);
  v12 = v11[5];
  *(a6 + v12) = swift_getKeyPath();
  sub_3CB4(&qword_525F8, &qword_3CFC8);
  swift_storeEnumTagMultiPayload();
  v13 = a6 + v11[6];
  *v13 = sub_1B740;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = a6 + v11[7];
  sub_3A448();
  *v14 = v20;
  *(v14 + 1) = *(&v20 + 1);
  v15 = a6 + v11[8];
  sub_3A448();
  *v15 = v20;
  *(v15 + 1) = *(&v20 + 1);
  v16 = a6 + v11[9];
  sub_3A448();
  *v16 = v20;
  *(v16 + 1) = *(&v20 + 1);
  v17 = (a6 + v11[10]);
  *v17 = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v18 = v11[11];
  sub_3CB4(&unk_52600, &unk_3CFD0);
  sub_3A448();
  *(a6 + v18) = v20;
  return sub_39E88();
}

uint64_t sub_1B434(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7475416F65646956;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x800000000003DC10;
  }

  else
  {
    v4 = 0xED000079616C706FLL;
  }

  if (*a2)
  {
    v5 = 0x7475416F65646956;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xED000079616C706FLL;
  }

  else
  {
    v6 = 0x800000000003DC10;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3AB28();
  }

  return v8 & 1;
}

Swift::Int sub_1B4EC()
{
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

uint64_t sub_1B580(uint64_t a1)
{
  sub_3A738();
}

Swift::Int sub_1B600(uint64_t a1)
{
  sub_3AB48();
  sub_3A738();

  return sub_3AB58();
}

uint64_t sub_1B690@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_4D8B8;
  v8._object = v3;
  v5 = sub_3AB08(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B6F0(unint64_t *a1@<X8>)
{
  v2 = 0x800000000003DC10;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x7475416F65646956;
    v2 = 0xED000079616C706FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

id sub_1B740()
{
  v0 = objc_allocWithZone(type metadata accessor for AppStoreSettingsViewModel(0));

  return [v0 init];
}

uint64_t sub_1B778@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = sub_3CB4(&qword_52710, &qword_3D120);
  __chkstk_darwin(v2 - 8);
  v120 = &v97 - v3;
  v4 = sub_39C18();
  __chkstk_darwin(v4 - 8);
  v125 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_39B58();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3A6C8();
  __chkstk_darwin(v7 - 8);
  v121 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_3A5D8();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v128 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_39F68();
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppStoreSettingsView(0);
  v12 = *(v11 - 8);
  v134 = v11 - 8;
  v129 = v12;
  v137 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v136 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_39B68();
  v99 = *(v100 - 8);
  v14 = __chkstk_darwin(v100);
  v119 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v135 = (&v97 - v16);
  v106 = sub_3A158();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_3CB4(&qword_52718, &qword_3D128);
  v102 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v97 - v20;
  v22 = sub_3CB4(&qword_52720, &qword_3D130);
  v103 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v97 - v23;
  v105 = sub_3CB4(&qword_52728, &qword_3D138);
  v107 = *(v105 - 8);
  __chkstk_darwin(v105);
  v26 = &v97 - v25;
  v108 = sub_3CB4(&qword_52730, &qword_3D140);
  __chkstk_darwin(v108);
  v130 = &v97 - v27;
  v109 = sub_3CB4(&qword_52738, &qword_3D148);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v131 = &v97 - v28;
  v111 = sub_3CB4(&qword_52740, &qword_3D150);
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v132 = &v97 - v29;
  v126 = sub_3CB4(&qword_52748, &qword_3D158);
  v114 = *(v126 - 8);
  __chkstk_darwin(v126);
  v133 = &v97 - v30;
  v98 = sub_3CB4(&qword_52750, &qword_3D160);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v127 = &v97 - v31;
  v139 = v1;
  sub_3CB4(&qword_52758, &qword_3D168);
  sub_6254(&qword_52760, &qword_52758, &qword_3D168, &protocol conformance descriptor for TupleView<A>);
  sub_3A2B8();
  v32 = sub_6254(&qword_52768, &qword_52718, &qword_3D128, &protocol conformance descriptor for List<A, B>);
  sub_3A2F8();
  (*(v102 + 8))(v21, v19);
  v33 = v104;
  v34 = v106;
  (*(v104 + 104))(v18, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v106);
  v140 = v19;
  v141 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_3A3A8();
  (*(v33 + 8))(v18, v34);
  (*(v103 + 8))(v24, v22);
  sub_33DC4(v135);
  v140 = sub_3A708();
  v141 = v36;
  v145 = v22;
  v146 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_6144();
  v37 = v130;
  v38 = v105;
  sub_3A368();

  (*(v107 + 8))(v26, v38);
  v39 = v138;
  v40 = v136;
  v135 = type metadata accessor for AppStoreSettingsView;
  sub_296EC(v138, v136, type metadata accessor for AppStoreSettingsView);
  v41 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v129 = *(v129 + 80);
  v42 = swift_allocObject();
  sub_28818(v40, v42 + v41);
  v43 = v108;
  v44 = &v37[*(v108 + 36)];
  *v44 = sub_2887C;
  v44[1] = v42;
  v44[2] = 0;
  v44[3] = 0;
  v45 = v39 + *(v134 + 48);
  v46 = *(v45 + 8);
  v140 = *v45;
  v141 = v46;
  v142 = *(v45 + 16);
  sub_3CB4(&qword_52778, &qword_3D170);
  sub_3A4E8();
  v140 = v145;
  v141 = v146;
  v47 = v39;
  v48 = v40;
  sub_296EC(v47, v40, type metadata accessor for AppStoreSettingsView);
  v49 = swift_allocObject();
  sub_28818(v40, v49 + v41);
  v50 = sub_3CB4(&qword_51DC0, &qword_3DA50);
  v51 = sub_28920();
  v52 = sub_28AB0();
  v53 = v130;
  sub_3A3D8();

  sub_1A614(v53, &qword_52730, &qword_3D140);
  v54 = v113;
  v55 = v138;
  sub_28F60(&qword_525F0, &qword_3C2C0, &type metadata accessor for ScenePhase, v113);
  sub_296EC(v55, v48, v135);
  v107 = v41;
  v56 = swift_allocObject();
  sub_28818(v48, v56 + v41);
  v140 = v43;
  v141 = v50;
  *&v142 = v51;
  *(&v142 + 1) = v52;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_28BD4(&qword_52790, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v59 = v131;
  v60 = v109;
  v61 = v115;
  sub_3A3C8();

  v62 = v61;
  (*(v116 + 8))(v54, v61);
  (*(v110 + 8))(v59, v60);
  v63 = v136;
  sub_296EC(v138, v136, v135);
  v64 = v107;
  v65 = swift_allocObject();
  v66 = v64;
  sub_28818(v63, v65 + v64);
  v131 = sub_3CB4(&qword_52798, &qword_3D178);
  v140 = v60;
  v141 = v62;
  *&v142 = v57;
  *(&v142 + 1) = v58;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = sub_4468();
  v69 = sub_28C9C();
  v70 = v132;
  v71 = v111;
  sub_3A388();

  (*(v112 + 8))(v70, v71);
  v72 = v138;
  v73 = (v138 + *(v134 + 44));
  v74 = *v73;
  v75 = *(v73 + 1);
  LOBYTE(v145) = v74;
  v146 = v75;
  sub_3CB4(&unk_527F0, &qword_3D198);
  sub_3A478();
  v76 = v136;
  sub_296EC(v72, v136, v135);
  v77 = swift_allocObject() + v66;
  v78 = v128;
  sub_28818(v76, v77);
  v140 = v71;
  v141 = &type metadata for AppStoreSettingsRoute;
  v79 = v120;
  *&v142 = v131;
  *(&v142 + 1) = v67;
  v143 = v68;
  v144 = v69;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_C484();
  v138 = v80;
  v82 = v126;
  v83 = v133;
  sub_3A3B8();
  v84 = v118;

  v85 = v117;

  (*(v114 + 8))(v83, v82);
  *v78 = 0xD000000000000012;
  v78[1] = 0x800000000003DC50;
  (*(v85 + 104))(v78, enum case for SettingsEventImage.applicationIcon(_:), v84);
  sub_3A668();
  type metadata accessor for AppStoreSettingsViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v87 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v88 = [v87 bundleURL];

  v89 = v122;
  sub_39BC8();

  (*(v123 + 104))(v89, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v124);
  sub_39C08();
  v90 = v119;
  sub_39B78();
  sub_39BD8();
  v91 = sub_39BF8();
  v92 = *(v91 - 8);
  result = (*(v92 + 48))(v79, 1, v91);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v140 = v126;
    v141 = &type metadata for OnboardingPrivacyViewWrapper;
    *&v142 = v138;
    *(&v142 + 1) = v81;
    swift_getOpaqueTypeConformance2();
    v94 = v128;
    v95 = v98;
    v96 = v127;
    sub_3A308();
    (*(v99 + 8))(v90, v100);
    (*(v85 + 8))(v94, v84);
    (*(v97 + 8))(v96, v95);
    return (*(v92 + 8))(v79, v91);
  }

  return result;
}

uint64_t sub_1CAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_3CB4(&qword_52878, &qword_3D1C8);
  v4 = __chkstk_darwin(v3 - 8);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v91 = &v74 - v6;
  v7 = sub_3CB4(&qword_52880, &qword_3D1D0);
  v8 = __chkstk_darwin(v7 - 8);
  v93 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v92 = &v74 - v11;
  v12 = __chkstk_darwin(v10);
  v89 = &v74 - v13;
  __chkstk_darwin(v12);
  v88 = &v74 - v14;
  v15 = sub_39B68();
  __chkstk_darwin(v15 - 8);
  v77 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_3CB4(&qword_52888, &qword_3D1D8);
  v90 = *(v79 - 8);
  v17 = __chkstk_darwin(v79);
  v97 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = &v74 - v19;
  v20 = type metadata accessor for AppStoreSettingsView(0);
  v76 = *(v20 - 8);
  v21 = *(v76 + 64);
  __chkstk_darwin(v20 - 8);
  v75 = sub_3CB4(&qword_52890, &qword_3D1E0);
  v22 = __chkstk_darwin(v75);
  v87 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v96 = &v74 - v24;
  v25 = sub_3CB4(&qword_52898, &qword_3D1E8);
  v26 = __chkstk_darwin(v25 - 8);
  v85 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v74 - v28;
  v30 = sub_3CB4(&qword_528A0, &qword_3D1F0);
  v31 = __chkstk_darwin(v30 - 8);
  v84 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v95 = &v74 - v33;
  v34 = type metadata accessor for AppStoreSystemPolicyView(0);
  v35 = __chkstk_darwin(v34);
  v83 = &v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v94 = (&v74 - v37);
  sub_3A7F8();
  v78 = sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  v39 = v94;
  *v94 = KeyPath;
  sub_3CB4(&qword_525F0, &qword_3C2C0);
  swift_storeEnumTagMultiPayload();
  v40 = v39 + *(v34 + 20);
  *v40 = sub_6384;
  *(v40 + 1) = 0;
  v40[16] = 0;
  sub_1D6E0(v95);
  v82 = v29;
  v41 = sub_1DD74(v29);
  __chkstk_darwin(v41);
  *(&v74 - 2) = a1;
  sub_2596C(&v98);
  sub_3CB4(&qword_528A8, &qword_3D1F8);
  sub_3CB4(&qword_528B0, &qword_3D200);
  sub_29510();
  sub_295F4();
  v42 = v96;
  sub_3A558();
  sub_296EC(a1, &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppStoreSettingsView);
  v43 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v44 = swift_allocObject();
  v45 = sub_28818(&v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43);
  v46 = (v42 + *(v75 + 36));
  *v46 = sub_29698;
  v46[1] = v44;
  v46[2] = 0;
  v46[3] = 0;
  __chkstk_darwin(v45);
  *(&v74 - 2) = a1;
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_36084(v77);
  *&v98 = sub_3A708();
  *(&v98 + 1) = v47;
  sub_6144();
  v48 = sub_3A2E8();
  v50 = v49;
  v52 = v51;
  v54 = v53;

  *&v98 = v48;
  *(&v98 + 1) = v50;
  v99 = v52 & 1;
  v100 = v54;
  sub_3CB4(&qword_528F8, &qword_3D220);
  sub_6254(&qword_52900, &qword_528F8, &qword_3D220, &protocol conformance descriptor for Toggle<A>);
  v55 = v86;
  sub_3A558();
  v56 = v88;
  sub_1E26C(v88);
  v57 = v89;
  sub_1E66C(v89);
  sub_1E9EC(v91);
  v58 = v83;
  v77 = type metadata accessor for AppStoreSystemPolicyView;
  sub_296EC(v94, v83, type metadata accessor for AppStoreSystemPolicyView);
  v59 = v84;
  sub_1A5AC(v95, v84, &qword_528A0, &qword_3D1F0);
  v60 = v85;
  sub_1A5AC(v82, v85, &qword_52898, &qword_3D1E8);
  v61 = v87;
  sub_1A5AC(v96, v87, &qword_52890, &qword_3D1E0);
  v76 = *(v90 + 16);
  v62 = v55;
  v63 = v79;
  (v76)(v97, v62, v79);
  sub_1A5AC(v56, v92, &qword_52880, &qword_3D1D0);
  sub_1A5AC(v57, v93, &qword_52880, &qword_3D1D0);
  v64 = v91;
  v65 = v81;
  sub_1A5AC(v91, v81, &qword_52878, &qword_3D1C8);
  v66 = v58;
  v67 = v80;
  sub_296EC(v66, v80, type metadata accessor for AppStoreSystemPolicyView);
  v68 = sub_3CB4(&qword_52908, &qword_3D228);
  sub_1A5AC(v59, v67 + v68[12], &qword_528A0, &qword_3D1F0);
  sub_1A5AC(v60, v67 + v68[16], &qword_52898, &qword_3D1E8);
  sub_1A5AC(v61, v67 + v68[20], &qword_52890, &qword_3D1E0);
  (v76)(v67 + v68[24], v97, v63);
  v69 = v92;
  sub_1A5AC(v92, v67 + v68[28], &qword_52880, &qword_3D1D0);
  v70 = v93;
  sub_1A5AC(v93, v67 + v68[32], &qword_52880, &qword_3D1D0);
  sub_1A5AC(v65, v67 + v68[36], &qword_52878, &qword_3D1C8);
  sub_1A614(v64, &qword_52878, &qword_3D1C8);
  sub_1A614(v89, &qword_52880, &qword_3D1D0);
  sub_1A614(v88, &qword_52880, &qword_3D1D0);
  v71 = *(v90 + 8);
  v71(v86, v63);
  sub_1A614(v96, &qword_52890, &qword_3D1E0);
  sub_1A614(v82, &qword_52898, &qword_3D1E8);
  sub_1A614(v95, &qword_528A0, &qword_3D1F0);
  v72 = v77;
  sub_29754(v94, v77);
  sub_1A614(v65, &qword_52878, &qword_3D1C8);
  sub_1A614(v70, &qword_52880, &qword_3D1D0);
  sub_1A614(v69, &qword_52880, &qword_3D1D0);
  v71(v97, v63);
  sub_1A614(v87, &qword_52890, &qword_3D1E0);
  sub_1A614(v85, &qword_52898, &qword_3D1E8);
  sub_1A614(v84, &qword_528A0, &qword_3D1F0);
  sub_29754(v83, v72);
}

uint64_t sub_1D6E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_39B68();
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3CB4(&qword_52A48, &qword_3D6B0);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v36 - v8;
  if ((sub_20B28() & 1) == 0)
  {
    if ((sub_20B28() & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = 0;
LABEL_7:
    type metadata accessor for AppStoreSettingsView(0);
    type metadata accessor for AppStoreSettingsViewModel(0);
    sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
    v13 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    if (v11 & 1) != 0 || ((v39 ^ 1))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v10 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v11 = v39;
  v12 = sub_20B28();
  if (v12)
  {
    goto LABEL_7;
  }

  if (v11)
  {
    v11 = 1;
    goto LABEL_12;
  }

LABEL_9:
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v14 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v39)
  {
    v15 = 1;
    v16 = v37;
    return (*(v7 + 56))(a1, v15, 1, v16);
  }

  v11 = 0;
LABEL_12:
  v36 = a1;
  __chkstk_darwin(v12);
  *(&v36 - 32) = v11;
  *(&v36 - 3) = v2;
  LOBYTE(v34) = v17 & 1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_350B8(v6);
  v39 = sub_3A708();
  v40 = v18;
  sub_6144();
  v19 = sub_3A2E8();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v39 = v19;
  v40 = v21;
  v41 = v23 & 1;
  v42 = v25;
  sub_22AD4(v38);
  sub_3CB4(&unk_52A50, &unk_3D6B8);
  sub_3CB4(&qword_52020, &qword_3C280);
  v26 = sub_6254(&unk_52A60, &unk_52A50, &unk_3D6B8, &protocol conformance descriptor for TupleView<A>);
  v27 = sub_7EE4();
  v34 = v26;
  v35 = v27;
  sub_3A548();
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v28 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  v29 = v39;
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  a1 = v36;
  v16 = v37;
  v32 = &v9[*(v37 + 36)];
  *v32 = KeyPath;
  v32[1] = sub_2ABB0;
  v32[2] = v31;
  sub_8750(v9, a1, &qword_52A48, &qword_3D6B0);
  v15 = 0;
  return (*(v7 + 56))(a1, v15, 1, v16);
}

uint64_t sub_1DD74@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_39B68();
  __chkstk_darwin(v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB4(&qword_529E8, &qword_3D580);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = v30 - v6;
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v7 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v35 && (v35, v8 = sub_39F88(), swift_getKeyPath(), swift_getKeyPath(), sub_39EE8(), , , v8, (v35 & 1) == 0))
  {
    v30[1] = v30;
    __chkstk_darwin(v9);
    v30[0] = &v30[-4];
    v30[2] = v1;
    sub_3A7F8();
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_35A30(v4);
    *&v35 = sub_3A708();
    *(&v35 + 1) = v13;
    sub_6144();
    v14 = sub_3A2E8();
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v36 = v14;
    v37 = v16;
    v38 = v18 & 1;
    v39 = v20;
    sub_241BC(&v35);
    sub_3CB4(&unk_529F0, &qword_3D5D0);
    sub_3CB4(&qword_521E8, &qword_3C560);
    sub_6254(&unk_52A00, &unk_529F0, &qword_3D5D0, &protocol conformance descriptor for TupleView<A>);
    sub_AB14();
    v21 = v31;
    sub_3A548();
    v22 = sub_39F88();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_39EE8();

    v23 = v35;
    KeyPath = swift_getKeyPath();
    v25 = swift_allocObject();
    *(v25 + 16) = (v23 & 1) == 0;
    v26 = v33;
    v27 = (v21 + *(v33 + 36));
    *v27 = KeyPath;
    v27[1] = sub_2ABB0;
    v27[2] = v25;
    v28 = v34;
    sub_8750(v21, v34, &qword_529E8, &qword_3D580);
    v12 = v26;
    v11 = v28;
    v10 = 0;
  }

  else
  {
    v10 = 1;
    v12 = v33;
    v11 = v34;
  }

  return (*(v32 + 56))(v11, v10, 1, v12);
}

uint64_t sub_1E26C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_39B68();
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CB4(&qword_52888, &qword_3D1D8);
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - v6;
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v7 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v31 == 1 && (v8 = sub_39F88(), swift_getKeyPath(), swift_getKeyPath(), sub_39EE8(), , , v8, (v31 & 1) == 0))
  {
    __chkstk_darwin(v9);
    *(&v27 - 2) = v1;
    sub_3A7F8();
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_366D4(v4);
    v31 = sub_3A708();
    v32 = v14;
    sub_6144();
    v15 = sub_3A2E8();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v31 = v15;
    v32 = v17;
    v33 = v19 & 1;
    v34 = v21;
    sub_3CB4(&qword_528F8, &qword_3D220);
    sub_6254(&qword_52900, &qword_528F8, &qword_3D220, &protocol conformance descriptor for Toggle<A>);
    v22 = v27;
    sub_3A558();
    v13 = v28;
    v23 = v30;
    v24 = v22;
    v25 = v29;
    (*(v28 + 32))(v30, v24, v29);
    v12 = v25;
    v11 = v23;
    v10 = 0;
  }

  else
  {
    v10 = 1;
    v12 = v29;
    v11 = v30;
    v13 = v28;
  }

  return (*(v13 + 56))(v11, v10, 1, v12);
}

uint64_t sub_1E66C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_39B68();
  __chkstk_darwin(v3 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB4(&qword_52888, &qword_3D1D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v22 - v8;
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v10 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v23 == 1)
  {
    v22[1] = v22;
    __chkstk_darwin(v11);
    v22[-2] = v1;
    sub_3A7F8();
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_36D24(v5);
    v23 = sub_3A708();
    v24 = v12;
    sub_6144();
    v13 = sub_3A2E8();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v23 = v13;
    v24 = v15;
    v25 = v17 & 1;
    v26 = v19;
    sub_3CB4(&qword_528F8, &qword_3D220);
    sub_6254(&qword_52900, &qword_528F8, &qword_3D220, &protocol conformance descriptor for Toggle<A>);
    sub_3A558();
    (*(v7 + 32))(a1, v9, v6);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v7 + 56))(a1, v20, 1, v6);
}

uint64_t sub_1E9EC@<X0>(char *a1@<X8>)
{
  v55 = a1;
  v53 = sub_3CB4(&qword_52910, &qword_3D230);
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = &v47 - v2;
  v3 = sub_3CB4(&qword_52918, &qword_3D238);
  v4 = __chkstk_darwin(v3 - 8);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v47 - v6;
  v7 = sub_39B68();
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_3CB4(&qword_52920, &qword_3D240);
  v10 = *(v50 - 8);
  v11 = __chkstk_darwin(v50);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v47 - v13;
  v14 = v1;
  v57 = v1;
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3769C(v9);
  v58 = sub_3A708();
  v59 = v15;
  sub_6144();
  v16 = sub_3A2E8();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v58 = v16;
  v59 = v18;
  v60 = v20 & 1;
  v61 = v22;
  sub_3CB4(&qword_52928, &qword_3D248);
  sub_6254(&qword_52930, &qword_52928, &qword_3D248, &protocol conformance descriptor for TupleView<A>);
  sub_3A538();
  type metadata accessor for AppStoreSettingsView(0);
  type metadata accessor for AppStoreSettingsViewModel(0);
  sub_28BD4(&qword_51F10, type metadata accessor for AppStoreSettingsViewModel, &unk_3C818);
  v23 = sub_39F88();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_39EE8();

  if (v58 == 1)
  {
    v47 = &v47;
    __chkstk_darwin(v24);
    *(&v47 - 2) = v14;
    sub_3A7E8();
    sub_3A798();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_37D18(v9);
    v58 = sub_3A708();
    v59 = v25;
    v26 = sub_3A2E8();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v58 = v26;
    v59 = v28;
    v60 = v30 & 1;
    v61 = v32;
    sub_3CB4(&qword_52940, &qword_3D2A0);
    sub_297CC();
    v33 = v48;
    sub_3A558();
    v34 = v51;
    v35 = v52;
    v36 = v53;
    (*(v51 + 32))(v52, v33, v53);
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v35 = v52;
    v36 = v53;
    v34 = v51;
  }

  (*(v34 + 56))(v35, v37, 1, v36);
  v38 = *(v10 + 16);
  v40 = v49;
  v39 = v50;
  v41 = v56;
  v38(v49, v56, v50);
  v42 = v54;
  sub_1A5AC(v35, v54, &qword_52918, &qword_3D238);
  v43 = v55;
  v38(v55, v40, v39);
  v44 = sub_3CB4(&qword_52938, &qword_3D298);
  sub_1A5AC(v42, &v43[*(v44 + 48)], &qword_52918, &qword_3D238);
  sub_1A614(v35, &qword_52918, &qword_3D238);
  v45 = *(v10 + 8);
  v45(v41, v39);
  sub_1A614(v42, &qword_52918, &qword_3D238);
  return (v45)(v40, v39);
}

uint64_t sub_1F090(uint64_t a1)
{
  v2 = sub_3A268();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AppStoreSettingsView(0);
  v6 = sub_39E78();
  v7 = sub_3A878();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Attempting to get current hosting controller", v8, 2u);
  }

  v9 = sub_28F60(&qword_525F8, &qword_3CFC8, &type metadata accessor for WithCurrentHostingControllerAction, v5);
  __chkstk_darwin(v9);
  *(&v11 - 2) = a1;
  sub_3A258();
  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1F2C4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsView(0);
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = v5;
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A7F8();
  sub_3A7E8();
  sub_3A798();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = sub_39E78();
  v8 = sub_3A878();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = a1;
    v11 = v6;
    _os_log_impl(&dword_0, v7, v8, "Got hosting controller: %@", v9, 0xCu);
    sub_1A614(v10, &qword_524F8, &qword_3C930);
  }

  v12 = (a2 + *(v4 + 44));
  v13 = *v12;
  v14 = v12[1];
  v31 = *v12;
  v32 = v14;
  v29 = a1;
  v15 = v6;
  sub_3CB4(&unk_52800, qword_3D1A0);
  sub_3A468();
  v16 = (a2 + *(v4 + 40));
  v17 = v16[1];
  v31 = *v16;
  v32 = v17;
  v33 = *(v16 + 1);
  sub_3CB4(&qword_52778, &qword_3D170);
  sub_3A4E8();
  if (v30)
  {

    v31 = v13;
    v32 = v14;
    sub_3A458();
    if (v29)
    {

      v18 = sub_39E78();
      v19 = sub_3A878();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "Finishing AuthKit surrogate auth from onAppear", v20, 2u);
      }

      v21 = v28;
      sub_296EC(a2, v28, type metadata accessor for AppStoreSettingsView);
      v22 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v23 = swift_allocObject();
      sub_28818(v21, v23 + v22);
      sub_1F650(sub_294FC, v23);
    }
  }
}