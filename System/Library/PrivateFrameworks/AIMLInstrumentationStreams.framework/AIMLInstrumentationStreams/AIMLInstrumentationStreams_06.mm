uint64_t sub_23C601594(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t *, void *))
{
  v4 = *(a1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  result = a2(MEMORY[0x277D84F90]);
  v12 = result;
  if (v4 >> 62)
  {
LABEL_15:
    v10 = result;
    v6 = sub_23C871C34();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EED7610](i, v4);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_11:
            __break(1u);
            return v12;
          }
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v8 = *(v4 + 8 * i + 32);

          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_11;
          }
        }

        v11[0] = i;
        v11[1] = v8;
        a3(&v12, v11);

        if (v9 == v6)
        {
          return v12;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6016E0(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v58 = *a2;

  v3 = sub_23C870D04();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23C874E20;
    *(v5 + 32) = v4;
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = OrderedEvent.linkedComponentIdentifiers()();
    v9 = v8;

    if (!v7)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23C87AC80;
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
  }

  v57 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v56 = v10;
  if (!v10)
  {
    v12 = 0;
LABEL_37:
    swift_bridgeObjectRelease_n();

    sub_23C572AB4(v10, 0);
    return sub_23C572AB4(v12, 0);
  }

  v11 = 0;
  v12 = 0;
  v10 = 0;
  v54 = v5;
  v55 = v5 & 0xC000000000000001;
  while (v55)
  {
    v13 = MEMORY[0x23EED7610](v11, v5);
LABEL_10:
    v14 = v13;
    v15 = v2;
    v16 = sub_23C870CA4();
    if (!v16)
    {
      goto LABEL_44;
    }

    v17 = v16;
    ObjectType = swift_getObjectType();

    sub_23C572AB4(v10, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    v22 = sub_23C5FF958(ObjectType);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_40;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C6449C4();
      }
    }

    else
    {
      sub_23C63FA20(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_23C5FF958(ObjectType);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_46;
      }

      v22 = v27;
    }

    *a1 = v20;
    if ((v26 & 1) == 0)
    {
      v29 = sub_23C596A1C(MEMORY[0x277D84F90]);
      v20[(v22 >> 6) + 8] |= 1 << v22;
      *(v20[6] + 8 * v22) = ObjectType;
      *(v20[7] + 8 * v22) = v29;
      v30 = v20[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_42;
      }

      v20[2] = v32;
    }

    v33 = v20[7];
    sub_23C572AB4(v12, 0);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v33 + 8 * v22);
    *(v33 + 8 * v22) = 0x8000000000000000;
    v37 = sub_23C5FFA08(v14);
    v38 = *(v35 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_41;
    }

    v41 = v36;
    if (*(v35 + 24) >= v40)
    {
      if ((v34 & 1) == 0)
      {
        sub_23C64485C();
      }
    }

    else
    {
      sub_23C63F7A4(v40, v34);
      sub_23C870E34();
      v42 = sub_23C5FFA08(v14);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_45;
      }

      v37 = v42;
    }

    *(v33 + 8 * v22) = v35;

    v44 = *(v33 + 8 * v22);
    if ((v41 & 1) == 0)
    {
      v44[(v37 >> 6) + 8] |= 1 << v37;
      *(v44[6] + 8 * v37) = v14;
      *(v44[7] + 8 * v37) = MEMORY[0x277D84F90];
      v45 = v44[2];
      v31 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v31)
      {
        goto LABEL_43;
      }

      v44[2] = v46;
      v47 = v14;
    }

    v48 = v44[7];
    v49 = *(v48 + 8 * v37);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *(v48 + 8 * v37) = v49;
    if ((v50 & 1) == 0)
    {
      v49 = sub_23C584828(0, *(v49 + 2) + 1, 1, v49);
      *(v48 + 8 * v37) = v49;
    }

    v2 = v15;
    v52 = *(v49 + 2);
    v51 = *(v49 + 3);
    if (v52 >= v51 >> 1)
    {
      v49 = sub_23C584828((v51 > 1), v52 + 1, 1, v49);
      *(v48 + 8 * v37) = v49;
    }

    v11 = (v11 + 1);
    *(v49 + 2) = v52 + 1;
    *&v49[8 * v52 + 32] = v58;

    v12 = sub_23C600C90;
    v10 = sub_23C601B98;
    v5 = v54;
    if (v56 == v11)
    {
      goto LABEL_37;
    }
  }

  if (v11 < *(v57 + 16))
  {
    v13 = *(v5 + 8 * v11 + 32);
    goto LABEL_10;
  }

  __break(1u);
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
  sub_23C872064();
  __break(1u);
LABEL_46:
  result = sub_23C872064();
  __break(1u);
  return result;
}

unint64_t sub_23C601B98@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23C596A1C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

void sub_23C601BC8()
{
  v0 = sub_23C601004();

  sub_23C592900(v0);
}

id EventGraph.init(timestamp:events:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___typeIndex] = 0;
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___innerTypeIndex] = 0;
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___componentIdentifierIndex] = 0;
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___typeAndCIDIndex] = 0;
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId] = xmmword_23C87AC90;
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId] = xmmword_23C87AC90;
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___selfIds] = 0;
  *&v2[OBJC_IVAR___ISEventGraph____lazy_storage___requests] = 0;
  *&v2[OBJC_IVAR___ISEventGraph_timestamp] = a2;

  v6 = sub_23C5A37EC(v3);
  sub_23C59C9D0(&v6);

  *&v2[OBJC_IVAR___ISEventGraph_eventsInternal] = v6;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for EventGraph();
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_23C601CF4(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v10 = MEMORY[0x277D84F90];
  sub_23C871D84();
  v5 = *(v1 + OBJC_IVAR___ISEventGraph_eventsInternal);
  v6 = (a1 + 32);
  while (1)
  {
    v9 = *v6++;
    result = v9;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x23EED7610](result, v5);
      goto LABEL_4;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v5 + 32 + 8 * result);

LABEL_4:
    v8 = *(v7 + 24);

    sub_23C871D54();
    sub_23C871D94();
    sub_23C871DA4();
    sub_23C871D64();
    if (!--v3)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23C601E20()
{
  v1 = *(v0 + OBJC_IVAR___ISEventGraph_eventsInternal);
  if (v1 >> 62)
  {
    v2 = sub_23C871C34();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    result = sub_23C871D84();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          v6 = MEMORY[0x23EED7610]();
          swift_beginAccess();
          v7 = *(v6 + 24);
          swift_unknownObjectRelease();
          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v8 = (v1 + 32);
        do
        {
          v9 = *v8++;
          swift_beginAccess();
          v10 = *(v9 + 24);
          sub_23C871D54();
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
          --v2;
        }

        while (v2);
      }

      return v11;
    }
  }

  return result;
}

uint64_t sub_23C601FBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_23C5A3FDC(0, &qword_27E1FB4C0, 0x277D59868);
  v4 = sub_23C600CA0();
  if (*(v4 + 16) && (v5 = sub_23C5FF958(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_23C601CF4(v7);

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_20:

    return 0;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x23EED7610](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  sub_23C5A3FDC(0, &qword_27E1FB4B0, 0x277D5A918);
  v12 = sub_23C870D44();
  if (!v12)
  {
LABEL_17:

    return 0;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 trpId];
    if (v15)
    {
      v16 = v15;
      sub_23C871AB4();

      v17 = sub_23C870B74();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v2, 1, v17) != 1)
      {
        v19 = sub_23C870B04();

        (*(v18 + 8))(v2, v17);
        return v19;
      }

      sub_23C585C34(v2, &qword_27E1F92A0, &qword_23C8734E0);
      return 0;
    }

    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_23C602270(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);
  v4 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId);
  v5 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___finalTrpId + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_23C581AD0(v4, v5);
}

uint64_t (*sub_23C602290(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_23C601F9C();
  a1[1] = v3;
  return sub_23C6022D8;
}

uint64_t sub_23C602304(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v6 = a2(v2);
    v7 = *v3;
    v8 = v3[1];
    *v3 = v6;
    v3[1] = v9;

    sub_23C581AD0(v7, v8);
  }

  sub_23C581BD8(v4, v5);
  return v6;
}

uint64_t sub_23C602398()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - v5;
  v7 = sub_23C601F9C();
  if (!v8)
  {
    return 0;
  }

  v49 = v7;
  v50 = v6;
  v51 = v8;
  v9 = sub_23C5A3FDC(0, &qword_27E1FB4A8, 0x277D59858);
  v10 = sub_23C600CA0();
  if (*(v10 + 16) && (v11 = sub_23C5FF958(v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = sub_23C601CF4(v13);

  if (v14 >> 62)
  {
LABEL_41:
    if (!sub_23C871C34())
    {
      goto LABEL_47;
    }
  }

  else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x23EED7610](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_45:
      v21 = sub_23C871C34();
      if (v21)
      {
        goto LABEL_16;
      }

      goto LABEL_46;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  sub_23C5A3FDC(0, &qword_27E1FB4B0, 0x277D5A918);
  v17 = sub_23C870D44();
  if (!v17)
  {

LABEL_48:

    return 0;
  }

  v18 = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    return 0;
  }

  v42 = v19;
  v20 = [v19 userTrpIds];
  if (!v20)
  {

    goto LABEL_48;
  }

  v14 = v20;
  sub_23C5A3FDC(0, &qword_27E1FB4B8, 0x277D5AC78);
  v0 = sub_23C8718A4();

  v41 = v4;
  v43 = v18;
  v44 = v16;
  if (v0 >> 62)
  {
    goto LABEL_45;
  }

  v21 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_46:

LABEL_47:

    goto LABEL_48;
  }

LABEL_16:
  v22 = 0;
  v47 = v0 & 0xFFFFFFFFFFFFFF8;
  v48 = v0 & 0xC000000000000001;
  while (1)
  {
    if (v48)
    {
      v23 = MEMORY[0x23EED7610](v22, v0);
    }

    else
    {
      if (v22 >= *(v47 + 16))
      {
        goto LABEL_40;
      }

      v23 = *(v0 + 8 * v22 + 32);
    }

    v24 = v23;
    v4 = (v22 + 1);
    v25 = v50;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_23C871AB4();
    v26 = sub_23C870B74();
    v27 = *(v26 - 8);
    v14 = *(v27 + 48);
    if ((v14)(v25, 1, v26) == 1)
    {
      sub_23C585C34(v25, &qword_27E1F92A0, &qword_23C8734E0);
      goto LABEL_18;
    }

    v46 = v14;
    v28 = sub_23C870B04();
    v29 = v25;
    v30 = v28;
    v14 = v31;
    v45 = *(v27 + 8);
    v45(v29, v26);
    if (v49 == v30 && v51 == v14)
    {
      break;
    }

    v32 = sub_23C872014();

    if (v32)
    {

      goto LABEL_34;
    }

LABEL_18:

    ++v22;
    if (v4 == v21)
    {
      goto LABEL_46;
    }
  }

LABEL_34:

  v34 = [v42 rootTrpId];
  v35 = v41;
  v37 = v43;
  v36 = v44;
  if (!v34)
  {

    return 0;
  }

  v38 = v34;
  sub_23C871AB4();

  if (v46(v35, 1, v26) == 1)
  {

    sub_23C585C34(v35, &qword_27E1F92A0, &qword_23C8734E0);
    return 0;
  }

  v39 = sub_23C870B04();

  v45(v35, v26);
  return v39;
}

uint64_t sub_23C6028B8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId);
  v4 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId);
  v5 = *(v2 + OBJC_IVAR___ISEventGraph____lazy_storage___rootTrpId + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_23C581AD0(v4, v5);
}

uint64_t (*sub_23C6028D8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = sub_23C6022E4();
  a1[1] = v3;
  return sub_23C602920;
}

