void sub_21DF5FD68(uint64_t a1)
{
  if (!qword_280F69068)
  {
    sub_21E13EF04();
    v1 = sub_21E142724();
    if (!v2)
    {
      atomic_store(v1, &qword_280F69068);
    }
  }
}

uint64_t getEnumTagSinglePayload for NewEntityModel.Prominence(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewEntityModel.Prominence(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_20VisualIntelligenceUI10CardLayoutO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21DF5FF28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 8))
  {
    return (*a1 + 2147483639);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DF5FF80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

void *sub_21DF5FFD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_21DF6002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v13 = sub_21E1427B4();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_21DF5D17C(result, 1);
    return sub_21DF60304(v7, v6, 1, v4, type metadata accessor for NewEntityModel);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF60120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21E1427B4();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_21E1427B4();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF60224(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7)
  {
    v10 = sub_21E1427B4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (!v11)
  {
    sub_21DF5D238(result, 1);
    return sub_21DF60120(v5, v3, 0, type metadata accessor for PillAnalytics);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF60304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21E1427B4();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_21E1427B4();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_21DF60428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9)
  {
    v13 = sub_21E1427B4();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_21DF5D238(result, 1);
    return sub_21DF60304(v7, v6, 1, v4, type metadata accessor for NewActionModel);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF6051C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50, &qword_21E14FA80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DF605A8()
{
  result = qword_27CEA77D0;
  if (!qword_27CEA77D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA77C8, &qword_21E147828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA77D0);
  }

  return result;
}

uint64_t sub_21DF6060C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = *(v0 + 24);
}

uint64_t sub_21DF60650()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_21DF606B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21DF60700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21DF60840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF60978();
  sub_21E13D3C4();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21DF608F4()
{
  swift_getKeyPath();
  sub_21DF60978();
  sub_21E13D3C4();

  swift_beginAccess();
  return *(v0 + 16);
}

unint64_t sub_21DF60978()
{
  result = qword_27CEA77F0;
  if (!qword_27CEA77F0)
  {
    type metadata accessor for SharedSuppressPostShutterAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA77F0);
  }

  return result;
}

uint64_t type metadata accessor for SharedSuppressPostShutterAction(uint64_t a1)
{
  result = qword_280F69648;
  if (!qword_280F69648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DF60A1C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF60978();
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DF60B10(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t (*sub_21DF60B7C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI31SharedSuppressPostShutterAction___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21DF60978();
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21DF607EC(v4);
  return sub_21DF60C84;
}

void sub_21DF60C84(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v1);
}

uint64_t SharedSuppressPostShutterAction.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_21E13D3F4();
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF60978();
    sub_21E13D3B4();
  }

  else
  {
    *(v0 + 16) = 0;
  }

  return v0;
}

uint64_t SharedSuppressPostShutterAction.init()(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v3 = (v1 + 16);
  sub_21E13D3F4();
  swift_beginAccess();
  if (*v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF60978();
    sub_21E13D3B4();
  }

  else
  {
    *v3 = 0;
  }

  return v2;
}

uint64_t sub_21DF60F30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t SharedSuppressPostShutterAction.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI31SharedSuppressPostShutterAction___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedSuppressPostShutterAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI31SharedSuppressPostShutterAction___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21DF61088(uint64_t a1)
{
  result = sub_21E13D404();
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

unint64_t sub_21DF611E8()
{
  result = qword_27CEA77F8;
  if (!qword_27CEA77F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7800, &qword_21E147978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA77F8);
  }

  return result;
}

double sub_21DF6124C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  sub_21E140B94();
  sub_21E140B04();
  v18 = v22;
  v19 = v23;
  v20 = v24;
  v16 = 0;
  v17 = 0;
  v25[0] = v22;
  v25[1] = v23;
  v26 = v24;
  sub_21DF616A8(v25, v15);
  sub_21E140B74();
  sub_21DF61704(&v22);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetMidY(v28);
  sub_21E140B84();
  sub_21E140B84();
  sub_21DF61704(v21);
  v12 = v20;
  result = *&v18;
  v14 = v19;
  *a1 = v18;
  *(a1 + 16) = v14;
  *(a1 + 32) = v12;
  return result;
}

double sub_21DF613D8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_21DF6124C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_21DF61440(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

uint64_t sub_21DF614C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DF61758();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_21DF6152C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DF61758();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_21DF61590(uint64_t a1)
{
  v2 = sub_21DF61758();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_21DF615E0()
{
  result = qword_27CEA7808;
  if (!qword_27CEA7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7808);
  }

  return result;
}

unint64_t sub_21DF61638()
{
  result = qword_27CEA7810;
  if (!qword_27CEA7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7810);
  }

  return result;
}

__n128 sub_21DF6168C(__n128 *a1)
{
  if (!a1[3].n128_u8[0])
  {
    result = *a1;
    **(v1 + 16) = *a1;
  }

  return result;
}

unint64_t sub_21DF61758()
{
  result = qword_27CEA7818;
  if (!qword_27CEA7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7818);
  }

  return result;
}

uint64_t type metadata accessor for WaypointButtonStyle(uint64_t a1)
{
  result = qword_27CEA7820;
  if (!qword_27CEA7820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DF61820(uint64_t a1)
{
  sub_21DF37A78(319);
  if (v1 <= 0x3F)
  {
    sub_21E13D834();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21DF618D8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830, &qword_21E147AF0);
  MEMORY[0x28223BE20](v2);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7838, &qword_21E147AF8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7840, &qword_21E147B00);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v37 = v34 - v11;
  sub_21E1405F4();
  v36 = type metadata accessor for WaypointButtonStyle(0);
  sub_21E141CC4();
  sub_21E13F664();
  v12 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7848, &qword_21E147B08) + 36)];
  v13 = v46;
  *v12 = v45;
  *(v12 + 1) = v13;
  *(v12 + 2) = v47;
  sub_21E141484();
  v14 = sub_21E141514();

  v15 = &v4[*(v2 + 36)];
  *v15 = v14;
  v15[1] = 0x4008000000000000;
  v15[2] = 0;
  v15[3] = 0;
  sub_21E141C84();
  v35 = v1;
  v40 = v1;
  v39 = v1;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7850, &qword_21E147B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7858, &qword_21E147B18);
  v16 = sub_21DF62554();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7870, &qword_21E147B20);
  v18 = sub_21DF23E5C(&qword_27CEA7878, &qword_27CEA7870, &qword_21E147B20, MEMORY[0x277CDF5A8]);
  v41 = v2;
  v42 = v17;
  v43 = v16;
  v44 = v18;
  swift_getOpaqueTypeConformance2();
  sub_21DF6266C();
  sub_21E141354();
  sub_21DF62724(v4);
  v19 = &v8[*(v6 + 44)];
  *v19 = 0xC024000000000000;
  v19[8] = 0;
  v20 = *(v35 + *(v36 + 24));
  if (v20)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.8;
  }

  sub_21E141DE4();
  v23 = v22;
  v25 = v24;
  v26 = v8;
  v27 = v37;
  v28 = sub_21DF3DE9C(v26, v37, &qword_27CEA7838, &qword_21E147AF8);
  v29 = v27 + *(v10 + 44);
  *v29 = v21;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  MEMORY[0x223D52580](v28, 0.3, 0.5, 0.0);
  v30 = sub_21E141D04();

  v31 = v38;
  sub_21DF3DE9C(v27, v38, &qword_27CEA7840, &qword_21E147B00);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7898, &qword_21E147B30);
  v33 = v31 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = v20;
  return result;
}

uint64_t sub_21DF61D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v69 = a1;
  v4 = sub_21E141B64();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13F444();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_21E141BB4();
  v58 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_21E141C64();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21E13D834();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21E1419A4();
  v59 = *(v22 - 8);
  v60 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v57 = &v52 - v26;
  MEMORY[0x28223BE20](v27);
  v65 = &v52 - v28;
  v29 = type metadata accessor for WaypointButtonStyle(0);
  (*(v19 + 16))(v21, a2 + *(v29 + 20), v18);
  v30 = (*(v19 + 88))(v21, v18);
  LODWORD(a2) = *MEMORY[0x277D78DA8];
  (*(v19 + 8))(v21, v18);
  if (v30 == a2)
  {
    sub_21E141B84();
    v32 = v66;
    v31 = v67;
    v33 = v63;
    (*(v66 + 104))(v63, *MEMORY[0x277CDF150], v67);
    sub_21E141B74();
    (*(v32 + 8))(v33, v31);
    v34 = *(v58 + 8);
    v35 = v11;
    v36 = v64;
    v34(v35, v64);
    sub_21E141BE4();
    v34(v14, v36);
    sub_21E141984();
    (*(v61 + 8))(v17, v62);
    sub_21E141484();
    sub_21E141514();

    v37 = v57;
    sub_21E141994();

    v38 = v59;
    v39 = v60;
    (*(v59 + 8))(v24, v60);
    v40 = v38;
  }

  else
  {
    v41 = v53;
    sub_21E141B94();
    v42 = v54;
    sub_21E021DE8(v54);
    sub_21E141BA4();
    (*(v55 + 8))(v42, v56);
    v43 = *(v58 + 8);
    v44 = v64;
    v43(v41, v64);
    v46 = v66;
    v45 = v67;
    v47 = v63;
    (*(v66 + 104))(v63, *MEMORY[0x277CDF150], v67);
    sub_21E141B74();
    (*(v46 + 8))(v47, v45);
    v43(v11, v44);
    sub_21E141BE4();
    v43(v14, v44);
    v37 = v57;
    sub_21E141984();
    (*(v61 + 8))(v17, v62);
    v40 = v59;
    v39 = v60;
  }

  v48 = v65;
  (*(v40 + 32))(v65, v37, v39);
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v70 = xmmword_21E147A70;
  v71 = 0x3FF921FB54442D18;
  v72 = v49;
  v73 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830, &qword_21E147AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7870, &qword_21E147B20);
  sub_21DF62554();
  sub_21DF23E5C(&qword_27CEA7878, &qword_27CEA7870, &qword_21E147B20, MEMORY[0x277CDF5A8]);
  sub_21E140E54();
  return (*(v40 + 8))(v48, v39);
}

uint64_t sub_21DF62478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7858, &qword_21E147B18) + 36);
  sub_21E141C04();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7890, &qword_21E147B28);
  v10 = v4 + *(v9 + 52);
  *v10 = xmmword_21E147A70;
  *(v10 + 16) = 0x3FF921FB54442D18;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v4 + *(v9 + 56)) = 256;

  return sub_21DF6278C(a1, a2);
}

unint64_t sub_21DF62554()
{
  result = qword_27CEA7860;
  if (!qword_27CEA7860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7830, &qword_21E147AF0);
    sub_21DF625E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7860);
  }

  return result;
}

unint64_t sub_21DF625E0()
{
  result = qword_27CEA7868;
  if (!qword_27CEA7868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7848, &qword_21E147B08);
    sub_21DF4DD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7868);
  }

  return result;
}

unint64_t sub_21DF6266C()
{
  result = qword_27CEA7880;
  if (!qword_27CEA7880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7858, &qword_21E147B18);
    sub_21DF62554();
    sub_21DF23E5C(&qword_27CEA7888, &qword_27CEA7890, &qword_21E147B28, MEMORY[0x277CE0710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7880);
  }

  return result;
}

uint64_t sub_21DF62724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830, &qword_21E147AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF6278C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830, &qword_21E147AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DF627FC()
{
  result = qword_27CEA78A0;
  if (!qword_27CEA78A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7898, &qword_21E147B30);
    sub_21DF628B4();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648, &qword_21E146E50, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78A0);
  }

  return result;
}

unint64_t sub_21DF628B4()
{
  result = qword_27CEA78A8;
  if (!qword_27CEA78A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7840, &qword_21E147B00);
    sub_21DF62940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78A8);
  }

  return result;
}

unint64_t sub_21DF62940()
{
  result = qword_27CEA78B0;
  if (!qword_27CEA78B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7838, &qword_21E147AF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7830, &qword_21E147AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7850, &qword_21E147B10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7858, &qword_21E147B18);
    sub_21DF62554();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7870, &qword_21E147B20);
    sub_21DF23E5C(&qword_27CEA7878, &qword_27CEA7870, &qword_21E147B20, MEMORY[0x277CDF5A8]);
    swift_getOpaqueTypeConformance2();
    sub_21DF6266C();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA78B8, &qword_27CEA78C0, &qword_21E147B38, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78B0);
  }

  return result;
}

uint64_t sub_21DF62B14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v34 = v6;
  v35 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA78F0, &qword_21E147C40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21E1460A0;
  v36.origin.x = v1;
  v36.origin.y = v2;
  v36.size.width = v3;
  v36.size.height = v4;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v1;
  v37.origin.y = v2;
  v37.size.width = v3;
  v37.size.height = v4;
  v26 = v6 + CGRectGetMinY(v37);
  v38.origin.x = v1;
  v38.origin.y = v2;
  v38.size.width = v3;
  v38.size.height = v4;
  v8 = v5 + CGRectGetMinX(v38);
  v32 = v5;
  v39.origin.x = v1;
  v39.origin.y = v2;
  v39.size.width = v3;
  v39.size.height = v4;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v1;
  v40.origin.y = v2;
  v40.size.width = v3;
  v40.size.height = v4;
  v10 = CGRectGetMinX(v40);
  v41.origin.x = v1;
  v41.origin.y = v2;
  v41.size.width = v3;
  v41.size.height = v4;
  v11 = CGRectGetMinY(v41);
  *(v7 + 32) = MinX;
  *(v7 + 40) = v26;
  *(v7 + 48) = v8;
  *(v7 + 56) = MinY;
  *(v7 + 64) = v10;
  *(v7 + 72) = v11;
  *(v7 + 80) = v35;
  v42.origin.x = v1;
  v42.origin.y = v2;
  v42.size.width = v3;
  v42.size.height = v4;
  v30 = CGRectGetMaxX(v42) - v5;
  v43.origin.x = v1;
  v43.origin.y = v2;
  v43.size.width = v3;
  v43.size.height = v4;
  v27 = CGRectGetMinY(v43);
  v44.origin.x = v1;
  v44.origin.y = v2;
  v44.size.width = v3;
  v44.size.height = v4;
  MaxX = CGRectGetMaxX(v44);
  v45.origin.x = v1;
  v45.origin.y = v2;
  v45.size.width = v3;
  v45.size.height = v4;
  v13 = v34 + CGRectGetMinY(v45);
  v46.origin.x = v1;
  v46.origin.y = v2;
  v46.size.width = v3;
  v46.size.height = v4;
  v14 = CGRectGetMaxX(v46);
  v47.origin.x = v1;
  v47.origin.y = v2;
  v47.size.width = v3;
  v47.size.height = v4;
  v15 = CGRectGetMinY(v47);
  *(v7 + 88) = v30;
  *(v7 + 96) = v27;
  *(v7 + 104) = MaxX;
  *(v7 + 112) = v13;
  *(v7 + 120) = v14;
  *(v7 + 128) = v15;
  *(v7 + 136) = v35;
  v48.origin.x = v1;
  v48.origin.y = v2;
  v48.size.width = v3;
  v48.size.height = v4;
  v31 = CGRectGetMaxX(v48);
  v49.origin.x = v1;
  v49.origin.y = v2;
  v49.size.width = v3;
  v49.size.height = v4;
  v28 = CGRectGetMaxY(v49) - v34;
  v50.origin.x = v1;
  v50.origin.y = v2;
  v50.size.width = v3;
  v50.size.height = v4;
  v25 = CGRectGetMaxX(v50) - v32;
  v51.origin.x = v1;
  v51.origin.y = v2;
  v51.size.width = v3;
  v51.size.height = v4;
  MaxY = CGRectGetMaxY(v51);
  v52.origin.x = v1;
  v52.origin.y = v2;
  v52.size.width = v3;
  v52.size.height = v4;
  v17 = CGRectGetMaxX(v52);
  v53.origin.x = v1;
  v53.origin.y = v2;
  v53.size.width = v3;
  v53.size.height = v4;
  v18 = CGRectGetMaxY(v53);
  *(v7 + 144) = v31;
  *(v7 + 152) = v28;
  *(v7 + 160) = v25;
  *(v7 + 168) = MaxY;
  *(v7 + 176) = v17;
  *(v7 + 184) = v18;
  *(v7 + 192) = v35;
  v54.origin.x = v1;
  v54.origin.y = v2;
  v54.size.width = v3;
  v54.size.height = v4;
  v33 = v32 + CGRectGetMinX(v54);
  v55.origin.x = v1;
  v55.origin.y = v2;
  v55.size.width = v3;
  v55.size.height = v4;
  v19 = CGRectGetMaxY(v55);
  v56.origin.x = v1;
  v56.origin.y = v2;
  v56.size.width = v3;
  v56.size.height = v4;
  v20 = CGRectGetMinX(v56);
  v57.origin.x = v1;
  v57.origin.y = v2;
  v57.size.width = v3;
  v57.size.height = v4;
  v21 = CGRectGetMaxY(v57) - v34;
  v58.origin.x = v1;
  v58.origin.y = v2;
  v58.size.width = v3;
  v58.size.height = v4;
  v22 = CGRectGetMinX(v58);
  v59.origin.x = v1;
  v59.origin.y = v2;
  v59.size.width = v3;
  v59.size.height = v4;
  v23 = CGRectGetMaxY(v59);
  *(v7 + 200) = v33;
  *(v7 + 208) = v19;
  *(v7 + 216) = v20;
  *(v7 + 224) = v21;
  *(v7 + 232) = v22;
  *(v7 + 240) = v23;
  *(v7 + 248) = v35;
  return v7;
}

double ReticleCorners.animatableData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v7.origin.x = *v0;
  v7.origin.y = v2;
  v7.size.width = v3;
  v7.size.height = v4;
  MidX = CGRectGetMidX(v7);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetMidY(v8);
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  CGRectGetWidth(v9);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  CGRectGetHeight(v10);
  return MidX;
}

void sub_21DF62EFC(CGFloat *a1@<X0>, CGFloat *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v11.origin.x = *a1;
  v11.origin.y = v4;
  v11.size.width = v5;
  v11.size.height = v6;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  MidY = CGRectGetMidY(v12);
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  Width = CGRectGetWidth(v13);
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  Height = CGRectGetHeight(v14);
  *a2 = MidX;
  a2[1] = MidY;
  a2[2] = Width;
  a2[3] = Height;
}

double ReticleCorners.animatableData.setter(double a1, double a2, double a3, double a4)
{
  result = a1 - a3 * 0.5;
  *v4 = result;
  v4[1] = a2 - a4 * 0.5;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void (*ReticleCorners.animatableData.modify(CGFloat **a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v14.origin.x = *v1;
  v14.origin.y = v6;
  v14.size.width = v7;
  v14.size.height = v8;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = v5;
  v15.origin.y = v6;
  v15.size.width = v7;
  v15.size.height = v8;
  MidY = CGRectGetMidY(v15);
  v16.origin.x = v5;
  v16.origin.y = v6;
  v16.size.width = v7;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  v17.origin.x = v5;
  v17.origin.y = v6;
  v17.size.width = v7;
  v17.size.height = v8;
  Height = CGRectGetHeight(v17);
  *v4 = MidX;
  v4[1] = MidY;
  v4[2] = Width;
  v4[3] = Height;
  return sub_21DF630C4;
}

void sub_21DF630C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  __asm { FMOV            V2.2D, #-0.5 }

  *v2 = vaddq_f64(*v1, vmulq_f64(v3, _Q2));
  v2[1] = v3;
  free(v1);
}

__n128 ReticleCorners.body.getter@<Q0>(_OWORD *a1@<X8>)
{
  sub_21E140BB4();
  sub_21E13F4E4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21DF63184()
{
  v0 = sub_21DF62B14();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 40;
    do
    {
      sub_21E140B44();
      sub_21E140B54();
      sub_21E140B64();
      v2 += 56;
      --v1;
    }

    while (v1);
  }
}

void ReticleCorners.init(bounds:cornerRadius:cornerSize:lineWidth:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
}

uint64_t sub_21DF63294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DF63604();

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t sub_21DF63300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DF63604();

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

__n128 sub_21DF6336C@<Q0>(_OWORD *a1@<X8>)
{
  sub_21E140BB4();
  sub_21E13F4E4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_21DF63450(CGFloat *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v11.origin.x = *v1;
  v11.origin.y = v4;
  v11.size.width = v5;
  v11.size.height = v6;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  MidY = CGRectGetMidY(v12);
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  Width = CGRectGetWidth(v13);
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  Height = CGRectGetHeight(v14);
  *a1 = MidX;
  a1[1] = MidY;
  a1[2] = Width;
  a1[3] = Height;
}

float64x2_t sub_21DF634FC(float64x2_t *a1)
{
  v2 = a1[1];
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(*a1, vmulq_f64(v2, _Q2));
  *v1 = result;
  v1[1] = v2;
  return result;
}

void (*sub_21DF63514(CGFloat ***a1))(void *a1)
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
  *(v2 + 32) = ReticleCorners.animatableData.modify(v2);
  return sub_21DF4F628;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DF63598(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DF635B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_21DF63604()
{
  result = qword_27CEA78E8;
  if (!qword_27CEA78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78E8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21DF63674(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DF63694(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

double sub_21DF636E0@<D0>(_OWORD *a1@<X8>)
{
  sub_21DF26814();
  sub_21E13FFA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21DF63730(void *a1)
{
  sub_21DF26814();

  return sub_21E13FFB4();
}

uint64_t sub_21DF63790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  swift_beginAccess();
  return sub_21DF236C0(v3 + v4, a2, &qword_27CEA6CE8, &qword_21E1456F0);
}

uint64_t sub_21DF63868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8, &qword_21E1456F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21DF236C0(a1, &v6 - v3, &qword_27CEA6CE8, &qword_21E1456F0);
  return sub_21DF28A6C(v4);
}

CGFloat sub_21DF63914()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) * 0.9;
  qword_27CEB76D8 = *&result;
  return result;
}

uint64_t sub_21DF639AC()
{
  v0 = sub_21E140124();
  __swift_allocate_value_buffer(v0, qword_27CEA78F8);
  __swift_project_value_buffer(v0, qword_27CEA78F8);
  return sub_21E140104();
}

uint64_t sub_21DF63A04@<X0>(void *a1@<X8>)
{
  v3 = sub_21E13FF94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00, &qword_21E147D08);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CardContainer(0);
  sub_21DF236C0(v1 + *(v10 + 20), v9, &qword_27CEACA00, &qword_21E147D08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E140894();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21DF63C0C()
{
  v1 = sub_21E13FF94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CardContainer(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_21E142574();
    v8 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21DF63D60()
{
  v1 = sub_21E140124();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for CardContainer(0);
  v7 = (v0 + *(v6 + 48));
  v9 = *v7;
  v8 = v7[1];
  v29 = v9;
  v30 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08, &qword_21E1480F8);
  sub_21E141714();
  v10 = *(v6 + 28);
  v24 = v0;
  v11 = *(v0 + v10);
  swift_getKeyPath();
  v29 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v13 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v29 = v11;
    sub_21E13D3C4();

    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v13 = *(v11 + v14);
  }

  swift_getKeyPath();
  v28 = v13;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_getKeyPath();
  v28 = v11;
  sub_21E13D3C4();

  if (*(v11 + v12))
  {
    v15 = *(v11 + v12);
  }

  else
  {
    swift_getKeyPath();
    v28 = v11;
    sub_21E13D3C4();

    v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v15 = *(v11 + v16);
  }

  swift_getKeyPath();
  v27 = v15;

  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v18 = *(v15 + v17);
  sub_21DF5706C(v18);

  if (v18 == 6)
  {
    v19 = v23;
    sub_21E140104();
    sub_21E0E2440(v5, v19);
    v20 = v26;
    v21 = *(v25 + 8);
    v21(v5, v26);
    sub_21DF64180(v19);
    sub_21E0E2440(v5, v19);
    v21(v5, v20);
  }

  else
  {
    sub_21DF5AF24(v18);
  }

  return v31;
}

uint64_t sub_21DF64180@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A00, &qword_21E147FD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v49 = sub_21E140124();
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CEA67C0 != -1)
  {
    swift_once();
  }

  v44 = v8;
  v11 = *&qword_27CEB76D8;
  v45 = v10;
  sub_21E140104();
  v42 = type metadata accessor for CardContainer(0);
  v12 = *(v42 + 28);
  v43 = v1;
  v13 = *(v1 + v12);
  swift_getKeyPath();
  v61 = v13;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v14 = *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v61 = v13;
    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v14 = *(v13 + v15);
  }

  swift_getKeyPath();
  v60 = v14;
  v16 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  v47 = v16;
  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v18 = *(v14 + v17);

  swift_getKeyPath();
  v59 = v18;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  v20 = *(v18 + v19);

  v21 = 1;
  v22 = v44;
  if (((1 << v20) & 0x13) == 0)
  {
    if (((1 << v20) & 0xC) == 0)
    {
      (*(v44 + 56))(v7);
      goto LABEL_12;
    }

    sub_21E140114();
    v21 = 0;
  }

  v23 = v49;
  (*(v22 + 56))(v4, v21, 1, v49);
  sub_21DF3DE9C(v4, v7, &qword_27CEA7A00, &qword_21E147FD8);
  if ((*(v22 + 48))(v7, 1, v23) != 1)
  {
    (*(v22 + 8))(v45, v23);
    return (*(v22 + 32))(v46, v7, v23);
  }

LABEL_12:
  sub_21DF23614(v7, &qword_27CEA7A00, &qword_21E147FD8);
  swift_getKeyPath();
  v58 = v13;
  sub_21E13D3C4();

  if (*(v13 + v48))
  {
    v25 = *(v13 + v48);
  }

  else
  {
    swift_getKeyPath();
    v58 = v13;
    sub_21E13D3C4();

    v26 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v25 = *(v13 + v26);
  }

  swift_getKeyPath();
  v57 = v25;

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v56 = v13;
  sub_21E13D3C4();

  if (*(v13 + v48))
  {
    v27 = *(v13 + v48);
  }

  else
  {
    swift_getKeyPath();
    v56 = v13;
    sub_21E13D3C4();

    v28 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v27 = *(v13 + v28);
  }

  swift_getKeyPath();
  v55[0] = v27;

  sub_21E13D3C4();

  v29 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v30 = *(v27 + v29);
  sub_21DF5706C(v30);

  v54[0] = v30;
  v31 = sub_21DF31604(v54);

  sub_21DF5AF24(v54[0]);
  if (v31)
  {
    return (*(v22 + 32))(v46, v45, v49);
  }

  swift_getKeyPath();
  v54[0] = v13;
  sub_21E13D3C4();

  if (*(v13 + v48))
  {
    v32 = *(v13 + v48);
  }

  else
  {
    swift_getKeyPath();
    v54[0] = v13;
    sub_21E13D3C4();

    v33 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v32 = *(v13 + v33);
  }

  swift_getKeyPath();
  v53[0] = v32;

  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v35 = *(v32 + v34);
  sub_21DF5706C(v35);

  sub_21DF5AF24(v35);
  if (v35 >= 9)
  {
    v39 = v49;
    if (qword_27CEA67C8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v39, qword_27CEA78F8);
    (*(v22 + 16))(v46, v40, v39);
    return (*(v22 + 8))(v45, v39);
  }

  else
  {
    v36 = (v43 + *(v42 + 36));
    v37 = *v36;
    v38 = v36[1];
    v51 = *v36;
    v52 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68, &unk_21E1461B0);
    sub_21E141714();
    if (v50 <= 0.0)
    {
      return (*(v22 + 32))(v46, v45, v49);
    }

    v51 = v37;
    v52 = v38;
    sub_21E141714();
    if (v50 >= v11)
    {
      return (*(v22 + 32))(v46, v45, v49);
    }

    sub_21E140104();
    return (*(v22 + 8))(v45, v49);
  }
}

uint64_t sub_21DF64BA0()
{
  v1 = *(v0 + *(type metadata accessor for CardContainer(0) + 28));
  swift_getKeyPath();
  v21 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v21 = v1;
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v3 = *(v1 + v4);
  }

  swift_getKeyPath();
  v20 = v3;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v19 = v1;
  sub_21E13D3C4();

  if (*(v1 + v2))
  {
    v5 = *(v1 + v2);
  }

  else
  {
    swift_getKeyPath();
    v19 = v1;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v1 + v6);
  }

  swift_getKeyPath();
  v18[1] = v5;

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v8 = *(v5 + v7);
  sub_21DF5706C(v8);

  v18[0] = v8;
  LOBYTE(v8) = sub_21DF31604(v18);

  sub_21DF5AF24(v18[0]);
  if ((v8 & 1) == 0)
  {
    return sub_21E140914();
  }

  v9 = sub_21DF64FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0, &unk_21E149300);
  if (v9)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E147C80;
    v11 = sub_21E140944();
    *(inited + 32) = v11;
    v12 = sub_21E140964();
    *(inited + 33) = v12;
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_21E147C70;
    v15 = sub_21E140934();
    *(v14 + 32) = v15;
    v11 = sub_21E140944();
    *(v14 + 33) = v11;
    v12 = sub_21E140964();
    *(v14 + 34) = v12;
    v16 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() == v15)
    {
      goto LABEL_13;
    }
  }

  v16 = sub_21E140954();