uint64_t sub_23C60292C(uint64_t *a1, char a2, void *a3)
{
  v3 = a1[1];
  v4 = (a1[2] + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = *a1;
  v4[1] = v3;
  if (a2)
  {

    sub_23C581AD0(v5, v6);
  }

  else
  {

    return sub_23C581AD0(v5, v6);
  }
}

char *sub_23C602A14(int a1)
{
  v1 = sub_23C601004();
  v2 = sub_23C604454(v1, sub_23C604154);

  v3 = v2 + 8;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2[8];
  v7 = (v4 + 63) >> 6;
  v8 = v2;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v6)
  {
LABEL_10:
    v13 = *(v8[7] + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
    v14 = *(v13 + 16);
    v15 = *(v11 + 16);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v16 > *(v11 + 24) >> 1)
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_23C584828(result, v17, 1, v11);
      v11 = result;
    }

    v6 &= v6 - 1;
    if (*(v13 + 16))
    {
      v18 = *(v11 + 16);
      if ((*(v11 + 24) >> 1) - v18 < v14)
      {
        goto LABEL_26;
      }

      memcpy((v11 + 8 * v18 + 32), (v13 + 32), 8 * v14);

      if (v14)
      {
        v19 = *(v11 + 16);
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_27;
        }

        *(v11 + 16) = v21;
      }
    }

    else
    {

      if (v14)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      v22 = sub_23C601CF4(v11);

      return v22;
    }

    v6 = v3[v12];
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_23C602C38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v5 = a2();
  if (*(v5 + 16) && (v6 = a3(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_23C601CF4(v8);

  return v9;
}

id sub_23C602CCC(uint64_t a1)
{
  v2 = sub_23C600CA0();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_23C601CF4(v5);

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x23EED7610](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C602DC8(uint64_t a1)
{
  if (*(sub_23C601560() + 16) && (sub_23C5FF958(a1), (v2 & 1) != 0))
  {

    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB470, &qword_23C87ACA0);
    type metadata accessor for ComponentGroup(0, a1, v4, v5);
    sub_23C604634();
    v6 = sub_23C871844();

    return v6;
  }

  else
  {

    type metadata accessor for ComponentGroup(0, a1, v8, v9);
    return sub_23C8718E4();
  }
}

uint64_t sub_23C602EF8(uint64_t a1)
{
  v2 = sub_23C601560();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    v6 = sub_23C5FF6E8(v5);

    if (v6)
    {
      type metadata accessor for ComponentGroup(0, a1, v7, v8);
      v9 = sub_23C601CF4(v6);

      return ComponentGroup.__allocating_init(unchecked:)(v9);
    }
  }

  else
  {
  }

  return 0;
}

void sub_23C602FBC()
{
  v0 = sub_23C5A3FDC(0, &qword_27E1F9998, 0x277D57038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = v0;
  v2 = inited + 32;
  *(inited + 40) = 0;
  v3 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C585C34(v2, &qword_27E1F94C0, &qword_23C8739F0);
  v4 = type metadata accessor for EventFilter();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___ISEventFilter_filter] = v3;
  v19.receiver = v5;
  v19.super_class = v4;
  v6 = objc_msgSendSuper2(&v19, sel_init);
  v7 = sub_23C5A3FDC(0, &qword_27E1FB480, 0x277D5A9D0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_23C873D10;
  *(v8 + 32) = v7;
  v9 = v8 + 32;
  *(v8 + 40) = 0;
  v10 = sub_23C598D8C(v8);
  swift_setDeallocating();
  sub_23C585C34(v9, &qword_27E1F94C0, &qword_23C8739F0);
  v11 = objc_allocWithZone(v4);
  *&v11[OBJC_IVAR___ISEventFilter_filter] = v10;
  v18.receiver = v11;
  v18.super_class = v4;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(v6, v12);

  v14 = sub_23C5A3FDC(0, &qword_2814FABC0, 0x277D5B048);
  sub_23C604028();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_23C873D10;
  *(v15 + 32) = sub_23C5A3FDC(0, &qword_27E1FB488, 0x277D5B028);
  v16 = _s26AIMLInstrumentationStreams11EventFilterC4some2of5typesACSo25SISchemaTopLevelUnionTypeCm_SaySo0H22InstrumentationMessageCmGtFZ_0(v14, v15);
  swift_setDeallocating();
  v17 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(v13, v16);

  qword_2814FB470 = v17;
}

uint64_t sub_23C6031E4()
{
  v1 = OBJC_IVAR___ISEventGraph____lazy_storage___selfIds;
  if (*(v0 + OBJC_IVAR___ISEventGraph____lazy_storage___selfIds))
  {
    v2 = *(v0 + OBJC_IVAR___ISEventGraph____lazy_storage___selfIds);
  }

  else
  {
    v3 = sub_23C601004();
    sub_23C592900(v3);
    sub_23C603530(MEMORY[0x277D84F98], v4);
    v2 = v5;

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23C603280@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v3 = sub_23C870B74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;

  sub_23C870DF4();
  v8 = sub_23C871B04();
  if (!*(v7 + 16))
  {

    goto LABEL_5;
  }

  v10 = sub_23C5FF898(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_5:
    sub_23C870DF4();
    v24 = sub_23C871B04();
    v15 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C873D10;
    sub_23C870E24();
    v27 = sub_23C870B04();
    v29 = v28;
    (*(v4 + 8))(v6, v3);
    *(inited + 32) = v27;
    *(inited + 40) = v29;
    v30 = sub_23C604184(inited);
    swift_setDeallocating();
    sub_23C604D2C(inited + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v7;
    v22 = v30;
    v23 = v24;
    goto LABEL_6;
  }

  v13 = *(*(v7 + 56) + 8 * v10);

  sub_23C870DF4();
  v33 = sub_23C871B04();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_23C873D10;
  sub_23C870E24();
  v17 = sub_23C870B04();
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v20 = sub_23C649D60(v16, v13);
  swift_setDeallocating();
  sub_23C604D2C(v16 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v7;
  v22 = v20;
  v23 = v33;
LABEL_6:
  sub_23C594898(v22, v23, v15, isUniquelyReferenced_nonNull_native);

  *v34 = v35;
  return result;
}

void sub_23C603530(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v25 = a1;
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_23C871BF4();
    sub_23C870E34();
    sub_23C604CD4();
    sub_23C871A14();
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a2 + 32);
    v5 = a2 + 56;
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

    v8 = v11 & *(a2 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v19 = v16;
        sub_23C603280(&v25, &v18);
        if (v3)
        {
          break;
        }

        v25 = v18;
        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v17 = sub_23C871C64();
        if (v17)
        {
          v18 = v17;
          sub_23C870E34();
          swift_dynamicCast();
          v16 = v19;
          v14 = v7;
          v15 = v8;
          if (v19)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_23C59A774(v4);
    }

    else
    {
LABEL_19:
      sub_23C59A774(v4);
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t (*sub_23C60378C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C6031E4();
  return sub_23C6037D4;
}

char *sub_23C603800()
{
  v0 = sub_23C5A3FDC(0, &qword_27E1FB498, 0x277D56958);
  v1 = sub_23C600CA0();
  if (*(v1 + 16) && (v2 = sub_23C5FF958(v0), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_23C601CF4(v4);

  if (v5 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    v7 = 0;
    v8 = 0;
    v24 = v5 & 0xFFFFFFFFFFFFFF8;
    v25 = v5 & 0xC000000000000001;
    v27 = MEMORY[0x277D84F90];
    v22 = i;
    v23 = v5;
    while (1)
    {
      if (v25)
      {
        v9 = MEMORY[0x23EED7610](v7, v5);
      }

      else
      {
        if (v7 >= *(v24 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v36 = v9;
      sub_23C603A5C(&v29);
      v28 = v8;

      v12 = v35;
      v13 = v29;
      v14 = v30;
      v16 = v31;
      v15 = v32;
      v17 = v33;
      if (v35)
      {
        v26 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_23C584700(0, *(v27 + 2) + 1, 1, v27);
        }

        v19 = *(v27 + 2);
        v18 = *(v27 + 3);
        if (v19 >= v18 >> 1)
        {
          v27 = sub_23C584700((v18 > 1), v19 + 1, 1, v27);
        }

        *(v27 + 2) = v19 + 1;
        v20 = &v27[56 * v19];
        *(v20 + 4) = v13;
        *(v20 + 5) = v14;
        *(v20 + 6) = v16;
        *(v20 + 7) = v15;
        *(v20 + 8) = v17;
        *(v20 + 9) = v26;
        *(v20 + 10) = v12;
      }

      else
      {
        sub_23C604C70(v29, v30, v31, v32, v33, v34, 0);
      }

      v5 = v23;
      ++v7;
      v8 = v28;
      if (v11 == v22)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_25:

  return v27;
}

double sub_23C603A5C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v36 - v6;
  v8 = sub_23C870CA4();
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v10 intermediateUtteranceInfoTier1];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v12 unrepairedPostItn];
  if (!v14)
  {

    goto LABEL_12;
  }

  v41 = v13;
  v15 = v14;
  v39 = sub_23C871784();
  v17 = v16;

  v18 = [v11 eventMetadata];
  if (!v18 || (v40 = v17, v19 = v18, v20 = [v18 asrId], v19, !v20))
  {

LABEL_11:
    goto LABEL_12;
  }

  sub_23C871AB4();

  v21 = sub_23C870B74();
  v22 = *(v21 - 8);
  v37 = *(v22 + 48);
  if (v37(v7, 1, v21) == 1)
  {

    sub_23C585C34(v7, &qword_27E1F92A0, &qword_23C8734E0);
LABEL_12:
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  v38 = v21;
  sub_23C870B04();

  v24 = *(v22 + 8);
  v25 = v7;
  v36[1] = v22 + 8;
  v26 = v24;
  v24(v25, v38);
  v27 = v38;
  sub_23C870CC4();
  if (v37(v5, 1, v27) == 1)
  {
    sub_23C585C34(v5, &qword_27E1F92A0, &qword_23C8734E0);
    v37 = 0;
    v28 = 0;
  }

  else
  {
    v37 = sub_23C870B04();
    v30 = v29;
    v26(v5, v27);
    v28 = v30;
  }

  v31 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = 1954047348;
  v33 = inited + 32;
  v34 = v39;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v34;
  *(inited + 56) = v31;
  v35 = sub_23C5967FC(inited);
  swift_setDeallocating();
  sub_23C585C34(v33, &qword_27E1F9968, &unk_23C873E20);

  *a1 = v37;
  *(a1 + 8) = v28;
  *(a1 + 16) = 0xD00000000000002ALL;
  *(a1 + 24) = 0x800000023C8A8EA0;
  *&result = 1954047348;
  *(a1 + 32) = xmmword_23C873D00;
  *(a1 + 48) = v35;
  return result;
}

uint64_t (*sub_23C603E48(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_23C6037E0();
  return sub_23C603E90;
}

id EventGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventGraph.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EventGraph();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23C604028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB3C8, &qword_23C87AB78);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27E1FB490;
    v3 = &unk_23C87ACE0;
  }

  else
  {
    v2 = &qword_27E1FB4F0;
    v3 = &qword_23C874E40;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

unint64_t *sub_23C6040A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
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

    v8 = sub_23C6042EC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_23C604184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
    v3 = sub_23C871CF4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_23C8720F4();

      sub_23C871804();
      result = sub_23C872124();
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
          result = sub_23C872014();
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t *sub_23C6042EC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);

    v16 = a4(v15, v14);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_23C647904(v19, a2, v20, a3);
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
      return sub_23C647904(v19, a2, v20, a3);
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

unint64_t *sub_23C604454(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_23C6042EC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_23C6040A0(v10, v6, v4, a2);
  result = MEMORY[0x23EED8240](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_23C6045D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  type metadata accessor for ComponentGroup(0, *(v4 + 16), a2, a3);
  v7 = sub_23C601CF4(v6);
  result = ComponentGroup.__allocating_init(unchecked:)(v7);
  *a4 = result;
  return result;
}

unint64_t sub_23C604634()
{
  result = qword_27E1FB478;
  if (!qword_27E1FB478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FB470, &qword_23C87ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB478);
  }

  return result;
}

uint64_t keypath_setTm_0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;

  return sub_23C581AD0(v8, v9);
}

void sub_23C604C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }
}

unint64_t sub_23C604CD4()
{
  result = qword_27E1F9B00;
  if (!qword_27E1F9B00)
  {
    sub_23C870E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9B00);
  }

  return result;
}

uint64_t sub_23C604D80(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_23C871D84();
    v4 = v1 + 64;
    result = sub_23C871BB4();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 72;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      objc_allocWithZone(type metadata accessor for ComponentGroupBridge());

      sub_23C5ADFCC(v10);
      sub_23C871D54();
      sub_23C871D94();
      v1 = v19;
      sub_23C871DA4();
      result = sub_23C871D64();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_23C606430(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_23C606430(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t sub_23C604FB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    v22 = a1;
    sub_23C871D84();
    v4 = v22 + 64;
    result = sub_23C871BB4();
    v5 = v22;
    v6 = result;
    v7 = 0;
    v8 = *(v22 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_22;
      }

      v23 = v7;
      v11 = *(*(v5 + 48) + 8 * v6);
      v12 = type metadata accessor for ComponentIdentifierBridge();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR___ISComponentIdentifier_componentIdentifier] = v11;
      v24.receiver = v13;
      v24.super_class = v12;
      v14 = v11;
      objc_msgSendSuper2(&v24, sel_init);
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      result = sub_23C871D64();
      v5 = v22;
      v9 = 1 << *(v22 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v15 = *(v4 + 8 * v10);
      if ((v15 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v6 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v10 << 6;
        v18 = v10 + 1;
        v19 = (v22 + 72 + 8 * v10);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_23C606430(v6, v8, 0);
            v5 = v22;
            v9 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_23C606430(v6, v8, 0);
        v5 = v22;
      }

LABEL_4:
      v7 = v23 + 1;
      v6 = v9;
      if (v23 + 1 == v2)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
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

uint64_t EventGraph.sievents()()
{
  v0 = sub_23C601E20();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_23C871C34();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = MEMORY[0x277D84F90];
  result = sub_23C871D84();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      ++v4;
      sub_23C871AE4();
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v2 != v4);

    return v6;
  }

  return result;
}

uint64_t EventGraph.sievents(componentName:)(int a1)
{
  v1 = sub_23C602A14(a1);
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_23C871C34();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x277D84F90];
  result = sub_23C871D84();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      sub_23C871AE4();
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v3 != v5);

    return v7;
  }

  return result;
}

uint64_t EventGraph.sievents(componentIdentifier:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___ISComponentIdentifier_componentIdentifier);
  v2 = sub_23C601004();
  v3 = MEMORY[0x277D84F90];
  if (*(v2 + 16))
  {
    v4 = sub_23C5FFA08(v1);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = sub_23C601CF4(v6);

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v8 = sub_23C871C34();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_8:
  result = sub_23C871D84();
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      ++v10;
      sub_23C871AE4();
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v8 != v10);

    return v3;
  }

  return result;
}

uint64_t sub_23C60581C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = MEMORY[0x277D84F90];
  if (*(v3 + 16))
  {
    v5 = sub_23C5FF958(a1);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_23C601CF4(v7);

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v9 = sub_23C871C34();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_8:
  result = sub_23C871D84();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      ++v11;
      sub_23C871AE4();
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v9 != v11);

    return v4;
  }

  return result;
}

id sub_23C6059DC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = a1;
  a4(ObjCClassMetadata);

  sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
  v8 = sub_23C871894();

  return v8;
}

uint64_t EventGraph.sievent(innerType:)(uint64_t a1)
{
  v2 = sub_23C600CA0();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_23C601CF4(v5);

  if (v6 >> 62)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EED7610](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:

    sub_23C5A3FDC(0, &qword_27E1F9F60, 0x277D5A690);
    return sub_23C871AE4();
  }

  __break(1u);
  return result;
}

uint64_t EventGraph.getComponentGroupBridges(type:)(uint64_t a1)
{
  v2 = sub_23C6009C8();
  if (*(v2 + 16) && (v3 = sub_23C5FF958(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_23C601CF4(v5);

  v7 = sub_23C606178(v6);

  v8 = sub_23C604D80(v7);

  return v8;
}

id EventGraph.getComponentGroupBridge(type:)()
{
  v1 = [v0 getComponentGroupBridgesWithType_];
  type metadata accessor for ComponentGroupBridge();
  v2 = sub_23C8718A4();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EED7610](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

id sub_23C605F5C(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_23C5A3FDC(0, a3, a4);
  v5 = [a1 getComponentGroupBridgeWithType_];

  return v5;
}

id sub_23C605FD0(unint64_t *a1, void *a2)
{
  sub_23C5A3FDC(0, a1, a2);
  v3 = [v2 getComponentGroupBridgeWithType_];

  return v3;
}

uint64_t EventGraph.componentIdentifiersBridge.getter()
{
  v0 = sub_23C601004();
  v1 = sub_23C604FB0(v0);

  v2 = sub_23C59A590(v1);

  return v2;
}

void *sub_23C606178(unint64_t a1)
{
  v23 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_23C871C34();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x23EED7610](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = sub_23C870D04();
        v11 = sub_23C5FFC28(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_23C63FCBC(v14, 1);
          v4 = v23;
          v16 = sub_23C5FFC28(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4C8, &qword_23C87AD00);
            result = sub_23C872064();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x23EED7170]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23C8718D4();
          }

          sub_23C871904();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_23C874E20;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

unint64_t sub_23C6063D8()
{
  result = qword_27E1F9BF0;
  if (!qword_27E1F9BF0)
  {
    type metadata accessor for ComponentIdentifierBridge();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F9BF0);
  }

  return result;
}

uint64_t sub_23C606430(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id EventGraphsPublisher.__allocating_init(events:windowLength:trackingTag:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_23C60B330(a1, a2, a3, a4);

  return v10;
}

id EventGraphsPublisher.init(events:windowLength:trackingTag:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = sub_23C60B330(a1, a2, a3, a4);

  return v5;
}

void sub_23C6064D4(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_windowLength);
  v4 = v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_trackingTag;
  v5 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_trackingTag);
  v6 = *(v4 + 8);
  v7 = objc_allocWithZone(type metadata accessor for EventGraphsPublisher.ConnectedComponentGroupsSubscriber(0));

  v8 = swift_unknownObjectRetain();
  v9 = sub_23C60B588(v8, v5, v6, v3);
  swift_unknownObjectRelease();
  v10 = *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_inner);
  *(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_inner) = v9;
  v11 = v9;

  [*(v2 + OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_upstream) subscribe_];
}

uint64_t sub_23C606780(uint64_t a1)
{
  sub_23C588DC0(a1, v13);
  type metadata accessor for TimestampedOrderedEvent();
  result = swift_dynamicCast();
  if (!result)
  {
    return BPSDemandMax();
  }

  v3 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp);
  if (v3 <= *(v12 + 16))
  {
    v3 = *(v12 + 16);
  }

  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp) = v3;
  v4 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C874E20;
    *(inited + 32) = v12;
    v8 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder);
    v9 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder);
    v10 = *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder);

    sub_23C667984(inited, v8, v9, v10);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_23C606E50();
    v11 = BPSDemandMax();

    return v11;
  }

  return result;
}

uint64_t sub_23C606954(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for CoreAnalyticsTracker(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) = 1;
  sub_23C606E50();
  [*(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream) receiveCompletion_];
  v10 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v1 + v10, v5, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_23C585C34(v5, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C60C678(v5, v9, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder), 0, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount), 0);
  return sub_23C60C6E0(v9, type metadata accessor for CoreAnalyticsTracker);
}

uint64_t sub_23C606BE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for CoreAnalyticsTracker(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) = 1;
  [*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream) cancel];
  v8 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v0 + v8, v3, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_23C585C34(v3, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C60C678(v3, v7, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(1, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder), 0, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount), 0);
  return sub_23C60C6E0(v7, type metadata accessor for CoreAnalyticsTracker);
}