LABEL_13:
  sub_21E140954();
  if (sub_21E140954() != v11)
  {
    v16 = sub_21E140954();
  }

  sub_21E140954();
  if (sub_21E140954() != v12)
  {
    return sub_21E140954();
  }

  return v16;
}

uint64_t sub_21DF64FE4()
{
  v1 = type metadata accessor for CardContainer(0);
  v20[0] = *(v0 + *(v1 + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090, &unk_21E146320);
  sub_21E141714();
  if (v19[0])
  {
    goto LABEL_2;
  }

  v3 = *(v0 + *(v1 + 28));
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *&v20[0] = v3;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v3 + v6);
  }

  swift_getKeyPath();
  v19[0] = v5;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v8 = *(v5 + v7);

  swift_getKeyPath();
  v19[0] = v8;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v9 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  v20[0] = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  v20[1] = v9;
  v11 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
  v10 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
  v12 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
  v21 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
  v20[3] = v11;
  v20[4] = v10;
  v20[2] = v12;
  sub_21DF236C0(v20, v19, &qword_27CEA6D60, &qword_21E147FD0);

  if (v21 == 255)
  {
LABEL_2:
    v2 = 0;
  }

  else
  {
    sub_21DF23614(v20, &qword_27CEA6D60, &qword_21E147FD0);
    swift_getKeyPath();
    v19[0] = v3;
    sub_21E13D3C4();

    if (*(v3 + v4))
    {
      v13 = *(v3 + v4);
    }

    else
    {
      swift_getKeyPath();
      v19[0] = v3;
      sub_21E13D3C4();

      v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v13 = *(v3 + v14);
    }

    swift_getKeyPath();

    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v16 = *(v13 + v15);

    swift_getKeyPath();
    sub_21E13D3C4();

    v17 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LOBYTE(v17) = *(v16 + v17);

    v2 = v17 ^ 1;
  }

  return v2 & 1;
}

void *sub_21DF6545C@<X0>(void *a2@<X8>)
{
  type metadata accessor for CardContainer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090, &unk_21E146320);
  result = sub_21E141714();
  *a2 = v4;
  return result;
}

uint64_t sub_21DF654CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CardContainer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090, &unk_21E146320);
  sub_21E141724();
  return sub_21DF6553C();
}

uint64_t sub_21DF6553C()
{
  v1 = *(v0 + *(type metadata accessor for CardContainer(0) + 28));
  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v2 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    sub_21E13D3C4();

    v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v2 = *(v1 + v3);
  }

  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v5 = *(v2 + v4);

  swift_getKeyPath();
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  LODWORD(v6) = *(v5 + v6);

  if (v6 != 1)
  {
    return sub_21DF7D6EC();
  }

  MEMORY[0x28223BE20](v7);
  sub_21E141D64();
  sub_21E13F864();
}

double CardContainer.init(model:sheetAssistant:feedbackController:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v9 = sub_21E140124();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v16 = type metadata accessor for CardContainer(0);
  v17 = v16[5];
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00, &qword_21E147D08);
  swift_storeEnumTagMultiPayload();
  v18 = a6 + v16[6];
  type metadata accessor for SharedSuppressPostShutterAction(0);
  sub_21DF8D698(&qword_27CEA77F0, type metadata accessor for SharedSuppressPostShutterAction, &protocol conformance descriptor for SharedSuppressPostShutterAction);
  *v18 = sub_21E13F474();
  *(v18 + 8) = v19 & 1;
  v20 = (a6 + v16[9]);
  v40 = 0;
  sub_21E141704();
  v21 = *(&v42 + 1);
  *v20 = v42;
  v20[1] = v21;
  v22 = a6 + v16[10];
  LOBYTE(v40) = 0;
  sub_21E141704();
  v23 = *(&v42 + 1);
  *v22 = v42;
  *(v22 + 8) = v23;
  sub_21E140104();
  (*(v10 + 16))(v12, v15, v9);
  sub_21E141704();
  (*(v10 + 8))(v15, v9);
  v24 = (a6 + v16[12]);
  v40 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7910, &qword_21E147D10);
  sub_21E141704();
  v25 = *(&v42 + 1);
  *v24 = v42;
  v24[1] = v25;
  v26 = a6 + v16[13];
  LOBYTE(v40) = 0;
  sub_21E141704();
  v27 = *(&v42 + 1);
  *v26 = v42;
  *(v26 + 8) = v27;
  v28 = a6 + v16[14];
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_21E141704();
  v29 = v43;
  *v28 = v42;
  *(v28 + 16) = v29;
  v30 = v16[15];
  v40 = 0;
  sub_21E141704();
  v31 = a6 + v16[16];
  LOBYTE(v40) = 0;
  sub_21E141704();
  v32 = *(&v42 + 1);
  *v31 = v42;
  *(v31 + 8) = v32;
  v40 = 0;
  sub_21E141704();

  result = *&v42;
  *(a6 + v30) = v42;
  *(a6 + v16[7]) = a1;
  *(a6 + v16[8]) = a2;
  v34 = (a6 + v16[17]);
  v35 = v38;
  *v34 = v37;
  v34[1] = v35;
  v34[2] = v39;
  return result;
}

uint64_t type metadata accessor for CardContainer(uint64_t a1)
{
  result = qword_280F6BD48;
  if (!qword_280F6BD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CardContainer.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v164 = a1;
  v3 = sub_21E1407E4();
  v145 = *(v3 - 1);
  v146 = v3;
  MEMORY[0x28223BE20](v3);
  v144 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E140124();
  v174 = *(v5 - 8);
  v175 = v5;
  MEMORY[0x28223BE20](v5);
  v170 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E140874();
  v142 = *(v7 - 8);
  v143 = v7;
  MEMORY[0x28223BE20](v7);
  v140 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7918, &qword_21E147D18);
  MEMORY[0x28223BE20](v9 - 8);
  v180 = v126 - v10;
  v177 = type metadata accessor for CardContainer(0);
  v11 = *(v177 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v177);
  v13 = v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7920, &qword_21E147D20);
  MEMORY[0x28223BE20](v168);
  v15 = v126 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7928, &qword_21E147D28);
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v167 = v126 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7930, &qword_21E147D30);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v128 = v126 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7938, &qword_21E147D38);
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = v126 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7940, &qword_21E147D40);
  MEMORY[0x28223BE20](v138);
  v134 = v126 - v19;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7948, &qword_21E147D48);
  v141 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v139 = v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7950, &qword_21E147D50);
  v148 = *(v21 - 8);
  v149 = v21;
  MEMORY[0x28223BE20](v21);
  v169 = v126 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7958, &qword_21E147D58);
  v151 = *(v23 - 8);
  v152 = v23;
  MEMORY[0x28223BE20](v23);
  v150 = v126 - v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7960, &qword_21E147D60);
  v154 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v153 = v126 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7968, &qword_21E147D68);
  v160 = *(v26 - 8);
  v161 = v26;
  MEMORY[0x28223BE20](v26);
  v158 = v126 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7970, &qword_21E147D70);
  v156 = *(v28 - 8);
  v157 = v28;
  MEMORY[0x28223BE20](v28);
  v155 = v126 - v29;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7978, &qword_21E147D78);
  MEMORY[0x28223BE20](v162);
  v163 = v126 - v30;
  *v15 = sub_21E1401C4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7980, &qword_21E147D80);
  sub_21DF6751C(v2, &v15[*(v31 + 44)]);
  sub_21DF8C7C8(v2, v13, type metadata accessor for CardContainer);
  v32 = *(v11 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = v33 + v12;
  v35 = swift_allocObject();
  sub_21DF8C494(v13, v35 + v33, type metadata accessor for CardContainer);
  v36 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7990, &qword_21E147D90) + 36)];
  *v36 = sub_21DF885EC;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  sub_21DF8C7C8(v2, v13, type metadata accessor for CardContainer);
  v173 = v32;
  v178 = v34;
  v37 = swift_allocObject();
  v179 = v33;
  v176 = v13;
  sub_21DF8C494(v13, v37 + v33, type metadata accessor for CardContainer);
  v38 = &v15[v168[9]];
  *v38 = 0;
  *(v38 + 1) = 0;
  *(v38 + 2) = sub_21DF88604;
  *(v38 + 3) = v37;
  sub_21DF63D60();
  v39 = v177;
  v40 = v2 + v177[11];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988, &qword_21E147D88);
  v42 = v180;
  v136 = v41;
  v137 = v40;
  sub_21E141734();
  v43 = sub_21DF8861C();
  sub_21E141094();

  sub_21DF23614(v42, &qword_27CEA7918, &qword_21E147D18);
  sub_21DF23614(v15, &qword_27CEA7920, &qword_21E147D20);
  v44 = v39[7];
  v180 = v2;
  v45 = *(v2 + v44);
  swift_getKeyPath();
  v46 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v186 = v45;
  v47 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v172 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v45 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v48 = *(v45 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v186 = v45;
    sub_21E13D3C4();

    v49 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v48 = *(v45 + v49);
  }

  swift_getKeyPath();
  v186 = v48;
  v50 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  v171 = v50;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v186 = v45;
  sub_21E13D3C4();

  v51 = *(v172 + v45);
  v165 = v47;
  v166 = v45;
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    swift_getKeyPath();
    v186 = v45;
    sub_21E13D3C4();

    v53 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v52 = *(v45 + v53);
  }

  swift_getKeyPath();
  v186 = v52;

  sub_21E13D3C4();

  v54 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v55 = *(v52 + v54);
  sub_21DF5706C(v55);

  v186 = v55;
  sub_21DF31604(&v186);

  sub_21DF5AF24(v186);
  v186 = v168;
  *&v187 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v128;
  v57 = v129;
  v59 = v167;
  sub_21E141194();
  (*(v127 + 8))(v59, v57);
  v60 = v170;
  sub_21E140104();
  v61 = v140;
  sub_21E140864();
  v62 = *(v174 + 1);
  v174 = (v174 + 8);
  v167 = v62;
  (v62)(v60, v175);
  v186 = v57;
  *&v187 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v131;
  v63 = v132;
  sub_21E1411C4();
  (*(v142 + 8))(v61, v143);
  (*(v130 + 8))(v58, v63);
  v65 = v177;
  v66 = v180;
  v67 = *(v180 + v177[8]);
  v68 = v138;
  v69 = v134;
  v70 = &v134[*(v138 + 36)];
  *v70 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00, &qword_21E147D08);
  swift_storeEnumTagMultiPayload();
  *(v70 + *(type metadata accessor for PresentationSheetAssistantModifier(0) + 20)) = v67;
  (*(v133 + 32))(v69, v64, v135);
  v168 = v67;
  v71 = v144;
  sub_21E1407D4();
  v72 = sub_21DF88760();
  v73 = v139;
  sub_21E1411B4();
  (*(v145 + 1))(v71, v146);
  sub_21DF23614(v69, &qword_27CEA7940, &qword_21E147D40);
  v74 = (v66 + v65[9]);
  v75 = *v74;
  v76 = v74[1];
  v186 = v75;
  *&v187 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68, &unk_21E1461B0);
  sub_21E141714();
  v77 = v176;
  sub_21DF8C7C8(v66, v176, type metadata accessor for CardContainer);
  v78 = swift_allocObject();
  sub_21DF8C494(v77, v78 + v179, type metadata accessor for CardContainer);
  v186 = v68;
  *&v187 = v72;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_21DF3D110();
  v81 = v147;
  sub_21E141334();

  (*(v141 + 8))(v73, v81);
  swift_getKeyPath();
  v82 = v166;
  v186 = v166;
  sub_21E13D3C4();

  v83 = *(v172 + v82);
  v126[1] = v46;
  if (v83)
  {
    v84 = v83;
  }

  else
  {
    swift_getKeyPath();
    v186 = v82;
    sub_21E13D3C4();

    v85 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v84 = *(v82 + v85);
  }

  swift_getKeyPath();
  v186 = v84;

  sub_21E13D3C4();

  v86 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v87 = *(v84 + v86);
  sub_21DF5706C(v87);

  v185 = v87;
  v146 = type metadata accessor for CardContainer;
  v88 = v176;
  sub_21DF8C7C8(v180, v176, type metadata accessor for CardContainer);
  v89 = swift_allocObject();
  v145 = type metadata accessor for CardContainer;
  sub_21DF8C494(v88, v89 + v179, type metadata accessor for CardContainer);
  v186 = v81;
  *&v187 = MEMORY[0x277D85048];
  *(&v187 + 1) = v79;
  v188 = v80;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_21DF88970();
  v93 = v149;
  v92 = v150;
  v94 = v169;
  sub_21E141324();

  sub_21DF5AF24(v185);
  (*(v148 + 8))(v94, v93);
  v95 = v170;
  sub_21E141714();
  sub_21DF8C7C8(v180, v88, v146);
  v96 = swift_allocObject();
  sub_21DF8C494(v88, v96 + v179, v145);
  v186 = v93;
  *&v187 = &type metadata for CardLayout;
  *(&v187 + 1) = v90;
  v188 = v91;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = sub_21DF8D698(&qword_27CEA79D0, MEMORY[0x277CDDE90], MEMORY[0x277CDDEA0]);
  v99 = v152;
  v100 = v153;
  v101 = v175;
  sub_21E141324();

  (v167)(v95, v101);
  (*(v151 + 8))(v92, v99);
  swift_getKeyPath();
  v102 = v166;
  v186 = v166;
  sub_21E13D3C4();

  if (*(v172 + v102))
  {
    v103 = *(v172 + v102);
  }

  else
  {
    swift_getKeyPath();
    v186 = v102;
    sub_21E13D3C4();

    v104 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v103 = *(v102 + v104);
  }

  swift_getKeyPath();
  v186 = v103;

  sub_21E13D3C4();

  v105 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v106 = *(v103 + v105);

  swift_getKeyPath();
  v186 = v106;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v107 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  LOBYTE(v107) = *(v106 + v107);

  v184 = v107;
  v174 = type metadata accessor for CardContainer;
  v108 = v176;
  sub_21DF8C7C8(v180, v176, type metadata accessor for CardContainer);
  v109 = swift_allocObject();
  v172 = type metadata accessor for CardContainer;
  sub_21DF8C494(v108, v109 + v179, type metadata accessor for CardContainer);
  v186 = v99;
  *&v187 = v175;
  *(&v187 + 1) = v97;
  v188 = v98;
  v175 = MEMORY[0x277CE0E30];
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v158;
  v112 = v159;
  sub_21E141324();

  (*(v154 + 8))(v100, v112);
  v113 = *(v168 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v186 = v113;
  sub_21DF8D698(&qword_280F6C000, type metadata accessor for SheetModel, &protocol conformance descriptor for SheetModel);

  sub_21E13D3C4();

  swift_beginAccess();
  v114 = *(v113 + 32);

  LODWORD(v181) = v114;
  v115 = v180;
  sub_21DF8C7C8(v180, v108, v174);
  v116 = swift_allocObject();
  sub_21DF8C494(v108, v116 + v179, v172);
  v186 = v112;
  *&v187 = MEMORY[0x277D839B0];
  *(&v187 + 1) = v110;
  v188 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v117 = v155;
  v118 = v161;
  sub_21E141324();

  (*(v160 + 8))(v111, v118);
  v119 = v163;
  (*(v156 + 32))(v163, v117, v157);
  v120 = v115 + v177[17];
  v186 = *v120;
  v187 = *(v120 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
  sub_21E1419F4();
  v121 = v181;
  v122 = v182;
  v123 = v183;
  swift_getKeyPath();
  v186 = v121;
  *&v187 = v122;
  *(&v187 + 1) = v123;
  sub_21E1419E4();

  v124 = v183;

  sub_21DF88B44();
  sub_21E140CF4();

  return sub_21DF23614(v119, &qword_27CEA7978, &qword_21E147D78);
}

uint64_t sub_21DF6751C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A18, &qword_21E148138);
  MEMORY[0x28223BE20](v102);
  v101 = v94 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A20, &qword_21E148140);
  v96 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v95 = v94 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A28, &qword_21E148148);
  MEMORY[0x28223BE20](v111);
  v97 = v94 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A30, &qword_21E148150);
  v99 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v98 = v94 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A38, &qword_21E148158);
  MEMORY[0x28223BE20](v103);
  v105 = v94 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A40, &qword_21E148160);
  MEMORY[0x28223BE20](v104);
  v100 = v94 - v9;
  v10 = *(type metadata accessor for CardContainer(0) + 28);
  v110 = a1;
  v11 = *(a1 + v10);
  swift_getKeyPath();
  v112 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v109 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v12 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v112 = v11;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v11 + v13);
  }

  swift_getKeyPath();
  v112 = v12;
  v14 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  v108 = v14;
  sub_21E13D3C4();

  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v16 = *(v12 + v15);

  swift_getKeyPath();
  v112 = v16;
  v17 = sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  LODWORD(v18) = *(v16 + v18);

  if (v18 == 5)
  {
    v100 = v4;
    v94[0] = v17;
    v94[1] = v94;
    MEMORY[0x28223BE20](v19);
    v93 = v110;
    sub_21E1408F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C40, &qword_21E148280);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C48, &qword_21E148288);
    v21 = sub_21DF8A698();
    v112 = v20;
    v113 = v21;
    swift_getOpaqueTypeConformance2();
    v22 = v101;
    sub_21E13F3C4();
    v23 = sub_21E141CC4();
    v25 = v24;
    v26 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AC8, &qword_21E1481A8) + 36)];
    sub_21DF7474C(v26);
    v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AE8, &qword_21E1481B8) + 36));
    *v27 = v23;
    v27[1] = v25;
    v28 = sub_21E140924();
    sub_21E13F374();
    v29 = &v22[*(v102 + 9)];
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    swift_getKeyPath();
    v112 = v11;
    sub_21E13D3C4();

    if (*(v109 + v11))
    {
      v34 = *(v109 + v11);
    }

    else
    {
      swift_getKeyPath();
      v112 = v11;
      sub_21E13D3C4();

      v53 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v34 = *(v11 + v53);
    }

    swift_getKeyPath();
    v112 = v34;

    sub_21E13D3C4();

    swift_beginAccess();

    swift_getKeyPath();
    v112 = v11;
    sub_21E13D3C4();

    v54 = v100;
    if (*(v109 + v11))
    {
      v55 = *(v109 + v11);
    }

    else
    {
      swift_getKeyPath();
      v112 = v11;
      sub_21E13D3C4();

      v56 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v55 = *(v11 + v56);
    }

    swift_getKeyPath();
    v112 = v55;

    sub_21E13D3C4();

    v57 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v58 = *(v55 + v57);
    sub_21DF5706C(v58);

    v112 = v58;
    LOBYTE(v58) = sub_21DF31604(&v112);

    sub_21DF5AF24(v112);
    if (v58)
    {
      swift_getKeyPath();
      v112 = v11;
      sub_21E13D3C4();

      if (*(v109 + v11))
      {
        v59 = *(v109 + v11);
      }

      else
      {
        swift_getKeyPath();
        v112 = v11;
        sub_21E13D3C4();

        v60 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v59 = *(v11 + v60);
      }

      swift_getKeyPath();
      v112 = v59;

      sub_21E13D3C4();

      v61 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v62 = *(v59 + v61);

      swift_getKeyPath();
      v112 = v62;
      sub_21E13D3C4();

      swift_beginAccess();
    }

    sub_21DF89A28();
    v63 = v95;
    v64 = v101;
    sub_21E140F54();
    sub_21DF23614(v64, &qword_27CEA7A18, &qword_21E148138);
    v65 = sub_21DF64BA0();
    v66 = sub_21E13FB64();
    v67 = v97;
    (*(v96 + 32))(v97, v63, v54);
    v68 = v67 + *(v111 + 36);
    *v68 = v66;
    *(v68 + 8) = v65;
    v69 = sub_21E141C84();
    v109 = v94;
    MEMORY[0x28223BE20](v69);
    v108 = v92;
    MEMORY[0x28223BE20](v70);
    v102 = v92;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AA0, &qword_21E148198);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AA8, &qword_21E1481A0);
    v71 = sub_21DF89960();
    v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF0, &qword_21E1481C0);
    v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF8, &qword_21E1481C8);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B00, &qword_21E1481D0);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B08, &qword_21E1481D8);
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B10, &qword_21E1481E0);
    v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B18, &qword_21E1481E8);
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B20, &qword_21E1481F0);
    v77 = sub_21DF8B6B8(&qword_27CEA7B28, &qword_27CEA7B20, &qword_21E1481F0, sub_21DF89B98);
    v78 = v111;
    v112 = v111;
    v113 = v76;
    v114 = v71;
    v115 = v77;
    v95 = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v112 = v75;
    v113 = OpaqueTypeConformance2;
    v80 = swift_getOpaqueTypeConformance2();
    v112 = v74;
    v113 = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = sub_21DF8A22C();
    v112 = v72;
    v113 = v73;
    v114 = v81;
    v115 = v82;
    v83 = swift_getOpaqueTypeConformance2();
    v112 = v96;
    v113 = v83;
    v84 = swift_getOpaqueTypeConformance2();
    v112 = v100;
    v113 = v84;
    v85 = swift_getOpaqueTypeConformance2();
    v100 = v85;
    v86 = sub_21DF8A5D8();
    v93 = v86;
    v92[0] = MEMORY[0x277CE1340];
    v92[1] = v85;
    v87 = v101;
    v88 = v98;
    v89 = v110;
    sub_21E141354();
    sub_21DF23614(v67, &qword_27CEA7A28, &qword_21E148148);
    v90 = v99;
    v91 = v106;
    (*(v99 + 16))(v105, v88, v106);
    swift_storeEnumTagMultiPayload();
    sub_21DF89684();
    v112 = v78;
    v113 = MEMORY[0x277CE1350];
    v114 = v89;
    v115 = v87;
    v116 = v95;
    v117 = MEMORY[0x277CE1340];
    v118 = v100;
    v119 = v86;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    return (*(v90 + 8))(v88, v91);
  }

  else
  {
    v35 = v100;
    sub_21DF68610(v100);
    sub_21DF236C0(v35, v105, &qword_27CEA7A40, &qword_21E148160);
    swift_storeEnumTagMultiPayload();
    v110 = sub_21DF89684();
    v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AA0, &qword_21E148198);
    v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AA8, &qword_21E1481A0);
    v36 = sub_21DF89960();
    v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF0, &qword_21E1481C0);
    v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF8, &qword_21E1481C8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B00, &qword_21E1481D0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B08, &qword_21E1481D8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B10, &qword_21E1481E0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B18, &qword_21E1481E8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B20, &qword_21E1481F0);
    v42 = sub_21DF8B6B8(&qword_27CEA7B28, &qword_27CEA7B20, &qword_21E1481F0, sub_21DF89B98);
    v43 = v111;
    v112 = v111;
    v113 = v41;
    v114 = v36;
    v115 = v42;
    v44 = swift_getOpaqueTypeConformance2();
    v112 = v40;
    v113 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v112 = v39;
    v113 = v45;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_21DF8A22C();
    v112 = v37;
    v113 = v38;
    v114 = v46;
    v115 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v112 = v102;
    v113 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v112 = v103;
    v113 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = sub_21DF8A5D8();
    v112 = v43;
    v113 = MEMORY[0x277CE1350];
    v114 = v109;
    v115 = v108;
    v116 = v36;
    v117 = MEMORY[0x277CE1340];
    v118 = v50;
    v119 = v51;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    return sub_21DF23614(v100, &qword_27CEA7A40, &qword_21E148160);
  }
}

uint64_t sub_21DF68610@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81B0, &qword_21E1488B8);
  MEMORY[0x28223BE20](v70);
  v71 = &v64 - v2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A98, &unk_21E148188);
  MEMORY[0x28223BE20](v80);
  v72 = (&v64 - v3);
  v67 = sub_21E13EF84();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA73A8, &unk_21E1469D0);
  MEMORY[0x28223BE20](v69);
  v68 = &v64 - v5;
  v6 = type metadata accessor for CardContainer(0);
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81B8, &qword_21E1488C0);
  MEMORY[0x28223BE20](v77);
  v79 = &v64 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81C0, &qword_21E1488C8);
  MEMORY[0x28223BE20](v73);
  v11 = &v64 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A58, &qword_21E148168);
  MEMORY[0x28223BE20](v78);
  v75 = &v64 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A68, &qword_21E148170);
  MEMORY[0x28223BE20](v74);
  v14 = (&v64 - v13);
  v15 = *(v6 + 28);
  v76 = v1;
  v16 = *(v1 + v15);
  swift_getKeyPath();
  v84[0] = v16;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v17 = *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v84[0] = v16;
    sub_21E13D3C4();

    v18 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v17 = *(v16 + v18);
  }

  swift_getKeyPath();
  v84[0] = v17;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v20 = *(v17 + v19);

  swift_getKeyPath();
  v84[0] = v20;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  v22 = *(v20 + v21);

  if (v22 > 2)
  {
    if (v22 == 3)
    {
      v86 = v6;
      v87 = sub_21DF8D698(&qword_27CEA81C8, type metadata accessor for CardContainer, &protocol conformance descriptor for CardContainer);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v84);
      sub_21DF8C7C8(v76, boxed_opaque_existential_1, type metadata accessor for CardContainer);
      (*(v66 + 104))(v65, *MEMORY[0x277D0D7D0], v67);
      v58 = v68;
      sub_21E13EF24();
      v59 = sub_21E13FB64();
      v60 = sub_21E140914();
      v61 = v58 + *(v69 + 36);
      *v61 = v59;
      *(v61 + 8) = v60;
      v54 = &qword_27CEA73A8;
      v55 = &unk_21E1469D0;
      sub_21DF236C0(v58, v71, &qword_27CEA73A8, &unk_21E1469D0);
      swift_storeEnumTagMultiPayload();
      sub_21DF44860();
      v62 = v72;
      sub_21E1402F4();
      sub_21DF236C0(v62, v79, &qword_27CEA7A98, &unk_21E148188);
      swift_storeEnumTagMultiPayload();
      sub_21DF89710();
      sub_21DF898D4();
      sub_21E1402F4();
      sub_21DF23614(v62, &qword_27CEA7A98, &unk_21E148188);
      v45 = v58;
LABEL_13:
      v46 = v54;
      v47 = v55;
      return sub_21DF23614(v45, v46, v47);
    }

    if (v22 != 4)
    {
      swift_storeEnumTagMultiPayload();
      sub_21DF44860();
      v14 = v72;
      sub_21E1402F4();
      v54 = &qword_27CEA7A98;
      v55 = &unk_21E148188;
      sub_21DF236C0(v14, v79, &qword_27CEA7A98, &unk_21E148188);
      swift_storeEnumTagMultiPayload();
      sub_21DF89710();
      sub_21DF898D4();
      sub_21E1402F4();
      goto LABEL_12;
    }

LABEL_9:
    MEMORY[0x28223BE20](v23);
    *(&v64 - 2) = v76;
    sub_21E1408F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81D0, &qword_21E1488D0);
    sub_21DF8CC5C();
    sub_21E13F3C4();
    v48 = sub_21E141CC4();
    v50 = v49;
    v51 = sub_21E1414A4();
    sub_21E13F6B4();
    sub_21E13F694();
    v52 = sub_21E13F6C4();

    v53 = v14 + *(v74 + 36);
    *v53 = v51;
    *(v53 + 4) = 256;
    *(v53 + 2) = v52;
    *(v53 + 3) = v48;
    *(v53 + 4) = v50;
    v54 = &qword_27CEA7A68;
    v55 = &qword_21E148170;
    sub_21DF236C0(v14, v11, &qword_27CEA7A68, &qword_21E148170);
    swift_storeEnumTagMultiPayload();
    sub_21DF8979C();
    sub_21DF89880();
    v56 = v75;
    sub_21E1402F4();
    sub_21DF236C0(v56, v79, &qword_27CEA7A58, &qword_21E148168);
    swift_storeEnumTagMultiPayload();
    sub_21DF89710();
    sub_21DF898D4();
    sub_21E1402F4();
    sub_21DF23614(v56, &qword_27CEA7A58, &qword_21E148168);
LABEL_12:
    v45 = v14;
    goto LABEL_13;
  }

  if (v22 < 2)
  {
    goto LABEL_9;
  }

  v24 = v76;
  sub_21DF8C7C8(v76, &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  sub_21E1423C4();
  v25 = sub_21E1423B4();
  v26 = *(v64 + 80);
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v25;
  *(v28 + 24) = v29;
  v72 = type metadata accessor for CardContainer;
  sub_21DF8C494(&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for CardContainer);
  sub_21DF8C7C8(v24, &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  v30 = sub_21E1423B4();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = MEMORY[0x277D85700];
  v32 = v31 + v27;
  v33 = v72;
  sub_21DF8C494(&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v72);
  sub_21E141A04();
  v34 = v84[0];
  v35 = v84[1];
  LOBYTE(v25) = v85;
  sub_21DF8C7C8(v24, &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  v36 = swift_allocObject();
  sub_21DF8C494(v8, v36 + ((v26 + 16) & ~v26), v33);
  v83 = v25;
  v37 = type metadata accessor for SiriSetupViewController.Delegate();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding];
  *v39 = v34;
  *(v39 + 1) = v35;
  v39[16] = v25;
  v40 = &v38[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate_completion];
  *v40 = sub_21DF8CC3C;
  v40[1] = v36;
  v82.receiver = v38;
  v82.super_class = v37;

  v41 = objc_msgSendSuper2(&v82, sel_init);
  v42 = v83;
  *v11 = v34;
  *(v11 + 1) = v35;
  v11[16] = v42;
  *(v11 + 3) = v41;
  *(v11 + 4) = sub_21DF8CC3C;
  *(v11 + 5) = v36;
  swift_storeEnumTagMultiPayload();
  sub_21DF8979C();
  sub_21DF89880();

  v43 = v41;

  v44 = v75;
  sub_21E1402F4();
  sub_21DF236C0(v44, v79, &qword_27CEA7A58, &qword_21E148168);
  swift_storeEnumTagMultiPayload();
  sub_21DF89710();
  sub_21DF898D4();
  sub_21E1402F4();

  v45 = v44;
  v46 = &qword_27CEA7A58;
  v47 = &qword_21E148168;
  return sub_21DF23614(v45, v46, v47);
}

uint64_t sub_21DF69390(uint64_t a1)
{
  v2 = type metadata accessor for CardContainer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C48, &qword_21E148288);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  *v7 = sub_21E1401C4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D98, &qword_21E148458);
  sub_21DF695AC(a1, &v7[*(v8 + 44)]);
  v9 = sub_21E141CC4();
  v11 = v10;
  sub_21DF8C7C8(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_21DF8C494(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CardContainer);
  v14 = &v7[*(v5 + 36)];
  *v14 = sub_21DF8AFC0;
  v14[1] = v13;
  v14[2] = v9;
  v14[3] = v11;
  sub_21E1408D4();
  sub_21E141CC4();
  sub_21DF8A698();
  sub_21E141144();
  return sub_21DF23614(v7, &qword_27CEA7C48, &qword_21E148288);
}

uint64_t sub_21DF695AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v82 = a2;
  v85 = type metadata accessor for CardContainer(0);
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v2;
  v84 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21E1403A4();
  v3 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = sub_21E1403C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DA0, &qword_21E148460);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v88 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  sub_21DF6A0E8(&v75 - v19);
  sub_21E140394();
  v21 = v90;
  (*(v3 + 16))(v5, v8, v90);
  sub_21E1403B4();
  (*(v3 + 8))(v8, v21);
  (*(v10 + 16))(v89, v14, v9);
  sub_21DF8D698(&qword_280F68E58, MEMORY[0x277CE0418], MEMORY[0x277CE0410]);
  v22 = sub_21E13F704();
  (*(v10 + 8))(v14, v9);
  v23 = *(v16 + 44);
  v87 = v20;
  *&v20[v23] = v22;
  v24 = *(v91 + *(v85 + 28));
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v99 = v24;
  v26 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v27 = *(v24 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v86 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    swift_getKeyPath();
    v99 = v24;
    sub_21E13D3C4();

    v29 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v28 = *(v24 + v29);
  }

  swift_getKeyPath();
  v99 = v28;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v99 = v24;
  sub_21E13D3C4();

  v30 = *(v24 + v86);
  v80 = v26;
  v81 = v25;
  v78 = v24;
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    swift_getKeyPath();
    v99 = v24;
    sub_21E13D3C4();

    v32 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v31 = *(v24 + v32);
  }

  swift_getKeyPath();
  v99 = v31;

  sub_21E13D3C4();

  v33 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v34 = *(v31 + v33);
  sub_21DF5706C(v34);

  v99 = v34;
  v35 = sub_21DF31604(&v99);

  sub_21DF5AF24(v99);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v90 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v35)
  {
    swift_getKeyPath();
    v48 = v78;
    v99 = v78;

    sub_21E13D3C4();

    v89 = *(v48 + v86);
    if (!v89)
    {
      swift_getKeyPath();
      v99 = v48;
      sub_21E13D3C4();

      v49 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v89 = *(v48 + v49);
    }

    v50 = v91;
    v51 = v91 + *(v85 + 68);
    v99 = *v51;
    v100 = *(v51 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
    sub_21E1419F4();
    v85 = *(&v92 + 1);
    v76 = v93;
    v77 = v92;
    v52 = v84;
    sub_21DF8C7C8(v50, v84, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v53 = sub_21E1423B4();
    v54 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    *(v55 + 16) = v53;
    *(v55 + 24) = v56;
    sub_21DF8C494(v52, v55 + v54, type metadata accessor for CardContainer);
    sub_21DF8C7C8(v91, v52, type metadata accessor for CardContainer);
    v57 = sub_21E1423B4();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = MEMORY[0x277D85700];
    sub_21DF8C494(v52, v58 + v54, type metadata accessor for CardContainer);
    sub_21E141A04();
    v42 = v99;
    v90 = *(&v100 + 1);
    v43 = v100;
    LOBYTE(v92) = 0;
    sub_21E141704();
    v84 = v99;
    v79 = v100;
    LOBYTE(v92) = 0;
    sub_21E141704();
    v83 = v99;
    v91 = v100;
    swift_getKeyPath();
    v99 = v48;
    sub_21E13D3C4();

    v45 = *(v48 + v86);
    if (!v45)
    {
      swift_getKeyPath();
      v99 = v48;
      sub_21E13D3C4();

      v59 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v45 = *(v48 + v59);
    }

    v44 = v48;
    v36 = v89;
    v41 = v76;
    v39 = v77;
    v47 = v84;
    v40 = v85;
    v37 = v79;
    v38 = v91;
    v46 = v83;
  }

  v80 = v44;
  v81 = v45;
  v89 = v36;
  v85 = v40;
  v86 = v42;
  v60 = v88;
  v91 = v38;
  v61 = v45;
  v62 = v37;
  v63 = v46;
  v83 = v46;
  v84 = v47;
  sub_21DF236C0(v87, v88, &qword_27CEA7DA0, &qword_21E148460);
  v64 = v60;
  v65 = v82;
  sub_21DF236C0(v64, v82, &qword_27CEA7DA0, &qword_21E148460);
  v66 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DA8, &qword_21E148468) + 48));
  v67 = v89;
  *&v92 = v80;
  *(&v92 + 1) = v89;
  *&v93 = v47;
  *(&v93 + 1) = v62;
  *&v94 = v63;
  *(&v94 + 1) = v38;
  v68 = v85;
  *&v95 = v39;
  *(&v95 + 1) = v85;
  *&v96 = v41;
  *(&v96 + 1) = v86;
  *&v97 = v43;
  *(&v97 + 1) = v90;
  *&v98 = v80;
  *(&v98 + 1) = v61;
  v69 = v80;
  v70 = v93;
  *v66 = v92;
  v66[1] = v70;
  v71 = v95;
  v66[2] = v94;
  v66[3] = v71;
  v72 = v97;
  v66[4] = v96;
  v66[5] = v72;
  v66[6] = v98;
  v73 = v67;
  sub_21DF236C0(&v92, &v99, &qword_27CEA7DB0, &qword_21E148470);
  sub_21DF23614(v87, &qword_27CEA7DA0, &qword_21E148460);
  v99 = v69;
  *&v100 = v73;
  *(&v100 + 1) = v84;
  v101 = v62;
  v102 = v83;
  v103 = v91;
  v104 = v39;
  v105 = v68;
  v106 = v41;
  v107 = v86;
  v108 = v43;
  v109 = v90;
  v110 = v69;
  v111 = v81;
  sub_21DF23614(&v99, &qword_27CEA7DB0, &qword_21E148470);
  return sub_21DF23614(v88, &qword_27CEA7DA0, &qword_21E148460);
}