void *sub_23C606E50()
{
  v1 = v0;
  v60 = sub_23C870B74();
  v57 = *(v60 - 8);
  v2 = MEMORY[0x28223BE20](v60);
  v56 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = &v42 - v4;
  v5 = type metadata accessor for EventTypeIdPair(0);
  v51 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v42 - v9);
  v11 = MEMORY[0x23EED7AE0](v8);
  v12 = 0;
  sub_23C6073D4(v0, v61);
  objc_autoreleasePoolPop(v11);
  if (v61[0] == 1)
  {
    do
    {
      v13 = MEMORY[0x23EED7AE0]();
      sub_23C6073D4(v0, v61);
      objc_autoreleasePoolPop(v13);
    }

    while ((v61[0] & 1) != 0);
  }

  v14 = MEMORY[0x23EED7AE0]();
  sub_23C6078C4(v0, v61);
  objc_autoreleasePoolPop(v14);
  if (v61[0] != 1)
  {
    return sub_23C607DF0();
  }

  v49 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished;
  v44 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp;
  v43 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength;
  v47 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream;
  v48 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder;
  v15 = (v57 + 32);
  v45 = v10;
  v46 = v0;
  while (1)
  {
    v24 = MEMORY[0x23EED7AE0]();
    if (v1[v49] == 1)
    {
      v25 = sub_23C608EA8();
      if (!*(v25 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v25 = sub_23C6088F4(*&v1[v44] - *&v1[v43]);
      if (!*(v25 + 16))
      {
LABEL_31:

LABEL_33:
        objc_autoreleasePoolPop(v24);
        return sub_23C607DF0();
      }
    }

    v26 = v50;
    sub_23C60C5AC(v25 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v50);

    sub_23C60C678(v26, v10, type metadata accessor for EventTypeIdPair);
    result = sub_23C608358(v10);
    if (!v28)
    {
      sub_23C60C6E0(v10, type metadata accessor for EventTypeIdPair);
      goto LABEL_33;
    }

    v29 = v28;
    v54 = v24;
    v30 = *&v1[v47];
    v52 = result;
    v53 = v30;
    v31 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
      break;
    }

    v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v12;
    if (v32)
    {
      goto LABEL_14;
    }

LABEL_5:
    v16 = MEMORY[0x277D84F90];
LABEL_6:
    v17 = *&v52;
    v18 = sub_23C596660(v16);

    v1 = v46;
    v19 = v46;
    v12 = v55;
    v20 = sub_23C60AEC8(v18, v19);

    *v61 = v29;
    sub_23C6360C8(v20);
    v21 = *v61;
    v22 = objc_allocWithZone(type metadata accessor for EventGraph());
    v23 = EventGraph.init(timestamp:events:)(v21, v17);
    [v53 receiveInput_];

    v10 = v45;
    sub_23C60C6E0(v45, type metadata accessor for EventTypeIdPair);
    objc_autoreleasePoolPop(v54);
  }

  result = sub_23C871C34();
  v32 = result;
  v55 = v12;
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_14:
  v33 = 0;
  v58 = v29 & 0xC000000000000001;
  v16 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v58)
    {
      v34 = v29;
      result = MEMORY[0x23EED7610](v33, v29);
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      goto LABEL_18;
    }

    if (v33 >= *(v31 + 16))
    {
      goto LABEL_36;
    }

    v34 = v29;

    v35 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
LABEL_18:
      result = sub_23C870CF4();
      if (!result)
      {
        goto LABEL_37;
      }

      v36 = result;
      v37 = v56;
      sub_23C870D94();

      v38 = *v15;
      (*v15)(v59, v37, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_23C5844B4(0, *(v16 + 2) + 1, 1, v16);
      }

      v40 = *(v16 + 2);
      v39 = *(v16 + 3);
      if (v40 >= v39 >> 1)
      {
        v16 = sub_23C5844B4((v39 > 1), v40 + 1, 1, v16);
      }

      *(v16 + 2) = v40 + 1;
      result = v38(&v16[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v40], v59, v60);
      ++v33;
      v41 = v35 == v32;
      v29 = v34;
      if (v41)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_23C6073D4(void *a1@<X0>, char *a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp;
  v5 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp);
  v6 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength);
  v7 = v5 - v6;
  v8 = *&OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished;
  v9 = &unk_27E1FB000;
  if (*(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) == 1)
  {
    v2 = sub_23C871634();
    v10 = sub_23C871AC4();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23C56D000, v2, v10, "Constructing graph upstream finished", v11, 2u);
      MEMORY[0x23EED8240](v11, -1, -1);
    }

    v12 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder);
    v38 = v12;
    v13 = sub_23C608CF4();
  }

  else
  {
    v12 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder);
    v38 = v12;
    v13 = sub_23C637F9C(v5 - v6);
  }

  v14 = v13;
  v15 = v13 >> 62;
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_36:

LABEL_37:
    v36 = 0;
    goto LABEL_38;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_36;
  }

LABEL_8:
  v37 = v4;
  if ((v14 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x23EED7610](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v4 = *(v14 + 32);
  }

  v9 = a1;
  v16 = sub_23C871634();
  v17 = sub_23C871AC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109632;
    *(v18 + 4) = *(a1 + *&v8);

    *(v18 + 8) = 2048;
    *(v18 + 10) = v7;
    *(v18 + 18) = 2048;
    *(v18 + 20) = *&v37[a1];
    _os_log_impl(&dword_23C56D000, v16, v17, "Constructing graph upstreamFinished: %{BOOL}d, session window expiry: %f latestTimestamp: %f", v18, 0x1Cu);
    MEMORY[0x23EED8240](v18, -1, -1);
  }

  else
  {

    v16 = v9;
  }

  v12 = sub_23C871634();
  LOBYTE(v8) = sub_23C871AC4();
  if (!os_log_type_enabled(v12, LOBYTE(v8)))
  {

    swift_bridgeObjectRelease_n();
    v20 = v38;
    goto LABEL_19;
  }

  v37 = v4;
  v2 = swift_slowAlloc();
  *v2 = 134217984;
  if (v15)
  {
    goto LABEL_43;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v20 = v38;

    *(v2 + 4) = i;

    _os_log_impl(&dword_23C56D000, v12, LOBYTE(v8), "Constructing graph %ld ids ready for construction", v2, 0xCu);
    MEMORY[0x23EED8240](v2, -1, -1);

    v4 = v37;
LABEL_19:
    isa = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder);
    if (v20[6].isa > isa)
    {
      isa = v20[6].isa;
    }

    *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder) = isa;
    v22 = sub_23C638AD4(v4);
    if (!v23)
    {

      goto LABEL_37;
    }

    v8 = *&v22;
    v14 = v23;
    v9 = v9;
    v24 = sub_23C871634();
    v25 = sub_23C871AC4();
    v26 = v14 >> 62;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218240;
      *(v27 + 4) = v20[6];

      *(v27 + 12) = 2048;
      v28 = v26 ? sub_23C871C34() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v27 + 14) = v28;
      _os_log_impl(&dword_23C56D000, v24, v25, "Constructing graph end %ld items in graphBuilder, events in new graph %ld", v27, 0x16u);
      MEMORY[0x23EED8240](v27, -1, -1);
    }

    else
    {

      v24 = v9;
    }

    v2 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph;
    v12 = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph);
    if (v26)
    {
LABEL_41:
      v29 = sub_23C871C34();
    }

    else
    {
      v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v29 <= v12 ? v12 : v29;
    *(&v9->isa + v2) = v30;
    v31 = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount);
    v32 = __OFADD__(v31, 1);
    v33 = (v31 + 1);
    if (!v32)
    {
      break;
    }

    __break(1u);
LABEL_43:
    ;
  }

  *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount) = v33;
  v34 = *(&v9->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream);
  v35 = sub_23C607AE0(v14, v8);

  [v34 receiveInput_];

  v36 = 1;
LABEL_38:
  *a2 = v36;
}