unint64_t sub_21DF6A0E8@<X0>(uint64_t a1@<X8>)
{
  v1038 = a1;
  v990 = type metadata accessor for VIUIDeveloperMenu(0);
  MEMORY[0x28223BE20](v990);
  v979 = (v827 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v997 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DB8, &qword_21E148478);
  MEMORY[0x28223BE20](v997);
  v989 = v827 - v3;
  v1037 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DC0, &qword_21E148480);
  MEMORY[0x28223BE20](v1037);
  v998 = v827 - v4;
  v959 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DC8, &qword_21E148488);
  MEMORY[0x28223BE20](v959);
  v962 = v827 - v5;
  v908 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DD0, &qword_21E148490);
  MEMORY[0x28223BE20](v908);
  v914 = v827 - v6;
  v960 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DD8, &qword_21E148498);
  MEMORY[0x28223BE20](v960);
  v911 = v827 - v7;
  v909 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DE0, &unk_21E1484A0);
  MEMORY[0x28223BE20](v909);
  v863 = (v827 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8, &qword_21E1456F0);
  MEMORY[0x28223BE20](v9 - 8);
  v978 = (v827 - v10);
  v996 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DE8, &qword_21E1484B0);
  MEMORY[0x28223BE20](v996);
  v964 = v827 - v11;
  v961 = type metadata accessor for EventLookupPlaceholder(0);
  MEMORY[0x28223BE20](v961);
  v903 = (v827 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v963 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DF0, &qword_21E1484B8);
  v905 = *(v963 - 8);
  MEMORY[0x28223BE20](v963);
  v904 = v827 - v13;
  v985 = sub_21E140614();
  v928 = *(v985 - 8);
  MEMORY[0x28223BE20](v985);
  v927 = v827 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v932 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DF8, &qword_21E1484C0);
  MEMORY[0x28223BE20](v932);
  v930 = v827 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v864 = v827 - v17;
  v987 = sub_21E13D8D4();
  v966 = *(v987 - 8);
  MEMORY[0x28223BE20](v987);
  v929 = v827 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v931 = v827 - v20;
  v956 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E00, &qword_21E1484C8);
  MEMORY[0x28223BE20](v956);
  v958 = v827 - v21;
  v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E08, &qword_21E1484D0);
  MEMORY[0x28223BE20](v906);
  v910 = v827 - v22;
  v957 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E10, &qword_21E1484D8);
  MEMORY[0x28223BE20](v957);
  v912 = v827 - v23;
  v907 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E18, &unk_21E1484E0);
  MEMORY[0x28223BE20](v907);
  v862 = (v827 - v24);
  v25 = type metadata accessor for EventExtractionResult(0);
  MEMORY[0x28223BE20](v25 - 8);
  v861 = v827 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC8, &qword_21E1456D0);
  MEMORY[0x28223BE20](v27 - 8);
  v977 = v827 - v28;
  v1007 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E20, &qword_21E1484F0);
  MEMORY[0x28223BE20](v1007);
  v983 = v827 - v29;
  v976 = sub_21E13D344();
  v975 = *(v976 - 8);
  MEMORY[0x28223BE20](v976);
  v974 = v827 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1004 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E28, &qword_21E1484F8);
  MEMORY[0x28223BE20](v1004);
  v1005 = v827 - v31;
  v1028 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E30, &qword_21E148500);
  MEMORY[0x28223BE20](v1028);
  v1006 = v827 - v32;
  v949 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E38, &qword_21E148508);
  MEMORY[0x28223BE20](v949);
  v952 = v827 - v33;
  v897 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E40, &qword_21E148510);
  MEMORY[0x28223BE20](v897);
  v900 = v827 - v34;
  v950 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E48, &qword_21E148518);
  MEMORY[0x28223BE20](v950);
  v902 = v827 - v35;
  v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E50, &unk_21E148520);
  MEMORY[0x28223BE20](v913);
  v860 = (v827 - v36);
  v893 = sub_21E13DC14();
  v859 = *(v893 - 8);
  MEMORY[0x28223BE20](v893);
  v858 = v827 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD0, &qword_21E1456D8);
  MEMORY[0x28223BE20](v38 - 8);
  v973 = (v827 - v39);
  v1000 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E58, &qword_21E148530);
  MEMORY[0x28223BE20](v1000);
  v953 = v827 - v40;
  v947 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E60, &qword_21E148538);
  MEMORY[0x28223BE20](v947);
  v951 = v827 - v41;
  v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E68, &qword_21E148540);
  MEMORY[0x28223BE20](v896);
  v899 = (v827 - v42);
  v948 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E70, &qword_21E148548);
  MEMORY[0x28223BE20](v948);
  v901 = v827 - v43;
  v898 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E78, &unk_21E148550);
  MEMORY[0x28223BE20](v898);
  v856 = (v827 - v44);
  v45 = sub_21E13E614();
  v888 = *(v45 - 8);
  v889 = v45;
  MEMORY[0x28223BE20](v45);
  v855 = v827 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD8, &unk_21E1456E0);
  MEMORY[0x28223BE20](v47 - 8);
  v972 = (v827 - v48);
  v991 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E80, &qword_21E148560);
  MEMORY[0x28223BE20](v991);
  v986 = v827 - v49;
  v1019 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E88, &qword_21E148568);
  MEMORY[0x28223BE20](v1019);
  v1026 = v827 - v50;
  v1001 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E90, &qword_21E148570);
  MEMORY[0x28223BE20](v1001);
  v1002 = v827 - v51;
  v1025 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E98, &qword_21E148578);
  MEMORY[0x28223BE20](v1025);
  v1003 = v827 - v52;
  v1033 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EA0, &qword_21E148580);
  MEMORY[0x28223BE20](v1033);
  v1027 = v827 - v53;
  v982 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EA8, &qword_21E148588);
  MEMORY[0x28223BE20](v982);
  v954 = v827 - v54;
  v917 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EB0, &qword_21E148590);
  MEMORY[0x28223BE20](v917);
  v918 = (v827 - v55);
  v981 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EB8, &qword_21E148598);
  MEMORY[0x28223BE20](v981);
  v919 = v827 - v56;
  v999 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EC0, &qword_21E1485A0);
  MEMORY[0x28223BE20](v999);
  v955 = v827 - v57;
  v1018 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EC8, &qword_21E1485A8);
  MEMORY[0x28223BE20](v1018);
  v971 = v827 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v886 = v827 - v60;
  MEMORY[0x28223BE20](v61);
  v881 = v827 - v62;
  MEMORY[0x28223BE20](v63);
  v883 = v827 - v64;
  MEMORY[0x28223BE20](v65);
  v942 = v827 - v66;
  MEMORY[0x28223BE20](v67);
  v882 = v827 - v68;
  MEMORY[0x28223BE20](v69);
  v884 = v827 - v70;
  MEMORY[0x28223BE20](v71);
  v885 = v827 - v72;
  v1013 = sub_21E13F1B4();
  v73 = *(v1013 - 8);
  MEMORY[0x28223BE20](v1013);
  v943 = v827 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v857 = v827 - v76;
  MEMORY[0x28223BE20](v77);
  v895 = v827 - v78;
  MEMORY[0x28223BE20](v79);
  v940 = v827 - v80;
  MEMORY[0x28223BE20](v81);
  v853 = v827 - v82;
  MEMORY[0x28223BE20](v83);
  v939 = v827 - v84;
  MEMORY[0x28223BE20](v85);
  v854 = v827 - v86;
  MEMORY[0x28223BE20](v87);
  v935 = v827 - v88;
  MEMORY[0x28223BE20](v89);
  v941 = v827 - v90;
  MEMORY[0x28223BE20](v91);
  v887 = v827 - v92;
  v944 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7ED0, &qword_21E1485B0);
  MEMORY[0x28223BE20](v944);
  v946 = v827 - v93;
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7ED8, &qword_21E1485B8);
  MEMORY[0x28223BE20](v891);
  v892 = (v827 - v94);
  v945 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EE0, &qword_21E1485C0);
  MEMORY[0x28223BE20](v945);
  v894 = v827 - v95;
  v96 = sub_21E13DBC4();
  v851 = *(v96 - 8);
  v852 = v96;
  MEMORY[0x28223BE20](v96);
  v850 = v827 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v849 = v827 - v99;
  v890 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EE8, &qword_21E1485C8);
  MEMORY[0x28223BE20](v890);
  v880 = (v827 - v100);
  v847 = type metadata accessor for GeoLookupCardResult(0);
  MEMORY[0x28223BE20](v847);
  v926 = v827 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC0, &qword_21E1485D0);
  MEMORY[0x28223BE20](v102 - 8);
  v970 = (v827 - v103);
  v1011 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EF0, &qword_21E1485D8);
  MEMORY[0x28223BE20](v1011);
  v980 = v827 - v104;
  v1009 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EF8, &qword_21E1485E0);
  MEMORY[0x28223BE20](v1009);
  v1010 = v827 - v105;
  v1020 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F00, &qword_21E1485E8);
  MEMORY[0x28223BE20](v1020);
  v1012 = v827 - v106;
  v872 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F08, &qword_21E1485F0);
  MEMORY[0x28223BE20](v872);
  v873 = v827 - v107;
  v840 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F10, &qword_21E1485F8);
  MEMORY[0x28223BE20](v840);
  v841 = v827 - v108;
  v871 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F18, &qword_21E148600);
  MEMORY[0x28223BE20](v871);
  v842 = v827 - v109;
  v923 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F20, &qword_21E148608);
  MEMORY[0x28223BE20](v923);
  v874 = v827 - v110;
  v937 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F28, &qword_21E148610);
  MEMORY[0x28223BE20](v937);
  v938 = v827 - v111;
  v920 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F30, &qword_21E148618);
  MEMORY[0x28223BE20](v920);
  v921 = v827 - v112;
  v936 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F38, &qword_21E148620);
  MEMORY[0x28223BE20](v936);
  v922 = v827 - v113;
  v1008 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F40, &qword_21E148628);
  MEMORY[0x28223BE20](v1008);
  v965 = v827 - v114;
  v115 = sub_21E13D384();
  MEMORY[0x28223BE20](v115 - 8);
  v1016 = v827 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_21E1420E4();
  MEMORY[0x28223BE20](v117 - 8);
  v878 = v827 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v844 = v827 - v120;
  MEMORY[0x28223BE20](v121);
  v843 = v827 - v122;
  MEMORY[0x28223BE20](v123);
  v875 = v827 - v124;
  MEMORY[0x28223BE20](v125);
  v866 = v827 - v126;
  MEMORY[0x28223BE20](v127);
  v877 = v827 - v128;
  MEMORY[0x28223BE20](v129);
  v827[1] = v827 - v130;
  MEMORY[0x28223BE20](v131);
  v831 = v827 - v132;
  MEMORY[0x28223BE20](v133);
  v830 = v827 - v134;
  MEMORY[0x28223BE20](v135);
  v865 = v827 - v136;
  MEMORY[0x28223BE20](v137);
  v1015 = type metadata accessor for EmptyResultsView(0);
  MEMORY[0x28223BE20](v1015);
  v845 = (v827 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v139);
  v879 = (v827 - v140);
  MEMORY[0x28223BE20](v141);
  v846 = v827 - v142;
  MEMORY[0x28223BE20](v143);
  v933 = (v827 - v144);
  MEMORY[0x28223BE20](v145);
  v916 = (v827 - v146);
  MEMORY[0x28223BE20](v147);
  v836 = (v827 - v148);
  MEMORY[0x28223BE20](v149);
  v839 = (v827 - v150);
  MEMORY[0x28223BE20](v151);
  v838 = (v827 - v152);
  MEMORY[0x28223BE20](v153);
  v915 = (v827 - v154);
  MEMORY[0x28223BE20](v155);
  v995 = (v827 - v156);
  v1017 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F48, &qword_21E148630);
  MEMORY[0x28223BE20](v1017);
  v925 = (v827 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v158);
  v848 = v827 - v159;
  MEMORY[0x28223BE20](v160);
  v934 = v827 - v161;
  MEMORY[0x28223BE20](v162);
  v876 = v827 - v163;
  MEMORY[0x28223BE20](v164);
  v868 = v827 - v165;
  MEMORY[0x28223BE20](v166);
  v870 = v827 - v167;
  MEMORY[0x28223BE20](v168);
  v828 = v827 - v169;
  MEMORY[0x28223BE20](v170);
  v829 = v827 - v171;
  MEMORY[0x28223BE20](v172);
  v833 = v827 - v173;
  MEMORY[0x28223BE20](v174);
  v834 = v827 - v175;
  MEMORY[0x28223BE20](v176);
  v832 = v827 - v177;
  MEMORY[0x28223BE20](v178);
  v835 = v827 - v179;
  MEMORY[0x28223BE20](v180);
  v837 = (v827 - v181);
  MEMORY[0x28223BE20](v182);
  v867 = v827 - v183;
  MEMORY[0x28223BE20](v184);
  v869 = v827 - v185;
  MEMORY[0x28223BE20](v186);
  v968 = v827 - v187;
  v994 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F50, &qword_21E148638);
  MEMORY[0x28223BE20](v994);
  v967 = v827 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v189);
  v969 = v827 - v190;
  v1034 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F58, &qword_21E148640);
  MEMORY[0x28223BE20](v1034);
  v1036 = v827 - v191;
  v1029 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F60, &qword_21E148648);
  MEMORY[0x28223BE20](v1029);
  v1031 = v827 - v192;
  v1021 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F68, &qword_21E148650);
  MEMORY[0x28223BE20](v1021);
  v1023 = v827 - v193;
  v992 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F70, &qword_21E148658);
  MEMORY[0x28223BE20](v992);
  v195 = v827 - v194;
  v1022 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F78, &qword_21E148660);
  MEMORY[0x28223BE20](v1022);
  v993 = v827 - v196;
  v1030 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F80, &qword_21E148668);
  MEMORY[0x28223BE20](v1030);
  v1024 = v827 - v197;
  v1035 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F88, &qword_21E148670);
  MEMORY[0x28223BE20](v1035);
  v1032 = v827 - v198;
  v924 = type metadata accessor for CardContainer(0);
  v199 = *(v924 + 28);
  v988 = v1;
  v200 = *(v1 + v199);
  swift_getKeyPath();
  v201 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v1045 = v200;
  v202 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v1041 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v203 = *(v200 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v1039 = v200;
  v1040 = v202;
  v1014 = v73;
  if (v203)
  {
    v204 = v201;
    v205 = v203;
  }

  else
  {
    swift_getKeyPath();
    *&v1045 = v200;
    v204 = v201;
    sub_21E13D3C4();

    v206 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v205 = *(v200 + v206);
  }

  swift_getKeyPath();
  *&v1045 = v205;
  v207 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  v208 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v209 = *(v205 + v208);
  sub_21DF5706C(v209);

  if (v209 <= 3)
  {
    if (v209 > 1)
    {
      v219 = v1039;
      if (v209 != 2)
      {
        swift_getKeyPath();
        *&v1045 = v219;
        sub_21E13D3C4();

        if (*&v1041[v219])
        {
          v220 = *&v1041[v219];
        }

        else
        {
          swift_getKeyPath();
          *&v1045 = v219;
          sub_21E13D3C4();

          v262 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v220 = *(v219 + v262);
        }

        swift_getKeyPath();
        v1044[0] = v220;

        sub_21E13D3C4();

        v263 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v264 = *(v220 + v263);

        swift_getKeyPath();
        v1058[0] = v264;
        sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
        sub_21E13D3C4();

        v265 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
        swift_beginAccess();
        v266 = v972;
        sub_21DF236C0(v264 + v265, v972, &qword_27CEA6CD8, &unk_21E1456E0);

        v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98, &unk_21E145680);
        if ((*(*(v267 - 8) + 48))(v266, 1, v267) == 1)
        {
          sub_21DF8B37C();
          v1057 = 0uLL;
          sub_21E141164();
          sub_21E13EBE4();
          v268 = sub_21E13F1A4();
          v269 = sub_21E142544();
          if (os_log_type_enabled(v268, v269))
          {
            v270 = swift_slowAlloc();
            v271 = swift_slowAlloc();
            *&v1057 = v271;
            *v270 = 136315138;
            *(v270 + 4) = sub_21E0E08C0(0xD000000000000057, 0x800000021E15BC30, &v1057);
            _os_log_impl(&dword_21DF05000, v268, v269, "%s", v270, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v271);
            MEMORY[0x223D540B0](v271, -1, -1);
            MEMORY[0x223D540B0](v270, -1, -1);
          }

          v272 = v1014;
          v273 = v1013;
          v274 = v1002;
          v275 = v942;
          v276 = v882;
          sub_21DF236C0(v942, v882, &qword_27CEA7EC8, &qword_21E1485A8);
          (*(v272 + 8))(v939, v273);
          sub_21DF23614(v275, &qword_27CEA7EC8, &qword_21E1485A8);
          sub_21DF236C0(v276, v951, &qword_27CEA7EC8, &qword_21E1485A8);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BE3C();
          sub_21DF8B2C0();
          v277 = v986;
          sub_21E1402F4();
          sub_21DF23614(v276, &qword_27CEA7EC8, &qword_21E1485A8);
        }

        else if (swift_getEnumCaseMultiPayload() == 1)
        {
          v1024 = *v266;
          sub_21E142084();
          sub_21DF23B80();
          if (!sub_21E1426B4())
          {
            v278 = [objc_opt_self() mainBundle];
          }

          sub_21E13D374();
          v1023 = sub_21E142184();
          v1022 = v279;
          swift_getKeyPath();
          v280 = v1039;
          *&v1057 = v1039;
          sub_21E13D3C4();

          if (*&v1041[v280])
          {
            v281 = *&v1041[v280];
          }

          else
          {
            swift_getKeyPath();
            *&v1057 = v280;
            sub_21E13D3C4();

            v674 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v281 = *(v280 + v674);
          }

          swift_getKeyPath();
          v1056[0] = v281;

          sub_21E13D3C4();

          v675 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v676 = *(v281 + v675);

          v677 = *(v676 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1055[0] = v280;
          sub_21E13D3C4();

          if (*&v1041[v280])
          {
            v678 = *&v1041[v280];
          }

          else
          {
            swift_getKeyPath();
            v1055[0] = v280;
            sub_21E13D3C4();

            v679 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v678 = *(v280 + v679);
          }

          swift_getKeyPath();
          v1054[0] = v678;

          sub_21E13D3C4();

          v680 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v681 = *(v678 + v680);

          v682 = *(v681 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          v683 = sub_21E140914();
          LOBYTE(v1051) = 0;
          v684 = v854;
          sub_21E13EBE4();
          v685 = sub_21E13F1A4();
          v686 = sub_21E142564();
          if (os_log_type_enabled(v685, v686))
          {
            v687 = swift_slowAlloc();
            v688 = swift_slowAlloc();
            v1052 = v688;
            *v687 = 136315138;
            *(v687 + 4) = sub_21E0E08C0(0xD000000000000035, 0x800000021E15BCC0, &v1052);
            _os_log_impl(&dword_21DF05000, v685, v686, "%s", v687, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v688);
            MEMORY[0x223D540B0](v688, -1, -1);
            MEMORY[0x223D540B0](v687, -1, -1);
          }

          v274 = v1002;
          v277 = v986;
          (*(v1014 + 8))(v684, v1013);
          v689 = v899;
          v690 = v1022;
          *v899 = v1023;
          v689[1] = v690;
          *(v689 + 16) = v683;
          v689[3] = v677;
          v689[4] = 0;
          v689[5] = v682;
          v689[6] = 0;
          *(v689 + 56) = 0;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048, &qword_21E148680);
          sub_21DF23E5C(&qword_27CEA8088, &qword_27CEA7E78, &unk_21E148550, MEMORY[0x277CE1198]);
          sub_21DF8BAA0();
          v691 = v901;
          sub_21E1402F4();
          sub_21DF236C0(v691, v951, &qword_27CEA7E70, &qword_21E148548);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BE3C();
          sub_21DF8B2C0();
          sub_21E1402F4();

          sub_21DF23614(v691, &qword_27CEA7E70, &qword_21E148548);
        }

        else
        {
          v498 = v855;
          (*(v888 + 32))(v855, v266, v889);
          v499 = sub_21E13E604();
          v501 = v500;
          v502 = sub_21E1401C4();
          v503 = v856;
          *v856 = v502;
          *(v503 + 8) = 0;
          *(v503 + 16) = 0;
          v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80F8, &qword_21E148760);
          sub_21DF7F620(v498, v499, v501, v988, (v503 + *(v504 + 44)));

          sub_21DF236C0(v503, v899, &qword_27CEA7E78, &unk_21E148550);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048, &qword_21E148680);
          sub_21DF23E5C(&qword_27CEA8088, &qword_27CEA7E78, &unk_21E148550, MEMORY[0x277CE1198]);
          sub_21DF8BAA0();
          v505 = v901;
          sub_21E1402F4();
          sub_21DF236C0(v505, v951, &qword_27CEA7E70, &qword_21E148548);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BE3C();
          sub_21DF8B2C0();
          sub_21E1402F4();
          sub_21DF23614(v505, &qword_27CEA7E70, &qword_21E148548);
          v506 = v503;
          v277 = v986;
          sub_21DF23614(v506, &qword_27CEA7E78, &unk_21E148550);
          (*(v888 + 8))(v498, v889);
          v274 = v1002;
        }

        v214 = &qword_27CEA7E80;
        v215 = &qword_21E148560;
        sub_21DF236C0(v277, v274, &qword_27CEA7E80, &qword_21E148560);
        swift_storeEnumTagMultiPayload();
        sub_21DF8BC98();
        sub_21DF8BDB0();
        v692 = v1003;
        sub_21E1402F4();
        v693 = &qword_27CEA7E98;
        v694 = &qword_21E148578;
        sub_21DF236C0(v692, v1026, &qword_27CEA7E98, &qword_21E148578);
        goto LABEL_197;
      }

      swift_getKeyPath();
      *&v1045 = v219;
      sub_21E13D3C4();

      if (*&v1041[v219])
      {
        v235 = *&v1041[v219];
      }

      else
      {
        swift_getKeyPath();
        *&v1045 = v219;
        sub_21E13D3C4();

        v318 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v235 = *(v219 + v318);
      }

      swift_getKeyPath();
      v1044[0] = v235;

      sub_21E13D3C4();

      v319 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v320 = *(v235 + v319);

      swift_getKeyPath();
      v1058[0] = v320;
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
      sub_21E13D3C4();

      v322 = *(v320 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text);
      v321 = *(v320 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 8);
      v323 = *(v320 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 16);
      sub_21DF3563C(v322, v321, *(v320 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 16));

      if (v323 == 255)
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v356 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v357 = sub_21E142184();
        v359 = v358;
        KeyPath = swift_getKeyPath();
        v361 = v933;
        *v933 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
        swift_storeEnumTagMultiPayload();
        v362 = v1015;
        v363 = (v361 + *(v1015 + 24));
        *v363 = v357;
        v363[1] = v359;
        v364 = (v361 + v362[7]);
        *v364 = 0;
        v364[1] = 0;
        v365 = (v361 + v362[8]);
        *v365 = 0;
        v365[1] = 0;
        *(v361 + v362[5]) = 0x402C000000000000;
        swift_getKeyPath();
        v1058[0] = v219;
        sub_21E13D3C4();

        if (*&v1041[v219])
        {
          v366 = *&v1041[v219];
        }

        else
        {
          swift_getKeyPath();
          v1058[0] = v219;
          sub_21E13D3C4();

          v551 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v366 = *(v219 + v551);
        }

        swift_getKeyPath();
        *&v1057 = v366;

        sub_21E13D3C4();

        v552 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v553 = *(v366 + v552);

        v554 = *(v553 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1056[0] = v219;
        sub_21E13D3C4();

        if (*&v1041[v219])
        {
          v555 = *&v1041[v219];
        }

        else
        {
          swift_getKeyPath();
          v1056[0] = v219;
          sub_21E13D3C4();

          v556 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v555 = *(v219 + v556);
        }

        v557 = v1002;
        swift_getKeyPath();
        v1055[0] = v555;

        sub_21E13D3C4();

        v558 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v559 = *(v555 + v558);

        v560 = *(v559 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v559) = sub_21E140914();
        v561 = v934;
        sub_21DF8C494(v933, v934, type metadata accessor for EmptyResultsView);
        v562 = v561 + *(v1017 + 36);
        *v562 = v559;
        *(v562 + 8) = v554;
        *(v562 + 16) = 0;
        *(v562 + 24) = v560;
        *(v562 + 32) = 0;
        *(v562 + 40) = 0;
        sub_21E13EBE4();
        v563 = sub_21E13F1A4();
        v564 = sub_21E142564();
        if (os_log_type_enabled(v563, v564))
        {
          v565 = swift_slowAlloc();
          v566 = swift_slowAlloc();
          v1054[0] = v566;
          *v565 = 136315138;
          *(v565 + 4) = sub_21E0E08C0(0xD000000000000030, 0x800000021E15BD30, v1054);
          _os_log_impl(&dword_21DF05000, v563, v564, "%s", v565, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v566);
          MEMORY[0x223D540B0](v566, -1, -1);
          MEMORY[0x223D540B0](v565, -1, -1);
        }

        v567 = v1014;
        v568 = v1013;
        v352 = v955;
        v569 = v954;
        v570 = v934;
        v571 = v876;
        sub_21DF236C0(v934, v876, &qword_27CEA7F48, &qword_21E148630);
        (*(v567 + 8))(v935, v568);
        sub_21DF23614(v570, &qword_27CEA7F48, &qword_21E148630);
        sub_21DF236C0(v571, v569, &qword_27CEA7F48, &qword_21E148630);
        swift_storeEnumTagMultiPayload();
        sub_21DF8BD24();
        sub_21DF8B204();
        sub_21E1402F4();
        sub_21DF23614(v571, &qword_27CEA7F48, &qword_21E148630);
      }

      else
      {
        v1023 = v321;
        v1024 = v322;
        if (v323)
        {
          v984 = v207;
          sub_21E142084();
          sub_21DF23B80();
          if (!sub_21E1426B4())
          {
            v324 = [objc_opt_self() mainBundle];
          }

          sub_21E13D374();
          v325 = sub_21E142184();
          v327 = v326;
          swift_getErrorValue();
          v328 = sub_21E142BC4();
          v330 = v329;
          v331 = swift_getKeyPath();
          v332 = v916;
          *v916 = v331;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
          swift_storeEnumTagMultiPayload();
          v333 = v1015;
          v334 = (v332 + *(v1015 + 24));
          *v334 = v325;
          v334[1] = v327;
          v335 = (v332 + v333[7]);
          *v335 = v328;
          v335[1] = v330;
          v336 = (v332 + v333[8]);
          *v336 = 0;
          v336[1] = 0;
          *(v332 + v333[5]) = 0x402C000000000000;
          swift_getKeyPath();
          v337 = v1039;
          v1058[0] = v1039;
          sub_21E13D3C4();

          if (*&v1041[v337])
          {
            v338 = *&v1041[v337];
          }

          else
          {
            swift_getKeyPath();
            v1058[0] = v337;
            sub_21E13D3C4();

            v613 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v338 = *(v337 + v613);
          }

          swift_getKeyPath();
          *&v1057 = v338;

          sub_21E13D3C4();

          v614 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v615 = *(v338 + v614);

          v616 = *(v615 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1056[0] = v337;
          sub_21E13D3C4();

          if (*&v1041[v337])
          {
            v617 = *&v1041[v337];
          }

          else
          {
            swift_getKeyPath();
            v1056[0] = v337;
            sub_21E13D3C4();

            v623 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v617 = *(v337 + v623);
          }

          swift_getKeyPath();
          v1055[0] = v617;

          sub_21E13D3C4();

          v624 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v625 = *(v617 + v624);

          v626 = *(v625 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          LOBYTE(v625) = sub_21E140914();
          v627 = v868;
          sub_21DF8C494(v916, v868, type metadata accessor for EmptyResultsView);
          v628 = v627 + *(v1017 + 36);
          *v628 = v625;
          *(v628 + 8) = v616;
          *(v628 + 16) = 0;
          *(v628 + 24) = v626;
          *(v628 + 32) = 0;
          *(v628 + 40) = 0;
          v629 = v870;
          sub_21DF3DE9C(v627, v870, &qword_27CEA7F48, &qword_21E148630);
          sub_21DF236C0(v629, v918, &qword_27CEA7F48, &qword_21E148630);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048, &qword_21E148680);
          sub_21DF8BAA0();
          sub_21DF8B204();
          v630 = v919;
          sub_21E1402F4();
          sub_21DF236C0(v630, v954, &qword_27CEA7EB8, &qword_21E148598);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BD24();
          v631 = v955;
          sub_21E1402F4();
          sub_21DF34730(v1024, v1023, v323);
          v352 = v631;
          sub_21DF23614(v630, &qword_27CEA7EB8, &qword_21E148598);
          v632 = v629;
          v633 = &qword_27CEA7F48;
          v634 = &qword_21E148630;
        }

        else
        {
          swift_getKeyPath();
          v1058[0] = v219;
          sub_21E13D3C4();

          if (*&v1041[v219])
          {
            v476 = *&v1041[v219];
          }

          else
          {
            swift_getKeyPath();
            v1058[0] = v219;
            sub_21E13D3C4();

            v618 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v476 = *(v219 + v618);
          }

          swift_getKeyPath();
          *&v1057 = v476;

          sub_21E13D3C4();

          v619 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v620 = *(v476 + v619);

          v621 = *(v620 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1056[0] = v219;
          sub_21E13D3C4();

          if (*&v1041[v219])
          {
            v622 = *&v1041[v219];
          }

          else
          {
            swift_getKeyPath();
            v1056[0] = v219;
            sub_21E13D3C4();

            v635 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v622 = *(v219 + v635);
          }

          swift_getKeyPath();
          v1055[0] = v622;

          sub_21E13D3C4();

          v636 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v637 = *(v622 + v636);

          v638 = *(v637 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          v639 = sub_21E140914();
          LOBYTE(v1054[0]) = 0;
          v640 = v918;
          v641 = v1023;
          *v918 = v1024;
          v640[1] = v641;
          *(v640 + 16) = v639;
          v640[3] = v621;
          v640[4] = 0;
          v640[5] = v638;
          v640[6] = 0;
          *(v640 + 56) = 0;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048, &qword_21E148680);
          sub_21DF8BAA0();
          sub_21DF8B204();
          v642 = v919;
          sub_21E1402F4();
          sub_21DF236C0(v642, v954, &qword_27CEA7EB8, &qword_21E148598);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BD24();
          v352 = v955;
          sub_21E1402F4();
          v632 = v642;
          v633 = &qword_27CEA7EB8;
          v634 = &qword_21E148598;
        }

        sub_21DF23614(v632, v633, v634);
        v557 = v1002;
      }

      v350 = &qword_27CEA7EC0;
      v351 = &qword_21E1485A0;
      sub_21DF236C0(v352, v557, &qword_27CEA7EC0, &qword_21E1485A0);
      swift_storeEnumTagMultiPayload();
      sub_21DF8BC98();
      sub_21DF8BDB0();
      v526 = v1003;
      sub_21E1402F4();
      v527 = &qword_27CEA7E98;
      v528 = &qword_21E148578;
      sub_21DF236C0(v526, v1026, &qword_27CEA7E98, &qword_21E148578);
      swift_storeEnumTagMultiPayload();
      sub_21DF8BC0C();
      sub_21DF8BEF4();
LABEL_158:
      v643 = v1027;
      sub_21E1402F4();
      sub_21DF23614(v526, v527, v528);
      sub_21DF236C0(v643, v1031, &qword_27CEA7EA0, &qword_21E148580);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B45C();
      sub_21DF8BB80();
      v355 = v1032;
      sub_21E1402F4();
      sub_21DF23614(v643, &qword_27CEA7EA0, &qword_21E148580);
LABEL_159:
      sub_21DF236C0(v355, v1036, &qword_27CEA7F88, &qword_21E148670);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B3D0();
      sub_21DF8C3C4();
      sub_21E1402F4();
      sub_21DF23614(v355, &qword_27CEA7F88, &qword_21E148670);
      v644 = v352;
LABEL_187:
      v720 = v350;
      return sub_21DF23614(v644, v720, v351);
    }

    v217 = v1039;
    if (!v209)
    {
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v223 = [objc_opt_self() mainBundle];
      }

      v984 = v207;
      sub_21E13D374();
      v224 = sub_21E142184();
      v226 = v225;
      v227 = swift_getKeyPath();
      v228 = v995;
      *v995 = v227;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v229 = v1015;
      v230 = (v228 + *(v1015 + 24));
      *v230 = v224;
      v230[1] = v226;
      v231 = (v228 + v229[7]);
      *v231 = 0;
      v231[1] = 0;
      v232 = (v228 + v229[8]);
      *v232 = 0;
      v232[1] = 0;
      *(v228 + v229[5]) = 0x402C000000000000;
      swift_getKeyPath();
      v233 = v1039;
      *&v1045 = v1039;
      sub_21E13D3C4();

      if (*&v1041[v233])
      {
        v234 = *&v1041[v233];
      }

      else
      {
        swift_getKeyPath();
        *&v1045 = v233;
        sub_21E13D3C4();

        v314 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v234 = *(v233 + v314);
      }

      swift_getKeyPath();
      *&v1045 = v234;

      sub_21E13D3C4();

      v315 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v316 = *(v234 + v315);

      v1028 = *(v316 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

      swift_getKeyPath();
      *&v1045 = v233;
      sub_21E13D3C4();

      if (*&v1041[v233])
      {
        v317 = *&v1041[v233];
      }

      else
      {
        swift_getKeyPath();
        *&v1045 = v233;
        sub_21E13D3C4();

        v339 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v317 = *(v233 + v339);
      }

      v340 = v994;
      swift_getKeyPath();
      *&v1045 = v317;

      sub_21E13D3C4();

      v341 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v342 = *(v317 + v341);

      v343 = *(v342 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

      LOBYTE(v342) = sub_21E140914();
      v344 = v968;
      sub_21DF8C494(v995, v968, type metadata accessor for EmptyResultsView);
      v345 = v344 + *(v1017 + 36);
      *v345 = v342;
      *(v345 + 8) = v1028;
      *(v345 + 16) = 0;
      *(v345 + 24) = v343;
      *(v345 + 32) = 0;
      *(v345 + 40) = 0;
      sub_21E141CB4();
      sub_21E13F664();
      v346 = v344;
      v347 = v967;
      sub_21DF3DE9C(v346, v967, &qword_27CEA7F48, &qword_21E148630);
      v348 = (v347 + *(v340 + 36));
      v349 = v1046;
      *v348 = v1045;
      v348[1] = v349;
      v348[2] = v1047;
      v350 = &qword_27CEA7F50;
      v351 = &qword_21E148638;
      v352 = v969;
      sub_21DF3DE9C(v347, v969, &qword_27CEA7F50, &qword_21E148638);
      sub_21DF236C0(v352, v195, &qword_27CEA7F50, &qword_21E148638);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B574();
      v353 = v993;
      sub_21E1402F4();
      sub_21DF236C0(v353, v1023, &qword_27CEA7F78, &qword_21E148660);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B4E8();
      sub_21DF8B600();
      v354 = v1024;
      sub_21E1402F4();
      sub_21DF23614(v353, &qword_27CEA7F78, &qword_21E148660);
      sub_21DF236C0(v354, v1031, &qword_27CEA7F80, &qword_21E148668);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B45C();
      sub_21DF8BB80();
      v355 = v1032;
      sub_21E1402F4();
      sub_21DF23614(v354, &qword_27CEA7F80, &qword_21E148668);
      goto LABEL_159;
    }

    if (v209 != 1)
    {
      goto LABEL_33;
    }

    swift_getKeyPath();
    *&v1045 = v217;
    sub_21E13D3C4();

    if (*&v1041[v217])
    {
      v218 = *&v1041[v217];
    }

    else
    {
      swift_getKeyPath();
      *&v1045 = v217;
      sub_21E13D3C4();

      v243 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v218 = *(v217 + v243);
    }

    swift_getKeyPath();
    *&v1045 = v218;

    sub_21E13D3C4();

    v244 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v245 = *(v218 + v244);

    swift_getKeyPath();
    *&v1045 = v245;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v246 = *(v245 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback);
    v247 = *(v245 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8);
    sub_21DF355B8(v246, *(v245 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8));

    v984 = v207;
    if (v247 != 255)
    {
      if (v247)
      {
        v1028 = v246;
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v248 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v249 = sub_21E142184();
        v251 = v250;
        swift_getErrorValue();
        v252 = sub_21E142BC4();
        v254 = v253;
        v255 = swift_getKeyPath();
        v256 = v915;
        *v915 = v255;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
        swift_storeEnumTagMultiPayload();
        v257 = v1015;
        v258 = (v256 + *(v1015 + 24));
        *v258 = v249;
        v258[1] = v251;
        v259 = (v256 + v257[7]);
        *v259 = v252;
        v259[1] = v254;
        v260 = (v256 + v257[8]);
        *v260 = 0;
        v260[1] = 0;
        *(v256 + v257[5]) = 0x402C000000000000;
        swift_getKeyPath();
        *&v1045 = v217;
        sub_21E13D3C4();

        if (*&v1041[v217])
        {
          v261 = *&v1041[v217];
        }

        else
        {
          swift_getKeyPath();
          *&v1045 = v217;
          sub_21E13D3C4();

          v596 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v261 = *(v217 + v596);
        }

        swift_getKeyPath();
        v1044[0] = v261;

        sub_21E13D3C4();

        v597 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v598 = *(v261 + v597);

        v599 = *(v598 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1056[0] = v217;
        sub_21E13D3C4();

        if (*&v1041[v217])
        {
          v600 = *&v1041[v217];
        }

        else
        {
          swift_getKeyPath();
          v1056[0] = v217;
          sub_21E13D3C4();

          v601 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v600 = *(v217 + v601);
        }

        v602 = v915;
        swift_getKeyPath();
        v1055[0] = v600;

        sub_21E13D3C4();

        v603 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v604 = *(v600 + v603);

        v605 = *(v604 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v604) = sub_21E140914();
        v606 = v602;
        v607 = v867;
        sub_21DF8C494(v606, v867, type metadata accessor for EmptyResultsView);
        v608 = v607 + *(v1017 + 36);
        *v608 = v604;
        *(v608 + 8) = v599;
        *(v608 + 16) = 0;
        *(v608 + 24) = v605;
        *(v608 + 32) = 0;
        *(v608 + 40) = 0;
        v609 = v869;
        sub_21DF3DE9C(v607, v869, &qword_27CEA7F48, &qword_21E148630);
        sub_21DF236C0(v609, v921, &qword_27CEA7F48, &qword_21E148630);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B204();
        sub_21DF8B84C();
        v610 = v922;
        sub_21E1402F4();
        sub_21DF236C0(v610, v938, &qword_27CEA7F38, &qword_21E148620);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B7C0();
        v611 = v965;
        sub_21E1402F4();
        sub_21DF34758(v1028, v247);
        sub_21DF23614(v610, &qword_27CEA7F38, &qword_21E148620);
        v612 = v609;
LABEL_228:
        sub_21DF23614(v612, &qword_27CEA7F48, &qword_21E148630);
        v824 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8008, &qword_21E148678);
        (*(*(v824 - 8) + 56))(v611, 0, 1, v824);
        goto LABEL_229;
      }

      sub_21DF34758(v246, v247);
    }

    swift_getKeyPath();
    *&v1045 = v217;
    sub_21E13D3C4();

    v474 = *&v1041[v217];
    v827[0] = v204;
    if (v474)
    {
      v475 = v474;
    }

    else
    {
      swift_getKeyPath();
      *&v1045 = v217;
      sub_21E13D3C4();

      v477 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v475 = *(v217 + v477);
    }

    swift_getKeyPath();
    *&v1045 = v475;

    sub_21E13D3C4();

    v478 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v479 = *(v475 + v478);

    swift_getKeyPath();
    *&v1045 = v479;
    sub_21E13D3C4();

    v480 = *(v479 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme);
    v481 = *(v479 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8);
    v483 = *(v479 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16);
    v482 = *(v479 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24);
    v484 = *(v479 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32);
    sub_21DF356CC(v480, v481, v483, v482, v484);

    if (v484 >> 8 <= 0xFE && (v484 & 0x100) != 0)
    {
      v1028 = v480;
      v1027 = v483;
      v1026 = v481;
      if (v484)
      {
        if (v484 == 1)
        {
          *&v1045 = v480;
          *(&v1045 + 1) = v481;
          *&v1046 = v483;
          *(&v1046 + 1) = v482;
          LOBYTE(v1047) = 1;
          sub_21DF34830();
          v485 = sub_21E142BC4();
          v487 = v486;
          v488 = swift_getKeyPath();
          v489 = v837;
          *v837 = v488;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
          swift_storeEnumTagMultiPayload();
          v490 = v1015;
          v491 = (v489 + *(v1015 + 24));
          *v491 = v485;
          v491[1] = v487;
          v492 = (v489 + v490[7]);
          *v492 = v483;
          v492[1] = v482;
          v493 = (v489 + v490[8]);
          *v493 = 0;
          v493[1] = 0;
          *(v489 + v490[5]) = 0x402C000000000000;
          swift_getKeyPath();
          v494 = v1039;
          *&v1045 = v1039;
          v1025 = v482;

          sub_21E13D3C4();

          if (*&v1041[v494])
          {
            v495 = *&v1041[v494];
          }

          else
          {
            swift_getKeyPath();
            *&v1045 = v494;
            sub_21E13D3C4();

            v768 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v495 = *(v494 + v768);
          }

          swift_getKeyPath();
          v1044[0] = v495;

          sub_21E13D3C4();

          v769 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v770 = *(v495 + v769);

          v771 = *(v770 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1054[0] = v494;
          sub_21E13D3C4();

          if (*&v1041[v494])
          {
            v772 = *&v1041[v494];
          }

          else
          {
            swift_getKeyPath();
            v1054[0] = v494;
            sub_21E13D3C4();

            v773 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v772 = *(v494 + v773);
          }

          v774 = v1012;
          swift_getKeyPath();
          v1052 = v772;

          sub_21E13D3C4();

          v775 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v776 = *(v772 + v775);

          v777 = *(v776 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          v778 = sub_21E140914();
          v779 = v837;
          v780 = v837 + *(v1017 + 36);
          *v780 = v778;
          *(v780 + 1) = v771;
          *(v780 + 2) = 0;
          *(v780 + 3) = v777;
          *(v780 + 4) = 0;
          v780[40] = 0;
          sub_21DF236C0(v779, v841, &qword_27CEA7F48, &qword_21E148630);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B204();
          v781 = v842;
          sub_21E1402F4();
          sub_21DF236C0(v781, v873, &qword_27CEA7F18, &qword_21E148600);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B8D8();
          v782 = v874;
          sub_21E1402F4();
          sub_21DF346A0(v1028, v1026, v1027, v1025, v484);
          sub_21DF23614(v781, &qword_27CEA7F18, &qword_21E148600);
          v783 = v779;
        }

        else
        {
          LODWORD(v1019) = v484;
          sub_21E142084();
          sub_21DF23B80();
          if (!sub_21E1426B4())
          {
            v659 = [objc_opt_self() mainBundle];
          }

          sub_21E13D374();
          v660 = sub_21E142184();
          v662 = v661;
          v663 = swift_getKeyPath();
          v664 = v839;
          *v839 = v663;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
          swift_storeEnumTagMultiPayload();
          v665 = v1015;
          v666 = (v664 + *(v1015 + 24));
          *v666 = v660;
          v666[1] = v662;
          v667 = (v664 + v665[7]);
          v668 = v1028;
          *v667 = v1028;
          v667[1] = v481;
          v669 = (v664 + v665[8]);
          *v669 = 0;
          v669[1] = 0;
          *(v664 + v665[5]) = 0x402C000000000000;
          swift_getKeyPath();
          v670 = v481;
          v671 = v1039;
          *&v1045 = v1039;
          sub_21DF356E4(v668, v670, v483, v482, 2, 1);
          sub_21E13D3C4();

          if (*&v1041[v671])
          {
            v672 = *&v1041[v671];
          }

          else
          {
            swift_getKeyPath();
            *&v1045 = v671;
            sub_21E13D3C4();

            v798 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v672 = *(v671 + v798);
          }

          swift_getKeyPath();
          v1044[0] = v672;

          sub_21E13D3C4();

          v799 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v800 = *(v672 + v799);

          v801 = *(v800 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1054[0] = v671;
          sub_21E13D3C4();

          if (*&v1041[v671])
          {
            v802 = *&v1041[v671];
          }

          else
          {
            swift_getKeyPath();
            v1054[0] = v671;
            sub_21E13D3C4();

            v803 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v802 = *(v671 + v803);
          }

          v774 = v1012;
          swift_getKeyPath();
          v1052 = v802;

          sub_21E13D3C4();

          v804 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v805 = *(v802 + v804);

          v806 = *(v805 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          LOBYTE(v805) = sub_21E140914();
          v807 = v833;
          sub_21DF8C494(v839, v833, type metadata accessor for EmptyResultsView);
          v808 = v807 + *(v1017 + 36);
          *v808 = v805;
          *(v808 + 8) = v801;
          *(v808 + 16) = 0;
          *(v808 + 24) = v806;
          *(v808 + 32) = 0;
          *(v808 + 40) = 0;
          v809 = v834;
          sub_21DF3DE9C(v807, v834, &qword_27CEA7F48, &qword_21E148630);
          sub_21DF236C0(v809, v873, &qword_27CEA7F48, &qword_21E148630);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B8D8();
          sub_21DF8B204();
          v782 = v874;
          sub_21E1402F4();
          sub_21DF346A0(v1028, v1026, v1027, v482, v1019);
          v783 = v809;
        }
      }

      else
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v645 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v646 = sub_21E142184();
        v648 = v647;
        v649 = swift_getKeyPath();
        v650 = v838;
        *v838 = v649;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
        swift_storeEnumTagMultiPayload();
        v651 = v1015;
        v652 = (v650 + *(v1015 + 24));
        *v652 = v646;
        v652[1] = v648;
        v653 = (v650 + v651[7]);
        v654 = v1028;
        *v653 = v1028;
        v653[1] = v481;
        v655 = (v650 + v651[8]);
        *v655 = 0;
        v655[1] = 0;
        *(v650 + v651[5]) = 0x402C000000000000;
        swift_getKeyPath();
        v656 = v481;
        v657 = v1039;
        *&v1045 = v1039;
        v1025 = v482;
        sub_21DF356E4(v654, v656, v483, v482, 0, 1);
        sub_21E13D3C4();

        if (*&v1041[v657])
        {
          v658 = *&v1041[v657];
        }

        else
        {
          swift_getKeyPath();
          *&v1045 = v657;
          sub_21E13D3C4();

          v784 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v658 = *(v657 + v784);
        }

        swift_getKeyPath();
        v1044[0] = v658;

        sub_21E13D3C4();

        v785 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v786 = *(v658 + v785);

        v787 = *(v786 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1054[0] = v657;
        sub_21E13D3C4();

        v788 = *&v1041[v657];
        LODWORD(v1019) = v484;
        if (v788)
        {
          v789 = v788;
        }

        else
        {
          swift_getKeyPath();
          v1054[0] = v657;
          sub_21E13D3C4();

          v790 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v789 = *(v657 + v790);
        }

        v774 = v1012;
        swift_getKeyPath();
        v1052 = v789;

        sub_21E13D3C4();

        v791 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v792 = *(v789 + v791);

        v793 = *(v792 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v792) = sub_21E140914();
        v794 = v832;
        sub_21DF8C494(v838, v832, type metadata accessor for EmptyResultsView);
        v795 = v794 + *(v1017 + 36);
        *v795 = v792;
        *(v795 + 8) = v787;
        *(v795 + 16) = 0;
        *(v795 + 24) = v793;
        *(v795 + 32) = 0;
        *(v795 + 40) = 0;
        v796 = v835;
        sub_21DF3DE9C(v794, v835, &qword_27CEA7F48, &qword_21E148630);
        sub_21DF236C0(v796, v841, &qword_27CEA7F48, &qword_21E148630);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B204();
        v797 = v842;
        sub_21E1402F4();
        sub_21DF236C0(v797, v873, &qword_27CEA7F18, &qword_21E148600);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B8D8();
        v782 = v874;
        sub_21E1402F4();
        sub_21DF346A0(v1028, v1026, v1027, v1025, v1019);
        sub_21DF23614(v797, &qword_27CEA7F18, &qword_21E148600);
        v783 = v796;
      }

      sub_21DF23614(v783, &qword_27CEA7F48, &qword_21E148630);
      sub_21DF236C0(v782, v921, &qword_27CEA7F20, &qword_21E148608);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B204();
      sub_21DF8B84C();
      v810 = v922;
      sub_21E1402F4();
      sub_21DF236C0(v810, v938, &qword_27CEA7F38, &qword_21E148620);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B7C0();
      v611 = v965;
      sub_21E1402F4();
      sub_21DF23614(v810, &qword_27CEA7F38, &qword_21E148620);
      sub_21DF23614(v782, &qword_27CEA7F20, &qword_21E148608);
      v811 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8008, &qword_21E148678);
      (*(*(v811 - 8) + 56))(v611, 0, 1, v811);
      goto LABEL_230;
    }

    swift_getKeyPath();
    v496 = v1039;
    *&v1045 = v1039;
    sub_21E13D3C4();

    if (*&v1041[v496])
    {
      v497 = *&v1041[v496];
    }

    else
    {
      swift_getKeyPath();
      *&v1045 = v496;
      sub_21E13D3C4();

      v572 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v497 = *(v496 + v572);
    }

    swift_getKeyPath();
    v1044[0] = v497;

    sub_21E13D3C4();

    v573 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v574 = *(v497 + v573);

    swift_getKeyPath();
    v1044[0] = v574;
    sub_21E13D3C4();

    v575 = *(v574 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
    v1045 = *(v574 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
    v1046 = v575;
    v577 = *(v574 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
    v576 = *(v574 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
    v578 = *(v574 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
    v1047 = *(v574 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
    v1050 = v578;
    v1049 = v576;
    v1048 = v577;
    sub_21DF236C0(&v1045, v1044, &qword_27CEA6D60, &qword_21E147FD0);

    if (v1050 != 255)
    {
      if (v1050)
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v579 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v580 = sub_21E142184();
        v582 = v581;
        swift_getErrorValue();
        v583 = sub_21E142BC4();
        v585 = v584;
        v586 = swift_getKeyPath();
        v587 = v836;
        *v836 = v586;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
        swift_storeEnumTagMultiPayload();
        v588 = v1015;
        v589 = (v587 + *(v1015 + 24));
        *v589 = v580;
        v589[1] = v582;
        v590 = (v587 + v588[7]);
        *v590 = v583;
        v590[1] = v585;
        v591 = (v587 + v588[8]);
        *v591 = 0;
        v591[1] = 0;
        *(v587 + v588[5]) = 0x402C000000000000;
        swift_getKeyPath();
        v1044[0] = v496;
        sub_21E13D3C4();

        v592 = *&v1041[v496];
        v593 = v496;
        v594 = v1017;
        if (v592)
        {
          v595 = v592;
        }

        else
        {
          swift_getKeyPath();
          v1044[0] = v593;
          sub_21E13D3C4();

          v812 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v595 = *(v593 + v812);
        }

        swift_getKeyPath();
        v1051 = v595;

        sub_21E13D3C4();

        v813 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v814 = *(v595 + v813);

        v815 = *(v814 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1043 = v593;
        sub_21E13D3C4();

        if (*&v1041[v593])
        {
          v816 = *&v1041[v593];
        }

        else
        {
          swift_getKeyPath();
          v1043 = v593;
          sub_21E13D3C4();

          v817 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v816 = *(v593 + v817);
        }

        swift_getKeyPath();
        v1042 = v816;

        sub_21E13D3C4();

        v818 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v819 = *(v816 + v818);

        v820 = *(v819 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v819) = sub_21E140914();
        v821 = v828;
        sub_21DF8C494(v836, v828, type metadata accessor for EmptyResultsView);
        v822 = v821 + *(v594 + 36);
        *v822 = v819;
        *(v822 + 8) = v815;
        *(v822 + 16) = 0;
        *(v822 + 24) = v820;
        *(v822 + 32) = 0;
        *(v822 + 40) = 0;
        v823 = v829;
        sub_21DF3DE9C(v821, v829, &qword_27CEA7F48, &qword_21E148630);
        sub_21DF236C0(v823, v938, &qword_27CEA7F48, &qword_21E148630);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B7C0();
        sub_21DF8B204();
        v611 = v965;
        sub_21E1402F4();
        sub_21DF23614(&v1045, &qword_27CEA6D60, &qword_21E147FD0);
        v612 = v823;
        goto LABEL_228;
      }

      sub_21DF23614(&v1045, &qword_27CEA6D60, &qword_21E147FD0);
    }

    v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8008, &qword_21E148678);
    v611 = v965;
    (*(*(v673 - 8) + 56))(v965, 1, 1, v673);
LABEL_229:
    v774 = v1012;
LABEL_230:
    v351 = &qword_21E148628;
    sub_21DF236C0(v611, v1010, &qword_27CEA7F40, &qword_21E148628);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B6B8(&qword_27CEA7FF8, &qword_27CEA7F40, &qword_21E148628, sub_21DF8B734);
    sub_21DF8B95C();
    sub_21E1402F4();
    sub_21DF236C0(v774, v1023, &qword_27CEA7F00, &qword_21E1485E8);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B4E8();
    sub_21DF8B600();
    v825 = v1024;
    sub_21E1402F4();
    sub_21DF23614(v774, &qword_27CEA7F00, &qword_21E1485E8);
    sub_21DF236C0(v825, v1031, &qword_27CEA7F80, &qword_21E148668);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B45C();
    sub_21DF8BB80();
    v826 = v1032;
    sub_21E1402F4();
    sub_21DF23614(v825, &qword_27CEA7F80, &qword_21E148668);
    sub_21DF236C0(v826, v1036, &qword_27CEA7F88, &qword_21E148670);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v826, &qword_27CEA7F88, &qword_21E148670);
    v644 = v611;
    v720 = &qword_27CEA7F40;
    return sub_21DF23614(v644, v720, v351);
  }

  if (v209 <= 5)
  {
    v221 = v1039;
    if (v209 != 4)
    {
      v984 = v207;
      swift_getKeyPath();
      *&v1045 = v221;
      sub_21E13D3C4();

      if (*&v1041[v221])
      {
        v222 = *&v1041[v221];
      }

      else
      {
        swift_getKeyPath();
        *&v1045 = v221;
        sub_21E13D3C4();

        v282 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v222 = *(v221 + v282);
      }

      v283 = v971;
      swift_getKeyPath();
      *&v1045 = v222;

      sub_21E13D3C4();

      v284 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v285 = *(v222 + v284);

      swift_getKeyPath();
      *&v1045 = v285;
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
      sub_21E13D3C4();

      v286 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
      swift_beginAccess();
      v287 = v978;
      sub_21DF236C0(v285 + v286, v978, &qword_27CEA6CE8, &qword_21E1456F0);

      v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88, &unk_21E145670);
      if ((*(*(v288 - 8) + 48))(v287, 1, v288) == 1)
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v289 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        *&v1045 = sub_21E142184();
        *(&v1045 + 1) = v290;
        sub_21DF8B37C();
        sub_21E141164();

        sub_21E13EBE4();
        v291 = sub_21E13F1A4();
        v292 = sub_21E142564();
        if (os_log_type_enabled(v291, v292))
        {
          v293 = swift_slowAlloc();
          v294 = swift_slowAlloc();
          *&v1045 = v294;
          *v293 = 136315138;
          *(v293 + 4) = sub_21E0E08C0(0xD000000000000045, 0x800000021E15BA10, &v1045);
          _os_log_impl(&dword_21DF05000, v291, v292, "%s", v293, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v294);
          MEMORY[0x223D540B0](v294, -1, -1);
          MEMORY[0x223D540B0](v293, -1, -1);
        }

        v295 = v1014;
        v296 = v1013;
        v297 = v998;
        v298 = v886;
        sub_21DF236C0(v283, v886, &qword_27CEA7EC8, &qword_21E1485A8);
        (*(v295 + 8))(v943, v296);
        sub_21DF23614(v283, &qword_27CEA7EC8, &qword_21E1485A8);
        sub_21DF236C0(v298, v962, &qword_27CEA7EC8, &qword_21E1485A8);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B14C();
        sub_21DF8B2C0();
        v299 = v964;
        sub_21E1402F4();
        sub_21DF23614(v298, &qword_27CEA7EC8, &qword_21E1485A8);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v507 = *v287;
          v508 = sub_21E1401C4();
          v509 = v863;
          *v863 = v508;
          *(v509 + 8) = 0;
          *(v509 + 16) = 0;
          v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80E0, &qword_21E1486B8);
          sub_21DF82784(v507, v988, v509 + *(v510 + 44));

          sub_21DF236C0(v509, v914, &qword_27CEA7DE0, &unk_21E1484A0);
          swift_storeEnumTagMultiPayload();
          sub_21DF23E5C(&qword_27CEA7FA0, &qword_27CEA7DE0, &unk_21E1484A0, MEMORY[0x277CE1198]);
          sub_21DF8B204();
          v511 = v911;
          sub_21E1402F4();
          sub_21DF236C0(v511, v962, &qword_27CEA7DD8, &qword_21E148498);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B14C();
          sub_21DF8B2C0();
          v512 = v964;
          sub_21E1402F4();
          v299 = v512;
          sub_21DF23614(v511, &qword_27CEA7DD8, &qword_21E148498);
          sub_21DF23614(v509, &qword_27CEA7DE0, &unk_21E1484A0);
          v297 = v998;
          v513 = v989;
LABEL_186:
          v350 = &qword_27CEA7DE8;
          v351 = &qword_21E1484B0;
          sub_21DF236C0(v299, v513, &qword_27CEA7DE8, &qword_21E1484B0);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B0C0();
          sub_21DF8D698(&qword_27CEA7FC8, type metadata accessor for VIUIDeveloperMenu, &unk_21E1517A4);
          sub_21E1402F4();
          sub_21DF236C0(v297, v1036, &qword_27CEA7DC0, &qword_21E148480);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B3D0();
          sub_21DF8C3C4();
          sub_21E1402F4();
          sub_21DF23614(v297, &qword_27CEA7DC0, &qword_21E148480);
          v644 = v299;
          goto LABEL_187;
        }

        (*(v966 + 32))(v929, v287, v987);
        *&v1045 = sub_21E13D8B4();
        *(&v1045 + 1) = v300;
        sub_21DF34830();
        v1046 = 0uLL;
        LOBYTE(v1047) = 0;
        v301 = sub_21E142BC4();
        v303 = v302;

        v304 = sub_21E13D8C4();
        v306 = v305;
        v307 = swift_getKeyPath();
        v308 = v925;
        *v925 = v307;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
        swift_storeEnumTagMultiPayload();
        v309 = v1015;
        v310 = (v308 + *(v1015 + 24));
        *v310 = v301;
        v310[1] = v303;
        v311 = (v308 + v309[7]);
        *v311 = v304;
        v311[1] = v306;
        v312 = (v308 + v309[8]);
        *v312 = 0;
        v312[1] = 0;
        *(v308 + v309[5]) = 0x402C000000000000;
        swift_getKeyPath();
        *&v1045 = v221;
        sub_21E13D3C4();

        if (*&v1041[v221])
        {
          v313 = *&v1041[v221];
        }

        else
        {
          swift_getKeyPath();
          *&v1045 = v221;
          sub_21E13D3C4();

          v695 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v313 = *(v221 + v695);
        }

        swift_getKeyPath();
        v1056[0] = v313;

        sub_21E13D3C4();

        v696 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v697 = *(v313 + v696);

        v698 = *(v697 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1055[0] = v221;
        sub_21E13D3C4();

        if (*&v1041[v221])
        {
          v699 = *&v1041[v221];
        }

        else
        {
          swift_getKeyPath();
          v1055[0] = v221;
          sub_21E13D3C4();

          v700 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v699 = *(v221 + v700);
        }

        swift_getKeyPath();
        v1054[0] = v699;

        sub_21E13D3C4();

        v701 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v702 = *(v699 + v701);

        v703 = *(v702 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        v704 = sub_21E140914();
        v705 = v925 + *(v1017 + 36);
        *v705 = v704;
        *(v705 + 1) = v698;
        *(v705 + 2) = 0;
        *(v705 + 3) = v703;
        *(v705 + 4) = 0;
        v705[40] = 0;
        v1052 = 0;
        v1053 = 0xE000000000000000;
        sub_21E142884();
        MEMORY[0x223D52A60](0xD000000000000047, 0x800000021E15BA60);
        sub_21DF8D698(&qword_27CEA6D90, MEMORY[0x277D78EF0], MEMORY[0x277D78F00]);
        v706 = sub_21E142BC4();
        MEMORY[0x223D52A60](v706);

        v708 = v1052;
        v707 = v1053;
        v709 = v857;
        sub_21E13EBE4();

        v710 = sub_21E13F1A4();
        v711 = sub_21E142564();

        if (os_log_type_enabled(v710, v711))
        {
          v712 = swift_slowAlloc();
          v713 = swift_slowAlloc();
          v1052 = v713;
          *v712 = 136315138;
          *(v712 + 4) = sub_21E0E08C0(v708, v707, &v1052);
          _os_log_impl(&dword_21DF05000, v710, v711, "%s", v712, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v713);
          MEMORY[0x223D540B0](v713, -1, -1);
          MEMORY[0x223D540B0](v712, -1, -1);
        }

        v714 = v1014;
        v715 = v1013;
        v297 = v998;
        v716 = v914;
        v717 = v925;
        v718 = v848;
        sub_21DF236C0(v925, v848, &qword_27CEA7F48, &qword_21E148630);

        (*(v714 + 8))(v709, v715);
        sub_21DF23614(v717, &qword_27CEA7F48, &qword_21E148630);
        sub_21DF236C0(v718, v716, &qword_27CEA7F48, &qword_21E148630);
        swift_storeEnumTagMultiPayload();
        sub_21DF23E5C(&qword_27CEA7FA0, &qword_27CEA7DE0, &unk_21E1484A0, MEMORY[0x277CE1198]);
        sub_21DF8B204();
        v719 = v911;
        sub_21E1402F4();
        sub_21DF236C0(v719, v962, &qword_27CEA7DD8, &qword_21E148498);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B14C();
        sub_21DF8B2C0();
        v299 = v964;
        sub_21E1402F4();
        sub_21DF23614(v719, &qword_27CEA7DD8, &qword_21E148498);
        sub_21DF23614(v718, &qword_27CEA7F48, &qword_21E148630);
        (*(v966 + 8))(v929, v987);
      }

      v513 = v989;
      goto LABEL_186;
    }

    swift_getKeyPath();
    *&v1045 = v221;
    sub_21E13D3C4();

    if (*&v1041[v221])
    {
      v237 = *&v1041[v221];
    }

    else
    {
      swift_getKeyPath();
      *&v1045 = v221;
      sub_21E13D3C4();

      v410 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v237 = *(v221 + v410);
    }

    swift_getKeyPath();
    v1044[0] = v237;

    sub_21E13D3C4();

    v411 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v412 = *(v237 + v411);

    swift_getKeyPath();
    v1058[0] = v412;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v413 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
    swift_beginAccess();
    v414 = v973;
    sub_21DF236C0(v412 + v413, v973, &qword_27CEA6CD0, &qword_21E1456D8);

    v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0, &unk_21E147320);
    if ((*(*(v415 - 8) + 48))(v414, 1, v415) == 1)
    {
      v1057 = xmmword_21E147C90;
      sub_21DF8B37C();
      v416 = v881;
      sub_21E141164();
      sub_21E13EBE4();
      v417 = sub_21E13F1A4();
      v418 = sub_21E142544();
      if (os_log_type_enabled(v417, v418))
      {
        v419 = swift_slowAlloc();
        v420 = swift_slowAlloc();
        *&v1057 = v420;
        *v419 = 136315138;
        *(v419 + 4) = sub_21E0E08C0(0xD000000000000054, 0x800000021E15BB30, &v1057);
        _os_log_impl(&dword_21DF05000, v417, v418, "%s", v419, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v420);
        MEMORY[0x223D540B0](v420, -1, -1);
        MEMORY[0x223D540B0](v419, -1, -1);
      }

      v421 = v1014;
      v422 = v1013;
      v423 = v953;
      v424 = v883;
      sub_21DF236C0(v416, v883, &qword_27CEA7EC8, &qword_21E1485A8);
      (*(v421 + 8))(v940, v422);
      sub_21DF23614(v416, &qword_27CEA7EC8, &qword_21E1485A8);
      sub_21DF236C0(v424, v952, &qword_27CEA7EC8, &qword_21E1485A8);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C00C();
      sub_21DF8B2C0();
      sub_21E1402F4();
      sub_21DF23614(v424, &qword_27CEA7EC8, &qword_21E1485A8);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      v425 = *v414;
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v426 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      v427 = sub_21E142184();
      v429 = v428;
      swift_getErrorValue();
      v430 = sub_21E142BC4();
      v432 = v431;
      v433 = swift_getKeyPath();
      v434 = v879;
      *v879 = v433;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v435 = v1015;
      v436 = (v434 + *(v1015 + 24));
      *v436 = v427;
      v436[1] = v429;
      v437 = (v434 + v435[7]);
      *v437 = v430;
      v437[1] = v432;
      v438 = (v434 + v435[8]);
      *v438 = 0;
      v438[1] = 0;
      *(v434 + v435[5]) = 0x402C000000000000;
      *&v1057 = 0;
      *(&v1057 + 1) = 0xE000000000000000;
      sub_21E142884();
      MEMORY[0x223D52A60](0xD00000000000004ELL, 0x800000021E15BBC0);
      v1041 = v425;
      swift_getErrorValue();
      v439 = sub_21E142BC4();
      MEMORY[0x223D52A60](v439);

      v440 = v1057;
      v441 = v853;
      sub_21E13EBE4();

      v442 = sub_21E13F1A4();
      v443 = sub_21E142564();

      if (os_log_type_enabled(v442, v443))
      {
        v444 = swift_slowAlloc();
        v445 = swift_slowAlloc();
        *&v1057 = v445;
        *v444 = 136315138;
        *(v444 + 4) = sub_21E0E08C0(v440, *(&v440 + 1), &v1057);
        _os_log_impl(&dword_21DF05000, v442, v443, "%s", v444, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v445);
        MEMORY[0x223D540B0](v445, -1, -1);
        MEMORY[0x223D540B0](v444, -1, -1);
      }

      v446 = v1014;
      v447 = v1013;
      v448 = v879;
      v449 = v846;
      sub_21DF8C7C8(v879, v846, type metadata accessor for EmptyResultsView);

      (*(v446 + 8))(v441, v447);
      sub_21DF8C830(v448, type metadata accessor for EmptyResultsView);
      sub_21DF8C7C8(v449, v900, type metadata accessor for EmptyResultsView);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80A8, &qword_27CEA7E50, &unk_21E148520, MEMORY[0x277CE1198]);
      sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
      v450 = v902;
      sub_21E1402F4();
      sub_21DF236C0(v450, v952, &qword_27CEA7E48, &qword_21E148518);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C00C();
      sub_21DF8B2C0();
      v423 = v953;
      sub_21E1402F4();

      sub_21DF23614(v450, &qword_27CEA7E48, &qword_21E148518);
      sub_21DF8C830(v449, type metadata accessor for EmptyResultsView);
    }

    else
    {
      v521 = v858;
      v520 = v859;
      (*(v859 + 32))(v858, v414, v893);
      v522 = sub_21E1401C4();
      v523 = v860;
      *v860 = v522;
      *(v523 + 8) = 0;
      *(v523 + 16) = 1;
      v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80F0, &qword_21E148728);
      sub_21DF800CC(v521, v988, v523 + *(v524 + 44));
      sub_21DF236C0(v523, v900, &qword_27CEA7E50, &unk_21E148520);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80A8, &qword_27CEA7E50, &unk_21E148520, MEMORY[0x277CE1198]);
      sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
      v525 = v902;
      sub_21E1402F4();
      sub_21DF236C0(v525, v952, &qword_27CEA7E48, &qword_21E148518);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C00C();
      sub_21DF8B2C0();
      v423 = v953;
      sub_21E1402F4();
      sub_21DF23614(v525, &qword_27CEA7E48, &qword_21E148518);
      sub_21DF23614(v523, &qword_27CEA7E50, &unk_21E148520);
      (*(v520 + 8))(v521, v893);
    }

    v350 = &qword_27CEA7E58;
    v351 = &qword_21E148530;
    sub_21DF236C0(v423, v1005, &qword_27CEA7E58, &qword_21E148530);
    swift_storeEnumTagMultiPayload();
    sub_21DF8BF80();
    sub_21DF8C0F4();
    v526 = v1006;
    sub_21E1402F4();
    v527 = &qword_27CEA7E30;
    v528 = &qword_21E148500;
    sub_21DF236C0(v526, v1026, &qword_27CEA7E30, &qword_21E148500);
    swift_storeEnumTagMultiPayload();
    sub_21DF8BC0C();
    sub_21DF8BEF4();
    v352 = v423;
    goto LABEL_158;
  }

  v210 = v1039;
  if (v209 == 6)
  {
    *&v1045 = 0x6974636172747865;
    *(&v1045 + 1) = 0xEB000000002D6E6FLL;
    swift_getKeyPath();
    v1044[0] = v210;
    sub_21E13D3C4();

    if (*&v1041[v210])
    {
      v236 = *&v1041[v210];
    }

    else
    {
      swift_getKeyPath();
      v1044[0] = v210;
      sub_21E13D3C4();

      v367 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v236 = *(v210 + v367);
    }

    v368 = v204;
    v369 = v975;
    v370 = v974;
    v371 = v976;
    (*(v975 + 16))(v974, v236 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v976);

    sub_21DF8D698(&qword_27CEA6CF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v372 = sub_21E142AB4();
    MEMORY[0x223D52A60](v372);

    (*(v369 + 8))(v370, v371);
    v373 = v1045;
    swift_getKeyPath();
    *&v1045 = v210;
    sub_21E13D3C4();

    v374 = *&v1041[v210];
    v984 = v207;
    v827[0] = v368;
    if (v374)
    {
      v375 = v374;
    }

    else
    {
      swift_getKeyPath();
      *&v1045 = v210;
      sub_21E13D3C4();

      v376 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v375 = *(v210 + v376);
    }

    swift_getKeyPath();
    *&v1045 = v375;

    sub_21E13D3C4();

    v377 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v378 = *(v375 + v377);

    swift_getKeyPath();
    *&v1045 = v378;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v379 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
    swift_beginAccess();
    v380 = v977;
    sub_21DF236C0(v378 + v379, v977, &qword_27CEA6CC8, &qword_21E1456D0);

    v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8, &unk_21E145690);
    if ((*(*(v381 - 8) + 48))(v380, 1, v381) == 1)
    {
      v382 = v903;
      sub_21DF41DAC(v903);
      v1045 = v373;
      v383 = v927;
      sub_21E140334();

      v384 = sub_21DF8D698(&qword_27CEA80D0, type metadata accessor for EventLookupPlaceholder, &unk_21E1463F8);
      v385 = v904;
      v386 = v961;
      v387 = v985;
      sub_21E1410F4();
      (*(v928 + 8))(v383, v387);
      sub_21DF8C830(v382, type metadata accessor for EventLookupPlaceholder);
      v388 = v905;
      v389 = v963;
      (*(v905 + 16))(v958, v385, v963);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C200();
      *&v1045 = v386;
      *(&v1045 + 1) = v387;
      *&v1046 = v384;
      *(&v1046 + 1) = MEMORY[0x277CDE2B8];
      swift_getOpaqueTypeConformance2();
      v390 = v983;
      sub_21E1402F4();
      (*(v388 + 8))(v385, v389);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v966 + 32))(v931, v380, v987);
      *&v1045 = sub_21E13D8B4();
      *(&v1045 + 1) = v391;
      sub_21DF34830();
      v1046 = 0uLL;
      LOBYTE(v1047) = 0;
      v1023 = sub_21E142BC4();
      v393 = v392;

      v394 = sub_21E13D8C4();
      v1024 = v373;
      v396 = v395;
      v397 = sub_21E13D8A4();
      v399 = v398;
      v400 = swift_getKeyPath();
      v401 = v845;
      *v845 = v400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v402 = v1015;
      v403 = (v401 + *(v1015 + 24));
      *v403 = v1023;
      v403[1] = v393;
      v404 = (v401 + v402[7]);
      *v404 = v394;
      v404[1] = v396;
      v405 = (v401 + v402[8]);
      *v405 = v397;
      v405[1] = v399;
      *(v401 + v402[5]) = 0x402C000000000000;
      *&v1045 = v1024;
      *(&v1045 + 1) = *(&v373 + 1);
      v406 = v927;
      sub_21E140334();

      sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView, &protocol conformance descriptor for EmptyResultsView);
      v407 = v985;
      sub_21E1410F4();
      (*(v928 + 8))(v406, v407);
      sub_21DF8C830(v401, type metadata accessor for EmptyResultsView);
      swift_getKeyPath();
      v408 = v1039;
      *&v1045 = v1039;
      sub_21E13D3C4();

      if (*&v1041[v408])
      {
        v409 = *&v1041[v408];
      }

      else
      {
        swift_getKeyPath();
        *&v1045 = v408;
        sub_21E13D3C4();

        v721 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v409 = *(v408 + v721);
      }

      swift_getKeyPath();
      *&v1045 = v409;

      sub_21E13D3C4();

      v722 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v723 = *(v409 + v722);

      v724 = *(v723 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

      swift_getKeyPath();
      *&v1045 = v408;
      sub_21E13D3C4();

      if (*&v1041[v408])
      {
        v725 = *&v1041[v408];
      }

      else
      {
        swift_getKeyPath();
        *&v1045 = v408;
        sub_21E13D3C4();

        v726 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v725 = *(v408 + v726);
      }

      swift_getKeyPath();
      *&v1045 = v725;

      sub_21E13D3C4();

      v727 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v728 = *(v725 + v727);

      v729 = *(v728 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

      v730 = sub_21E140914();
      v731 = v930 + *(v932 + 36);
      *v731 = v730;
      *(v731 + 8) = v724;
      *(v731 + 16) = 0;
      *(v731 + 24) = v729;
      *(v731 + 32) = 0;
      *(v731 + 40) = 0;
      *&v1045 = 0;
      *(&v1045 + 1) = 0xE000000000000000;
      sub_21E142884();
      MEMORY[0x223D52A60](0xD000000000000052, 0x800000021E15BAB0);
      sub_21DF8D698(&qword_27CEA6D90, MEMORY[0x277D78EF0], MEMORY[0x277D78F00]);
      v732 = sub_21E142BC4();
      MEMORY[0x223D52A60](v732);

      v733 = v1045;
      sub_21E13EBE4();

      v734 = sub_21E13F1A4();
      v735 = sub_21E142564();

      if (os_log_type_enabled(v734, v735))
      {
        v736 = swift_slowAlloc();
        v737 = swift_slowAlloc();
        *&v1045 = v737;
        *v736 = 136315138;
        *(v736 + 4) = sub_21E0E08C0(v733, *(&v733 + 1), &v1045);
        _os_log_impl(&dword_21DF05000, v734, v735, "%s", v736, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v737);
        MEMORY[0x223D540B0](v737, -1, -1);
        MEMORY[0x223D540B0](v736, -1, -1);
      }

      v738 = v1014;
      v739 = v1013;
      v390 = v983;
      v740 = v930;
      v741 = v864;
      sub_21DF236C0(v930, v864, &qword_27CEA7DF8, &qword_21E1484C0);

      (*(v738 + 8))(v895, v739);
      sub_21DF23614(v740, &qword_27CEA7DF8, &qword_21E1484C0);
      sub_21DF236C0(v741, v910, &qword_27CEA7DF8, &qword_21E1484C0);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80C0, &qword_27CEA7E18, &unk_21E1484E0, MEMORY[0x277CE1198]);
      sub_21DF8C2B8();
      v742 = v912;
      sub_21E1402F4();
      sub_21DF236C0(v742, v958, &qword_27CEA7E10, &qword_21E1484D8);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C200();
      v743 = sub_21DF8D698(&qword_27CEA80D0, type metadata accessor for EventLookupPlaceholder, &unk_21E1463F8);
      *&v1045 = v961;
      *(&v1045 + 1) = v985;
      *&v1046 = v743;
      *(&v1046 + 1) = MEMORY[0x277CDE2B8];
      swift_getOpaqueTypeConformance2();
      sub_21E1402F4();
      sub_21DF23614(v742, &qword_27CEA7E10, &qword_21E1484D8);
      sub_21DF23614(v741, &qword_27CEA7DF8, &qword_21E1484C0);
      (*(v966 + 8))(v931, v987);
    }

    else
    {
      v514 = v861;
      sub_21DF8C494(v380, v861, type metadata accessor for EventExtractionResult);
      v515 = sub_21E1401C4();
      v516 = v862;
      *v862 = v515;
      *(v516 + 8) = 0;
      *(v516 + 16) = 1;
      v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80E8, &qword_21E1486F0);
      sub_21DF808D4(v514, v988, v373, *(&v373 + 1), v516 + *(v517 + 44));

      sub_21DF236C0(v516, v910, &qword_27CEA7E18, &unk_21E1484E0);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80C0, &qword_27CEA7E18, &unk_21E1484E0, MEMORY[0x277CE1198]);
      sub_21DF8C2B8();
      v518 = v912;
      sub_21E1402F4();
      sub_21DF236C0(v518, v958, &qword_27CEA7E10, &qword_21E1484D8);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C200();
      v519 = sub_21DF8D698(&qword_27CEA80D0, type metadata accessor for EventLookupPlaceholder, &unk_21E1463F8);
      *&v1045 = v961;
      *(&v1045 + 1) = v985;
      *&v1046 = v519;
      *(&v1046 + 1) = MEMORY[0x277CDE2B8];
      swift_getOpaqueTypeConformance2();
      v390 = v983;
      sub_21E1402F4();
      sub_21DF23614(v518, &qword_27CEA7E10, &qword_21E1484D8);
      sub_21DF23614(v516, &qword_27CEA7E18, &unk_21E1484E0);
      sub_21DF8C830(v514, type metadata accessor for EventExtractionResult);
    }

    v214 = &qword_27CEA7E20;
    v215 = &qword_21E1484F0;
    sub_21DF236C0(v390, v1005, &qword_27CEA7E20, &qword_21E1484F0);
    swift_storeEnumTagMultiPayload();
    sub_21DF8BF80();
    sub_21DF8C0F4();
    v277 = v390;
    v692 = v1006;
    sub_21E1402F4();
    v693 = &qword_27CEA7E30;
    v694 = &qword_21E148500;
    sub_21DF236C0(v692, v1026, &qword_27CEA7E30, &qword_21E148500);