uint64_t sub_23C6078C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for EventTypeIdPair(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (v18 - v9);
  if (*(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished) == 1)
  {
    v11 = sub_23C608EA8();
    if (*(v11 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v11 = sub_23C6088F4(*(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp) - *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength));
  if (!*(v11 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_23C60C5AC(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v8);

  sub_23C60C678(v8, v10, type metadata accessor for EventTypeIdPair);
  v12 = sub_23C608358(v10);
  if (!v13)
  {
    result = sub_23C60C6E0(v10, type metadata accessor for EventTypeIdPair);
    goto LABEL_8;
  }

  v14 = *(a1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream);
  v15 = sub_23C607AE0(v13, *&v12);

  [v14 receiveInput_];

  result = sub_23C60C6E0(v10, type metadata accessor for EventTypeIdPair);
  v17 = 1;
LABEL_9:
  *a2 = v17;
  return result;
}

id sub_23C607AE0(unint64_t a1, double a2)
{
  v4 = sub_23C870B74();
  v31 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v30 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = v26 - v7;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_20:
    v11 = MEMORY[0x277D84F90];
LABEL_21:
    v21 = sub_23C596660(v11);

    v22 = v26[1];
    v23 = sub_23C60AEC8(v21, v22);

    v33 = a1;

    sub_23C6360C8(v23);
    v24 = v33;
    v25 = objc_allocWithZone(type metadata accessor for EventGraph());
    return EventGraph.init(timestamp:events:)(v24, a2);
  }

LABEL_19:
  v8 = sub_23C871C34();
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_3:
  v9 = 0;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xC000000000000001;
  v10 = (v31 + 32);
  v11 = MEMORY[0x277D84F90];
  v27 = v4;
  while (1)
  {
    if (v29)
    {
      v12 = a1;
      MEMORY[0x23EED7610](v9, a1);
      a1 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v9 >= *(v28 + 16))
      {
        goto LABEL_18;
      }

      v12 = a1;

      a1 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    result = sub_23C870CF4();
    if (!result)
    {
      break;
    }

    v14 = result;
    v15 = v30;
    sub_23C870D94();

    v16 = *v10;
    (*v10)(v32, v15, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_23C5844B4(0, v11[2] + 1, 1, v11);
    }

    v18 = v11[2];
    v17 = v11[3];
    if (v18 >= v17 >> 1)
    {
      v11 = sub_23C5844B4((v17 > 1), v18 + 1, 1, v11);
    }

    v11[2] = v18 + 1;
    v19 = v11 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v18;
    v4 = v27;
    v16(v19, v32, v27);
    ++v9;
    v20 = a1 == v8;
    a1 = v12;
    if (v20)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C607DF0()
{
  v1 = sub_23C870B74();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder);
  v6 = sub_23C6084CC(*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp) + -1800.0);
  v7 = *(v6 + 16);
  if (v7)
  {
    v9 = *(v2 + 16);
    v8 = v2 + 16;
    v25 = v6;
    v26 = v9;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v11 = *(v8 + 56);
    v12 = (v8 - 8);
    do
    {
      v13 = v8;
      v26(v4, v10, v1);
      swift_beginAccess();
      v14 = sub_23C5FFB04(v4);
      if (v15)
      {
        v16 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v5 + 24);
        v27 = v18;
        *(v5 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C6439A0();
          v18 = v27;
        }

        (*v12)(*(v18 + 48) + v16 * v11, v1);

        sub_23C6418A4(v16, v18);
        *(v5 + 24) = v18;
      }

      swift_endAccess();
      swift_beginAccess();
      v19 = sub_23C5FFB04(v4);
      if (v20)
      {
        v21 = v19;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v5 + 16);
        v27 = v23;
        *(v5 + 16) = 0x8000000000000000;
        if (!v22)
        {
          sub_23C64372C();
          v23 = v27;
        }

        (*v12)(*(v23 + 48) + v21 * v11, v1);
        sub_23C6418A4(v21, v23);
        *(v5 + 16) = v23;
      }

      swift_endAccess();
      (*v12)(v4, v1);
      v10 += v11;
      --v7;
      v8 = v13;
    }

    while (v7);
  }
}

id EventGraphsPublisher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23C608278(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23C608358(uint64_t *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16))
  {

    v5 = sub_23C5FFA4C(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = *(v2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_23C5FFA4C(a1);
    v11 = v10;
    if (v10)
    {
      v12 = *(*(v8 + 56) + 8 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  swift_beginAccess();
  sub_23C6329A0(a1);
  swift_endAccess();

  swift_beginAccess();
  sub_23C632A64(a1);
  swift_endAccess();
  if (v7)
  {
    result = v12;
  }

  else
  {
    result = 0;
  }

  if (v7)
  {
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_23C6084CC(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5B0, qword_23C87ADE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v27 - v4;
  v27 = sub_23C870B74();
  v32 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v34 = a1;

  v8 = sub_23C60C41C(v7, sub_23C60BFE8, v33, sub_23C60C1E4, sub_23C60C1E4);

  v9 = v8[2];
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = sub_23C64D580(v8[2], 0);
    v12 = sub_23C652D98(v35, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v9, v8);
    v13 = v35[0];
    v14 = v35[2];
    v29 = v35[3];
    v30 = v12;
    v28 = v35[4];

    sub_23C56EF08(v13);
    if (v30 != v9)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v35[0] = v11;
  sub_23C609388(v35, &unk_27E1FB5B0, qword_23C87ADE0, sub_23C648EA0, sub_23C6474E4);
  v15 = v27;
  v16 = v6;

  v14 = v35[0];
  v17 = *(v35[0] + 16);
  if (v17)
  {
    v35[0] = v10;
    sub_23C592B60(0, v17, 0);
    v18 = 0;
    v19 = v35[0];
    v30 = v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v28 = (v32 + 16);
    v29 = v32 + 32;
    while (v18 < v14[2])
    {
      v20 = v14;
      v21 = v3;
      v22 = *(v3 + 72);
      v23 = v31;
      sub_23C5855B0(&v30[v22 * v18], v31, &unk_27E1FB5B0, qword_23C87ADE0);
      (*v28)(v16, v23, v15);
      sub_23C585C34(v23, &unk_27E1FB5B0, qword_23C87ADE0);
      v35[0] = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_23C592B60((v24 > 1), v25 + 1, 1);
        v19 = v35[0];
      }

      ++v18;
      *(v19 + 16) = v25 + 1;
      (*(v32 + 32))(v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25, v16, v15);
      v3 = v21;
      v14 = v20;
      if (v17 == v18)
      {

        return v19;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C6088F4(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD60, &qword_23C874B60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for EventTypeIdPair(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v30 = a1;

  v10 = sub_23C60C41C(v9, sub_23C60C740, v29, sub_23C60BFF8, sub_23C60BFF8);

  v11 = v10[2];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = sub_23C64D5A4(v10[2], 0);
    v14 = sub_23C65303C(v31, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v11, v10);
    v15 = v31[0];
    v16 = v31[2];
    v26 = v31[3];
    v27 = v14;
    v25 = v31[4];

    sub_23C56EF08(v15);
    if (v27 != v11)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v31[0] = v13;
  sub_23C609388(v31, &unk_27E1FBD60, &qword_23C874B60, sub_23C648EB4, sub_23C6474F8);

  v16 = v31[0];
  v17 = *(v31[0] + 16);
  if (v17)
  {
    v18 = v8;
    v31[0] = v12;
    v27 = v17;
    sub_23C592C84(0, v17, 0);
    v19 = 0;
    v20 = v31[0];
    v26 = v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    while (v19 < v16[2])
    {
      v21 = v3;
      sub_23C5855B0(v26 + *(v3 + 72) * v19, v5, &unk_27E1FBD60, &qword_23C874B60);
      sub_23C60C5AC(v5, v18);
      sub_23C585C34(v5, &unk_27E1FBD60, &qword_23C874B60);
      v31[0] = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_23C592C84((v22 > 1), v23 + 1, 1);
        v20 = v31[0];
      }

      ++v19;
      *(v20 + 16) = v23 + 1;
      sub_23C60C678(v18, v20 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for EventTypeIdPair);
      v3 = v21;
      if (v27 == v19)
      {

        return v20;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

void *sub_23C608CF4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_23C64D3D0(*(v1 + 16), 0);
    v4 = sub_23C6527F4(&v12, v3 + 4, v2, v1);
    v5 = v12;
    swift_bridgeObjectRetain_n();
    sub_23C56EF08(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v12 = v3;
  sub_23C60922C(&v12);

  v6 = v12;
  v7 = v12[2];
  if (v7)
  {
    v12 = MEMORY[0x277D84F90];
    sub_23C871D84();
    v8 = 0;
    v9 = 32;
    while (v8 < *(v6 + 16))
    {
      ++v8;
      v10 = *(v6 + v9);
      sub_23C871D54();
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
      v9 += 16;
      if (v7 == v8)
      {

        return v12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23C608EA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD60, &qword_23C874B60);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for EventTypeIdPair(0);
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_23C64D5A4(*(v8 + 16), 0);
    v11 = sub_23C65303C(v24, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v9, v8);
    v12 = v24[0];
    v21 = v24[4];
    v22 = v24[3];
    swift_bridgeObjectRetain_n();
    sub_23C56EF08(v12);
    if (v11 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  v24[0] = v10;
  sub_23C609388(v24, &unk_27E1FBD60, &qword_23C874B60, sub_23C648EB4, sub_23C6474F8);

  v13 = v24[0];
  v14 = *(v24[0] + 16);
  if (v14)
  {
    v15 = v7;
    v24[0] = MEMORY[0x277D84F90];
    sub_23C592C84(0, v14, 0);
    v16 = 0;
    v17 = v24[0];
    v21 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v22 = v2;
    while (v16 < *(v13 + 16))
    {
      sub_23C5855B0(v21 + *(v22 + 72) * v16, v4, &unk_27E1FBD60, &qword_23C874B60);
      sub_23C60C5AC(v4, v15);
      sub_23C585C34(v4, &unk_27E1FBD60, &qword_23C874B60);
      v24[0] = v17;
      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_23C592C84((v18 > 1), v19 + 1, 1);
        v17 = v24[0];
      }

      ++v16;
      *(v17 + 16) = v19 + 1;
      sub_23C60C678(v15, v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for EventTypeIdPair);
      if (v14 == v16)
      {

        return v17;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23C60922C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23C648E50(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_23C871FC4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AF8, &unk_23C874B70);
      v7 = sub_23C8718F4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_23C609820(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_23C609388(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(unint64_t *, unint64_t *, unint64_t *))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v11 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = a4(v11);
  }

  v12 = *(v11 + 16);
  v14[0] = v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v14[1] = v12;
  result = sub_23C609464(v14, a2, a3, a5);
  *a1 = v11;
  return result;
}

uint64_t sub_23C609464(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(unint64_t *, unint64_t *, unint64_t *))
{
  v8 = a1[1];
  result = sub_23C871FC4();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = sub_23C8718F4();
        *(v12 + 16) = v11;
      }

      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_23C609DB4(v14, v15, a1, v10, a2, a3, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_23C6095C8(0, v8, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_23C6095C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = &v33 - v19;
  v35 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v40 = -v22;
    v41 = v21;
    v24 = a1 - a3;
    v34 = v22;
    v25 = v21 + v22 * a3;
LABEL_5:
    v38 = v23;
    v39 = a3;
    v36 = v25;
    v37 = v24;
    v26 = v24;
    v27 = v43;
    while (1)
    {
      sub_23C5855B0(v25, v20, a5, a6);
      sub_23C5855B0(v23, v16, a5, a6);
      v28 = *(v27 + 48);
      v29 = *&v20[v28];
      v30 = *&v16[v28];
      sub_23C585C34(v16, a5, a6);
      result = sub_23C585C34(v20, a5, a6);
      if (v29 >= v30)
      {
LABEL_4:
        a3 = v39 + 1;
        v23 = v38 + v34;
        v24 = v37 - 1;
        v25 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v31 = v42;
      sub_23C60C610(v25, v42, a5, a6);
      v27 = v43;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23C60C610(v31, v23, a5, a6);
      v23 += v40;
      v25 += v40;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C609820(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23C6473A0(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_23C60A740((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_23C584338((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_23C60A740((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_23C609DB4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v128 = a7;
  v9 = a6;
  v10 = a5;
  v11 = v8;
  v119 = a4;
  v120 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v129 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v116 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v131 = &v116 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v134 = &v116 - v19;
  result = MEMORY[0x28223BE20](v18);
  v133 = &v116 - v21;
  v130 = a3;
  v22 = *(a3 + 8);
  v136 = v10;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_99:
    a3 = *v120;
    if (!*v120)
    {
      goto LABEL_139;
    }

    v7 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v7;
    }

    else
    {
LABEL_133:
      result = sub_23C6473A0(v7);
    }

    v111 = v11;
    v137 = result;
    v7 = *(result + 16);
    if (v7 >= 2)
    {
      while (*v130)
      {
        v11 = v7 - 1;
        v112 = *(result + 16 * v7);
        v113 = result;
        v114 = *(result + 16 * (v7 - 1) + 40);
        sub_23C60A944(*v130 + *(v129 + 72) * v112, *v130 + *(v129 + 72) * *(result + 16 * (v7 - 1) + 32), *v130 + *(v129 + 72) * v114, a3, v136, v9, v128);
        if (v111)
        {
        }

        if (v114 < v112)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_23C6473A0(v113);
        }

        if (v7 - 2 >= *(v113 + 2))
        {
          goto LABEL_127;
        }

        v115 = &v113[16 * v7];
        *v115 = v112;
        *(v115 + 1) = v114;
        v137 = v113;
        sub_23C647314(v11);
        result = v137;
        v7 = *(v137 + 16);
        if (v7 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v135 = result;
  while (1)
  {
    v25 = v23;
    v123 = v24;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v42 = v119;
    }

    else
    {
      v118 = v11;
      v26 = v23;
      v27 = *v130;
      v28 = *(v129 + 72);
      a3 = *v130 + v28 * (v23 + 1);
      v29 = v133;
      sub_23C5855B0(a3, v133, v10, v9);
      v30 = v134;
      sub_23C5855B0(v27 + v28 * v26, v134, v10, v9);
      v31 = *(v135 + 48);
      v32 = *(v29 + v31);
      v33 = *(v30 + v31);
      sub_23C585C34(v30, v10, v9);
      result = sub_23C585C34(v29, v10, v9);
      v117 = v26;
      v7 = v26 + 2;
      v132 = v28;
      v34 = v27 + v28 * (v26 + 2);
      while (v22 != v7)
      {
        v35 = v133;
        v36 = v136;
        sub_23C5855B0(v34, v133, v136, v9);
        v37 = v134;
        sub_23C5855B0(a3, v134, v36, v9);
        v38 = *(v135 + 48);
        v39 = *(v35 + v38);
        v40 = *(v37 + v38);
        sub_23C585C34(v37, v36, v9);
        result = sub_23C585C34(v35, v36, v9);
        ++v7;
        v34 += v132;
        a3 += v132;
        if (v32 < v33 == v39 >= v40)
        {
          v41 = v7 - 1;
          goto LABEL_12;
        }
      }

      v41 = v22;
LABEL_12:
      v42 = v119;
      v11 = v118;
      v25 = v117;
      if (v32 < v33)
      {
        if (v41 < v117)
        {
          goto LABEL_130;
        }

        if (v117 < v41)
        {
          v7 = v132 * (v41 - 1);
          v43 = v41 * v132;
          v127 = v41;
          v44 = v41;
          v45 = v117;
          a3 = v117 * v132;
          v46 = v116;
          do
          {
            if (v45 != --v44)
            {
              v47 = *v130;
              if (!*v130)
              {
                goto LABEL_136;
              }

              sub_23C60C610(v47 + a3, v46, v136, v9);
              if (a3 < v7 || v47 + a3 >= v47 + v43)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != v7)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23C60C610(v46, v47 + v7, v136, v9);
            }

            ++v45;
            v7 -= v132;
            v43 -= v132;
            a3 += v132;
          }

          while (v45 < v44);
          v11 = v118;
          v42 = v119;
          v25 = v117;
          v41 = v127;
        }
      }
    }

    v48 = v130[1];
    if (v41 < v48)
    {
      if (__OFSUB__(v41, v25))
      {
        goto LABEL_129;
      }

      if (v41 - v25 < v42)
      {
        if (__OFADD__(v25, v42))
        {
          goto LABEL_131;
        }

        if (v25 + v42 >= v48)
        {
          v49 = v130[1];
        }

        else
        {
          v49 = v25 + v42;
        }

        if (v49 < v25)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v41 != v49)
        {
          break;
        }
      }
    }

    v23 = v41;
    if (v41 < v25)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v24 = v123;
    }

    else
    {
      result = sub_23C584338(0, *(v123 + 2) + 1, 1, v123);
      v24 = result;
    }

    v7 = *(v24 + 2);
    v50 = *(v24 + 3);
    a3 = v7 + 1;
    if (v7 >= v50 >> 1)
    {
      result = sub_23C584338((v50 > 1), v7 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = a3;
    v51 = &v24[16 * v7];
    *(v51 + 4) = v25;
    *(v51 + 5) = v23;
    v132 = *v120;
    if (!v132)
    {
      goto LABEL_138;
    }

    if (v7)
    {
      v10 = v136;
      while (1)
      {
        v52 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v53 = *(v24 + 4);
          v54 = *(v24 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_56:
          if (v56)
          {
            goto LABEL_117;
          }

          v69 = &v24[16 * a3];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_120;
          }

          v75 = &v24[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_124;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = a3 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v79 = &v24[16 * a3];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_70:
        if (v74)
        {
          goto LABEL_119;
        }

        v82 = &v24[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_122;
        }

        if (v85 < v73)
        {
          goto LABEL_4;
        }

LABEL_77:
        v7 = v52 - 1;
        if (v52 - 1 >= a3)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
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
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v130)
        {
          goto LABEL_135;
        }

        v90 = v24;
        a3 = *&v24[16 * v7 + 32];
        v91 = *&v24[16 * v52 + 40];
        sub_23C60A944(*v130 + *(v129 + 72) * a3, *v130 + *(v129 + 72) * *&v24[16 * v52 + 32], *v130 + *(v129 + 72) * v91, v132, v136, v9, v128);
        if (v11)
        {
        }

        if (v91 < a3)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v92 = v90;
        }

        else
        {
          v92 = sub_23C6473A0(v90);
        }

        if (v7 >= *(v92 + 2))
        {
          goto LABEL_114;
        }

        v93 = &v92[16 * v7];
        *(v93 + 4) = a3;
        *(v93 + 5) = v91;
        v137 = v92;
        v7 = &v137;
        result = sub_23C647314(v52);
        v24 = v137;
        a3 = *(v137 + 16);
        v10 = v136;
        if (a3 <= 1)
        {
          goto LABEL_4;
        }
      }

      v57 = &v24[16 * a3 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_115;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_116;
      }

      v64 = &v24[16 * a3];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_118;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_121;
      }

      if (v68 >= v60)
      {
        v86 = &v24[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_125;
        }

        if (v55 < v89)
        {
          v52 = a3 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v10 = v136;
LABEL_4:
    v22 = v130[1];
    if (v23 >= v22)
    {
      goto LABEL_99;
    }
  }

  v132 = v9;
  v118 = v11;
  v94 = *v130;
  v95 = *(v129 + 72);
  v96 = *v130 + v95 * (v41 - 1);
  v97 = -v95;
  v117 = v25;
  v98 = v25 - v41;
  v121 = v95;
  v122 = v49;
  v99 = v94;
  a3 = v94 + v41 * v95;
LABEL_89:
  v126 = v96;
  v127 = v41;
  v124 = a3;
  v125 = v98;
  v100 = v96;
  v101 = v135;
  v102 = v132;
  while (1)
  {
    v103 = v133;
    sub_23C5855B0(a3, v133, v136, v102);
    v104 = v134;
    sub_23C5855B0(v100, v134, v136, v102);
    v105 = *(v101 + 48);
    v106 = *(v103 + v105);
    v107 = *(v104 + v105);
    sub_23C585C34(v104, v136, v102);
    v108 = v103;
    v7 = v136;
    result = sub_23C585C34(v108, v136, v102);
    if (v106 >= v107)
    {
LABEL_88:
      v41 = v127 + 1;
      v23 = v122;
      v96 = v126 + v121;
      v98 = v125 - 1;
      a3 = v124 + v121;
      if (v127 + 1 != v122)
      {
        goto LABEL_89;
      }

      v11 = v118;
      v25 = v117;
      v9 = v132;
      if (v122 < v117)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (!v99)
    {
      break;
    }

    v109 = v131;
    v102 = v132;
    sub_23C60C610(a3, v131, v7, v132);
    v101 = v135;
    swift_arrayInitWithTakeFrontToBack();
    sub_23C60C610(v109, v100, v7, v102);
    v100 += v97;
    a3 += v97;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_23C60A740(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_23C60A944(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v58 = a3;
  v54 = a5;
  v55 = a6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = MEMORY[0x28223BE20](v57);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_60;
  }

  v18 = v58 - a2;
  if (v58 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v49 = a7;
  v19 = (a2 - a1) / v17;
  v61 = a1;
  v60 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v21;
    if (v21 >= 1)
    {
      v31 = -v17;
      v32 = a4 + v21;
      v51 = -v17;
      v52 = a4;
      do
      {
        v48 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v53 = v33;
        while (1)
        {
          v35 = v58;
          if (v33 <= a1)
          {
            v61 = v33;
            v59 = v48;
            goto LABEL_58;
          }

          v50 = v30;
          v58 += v31;
          v36 = v32 + v31;
          v37 = v32 + v31;
          v38 = v54;
          v39 = v55;
          sub_23C5855B0(v37, v15, v54, v55);
          v40 = v34;
          v41 = v34;
          v42 = v15;
          v43 = v56;
          sub_23C5855B0(v41, v56, v38, v39);
          v44 = *(v57 + 48);
          v45 = *(v42 + v44);
          v46 = *(v43 + v44);
          v47 = v43;
          v15 = v42;
          sub_23C585C34(v47, v38, v39);
          sub_23C585C34(v42, v38, v39);
          if (v45 < v46)
          {
            break;
          }

          v30 = v36;
          if (v35 < v32 || v58 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v40;
            v31 = v51;
          }

          else
          {
            v34 = v40;
            v31 = v51;
            if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v36;
          v33 = v53;
          if (v36 <= v52)
          {
            a2 = v53;
            goto LABEL_57;
          }
        }

        if (v35 < v53 || v58 >= v53)
        {
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v50;
          v31 = v51;
        }

        else
        {
          a2 = v40;
          v30 = v50;
          v31 = v51;
          if (v35 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v32 > v52);
    }

LABEL_57:
    v61 = a2;
    v59 = v30;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v20;
    v59 = a4 + v20;
    if (v20 >= 1 && a2 < v58)
    {
      do
      {
        v25 = v54;
        v24 = v55;
        sub_23C5855B0(a2, v15, v54, v55);
        v26 = v56;
        sub_23C5855B0(a4, v56, v25, v24);
        v27 = *(v57 + 48);
        v28 = *&v15[v27];
        v29 = *(v26 + v27);
        sub_23C585C34(v26, v25, v24);
        sub_23C585C34(v15, v25, v24);
        if (v28 >= v29)
        {
          if (a1 < a4 || a1 >= a4 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v60 = a4 + v17;
          a4 += v17;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v17)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v17;
        }

        a1 += v17;
        v61 = a1;
      }

      while (a4 < v22 && a2 < v58);
    }
  }

LABEL_58:
  v49(&v61, &v60, &v59);
  return 1;
}

void *sub_23C60AE28(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

unint64_t sub_23C60AEC8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_23C870B74();
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v37 = (v8 + 63) >> 6;
  v44 = v4 + 16;
  v45 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder;
  v46 = v4;
  v43 = (v4 + 8);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v41 = v6;
  v42 = v3;
  v40 = a1 + 56;
  v38 = a1;
  while (v10)
  {
LABEL_10:
    (*(v46 + 16))(v6, *(a1 + 48) + *(v46 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v3);
    v15 = *(v47 + v45);
    swift_beginAccess();
    v16 = *(v15 + 24);
    if (*(v16 + 16))
    {

      v17 = sub_23C5FFB04(v6);
      v18 = MEMORY[0x277D84F90];
      if (v19)
      {
        v18 = *(*(v16 + 56) + 8 * v17);
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    (*v43)(v6, v3);
    v20 = v18 >> 62;
    if (v18 >> 62)
    {
      v21 = sub_23C871C34();
    }

    else
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v13 >> 62;
    if (v13 >> 62)
    {
      result = sub_23C871C34();
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v21;
    v23 = __OFADD__(result, v21);
    v24 = result + v21;
    if (v23)
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v22)
      {
LABEL_26:
        sub_23C871C34();
      }

LABEL_27:
      result = sub_23C871D34();
      v48 = result;
      v25 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_28;
    }

    if (v22)
    {
      goto LABEL_26;
    }

    v25 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v24 > *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_27;
    }

    v48 = v13;
LABEL_28:
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v20)
    {
      result = sub_23C871C34();
      v28 = result;
    }

    else
    {
      v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 &= v10 - 1;
    if (v28)
    {
      if (((v27 >> 1) - v26) < v50)
      {
        goto LABEL_47;
      }

      v29 = v25 + 8 * v26 + 32;
      v39 = v25;
      if (v20)
      {
        if (v28 < 1)
        {
          goto LABEL_49;
        }

        sub_23C5A44B0();
        for (i = 0; i != v28; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
          v31 = sub_23C594EDC(v49, i, v18);
          v33 = *v32;

          (v31)(v49, 0);
          *(v29 + 8 * i) = v33;
        }
      }

      else
      {
        type metadata accessor for TimestampedOrderedEvent();
        swift_arrayInitWithCopy();
      }

      a1 = v38;
      v6 = v41;
      v3 = v42;
      v7 = v40;
      v13 = v48;
      if (v50 >= 1)
      {
        v34 = *(v39 + 16);
        v23 = __OFADD__(v34, v50);
        v35 = v34 + v50;
        if (v23)
        {
          goto LABEL_48;
        }

        *(v39 + 16) = v35;
      }
    }

    else
    {

      v6 = v41;
      v3 = v42;
      v7 = v40;
      v13 = v48;
      if (v50 > 0)
      {
        goto LABEL_46;
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

    if (v14 >= v37)
    {

      return v13;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

id sub_23C60B330(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_23C871654();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_inner] = 0;
  v14 = OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_logger;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_upstream] = a1;
  *&v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_windowLength] = a4;
  v15 = &v4[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_trackingTag];
  *v15 = a2;
  *(v15 + 1) = a3;
  (*(v11 + 16))(v13, &v4[v14], v10);
  v16 = a1;
  v17 = sub_23C871634();
  v18 = sub_23C871AC4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a4;
    _os_log_impl(&dword_23C56D000, v17, v18, "EventGraphPublisher: Constructed with window %f", v19, 0xCu);
    MEMORY[0x23EED8240](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v20 = type metadata accessor for EventGraphsPublisher(0);
  v22.receiver = v5;
  v22.super_class = v20;
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_23C60B588(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v51 = a2;
  v52 = a3;
  v50 = a1;
  v7 = type metadata accessor for CoreAnalyticsTracker(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23C870AE4();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x28223BE20](v11);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = &v50 - v14;
  v15 = sub_23C871654();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v8 + 56);
  v54 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker;
  v59 = v8 + 56;
  v60 = v7;
  v53(&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_tracker], 1, 1, v7);
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraph] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_maxEventsInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventsHandledInGraphBuilder] = 0;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphCount] = 0;
  v19 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5E0, &unk_23C87AE00);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84F90];
  v20[2] = sub_23C595CB8(MEMORY[0x277D84F90]);
  v20[3] = sub_23C595DA8(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9CF8, &unk_23C874DD0);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_23C595DBC(v21);
  v20[4] = v22;
  v20[5] = sub_23C595DD0(v21);
  v20[6] = 0;
  *&v5[v19] = v20;
  v23 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logicalClockBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB5F0, &qword_23C87AE10);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_23C595EC8(v21);
  *(v24 + 24) = sub_23C5960B0(v21);
  *&v5[v23] = v24;
  v25 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_eventTypeBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D00, &unk_23C874DE0);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_23C596298(v21);
  *(v26 + 24) = sub_23C59647C(v21);
  *&v5[v25] = v26;
  v27 = v15;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_dimExpiryTime] = 0x409C200000000000;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_latestRecievedTimestamp] = 0;
  v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_upstreamFinished] = 0;
  v28 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_logger;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v29 = v51;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_downstream] = v50;
  *&v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_graphSessionWindowLength] = a4;
  v30 = &v5[OBJC_IVAR____TtCC26AIMLInstrumentationStreams20EventGraphsPublisher34ConnectedComponentGroupsSubscriber_trackingTag];
  v31 = v29;
  v32 = v52;
  *v30 = v29;
  v30[1] = v32;
  (*(v16 + 16))(v18, &v5[v28], v27);

  swift_unknownObjectRetain();
  v33 = sub_23C871634();
  v34 = sub_23C871AC4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v27;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23C56D000, v33, v34, "Constructed EventGraphsSubscriber", v36, 2u);
    v37 = v36;
    v27 = v35;
    MEMORY[0x23EED8240](v37, -1, -1);
  }

  (*(v16 + 8))(v18, v27);
  v38 = v55;
  sub_23C870AD4();
  v39 = v60;
  *&v10[*(v60 + 28)] = 0;
  *v10 = 0;
  *(v10 + 1) = 0xD00000000000001BLL;
  *(v10 + 2) = 0x800000023C8A72D0;
  v41 = v57;
  v40 = v58;
  (*(v57 + 16))(&v10[*(v39 + 24)], v38, v58);
  v42 = &v10[*(v39 + 32)];
  *v42 = v31;
  *(v42 + 1) = v32;
  if (qword_27E1F8308 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, qword_27E1FB2F8);
  v43 = sub_23C871634();
  v44 = sub_23C871AC4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = 0;
    _os_log_impl(&dword_23C56D000, v43, v44, "tracker starting for %ld", v45, 0xCu);
    MEMORY[0x23EED8240](v45, -1, -1);
  }

  (*(v41 + 8))(v38, v40);
  v46 = v56;
  sub_23C60C678(v10, v56, type metadata accessor for CoreAnalyticsTracker);
  v53(v46, 0, 1, v60);
  v47 = v54;
  swift_beginAccess();
  sub_23C5A7B70(v46, &v5[v47]);
  swift_endAccess();
  v48 = type metadata accessor for EventGraphsPublisher.ConnectedComponentGroupsSubscriber(0);
  v61.receiver = v5;
  v61.super_class = v48;
  return objc_msgSendSuper2(&v61, sel_init);
}

char *_s26AIMLInstrumentationStreams20EventGraphsPublisherC9publisher4with9upstreams13bookmarkStateSo014BMBookmarkableE0_So12BPSPublisherCyyXlGXcSgSoAH_AKXc_SayAKGSo10BMBookmark_pSgtFZ_0(void *a1, unint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for EventGraphsPublisher(0);
  v5 = a1;
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = sub_23C871C34();
  if (!result)
  {
LABEL_11:

    return 0;
  }

LABEL_4:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23EED7610](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(a2 + 32);
  }

  v8 = v7;
  v9 = *&v11[OBJC_IVAR____TtC26AIMLInstrumentationStreams20EventGraphsPublisher_windowLength];
  v10 = objc_allocWithZone(v4);
  sub_23C60B330(v8, 0, 0, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD30, &unk_23C87BE20);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C60BDE4(uint64_t a1)
{
  result = sub_23C871654();
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

void sub_23C60BED8(uint64_t a1)
{
  sub_23C5A795C(319);
  if (v1 <= 0x3F)
  {
    sub_23C871654();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_23C60BFF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double))
{
  v21 = a2;
  v25 = a4;
  v22 = a1;
  v5 = type metadata accessor for EventTypeIdPair(0);
  v24 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v9 << 6);
    sub_23C60C5AC(*(a3 + 48) + *(v24 + 72) * v17, v8);
    v18 = v25(v8, *(*(a3 + 56) + 8 * v17));
    result = sub_23C60C6E0(v8, type metadata accessor for EventTypeIdPair);
    if (v18)
    {
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_23C647EB8(v22, v21, v23, a3);
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

    if (v9 >= v13)
    {
      return sub_23C647EB8(v22, v21, v23, a3);
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C60C1E4(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, double))
{
  v25 = a2;
  v33 = a4;
  v26 = a1;
  v32 = sub_23C870B74();
  result = MEMORY[0x28223BE20](v32);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v8 = 0;
  v34 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v29 = v6 + 16;
  v27 = 0;
  v28 = v6 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_11:
    v36 = v16 | (v8 << 6);
    v19 = v34;
    v21 = v30;
    v20 = v31;
    v22 = v36;
    v23 = v32;
    (*(v31 + 16))(v30, v34[6] + *(v31 + 72) * v36, v32);
    LOBYTE(v19) = v33(v21, *(v19[7] + 8 * v22));
    result = (*(v20 + 8))(v21, v23);
    v14 = v35;
    if (v19)
    {
      *(v26 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_23C647B20(v26, v25, v27, v34);
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_23C647B20(v26, v25, v27, v34);
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v35 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_23C60C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_23C60AE28(v16, v11, v9, a2, a3, a5);
  result = MEMORY[0x23EED8240](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

uint64_t sub_23C60C5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTypeIdPair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C60C610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_23C60C678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C60C6E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for EventTypeIdPair(uint64_t a1)
{
  result = qword_27E1FB5F8;
  if (!qword_27E1FB5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C60C7B8(uint64_t a1)
{
  result = sub_23C870B74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C60C87C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_23C870B44();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C60C8A4()
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](*v0);
  sub_23C870B74();
  sub_23C60CA8C(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C60C950(uint64_t a1)
{
  MEMORY[0x23EED79F0](*v1);
  sub_23C870B74();
  sub_23C60CA8C(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_23C8716F4();
}

uint64_t sub_23C60C9E4(uint64_t a1)
{
  sub_23C8720F4();
  MEMORY[0x23EED79F0](*v1);
  sub_23C870B74();
  sub_23C60CA8C(&qword_27E1FBC90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C60CA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *OrderedEvent.outerType.getter(uint64_t a1)
{
  result = sub_23C870CA4();
  if (result)
  {
    v2 = result;
    ObjectType = swift_getObjectType();

    return ObjectType;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedEvent.innerType.getter()
{
  v0 = sub_23C870CB4();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  ObjectType = swift_getObjectType();

  return ObjectType;
}

void *sub_23C60CB50(uint64_t a1)
{
  result = sub_23C870CA4();
  if (result)
  {
    v2 = result;
    ObjectType = swift_getObjectType();

    return ObjectType;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C60CB90()
{
  v0 = sub_23C870CB4();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  ObjectType = swift_getObjectType();

  return ObjectType;
}

BOOL static GenerativeFunctionsInstrumentationEvent.< infix(_:_:)(uint64_t a1)
{
  sub_23C8715E4();
  v2 = v1;
  sub_23C8715E4();
  return v2 < v3;
}

unint64_t sub_23C60CC44()
{
  result = qword_27E1FB610;
  if (!qword_27E1FB610)
  {
    sub_23C871604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB610);
  }

  return result;
}

BOOL sub_23C60CC9C(uint64_t a1)
{
  sub_23C8715E4();
  v2 = v1;
  sub_23C8715E4();
  return v2 < v3;
}

BOOL sub_23C60CCE0(uint64_t a1)
{
  sub_23C8715E4();
  v2 = v1;
  sub_23C8715E4();
  return v2 >= v3;
}

BOOL sub_23C60CD24(uint64_t a1)
{
  sub_23C8715E4();
  v2 = v1;
  sub_23C8715E4();
  return v2 >= v3;
}

BOOL sub_23C60CD68(uint64_t a1)
{
  sub_23C8715E4();
  v2 = v1;
  sub_23C8715E4();
  return v2 < v3;
}

uint64_t sub_23C60CDAC@<X0>(char a2@<W1>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  LODWORD(v57) = a8;
  v56 = a7;
  v47 = a6;
  v48 = a5;
  v54 = a9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB628, &unk_23C87AF70);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v46 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = swift_allocObject();
  v50 = v26;
  *(v26 + 16) = MEMORY[0x277D84F90];
  v49 = v26 + 16;
  if (a2)
  {
    v27 = sub_23C870AE4();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  else
  {
    sub_23C870A54();
    v28 = sub_23C870AE4();
    (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
  }

  if (a4)
  {
    v29 = 1;
  }

  else
  {
    sub_23C870A54();
    v29 = 0;
  }

  v30 = sub_23C870AE4();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v23, v29, 1, v30);
  sub_23C60D7E8(v25, v20);
  v51 = v23;
  sub_23C60D7E8(v23, v17);
  v32 = v48;
  if (v47)
  {
    v32 = 0;
  }

  v48 = v32;
  v33 = v56;
  if (v57)
  {
    v33 = 0;
  }

  v57 = v33;
  v34 = *(v31 + 48);
  v35 = 0;
  if (v34(v20, 1, v30) != 1)
  {
    v35 = sub_23C870A84();
    (*(v31 + 8))(v20, v30);
  }

  if (v34(v17, 1, v30) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_23C870A84();
    (*(v31 + 8))(v17, v30);
  }

  v37 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v38 = [v37 initWithStartDate:v35 endDate:v36 maxEvents:v48 lastN:v57 reversed:0];

  sub_23C8714D4();
  sub_23C60D858();

  v39 = v38;
  sub_23C871544();

  __swift_project_boxed_opaque_existential_0(v58, v58[3]);

  sub_23C871684();

  __swift_destroy_boxed_opaque_existential_0(v58);
  v40 = v51;
  swift_beginAccess();
  v41 = type metadata accessor for AnteroEvent(0);

  v42 = v52;
  sub_23C8718B4();

  sub_23C60D8B0();
  v43 = v55;
  v44 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v44, v41);

  (*(v53 + 8))(v42, v43);
  sub_23C585C34(v40, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v25, &unk_27E2054F0, &unk_23C874DF0);
}

uint64_t sub_23C60D46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A8, &qword_23C8734E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_23C871604();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_23C8715E4();
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for AnteroEvent(0));
  AnteroEvent.init(gfiEvent:timestamp:)(v6, v10);
  v12 = swift_beginAccess();
  MEMORY[0x23EED7170](v12);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23C8718D4();
  }

  sub_23C871904();
  return swift_endAccess();
}

uint64_t sub_23C60D604()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams9GMSStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GMSStream(uint64_t a1)
{
  result = qword_27E1FB618;
  if (!qword_27E1FB618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C60D6F4(uint64_t a1)
{
  result = sub_23C871654();
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

uint64_t sub_23C60D7E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23C60D858()
{
  result = qword_27E1FB630;
  if (!qword_27E1FB630)
  {
    sub_23C8714D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB630);
  }

  return result;
}

unint64_t sub_23C60D8B0()
{
  result = qword_27E1FB638;
  if (!qword_27E1FB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FB628, &unk_23C87AF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB638);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23C60D938(uint64_t a1, int a2)
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

uint64_t sub_23C60D980(uint64_t result, int a2, int a3)
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

uint64_t static InstrumentationStreamsFactory.construct(filter:startTime:endTime:maxEvents:lastN:storageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 56) = v10;
  *(v8 + 64) = v12;
  *(v8 + 107) = v11;
  *(v8 + 106) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 105) = a6;
  *(v8 + 104) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23C60DA18, 0, 0);
}

uint64_t sub_23C60DA18()
{
  type metadata accessor for UnifiedSourceStream();
  v1 = swift_allocObject();
  *(v0 + 72) = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  v2 = sub_23C65E4B0();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_23C60DC64;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 108) = 1;
    *(v0 + 80) = 0;

    return MEMORY[0x2822009F8](sub_23C60DB20, 0, 0);
  }
}

uint64_t sub_23C60DB20()
{
  v1 = *(v0 + 108);
  v2 = *(v0 + 72);
  v17 = *(v0 + 107);
  v15 = *(v0 + 106);
  v3 = *(v0 + 64);
  v16 = *(v0 + 56);
  v4 = *(v0 + 40);
  v14 = *(v0 + 48);
  v5 = *(v0 + 105);
  v6 = *(v0 + 104);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 24) = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C60FFC8(v3, v9 + *(v10 + 56));
  *v9 = v2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6 & 1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5 & 1;
  *(v9 + 48) = v14;
  *(v9 + 56) = v15 & 1;
  *(v9 + 64) = v16;
  *(v9 + 72) = v17 & 1;
  v11 = (v9 + *(v10 + 60));
  *v11 = 0;
  v11[1] = 0;
  v18 = *(v0 + 8);
  v12 = v7;

  return v18();
}

uint64_t sub_23C60DC64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_23C60DD90;
  }

  else
  {
    *(v4 + 108) = 0;
    *(v4 + 80) = a1;
    v5 = sub_23C60DB20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C60DD90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 107) = v12;
  *(v8 + 106) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v11;
  *(v8 + 105) = a6;
  *(v8 + 104) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60DEB4, 0, 0);
}

uint64_t sub_23C60DEB4()
{
  v1 = *(v0 + 64);
  v2 = sub_23C8709E4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_23C60E144;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 108) = 1;
    *(v0 + 80) = 0;

    return MEMORY[0x2822009F8](sub_23C60E000, 0, 0);
  }
}

uint64_t sub_23C60E000()
{
  v1 = *(v0 + 108);
  v2 = *(v0 + 72);
  v18 = *(v0 + 107);
  v16 = *(v0 + 106);
  v3 = *(v0 + 64);
  v17 = *(v0 + 56);
  v4 = *(v0 + 40);
  v15 = *(v0 + 48);
  v5 = *(v0 + 105);
  v6 = *(v0 + 104);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 24) = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C6100A0(v3, v9 + *(v10 + 56));
  *v9 = v2;
  *(v9 + 8) = v7;
  *(v9 + 16) = v8;
  *(v9 + 24) = v6 & 1;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5 & 1;
  *(v9 + 48) = v15;
  *(v9 + 56) = v16 & 1;
  *(v9 + 64) = v17;
  *(v9 + 72) = v18 & 1;
  v11 = (v9 + *(v10 + 60));
  *v11 = 0;
  v11[1] = 0;
  v12 = v7;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23C60E144(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_23C60E270;
  }

  else
  {
    *(v4 + 108) = 0;
    *(v4 + 80) = a1;
    v5 = sub_23C60E000;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C60E270()
{
  v1 = *(v0 + 64);

  sub_23C610038(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60E380, 0, 0);
}

uint64_t sub_23C60E380()
{
  v1 = *(v0 + 32);
  v2 = sub_23C8709E4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_23C60E5BC;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 72) = 1;
    *(v0 + 48) = 0;

    return MEMORY[0x2822009F8](sub_23C60E4CC, 0, 0);
  }
}

uint64_t sub_23C60E4CC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 24) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C6100A0(v3, v5 + *(v6 + 56));
  *v5 = v2;
  *(v5 + 8) = v4;
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;
  v7 = (v5 + *(v6 + 60));
  *v7 = 0;
  v7[1] = 0;
  v8 = v4;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23C60E5BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_23C60E6E8;
  }

  else
  {
    *(v4 + 72) = 0;
    *(v4 + 48) = a1;
    v5 = sub_23C60E4CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C60E6E8()
{
  v1 = *(v0 + 32);

  sub_23C610038(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:startTimeRelativeToNow:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v3 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60E7FC, 0, 0);
}

uint64_t sub_23C60E7FC()
{
  v1 = *(v0 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v2 timeIntervalSinceReferenceDate];
  *(v0 + 48) = v3;

  v4 = sub_23C8709E4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  type metadata accessor for UnifiedSourceStream();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 256;
  v6 = sub_23C65E4B0();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = sub_23C60EA80;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 88) = 1;
    *(v0 + 64) = 0;

    return MEMORY[0x2822009F8](sub_23C60E98C, 0, 0);
  }
}

uint64_t sub_23C60E98C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 24) = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C6100A0(v4, v6 + *(v7 + 56));
  *v6 = v2;
  *(v6 + 8) = v5;
  *(v6 + 16) = v3;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  v8 = (v6 + *(v7 + 60));
  *v8 = 0;
  v8[1] = 0;
  v9 = v5;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23C60EA80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_23C60EBAC;
  }

  else
  {
    *(v4 + 88) = 0;
    *(v4 + 64) = a1;
    v5 = sub_23C60E98C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C60EBAC()
{
  v1 = *(v0 + 40);

  sub_23C610038(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static InstrumentationStreamsFactory.construct(filter:startTimeRelativeToNow:storageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23C60EC4C, 0, 0);
}

uint64_t sub_23C60EC4C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow_];
  [v1 timeIntervalSinceReferenceDate];
  *(v0 + 48) = v2;

  type metadata accessor for UnifiedSourceStream();
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  v4 = sub_23C65E4B0();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_23C60EE88;

    return sub_23C65E988();
  }

  else
  {
    *(v0 + 88) = 1;
    *(v0 + 64) = 0;

    return MEMORY[0x2822009F8](sub_23C60ED8C, 0, 0);
  }
}

uint64_t sub_23C60ED8C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 64);
  *(v2 + 24) = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB648, &qword_23C87B018);
  sub_23C60FFC8(v4, v6 + *(v7 + 56));
  *v6 = v2;
  *(v6 + 8) = v5;
  *(v6 + 16) = v3;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  v8 = (v6 + *(v7 + 60));
  *v8 = 0;
  v8[1] = 0;
  v11 = *(v0 + 8);
  v9 = v5;

  return v11();
}

uint64_t sub_23C60EE88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_23C60EFB4;
  }

  else
  {
    *(v4 + 88) = 0;
    *(v4 + 64) = a1;
    v5 = sub_23C60ED8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23C60EFB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static InstrumentationStreamsFactory.constructSelfProcessedProvider(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 75) = v12;
  *(v8 + 74) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v11;
  *(v8 + 73) = a6;
  *(v8 + 72) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60F0D8, 0, 0);
}

uint64_t sub_23C60F0D8()
{
  v19 = *(v0 + 75);
  v17 = *(v0 + 74);
  v1 = *(v0 + 64);
  v18 = *(v0 + 56);
  v2 = *(v0 + 40);
  v16 = *(v0 + 48);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  type metadata accessor for SelfProcessedEventStream();
  v8 = swift_allocObject();
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB658, &qword_23C87B050);
  v7[3] = v10;
  v7[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_23C60FFC8(v1, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v5;
  boxed_opaque_existential_1[2] = v6;
  *(boxed_opaque_existential_1 + 24) = v4 & 1;
  boxed_opaque_existential_1[4] = v2;
  *(boxed_opaque_existential_1 + 40) = v3 & 1;
  boxed_opaque_existential_1[6] = v16;
  *(boxed_opaque_existential_1 + 56) = v17 & 1;
  boxed_opaque_existential_1[8] = v18;
  *(boxed_opaque_existential_1 + 72) = v19 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = 0;
  v12[1] = 0;
  v13 = v5;
  sub_23C610038(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t static InstrumentationStreamsFactory.constructRawProvider(filter:startTime:endTime:maxEvents:lastN:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 99) = v12;
  *(v8 + 98) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v11;
  *(v8 + 97) = a6;
  *(v8 + 96) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v8 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60F340, 0, 0);
}

uint64_t sub_23C60F340()
{
  type metadata accessor for RawStream(0);
  v1 = swift_allocObject();
  *(v0 + 72) = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_23C60F450;

  return sub_23C629644();
}

uint64_t sub_23C60F450()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_23C60F6F4;
  }

  else
  {
    v2 = sub_23C60F564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C60F564()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v19 = *(v0 + 99);
  v17 = *(v0 + 98);
  v18 = *(v0 + 56);
  v16 = *(v0 + 48);
  v3 = *(v0 + 97);
  v4 = *(v0 + 96);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB660, &qword_23C87B060);
  v7[3] = v10;
  v7[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_23C60FFC8(v1, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v2;
  boxed_opaque_existential_1[1] = v8;
  boxed_opaque_existential_1[2] = v6;
  *(boxed_opaque_existential_1 + 24) = v4 & 1;
  boxed_opaque_existential_1[4] = v5;
  *(boxed_opaque_existential_1 + 40) = v3 & 1;
  boxed_opaque_existential_1[6] = v16;
  *(boxed_opaque_existential_1 + 56) = v17 & 1;
  boxed_opaque_existential_1[8] = v18;
  *(boxed_opaque_existential_1 + 72) = v19 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = 0;
  v12[1] = 0;
  v13 = v8;
  sub_23C610038(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23C60F6F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static InstrumentationStreamsFactory.constructSelfProcessedProvider(filter:startTime:endTime:maxEvents:lastN:trackingTag:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v13;
  *(v8 + 72) = v14;
  *(v8 + 91) = v12;
  *(v8 + 90) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v11;
  *(v8 + 89) = a6;
  *(v8 + 88) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60F828, 0, 0);
}

uint64_t sub_23C60F828()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v21 = *(v0 + 64);
  v20 = *(v0 + 91);
  v18 = *(v0 + 90);
  v19 = *(v0 + 56);
  v17 = *(v0 + 48);
  v16 = *(v0 + 89);
  v3 = *(v0 + 88);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  type metadata accessor for SelfProcessedEventStream();
  v8 = swift_allocObject();
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB658, &qword_23C87B050);
  v6[3] = v10;
  v6[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_23C60FFC8(v2, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v7;
  boxed_opaque_existential_1[2] = v5;
  *(boxed_opaque_existential_1 + 24) = v3 & 1;
  boxed_opaque_existential_1[4] = v4;
  *(boxed_opaque_existential_1 + 40) = v16 & 1;
  boxed_opaque_existential_1[6] = v17;
  *(boxed_opaque_existential_1 + 56) = v18 & 1;
  boxed_opaque_existential_1[8] = v19;
  *(boxed_opaque_existential_1 + 72) = v20 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = v21;
  v12[1] = v1;

  v13 = v7;
  sub_23C610038(v2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t static InstrumentationStreamsFactory.constructRawProvider(filter:startTime:endTime:maxEvents:lastN:trackingTag:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 64) = v13;
  *(v8 + 72) = v14;
  *(v8 + 115) = v12;
  *(v8 + 114) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v11;
  *(v8 + 113) = a6;
  *(v8 + 112) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C60FAB4, 0, 0);
}

uint64_t sub_23C60FAB4()
{
  type metadata accessor for RawStream(0);
  v1 = swift_allocObject();
  *(v0 + 88) = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_23C588EAC();
  sub_23C871B54();
  sub_23C871664();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_23C60FBC4;

  return sub_23C629644();
}

uint64_t sub_23C60FBC4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_23C60FE80;
  }

  else
  {
    v2 = sub_23C60FCD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C60FCD8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v21 = *(v0 + 64);
  v20 = *(v0 + 115);
  v18 = *(v0 + 114);
  v19 = *(v0 + 56);
  v16 = *(v0 + 48);
  v17 = *(v0 + 88);
  v3 = *(v0 + 113);
  v4 = *(v0 + 112);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = sub_23C8709E4();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB660, &qword_23C87B060);
  v7[3] = v10;
  v7[4] = &off_284F30100;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_23C60FFC8(v1, boxed_opaque_existential_1 + *(v10 + 56));
  *boxed_opaque_existential_1 = v17;
  boxed_opaque_existential_1[1] = v8;
  boxed_opaque_existential_1[2] = v6;
  *(boxed_opaque_existential_1 + 24) = v4 & 1;
  boxed_opaque_existential_1[4] = v5;
  *(boxed_opaque_existential_1 + 40) = v3 & 1;
  boxed_opaque_existential_1[6] = v16;
  *(boxed_opaque_existential_1 + 56) = v18 & 1;
  boxed_opaque_existential_1[8] = v19;
  *(boxed_opaque_existential_1 + 72) = v20 & 1;
  v12 = (boxed_opaque_existential_1 + *(v10 + 60));
  *v12 = v21;
  v12[1] = v2;

  v13 = v8;
  sub_23C610038(v1);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23C60FE80()
{

  v1 = *(v0 + 8);

  return v1();
}

id InstrumentationStreamsFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InstrumentationStreamsFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id InstrumentationStreamsFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InstrumentationStreamsFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23C60FFC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C610038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C6100A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23C6101B8()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[1];

    return v2(0);
  }

  else if (sub_23C8719B4())
  {
    *(v1 + 24) = 1;
    sub_23C610574();
    sub_23C871974();
    sub_23C5886A4();
    swift_allocError();
    sub_23C871694();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6B8, &qword_23C87B138);
    *v5 = v0;
    v5[1] = sub_23C610370;
    v7 = v0[3];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_23C611B58, v7, v6);
  }
}

uint64_t sub_23C610370()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_23C610484;
  }

  else
  {
    v2 = sub_23C586154;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23C61049C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_23C871C34())
  {
    if (sub_23C871C34())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x23EED7610](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_23C871C34();
LABEL_13:
      if (v3)
      {
        sub_23C5A6A8C(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_23C610574()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v21 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v13 = *(v1 + v12);
  if (v13 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *(v1 + v12) = 1;
  sub_23C588D5C(v13);
  [v14 cancel];
  v15 = *((*v11 & *v1) + 0x78);
  swift_beginAccess();
  sub_23C611A10(v1 + v15, v10);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6B0, &qword_23C87B130);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v8, 1, 1, v16);
  swift_beginAccess();
  sub_23C611A80(v8, v1 + v15);
  swift_endAccess();
  sub_23C611A10(v10, v5);
  if ((*(v17 + 48))(v5, 1, v16) == 1)
  {
    sub_23C611AF0(v5);
  }

  else
  {
    sub_23C871974();
    sub_23C5886A4();
    v18 = swift_allocError();
    sub_23C871694();
    v21[0] = v18;
    sub_23C871944();
    (*(v17 + 8))(v5, v16);
  }

  sub_23C611AF0(v10);
  v19 = *((*v11 & *v1) + 0x80);
  swift_beginAccess();
  *(v1 + v19) = MEMORY[0x277D84F90];
}

void sub_23C61085C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  sub_23C611A10(v1 + v10, v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6B0, &qword_23C87B130);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v8, 1, v11);
  sub_23C611AF0(v8);
  if (v13 != 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(v1 + *((*v9 & *v1) + 0x70));
  if (!v14)
  {
    (*(v12 + 16))(v6, a1, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    swift_beginAccess();
    sub_23C611A80(v6, v1 + v10);
    swift_endAccess();
    return;
  }

  if (v14 == 1)
  {
    v15 = *((*v9 & *v1) + 0x80);
    swift_beginAccess();
    v16 = *(v1 + v15);
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        swift_beginAccess();
        sub_23C61049C();
        v18 = v17;
        swift_endAccess();
        v26 = v18;
LABEL_14:
        sub_23C871954();
        return;
      }

LABEL_13:
      v26 = 0;
      goto LABEL_14;
    }

LABEL_12:
    if (sub_23C871C34())
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v19 = *((*v9 & *v1) + 0x80);
  swift_beginAccess();
  v20 = *(v1 + v19);
  if (v20 >> 62)
  {
    if (sub_23C871C34())
    {
      goto LABEL_10;
    }

LABEL_16:
    (*(v12 + 16))(v6, a1, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    swift_beginAccess();
    v24 = v14;
    sub_23C611A80(v6, v1 + v10);
    swift_endAccess();
    [v24 requestDemand_];
    goto LABEL_17;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_10:
  swift_beginAccess();
  v21 = v14;
  sub_23C61049C();
  v23 = v22;
  swift_endAccess();
  v26 = v23;
  sub_23C871954();
LABEL_17:
  sub_23C588D5C(v14);
}

uint64_t InstrumentationStreamsProviderProtocol.events()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB670, &qword_23C87B0B8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  (*(a2 + 128))(a1, a2);
  v13 = sub_23C870D74();
  sub_23C611604(&qword_27E1FB678, &qword_27E1FB668, &qword_23C87B0B0, MEMORY[0x277CF1760]);
  sub_23C870BC4();
  (*(v6 + 8))(v8, v5);
  sub_23C611604(&qword_27E1FB680, &qword_27E1FB670, &qword_23C87B0B8, MEMORY[0x277CF1738]);
  v14 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v14, v13);
  return (*(v10 + 8))(v12, v9);
}

uint64_t InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 72) = a2;
  *(v5 + 64) = a4;
  *(v5 + 56) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C610FB0, 0, 0);
}

uint64_t sub_23C610FB0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(*(v0 + 80) + 136))(*(v0 + 72), *(v0 + 64));
  (*(v4 + 16))(v2, v1, v3);
  sub_23C611604(&qword_27E1FB690, &qword_27E1FB688, &qword_23C87B190, MEMORY[0x277CF1760]);
  v5 = sub_23C870BA4();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB698, &qword_23C87B0D0);
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  v8 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A0 &qword_23C87B0D8))];
  *(inited + 16) = v8;
  *(inited + 24) = 0;
  v9 = v8;
  [v5 subscribe_];

  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_23C611198;

  return sub_23C610198();
}

uint64_t sub_23C611198(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_23C6114D4;
  }

  else
  {
    v4 = sub_23C6112AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23C6112AC()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
LABEL_4:

    v7 = *(v0 + 8);
    v8 = *(v0 + 144);

    return v7(v8);
  }

  v2 = sub_23C601004();
  sub_23C592900(v2);
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = *(v0 + 56);
    v6 = sub_23C871C74();

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (*(v3 + 16))
    {
      sub_23C870E34();
      v10 = sub_23C871B24();
      v11 = -1 << *(v4 + 32);
      v12 = v10 & ~v11;
      if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = *(*(v4 + 48) + 8 * v12);
          v15 = sub_23C871B34();

          if (v15)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_4;
      }
    }

LABEL_12:
  }

  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_23C611198;

  return sub_23C610198();
}

uint64_t sub_23C6114D4()
{
  *(v0 + 48) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1F96A8, qword_23C873C40);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23C611568, 0, 0);
}

uint64_t sub_23C611568()
{
  v1 = *(v0 + 128);
  swift_setDeallocating();
  v2 = *(v1 + 16);
  sub_23C610574();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23C611604(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C611704;

  return InstrumentationStreamsProviderProtocol.searchForEventGraph(componentIdentifier:windowLength:)(a1, a2, a3, 900.0);
}

uint64_t sub_23C611704(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_23C611A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C611A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C611AF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6A8, &qword_23C87B128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23C611B84(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EventFilter();
    if (v2 <= 0x3F)
    {
      sub_23C612258(319, &qword_2814FB0F0, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        sub_23C612258(319, &qword_2814FABC8, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          sub_23C612200(319);
          if (v5 <= 0x3F)
          {
            sub_23C612258(319, &qword_2814FAF78, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23C611C9C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_23C8709E4();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v7 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  if (v11)
  {
    v17 = 7;
  }

  else
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v16 + 9;
  if (v14 < a2)
  {
    v19 = ((v17 + *(*(v8 - 8) + 64) + ((v18 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v14 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_28:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v14 + (v26 | v25) + 1;
      }
    }
  }

  if (v7 == v14)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  v29 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 0x80000000) != 0)
  {
    if (v11 >= 2)
    {
      v31 = (*(v10 + 48))((v18 + ((v29 + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *v29;
  if (*v29 >= 0xFFFFFFFF)
  {
    LODWORD(v30) = -1;
  }

  return (v30 + 1);
}

void sub_23C611F18(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v26 = *(v7 - 8);
  v8 = *(v26 + 84);
  v9 = 0;
  v10 = *(sub_23C8709E4() - 8);
  v11 = *(v10 + 84);
  v12 = *(v26 + 64);
  if (v11)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v8 > v13)
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v13;
  }

  if (!v11)
  {
    ++v15;
  }

  v17 = ((v15 + ((v14 + 9 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 < a3)
  {
    if (((v15 + ((v14 + 9 + ((((v12 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  if (a2 > v16)
  {
    if (v17)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v16;
    }

    if (v17)
    {
      v21 = ~v16 + a2;
      bzero(a1, v17);
      *a1 = v21;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        *(a1 + v17) = v20;
      }

      else
      {
        *(a1 + v17) = v20;
      }
    }

    else if (v9)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v17) = 0;
  }

  else if (v9)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 == v16)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v8, v7);
  }

  else
  {
    v23 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      if (v11 >= 2)
      {
        v25 = *(v10 + 56);

        v25((v14 + 9 + ((v23 + 63) & 0xFFFFFFFFFFFFFFF8)) & ~v14, (a2 + 1));
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

void sub_23C612200(uint64_t a1)
{
  if (!qword_2814FAF70)
  {
    sub_23C8709E4();
    v1 = sub_23C871B74();
    if (!v2)
    {
      atomic_store(v1, &qword_2814FAF70);
    }
  }
}

void sub_23C612258(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23C871B74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_23C6122A4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_23C8720F4();
  MEMORY[0x23EED79F0](a1);
  v4 = sub_23C872124();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_23C612370(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  (*(*(a2 + 24) + 16))(*(v2 + *(a2 + 40)), *(v2 + *(a2 + 40) + 8), *(v2 + *(a2 + 44)), *(v2 + *(a2 + 44) + 8), *(v2 + *(a2 + 48)), *(v2 + *(a2 + 48) + 8), *(v2 + *(a2 + 52)), *(v2 + *(a2 + 52) + 8), v2 + *(a2 + 56), *(a2 + 16), *(a2 + 24));
  *(swift_allocObject() + 16) = a1;
  sub_23C611604(&qword_27E1FB678, &qword_27E1FB668, &qword_23C87B0B0, MEMORY[0x277CF1760]);
  v9 = a1;
  sub_23C870BD4();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23C612548(uint64_t a1, uint64_t a2)
{
  result = sub_23C870CA4();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  ObjectType = swift_getObjectType();

  v6 = sub_23C870CB4();
  if (v6)
  {
    v7 = v6;
    v8 = swift_getObjectType();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + OBJC_IVAR___ISEventFilter_filter);
  if (!v9)
  {
    return 1;
  }

  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_23C5FF958(ObjectType);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  if (!v12)
  {
    return 1;
  }

  if (v12 == 1 || !v8)
  {
    return 0;
  }

  return sub_23C6122A4(v8, v12);
}

uint64_t sub_23C61261C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6D8, &qword_23C87B198);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_23C612370(*(v1 + *(a1 + 36)), a1);
  sub_23C611604(&qword_27E1FB6E0, &qword_27E1FB6D8, &qword_23C87B198, MEMORY[0x277CF1740]);
  v7 = sub_23C870BA4();
  v8 = type metadata accessor for TimestampedOrderedEvent();
  MEMORY[0x23EED64F0](v7, v8);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23C612764(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6D8, &qword_23C87B198);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(*(v4 + *(a2 + 36)), a1);
  sub_23C612370(v12, a2);

  v13 = sub_23C870B84();
  v14 = (v4 + *(a2 + 60));
  v15 = *v14;
  v16 = v14[1];
  objc_allocWithZone(type metadata accessor for EventGraphsPublisher(0));

  v17 = v13;
  sub_23C60B330(v17, v15, v16, a3);

  type metadata accessor for EventGraph();
  sub_23C870BF4();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23C6128F4(uint64_t a1, double a2)
{
  if (qword_2814FB040 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v3 = qword_2814FB470;

  return sub_23C612764(v3, a1, a2);
}

uint64_t sub_23C612980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C8, &qword_23C87B188);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  if (qword_2814FACB0 != -1)
  {
    swift_once();
  }

  sub_23C612764(qword_2814FB468, a1, 30.0);
  v10 = type metadata accessor for SiriTurn();
  sub_23C611604(&qword_27E1FB690, &qword_27E1FB688, &qword_23C87B190, MEMORY[0x277CF1760]);
  sub_23C870BB4();
  sub_23C611604(&qword_27E1FB6D0, &qword_27E1FB6C8, &qword_23C87B188, MEMORY[0x277CF1750]);
  v11 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v11, v10);
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23C612C30(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C0, &qword_23C87B180);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  sub_23C612980(a1);
  v7 = sub_23C870BE4();
  v8 = (v1 + *(a1 + 60));
  v9 = *v8;
  v10 = v8[1];
  objc_allocWithZone(type metadata accessor for SiriConversationPublisher());

  sub_23C64B1A0(v7, v9, v10);

  type metadata accessor for SiriConversation();
  sub_23C870BF4();
  return (*(v4 + 8))(v6, v3);
}

void sub_23C612D8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t sub_23C612DD8(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 40);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C612E04(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 44);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C612E30(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 48);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C612E80(uint64_t result, char a2, uint64_t a3)
{
  v4 = v3 + *(a3 + 52);
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

Swift::String_optional __swiftcall IntelligenceFlowTelemetry.contextId()()
{
  v0 = sub_23C871534();
  v74 = *(v0 - 8);
  v75 = v0;
  MEMORY[0x28223BE20](v0);
  v73 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6E8, &qword_23C87B1A0);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F0, &unk_23C87B1A8);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v62 - v5;
  v6 = sub_23C871474();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23C871584();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v72 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v62 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v68 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v19 = sub_23C871514();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  sub_23C871404();
  v29 = sub_23C8713F4();
  v30 = *(v29 - 8);
  v31 = 0;
  v32 = 0;
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    goto LABEL_2;
  }

  sub_23C5855B0(v28, v26, &qword_27E1FB6F8, &qword_23C87B1B8);
  v35 = (*(v30 + 88))(v26, v29);
  if (v35 != *MEMORY[0x277D1F718])
  {
    if (v35 == *MEMORY[0x277D1F6F8])
    {
      (*(v30 + 96))(v26, v29);
      v39 = v73;
      v38 = v74;
      v40 = v75;
      (*(v74 + 32))(v73, v26, v75);
      v41 = v72;
      sub_23C871524();
      v42 = sub_23C870B74();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v41, 1, v42) == 1)
      {
        (*(v38 + 8))(v39, v40);
        sub_23C585C34(v41, &qword_27E1F92A0, &qword_23C8734E0);
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v31 = sub_23C870B04();
        v32 = v54;
        (*(v38 + 8))(v39, v40);
        (*(v43 + 8))(v41, v42);
      }

      goto LABEL_2;
    }

    v45 = v28;
    if (v35 == *MEMORY[0x277D1F708])
    {
      (*(v30 + 96))(v26, v29);
      v47 = v69;
      v46 = v70;
      v48 = v71;
      (*(v70 + 32))(v69, v26, v71);
      v49 = v68;
      sub_23C871574();
    }

    else
    {
      if (v35 != *MEMORY[0x277D1F700])
      {
        (*(v30 + 8))(v26, v29);
        goto LABEL_22;
      }

      (*(v30 + 96))(v26, v29);
      v47 = v65;
      v46 = v66;
      v48 = v67;
      (*(v66 + 32))(v65, v26, v67);
      v49 = v64;
      sub_23C871464();
      v55 = sub_23C871454();
      v56 = *(v55 - 8);
      if ((*(v56 + 48))(v49, 1, v55) == 1)
      {
        (*(v46 + 8))(v47, v48);
        v52 = &qword_27E1FB6E8;
        v53 = &qword_23C87B1A0;
LABEL_19:
        sub_23C585C34(v49, v52, v53);
LABEL_22:
        v31 = 0;
        v32 = 0;
        goto LABEL_23;
      }

      v58 = v63;
      sub_23C871444();
      (*(v56 + 8))(v49, v55);
      v59 = sub_23C871624();
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(v58, 1, v59) == 1)
      {
        (*(v46 + 8))(v47, v48);
        sub_23C585C34(v58, &qword_27E1FB6F0, &unk_23C87B1A8);
        goto LABEL_22;
      }

      v49 = v62;
      sub_23C871614();
      (*(v60 + 8))(v58, v59);
    }

    v50 = sub_23C870B74();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) != 1)
    {
      v31 = sub_23C870B04();
      v32 = v57;
      (*(v46 + 8))(v47, v48);
      (*(v51 + 8))(v49, v50);
LABEL_23:
      v28 = v45;
      goto LABEL_2;
    }

    (*(v46 + 8))(v47, v48);
    v52 = &qword_27E1F92A0;
    v53 = &qword_23C8734E0;
    goto LABEL_19;
  }

  v75 = v28;
  (*(v30 + 96))(v26, v29);
  (*(v20 + 32))(v22, v26, v19);
  sub_23C8714F4();
  v36 = sub_23C870B74();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v18, 1, v36) == 1)
  {
    (*(v20 + 8))(v22, v19);
    sub_23C585C34(v18, &qword_27E1F92A0, &qword_23C8734E0);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = sub_23C870B04();
    v32 = v44;
    (*(v20 + 8))(v22, v19);
    (*(v37 + 8))(v18, v36);
  }

  v28 = v75;
LABEL_2:
  sub_23C585C34(v28, &qword_27E1FB6F8, &qword_23C87B1B8);
  v33 = v31;
  v34 = v32;
  result.value._object = v34;
  result.value._countAndFlagsBits = v33;
  return result;
}

Swift::String __swiftcall IntelligenceFlowTelemetry.description()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB700, &qword_23C87B1C0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v54 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v57 = &v54 - v3;
  v4 = sub_23C871514();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB708, &unk_23C87B1C8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  sub_23C871374();
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_23C5855B0(v19, v17, &unk_27E2054F0, &unk_23C874DF0);
  v20 = sub_23C870AE4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    sub_23C585C34(v17, &unk_27E2054F0, &unk_23C874DF0);
    v22 = 0xEC000000706D6174;
    v23 = 0x73656D6974206F4ELL;
  }

  else
  {
    v23 = sub_23C870A74();
    v22 = v24;
    (*(v21 + 8))(v17, v20);
  }

  MEMORY[0x23EED7100](v23, v22);

  v60 = 32;
  v61 = 0xE100000000000000;
  v26 = IntelligenceFlowTelemetry.contextId()();
  countAndFlagsBits = v26.value._countAndFlagsBits;
  if (v26.value._object)
  {
    object = v26.value._object;
  }

  else
  {
    countAndFlagsBits = 0x65746E6F63206F4ELL;
    object = 0xEC00000064497478;
  }

  MEMORY[0x23EED7100](countAndFlagsBits, object);

  MEMORY[0x23EED7100](v60, v61);

  v60 = 32;
  v61 = 0xE100000000000000;
  sub_23C8713A4();
  v28 = sub_23C871364();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    sub_23C585C34(v13, &qword_27E1FB708, &unk_23C87B1C8);
    v30 = 0xE900000000000074;
    v31 = 0x6567726174206F4ELL;
  }

  else
  {
    v32 = sub_23C871354();
    v30 = v33;
    (*(v29 + 8))(v13, v28);
    v31 = v32;
  }

  MEMORY[0x23EED7100](v31, v30);

  MEMORY[0x23EED7100](v60, v61);

  v34 = v59;
  sub_23C871404();
  v35 = sub_23C8713F4();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v34, 1, v35);
  v38 = v58;
  if (v37 != 1)
  {
    sub_23C5855B0(v34, v9, &qword_27E1FB6F8, &qword_23C87B1B8);
    if ((*(v36 + 88))(v9, v35) == *MEMORY[0x277D1F718])
    {
      (*(v36 + 96))(v9, v35);
      v40 = v55;
      v39 = v56;
      (*(v55 + 32))(v38, v9, v56);
      v41 = v57;
      sub_23C871504();
      v42 = sub_23C8714E4();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v41, 1, v42) == 1)
      {
LABEL_13:
        MEMORY[0x23EED7100](0x6E776F6E6B6E7520, 0xEE00657461747320);
        (*(v40 + 8))(v38, v39);
        sub_23C585C34(v19, &unk_27E2054F0, &unk_23C874DF0);
LABEL_23:
        v44 = &qword_27E1FB700;
        v45 = &qword_23C87B1C0;
        v46 = v41;
        goto LABEL_24;
      }

      v47 = v54;
      sub_23C5855B0(v41, v54, &qword_27E1FB700, &qword_23C87B1C0);
      v48 = (*(v43 + 88))(v47, v42);
      if (v48 == *MEMORY[0x277D20490])
      {
        v49 = 0x6465747261747320;
        v50 = 0xE800000000000000;
      }

      else if (v48 == *MEMORY[0x277D20480])
      {
        v49 = 0x6465646E6520;
        v50 = 0xE600000000000000;
      }

      else
      {
        if (v48 != *MEMORY[0x277D20488])
        {
          (*(v43 + 8))(v47, v42);
          goto LABEL_13;
        }

        v49 = 0x64656C69616620;
        v50 = 0xE700000000000000;
      }

      MEMORY[0x23EED7100](v49, v50);
      (*(v40 + 8))(v38, v39);
      sub_23C585C34(v19, &unk_27E2054F0, &unk_23C874DF0);
      (*(v43 + 8))(v47, v42);
      goto LABEL_23;
    }

    (*(v36 + 8))(v9, v35);
  }

  MEMORY[0x23EED7100](0xD000000000000012, 0x800000023C8A9190);
  v44 = &unk_27E2054F0;
  v45 = &unk_23C874DF0;
  v46 = v19;
LABEL_24:
  sub_23C585C34(v46, v44, v45);
  sub_23C585C34(v34, &qword_27E1FB6F8, &qword_23C87B1B8);
  v51 = v62;
  v52 = v63;
  result._object = v52;
  result._countAndFlagsBits = v51;
  return result;
}

Swift::String_optional __swiftcall IntelligenceFlowTelemetry.objectiveString()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB700, &qword_23C87B1C0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - v3;
  v5 = sub_23C871514();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  sub_23C871404();
  v15 = sub_23C8713F4();
  v16 = *(v15 - 8);
  v17 = 0;
  v18 = 0;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_23C5855B0(v14, v12, &qword_27E1FB6F8, &qword_23C87B1B8);
    if ((*(v16 + 88))(v12, v15) == *MEMORY[0x277D1F718])
    {
      (*(v16 + 96))(v12, v15);
      v19 = v6;
      (*(v6 + 32))(v8, v12, v5);
      sub_23C871504();
      v20 = sub_23C8714E4();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v4, 1, v20) == 1)
      {
        (*(v6 + 8))(v8, v5);
      }

      else
      {
        v24 = v30;
        sub_23C5855B0(v4, v30, &qword_27E1FB700, &qword_23C87B1C0);
        v25 = (*(v21 + 88))(v24, v20);
        if (v25 == *MEMORY[0x277D20490])
        {
          (*(v19 + 8))(v8, v5);
          (*(v21 + 8))(v24, v20);
          sub_23C585C34(v4, &qword_27E1FB700, &qword_23C87B1C0);
          v18 = 0xE700000000000000;
          v17 = 0x64657472617473;
          goto LABEL_8;
        }

        if (v25 == *MEMORY[0x277D20480])
        {
          (*(v19 + 8))(v8, v5);
          (*(v21 + 8))(v24, v20);
          sub_23C585C34(v4, &qword_27E1FB700, &qword_23C87B1C0);
          v18 = 0xE500000000000000;
          v17 = 0x6465646E65;
          goto LABEL_8;
        }

        v26 = *MEMORY[0x277D20488];
        v27 = v25;
        (*(v19 + 8))(v8, v5);
        (*(v21 + 8))(v24, v20);
        if (v27 == v26)
        {
          sub_23C585C34(v4, &qword_27E1FB700, &qword_23C87B1C0);
          v18 = 0xE600000000000000;
          v17 = 0x64656C696166;
          goto LABEL_8;
        }
      }

      sub_23C585C34(v4, &qword_27E1FB700, &qword_23C87B1C0);
    }

    else
    {
      (*(v16 + 8))(v12, v15);
    }

    v17 = 0;
    v18 = 0;
  }

LABEL_8:
  sub_23C585C34(v14, &qword_27E1FB6F8, &qword_23C87B1B8);
  v22 = v17;
  v23 = v18;
  result.value._object = v23;
  result.value._countAndFlagsBits = v22;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary0A13FlowTelemetryV26AIMLInstrumentationStreamsE1loiySbAC_ACtFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  v6 = sub_23C870AE4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_23C871374();
  v13 = *(v7 + 48);
  if (v13(v5, 1, v6) == 1)
  {
    sub_23C870AB4();
    if (v13(v5, 1, v6) != 1)
    {
      sub_23C585C34(v5, &unk_27E2054F0, &unk_23C874DF0);
    }
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
  }

  sub_23C871374();
  if (v13(v3, 1, v6) == 1)
  {
    sub_23C870AB4();
    if (v13(v3, 1, v6) != 1)
    {
      sub_23C585C34(v3, &unk_27E2054F0, &unk_23C874DF0);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v3, v6);
  }

  v14 = sub_23C870A94();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  return v14 & 1;
}

unint64_t sub_23C614980()
{
  result = qword_27E1FB710;
  if (!qword_27E1FB710)
  {
    sub_23C871414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB710);
  }

  return result;
}