LABEL_197:
    swift_storeEnumTagMultiPayload();
    sub_21DF8BC0C();
    sub_21DF8BEF4();
    v744 = v1027;
    sub_21E1402F4();
    sub_21DF23614(v692, v693, v694);
    sub_21DF236C0(v744, v1031, &qword_27CEA7EA0, &qword_21E148580);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B45C();
    sub_21DF8BB80();
    v745 = v1032;
    sub_21E1402F4();
    sub_21DF23614(v744, &qword_27CEA7EA0, &qword_21E148580);
    sub_21DF236C0(v745, v1036, &qword_27CEA7F88, &qword_21E148670);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v745, &qword_27CEA7F88, &qword_21E148670);
    v216 = v277;
    return sub_21DF23614(v216, v214, v215);
  }

  if (v209 == 7)
  {
    swift_getKeyPath();
    *&v1045 = v210;
    sub_21E13D3C4();

    if (*&v1041[v210])
    {
      v238 = *&v1041[v210];
    }

    else
    {
      swift_getKeyPath();
      *&v1045 = v210;
      sub_21E13D3C4();

      v451 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v238 = *(v210 + v451);
    }

    swift_getKeyPath();
    v1044[0] = v238;

    sub_21E13D3C4();

    v452 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v453 = *(v238 + v452);

    swift_getKeyPath();
    v1058[0] = v453;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v454 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
    swift_beginAccess();
    v455 = v970;
    sub_21DF236C0(v453 + v454, v970, &qword_27CEA6CC0, &qword_21E1485D0);

    v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0, &qword_21E147330);
    if ((*(*(v456 - 8) + 48))(v455, 1, v456) == 1)
    {
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v457 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      *&v1057 = sub_21E142184();
      *(&v1057 + 1) = v458;
      sub_21DF8B37C();
      v459 = v884;
      sub_21E141164();

      sub_21E13EBE4();
      v460 = sub_21E13F1A4();
      v461 = sub_21E142544();
      v462 = os_log_type_enabled(v460, v461);
      v463 = v1012;
      v464 = v980;
      if (v462)
      {
        v465 = swift_slowAlloc();
        v466 = swift_slowAlloc();
        *&v1057 = v466;
        *v465 = 136315138;
        *(v465 + 4) = sub_21E0E08C0(0xD000000000000054, 0x800000021E15BD90, &v1057);
        _os_log_impl(&dword_21DF05000, v460, v461, "%s", v465, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v466);
        MEMORY[0x223D540B0](v466, -1, -1);
        MEMORY[0x223D540B0](v465, -1, -1);
      }

      v467 = v1014;
      v468 = v1013;
      v469 = v885;
      sub_21DF236C0(v459, v885, &qword_27CEA7EC8, &qword_21E1485A8);
      (*(v467 + 8))(v941, v468);
      sub_21DF23614(v459, &qword_27CEA7EC8, &qword_21E1485A8);
      sub_21DF236C0(v469, v946, &qword_27CEA7EC8, &qword_21E1485A8);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B9E8();
      sub_21DF8B2C0();
      sub_21E1402F4();
      sub_21DF23614(v469, &qword_27CEA7EC8, &qword_21E1485A8);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1028 = *v455;
      swift_getErrorValue();
      v1027 = sub_21E142BC4();
      v1026 = v470;
      swift_getKeyPath();
      v471 = v1039;
      *&v1057 = v1039;
      sub_21E13D3C4();

      v472 = *&v1041[v471];
      v984 = v207;
      if (v472)
      {
        v473 = v472;
      }

      else
      {
        swift_getKeyPath();
        *&v1057 = v471;
        sub_21E13D3C4();

        v746 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v473 = *(v471 + v746);
      }

      swift_getKeyPath();
      v1056[0] = v473;

      sub_21E13D3C4();

      v747 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v748 = *(v473 + v747);

      v1025 = *(v748 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

      swift_getKeyPath();
      v1055[0] = v471;
      sub_21E13D3C4();

      if (*&v1041[v471])
      {
        v749 = *&v1041[v471];
      }

      else
      {
        swift_getKeyPath();
        v1055[0] = v471;
        sub_21E13D3C4();

        v750 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v749 = *(v471 + v750);
      }

      swift_getKeyPath();
      v1054[0] = v749;

      sub_21E13D3C4();

      v751 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v752 = *(v749 + v751);

      v753 = *(v752 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

      v754 = sub_21E140914();
      LOBYTE(v1051) = 0;
      v1052 = 0;
      v1053 = 0xE000000000000000;
      sub_21E142884();
      MEMORY[0x223D52A60](0xD00000000000004ELL, 0x800000021E15BDF0);
      swift_getErrorValue();
      v755 = sub_21E142BC4();
      MEMORY[0x223D52A60](v755);

      v757 = v1052;
      v756 = v1053;
      sub_21E13EBE4();

      v758 = sub_21E13F1A4();
      v759 = sub_21E142564();

      if (os_log_type_enabled(v758, v759))
      {
        v760 = swift_slowAlloc();
        v761 = swift_slowAlloc();
        v1052 = v761;
        *v760 = 136315138;
        *(v760 + 4) = sub_21E0E08C0(v757, v756, &v1052);
        _os_log_impl(&dword_21DF05000, v758, v759, "%s", v760, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v761);
        MEMORY[0x223D540B0](v761, -1, -1);
        MEMORY[0x223D540B0](v760, -1, -1);
      }

      v463 = v1012;
      v464 = v980;
      (*(v1014 + 8))(v887, v1013);
      v762 = v892;
      v763 = v1026;
      *v892 = v1027;
      v762[1] = v763;
      *(v762 + 16) = v754;
      v762[3] = v1025;
      v762[4] = 0;
      v762[5] = v753;
      v762[6] = 0;
      *(v762 + 56) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048, &qword_21E148680);
      sub_21DF23E5C(&qword_27CEA8038, &qword_27CEA7EE8, &qword_21E1485C8, MEMORY[0x277CE1198]);
      sub_21DF8BAA0();
      v764 = v894;
      sub_21E1402F4();
      sub_21DF236C0(v764, v946, &qword_27CEA7EE0, &qword_21E1485C0);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B9E8();
      sub_21DF8B2C0();
      sub_21E1402F4();

      sub_21DF23614(v764, &qword_27CEA7EE0, &qword_21E1485C0);
    }

    else
    {
      v529 = v926;
      sub_21DF8C494(v455, v926, type metadata accessor for GeoLookupCardResult);
      v530 = sub_21E1401C4();
      v531 = v880;
      *v880 = v530;
      v531[1] = 0;
      *(v531 + 16) = 1;
      v532 = v531 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8100, &unk_21E1487C0) + 44);
      v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D30, &unk_21E1498D0);
      v534 = v533[12];
      v535 = v533[16];
      v536 = v533[20];
      v537 = v533[24];
      v538 = sub_21E13E144();
      v539 = v849;
      (*(*(v538 - 8) + 16))(v849, v529, v538);
      v540 = v847;
      v1040 = *(v529 + *(v847 + 20));
      *&v539[v534] = v1040;
      *&v539[v535] = *(v529 + v540[6]);
      *&v539[v536] = *(v529 + v540[7]);
      v1041 = *(v529 + v540[8]);
      *&v539[v537] = v1041;
      v542 = v851;
      v541 = v852;
      (*(v851 + 104))(v539, *MEMORY[0x277D79100], v852);
      v543 = *(v542 + 16);
      v544 = v850;
      v543(v850, v539, v541);
      v543(v532, v544, v541);
      v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8108, &qword_21E1487D0);
      v546 = &v532[v545[9]];
      *v546 = 0;
      *(v546 + 1) = 0;
      v532[v545[10]] = 0;
      v547 = v545[11];

      sub_21DF7EF90(v926, v988, &v532[v547]);
      v548 = *(v542 + 8);
      v548(v544, v541);
      v548(v539, v541);
      v549 = v880;
      sub_21DF236C0(v880, v892, &qword_27CEA7EE8, &qword_21E1485C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048, &qword_21E148680);
      sub_21DF23E5C(&qword_27CEA8038, &qword_27CEA7EE8, &qword_21E1485C8, MEMORY[0x277CE1198]);
      sub_21DF8BAA0();
      v550 = v894;
      sub_21E1402F4();
      sub_21DF236C0(v550, v946, &qword_27CEA7EE0, &qword_21E1485C0);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B9E8();
      sub_21DF8B2C0();
      v464 = v980;
      sub_21E1402F4();
      sub_21DF23614(v550, &qword_27CEA7EE0, &qword_21E1485C0);
      sub_21DF23614(v549, &qword_27CEA7EE8, &qword_21E1485C8);
      sub_21DF8C830(v926, type metadata accessor for GeoLookupCardResult);
      v463 = v1012;
    }

    v351 = &qword_21E1485D8;
    sub_21DF236C0(v464, v1010, &qword_27CEA7EF0, &qword_21E1485D8);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B6B8(&qword_27CEA7FF8, &qword_27CEA7F40, &qword_21E148628, sub_21DF8B734);
    sub_21DF8B95C();
    sub_21E1402F4();
    v765 = v464;
    sub_21DF236C0(v463, v1023, &qword_27CEA7F00, &qword_21E1485E8);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B4E8();
    sub_21DF8B600();
    v766 = v1024;
    sub_21E1402F4();
    sub_21DF23614(v463, &qword_27CEA7F00, &qword_21E1485E8);
    sub_21DF236C0(v766, v1031, &qword_27CEA7F80, &qword_21E148668);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B45C();
    sub_21DF8BB80();
    v767 = v1032;
    sub_21E1402F4();
    sub_21DF23614(v766, &qword_27CEA7F80, &qword_21E148668);
    sub_21DF236C0(v767, v1036, &qword_27CEA7F88, &qword_21E148670);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v767, &qword_27CEA7F88, &qword_21E148670);
    v644 = v765;
    v720 = &qword_27CEA7EF0;
    return sub_21DF23614(v644, v720, v351);
  }

  if (v209 != 8)
  {
LABEL_33:
    v239 = *(v209 + 16);
    v240 = v979;
    *v979 = v239;
    sub_21DF5706C(v239);
    type metadata accessor for NewSaliencyModel(0);

    sub_21E141AD4();
    sub_21DF8C7C8(v240, v989, type metadata accessor for VIUIDeveloperMenu);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B0C0();
    sub_21DF8D698(&qword_27CEA7FC8, type metadata accessor for VIUIDeveloperMenu, &unk_21E1517A4);
    v241 = v998;
    sub_21E1402F4();
    sub_21DF236C0(v241, v1036, &qword_27CEA7DC0, &qword_21E148480);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v241, &qword_27CEA7DC0, &qword_21E148480);
    sub_21DF8C830(v240, type metadata accessor for VIUIDeveloperMenu);
    return sub_21DF5AF24(v209);
  }

  swift_storeEnumTagMultiPayload();
  sub_21DF8B574();
  v211 = v993;
  sub_21E1402F4();
  sub_21DF236C0(v211, v1023, &qword_27CEA7F78, &qword_21E148660);
  swift_storeEnumTagMultiPayload();
  sub_21DF8B4E8();
  sub_21DF8B600();
  v212 = v1024;
  sub_21E1402F4();
  sub_21DF23614(v211, &qword_27CEA7F78, &qword_21E148660);
  sub_21DF236C0(v212, v1031, &qword_27CEA7F80, &qword_21E148668);
  swift_storeEnumTagMultiPayload();
  sub_21DF8B45C();
  sub_21DF8BB80();
  v213 = v1032;
  sub_21E1402F4();
  sub_21DF23614(v212, &qword_27CEA7F80, &qword_21E148668);
  v214 = &qword_27CEA7F88;
  v215 = &qword_21E148670;
  sub_21DF236C0(v213, v1036, &qword_27CEA7F88, &qword_21E148670);
  swift_storeEnumTagMultiPayload();
  sub_21DF8B3D0();
  sub_21DF8C3C4();
  sub_21E1402F4();
  v216 = v213;
  return sub_21DF23614(v216, v214, v215);
}