uint64_t sub_23C6149D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v52 = MEMORY[0x277D84F90];
  sub_23C592C04(0, v1, 0);
  v2 = v52;
  v4 = a1 + 64;
  result = sub_23C871BB4();
  if (result < 0 || (v6 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 36);
    v31 = v1;
    v8 = 1;
    v53 = a1 + 64;
    v32 = v7;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v10 = (*(a1 + 56) + 96 * v6);
      v11 = v10[1];
      v37[0] = *v10;
      v37[1] = v11;
      v12 = v10[5];
      v14 = v10[2];
      v13 = v10[3];
      v39 = v10[4];
      v40 = v12;
      *v38 = v14;
      *&v38[16] = v13;
      v15 = v10[1];
      v36 = *(v10 + 4);
      v34 = v10[4];
      v35 = v15;
      v41 = v37[0];
      *v43 = v36;
      v42 = v15;
      *&v43[8] = *&v38[8];
      *&v43[24] = *&v38[24];
      v44 = v34;
      v45 = v12;

      sub_23C58BBD4(v37, v33);
      sub_23C58BBD4(&v41, v33);

      v48 = *v43;
      v49 = *&v43[16];
      v50 = v44;
      v51 = v45;
      v46 = v41;
      v47 = v42;
      v52 = v2;
      v17 = *(v2 + 16);
      v16 = *(v2 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_23C592C04((v16 > 1), v17 + 1, 1);
        v2 = v52;
      }

      *(v2 + 16) = v17 + 1;
      v18 = (v2 + 96 * v17);
      v19 = v47;
      v18[2] = v46;
      v18[3] = v19;
      v20 = v48;
      v21 = v49;
      v22 = v51;
      v18[6] = v50;
      v18[7] = v22;
      v18[4] = v20;
      v18[5] = v21;
      v23 = 1 << *(a1 + 32);
      if (v6 >= v23)
      {
        goto LABEL_27;
      }

      v4 = v53;
      v24 = *(v53 + 8 * v9);
      if ((v24 & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      LODWORD(v7) = v32;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v25 = v24 & (-2 << (v6 & 0x3F));
      if (v25)
      {
        v6 = __clz(__rbit64(v25)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v9 << 6;
        v27 = v9 + 1;
        v28 = (a1 + 72 + 8 * v9);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_23C606430(v6, v32, 0);
            v6 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_23C606430(v6, v32, 0);
        v6 = v23;
      }

LABEL_19:
      if (v8 == v31)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        ++v8;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
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
  return result;
}

uint64_t sub_23C614D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB718, &qword_23C87B228);
  MEMORY[0x28223BE20](v2 - 8);
  v134 = &v122 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB720, qword_23C87B230);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = &v122 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB700, &qword_23C87B1C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v122 - v13;
  v15 = sub_23C871514();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v143 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6F8, &qword_23C87B1B8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v147 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v122 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB708, &unk_23C87B1C8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v122 - v24;
  v150 = sub_23C871414();
  v26 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v28 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
    v146 = MEMORY[0x277D84F98];
LABEL_98:
    v120 = sub_23C6149D8(v146);

    return v120;
  }

  v142 = v15;
  v144 = v14;
  v127 = v7;
  v32 = *(v26 + 16);
  v31 = v26 + 16;
  v155 = v32;
  v33 = v29 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
  v146 = MEMORY[0x277D84F98];
  v139 = (v16 + 32);
  v145 = *MEMORY[0x277D1F718];
  v138 = (v16 + 8);
  v137 = *MEMORY[0x277D20490];
  v126 = *MEMORY[0x277D20480];
  v124 = *MEMORY[0x277D20488];
  v125 = *MEMORY[0x277D20610];
  v123 = *MEMORY[0x277D205F8];
  v153 = *(v31 + 56);
  v154 = (v31 - 8);
  v130 = v12;
  v34 = v150;
  v141 = v22;
  v152 = v31;
  v32(v28, v33, v150);
  while (1)
  {
    v35 = IntelligenceFlowTelemetry.contextId()();
    if (!v35.value._object)
    {
      (*v154)(v28, v34);
      goto LABEL_4;
    }

    countAndFlagsBits = v35.value._countAndFlagsBits;
    sub_23C8713A4();
    v36 = sub_23C871364();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v25, 1, v36) == 1)
    {
      v34 = v150;
      (*v154)(v28, v150);

      sub_23C585C34(v25, &qword_27E1FB708, &unk_23C87B1C8);
      goto LABEL_4;
    }

    v149 = sub_23C871354();
    v39 = v38;
    (*(v37 + 8))(v25, v36);
    sub_23C871404();
    v40 = sub_23C8713F4();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v22, 1, v40) == 1)
    {
      goto LABEL_15;
    }

    v148 = v39;
    v42 = v147;
    sub_23C5855B0(v22, v147, &qword_27E1FB6F8, &qword_23C87B1B8);
    v43 = (*(v41 + 88))(v42, v40);
    if (v43 != v145)
    {
      (*(v41 + 8))(v42, v40);
      goto LABEL_15;
    }

    (*(v41 + 96))(v42, v40);
    v44 = v143;
    v45 = v142;
    (*v139)(v143, v42, v142);
    v46 = v144;
    sub_23C871504();
    v47 = sub_23C8714E4();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      (*v138)(v44, v45);
      v22 = v141;
LABEL_13:
      sub_23C585C34(v144, &qword_27E1FB700, &qword_23C87B1C0);
LABEL_15:
      sub_23C585C34(v22, &qword_27E1FB6F8, &qword_23C87B1B8);
      v34 = v150;
      (*v154)(v28, v150);

      goto LABEL_4;
    }

    v49 = v130;
    sub_23C5855B0(v46, v130, &qword_27E1FB700, &qword_23C87B1C0);
    v50 = (*(v48 + 88))(v49, v47);
    if (v50 == v137)
    {
      LODWORD(v140) = v50;
      v135 = 0xE700000000000000;
      v136 = 0x64657472617473;
      v51 = v143;
      v22 = v141;
    }

    else
    {
      v51 = v143;
      v22 = v141;
      if (v50 == v126)
      {
        LODWORD(v140) = v50;
        v135 = 0xE500000000000000;
        v52 = 0x6465646E65;
      }

      else
      {
        if (v50 != v124)
        {
          (*v138)(v143, v142);
          (*(v48 + 8))(v49, v47);
          goto LABEL_13;
        }

        LODWORD(v140) = v50;
        v135 = 0xE600000000000000;
        v52 = 0x64656C696166;
      }

      v136 = v52;
    }

    (*v138)(v51, v142);
    (*(v48 + 8))(v49, v47);
    sub_23C585C34(v144, &qword_27E1FB700, &qword_23C87B1C0);
    sub_23C585C34(v22, &qword_27E1FB6F8, &qword_23C87B1B8);
    v53 = v134;
    sub_23C871384();
    v54 = sub_23C871564();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      sub_23C585C34(v53, &qword_27E1FB718, &qword_23C87B228);
      v56 = sub_23C871594();
      v57 = 1;
      v58 = v133;
      (*(*(v56 - 8) + 56))(v133, 1, 1, v56);
      sub_23C585C34(v58, &qword_27E1FB720, qword_23C87B230);
      v59 = 0;
    }

    else
    {
      v60 = v133;
      sub_23C871554();
      (*(v55 + 8))(v53, v54);
      v61 = sub_23C871594();
      v62 = *(v61 - 8);
      (*(v62 + 56))(v60, 0, 1, v61);
      v63 = v127;
      sub_23C615E94(v60, v127);
      v64 = (*(v62 + 88))(v63, v61);
      if (v64 == v125)
      {
        (*(v62 + 96))(v63, v61);
      }

      else
      {
        if (v64 != v123)
        {
          (*(v62 + 8))(v127, v61);
          v59 = 0;
          v57 = 1;
          goto LABEL_32;
        }

        v63 = v127;
        (*(v62 + 96))(v127, v61);
      }

      v59 = *(*v63 + 16);

      v57 = 0;
    }