uint64_t sub_21DF744CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v6 = sub_21E13F734();
  v19 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardContainer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21E1414A4();
  v20 = type metadata accessor for CardContainer;
  sub_21DF8C7C8(a2, v13, type metadata accessor for CardContainer);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v14 + v12 + *(v7 + 80)) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_21DF8C494(v13, v16 + v14, type metadata accessor for CardContainer);
  (*(v7 + 32))(v16 + v15, v9, v19);
  sub_21DF8C7C8(v21, v13, v20);
  v17 = swift_allocObject();
  result = sub_21DF8C494(v13, v17 + v14, type metadata accessor for CardContainer);
  *a3 = v22;
  a3[1] = sub_21DF8DAEC;
  a3[2] = v16;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = sub_21DF8DB20;
  a3[6] = 0;
  a3[7] = sub_21DF8DB04;
  a3[8] = v17;
  return result;
}

uint64_t sub_21DF7474C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D48, &qword_21E148408);
  MEMORY[0x28223BE20](v33);
  v3 = &v32 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D50, &qword_21E148410);
  MEMORY[0x28223BE20](v34);
  v5 = &v32 - v4;
  v6 = sub_21E13D834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + *(type metadata accessor for CardContainer(0) + 28));
  swift_getKeyPath();
  v39 = v10;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  LOBYTE(v11) = sub_21E13D7F4();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    swift_getKeyPath();
    v38 = v10;
    sub_21E13D3C4();

    v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
    v13 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
    v32 = v5;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      swift_getKeyPath();
      v38 = v10;
      sub_21E13D3C4();

      v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v14 = *(v10 + v15);
    }

    swift_getKeyPath();
    v38 = v14;
    sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

    sub_21E13D3C4();

    swift_getKeyPath();
    v38 = v10;
    sub_21E13D3C4();

    if (*(v10 + v12))
    {
      v16 = *(v10 + v12);
    }

    else
    {
      swift_getKeyPath();
      v38 = v10;
      sub_21E13D3C4();

      v17 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v16 = *(v10 + v17);
    }

    v18 = v32;
    swift_getKeyPath();
    v38 = v16;

    sub_21E13D3C4();

    v19 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v20 = *(v16 + v19);
    sub_21DF5706C(v20);

    if (v20 == 6)
    {
      v21 = sub_21E1414A4();
      v22 = v18 + *(v34 + 36);
      sub_21E141C04();
      v23 = sub_21E140914();
      v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D70, &qword_21E148448) + 36)] = v23;
      *v18 = v21;
      sub_21DF236C0(v18, v3, &qword_27CEA7D50, &qword_21E148410);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D58, &qword_21E148440);
      sub_21DF8AD70();
      sub_21DF8AE28();
      sub_21E1402F4();
      return sub_21DF23614(v18, &qword_27CEA7D50, &qword_21E148410);
    }

    sub_21DF5AF24(v20);
  }

  v25 = sub_21E1414A4();
  swift_getKeyPath();
  v38 = v10;
  sub_21E13D3C4();

  if (*(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v26 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v38 = v10;
    sub_21E13D3C4();

    v27 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v26 = *(v10 + v27);
  }

  swift_getKeyPath();
  v37 = v26;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v29 = *(v26 + v28);

  swift_getKeyPath();
  v36 = v29;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
  sub_21E13D3C4();

  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  LODWORD(v30) = *(v29 + v30);

  sub_21E13F6B4();
  sub_21E13F694();
  v31 = sub_21E13F6C4();

  *v3 = v25;
  v3[8] = (v30 < 6) & (0x2Cu >> v30);
  v3[9] = 1;
  *(v3 + 2) = v31;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D58, &qword_21E148440);
  sub_21DF8AD70();
  sub_21DF8AE28();
  return sub_21E1402F4();
}

uint64_t sub_21DF74F68@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v90 = a1;
  v94 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D10, &qword_21E148340);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B18, &qword_21E1481E8);
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B10, &qword_21E1481E0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v73 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B00, &qword_21E1481D0);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v73 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AF8, &qword_21E1481C8);
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v73 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AF0, &qword_21E1481C0);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v95 = &v73 - v14;
  v99 = a2;
  sub_21E1401C4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A28, &qword_21E148148);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B20, &qword_21E1481F0);
  *&v71 = sub_21DF89960();
  *(&v71 + 1) = sub_21DF8B6B8(&qword_27CEA7B28, &qword_27CEA7B20, &qword_21E1481F0, sub_21DF89B98);
  sub_21E140E24();
  sub_21E140354();
  v17 = sub_21E140424();
  v18 = *(v17 - 8);
  v80 = *(v18 + 56);
  v81 = v17;
  v79 = v18 + 56;
  v80(v6, 0, 1);
  v19 = sub_21E140924();
  *&v103 = v15;
  *(&v103 + 1) = v16;
  v104 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v11;
  v21 = v97;
  v77 = OpaqueTypeConformance2;
  MEMORY[0x223D51970](v6, v19, v97);
  v90 = v6;
  sub_21DF23614(v6, &qword_27CEA7D10, &qword_21E148340);
  (*(v96 + 8))(v9, v21);
  v78 = type metadata accessor for CardContainer(0);
  v22 = *(v98 + *(v78 + 28));
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v103 = v22;
  v24 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v22 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v26 = *(v22 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *&v103 = v22;
    sub_21E13D3C4();

    v27 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v26 = *(v22 + v27);
  }

  swift_getKeyPath();
  *&v103 = v26;
  v28 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  v96 = v28;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v103 = v22;
  sub_21E13D3C4();

  v29 = *(v22 + v25);
  v75 = v23;
  v76 = v24;
  v73 = v22;
  v74 = v25;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    swift_getKeyPath();
    *&v103 = v22;
    sub_21E13D3C4();

    v31 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v30 = *(v22 + v31);
  }

  swift_getKeyPath();
  *&v103 = v30;

  sub_21E13D3C4();

  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v33 = *(v30 + v32);
  sub_21DF5706C(v33);

  *&v103 = v33;
  LOBYTE(v33) = sub_21DF31604(&v103);

  sub_21DF5AF24(v103);
  v34 = sub_21E140924();
  *&v103 = v97;
  *(&v103 + 1) = v77;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = (v33 & 1) == 0;
  v38 = v84;
  v37 = v85;
  v39 = v82;
  MEMORY[0x223D51990](v36, v34, v85, v35);
  v40 = (*(v83 + 8))(v39, v37);
  MEMORY[0x28223BE20](v40);
  v41 = v98;
  sub_21E1401C4();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B08, &qword_21E1481D8);
  *&v103 = v37;
  *(&v103 + 1) = v35;
  *&v72 = swift_getOpaqueTypeConformance2();
  *(&v72 + 1) = sub_21DF8A22C();
  v43 = v87;
  v44 = v88;
  sub_21E140E24();
  (*(v86 + 8))(v38, v44);
  v45 = v90;
  sub_21E140354();
  (v80)(v45, 0, 1, v81);
  v46 = sub_21E140934();
  *&v103 = v44;
  *(&v103 + 1) = v42;
  v104 = v72;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v95;
  v49 = v92;
  MEMORY[0x223D51970](v45, v46, v92, v47);
  sub_21DF23614(v45, &qword_27CEA7D10, &qword_21E148340);
  v50 = v43;
  v51 = 1;
  (*(v89 + 8))(v50, v49);
  v103 = *(v41 + *(v78 + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090, &unk_21E146320);
  sub_21E141714();
  if (!v102[0])
  {
    swift_getKeyPath();
    v52 = v73;
    *&v103 = v73;
    sub_21E13D3C4();

    v53 = v74;
    if (*(v52 + v74))
    {
      v54 = *(v52 + v74);
    }

    else
    {
      swift_getKeyPath();
      *&v103 = v52;
      sub_21E13D3C4();

      v55 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v54 = *(v52 + v55);
    }

    swift_getKeyPath();
    v102[0] = v54;

    sub_21E13D3C4();

    v56 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v57 = *(v54 + v56);

    swift_getKeyPath();
    v102[0] = v57;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v58 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
    v103 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
    v104 = v58;
    v60 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
    v59 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
    v61 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
    v108 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
    v106 = v60;
    v107 = v59;
    v105 = v61;
    sub_21DF236C0(&v103, v102, &qword_27CEA6D60, &qword_21E147FD0);

    if (v108 == 255)
    {
      v51 = 1;
    }

    else
    {
      sub_21DF23614(&v103, &qword_27CEA6D60, &qword_21E147FD0);
      swift_getKeyPath();
      v102[0] = v52;
      sub_21E13D3C4();

      if (*(v52 + v53))
      {
        v62 = *(v52 + v53);
      }

      else
      {
        swift_getKeyPath();
        v102[0] = v52;
        sub_21E13D3C4();

        v63 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v62 = *(v52 + v63);
      }

      swift_getKeyPath();
      v101 = v62;

      sub_21E13D3C4();

      v64 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v65 = *(v62 + v64);

      swift_getKeyPath();
      v100 = v65;
      sub_21E13D3C4();

      v66 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
      swift_beginAccess();
      v51 = *(v65 + v66);
    }

    v48 = v95;
  }

  v67 = sub_21E140934();
  *&v103 = v49;
  *(&v103 + 1) = v47;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v93;
  MEMORY[0x223D51990](v51, v67, v93, v68);
  return (*(v91 + 8))(v48, v69);
}

char *sub_21DF75D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v230 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BD0, &qword_21E148248);
  MEMORY[0x28223BE20](v3 - 8);
  v193 = (&v184 - v4);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BB8, &qword_21E148240);
  MEMORY[0x28223BE20](v225);
  v194 = &v184 - v5;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D20, &qword_21E1483B0);
  v210 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v208 = &v184 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D28, &qword_21E1483B8);
  MEMORY[0x28223BE20](v7);
  v9 = &v184 - v8;
  v10 = sub_21E13F9D4();
  v196 = *(v10 - 8);
  v197 = v10;
  MEMORY[0x28223BE20](v10);
  v195 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C80, &qword_21E1482A8);
  v205 = *(v12 - 8);
  v206 = v12;
  MEMORY[0x28223BE20](v12);
  v200 = &v184 - v13;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BA0, &qword_21E148228);
  MEMORY[0x28223BE20](v198);
  v201 = &v184 - v14;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B90, &qword_21E148220);
  MEMORY[0x28223BE20](v199);
  v204 = &v184 - v15;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B80, &qword_21E148218);
  MEMORY[0x28223BE20](v203);
  v202 = &v184 - v16;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B68, &qword_21E148210);
  MEMORY[0x28223BE20](v216);
  v207 = &v184 - v17;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D30, &qword_21E1483C0);
  v232 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v209 = &v184 - v18;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D38, &qword_21E1483C8);
  MEMORY[0x28223BE20](v213);
  v215 = &v184 - v19;
  v20 = sub_21E140174();
  v221 = *(v20 - 8);
  v222 = v20;
  MEMORY[0x28223BE20](v20);
  v220 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CardContainer(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v188 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ScrollableSegmentedControl(0);
  MEMORY[0x28223BE20](v25 - 8);
  v189 = (&v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B50, &qword_21E148208);
  MEMORY[0x28223BE20](v211);
  v185 = &v184 - v27;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D40, &qword_21E1483D0);
  v191 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v190 = &v184 - v28;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B48, &qword_21E148200);
  MEMORY[0x28223BE20](v223);
  v214 = &v184 - v29;
  v192 = v22;
  v30 = *(v22 + 28);
  v219 = a1;
  v31 = *(a1 + v30);
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v257 = v31;
  v33 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v231 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v34 = *(v31 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v218 = v7;
  v186 = v23;
  v187 = v24;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v31;
    sub_21E13D3C4();

    v36 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v35 = *(v31 + v36);
  }

  swift_getKeyPath();
  *&v257 = v35;
  v37 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  v227 = v37;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v257 = v31;
  sub_21E13D3C4();

  v38 = *(v31 + v231);
  v228 = v33;
  v229 = v31;
  v224 = v9;
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v31;
    sub_21E13D3C4();

    v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v39 = *(v31 + v40);
  }

  swift_getKeyPath();
  *&v257 = v39;

  sub_21E13D3C4();

  v41 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v42 = *(v39 + v41);
  sub_21DF5706C(v42);

  *&v257 = v42;
  LOBYTE(v42) = sub_21DF31604(&v257);

  sub_21DF5AF24(v257);
  swift_getKeyPath();
  if ((v42 & 1) == 0)
  {
    v45 = v229;
    *&v257 = v229;
    sub_21E13D3C4();

    if (*(v45 + v231))
    {
      v46 = *(v45 + v231);
    }

    else
    {
      swift_getKeyPath();
      *&v257 = v45;
      sub_21E13D3C4();

      v110 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v46 = *(v45 + v110);
    }

    swift_getKeyPath();
    *&v240 = v46;

    sub_21E13D3C4();

    v111 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v112 = *(v46 + v111);
    sub_21DF5706C(v112);

    if (v112 < 9)
    {
      sub_21DF5AF24(v112);
      v113 = 1;
LABEL_56:
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B38, &qword_21E1481F8);
      return (*(*(v183 - 8) + 56))(v230, v113, 1, v183);
    }

    v114 = *(v112 + 16);
    sub_21DF5706C(v114);
    sub_21DF5AF24(v112);
    v115 = sub_21E140004();
    v116 = v193;
    *v193 = v115;
    v116[1] = 0;
    *(v116 + 16) = 1;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CB8, &unk_21E1482E0);
    sub_21DF7A18C(v219, v114, &unk_282F3DFA8, sub_21DF8ACEC, sub_21DF77A38, v116 + *(v117 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0, &unk_21E149300);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_21E147C70;
    v119 = sub_21E140924();
    *(v118 + 32) = v119;
    v120 = sub_21E140944();
    *(v118 + 33) = v120;
    v121 = sub_21E140964();
    *(v118 + 34) = v121;
    v122 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() != v119)
    {
      v122 = sub_21E140954();
    }

    sub_21E140954();
    if (sub_21E140954() != v120)
    {
      v122 = sub_21E140954();
    }

    v124 = v224;
    v123 = v225;

    sub_21E140954();
    if (sub_21E140954() != v121)
    {
      v122 = sub_21E140954();
    }

    v125 = v226;
    v126 = v116;
    v127 = v194;
    sub_21DF3DE9C(v126, v194, &qword_27CEA7BD0, &qword_21E148248);
    v128 = v127 + *(v123 + 36);
    *v128 = v122;
    *(v128 + 8) = 0u;
    *(v128 + 24) = 0u;
    *(v128 + 40) = 1;
    v129 = v220;
    sub_21E140164();
    v130 = sub_21DF8A174();
    v131 = v208;
    sub_21E141044();
    (*(v221 + 8))(v129, v222);
    sub_21DF23614(v127, &qword_27CEA7BB8, &qword_21E148240);
    v132 = v210;
    (*(v210 + 16))(v124, v131, v125);
    swift_storeEnumTagMultiPayload();
    sub_21DF89C68();
    *&v250 = v123;
    *(&v250 + 1) = v130;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    sub_21DF5AF24(v114);
    (*(v132 + 8))(v131, v125);
LABEL_55:
    v113 = 0;
    goto LABEL_56;
  }

  v43 = v229;
  *&v257 = v229;
  sub_21E13D3C4();

  if (*(v43 + v231))
  {
    v44 = *(v43 + v231);
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v43;
    sub_21E13D3C4();

    v47 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v44 = *(v43 + v47);
  }

  swift_getKeyPath();
  *&v257 = v44;

  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v49 = *(v44 + v48);

  if (v49 >> 62)
  {
    v50 = sub_21E1427B4();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 < 2)
  {
    v53 = (v219 + *(v192 + 56));
    v54 = *v53;
    v55 = *(v53 + 2);
    v257 = v54;
    *&v258 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79F8, &unk_21E147F98);
    sub_21E141714();
    v257 = v240;
    sub_21DF252E0();
    v56 = sub_21E140C94();
    v58 = v57;
    v60 = v59;
    LODWORD(v257) = sub_21E1404A4();
    v61 = sub_21E140C24();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_21DF8C480(v56, v58, v60 & 1, MEMORY[0x277D85008]);

    sub_21E141CC4();
    sub_21E13FCE4();
    LOBYTE(v235) = v65 & 1;
    v68 = sub_21E140AC4();
    KeyPath = swift_getKeyPath();
    v245 = v253;
    v246 = v254;
    v247 = v255;
    v248 = v256;
    v242 = v250;
    *&v240 = v61;
    *(&v240 + 1) = v63;
    LOBYTE(v241) = v65 & 1;
    *(&v241 + 1) = v67;
    v243 = v251;
    v244 = v252;
    *&v249 = KeyPath;
    *(&v249 + 1) = v68;
    v70 = v195;
    v71 = v196;
    v72 = v197;
    (*(v196 + 104))(v195, *MEMORY[0x277CDF9D8], v197);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BA8, &unk_21E148230);
    sub_21DF8A0BC();
    v73 = v200;
    sub_21E140F64();
    (*(v71 + 8))(v70, v72);
    v263 = v246;
    v264 = v247;
    v265 = v248;
    v266 = v249;
    v259 = v242;
    v260 = v243;
    v261 = v244;
    v262 = v245;
    v257 = v240;
    v258 = v241;
    sub_21DF23614(&v257, &qword_27CEA7BA8, &unk_21E148230);
    v74 = swift_getKeyPath();
    v75 = v201;
    (*(v205 + 32))(v201, v73, v206);
    v76 = &v75[*(v198 + 36)];
    *v76 = v74;
    v76[8] = 1;
    LOBYTE(v74) = sub_21E140924();
    sub_21E13F374();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v75;
    v86 = v204;
    sub_21DF3DE9C(v85, v204, &qword_27CEA7BA0, &qword_21E148228);
    v87 = v86 + *(v199 + 36);
    *v87 = v74;
    *(v87 + 8) = v78;
    *(v87 + 16) = v80;
    *(v87 + 24) = v82;
    *(v87 + 32) = v84;
    *(v87 + 40) = 0;
    LOBYTE(v74) = sub_21E140934();
    sub_21E13F374();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v86;
    v97 = v202;
    sub_21DF3DE9C(v96, v202, &qword_27CEA7B90, &qword_21E148220);
    v98 = v97 + *(v203 + 36);
    *v98 = v74;
    *(v98 + 8) = v89;
    *(v98 + 16) = v91;
    *(v98 + 24) = v93;
    *(v98 + 32) = v95;
    *(v98 + 40) = 0;
    v99 = v207;
    sub_21DF3DE9C(v97, v207, &qword_27CEA7B80, &qword_21E148218);
    v100 = v216;
    *(v99 + *(v216 + 36)) = 256;
    v101 = v220;
    sub_21E140164();
    v102 = sub_21DF89E24();
    v103 = v209;
    sub_21E141044();
    (*(v221 + 8))(v101, v222);
    sub_21DF23614(v99, &qword_27CEA7B68, &qword_21E148210);
    v104 = v232;
    v105 = v217;
    (v232[2])(v215, v103, v217);
    swift_storeEnumTagMultiPayload();
    v106 = sub_21DF89D68();
    *&v240 = v211;
    *(&v240 + 1) = v106;
    swift_getOpaqueTypeConformance2();
    *&v240 = v100;
    *(&v240 + 1) = v102;
    swift_getOpaqueTypeConformance2();
    v107 = v214;
    sub_21E1402F4();
    v104[1](v103, v105);
    v108 = v225;
    v109 = v224;
LABEL_54:
    sub_21DF236C0(v107, v109, &qword_27CEA7B48, &qword_21E148200);
    swift_storeEnumTagMultiPayload();
    sub_21DF89C68();
    v182 = sub_21DF8A174();
    v238 = v108;
    v239 = v182;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    sub_21DF23614(v107, &qword_27CEA7B48, &qword_21E148200);
    goto LABEL_55;
  }

  swift_getKeyPath();
  v51 = v229;
  *&v257 = v229;
  sub_21E13D3C4();

  if (*(v51 + v231))
  {
    v52 = *(v51 + v231);
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v51;
    sub_21E13D3C4();

    v133 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v52 = *(v51 + v133);
  }

  v210 = v32;
  swift_getKeyPath();
  *&v240 = v52;

  sub_21E13D3C4();

  v134 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v135 = *(v52 + v134);

  if (!(v135 >> 62))
  {
    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v136)
    {
      goto LABEL_32;
    }

LABEL_43:

    v139 = MEMORY[0x277D84F90];
LABEL_44:
    v232 = type metadata accessor for CardContainer;
    v147 = v219;
    v148 = v188;
    sub_21DF8C7C8(v219, v188, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v149 = sub_21E1423B4();
    v150 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v151 = swift_allocObject();
    v152 = MEMORY[0x277D85700];
    *(v151 + 16) = v149;
    *(v151 + 24) = v152;
    sub_21DF8C494(v148, v151 + v150, type metadata accessor for CardContainer);
    sub_21DF8C7C8(v147, v148, v232);
    v153 = sub_21E1423B4();
    v154 = swift_allocObject();
    *(v154 + 16) = v153;
    *(v154 + 24) = MEMORY[0x277D85700];
    sub_21DF8C494(v148, v154 + v150, type metadata accessor for CardContainer);
    sub_21E141A04();
    v155 = v235;
    v156 = v236;
    v157 = v237;
    swift_getKeyPath();
    v158 = v229;
    v235 = v229;
    sub_21E13D3C4();

    if (*(v158 + v231))
    {
      v159 = *(v158 + v231);
    }

    else
    {
      swift_getKeyPath();
      v235 = v158;
      sub_21E13D3C4();

      v160 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v159 = *(v158 + v160);
    }

    v161 = v191;
    swift_getKeyPath();
    v234 = v159;

    sub_21E13D3C4();

    v162 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v163 = *(v159 + v162);

    swift_getKeyPath();
    v233 = v163;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v164 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LOBYTE(v164) = *(v163 + v164);

    v165 = v189;
    sub_21DF3CA40(v139, v155, v156, v157, v164, v189);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0, &unk_21E149300);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_21E147C70;
    v167 = sub_21E140924();
    *(v166 + 32) = v167;
    v168 = sub_21E140944();
    *(v166 + 33) = v168;
    v169 = sub_21E140964();
    *(v166 + 34) = v169;
    v170 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() != v167)
    {
      v170 = sub_21E140954();
    }

    sub_21E140954();
    v171 = sub_21E140954();
    v109 = v224;
    if (v171 != v168)
    {
      v170 = sub_21E140954();
    }

    v172 = v185;

    sub_21E140954();
    if (sub_21E140954() != v169)
    {
      v170 = sub_21E140954();
    }

    sub_21DF8C494(v165, v172, type metadata accessor for ScrollableSegmentedControl);
    v173 = v211;
    v174 = v172 + *(v211 + 36);
    *v174 = v170;
    *(v174 + 8) = 0u;
    *(v174 + 24) = 0u;
    *(v174 + 40) = 1;
    v175 = v220;
    sub_21E140164();
    v176 = sub_21DF89D68();
    v177 = v190;
    sub_21E141044();
    (*(v221 + 8))(v175, v222);
    sub_21DF23614(v172, &qword_27CEA7B50, &qword_21E148208);
    v178 = *(v161 + 16);
    v179 = v161;
    v180 = v212;
    v178(v215, v177, v212);
    swift_storeEnumTagMultiPayload();
    v238 = v173;
    v239 = v176;
    swift_getOpaqueTypeConformance2();
    v181 = sub_21DF89E24();
    v238 = v216;
    v239 = v181;
    swift_getOpaqueTypeConformance2();
    v107 = v214;
    sub_21E1402F4();
    (*(v179 + 8))(v177, v180);
    v108 = v225;
    goto LABEL_54;
  }

  v136 = sub_21E1427B4();
  if (!v136)
  {
    goto LABEL_43;
  }

LABEL_32:
  v235 = MEMORY[0x277D84F90];
  result = sub_21DF5BFAC(0, v136 & ~(v136 >> 63), 0);
  if ((v136 & 0x8000000000000000) == 0)
  {
    v138 = 0;
    v139 = v235;
    v140 = v135;
    v232 = (v135 & 0xC000000000000001);
    do
    {
      if (v232)
      {
        v141 = MEMORY[0x223D530F0](v138, v140);
      }

      else
      {
        v141 = *(v140 + 8 * v138 + 32);
      }

      swift_getKeyPath();
      v234 = v141;
      sub_21DF8D698(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
      sub_21E13D3C4();

      swift_beginAccess();
      v143 = *(v141 + 56);
      v142 = *(v141 + 64);

      v235 = v139;
      v145 = *(v139 + 16);
      v144 = *(v139 + 24);
      if (v145 >= v144 >> 1)
      {
        sub_21DF5BFAC((v144 > 1), v145 + 1, 1);
        v139 = v235;
      }

      ++v138;
      *(v139 + 16) = v145 + 1;
      v146 = v139 + 16 * v145;
      *(v146 + 32) = v143;
      *(v146 + 40) = v142;
      v140 = v135;
    }

    while (v136 != v138);

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF77A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v101 = sub_21E140174();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21E1403A4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v92 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v74 - v7;
  v98 = sub_21E1403C4();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v74 - v10;
  v85 = sub_21E13D344();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v82 = &v74 - v13;
  v105 = sub_21E13D994();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C08, &qword_21E148260);
  MEMORY[0x28223BE20](v87);
  v86 = (&v74 - v15);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BE0, &qword_21E148250);
  MEMORY[0x28223BE20](v89);
  v90 = &v74 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D18, &qword_21E148348);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v88 = &v74 - v17;
  *&v81 = type metadata accessor for CardContainer(0);
  v18 = *(v81 + 28);
  v102 = a1;
  v19 = *(a1 + v18);
  swift_getKeyPath();
  *&v112[0] = v19;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v20 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v19 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v21 = *(v19 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *&v112[0] = v19;
    sub_21E13D3C4();

    v22 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v21 = *(v19 + v22);
  }

  swift_getKeyPath();
  *&v112[0] = v21;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v112[0] = v19;
  sub_21E13D3C4();

  if (*(v19 + v20))
  {
    v23 = *(v19 + v20);
  }

  else
  {
    swift_getKeyPath();
    *&v112[0] = v19;
    sub_21E13D3C4();

    v24 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v23 = *(v19 + v24);
  }

  swift_getKeyPath();
  *&v112[0] = v23;

  sub_21E13D3C4();

  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v26 = *(v23 + v25);
  sub_21DF5706C(v26);

  *&v112[0] = v26;
  LOBYTE(v26) = sub_21DF31604(v112);

  sub_21DF5AF24(*&v112[0]);
  if (v26)
  {
    v27 = v102;
    v28 = sub_21DF64FE4();
    v29 = 1;
    if (v28)
    {
      (*(v104 + 104))(v103, *MEMORY[0x277D78F28], v105);
      v30 = v27 + *(v81 + 68);
      *&v112[0] = *v30;
      *(v112 + 8) = *(v30 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8, &qword_21E147E98);
      sub_21E1419F4();
      v102 = v110;
      v81 = v111;
      swift_getKeyPath();
      *&v112[0] = v19;
      sub_21E13D3C4();

      v31 = (v19 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
      swift_beginAccess();
      v80 = *v31;
      v79 = v31[1];
      v78 = v31[2];
      v32 = *(v31 + 2);
      v77 = *(v31 + 1);
      v75 = v32;
      KeyPath = swift_getKeyPath();
      v34 = v86;
      *v86 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070, &qword_21E146170);
      swift_storeEnumTagMultiPayload();
      v35 = type metadata accessor for FeedbackControlBar(0);
      v36 = v35[9];
      v76 = v35[8];
      v37 = v34 + v36;
      v109 = 0;

      sub_21E141704();
      v38 = *(&v112[0] + 1);
      *v37 = v112[0];
      *(v37 + 8) = v38;
      v39 = v82;
      _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
      v40 = v84;
      v41 = *(v84 + 16);
      v42 = v83;
      v43 = v85;
      v41(v83, v39, v85);
      sub_21E141704();
      v44 = *(v40 + 8);
      v44(v39, v43);
      _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
      v41(v42, v39, v43);
      sub_21E141704();
      v44(v39, v43);
      v45 = v35[7];
      v46 = sub_21E13DF64();
      (*(*(v46 - 8) + 56))(v34 + v45, 1, 1, v46);
      v47 = v35[5];
      v48 = v104;
      v49 = v105;
      (*(v104 + 32))(v34 + v47, v103, v105);
      (*(v48 + 56))(v34 + v47, 0, 1, v49);
      v50 = (v34 + v35[6]);
      *v50 = 0;
      v50[1] = 0;
      v51 = v34 + v35[12];
      *v51 = v102;
      *(v51 + 8) = v81;
      v52 = v34 + v35[13];
      *v52 = v80;
      *(v52 + 1) = v79;
      *(v52 + 2) = v78;
      v53 = v75;
      *(v52 + 8) = v77;
      *(v52 + 16) = v53;
      *(v34 + v76) = 0;
      LOBYTE(v35) = sub_21E140924();
      sub_21E13F374();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v62 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C18, &unk_21E148268) + 36);
      *v62 = v35;
      *(v62 + 8) = v55;
      *(v62 + 16) = v57;
      *(v62 + 24) = v59;
      *(v62 + 32) = v61;
      *(v62 + 40) = 0;
      sub_21E140934();
      memset(v112, 0, sizeof(v112));
      v113 = 1;
      sub_21E1405A4();
      sub_21DF8A460();
      v63 = v90;
      sub_21E141074();
      sub_21DF23614(v34, &qword_27CEA7C08, &qword_21E148260);
      v64 = v91;
      sub_21E140394();
      v65 = v95;
      v66 = v96;
      (*(v95 + 16))(v92, v64, v96);
      v67 = v94;
      sub_21E1403B4();
      (*(v65 + 8))(v64, v66);
      v68 = v97;
      v69 = v98;
      (*(v97 + 16))(v93, v67, v98);
      sub_21DF8D698(&qword_280F68E58, MEMORY[0x277CE0418], MEMORY[0x277CE0410]);
      v70 = sub_21E13F704();
      (*(v68 + 8))(v67, v69);
      *(v63 + *(v89 + 36)) = v70;
      v71 = v99;
      sub_21E140164();
      sub_21DF8A2EC();
      v72 = v88;
      sub_21E141044();
      (*(v100 + 8))(v71, v101);
      sub_21DF23614(v63, &qword_27CEA7BE0, &qword_21E148250);
      (*(v106 + 32))(v108, v72, v107);
      v29 = 0;
    }
  }

  else
  {
    v29 = 1;
  }

  return (*(v106 + 56))(v108, v29, 1, v107);
}