LABEL_32:
    v65 = v135;
    if (v140 == v137 || (sub_23C872014() & 1) != 0)
    {
      v132 = 0;
      v129 = 0;
      v140 = 0;
      v66 = 1;
    }

    else
    {
      v132 = v59;
      v66 = v57;
      v57 = 1;
      v129 = v136;
      v140 = v65;
      v59 = 0;
      v136 = 0;
      v65 = 0;
    }

    v67 = v146;
    if (!v146[2] || (v68 = sub_23C5FF898(countAndFlagsBits, v35.value._object), (v69 & 1) == 0))
    {
LABEL_67:
      v131 = 0;
      LODWORD(v135) = 1;
      goto LABEL_68;
    }

    v70 = (*(v67 + 56) + 96 * v68);
    v71 = v70[6];
    v72 = v70[7];
    v73 = v70[8];
    v74 = v70[9];
    v75 = v70[10];
    v76 = v70[11];
    v77 = v59;
    if (v57 && (v77 = v73, !v72))
    {
      v131 = 0;
      LODWORD(v135) = 1;
      v57 = 1;
    }

    else
    {
      v78 = v132;
      if (v66 && (v78 = v76, !v75))
      {
        v131 = 0;
        LODWORD(v135) = 1;
        LOBYTE(v66) = 1;
      }

      else
      {
        v79 = v78 >= v77;
        v80 = v78 - v77;
        v131 = v80;
        if (v80 == 0 || !v79)
        {
          goto LABEL_67;
        }

        if (v80 < 0)
        {
          goto LABEL_101;
        }

        if (!v65)
        {
          if (!v72)
          {
            v71 = 0;
          }

          v136 = v71;
          v128 = v75;
          v135 = v76;
          v81 = v73;
          v122 = v74;

          v74 = v122;
          v73 = v81;
          v75 = v128;
          v76 = v135;
          v65 = v72;
        }

        if (!v140)
        {
          if (v75)
          {
            v82 = v74;
          }

          else
          {
            v82 = 0;
          }

          v129 = v82;
          v135 = v76;
          v128 = v73;

          v73 = v128;
          v76 = v135;
          v140 = v75;
        }

        if (v72)
        {
          v83 = v73;
        }

        else
        {
          v83 = 0;
        }

        if (v72)
        {
          v84 = 0;
        }

        else
        {
          v84 = v57;
        }

        if (v57)
        {
          v59 = v83;
        }

        v57 = v84;
        if (v66)
        {
          LODWORD(v135) = 0;
          LOBYTE(v66) = v75 == 0;
          v85 = v75 ? v76 : 0;
          v132 = v85;
        }

        else
        {
          LODWORD(v135) = 0;
        }
      }
    }

LABEL_68:
    v86 = v129;
    v87 = v136;
    if (v65)
    {
      v88 = v59;
    }

    else
    {
      v87 = 0;
      v88 = 0;
    }

    if (v65)
    {
      v89 = v140;
      if (v57)
      {

        v136 = 0;
        v65 = 0;
        v129 = 0;
      }

      else
      {
        v129 = v88;
        v136 = v87;
      }
    }

    else
    {
      v129 = v88;
      v136 = v87;
      v89 = v140;
    }

    if (v89)
    {
      v90 = v86;
    }

    else
    {
      v90 = 0;
    }

    v91 = v132;
    if (!v89)
    {
      v91 = 0;
    }

    v92 = v146;
    if (((v89 != 0) & v66) == 1)
    {

      v128 = 0;
      v140 = 0;
      v132 = 0;
    }

    else
    {
      v128 = v90;
      v132 = v91;
    }

    v158 = v135;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = v92;
    v95 = sub_23C5FF898(countAndFlagsBits, v35.value._object);
    v96 = *(v92 + 16);
    v97 = (v94 & 1) == 0;
    v98 = v96 + v97;
    if (__OFADD__(v96, v97))
    {
      break;
    }

    v99 = v94;
    if (*(v92 + 24) >= v98)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C643C48();
      }
    }

    else
    {
      sub_23C63E0FC(v98, isUniquelyReferenced_nonNull_native);
      v100 = sub_23C5FF898(countAndFlagsBits, v35.value._object);
      if ((v99 & 1) != (v101 & 1))
      {
        goto LABEL_102;
      }

      v95 = v100;
    }

    v22 = v141;
    if (v99)
    {

      v146 = v157;
      v102 = *(v157 + 56) + 96 * v95;
      v103 = *(v102 + 16);
      v156[0] = *v102;
      v156[1] = v103;
      v104 = *(v102 + 80);
      v106 = *(v102 + 32);
      v105 = *(v102 + 48);
      v156[4] = *(v102 + 64);
      v156[5] = v104;
      v156[2] = v106;
      v156[3] = v105;
      v107 = v148;
      *v102 = v149;
      *(v102 + 8) = v107;
      *(v102 + 16) = v131;
      *(v102 + 24) = v135;
      *(v102 + 25) = *v159;
      *(v102 + 28) = *&v159[3];
      *(v102 + 32) = countAndFlagsBits;
      *(v102 + 40) = v35.value._object;
      *(v102 + 48) = v136;
      *(v102 + 56) = v65;
      v108 = v128;
      *(v102 + 64) = v129;
      *(v102 + 72) = v108;
      v109 = v132;
      *(v102 + 80) = v140;
      *(v102 + 88) = v109;
      sub_23C58BC0C(v156);
      v34 = v150;
      (*v154)(v28, v150);
    }

    else
    {
      v110 = v157;
      *(v157 + 8 * (v95 >> 6) + 64) |= 1 << v95;
      v111 = (v110[6] + 16 * v95);
      v112 = countAndFlagsBits;
      *v111 = countAndFlagsBits;
      v111[1] = v35.value._object;
      v113 = v110[7] + 96 * v95;
      v114 = v148;
      *v113 = v149;
      *(v113 + 8) = v114;
      *(v113 + 16) = v131;
      *(v113 + 24) = v135;
      *(v113 + 28) = *&v159[3];
      *(v113 + 25) = *v159;
      *(v113 + 32) = v112;
      *(v113 + 40) = v35.value._object;
      *(v113 + 48) = v136;
      *(v113 + 56) = v65;
      v115 = v128;
      *(v113 + 64) = v129;
      *(v113 + 72) = v115;
      v116 = v132;
      *(v113 + 80) = v140;
      *(v113 + 88) = v116;
      v34 = v150;
      (*v154)(v28, v150);
      v117 = v110[2];
      v118 = __OFADD__(v117, 1);
      v119 = v117 + 1;
      if (v118)
      {
        goto LABEL_100;
      }

      v146 = v110;
      v110[2] = v119;
    }

LABEL_4:
    v33 += v153;
    if (!--v30)
    {
      goto LABEL_98;
    }

    v155(v28, v33, v34);
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  result = sub_23C872064();
  __break(1u);
  return result;
}