uint64_t sub_21DF78870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21E1401C4();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AA8, &qword_21E1481A0) + 36);
  sub_21DF78940(a2, v7);
  v8 = sub_21E13F5B4();
  LOBYTE(a2) = MEMORY[0x223D511C0]((2 * v8));
  v9 = sub_21E13FB74();
  v10 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C38, &qword_21E148278) + 36);
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = a2;
  *(v10 + 24) = v6;
  return sub_21DF236C0(a1, a3, &qword_27CEA7A28, &qword_21E148148);
}

char *sub_21DF78940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BD0, &qword_21E148248);
  MEMORY[0x28223BE20](v3 - 8);
  v192 = (v155 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BB8, &qword_21E148240);
  MEMORY[0x28223BE20](v5);
  v166 = v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v155 - v8;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C78, &qword_21E1482A0);
  MEMORY[0x28223BE20](v185);
  v11 = v155 - v10;
  v167 = sub_21E13F9D4();
  v165 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v164 = v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C80, &qword_21E1482A8);
  v174 = *(v13 - 8);
  v175 = v13;
  MEMORY[0x28223BE20](v13);
  v170 = v155 - v14;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C88, &qword_21E1482B0);
  MEMORY[0x28223BE20](v169);
  v173 = v155 - v15;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C90, &qword_21E1482B8);
  MEMORY[0x28223BE20](v172);
  v171 = v155 - v16;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C98, &qword_21E1482C0);
  MEMORY[0x28223BE20](v182);
  v168 = v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v176 = v155 - v19;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CA0, &qword_21E1482C8);
  MEMORY[0x28223BE20](v180);
  v181 = v155 - v20;
  v21 = type metadata accessor for CardContainer(0);
  v157 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v158 = v22;
  v159 = v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ScrollableSegmentedControl(0);
  MEMORY[0x28223BE20](v23 - 8);
  v161 = (v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B50, &qword_21E148208);
  MEMORY[0x28223BE20](v178);
  v160 = v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v162 = v155 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CA8, &qword_21E1482D0);
  MEMORY[0x28223BE20](v28);
  v179 = v155 - v29;
  v163 = v21;
  v30 = *(v21 + 28);
  v183 = a1;
  v31 = *(a1 + v30);
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v215 = v31;
  v33 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v190 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v34 = *(v31 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v186 = v11;
  v187 = v5;
  v184 = v28;
  v177 = v9;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    swift_getKeyPath();
    *&v215 = v31;
    sub_21E13D3C4();

    v36 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v35 = *(v31 + v36);
  }

  swift_getKeyPath();
  *&v215 = v35;
  v37 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  v191 = v37;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v215 = v31;
  sub_21E13D3C4();

  v38 = *(v31 + v190);
  v189 = v33;
  if (v38)
  {
    v39 = v31;
    v40 = v38;
  }

  else
  {
    swift_getKeyPath();
    *&v215 = v31;
    sub_21E13D3C4();

    v41 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v39 = v31;
    v40 = *(v31 + v41);
  }

  swift_getKeyPath();
  *&v215 = v40;

  sub_21E13D3C4();

  v42 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v43 = *(v40 + v42);
  sub_21DF5706C(v43);

  *&v215 = v43;
  LOBYTE(v43) = sub_21DF31604(&v215);

  sub_21DF5AF24(v215);
  swift_getKeyPath();
  if ((v43 & 1) == 0)
  {
    *&v215 = v39;
    sub_21E13D3C4();

    v45 = v188;
    if (*(v39 + v190))
    {
      v46 = *(v39 + v190);
    }

    else
    {
      swift_getKeyPath();
      *&v215 = v39;
      sub_21E13D3C4();

      v98 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v46 = *(v39 + v98);
    }

    swift_getKeyPath();
    *&v198 = v46;

    sub_21E13D3C4();

    v99 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v100 = *(v46 + v99);
    sub_21DF5706C(v100);

    if (v100 < 9)
    {
      sub_21DF5AF24(v100);
      v101 = 1;
      v102 = v45;
LABEL_50:
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CB0, &qword_21E1482D8);
      return (*(*(v154 - 8) + 56))(v102, v101, 1, v154);
    }

    v103 = *(v100 + 16);
    sub_21DF5706C(v103);
    sub_21DF5AF24(v100);
    v104 = sub_21E140004();
    v105 = v192;
    *v192 = v104;
    *(v105 + 1) = 0;
    *(v105 + 16) = 1;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CB8, &unk_21E1482E0);
    sub_21DF7A18C(v183, v103, &unk_282F3DF30, sub_21DF8DAE8, sub_21DF77A38, v105 + *(v106 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0, &unk_21E149300);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_21E147C70;
    v108 = sub_21E140924();
    *(v107 + 32) = v108;
    v109 = sub_21E140944();
    *(v107 + 33) = v109;
    v110 = sub_21E140964();
    *(v107 + 34) = v110;
    v111 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() != v108)
    {
      v111 = sub_21E140954();
    }

    sub_21E140954();
    if (sub_21E140954() != v109)
    {
      v111 = sub_21E140954();
    }

    v102 = v45;
    v112 = v187;

    sub_21E140954();
    if (sub_21E140954() != v110)
    {
      v111 = sub_21E140954();
    }

    v113 = v166;
    sub_21DF3DE9C(v192, v166, &qword_27CEA7BD0, &qword_21E148248);
    v114 = v113 + *(v112 + 36);
    *v114 = v111;
    *(v114 + 8) = 0u;
    *(v114 + 24) = 0u;
    *(v114 + 40) = 1;
    v115 = v177;
    sub_21DF3DE9C(v113, v177, &qword_27CEA7BB8, &qword_21E148240);
    sub_21DF236C0(v115, v186, &qword_27CEA7BB8, &qword_21E148240);
    swift_storeEnumTagMultiPayload();
    sub_21DF8A78C();
    sub_21DF8A174();
    sub_21E1402F4();
    sub_21DF5AF24(v103);
    v116 = v115;
    v117 = &qword_27CEA7BB8;
    v118 = &qword_21E148240;
LABEL_49:
    sub_21DF23614(v116, v117, v118);
    v101 = 0;
    goto LABEL_50;
  }

  *&v215 = v39;
  sub_21E13D3C4();

  if (*(v39 + v190))
  {
    v44 = *(v39 + v190);
  }

  else
  {
    swift_getKeyPath();
    *&v215 = v39;
    sub_21E13D3C4();

    v47 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v44 = *(v39 + v47);
  }

  swift_getKeyPath();
  *&v215 = v44;

  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v49 = *(v44 + v48);

  if (v49 >> 62)
  {
    v50 = sub_21E1427B4();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 < 2)
  {
    v53 = (v183 + *(v163 + 56));
    v54 = *v53;
    v55 = *(v53 + 2);
    v215 = v54;
    *&v216 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79F8, &unk_21E147F98);
    sub_21E141714();
    v215 = v198;
    sub_21DF252E0();
    v56 = sub_21E140C94();
    v58 = v57;
    v60 = v59;
    LODWORD(v215) = sub_21E1404A4();
    v61 = sub_21E140C24();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_21DF8C480(v56, v58, v60 & 1, MEMORY[0x277D85008]);

    sub_21E141CC4();
    sub_21E13FCE4();
    LOBYTE(v195) = v65 & 1;
    v68 = sub_21E140AC4();
    KeyPath = swift_getKeyPath();
    *&v198 = v61;
    *(&v198 + 1) = v63;
    LOBYTE(v199) = v65 & 1;
    *(&v199 + 1) = v67;
    v204 = v212;
    v205 = v213;
    v206 = v214;
    v200 = v208;
    v201 = v209;
    v202 = v210;
    v203 = v211;
    *&v207 = KeyPath;
    *(&v207 + 1) = v68;
    v71 = v164;
    v70 = v165;
    v72 = v167;
    (*(v165 + 104))(v164, *MEMORY[0x277CDF9D8], v167);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BA8, &unk_21E148230);
    sub_21DF8A0BC();
    v73 = v170;
    sub_21E140F64();
    (*(v70 + 8))(v71, v72);
    v221 = v204;
    v222 = v205;
    v223 = v206;
    v224 = v207;
    v217 = v200;
    v218 = v201;
    v219 = v202;
    v220 = v203;
    v215 = v198;
    v216 = v199;
    sub_21DF23614(&v215, &qword_27CEA7BA8, &unk_21E148230);
    LOBYTE(v61) = sub_21E140924();
    sub_21E13F374();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v173;
    (*(v174 + 32))(v173, v73, v175);
    v83 = &v82[*(v169 + 36)];
    *v83 = v61;
    *(v83 + 1) = v75;
    *(v83 + 2) = v77;
    *(v83 + 3) = v79;
    *(v83 + 4) = v81;
    v83[40] = 0;
    LOBYTE(v61) = sub_21E140934();
    sub_21E13F374();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v82;
    v93 = v171;
    sub_21DF3DE9C(v92, v171, &qword_27CEA7C88, &qword_21E1482B0);
    v94 = v93 + *(v172 + 36);
    *v94 = v61;
    *(v94 + 8) = v85;
    *(v94 + 16) = v87;
    *(v94 + 24) = v89;
    *(v94 + 32) = v91;
    *(v94 + 40) = 0;
    v95 = v168;
    sub_21DF3DE9C(v93, v168, &qword_27CEA7C90, &qword_21E1482B8);
    *(v95 + *(v182 + 36)) = 256;
    v96 = v176;
    sub_21DF3DE9C(v95, v176, &qword_27CEA7C98, &qword_21E1482C0);
    sub_21DF236C0(v96, v181, &qword_27CEA7C98, &qword_21E1482C0);
    swift_storeEnumTagMultiPayload();
    sub_21DF89D68();
    sub_21DF8A818();
    v97 = v179;
    sub_21E1402F4();
    sub_21DF23614(v96, &qword_27CEA7C98, &qword_21E1482C0);
LABEL_48:
    sub_21DF236C0(v97, v186, &qword_27CEA7CA8, &qword_21E1482D0);
    swift_storeEnumTagMultiPayload();
    sub_21DF8A78C();
    sub_21DF8A174();
    v102 = v188;
    sub_21E1402F4();
    v116 = v97;
    v117 = &qword_27CEA7CA8;
    v118 = &qword_21E1482D0;
    goto LABEL_49;
  }

  swift_getKeyPath();
  *&v215 = v39;
  sub_21E13D3C4();

  v51 = *(v39 + v190);
  v155[1] = v32;
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    swift_getKeyPath();
    *&v215 = v39;
    sub_21E13D3C4();

    v119 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v52 = *(v39 + v119);
  }

  swift_getKeyPath();
  *&v198 = v52;

  sub_21E13D3C4();

  v120 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v121 = *(v52 + v120);

  if (!(v121 >> 62))
  {
    v122 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v156 = v39;
    if (v122)
    {
      goto LABEL_32;
    }

LABEL_43:

    v125 = MEMORY[0x277D84F90];
LABEL_44:
    v192 = type metadata accessor for CardContainer;
    v133 = v183;
    v134 = v159;
    sub_21DF8C7C8(v183, v159, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v135 = sub_21E1423B4();
    v136 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v137 = swift_allocObject();
    v138 = MEMORY[0x277D85700];
    *(v137 + 16) = v135;
    *(v137 + 24) = v138;
    sub_21DF8C494(v134, v137 + v136, type metadata accessor for CardContainer);
    sub_21DF8C7C8(v133, v134, v192);
    v139 = sub_21E1423B4();
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    *(v140 + 24) = MEMORY[0x277D85700];
    sub_21DF8C494(v134, v140 + v136, type metadata accessor for CardContainer);
    sub_21E141A04();
    v141 = v195;
    v142 = v196;
    v143 = v197;
    swift_getKeyPath();
    v144 = v156;
    v195 = v156;
    sub_21E13D3C4();

    if (*(v144 + v190))
    {
      v145 = *(v144 + v190);
    }

    else
    {
      swift_getKeyPath();
      v195 = v144;
      sub_21E13D3C4();

      v146 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v145 = *(v144 + v146);
    }

    v147 = v162;
    swift_getKeyPath();
    v194 = v145;

    sub_21E13D3C4();

    v148 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v149 = *(v145 + v148);

    swift_getKeyPath();
    v193 = v149;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v150 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LOBYTE(v150) = *(v149 + v150);

    v151 = v161;
    sub_21DF3CA40(v125, v141, v142, v143, v150, v161);
    LOBYTE(v150) = sub_21E140914();
    v152 = v160;
    sub_21DF8C494(v151, v160, type metadata accessor for ScrollableSegmentedControl);
    v153 = v152 + *(v178 + 36);
    *v153 = v150;
    *(v153 + 8) = 0u;
    *(v153 + 24) = 0u;
    *(v153 + 40) = 1;
    sub_21DF3DE9C(v152, v147, &qword_27CEA7B50, &qword_21E148208);
    sub_21DF236C0(v147, v181, &qword_27CEA7B50, &qword_21E148208);
    swift_storeEnumTagMultiPayload();
    sub_21DF89D68();
    sub_21DF8A818();
    v97 = v179;
    sub_21E1402F4();
    sub_21DF23614(v147, &qword_27CEA7B50, &qword_21E148208);
    goto LABEL_48;
  }

  v122 = sub_21E1427B4();
  v156 = v39;
  if (!v122)
  {
    goto LABEL_43;
  }

LABEL_32:
  v195 = MEMORY[0x277D84F90];
  result = sub_21DF5BFAC(0, v122 & ~(v122 >> 63), 0);
  if ((v122 & 0x8000000000000000) == 0)
  {
    v124 = 0;
    v125 = v195;
    v126 = v121;
    v192 = (v121 & 0xC000000000000001);
    do
    {
      if (v192)
      {
        v127 = MEMORY[0x223D530F0](v124, v126);
      }

      else
      {
        v127 = *(v126 + 8 * v124 + 32);
      }

      swift_getKeyPath();
      v194 = v127;
      sub_21DF8D698(&qword_280F6B830, type metadata accessor for NewActionModel, &protocol conformance descriptor for NewActionModel);
      sub_21E13D3C4();

      swift_beginAccess();
      v128 = *(v127 + 56);
      v129 = *(v127 + 64);

      v195 = v125;
      v131 = *(v125 + 16);
      v130 = *(v125 + 24);
      if (v131 >= v130 >> 1)
      {
        sub_21DF5BFAC((v130 > 1), v131 + 1, 1);
        v125 = v195;
      }

      ++v124;
      *(v125 + 16) = v131 + 1;
      v132 = v125 + 16 * v131;
      *(v132 + 32) = v128;
      *(v132 + 40) = v129;
      v126 = v121;
    }

    while (v122 != v124);

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF7A18C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v31 = a3;
  v32 = a2;
  v36 = a6;
  v7 = type metadata accessor for CardContainer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0, &qword_21E148320);
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE8, &qword_21E148328);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  sub_21DF8C7C8(a1, v10, type metadata accessor for CardContainer);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_21DF8C494(v10, v23 + v21, type metadata accessor for CardContainer);
  v24 = v32;
  *(v23 + v22) = v32;
  sub_21DF5706C(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0, &qword_21E148330);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0, &qword_21E148330, MEMORY[0x277CDEFF0]);
  sub_21E141764();
  sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0, &qword_21E148320, MEMORY[0x277CDF028]);
  sub_21DF8AA1C();
  v25 = v33;
  sub_21E140DD4();
  (*(v11 + 8))(v13, v25);
  v26 = *(v15 + 16);
  v26(v17, v20, v14);
  v27 = v36;
  v26(v36, v17, v14);
  v28 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D08, &qword_21E148338) + 48)];
  *v28 = 0;
  v28[8] = 1;
  v29 = *(v15 + 8);
  v29(v20, v14);
  return (v29)(v17, v14);
}

uint64_t sub_21DF7A554(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for CardContainer(0) + 28));
  swift_getKeyPath();
  v5 = v3;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v5 = a2;

    sub_21DF5706C(a2);
    NewEntityModel.cardLayout.setter(&v5);
  }

  return result;
}

unint64_t sub_21DF7A638(uint64_t a1)
{
  v33 = sub_21E140124();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - v4;
  v5 = sub_21DF7ACB4();
  v6 = type metadata accessor for CardContainer(0);
  v7 = (a1 + *(v6 + 48));
  v9 = *v7;
  v8 = v7[1];
  v39 = v9;
  v40 = v8;
  v38 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08, &qword_21E1480F8);
  sub_21E141724();
  v28 = v6;
  v10 = *(v6 + 28);
  v32 = a1;
  v11 = *(a1 + v10);
  swift_getKeyPath();
  v39 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v13 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v39 = v11;
    sub_21E13D3C4();

    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v13 = *(v11 + v14);
  }

  swift_getKeyPath();
  v38 = v13;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v37 = v11;
  sub_21E13D3C4();

  if (*(v11 + v12))
  {
    v15 = *(v11 + v12);
  }

  else
  {
    swift_getKeyPath();
    v37 = v11;
    sub_21E13D3C4();

    v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v15 = *(v11 + v16);
  }

  swift_getKeyPath();
  v36[3] = v15;

  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v18 = *(v15 + v17);
  sub_21DF5706C(v18);

  v36[0] = v18;
  LOBYTE(v18) = sub_21DF31604(v36);

  result = sub_21DF5AF24(v36[0]);
  if (v18)
  {
    swift_getKeyPath();
    v36[0] = v11;
    sub_21E13D3C4();

    if (*(v11 + v12))
    {
      v20 = *(v11 + v12);
    }

    else
    {
      swift_getKeyPath();
      v36[0] = v11;
      sub_21E13D3C4();

      v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v20 = *(v11 + v21);
    }

    swift_getKeyPath();
    v35 = v20;

    sub_21E13D3C4();

    v22 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v23 = *(v20 + v22);

    swift_getKeyPath();
    v34 = v23;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
    sub_21E13D3C4();

    v24 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LODWORD(v24) = *(v23 + v24);

    v25 = v29;
    if (v24 == 1)
    {
      sub_21E140104();
    }

    else
    {
      sub_21DF64180(v29);
    }

    v26 = v31;
    v27 = v33;
    (*(v31 + 16))(v30, v25, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988, &qword_21E147D88);
    sub_21E141724();
    return (*(v26 + 8))(v25, v27);
  }

  return result;
}

uint64_t sub_21DF7ACB4()
{
  v1 = *(v0 + *(type metadata accessor for CardContainer(0) + 28));
  swift_getKeyPath();
  v20 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v20 = v1;
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v3 = *(v1 + v4);
  }

  swift_getKeyPath();
  v19 = v3;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v18 = v1;
  sub_21E13D3C4();

  if (*(v1 + v2))
  {
    v5 = *(v1 + v2);
  }

  else
  {
    swift_getKeyPath();
    v18 = v1;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v1 + v6);
  }

  swift_getKeyPath();
  v17[1] = v5;

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v8 = *(v5 + v7);
  sub_21DF5706C(v8);

  v17[0] = v8;
  v9 = sub_21DF31604(v17);

  sub_21DF5AF24(v17[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A10, &qword_21E148120);
  v10 = sub_21E140124();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  if (v9)
  {
    *(v14 + 16) = xmmword_21E147C80;
    sub_21E140104();
    sub_21DF64180(v14 + v13 + v12);
    v15 = sub_21E0E8978(v14);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    *(v14 + 16) = xmmword_21E145380;
    sub_21DF64180(v14 + v13);
    v15 = sub_21E0E8978(v14);
    swift_setDeallocating();
    (*(v11 + 8))(v14 + v13, v10);
  }

  swift_deallocClassInstance();
  return v15;
}

unint64_t sub_21DF7B110(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for CardContainer(0) + 28));
  swift_getKeyPath();
  v19 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v19 = v1;
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v3 = *(v1 + v4);
  }

  swift_getKeyPath();
  v18 = v3;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v17 = v1;
  sub_21E13D3C4();

  if (*(v1 + v2))
  {
    v5 = *(v1 + v2);
  }

  else
  {
    swift_getKeyPath();
    v17 = v1;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v1 + v6);
  }

  swift_getKeyPath();
  v16[3] = v5;

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v8 = *(v5 + v7);
  sub_21DF5706C(v8);

  v16[0] = v8;
  LOBYTE(v8) = sub_21DF31604(v16);

  result = sub_21DF5AF24(v16[0]);
  if (v8)
  {
    swift_getKeyPath();
    v16[0] = v1;
    sub_21E13D3C4();

    if (*(v1 + v2))
    {
      v10 = *(v1 + v2);
    }

    else
    {
      swift_getKeyPath();
      v16[0] = v1;
      sub_21E13D3C4();

      v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v10 = *(v1 + v11);
    }

    swift_getKeyPath();

    sub_21E13D3C4();

    v12 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v13 = *(v10 + v12);

    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    if (*(v13 + v14) == 1)
    {
      *(v13 + v14) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel, &protocol conformance descriptor for CardModel);
      sub_21E13D3B4();
    }
  }

  return result;
}

unint64_t sub_21DF7B63C(uint64_t a1)
{
  v2 = type metadata accessor for CardContainer(0);
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = v3;
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980, &qword_21E146EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v34 - v5;
  v38 = sub_21E140124();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v8;
  v44 = v2;
  v9 = *(v2 + 28);
  v39 = a1;
  v10 = *(a1 + v9);
  swift_getKeyPath();
  v51 = v10;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel, &protocol conformance descriptor for NewSaliencyModel);
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v12 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v51 = v10;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v10 + v13);
  }

  swift_getKeyPath();
  v50 = v12;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel, &protocol conformance descriptor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v49 = v10;
  sub_21E13D3C4();

  if (*(v10 + v11))
  {
    v14 = *(v10 + v11);
  }

  else
  {
    swift_getKeyPath();
    v49 = v10;
    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v14 = *(v10 + v15);
  }

  swift_getKeyPath();
  v48[3] = v14;

  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v17 = *(v14 + v16);
  sub_21DF5706C(v17);

  v48[0] = v17;
  LOBYTE(v17) = sub_21DF31604(v48);

  result = sub_21DF5AF24(v48[0]);
  if ((v17 & 1) == 0)
  {
    v19 = v35;
    v20 = v39;
    sub_21DF64180(v35);
    v21 = (v20 + *(v44 + 48));
    v23 = v21[1];
    v48[0] = *v21;
    v22 = v48[0];
    v48[1] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08, &qword_21E1480F8);
    sub_21E141714();
    v24 = v37;
    sub_21E0E2440(v37, v19);
    v25 = v36;
    v34 = *(v36 + 8);
    v26 = v38;
    v34(v24, v38);
    v46 = v22;
    v47 = v23;
    v45 = v48[2];
    sub_21E141724();

    sub_21DF64180(v24);
    (*(v25 + 16))(v19, v24, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988, &qword_21E147D88);
    sub_21E141724();
    v34(v24, v26);
    v27 = sub_21E1423F4();
    v28 = v41;
    (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
    v29 = v43;
    sub_21DF8C7C8(v20, v43, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v30 = sub_21E1423B4();
    v31 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    *(v32 + 16) = v30;
    *(v32 + 24) = v33;
    sub_21DF8C494(v29, v32 + v31, type metadata accessor for CardContainer);
    sub_21E0C2E04(0, 0, v28, &unk_21E148130, v32);
  }

  return result;
}