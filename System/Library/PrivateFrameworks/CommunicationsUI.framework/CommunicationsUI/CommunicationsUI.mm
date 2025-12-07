uint64_t static FilterMenuViewModel.recommendedActions(for:junkFilteringEnabled:voicemailEnabled:requestsEnabled:)(_BYTE *a1, char a2, char a3, char a4)
{
  if ((*a1 & 1) == 0)
  {
    v6 = sub_1C2C6DEB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    v14 = v12 >> 1;
    v15 = v13 + 1;
    if (v12 >> 1 <= v13)
    {
      v6 = sub_1C2C6DEB4((v12 > 1), v13 + 1, 1, v6);
      v12 = *(v6 + 24);
      v14 = v12 >> 1;
    }

    *(v6 + 16) = v15;
    *(v6 + v13 + 32) = 0;
    v16 = v13 + 2;
    if (v14 < (v13 + 2))
    {
      v6 = sub_1C2C6DEB4((v12 > 1), v13 + 2, 1, v6);
    }

    *(v6 + 16) = v16;
    *(v6 + v15 + 32) = 1;
    if (a3)
    {
      v17 = *(v6 + 24);
      v18 = v13 + 3;
      if ((v13 + 3) > (v17 >> 1))
      {
        v6 = sub_1C2C6DEB4((v17 > 1), v13 + 3, 1, v6);
      }

      *(v6 + 16) = v18;
      *(v6 + v16 + 32) = 2;
      if ((a4 & 1) == 0)
      {
LABEL_16:
        v19 = *(v6 + 16);
        if (a2)
        {
LABEL_17:
          v20 = *(v6 + 24);
          v9 = v19 + 1;
          if (v19 >= v20 >> 1)
          {
            v6 = sub_1C2C6DEB4((v20 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 16) = v9;
          v10 = v6 + v19;
          goto LABEL_20;
        }

LABEL_26:
        v9 = v19;
        goto LABEL_27;
      }
    }

    else
    {
      v18 = v13 + 2;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v21 = *(v6 + 24);
    if (v18 >= v21 >> 1)
    {
      v6 = sub_1C2C6DEB4((v21 > 1), v18 + 1, 1, v6);
    }

    *(v6 + 16) = v18 + 1;
    *(v6 + v18 + 32) = 4;
    v19 = *(v6 + 16);
    if (a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB30, &qword_1C2E7AFA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C2E7C4C0;
  *(v6 + 32) = 33751296;
  v7 = 4;
  if (a4)
  {
    v6 = sub_1C2C6DEB4(1, 5, 1, v6);
    *(v6 + 16) = 5;
    *(v6 + 36) = 4;
    v7 = 5;
  }

  if (a2)
  {
    v8 = *(v6 + 24);
    v9 = v7 + 1;
    if (v7 >= v8 >> 1)
    {
      v6 = sub_1C2C6DEB4((v8 > 1), v7 + 1, 1, v6);
    }

    *(v6 + 16) = v9;
    v10 = v6 + v7;
LABEL_20:
    *(v10 + 32) = 5;
    goto LABEL_27;
  }

  v9 = v7;
LABEL_27:
  v22 = *(v6 + 24);
  if (v9 >= v22 >> 1)
  {
    v6 = sub_1C2C6DEB4((v22 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + v9 + 32) = 7;
  return v6;
}

uint64_t sub_1C2C6DDDC(uint64_t a1)
{
  result = sub_1C2E71AA4();
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

char *sub_1C2C6DEB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB30, &qword_1C2E7AFA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t type metadata accessor for FilterMenuViewModel(uint64_t a1)
{
  result = qword_1EC05CEB0;
  if (!qword_1EC05CEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C6DFF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FilterMenuViewModel.actionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel, &protocol conformance descriptor for FilterMenuViewModel);
  sub_1C2E71A54();
}

uint64_t sub_1C2C6E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t sub_1C2C6E1B4(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_1C2C6E240(uint64_t a1)
{
  type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1C2C6E320();
    if (v2 <= 0x3F)
    {
      sub_1C2DD3DB4(319, &qword_1EC05CAB0, sub_1C2C6E350, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C2DD3AB8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_1C2C6E320()
{
  result = qword_1EC05CED8;
  if (!qword_1EC05CED8)
  {
    result = &type metadata for SystemImage;
    atomic_store(&type metadata for SystemImage, &qword_1EC05CED8);
  }

  return result;
}

unint64_t sub_1C2C6E350()
{
  result = qword_1EC05CA58;
  if (!qword_1EC05CA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05CA58);
  }

  return result;
}

uint64_t sub_1C2C6E3A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C2C6E41C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t static FavoriteTileStyle.current.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E74624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    v8 = 8.0;
    v9 = 0x3FC89374BC6A7EFALL;
    v10 = 0x3FF851EB851EB852;
    sub_1C2E74674();
  }

  else
  {
    v8 = 6.0;
    v9 = 0x3FD199999999999ALL;
    v10 = 0x3FF8333333333333;
    sub_1C2E74644();
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  v11 = sub_1C2E74664();

  result = (*(v3 + 8))(v5, v2);
  *a1 = v10;
  a1[1] = v9;
  a1[2] = 0x4000000000000000;
  *(a1 + 3) = v8;
  a1[4] = v11;
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

uint64_t FilterMenuViewModel.selectedAction.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel, &protocol conformance descriptor for FilterMenuViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__selectedAction;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

void sub_1C2C6E7AC()
{
  if (!qword_1EC05BAB8)
  {
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05BAB8);
    }
  }
}

void sub_1C2C6E814(uint64_t a1)
{
  sub_1C2C6E8E0();
  if (v1 <= 0x3F)
  {
    sub_1C2C6E7AC();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C2C6E8E0()
{
  result = qword_1EC05BD88;
  if (!qword_1EC05BD88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC05BD88);
  }

  return result;
}

uint64_t _s26ButtonShelfHorizontalStackVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C2C6E96C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1C2C6E9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2C6E9FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2C6EA44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2C6EA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2C6EAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1C2C6EE48(v11);
  (*(v5 + 16))(v7, v10, a2);
  v16 = 0;
  v17 = 0;
  v18[0] = v7;
  v18[1] = &v16;
  v15[0] = a2;
  v15[1] = MEMORY[0x1E6981840];
  v14[0] = a3;
  v14[1] = MEMORY[0x1E6981838];
  sub_1C2C6EC40(v18, 2uLL, v15);
  v12 = *(v5 + 8);
  v12(v10, a2);
  return (v12)(v7, a2);
}

uint64_t sub_1C2C6EC40(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1C2E75854();
}

uint64_t sub_1C2C6EE50(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_1C2C6EE98@<D0>(uint64_t a1@<X8>)
{
  sub_1C2C6EEF0();
  sub_1C2E73BB4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_1C2C6EEF0()
{
  result = qword_1EC05BC78;
  if (!qword_1EC05BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BC78);
  }

  return result;
}

uint64_t sub_1C2C6EF44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC05BC88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EC0758C0;
  v3 = *algn_1EC0758B0;
  *a1 = xmmword_1EC0758A0;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

unint64_t sub_1C2C6EFD0()
{
  result = qword_1EC05CEC8;
  if (!qword_1EC05CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CEC8);
  }

  return result;
}

uint64_t sub_1C2C6F038()
{
  v1 = *v0;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  return sub_1C2E76894();
}

uint64_t static FilterMenu.menu(with:)(_BYTE *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v96 = MEMORY[0x1E69E7CC0];
  v3 = FilterMenuViewModel.actions.getter();
  v84 = a1;
  v78 = *(v3 + 16);
  if (!v78)
  {

    v7 = MEMORY[0x1E69E7CC0];
    v44 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v44)
    {
      goto LABEL_81;
    }

    goto LABEL_95;
  }

  v4 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsInSeparateSubmenu;
  v5 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__style;
  v74 = v3 + 32;
  v76 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsToCount;
  swift_beginAccess();
  swift_beginAccess();
  v73 = v5;
  swift_beginAccess();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = *(v74 + v6);
    swift_getKeyPath();
    v93[0] = a1;
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel, &protocol conformance descriptor for FilterMenuViewModel);
    sub_1C2E71A64();

    v9 = *&a1[v76];
    if (*(v9 + 16))
    {

      v10 = sub_1C2D92424(v8);
      if (v11)
      {
        v12 = *(v9 + 56) + 24 * v10;
        v79 = *(v12 + 8);
        v81 = *v12;
        v85 = *(v12 + 16);
        sub_1C2E605B4(*v12, v79, v85);
      }

      else
      {
        v79 = 0;
        v81 = 0;
        v85 = 0;
      }
    }

    else
    {
      v79 = 0;
      v81 = 0;
      v85 = 0;
    }

    v82 = v6 + 1;
    swift_getKeyPath();
    v93[0] = a1;
    sub_1C2E71A64();

    v13 = *&a1[v4];
    v14 = *(v13 + 16);
    v15 = (v13 + 32);

    while (v14)
    {
      v17 = *v15;
      if (v17 <= 3)
      {
        v20 = 0x69616D6F65646976;
        if (v17 == 2)
        {
          v20 = 0x69616D6563696F76;
        }

        v21 = 0x64657373696DLL;
        if (!*v15)
        {
          v21 = 0x736C6C6163;
        }

        v22 = 0xE500000000000000;
        if (*v15)
        {
          v22 = 0xE600000000000000;
        }

        if (*v15 <= 1u)
        {
          v18 = v21;
        }

        else
        {
          v18 = v20;
        }

        if (*v15 <= 1u)
        {
          v19 = v22;
        }

        else
        {
          v19 = 0xE90000000000006CLL;
        }

        if (v8 > 3)
        {
LABEL_43:
          v23 = 0x746C69466C6C6163;
          if (v8 != 7)
          {
            v23 = 0x656D695465636166;
          }

          v24 = 0xED0000676E697265;
          if (v8 != 7)
          {
            v24 = 0xE800000000000000;
          }

          if (v8 == 6)
          {
            v23 = 0x64656B636F6C62;
            v24 = 0xE700000000000000;
          }

          v25 = 0x7374736575716572;
          if (v8 == 4)
          {
            v26 = 0xE800000000000000;
          }

          else
          {
            v25 = 1802401130;
            v26 = 0xE400000000000000;
          }

          if (v8 <= 5)
          {
            v27 = v25;
          }

          else
          {
            v27 = v23;
          }

          if (v8 <= 5)
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          if (v18 != v27)
          {
            goto LABEL_12;
          }

          goto LABEL_71;
        }
      }

      else if (*v15 <= 5u)
      {
        if (v17 == 4)
        {
          v18 = 0x7374736575716572;
        }

        else
        {
          v18 = 1802401130;
        }

        if (v17 == 4)
        {
          v19 = 0xE800000000000000;
        }

        else
        {
          v19 = 0xE400000000000000;
        }

        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      else if (v17 == 6)
      {
        v19 = 0xE700000000000000;
        v18 = 0x64656B636F6C62;
        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      else if (v17 == 7)
      {
        v18 = 0x746C69466C6C6163;
        v19 = 0xED0000676E697265;
        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v19 = 0xE800000000000000;
        v18 = 0x656D695465636166;
        if (v8 > 3)
        {
          goto LABEL_43;
        }
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v29 = 0x69616D6563696F76;
        }

        else
        {
          v29 = 0x69616D6F65646976;
        }

        v28 = 0xE90000000000006CLL;
        if (v18 != v29)
        {
          goto LABEL_12;
        }
      }

      else if (v8)
      {
        v28 = 0xE600000000000000;
        if (v18 != 0x64657373696DLL)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v28 = 0xE500000000000000;
        if (v18 != 0x736C6C6163)
        {
          goto LABEL_12;
        }
      }

LABEL_71:
      if (v19 == v28)
      {

LABEL_76:

        sub_1C2E605A0(v81, v79, v85);
        v6 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C2C6DEB4(0, *(v7 + 2) + 1, 1, v7);
        }

        v43 = *(v7 + 2);
        v42 = *(v7 + 3);
        a1 = v84;
        if (v43 >= v42 >> 1)
        {
          v7 = sub_1C2C6DEB4((v42 > 1), v43 + 1, 1, v7);
        }

        *(v7 + 2) = v43 + 1;
        v7[v43 + 32] = v8;
        goto LABEL_4;
      }

LABEL_12:
      v16 = sub_1C2E767A4();

      ++v15;
      --v14;
      if (v16)
      {
        goto LABEL_76;
      }
    }

    swift_getKeyPath();
    v93[0] = v84;
    sub_1C2E71A64();

    v30 = v84[v73];
    LOBYTE(v93[0]) = v8;
    FilterMenuViewModel.isSelected(_:)(v93);
    v31 = swift_allocObject();
    *(v31 + 16) = v84;
    v92[0] = v8;
    v93[0] = v81;
    v93[1] = v79;
    v94 = v85;
    v32 = v84;
    FilterMenuViewModel.Action.title(occurrences:)(v93);
    LOBYTE(v93[0]) = v8;
    v92[0] = v30;
    sub_1C2E5C710(v92);
    v33 = sub_1C2E75C24();

    v34 = [objc_opt_self() systemImageNamed_];

    sub_1C2C6E1B4(0, &qword_1EC05CA60, 0x1E69DC628);
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1C2E605C4;
    *(v35 + 24) = v31;
    *(v35 + 32) = v8;
    v36 = sub_1C2E76264();
    sub_1C2E605A0(v81, v79, v85);
    v37 = v36;
    MEMORY[0x1C6926780](v37, v38, v39, v40, v41);
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();

    v6 = v82;
    a1 = v84;
LABEL_4:
    ;
  }

  while (v6 != v78);

  v2 = MEMORY[0x1E69E7CC0];
  v44 = *(v7 + 2);
  if (!v44)
  {
LABEL_95:

    goto LABEL_96;
  }

LABEL_81:
  v95 = v2;
  sub_1C2C6E1B4(0, &qword_1EC05CA60, 0x1E69DC628);
  v80 = objc_opt_self();
  v45 = &a1[OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionHandler];
  v77 = OBJC_IVAR____TtC16CommunicationsUI19FilterMenuViewModel__actionsToCount;
  swift_beginAccess();
  swift_beginAccess();
  v75 = v45;
  swift_beginAccess();
  v46 = 32;
  v88 = v7;
  do
  {
    v47 = v7[v46];
    swift_getKeyPath();
    v89[0] = a1;
    sub_1C2C6DFF8(&qword_1EC05CEC0, type metadata accessor for FilterMenuViewModel, &protocol conformance descriptor for FilterMenuViewModel);
    sub_1C2E71A64();

    v48 = *&a1[v77];
    v83 = v44;
    if (*(v48 + 16))
    {

      v49 = sub_1C2D92424(v47);
      if (v50)
      {
        v51 = *(v48 + 56) + 24 * v49;
        v52 = *v51;
        v53 = *(v51 + 8);
        v54 = *(v51 + 16);
        sub_1C2E605B4(*v51, v53, v54);
      }

      else
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
      }

      v86 = v53;
      v87 = v52;

      v55 = v54;
    }

    else
    {
      v86 = 0;
      v87 = 0;
      v55 = 0;
    }

    swift_getKeyPath();
    v89[0] = a1;
    sub_1C2E71A64();

    LOBYTE(v89[0]) = v47;
    FilterMenuViewModel.isSelected(_:)(v89);
    swift_getKeyPath();
    v89[0] = a1;
    sub_1C2E71A64();

    v57 = *v75;
    v56 = v75[1];
    v91 = v47;
    v89[0] = v87;
    v89[1] = v86;
    v90 = v55;

    FilterMenuViewModel.Action.title(occurrences:)(v89);
    v58 = sub_1C2E75C24();

    v59 = [v80 systemImageNamed_];

    v60 = swift_allocObject();
    *(v60 + 16) = v57;
    *(v60 + 24) = v56;
    *(v60 + 32) = v47;
    v61 = sub_1C2E76264();
    sub_1C2E605A0(v87, v86, v55);
    v62 = v61;
    MEMORY[0x1C6926780](v62, v63, v64, v65, v66);
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2E75D94();
    }

    sub_1C2E75DB4();

    ++v46;
    a1 = v84;
    --v44;
    v7 = v88;
  }

  while (v83 != 1);

  sub_1C2C6E1B4(0, &unk_1EC05CA80, 0x1E69DCC60);
  v67 = sub_1C2E76194();
  MEMORY[0x1C6926780](v67, v68, v69, v70, v71);
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C2E75D94();
  }

  sub_1C2E75DB4();
LABEL_96:
  sub_1C2C6E1B4(0, &unk_1EC05CA80, 0x1E69DCC60);
  return sub_1C2E76194();
}

uint64_t sub_1C2C6FDF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1C2C6FE30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1C2C6FE84(uint64_t a1)
{
  v1 = a1;
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  v2 = sub_1C2E76894();

  return sub_1C2D92548(v1, v2);
}

uint64_t type metadata accessor for ContactAvatarTileView(uint64_t a1)
{
  result = qword_1EC05BFD8;
  if (!qword_1EC05BFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2C6FF3C(uint64_t a1)
{
  sub_1C2C701B4(319, &qword_1EC05CC08, MEMORY[0x1E69CA888]);
  if (v1 <= 0x3F)
  {
    sub_1C2E5B29C(319, &qword_1EC05B318, &qword_1EC05E100, &qword_1C2E93130, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_1C2E5B29C(319, &qword_1EC05B410, &qword_1EC05E0E8, &unk_1C2E7C0C0, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1C2E5B29C(319, &qword_1EC05B308, &qword_1EC05DB40, &unk_1C2E7AFB0, MEMORY[0x1E6981948]);
        if (v4 <= 0x3F)
        {
          sub_1C2C70208(319, &qword_1EC05BBB0, &type metadata for ContactAvatarTileViewCustomConfiguration, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C2C70208(319, &qword_1EC05B310, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v6 <= 0x3F)
            {
              sub_1C2C701B4(319, &qword_1EC05CC00, MEMORY[0x1E697E730]);
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

void sub_1C2C70150(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C2C701B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C2E730F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C2C70208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C2C702C8(uint64_t a1)
{
  sub_1C2C7042C(319, &qword_1EC05B2D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C2C7042C(319, &qword_1EC05B2B0, &type metadata for ContactAvatarTileView.Caption.Accessory, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C2E757E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C2C703E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C2E76424();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C2C7042C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C2C70490(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C2E757E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

char *ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 9) = v3;
  return result;
}

uint64_t sub_1C2C70558(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C2C705A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t ContactAvatarTileView.Caption.init(subtitle:font:accessory:accessoryColor:blendMode:opacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = a6;
  v53 = a1;
  v54 = a3;
  v55 = a2;
  v57 = type metadata accessor for ContactAvatarTileView.Caption(0);
  MEMORY[0x1EEE9AC00](v57);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810, &qword_1C2E7B9B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v47 = &v46 - v14;
  v15 = sub_1C2E746A4();
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C2E757E4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v24 = *a4;
  v25 = a4[1];
  v26 = *(a4 + 16);
  v60[0] = v24;
  v60[1] = v25;
  v61 = v26;
  v58 = a7;
  v56 = a5;
  if (v26 == 255)
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C2C70B1C(v24, v25, v26);
    v27 = MEMORY[0x1E69E7CC0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1C2C70B44(0, *(v27 + 16) + 1, 1, v27);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1C2C70B44((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v51 = v29;
    v32 = &v29[24 * v31];
    *(v32 + 4) = v24;
    *(v32 + 5) = v25;
    v32[48] = v26;
  }

  sub_1C2C73644(v60, &qword_1EC05F148, &qword_1C2E7EA10);
  v33 = *(v19 + 16);
  v34 = v52;
  v33(v23, v52, v18);
  sub_1C2E74FA4();
  v50 = sub_1C2E74F74();

  v33(v59, v23, v18);
  v35 = v54;
  if (v54)
  {
    v36 = *(v19 + 8);
    v36(v34, v18);
    v36(v23, v18);
    v37 = v56;
  }

  else
  {
    v38 = *MEMORY[0x1E6980EF0];
    v39 = *(v48 + 104);
    v46 = v17;
    v39(v17, v38, v49);
    v40 = sub_1C2E74534();
    v41 = v47;
    (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
    v37 = v56;

    sub_1C2E74594();
    v35 = sub_1C2E745D4();

    v42 = *(v19 + 8);
    v42(v34, v18);
    sub_1C2C73644(v41, &qword_1EC05D810, &qword_1C2E7B9B0);
    (*(v48 + 8))(v46, v49);
    v42(v23, v18);
  }

  v43 = v55;
  *v12 = v53;
  *(v12 + 1) = v43;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v44 = v51;
  *(v12 + 4) = v50;
  *(v12 + 5) = 0;
  v12[48] = 0;
  *(v12 + 7) = 0;
  *(v12 + 8) = v35;
  *(v12 + 9) = v44;
  if (!v37)
  {
  }

  *(v12 + 10) = v37;
  *(v12 + 11) = 0;
  v12[96] = 0;
  *(v12 + 13) = v35;
  (*(v19 + 32))(&v12[*(v57 + 48)], v59, v18);
  sub_1C2DD3124(v12, v58, type metadata accessor for ContactAvatarTileView.Caption);
}

id sub_1C2C70B1C(id result, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return result;
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

char *sub_1C2C70B44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0629E0, &qword_1C2E8AC30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C2C70C84(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C2E757E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C70D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C2C70D74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t ContactAvatarTileView.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:customConfig:showSpinner:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)()@<X7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v92 = a8;
  v78 = sub_1C2E718A4();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v70 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v69) = *a11;
  v79 = a1;
  sub_1C2C6E3A4(a1, &v117);
  if (a2)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v24 = sub_1C2D0BD8C;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v98 = v24;
  v99 = v23;
  sub_1C2C6EE50(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB40, &unk_1C2E7AFB0);
  sub_1C2E753B4();
  sub_1C2C71668(v24, v23);
  v90 = v113;
  v89 = v114;
  v91 = v115;
  v96 = v116;
  v77 = a3;
  if (a4)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v26 = sub_1C2D0BD8C;
  }

  else
  {
    v26 = 0;
    v25 = 0;
  }

  v98 = v26;
  v99 = v25;
  v27 = a5;
  sub_1C2C6EE50(a4, a5);
  sub_1C2E753B4();
  sub_1C2C71668(v26, v25);
  v87 = v109;
  v94 = v110;
  v95 = v111;
  v88 = v112;
  if (a6)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(v28 + 24) = a7;
    v29 = a7;
    v30 = sub_1C2D0BD8C;
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v29 = a7;
  }

  LODWORD(v67) = a14;
  v83 = a13;
  v84 = a12;
  v98 = v30;
  v99 = v28;
  sub_1C2C6EE50(a6, v29);
  sub_1C2E753B4();
  sub_1C2C71668(v30, v28);
  v93 = v105;
  v82 = v106;
  v86 = v107;
  v85 = v108;
  v31 = v92;
  v76 = a2;
  v75 = v27;
  v73 = a4;
  v72 = v29;
  v71 = a6;
  if (v92)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = a10;
    v33 = v31;
    v31 = sub_1C2D0B4AC;
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v98 = v31;
  v99 = v32;
  v68 = a10;
  sub_1C2C6EE50(v33, a10);
  sub_1C2E753B4();
  sub_1C2C71668(v31, v32);
  v34 = v101;
  v35 = v102;
  v37 = v103;
  v36 = v104;
  v97 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E100, &qword_1C2E93130);
  sub_1C2E753B4();
  v80 = v98;
  v38 = v99;
  v81 = v100;
  v39 = type metadata accessor for ContactAvatarTileView(0);
  v40 = v39[5];
  *(a9 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E250, &qword_1C2E7EAC0);
  swift_storeEnumTagMultiPayload();
  v41 = v39[14];
  *(a9 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58, &unk_1C2E7A920);
  swift_storeEnumTagMultiPayload();
  sub_1C2C6E3A4(&v117, &v98);
  sub_1C2C6E3A4(&v98, &v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E8, &unk_1C2E7C0C0);
  sub_1C2E75174();
  __swift_destroy_boxed_opaque_existential_1(&v98);
  v42 = (a9 + v39[8]);
  *v42 = v90;
  v43 = v91;
  v42[1] = v89;
  v42[2] = v43;
  v44 = a9;
  v66 = a9;
  v45 = v43;
  v42[3] = v96;
  v46 = (v44 + v39[9]);
  v47 = v94;
  *v46 = v87;
  v46[1] = v47;
  v48 = v88;
  v46[2] = v95;
  v46[3] = v48;
  v49 = (v44 + v39[10]);
  v50 = v82;
  *v49 = v93;
  v49[1] = v50;
  v51 = v85;
  v49[2] = v86;
  v49[3] = v51;
  v52 = (v44 + v39[11]);
  *v52 = v34;
  v52[1] = v35;
  v65 = v37;
  v52[2] = v37;
  v52[3] = v36;
  v64 = v36;
  *(v44 + v39[12]) = v69;
  v53 = v44 + v39[13];
  v54 = v83;
  *v53 = v84;
  *(v53 + 1) = v54;
  v53[16] = v67 & 1;
  v55 = (v44 + v39[6]);
  *v55 = v80;
  v55[1] = v38;
  v55[2] = v81;

  sub_1C2C6EE50(v45, v96);

  sub_1C2C6EE50(v95, v48);

  v56 = v86;
  v57 = v85;
  sub_1C2C6EE50(v86, v85);

  sub_1C2C6EE50(v37, v36);

  v58 = v70;
  sub_1C2E71894();
  v69 = sub_1C2E71854();
  v67 = v59;

  sub_1C2C71668(v65, v64);

  sub_1C2C71668(v56, v57);

  sub_1C2C71668(v95, v88);

  sub_1C2C71668(v91, v96);
  sub_1C2C71668(v92, v68);
  sub_1C2C71668(v71, v72);
  sub_1C2C71668(v73, v75);
  sub_1C2C71668(v76, v77);
  __swift_destroy_boxed_opaque_existential_1(v79);
  (*(v74 + 8))(v58, v78);
  result = __swift_destroy_boxed_opaque_existential_1(&v117);
  v61 = v66;
  v62 = v67;
  *v66 = v69;
  v61[1] = v62;
  return result;
}

uint64_t sub_1C2C71668(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C2C716A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C716EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s11CaptionViewVMa(uint64_t a1)
{
  result = qword_1EC05C078;
  if (!qword_1EC05C078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C71750(uint64_t a1)
{
  result = type metadata accessor for ContactAvatarTileView.Caption(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C2C717F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C2C7185C(uint64_t a1)
{
  sub_1C2C70150(319, &qword_1EC05B410, &qword_1EC05E0E8, &unk_1C2E7C0C0, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1C2C717F8(319, &qword_1EC05B408, type metadata accessor for ContactAvatarTileView.Caption, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C2C70150(319, &qword_1EC05B400, &qword_1EC05E0F0, &qword_1C2E7EA00, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1C2C70150(319, &unk_1EC05B3C8, &qword_1EC05E0F8, qword_1C2E7C0D0, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1C2C71ACC();
          if (v5 <= 0x3F)
          {
            sub_1C2C70150(319, &qword_1EC05B318, &qword_1EC05E100, &qword_1C2E93130, MEMORY[0x1E6981948]);
            if (v6 <= 0x3F)
            {
              sub_1C2C717F8(319, &qword_1EC05CC08, MEMORY[0x1E69CA888], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1C2C717F8(319, &qword_1EC05CC00, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
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
}

void sub_1C2C71ACC()
{
  if (!qword_1EC05B310)
  {
    v0 = sub_1C2E753F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05B310);
    }
  }
}

uint64_t sub_1C2C71B48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064968, &qword_1C2E93138);
  sub_1C2C94F38(&qword_1EC05B3C0, &qword_1EC064968, &qword_1C2E93138, MEMORY[0x1E697D680]);
  sub_1C2C71BF4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C2C71BF4()
{
  result = qword_1EC05C020;
  if (!qword_1EC05C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C020);
  }

  return result;
}

uint64_t sub_1C2C71CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2C71CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2C71D5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1C2C71DC4()
{
  result = qword_1EC05BD80;
  if (!qword_1EC05BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD80);
  }

  return result;
}

uint64_t sub_1C2C71E88(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1C2C72340(result, a2, a3 & 1);
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

uint64_t sub_1C2C71EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v20 = *v1;
  v21 = v3;
  v4 = v1[3];
  v22 = v1[2];
  v23 = v4;
  v5 = v4;
  if (qword_1EC05CF10 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC05D730;
  v6 = *algn_1EC05D738;
  v19[3] = &type metadata for AggregateFavoriteTile.TileState;
  v19[4] = &off_1F4298330;
  v8 = swift_allocObject();
  v19[0] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v17 = *&qword_1EC05D750;
  *(v8 + 32) = xmmword_1EC05D740;
  *(v8 + 48) = v17;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *a1 = v5;
  sub_1C2C6E3A4(v19, a1 + 8);
  v9 = swift_allocObject();
  v10 = v21;
  v9[1] = v20;
  v9[2] = v10;
  v11 = v23;
  v9[3] = v22;
  v9[4] = v11;

  sub_1C2C721E0(&v20, v18);
  LOBYTE(v6) = sub_1C2E74464();
  sub_1C2E73034();
  v18[0] = 0;
  *(a1 + 96) = sub_1C2C98500;
  *(a1 + 104) = v9;
  *(a1 + 112) = v6;
  *(a1 + 120) = v12;
  *(a1 + 128) = v13;
  *(a1 + 136) = v14;
  *(a1 + 144) = v15;
  *(a1 + 152) = 0;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_1C2C72094()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1C2C720E4()
{
  result = qword_1EC05B9C0;
  if (!qword_1EC05B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05D798, &qword_1C2E7A2E8);
    sub_1C2C98448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9C0);
  }

  return result;
}

uint64_t sub_1C2C72170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D7B8, &qword_1C2E7A328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C72278(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1C2C72330(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C2C722C8(uint64_t a1)
{
  sub_1C2C6EEF0();

  return sub_1C2E73BC4();
}

uint64_t sub_1C2C72330(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C2C72340(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t FavoriteTile.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1C2E73D84();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C2E74264();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a1 + 16);
  v36 = sub_1C2E73654();
  v38 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060310, &qword_1C2E842A0);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F548, &qword_1C2E83180);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570, &qword_1C2E80140);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0, &unk_1C2E7B640);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060318, &qword_1C2E83698);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8, &unk_1C2E7C240);
  v6 = sub_1C2E73654();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8, &qword_1C2E7C1D8);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
  v58 = WitnessTable;
  v59 = v9;
  v37 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  v11 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8, &qword_1C2E7C1D8, MEMORY[0x1E69E5FB8]);
  v54 = v6;
  v55 = v7;
  v56 = v10;
  v57 = v11;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v33[2] = sub_1C2E75844();
  v33[1] = swift_getWitnessTable();
  v12 = sub_1C2E752E4();
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v33 - v13;
  v33[0] = swift_getWitnessTable();
  v54 = v12;
  v55 = v33[0];
  v33[3] = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v33 - v16;
  sub_1C2E74384();
  v18 = sub_1C2E73654();
  v36 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v33 - v22;
  v24 = a1;
  v25 = v41;
  sub_1C2D3E4A0(&v54);

  v48 = v39;
  v49 = v38;
  v50 = *(v24 + 32);
  v51 = v25;
  sub_1C2E73DC4();
  sub_1C2E752D4();
  v26 = v40;
  sub_1C2E74244();
  v27 = v33[0];
  sub_1C2E74C04();
  (*(v42 + 8))(v26, v43);
  (*(v35 + 8))(v14, v12);
  v28 = v44;
  sub_1C2E73D64();
  v54 = v12;
  v55 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C2E74C34();
  (*(v45 + 8))(v28, v46);
  (*(v34 + 8))(v17, OpaqueTypeMetadata2);
  v30 = sub_1C2C6EA44(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v52 = OpaqueTypeConformance2;
  v53 = v30;
  swift_getWitnessTable();
  sub_1C2C6EE48(v20);
  v31 = *(v36 + 8);
  v31(v20, v18);
  sub_1C2C6EE48(v23);
  return (v31)(v23, v18);
}

uint64_t sub_1C2C72B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2C72BD4(uint64_t a1)
{
  v2 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C72C58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1C2E73BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1C2C736A4(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1C2E75FD4();
    v19 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t ContactAvatarBackgroundView.body.getter()
{
  v1 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060218, &qword_1C2E83380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060220, &qword_1C2E83388);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  sub_1C2D3A938(v0, v6);
  sub_1C2E75744();
  sub_1C2E737F4();
  sub_1C2C71D5C(v6, v9, &qword_1EC060218, &qword_1C2E83380);
  v10 = &v9[*(v7 + 36)];
  v11 = v26;
  v12 = v28;
  v13 = v29;
  *(v10 + 4) = v27;
  *(v10 + 5) = v12;
  *(v10 + 6) = v13;
  v14 = v24;
  *v10 = v23;
  *(v10 + 1) = v14;
  *(v10 + 2) = v25;
  *(v10 + 3) = v11;
  v15 = v0[3];
  v16 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v15);
  (*(v16 + 40))(v15, v16);
  sub_1C2C7360C(v0, v21);
  v17 = swift_allocObject();
  v18 = v21[3];
  *(v17 + 48) = v21[2];
  *(v17 + 64) = v18;
  *(v17 + 80) = v21[4];
  *(v17 + 96) = v22;
  v19 = v21[1];
  *(v17 + 16) = v21[0];
  *(v17 + 32) = v19;
  sub_1C2D3C7D4();
  sub_1C2D3CE80(&qword_1EC05CE58, type metadata accessor for ContactAvatarTileView.ImageStyle, &protocol conformance descriptor for ContactAvatarTileView.ImageStyle);
  sub_1C2E74DD4();

  sub_1C2C7348C(v3, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return sub_1C2C73644(v9, &qword_1EC060220, &qword_1C2E83388);
}

uint64_t sub_1C2C73170()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

void sub_1C2C731C8(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C6926F20](a1, a2, v7);
      sub_1C2C6E1B4(0, &qword_1EC05CA70, 0x1E69DCE70);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C2C6E1B4(0, &qword_1EC05CA70, 0x1E69DCE70);
    if (sub_1C2E764C4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C2E764D4();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1C2E76224();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1C2E76234();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
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

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_ly7SwiftUI5ColorVytIsegnr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C2C7348C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C734EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C7354C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C735AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C2C73644(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C2C736A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1C2C73764(uint64_t a1)
{
  sub_1C2E71784();
  if (v1 <= 0x3F)
  {
    sub_1C2D9DB68(319, &qword_1EC05CA40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C2D9E8E4(319, &qword_1EC05B3D8, &unk_1EC061C30, &unk_1C2E83560, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1C2D9E8E4(319, &qword_1EC05B3F8, &unk_1EC061C40, &qword_1C2E7EA40, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C2C738BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060220, &qword_1C2E83388);
  type metadata accessor for ContactAvatarTileView.ImageStyle(255);
  sub_1C2D3C7D4();
  sub_1C2D3CE80(&qword_1EC05CE58, type metadata accessor for ContactAvatarTileView.ImageStyle, &protocol conformance descriptor for ContactAvatarTileView.ImageStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t storeEnumTagSinglePayload for CommunicationDetailsAppType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C2C73A20(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064968, &qword_1C2E93138);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  sub_1C2C73C8C(v2, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ContactAvatarTileView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1C2C71CF4(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for ContactAvatarTileView);
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064970, &qword_1C2E93140);
  sub_1C2E5AC08();
  sub_1C2E751C4();
  sub_1C2C94F38(&qword_1EC05B3C0, &qword_1EC064968, &qword_1C2E93138, MEMORY[0x1E697D680]);
  sub_1C2C71BF4();
  sub_1C2E74984();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C2C73C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2C73CF4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A10, &qword_1C2E93370);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v33 - v1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064A18, &unk_1C2E93378);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0, &qword_1C2E7EA00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v33 - v13;
  type metadata accessor for ContactAvatarTileView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178, &qword_1C2E7C1A8);
  sub_1C2E75184();
  v15 = v45;
  v14 = v46;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  (*(v14 + 16))(v15, v14);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = v8;
LABEL_5:
    sub_1C2C73644(v17, &qword_1EC05E0F0, &qword_1C2E7EA00);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    swift_storeEnumTagMultiPayload();
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649A0, &unk_1C2E93170);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8, &qword_1C2E7C1D8);
    v22 = sub_1C2E5B070();
    v23 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8, &qword_1C2E7C1D8, MEMORY[0x1E69E5FB8]);
    v42 = v20;
    v43 = v21;
    v44 = v22;
    v45 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_1C2E73F44();
  }

  sub_1C2C71CF4(v8, v41, type metadata accessor for ContactAvatarTileView.Caption);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  sub_1C2E75184();
  v18 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  (*(v19 + 40))(v18, v19);
  if (v16(v5, 1, v9) == 1)
  {
    sub_1C2C735AC(v41, type metadata accessor for ContactAvatarTileView.Caption);
    v17 = v5;
    goto LABEL_5;
  }

  v25 = v34;
  sub_1C2C71CF4(v5, v34, type metadata accessor for ContactAvatarTileView.Caption);
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v26 = v35;
  sub_1C2E56914(v41, v25, v35);
  v27 = v36;
  v28 = v39;
  (*(v36 + 16))(v38, v26, v39);
  swift_storeEnumTagMultiPayload();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0649A0, &unk_1C2E93170);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1A8, &qword_1C2E7C1D8);
  v31 = sub_1C2E5B070();
  v32 = sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8, &qword_1C2E7C1D8, MEMORY[0x1E69E5FB8]);
  v42 = v29;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  swift_getOpaqueTypeConformance2();
  sub_1C2E73F44();
  (*(v27 + 8))(v26, v28);
  sub_1C2C735AC(v25, type metadata accessor for ContactAvatarTileView.Caption);
  return sub_1C2C735AC(v41, type metadata accessor for ContactAvatarTileView.Caption);
}

BOOL sub_1C2C742D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0F0, &qword_1C2E7EA00);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v28 = &v29[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29[-1] - v3;
  v5 = type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-1] - v12;
  type metadata accessor for ContactAvatarTileView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E178, &qword_1C2E7C1A8);
  sub_1C2E75184();
  v15 = v30;
  v14 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(*(v14 + 8) + 40))(v15);
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_1C2C71CF4(v13, v10, type metadata accessor for ContactAvatarTileView.ImageStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1C2C735AC(v10, type metadata accessor for ContactAvatarTileView.ImageStyle);
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C2C71CF4(v10, v7, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
    v17 = v7[57];
    sub_1C2C735AC(v7, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1C2C735AC(v10, type metadata accessor for ContactAvatarTileView.ImageStyle);
  }

  sub_1C2E75184();
  v19 = v30;
  v20 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(v20 + 16))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v21 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v4, 1, v21);
  sub_1C2C73644(v4, &qword_1EC05E0F0, &qword_1C2E7EA00);
  if (v23 == 1)
  {
    return 0;
  }

  sub_1C2E75184();
  v24 = v30;
  v25 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v26 = v28;
  (*(v25 + 40))(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v27 = v22(v26, 1, v21) != 1;
  sub_1C2C73644(v26, &qword_1EC05E0F0, &qword_1C2E7EA00);
  return v27;
}

uint64_t sub_1C2C746E0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1C2D40950;
  a1[1] = v5;
  return sub_1C2D3E468(v10, &v9);
}

uint64_t sub_1C2C74764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2C747B0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C2E76494();
    v5 = v4;
    v6 = sub_1C2E76534();
    v8 = v7;
    v9 = MEMORY[0x1C6926EE0](v3, v5, v6, v7);
    sub_1C2C748CC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C2C748CC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C2E76474();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C2C731C8(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C2C748CC(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1C2C748CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1C2C74960()
{
  result = qword_1EDDCD9F8;
  if (!qword_1EDDCD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCD9F8);
  }

  return result;
}

unint64_t sub_1C2C749B4()
{
  result = qword_1EC05CB70;
  if (!qword_1EC05CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060290, &unk_1C2E833D0);
    sub_1C2D3CCD4(&qword_1EC05CB98, &qword_1EC060298, &unk_1C2E896F0);
    sub_1C2C94F38(&qword_1EC05CBF0, &qword_1EC060278, &qword_1C2E833C0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB70);
  }

  return result;
}

unint64_t sub_1C2C74A8C()
{
  result = qword_1EC05CAC8;
  if (!qword_1EC05CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CAC8);
  }

  return result;
}

unint64_t sub_1C2C74AE0()
{
  result = qword_1EC05CB78;
  if (!qword_1EC05CB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0602D0, &qword_1C2E833F8);
    sub_1C2D3CDFC();
    sub_1C2C94F38(&qword_1EC05CBF0, &qword_1EC060278, &qword_1C2E833C0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB78);
  }

  return result;
}

uint64_t sub_1C2C74BB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C2C74C30(uint64_t a1)
{
  sub_1C2C717F8(319, &qword_1EC05CC00, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1C2C7698C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1C2C74D20()
{
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v0 = sub_1C2E74F74();

  qword_1EC075910 = 0x4028000000000000;
  *algn_1EC075918 = v0;
  xmmword_1EC075920 = xmmword_1C2E93060;
  unk_1EC075930 = xmmword_1C2E93070;
  result = 1.0;
  xmmword_1EC075940 = xmmword_1C2E93080;
  qword_1EC075950 = 0x3FE6666666666666;
  return result;
}

double sub_1C2C74D98()
{
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v0 = sub_1C2E74F74();

  *&xmmword_1EC0758C8 = 0x4028000000000000;
  *(&xmmword_1EC0758C8 + 1) = v0;
  xmmword_1EC0758D8 = xmmword_1C2E93090;
  xmmword_1EC0758E8 = xmmword_1C2E930A0;
  result = 0.5;
  xmmword_1EC0758F8 = xmmword_1C2E930B0;
  qword_1EC075908 = 0x3FE6666666666666;
  return result;
}

uint64_t sub_1C2C74E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2C74ED4(uint64_t a1, uint64_t a2)
{
  v4 = _s11CaptionViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2C74F38()
{
  result = qword_1EC05CBA8;
  if (!qword_1EC05CBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F580, &qword_1C2E80360);
    sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570, &qword_1C2E80140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CBA8);
  }

  return result;
}

double sub_1C2C74FF4()
{
  v0 = sub_1C2E73554();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContactAvatarTileView.Caption(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13AccessoryViewVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0C8, &unk_1C2E7C090);
  sub_1C2E75184();
  v7 = v6[48] & 0xC0;
  sub_1C2CC2FE0(v6, type metadata accessor for ContactAvatarTileView.Caption);
  result = 0.0;
  if (v7 == 128)
  {
    sub_1C2CBF910(v3);
    v9 = (*(v1 + 88))(v3, v0);
    result = 8.0;
    if (v9 != *MEMORY[0x1E697E708])
    {
      result = 10.0;
      if (v9 != *MEMORY[0x1E697E720] && v9 != *MEMORY[0x1E697E728])
      {
        result = 13.0;
        if (v9 != *MEMORY[0x1E697E6C0] && v9 != *MEMORY[0x1E697E6C8] && v9 != *MEMORY[0x1E697E6D0])
        {
          result = 20.0;
          if (v9 != *MEMORY[0x1E697E6D8])
          {
            result = 24.0;
            if (v9 != *MEMORY[0x1E697E6E0])
            {
              (*(v1 + 8))(v3, v0, 24.0);
              return 7.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C2C7522C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C2C75288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContactAvatarTileView.Caption(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C2C75348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E198, &qword_1C2E7C1C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v59 - v6;
  v70 = sub_1C2E72B04();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A0, &qword_1C2E7C1D0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v59 - v10;
  v82 = sub_1C2E73554();
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v59 - v13;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1A8, &qword_1C2E7C1D8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v59 - v14;
  v75 = sub_1C2E746A4();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1B0, &qword_1C2E7C1E0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v21 = &v59 - v20;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1B8, &qword_1C2E7C1E8);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v23 = &v59 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C0, &qword_1C2E7C1F0);
  MEMORY[0x1EEE9AC00](v59);
  v84 = &v59 - v24;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1C8, &qword_1C2E7C1F8);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - v25;
  v26 = *a1;
  v27 = *(a1 + 9);
  v28 = *(a1 + 8);
  v29 = v3 + *(_s13AccessoryViewVMa(0) + 28);
  v30 = *(v29 + 16);
  v93 = *v29;
  *&v94 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E168, &qword_1C2E7C198);
  sub_1C2E75184();
  *(swift_allocObject() + 16) = v89;
  v71 = v3;
  v85 = v3;
  v86 = v26;
  v87 = v28;
  v88 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E1D0, &qword_1C2E7C200);
  sub_1C2CC26D4();
  sub_1C2E751C4();
  *&v19[*(v17 + 24)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58, &unk_1C2E7A920);
  swift_storeEnumTagMultiPayload();
  *v19 = v26;
  v19[8] = v28;
  v19[9] = v27;
  sub_1C2CC290C(v26, v28);
  if (qword_1EC05C028 != -1)
  {
    swift_once();
  }

  v31 = unk_1EC0759A8;
  v95 = xmmword_1EC075998;
  v96 = unk_1EC0759A8;
  v32 = qword_1EC0759B8;
  v97 = qword_1EC0759B8;
  v34 = xmmword_1EC075978;
  v33 = *&qword_1EC075988;
  v93 = xmmword_1EC075978;
  v94 = *&qword_1EC075988;
  *(v19 + 3) = xmmword_1EC075998;
  *(v19 + 4) = v31;
  *(v19 + 10) = v32;
  *(v19 + 1) = v34;
  *(v19 + 2) = v33;
  v92 = 0x40F86A0000000000;
  sub_1C2C74E10(&v93, &v89);
  if (qword_1EC05C038 != -1)
  {
    swift_once();
  }

  v35 = v75;
  v36 = __swift_project_value_buffer(v75, qword_1EC0759C0);
  (*(v74 + 16))(v16, v36, v35);
  sub_1C2C774AC();
  sub_1C2E731C4();
  v37 = sub_1C2C94F38(&qword_1EC05B3B8, &qword_1EC05E1B0, &qword_1C2E7C1E0, MEMORY[0x1E697D680]);
  v38 = sub_1C2C7522C(&qword_1EC05C070, _s13AccessoryViewV24CallButtonHighlightStyleVMa, &unk_1C2E7C3C4);
  v39 = v77;
  sub_1C2E74984();
  sub_1C2CC2FE0(v19, _s13AccessoryViewV24CallButtonHighlightStyleVMa);
  (*(v76 + 8))(v21, v39);
  *&v89 = v39;
  *(&v89 + 1) = v17;
  v90 = v37;
  v91 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v79;
  sub_1C2E74C54();
  (*(v78 + 8))(v23, v40);
  v41 = v83;
  v42 = *(v83 + 104);
  v43 = v80;
  v44 = v82;
  v42(v80, *MEMORY[0x1E697E6F0], v82);
  v45 = v81;
  v42(v81, *MEMORY[0x1E697E6C8], v44);
  sub_1C2C7522C(&qword_1EC05CBC8, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1C2E75B94();
  if (result)
  {
    v47 = v41;
    v48 = *(v41 + 32);
    v49 = v64;
    v48(v64, v43, v44);
    v50 = v67;
    v48((v49 + *(v67 + 48)), v45, v44);
    v51 = v66;
    sub_1C2C736A4(v49, v66, &qword_1EC05E1A0, &qword_1C2E7C1D0);
    v52 = *(v50 + 48);
    v53 = v63;
    v48(v63, v51, v44);
    v54 = *(v47 + 8);
    v54(v51 + v52, v44);
    sub_1C2C71D5C(v49, v51, &qword_1EC05E1A0, &qword_1C2E7C1D0);
    v48((v53 + *(v65 + 36)), (v51 + *(v50 + 48)), v44);
    v54(v51, v44);
    sub_1C2CC2924();
    sub_1C2C94F38(&qword_1EC05CAB8, &qword_1EC05E1A8, &qword_1C2E7C1D8, MEMORY[0x1E69E5FB8]);
    v55 = v60;
    v56 = v84;
    sub_1C2E74A84();
    sub_1C2C73644(v53, &qword_1EC05E1A8, &qword_1C2E7C1D8);
    sub_1C2C73644(v56, &qword_1EC05E1C0, &qword_1C2E7C1F0);
    v57 = v68;
    sub_1C2CBF708(v68);
    v58 = v72;
    sub_1C2E72AE4();
    (*(v69 + 8))(v57, v70);
    sub_1C2CC1984(v58, v73);
    sub_1C2C73644(v58, &qword_1EC05E198, &qword_1C2E7C1C8);
    return (*(v61 + 8))(v55, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2C75F6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1C2C75FB0()
{
  result = qword_1EC05B568;
  if (!qword_1EC05B568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1D8, &qword_1C2E7C208);
    sub_1C2C94F38(&qword_1EC05BA60, &qword_1EC05E1E0, &qword_1C2E7C210, MEMORY[0x1E697BF38]);
    sub_1C2C76068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B568);
  }

  return result;
}

unint64_t sub_1C2C76068()
{
  result = qword_1EC05B818;
  if (!qword_1EC05B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1E8, &qword_1C2E7C218);
    sub_1C2C74A8C();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0, &qword_1C2E7C220, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B818);
  }

  return result;
}

unint64_t sub_1C2C76120()
{
  result = qword_1EC05B860;
  if (!qword_1EC05B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E208, &unk_1C2E83170);
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8, &unk_1C2E7C240, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B860);
  }

  return result;
}

uint64_t sub_1C2C76200(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration(uint64_t a1)
{
  result = qword_1EC05CDA8;
  if (!qword_1EC05CDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2C762EC(uint64_t a1)
{
  result = sub_1C2E75004();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C2C76380()
{
  result = qword_1EC05B7D8;
  if (!qword_1EC05B7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E2B8, &unk_1C2E7C428);
    sub_1C2C76438();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7D8);
  }

  return result;
}

unint64_t sub_1C2C76438()
{
  result = qword_1EC05B980;
  if (!qword_1EC05B980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E2A8, &qword_1C2E7C418);
    sub_1C2CC3188();
    sub_1C2C94F38(&qword_1EC05BD28, &qword_1EC05E2B0, &qword_1C2E7C420, &unk_1C2E84D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B980);
  }

  return result;
}

unint64_t sub_1C2C764F0()
{
  result = qword_1EC05B910;
  if (!qword_1EC05B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E298, &qword_1C2E85C70);
    sub_1C2C7522C(&qword_1EC05CB20, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B910);
  }

  return result;
}

uint64_t sub_1C2C765F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ButtonBackgroundStyleModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1C2E74094();
  sub_1C2E741E4();
  sub_1C2E73654();
  sub_1C2E756D4();
  sub_1C2E741E4();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73F54();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C7685C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062A90, &unk_1C2E8B430);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = *(v0 + 16) >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(v0 + 8);
      LOBYTE(v11) = *v0;
      v7 = v2;
      CUIMaterial.swiftUIMaterial.getter();
      v8 = v6;
      *&v4[*(v7 + 36)] = v8;
      sub_1C2C94F38(&qword_1EC05B5E8, &qword_1EC062A90, &unk_1C2E8B430, MEMORY[0x1E697F5B8]);
    }

    else
    {
      v11 = sub_1C2E74F84();
    }
  }

  else
  {
    v11 = *v0;
  }

  return sub_1C2E73284();
}

void sub_1C2C7698C(uint64_t a1)
{
  if (!qword_1EC05CBE0)
  {
    sub_1C2C774AC();
    v1 = sub_1C2E731F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05CBE0);
    }
  }
}

uint64_t sub_1C2C76A2C(uint64_t *a1)
{
  type metadata accessor for BadgeView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063950, &qword_1C2E8E3B8);
  sub_1C2E741F4();
  sub_1C2E73654();
  sub_1C2E73F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063948, &qword_1C2E8E3B0);
  sub_1C2E73F54();
  sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView, &protocol conformance descriptor for BadgeView);
  sub_1C2C77500();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2E09740();
  return swift_getWitnessTable();
}

unint64_t sub_1C2C76BB0()
{
  result = qword_1EC05CB98;
  if (!qword_1EC05CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060298, &unk_1C2E896F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB98);
  }

  return result;
}

unint64_t sub_1C2C76C34()
{
  result = qword_1EC05B8C8;
  if (!qword_1EC05B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063958, &unk_1C2E8E3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0635A8, &qword_1C2E8DB70);
    sub_1C2E09590(&qword_1EC05B710, &qword_1EC0635A8, &qword_1C2E8DB70, sub_1C2C76D5C);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(qword_1EDDCDA28, &qword_1EC05E1F0, &qword_1C2E7C220, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B8C8);
  }

  return result;
}

unint64_t sub_1C2C76D5C()
{
  result = qword_1EC05CB90;
  if (!qword_1EC05CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCA8, &qword_1C2E89520);
    sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0, &unk_1C2E7B640, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB90);
  }

  return result;
}

uint64_t sub_1C2C76E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C2E73F34();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1C2E73F44();
}

__n128 sub_1C2C76F5C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638B8, &qword_1C2E8E198);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = sub_1C2E73C24();
  if (qword_1EC05C028 != -1)
  {
    v24 = v7;
    swift_once();
    v7 = v24;
  }

  v8 = qword_1EC075988;
  *v6 = v7;
  *(v6 + 1) = v8;
  v6[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638C0, &qword_1C2E8E1A0);
  sub_1C2E08434(v2, &v6[*(v9 + 44)]);
  v10 = (v2 + *(_s11CaptionViewVMa(0) + 28));
  v12 = *v10;
  v11 = v10[1];
  v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638C8, &qword_1C2E8E1A8) + 36)];
  *v13 = 1;
  *(v13 + 1) = v12;
  *(v13 + 2) = v11;

  v14 = sub_1C2E74654();
  KeyPath = swift_getKeyPath();
  v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638D0, &qword_1C2E8E1E0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);
  v18 = *(v4 + 36);
  v19 = sub_1C2E757E4();
  (*(*(v19 - 8) + 16))(&v6[v18], v2 + v17, v19);
  sub_1C2E75754();
  sub_1C2E737F4();
  sub_1C2E08C74(v6, a1);
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0638D8, &qword_1C2E8E1E8) + 36);
  v21 = v25[5];
  *(v20 + 64) = v25[4];
  *(v20 + 80) = v21;
  *(v20 + 96) = v25[6];
  v22 = v25[1];
  *v20 = v25[0];
  *(v20 + 16) = v22;
  result = v25[3];
  *(v20 + 32) = v25[2];
  *(v20 + 48) = result;
  return result;
}

unint64_t sub_1C2C771D8()
{
  result = qword_1EC05B9B0;
  if (!qword_1EC05B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063908, &qword_1C2E8E240);
    sub_1C2C94F38(qword_1EC05C090, &qword_1EC063910, &qword_1C2E8E248, &unk_1C2E8E358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9B0);
  }

  return result;
}

unint64_t sub_1C2C77290()
{
  result = qword_1EC05C620;
  if (!qword_1EC05C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C620);
  }

  return result;
}

__n128 sub_1C2C772E4@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E108, &qword_1C2E7C130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v15 - v4);
  if (sub_1C2CC0E20())
  {
    v6 = sub_1C2E73C24();
  }

  else
  {
    v6 = sub_1C2E73C14();
  }

  v7 = v6;
  v8 = *(v1 + *(_s13AccessoryViewVMa(0) + 36));
  v9 = 0.0;
  if (v8 == 1)
  {
    v9 = sub_1C2CBFB18();
  }

  *v5 = v7;
  v5[1] = v9;
  *(v5 + 16) = v8 ^ 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E110, &qword_1C2E7C138);
  sub_1C2CBFE4C(v1, v5 + *(v10 + 44));
  sub_1C2E75754();
  sub_1C2E737F4();
  sub_1C2C71D5C(v5, a1, &qword_1EC05E108, &qword_1C2E7C130);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E118, &unk_1C2E7C140) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

id sub_1C2C77478(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  if (!(a3 >> 6))
  {
    return sub_1C2C70B1C(result, a2, a3);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

unint64_t sub_1C2C774AC()
{
  result = qword_1EC05CEE0;
  if (!qword_1EC05CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CEE0);
  }

  return result;
}

unint64_t sub_1C2C77500()
{
  result = qword_1EC05B720;
  if (!qword_1EC05B720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063950, &qword_1C2E8E3B8);
    sub_1C2C76BB0();
    sub_1C2C94F38(&qword_1EDDCDA18, &qword_1EC05DCB0, &unk_1C2E7B640, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B720);
  }

  return result;
}

void sub_1C2C775D8(void *result, void *a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {
    sub_1C2C77608(result, a2, a3);
  }
}

void sub_1C2C77608(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

uint64_t sub_1C2C77684(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 48) & ~v6);
      }

      v16 = *(v15 + 40);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t sub_1C2C77820()
{
  if (qword_1EC05BCF8 != -1)
  {
    swift_once();
  }

  if (qword_1EC05BCF0 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EC0758E8;
  v2[3] = xmmword_1EC0758F8;
  v3 = qword_1EC075908;
  v2[0] = xmmword_1EC0758C8;
  v2[1] = xmmword_1EC0758D8;
  xmmword_1EC075998 = xmmword_1EC0758E8;
  unk_1EC0759A8 = xmmword_1EC0758F8;
  qword_1EC0759B8 = qword_1EC075908;
  xmmword_1EC075978 = xmmword_1EC0758C8;
  *&qword_1EC075988 = xmmword_1EC0758D8;
  return sub_1C2C74E10(v2, v1);
}

uint64_t get_enum_tag_for_layout_string_16CommunicationsUI21ContactAvatarTileViewV7CaptionV9AccessoryO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C2C778FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      return 0xD000000000000011;
    }

    v12 = 0x2865676461622ELL;
    MEMORY[0x1C6926710](v1, v2);
  }

  else
  {
    v12 = 0x286567616D692ELL;
    if (*(v0 + 16) && v3 != 1)
    {
      v7 = *v0;
      v8 = v1;
      sub_1C2E76254();
      v9 = sub_1C2E76774();
      v11 = v10;
      sub_1C2C775D8(v7, v2, 2u);
      v5 = v9;
      v2 = v11;
    }

    else
    {
      v4 = *v0;

      v5 = v4;
    }

    MEMORY[0x1C6926710](v5, v2);
  }

  MEMORY[0x1C6926710](41, 0xE100000000000000);
  return v12;
}

uint64_t type metadata accessor for BadgeView(uint64_t a1)
{
  result = qword_1EC05CC58;
  if (!qword_1EC05CC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2C77A7C(uint64_t a1)
{
  sub_1C2C7698C(319);
  if (v1 <= 0x3F)
  {
    sub_1C2CD77BC(319, &qword_1EC05CAD8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1C2CD77BC(319, &unk_1EC05B3E8, &type metadata for BadgeView.BadgeStyle);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C2C77B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2C77B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1C2C77BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635A8, &qword_1C2E8DB70);
  MEMORY[0x1EEE9AC00](v111);
  v110 = (&v108 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063948, &qword_1C2E8E3B0);
  MEMORY[0x1EEE9AC00](v4);
  v113 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063950, &qword_1C2E8E3B8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v108 - v7;
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v116 = a1;
  v115 = v9;
  v128 = sub_1C2E741F4();
  v11 = sub_1C2E73654();
  v112 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v108 - v18;
  v20 = type metadata accessor for BadgeView(255);
  v126 = v11;
  v21 = sub_1C2E73F54();
  v119 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v108 - v22;
  v114 = v10;
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v20;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v30;
  v124 = v4;
  v31 = sub_1C2E73F54();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v121 = &v108 - v33;
  v35 = *v120;
  v34 = *(v120 + 8);
  v36 = *(v120 + 16);
  v123 = v37;
  v122 = v38;
  if (v36 >> 6)
  {
    if (v36 >> 6 == 1)
    {
      v39 = v34;
      v40 = v114;
      (*(v23 + 16))(v26, v120 + *(v116 + 36), v114, v32);

      BadgeView.init<A>(text:cutoutBackgroundStyle:)(v35, v39, v26, v40, v29);
      v41 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView, &protocol conformance descriptor for BadgeView);
      v42 = sub_1C2C77500();
      WitnessTable = swift_getWitnessTable();
      v131 = v42;
      v132 = WitnessTable;
      v44 = v126;
      v45 = swift_getWitnessTable();
      v46 = v118;
      sub_1C2C76E34(v29, v117, v44, v41, v45);
      v129 = v41;
      v130 = v45;
      v47 = v125;
      v48 = swift_getWitnessTable();
      v49 = sub_1C2E09740();
      v50 = v121;
      sub_1C2C76E34(v46, v47, v124, v48, v49);
      (*(v119 + 8))(v46, v47);
      sub_1C2E097CC(v29);
    }

    else
    {
      v55 = sub_1C2E75044();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8, &qword_1C2E89520);
      v57 = v110;
      v58 = (v110 + *(v56 + 36));
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0, &unk_1C2E7B640) + 28);
      v60 = *MEMORY[0x1E69816C8];
      v61 = sub_1C2E750B4();
      (*(*(v61 - 8) + 104))(v58 + v59, v60, v61);
      *v58 = swift_getKeyPath();
      *v57 = v55;
      v62 = sub_1C2E74514();
      KeyPath = swift_getKeyPath();
      v64 = (v57 + *(v111 + 36));
      *v64 = KeyPath;
      v64[1] = v62;
      sub_1C2E74584();
      sub_1C2E09590(&qword_1EC05B710, &qword_1EC0635A8, &qword_1C2E8DB70, sub_1C2C76D5C);
      v65 = v113;
      sub_1C2E74934();
      sub_1C2C73644(v57, &qword_1EC0635A8, &qword_1C2E8DB70);
      v66 = sub_1C2E74EF4();
      *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063958, &unk_1C2E8E3F0) + 36)) = v66;
      v67 = sub_1C2E744A4();
      if (qword_1EC05C028 != -1)
      {
        swift_once();
      }

      sub_1C2E73034();
      v68 = v124;
      v69 = v65 + *(v124 + 36);
      *v69 = v67;
      *(v69 + 8) = v70;
      *(v69 + 16) = v71;
      *(v69 + 24) = v72;
      *(v69 + 32) = v73;
      *(v69 + 40) = 0;
      v74 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView, &protocol conformance descriptor for BadgeView);
      v75 = sub_1C2C77500();
      v76 = swift_getWitnessTable();
      v145 = v75;
      v146 = v76;
      v77 = swift_getWitnessTable();
      v143 = v74;
      v144 = v77;
      v78 = v125;
      v79 = swift_getWitnessTable();
      v80 = sub_1C2E09740();
      v50 = v121;
      sub_1C2C78970(v65, v78, v68, v79, v80);
      sub_1C2C78904(v65);
    }
  }

  else
  {
    v51 = v35;
    v111 = v16;
    v113 = v19;
    v109 = v35;
    v108 = v34;
    if (v36)
    {
      v52 = v13;
      v53 = v34;
      if (v36 == 1)
      {
        sub_1C2C77478(v51, v34, 1u);
        sub_1C2C70B1C(v51, v53, 1u);
        v54 = sub_1C2E75064();
      }

      else
      {
        sub_1C2C77478(v51, v34, 2u);
        sub_1C2C70B1C(v51, v53, 2u);
        v54 = sub_1C2E75034();
      }

      v82 = v54;
    }

    else
    {
      v81 = v34;
      sub_1C2C77478(v35, v34, 0);
      sub_1C2C70B1C(v35, v81, 0);
      v82 = sub_1C2E750D4();
      v52 = v13;
    }

    v83 = &v8[*(v6 + 36)];
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0, &unk_1C2E7B640) + 28);
    v85 = *MEMORY[0x1E69816C8];
    v86 = sub_1C2E750B4();
    (*(*(v86 - 8) + 104))(v83 + v84, v85, v86);
    *v83 = swift_getKeyPath();
    *v8 = v82;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    v87 = sub_1C2C77500();
    v88 = v111;
    sub_1C2E74A94();
    sub_1C2C73644(v8, &qword_1EC063950, &qword_1C2E8E3B8);
    v89 = swift_getWitnessTable();
    v135 = v87;
    v136 = v89;
    v90 = v126;
    v91 = swift_getWitnessTable();
    v92 = v113;
    sub_1C2C6EE48(v88);
    v93 = *(v112 + 8);
    v93(v88, v90);
    sub_1C2C6EE48(v92);
    v94 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView, &protocol conformance descriptor for BadgeView);
    v95 = v118;
    sub_1C2C78970(v52, v117, v90, v94, v91);
    v133 = v94;
    v134 = v91;
    v96 = v52;
    v97 = v125;
    v98 = swift_getWitnessTable();
    v99 = sub_1C2E09740();
    v50 = v121;
    sub_1C2C76E34(v95, v97, v124, v98, v99);
    sub_1C2C775D8(v109, v108, v36);
    (*(v119 + 8))(v95, v97);
    v93(v96, v90);
    v93(v92, v90);
  }

  v100 = sub_1C2E096F8(&qword_1EC05BB98, type metadata accessor for BadgeView, &protocol conformance descriptor for BadgeView);
  v101 = sub_1C2C77500();
  v102 = swift_getWitnessTable();
  v141 = v101;
  v142 = v102;
  v103 = swift_getWitnessTable();
  v139 = v100;
  v140 = v103;
  v104 = swift_getWitnessTable();
  v105 = sub_1C2E09740();
  v137 = v104;
  v138 = v105;
  v106 = v123;
  swift_getWitnessTable();
  sub_1C2C6EE48(v50);
  return (*(v122 + 8))(v50, v106);
}

uint64_t sub_1C2C78904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063948, &qword_1C2E8E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C78970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C2E73F34();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1C2E73F44();
}

uint64_t sub_1C2C78A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E290, &unk_1C2E7C400);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E298, &qword_1C2E85C70);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = sub_1C2E741B4();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2A0, &qword_1C2E7C410);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v43 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2A8, &qword_1C2E7C418);
  MEMORY[0x1EEE9AC00](v46);
  v51 = &v43 - v17;
  v49 = a1;
  sub_1C2E741C4();
  if (*(v3 + 8) != 192 || *v3)
  {
    v18 = _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
    v43 = v9;
    v44 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288, &qword_1C2E7C388);
    sub_1C2E731E4();
    v9 = v43;
    sub_1C2E731E4();
    sub_1C2E75744();
    sub_1C2E73274();
  }

  else
  {
    v44 = _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288, &qword_1C2E7C388);
    sub_1C2E731E4();
    sub_1C2E75744();
    sub_1C2E73274();
  }

  v19 = v48;
  (*(v48 + 16))(v9, v12, v10);
  v20 = &v9[*(v7 + 36)];
  v21 = v55;
  *v20 = v54;
  *(v20 + 1) = v21;
  *(v20 + 2) = v56;
  sub_1C2C736A4(v9, v6, &qword_1EC05E298, &qword_1C2E85C70);
  swift_storeEnumTagMultiPayload();
  sub_1C2C764F0();
  v22 = v45;
  sub_1C2E73F44();
  sub_1C2C73644(v9, &qword_1EC05E298, &qword_1C2E85C70);
  (*(v19 + 8))(v12, v10);
  v23 = v50;
  sub_1C2C71D5C(v22, v50, &qword_1EC05E2A0, &qword_1C2E7C410);
  v24 = *(v3 + 56);
  _s13AccessoryViewV24CallButtonHighlightStyleVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288, &qword_1C2E7C388);
  sub_1C2E731E4();
  v25 = v24 * (v53 / 100000.0);
  v26 = v51;
  v27 = &v51[*(v46 + 36)];
  v28 = *(sub_1C2E737C4() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1C2E73D44();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v25;
  v27[1] = v25;
  v31 = *v3;
  v32 = *(v3 + 8);
  sub_1C2CC290C(v31, v32);
  LOBYTE(v29) = sub_1C2E741D4();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2B0, &qword_1C2E7C420);
  v34 = v27 + v33[11];
  sub_1C2E74FF4();
  v34[*(type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration(0) + 20)] = 4;
  v35 = v27 + v33[9];
  *v35 = v31;
  v35[8] = v32;
  *(v27 + v33[10]) = v29 & 1;
  sub_1C2C71D5C(v23, v26, &qword_1EC05E2A0, &qword_1C2E7C410);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E2B8, &unk_1C2E7C428);
  v37 = v52;
  v38 = (v52 + *(v36 + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70, &qword_1C2E7BDE0) + 28);
  v40 = *MEMORY[0x1E697DBB8];
  v41 = sub_1C2E730D4();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  return sub_1C2C71D5C(v26, v37, &qword_1EC05E2A8, &qword_1C2E7C418);
}

uint64_t sub_1C2C790FC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a1;
  v163 = a3;
  swift_getWitnessTable();
  v4 = sub_1C2E74094();
  v140 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v148 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v147 = &v134 - v7;
  v8 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v10 = *(a2 + 24);
  v213 = v4;
  v214 = v8;
  v170 = WitnessTable;
  v215 = WitnessTable;
  v216 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_1C2E73F54();
  v146 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v134 - v13;
  v14 = type metadata accessor for BackgroundStyleConfiguration.GlassConfiguration(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C2E75004();
  v137 = *(v17 - 8);
  v138 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = OpaqueTypeMetadata2;
  v145 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v144 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v134 - v22;
  v23 = sub_1C2E756D4();
  v141 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = v26;
  v214 = v8;
  v215 = MEMORY[0x1E6981AD0];
  v216 = v10;
  v164 = sub_1C2E741E4();
  v27 = sub_1C2E73654();
  v142 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v152 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v151 = &v134 - v30;
  v213 = MEMORY[0x1E69815C0];
  v214 = v8;
  v167 = v8;
  v215 = MEMORY[0x1E6981568];
  v216 = v10;
  v169 = v10;
  v31 = sub_1C2E741E4();
  v168 = v4;
  v165 = v31;
  v32 = sub_1C2E73654();
  v161 = v27;
  v33 = v156;
  v34 = sub_1C2E73F54();
  v154 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v153 = &v134 - v35;
  v143 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v155 = &v134 - v40;
  v162 = v12;
  v160 = sub_1C2E73F54();
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v42 = &v134 - v41;
  v43 = v33 + *(a2 + 36);
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = v45 >> 6;
  v159 = v34;
  v166 = v42;
  if (v45 >> 6 <= 1)
  {
    if (!v46)
    {
      LODWORD(v148) = v45;

LABEL_11:
      v134 = v47;
      v213 = v47;
      v109 = v167;
      sub_1C2E74914();
      v110 = swift_getWitnessTable();
      v177 = v170;
      v178 = v110;
      v111 = swift_getWitnessTable();
      v112 = v155;
      sub_1C2C6EE48(v38);
      v157 = *(v143 + 8);
      v157(v38, v32);
      sub_1C2C6EE48(v112);
      v113 = swift_getWitnessTable();
      v175 = v170;
      v176 = v113;
      v114 = v32;
      v115 = v161;
      v116 = swift_getWitnessTable();
      v117 = v153;
      sub_1C2C76E34(v38, v114, v115, v111, v116);
      v173 = v111;
      v174 = v116;
      v118 = v114;
      v119 = v159;
      v120 = swift_getWitnessTable();
      v213 = v168;
      v214 = v109;
      v215 = v170;
      v216 = v169;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v172 = v170;
      v121 = v162;
      v122 = swift_getWitnessTable();
      sub_1C2C76E34(v117, v119, v121, v120, v122);
      v123 = sub_1C2CC2678(v134, v148);
      (*(v154 + 8))(v117, v119, v123);
      v124 = v157;
      v157(v38, v118);
      v124(v155, v118);
      v65 = v169;
      v50 = v170;
      goto LABEL_12;
    }

    v66 = v44;
    v50 = v170;
LABEL_7:
    LOBYTE(v213) = v66;
    CUIMaterial.swiftUIMaterial.getter();
    v155 = v32;
    v67 = v152;
    sub_1C2E74914();
    (*(v141 + 8))(v25, v23);
    v68 = swift_getWitnessTable();
    v185 = v50;
    v186 = v68;
    v69 = v161;
    v70 = swift_getWitnessTable();
    v71 = v151;
    sub_1C2C6EE48(v67);
    v170 = *(v142 + 8);
    v170(v67, v69);
    sub_1C2C6EE48(v71);
    v72 = swift_getWitnessTable();
    v183 = v50;
    v184 = v72;
    v73 = v155;
    v74 = swift_getWitnessTable();
    v75 = v153;
    sub_1C2C78970(v67, v73, v69, v74, v70);
    v181 = v74;
    v182 = v70;
    v76 = v69;
    v77 = v159;
    v78 = swift_getWitnessTable();
    v213 = v168;
    v214 = v167;
    v215 = v50;
    v216 = v169;
    v179 = swift_getOpaqueTypeConformance2();
    v180 = v50;
    v79 = v162;
    v80 = swift_getWitnessTable();
    sub_1C2C76E34(v75, v77, v79, v78, v80);
    (*(v154 + 8))(v75, v77);
    v81 = v170;
    v170(v152, v76);
    v81(v151, v76);
    v65 = v169;
    goto LABEL_12;
  }

  if (v46 != 3)
  {
    LODWORD(v148) = v45;
    v82 = v33 + *(a2 + 44);
    v66 = *(v82 + *(v15 + 28));
    v50 = v170;

    if (_UISolariumEnabled())
    {
      v83 = v82;
      v84 = v136;
      sub_1C2D64140(v83, v136);
      v85 = v135;
      sub_1C2E74FE4();
      v134 = v44;
      v86 = v138;
      v87 = *(v137 + 8);
      v87(v84, v138);
      v88 = v167;
      v89 = v168;
      sub_1C2E749B4();
      v87(v85, v86);
      v213 = v89;
      v214 = v88;
      v90 = v169;
      v215 = v50;
      v216 = v169;
      v91 = swift_getOpaqueTypeConformance2();
      v92 = v139;
      v93 = v144;
      v94 = v149;
      sub_1C2C6EE48(v144);
      v95 = *(v145 + 8);
      v145 += 8;
      v157 = v95;
      v95(v93, v94);
      sub_1C2C6EE48(v92);
      v96 = v89;
      v65 = v90;
      sub_1C2C76E34(v93, v94, v96, v91, v50);
      v97 = swift_getWitnessTable();
      v193 = v50;
      v194 = v97;
      v98 = swift_getWitnessTable();
      v155 = v32;
      v99 = v98;
      v100 = swift_getWitnessTable();
      v191 = v50;
      v192 = v100;
      v101 = swift_getWitnessTable();
      v189 = v99;
      v190 = v101;
      v102 = v159;
      v103 = swift_getWitnessTable();
      v187 = v91;
      v188 = v50;
      v104 = v162;
      v105 = swift_getWitnessTable();
      v106 = v150;
      sub_1C2C78970(v150, v102, v104, v103, v105);
      v107 = sub_1C2CC2678(v134, v148);
      (*(v146 + 8))(v106, v104, v107);
      v108 = v157;
      v157(v144, v94);
      v108(v139, v149);
      goto LABEL_12;
    }

    v47 = v44;
    if (v44)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v48 = v147;
  v49 = v168;
  v50 = v170;
  sub_1C2C6EE48(v157);
  v51 = v148;
  sub_1C2C6EE48(v48);
  v213 = v49;
  v214 = v167;
  v215 = v50;
  v216 = v169;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v150;
  sub_1C2C78970(v51, v149, v49, v52, v50);
  v54 = swift_getWitnessTable();
  v211 = v50;
  v212 = v54;
  v55 = swift_getWitnessTable();
  v155 = v32;
  v56 = v55;
  v57 = swift_getWitnessTable();
  v209 = v50;
  v210 = v57;
  v58 = swift_getWitnessTable();
  v207 = v56;
  v208 = v58;
  v59 = v159;
  v60 = swift_getWitnessTable();
  v205 = v52;
  v206 = v50;
  v61 = v162;
  v62 = swift_getWitnessTable();
  sub_1C2C78970(v53, v59, v61, v60, v62);
  (*(v146 + 8))(v53, v61);
  v63 = *(v140 + 8);
  v63(v148, v49);
  v64 = v49;
  v65 = v169;
  v63(v147, v64);
LABEL_12:
  v125 = swift_getWitnessTable();
  v203 = v50;
  v204 = v125;
  v126 = swift_getWitnessTable();
  v127 = swift_getWitnessTable();
  v201 = v50;
  v202 = v127;
  v128 = swift_getWitnessTable();
  v199 = v126;
  v200 = v128;
  v129 = swift_getWitnessTable();
  v213 = v168;
  v214 = v167;
  v215 = v50;
  v216 = v65;
  v197 = swift_getOpaqueTypeConformance2();
  v198 = v50;
  v130 = swift_getWitnessTable();
  v195 = v129;
  v196 = v130;
  v131 = v160;
  swift_getWitnessTable();
  v132 = v166;
  sub_1C2C6EE48(v166);
  return (*(v158 + 8))(v132, v131);
}

uint64_t RecentsCellViewStateProviding.titleColor.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))(a1))
  {

    return sub_1C2E74EF4();
  }

  else
  {

    return sub_1C2E74F84();
  }
}

uint64_t sub_1C2C7A1E8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v12);
  (*(v8 + 16))(v10, a1, a4);
  return sub_1C2E730A4();
}

unint64_t sub_1C2C7A37C()
{
  result = qword_1EC05B760;
  if (!qword_1EC05B760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568, &unk_1C2E80130);
    sub_1C2C74F38();
    sub_1C2D06C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B760);
  }

  return result;
}

uint64_t sub_1C2C7A44C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05FED0, &unk_1C2E82AF0);
  sub_1C2E73654();
  sub_1C2E737E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75304();
  sub_1C2E73654();
  sub_1C2E76424();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2E73804();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2D8FE64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C2C7A654()
{
  result = qword_1EDDCDAC8;
  if (!qword_1EDDCDAC8)
  {
    sub_1C2E71514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDAC8);
  }

  return result;
}

uint64_t sub_1C2C7A6AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

char *_s16CommunicationsUI21ContactAvatarTileViewV10ImageStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v159 = a1;
  v160 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20, &qword_1C2E83530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v149 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v152 = &v149 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v158 = &v149 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v154 = &v149 - v9;
  v10 = sub_1C2E71784();
  v155 = *(v10 - 8);
  v156 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v149 - v13;
  v14 = type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v149 - v17;
  v18 = type metadata accessor for ContactAvatarTileView.ImageStyle(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v149 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v149 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v149 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v149 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v149 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AA8, &unk_1C2E8B450);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v149 - v37;
  v40 = &v149 + *(v39 + 56) - v37;
  sub_1C2DD318C(v159, &v149 - v37, type metadata accessor for ContactAvatarTileView.ImageStyle);
  sub_1C2DD318C(v160, v40, type metadata accessor for ContactAvatarTileView.ImageStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C2DD318C(v38, v32, type metadata accessor for ContactAvatarTileView.ImageStyle);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = v150;
          sub_1C2DD3124(v32, v150, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
          v43 = v151;
          sub_1C2DD3124(v40, v151, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
          v44 = _s16CommunicationsUI21ContactAvatarTileViewV10ImageStyleO07ClippedG13ConfigurationV2eeoiySbAG_AGtFZ_0(v42, v43);
          sub_1C2C734EC(v43, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
          sub_1C2C734EC(v42, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
LABEL_25:
          v64 = v38;
          goto LABEL_113;
        }

        sub_1C2C734EC(v32, type metadata accessor for ContactAvatarTileView.ImageStyle.ClippedImageConfiguration);
        goto LABEL_38;
      }

      v151 = v38;
      sub_1C2DD318C(v38, v29, type metadata accessor for ContactAvatarTileView.ImageStyle);
      v65 = *v29;
      v66 = *(v29 + 1);
      v67 = v29[16];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1C2C77608(v65, v66, v67);
        v38 = v151;
        goto LABEL_38;
      }

      v68 = *v40;
      v69 = *(v40 + 1);
      LODWORD(v70) = v40[16];
      if (v67)
      {
        if (v67 != 1)
        {
          sub_1C2C70B1C(v65, v66, 2u);
          v129 = [v65 description];
          v127 = sub_1C2E75C64();
          v128 = v130;

          sub_1C2C77608(v65, v66, 2u);
LABEL_76:
          if (v70)
          {
            if (v70 != 1)
            {
              sub_1C2C70B1C(v68, v69, 2u);
              v133 = [v68 description];
              v160 = v127;
              v134 = v70;
              v70 = v133;
              v135 = sub_1C2E75C64();
              v132 = v136;

              LOBYTE(v70) = v134;
              v137 = v160;
              sub_1C2C77608(v68, v69, 2u);
              if (v137 != v135)
              {
                goto LABEL_85;
              }

              goto LABEL_83;
            }

            v131 = 1;
          }

          else
          {
            v131 = 0;
          }

          sub_1C2C70B1C(v68, v69, v131);
          v132 = v69;
          if (v127 != v68)
          {
            goto LABEL_85;
          }

LABEL_83:
          if (v128 == v132)
          {
            v44 = 1;
LABEL_86:

            sub_1C2C77608(v68, v69, v70);
            sub_1C2C77608(v65, v66, v67);
            goto LABEL_112;
          }

LABEL_85:
          v44 = sub_1C2E767A4();
          goto LABEL_86;
        }

        v71 = 1;
      }

      else
      {
        v71 = 0;
      }

      sub_1C2C70B1C(v65, v66, v71);
      v127 = v65;
      v128 = v66;
      goto LABEL_76;
    }

    v60 = v38;
    sub_1C2DD318C(v38, v35, type metadata accessor for ContactAvatarTileView.ImageStyle);
    v61 = *v35;
    v62 = *(v35 + 1);
    v63 = v35[16];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C2C77608(v61, v62, v63);
      v38 = v60;
      goto LABEL_38;
    }

    v84 = *v40;
    v85 = *(v40 + 1);
    v86 = v40[16];
    if (v63)
    {
      if (v63 != 1)
      {
        sub_1C2C70B1C(v61, v62, 2u);
        v139 = [v61 description];
        v159 = sub_1C2E75C64();
        v138 = v140;

        sub_1C2C77608(v61, v62, 2u);
LABEL_90:
        LODWORD(v160) = v86;
        if (v86)
        {
          if (v86 != 1)
          {
            sub_1C2C70B1C(v84, v85, 2u);
            v144 = v85;
            v145 = [v84 description];
            v142 = sub_1C2E75C64();
            v143 = v146;

            v85 = v144;
            sub_1C2C77608(v84, v144, 2u);
LABEL_96:
            if (v159 == v142 && v138 == v143)
            {
              v44 = 1;
            }

            else
            {
              v44 = sub_1C2E767A4();
            }

            sub_1C2C77608(v84, v85, v160);
            sub_1C2C77608(v61, v62, v63);
            v64 = v60;
            goto LABEL_113;
          }

          v141 = 1;
        }

        else
        {
          v141 = 0;
        }

        sub_1C2C70B1C(v84, v85, v141);
        v142 = v84;
        v143 = v85;
        goto LABEL_96;
      }

      v87 = 1;
    }

    else
    {
      v87 = 0;
    }

    sub_1C2C70B1C(v61, v62, v87);
    v159 = v61;
    v138 = v62;
    goto LABEL_90;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1C2DD318C(v38, v26, type metadata accessor for ContactAvatarTileView.ImageStyle);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v44 = sub_1C2E74ED4();

      goto LABEL_25;
    }

LABEL_38:
    sub_1C2C73644(v38, &qword_1EC062AA8, &unk_1C2E8B450);
    v44 = 0;
    return (v44 & 1);
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_1C2DD318C(v38, v20, type metadata accessor for ContactAvatarTileView.ImageStyle);
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F140, &qword_1C2E7EA08) + 48);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v151 = v38;
      v74 = v155;
      v73 = v156;
      v75 = *(v155 + 32);
      v75(v153, v20, v156);
      v75(v157, v40, v73);
      v76 = v154;
      sub_1C2C71D5C(&v20[v72], v154, &unk_1EC061C20, &qword_1C2E83530);
      sub_1C2C71D5C(&v40[v72], v158, &unk_1EC061C20, &qword_1C2E83530);
      v77 = sub_1C2E71724();
      v79 = v78;
      v80 = v152;
      sub_1C2C736A4(v76, v152, &unk_1EC061C20, &qword_1C2E83530);
      v81 = *(v74 + 48);
      if (v81(v80, 1, v73) == 1)
      {
        sub_1C2C73644(v80, &unk_1EC061C20, &qword_1C2E83530);
        v82 = 0;
        v83 = 0xE000000000000000;
      }

      else
      {
        v82 = sub_1C2E71724();
        v83 = v95;
        (*(v74 + 8))(v80, v73);
      }

      v96 = v149;
      v161 = v77;
      v162 = v79;

      MEMORY[0x1C6926710](v82, v83);

      v98 = v161;
      v97 = v162;
      v99 = sub_1C2E71724();
      v101 = v100;
      sub_1C2C736A4(v158, v96, &unk_1EC061C20, &qword_1C2E83530);
      if (v81(v96, 1, v73) == 1)
      {
        sub_1C2C73644(v96, &unk_1EC061C20, &qword_1C2E83530);
        v102 = 0;
        v103 = 0xE000000000000000;
      }

      else
      {
        v102 = sub_1C2E71724();
        v103 = v104;
        (*(v74 + 8))(v96, v73);
      }

      v161 = v99;
      v162 = v101;

      MEMORY[0x1C6926710](v102, v103);

      if (v98 == v161 && v97 == v162)
      {
        v44 = 1;
      }

      else
      {
        v44 = sub_1C2E767A4();
      }

      v105 = v151;

      sub_1C2C73644(v158, &unk_1EC061C20, &qword_1C2E83530);
      sub_1C2C73644(v154, &unk_1EC061C20, &qword_1C2E83530);
      v106 = *(v74 + 8);
      v106(v157, v73);
      v106(v153, v73);
      v64 = v105;
      goto LABEL_113;
    }

    sub_1C2C73644(&v20[v72], &unk_1EC061C20, &qword_1C2E83530);
    (*(v155 + 8))(v20, v156);
    goto LABEL_38;
  }

  sub_1C2DD318C(v38, v23, type metadata accessor for ContactAvatarTileView.ImageStyle);
  v45 = *v23;
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    goto LABEL_38;
  }

  v151 = v38;
  v46 = *v40;
  if (v45 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v148)
  {
    v160 = v46;
    if (i)
    {
      v161 = MEMORY[0x1E69E7CC0];
      result = sub_1C2C7B754(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_116:
        __break(1u);
        return result;
      }

      v49 = 0;
      v50 = v161;
      do
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1C6927010](v49, v45);
        }

        else
        {
          v51 = *(v45 + 8 * v49 + 32);
        }

        v52 = v51;
        v53 = [v51 identifier];
        v54 = sub_1C2E75C64();
        v56 = v55;

        v161 = v50;
        v58 = v50[2];
        v57 = v50[3];
        if (v58 >= v57 >> 1)
        {
          sub_1C2C7B754((v57 > 1), v58 + 1, 1);
          v50 = v161;
        }

        ++v49;
        v50[2] = v58 + 1;
        v59 = &v50[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
      }

      while (i != v49);

      v88 = v160;
      v89 = v50[2];
      if (v89)
      {
LABEL_43:
        v90 = 0;
        v91 = 0;
        v92 = v50 + 5;
        v45 = 0xE000000000000000;
        while (v91 < v50[2])
        {
          ++v91;
          v94 = *(v92 - 1);
          v93 = *v92;
          v161 = v90;
          v162 = v45;

          MEMORY[0x1C6926710](v94, v93);

          v90 = v161;
          v45 = v162;
          v92 += 2;
          if (v89 == v91)
          {
            goto LABEL_58;
          }
        }

        __break(1u);
        goto LABEL_102;
      }
    }

    else
    {
      v88 = v46;

      v50 = MEMORY[0x1E69E7CC0];
      v89 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v89)
      {
        goto LABEL_43;
      }
    }

    v90 = 0;
    v45 = 0xE000000000000000;
LABEL_58:

    if (v88 >> 62)
    {
      v107 = sub_1C2E764E4();
      if (!v107)
      {
LABEL_105:

        v109 = MEMORY[0x1E69E7CC0];
        v120 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v120)
        {
          break;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v107 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v107)
      {
        goto LABEL_105;
      }
    }

    v161 = MEMORY[0x1E69E7CC0];
    result = sub_1C2C7B754(0, v107 & ~(v107 >> 63), 0);
    if (v107 < 0)
    {
      goto LABEL_116;
    }

    v108 = 0;
    v109 = v161;
    v110 = v88;
    v159 = (v88 & 0xC000000000000001);
    do
    {
      if (v159)
      {
        v111 = MEMORY[0x1C6927010](v108, v110);
      }

      else
      {
        v111 = *(v110 + 8 * v108 + 32);
      }

      v112 = v111;
      v113 = [v111 identifier];
      v114 = sub_1C2E75C64();
      v116 = v115;

      v161 = v109;
      v118 = v109[2];
      v117 = v109[3];
      if (v118 >= v117 >> 1)
      {
        sub_1C2C7B754((v117 > 1), v118 + 1, 1);
        v109 = v161;
      }

      ++v108;
      v109[2] = v118 + 1;
      v119 = &v109[2 * v118];
      v119[4] = v114;
      v119[5] = v116;
      v110 = v160;
    }

    while (v107 != v108);

    v120 = v109[2];
    if (!v120)
    {
      break;
    }

LABEL_69:
    v121 = 0;
    v122 = 0;
    v123 = v109 + 5;
    v124 = 0xE000000000000000;
    while (v122 < v109[2])
    {
      ++v122;
      v126 = *(v123 - 1);
      v125 = *v123;
      v161 = v121;
      v162 = v124;

      MEMORY[0x1C6926710](v126, v125);

      v121 = v161;
      v124 = v162;
      v123 += 2;
      if (v120 == v122)
      {
        goto LABEL_107;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    v147 = v46;
    v148 = sub_1C2E764E4();
    v46 = v147;
  }

  v121 = 0;
  v124 = 0xE000000000000000;
LABEL_107:

  if (v90 == v121 && v45 == v124)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_1C2E767A4();
  }

LABEL_112:
  v64 = v151;
LABEL_113:
  sub_1C2C734EC(v64, type metadata accessor for ContactAvatarTileView.ImageStyle);
  return (v44 & 1);
}

char *sub_1C2C7B754(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2C7B774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C2C7B774(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB78, &qword_1C2E87970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C2C7B880()
{
  result = qword_1EC05CA98;
  if (!qword_1EC05CA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05CA98);
  }

  return result;
}

uint64_t sub_1C2C7B938()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061B20, &qword_1C2E87F40);
  sub_1C2D9BB00();
  sub_1C2D9BC68();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CUPosterOrAvatarView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CUPosterOrAvatarView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E73BA4();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B20, &qword_1C2E87F40);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  sub_1C2D99DDC(v1, v21 - v10);
  v13 = *v1;
  v12 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v26 = *v1;
    v27 = v12;
  }

  else
  {

    sub_1C2E75FD4();
    v21[0] = v11;
    v14 = sub_1C2E74404();
    v21[1] = v4;
    v15 = v3;
    v16 = v14;
    v11 = v21[0];
    sub_1C2E72B14();

    v3 = v15;
    v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1C2E73B94();
    swift_getAtKeyPath();
    v17 = sub_1C2D9A22C(v13, v12, 0);
    (*(v22 + 8))(v8, v23, v17);
    LOBYTE(v13) = v26;
    v12 = v27;
  }

  v24[0] = v13;
  v25 = v12;
  sub_1C2D9E0D4(v1, v5, type metadata accessor for CUPosterOrAvatarView);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  sub_1C2D9E13C(v5, v19 + v18, type metadata accessor for CUPosterOrAvatarView);
  sub_1C2D9BB00();
  sub_1C2D9BC68();
  sub_1C2E74DD4();

  return sub_1C2C73644(v11, &qword_1EC061B20, &qword_1C2E87F40);
}

uint64_t sub_1C2C7BD0C(uint64_t a1, uint64_t *a2, double a3)
{
  v74 = a2;
  v69 = sub_1C2E735E4();
  v75 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v67);
  v66 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C2E74814();
  v70 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v50 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061170, &qword_1C2E85C60);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v50 - v12;
  v14 = sub_1C2E74834();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061178, &qword_1C2E85C68);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  v21 = sub_1C2E74844();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  v22 = *(v18 + 44);
  v23 = v7;
  v24 = sub_1C2D728A4(&qword_1EC05B430, MEMORY[0x1E6981090], MEMORY[0x1E69810A0]);
  sub_1C2E75F44();
  sub_1C2E75F64();
  if (*&v20[v22] != *&v76.a)
  {
    v52 = (v15 + 16);
    v51 = (v15 + 8);
    v72 = (v70 + 2);
    v71 = (v70 + 4);
    v64 = a3 * -2.6;
    v63 = a3 * -0.6;
    v26 = a3 * 1.9;
    v62 = *MEMORY[0x1E697F480];
    v61 = (v75 + 8);
    ++v70;
    v65 = v23;
    v56 = v20;
    v55 = v21;
    v54 = v22;
    v53 = v24;
    v60 = v14;
    v59 = v9;
    do
    {
      v75 = sub_1C2E75F84();
      v27 = *v52;
      (*v52)(v58);
      (v75)(&v76, 0);
      sub_1C2E75F74();
      v28 = v58;
      (v27)(v13, v58, v14);
      v29 = *(v57 + 36);
      sub_1C2D728A4(&qword_1EC05B438, MEMORY[0x1E6981048], MEMORY[0x1E6981058]);
      sub_1C2E75F44();
      (*v51)(v28, v14);
      while (1)
      {
        sub_1C2E75F64();
        if (*&v13[v29] == *&v76.a)
        {
          break;
        }

        v30 = sub_1C2E75F84();
        v31 = v73;
        (*v72)(v73);
        v30(&v76, 0);
        sub_1C2E75F74();
        (*v71)(v9, v31, v23);
        sub_1C2C7C914();
        sub_1C2E74824();
        if (*&v76.b)
        {
          LODWORD(v75) = LODWORD(v76.a);
          v77 = *v74;

          sub_1C2E74804();
          v32 = v78;
          v33 = v80;
          v34 = v79 - v81;
          v35 = v81 + v82;
          v36 = objc_opt_self();
          v37 = [v36 currentDevice];
          [v37 userInterfaceIdiom];

          v38 = [v36 currentDevice];
          [v38 userInterfaceIdiom];

          v84.origin.x = v32;
          v84.origin.y = v34;
          v84.size.width = v33;
          v84.size.height = v35;
          v85 = CGRectInset(v84, v64, v63);
          x = v85.origin.x;
          y = v85.origin.y;
          width = v85.size.width;
          height = v85.size.height;
          v43 = [v36 currentDevice];
          [v43 userInterfaceIdiom];

          CGAffineTransformMakeTranslation(&v76, 0.0, a3 * -2.8);
          v86.origin.x = x;
          v86.origin.y = y;
          v86.size.width = width;
          v86.size.height = height;
          CGRectApplyAffineTransform(v86, &v76);
          v44 = *(v67 + 20);
          v45 = sub_1C2E73D44();
          v46 = v66;
          (*(*(v45 - 8) + 104))(v66 + v44, v62, v45);
          *v46 = v26;
          v46[1] = v26;
          sub_1C2E737B4();
          sub_1C2D728EC(v46, MEMORY[0x1E697EAF0]);

          v47 = v68;
          sub_1C2E735D4();

          sub_1C2E73594();
          (*v61)(v47, v69);
          v48 = [v36 currentDevice];
          [v48 userInterfaceIdiom];

          v49 = [v36 currentDevice];
          [v49 userInterfaceIdiom];

          sub_1C2E73564();
          if (v75)
          {
            sub_1C2E73604();
          }

          v9 = v59;
          sub_1C2E73584();
          sub_1C2D7294C(&v83);

          v23 = v65;
          (*v70)(v9, v65);

          v14 = v60;
        }

        else
        {
          sub_1C2E73584();
          (*v70)(v9, v23);
        }
      }

      sub_1C2C73644(v13, &qword_1EC061170, &qword_1C2E85C60);
      v20 = v56;
      sub_1C2E75F64();
    }

    while (*&v20[v54] != *&v76.a);
  }

  return sub_1C2C73644(v20, &qword_1EC061178, &qword_1C2E85C68);
}

uint64_t sub_1C2C7C7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

unint64_t sub_1C2C7C80C()
{
  result = qword_1EC05C5C8;
  if (!qword_1EC05C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C5C8);
  }

  return result;
}

double sub_1C2C7C860@<D0>(uint64_t a1@<X8>)
{
  sub_1C2C7CFC4();
  sub_1C2E73BB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1C2C7C8C0()
{
  result = qword_1EC05C5D0;
  if (!qword_1EC05C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C5D0);
  }

  return result;
}

unint64_t sub_1C2C7C914()
{
  result = qword_1EC05C5D8;
  if (!qword_1EC05C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05C5D8);
  }

  return result;
}

void sub_1C2C7C9A4(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 48) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *(v19 + 40) = v20;
  }
}

uint64_t sub_1C2C7CC10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void static TextBuilder.buildBlock(_:)(uint64_t a1)
{
  v2 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = a1 + 32 * v3;
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v8 = *(v6 + 56);
    ++v3;
    v6 += 32;
    if (v8)
    {
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      sub_1C2C72330(*v6, v10, v11 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1C2C7E290(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      v14 = v5;
      if (v13 >= v12 >> 1)
      {
        v14 = sub_1C2C7E290((v12 > 1), v13 + 1, 1, v5);
      }

      *(v14 + 2) = v13 + 1;
      v5 = v14;
      v15 = &v14[32 * v13];
      *(v15 + 4) = v9;
      *(v15 + 5) = v10;
      v15[48] = v11 & 1;
      *(v15 + 7) = v8;
      v3 = v7;
      goto LABEL_2;
    }
  }

  sub_1C2E73D14();
  v16 = sub_1C2E74884();
  v18 = v17;
  v20 = v19;
  v21 = *(v5 + 2);
  sub_1C2C72330(v16, v17, v19 & 1);

  v35 = v21;
  v36 = v5;
  v34 = v16;
  v33 = v18;
  v32 = v20;
  if (!v21)
  {
LABEL_16:

    sub_1C2C72340(v34, v33, v32 & 1);

    return;
  }

  v22 = 0;
  v23 = v5 + 56;
  v24 = v20;
  v25 = v18;
  v26 = v16;
  while (v22 < *(v36 + 2))
  {
    ++v22;
    v37 = v26;
    v38 = *(v23 - 3);
    v39 = *(v23 - 2);
    v40 = *(v23 - 8);
    sub_1C2C72330(v38, v39, v40);

    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E73CB4();
    sub_1C2E73CE4();
    sub_1C2E73CB4();
    sub_1C2E73CE4();
    sub_1C2E73D24();
    v27 = sub_1C2E74884();
    v29 = v28;
    v31 = v30;
    sub_1C2C72340(v37, v25, v24 & 1);

    sub_1C2C72340(v38, v39, v40);

    v23 += 32;
    v24 = v31;
    v25 = v29;
    v26 = v27;
    if (v35 == v22)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_1C2C7CFC4()
{
  result = qword_1EC05BD08;
  if (!qword_1EC05BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05BD08);
  }

  return result;
}

uint64_t sub_1C2C7D018@<X0>(void *a1@<X8>)
{
  if (qword_1EC05BD18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_1EC075960;
  v2 = unk_1EC075968;
  v3 = qword_1EC075970;
  *a1 = qword_1EC075958;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t DoubleLineCellView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = sub_1C2E73D84();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C2E74264();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568, &unk_1C2E80130);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8, &unk_1C2E7C240);
  v49 = a1[4];
  v6 = v5;
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570, &qword_1C2E80140);
  sub_1C2E73654();
  v7 = sub_1C2E74384();
  v40 = sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0, &qword_1C2E7C220);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0, &unk_1C2E7B640);
  sub_1C2E73654();
  v47 = a1[5];
  v8 = sub_1C2E73654();
  v46 = a1[10];
  v9 = v46;
  v10 = sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570, &qword_1C2E80140, MEMORY[0x1E6980A18]);
  v75 = v9;
  v76 = v10;
  v48 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v71 = v8;
  v72 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  v42 = a1[6];
  v41 = v7;
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  v37[1] = v6;
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  v45 = a1[3];
  v44 = a1;
  v12 = sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  v38 = sub_1C2E752E4();
  v43 = a1[2];
  v71 = sub_1C2E73654();
  v13 = MEMORY[0x1E6981840];
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  v72 = sub_1C2E752E4();
  v73 = v13;
  v74 = v12;
  swift_getTupleTypeMetadata();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73F54();
  v14 = sub_1C2E75024();
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v69 = v17;
  v70 = v18;
  v68 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v71 = v14;
  v72 = v19;
  v38 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = v37 - v21;
  v23 = sub_1C2E73654();
  v41 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v37 - v27;
  *&v29 = v43;
  *(&v29 + 1) = v45;
  *&v30 = v49;
  *(&v30 + 1) = v47;
  v59 = v30;
  v58 = v29;
  v60 = v42;
  v61 = *(v44 + 7);
  v62 = v44[9];
  v63 = v46;
  v64 = v44[11];
  v65 = v53;
  sub_1C2E75014();
  v31 = v50;
  sub_1C2E74244();
  sub_1C2E74C04();
  (*(v51 + 8))(v31, v52);
  (*(v40 + 8))(v16, v14);
  v32 = v54;
  sub_1C2E73D64();
  v71 = v14;
  v72 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C2E74C34();
  (*(v55 + 8))(v32, v56);
  (*(v39 + 8))(v22, OpaqueTypeMetadata2);
  v34 = sub_1C2D06C00();
  v66 = OpaqueTypeConformance2;
  v67 = v34;
  swift_getWitnessTable();
  sub_1C2C6EE48(v25);
  v35 = *(v41 + 8);
  v35(v25, v23);
  sub_1C2C6EE48(v28);
  return (v35)(v28, v23);
}

void sub_1C2C7DB70(uint64_t a1)
{
  sub_1C2C7DD48();
  if (v1 <= 0x3F)
  {
    sub_1C2C7DD98(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C2C7DC10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C2C7DD04(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2C72330(result, a2, a3 & 1);
  }

  return result;
}

void sub_1C2C7DD48()
{
  if (!qword_1EC05CC18)
  {
    v0 = sub_1C2E730F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC05CC18);
    }
  }
}

void sub_1C2C7DD98(uint64_t a1)
{
  if (!qword_1EC05CAB0)
  {
    sub_1C2C6E350();
    v1 = sub_1C2E75DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05CAB0);
    }
  }
}

void sub_1C2C7DDF8(void *a1)
{
  sub_1C2C7E46C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              sub_1C2C7DD48();
              if (v7 <= 0x3F)
              {
                sub_1C2C7E4D0(319);
                if (v8 <= 0x3F)
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
}

uint64_t type metadata accessor for BadgeRendererModifier(uint64_t a1)
{
  result = qword_1EC05C118;
  if (!qword_1EC05C118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2C7DF90(uint64_t a1)
{
  if (!qword_1EC05BA58)
  {
    sub_1C2C7E058();
    v1 = sub_1C2E731F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05BA58);
    }
  }
}

void sub_1C2C7DFEC(uint64_t a1)
{
  sub_1C2C7DF90(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C2C7E058()
{
  result = qword_1EC05B2E0;
  if (!qword_1EC05B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B2E0);
  }

  return result;
}

uint64_t DateLabel.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DateLabel(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F278, &qword_1C2E7ED60);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = sub_1C2E71844();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2, a1, v8);
}

uint64_t sub_1C2C7E19C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E73AA4();
  *a1 = result;
  return result;
}

uint64_t sub_1C2C7E218@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C69244B0]();
  *a1 = result;
  return result;
}

uint64_t static TextBuilder.buildOptional(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  sub_1C2C7E5C8(a1, a2, a3, a4);
  return v4;
}

char *sub_1C2C7E290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC062AB0, &unk_1C2E8B470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C2C7E39C()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  static RecentCellStyle.phone.getter(&qword_1EC075958);
}

uint64_t type metadata accessor for DateLabel(uint64_t a1)
{
  result = qword_1EC05BB78;
  if (!qword_1EC05BB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C2C7E46C()
{
  result = qword_1EC05BC70;
  if (!qword_1EC05BC70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC05BC70);
  }

  return result;
}

void sub_1C2C7E4D0(uint64_t a1)
{
  if (!qword_1EC05CC00)
  {
    sub_1C2E73554();
    v1 = sub_1C2E730F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC05CC00);
    }
  }
}

uint64_t RecentsCellAvatarLeadingView.init(contacts:badge:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = a1;
  type metadata accessor for RecentsCellAvatarLeadingView(0, a3, a4, v10);
  return a2();
}

uint64_t sub_1C2C7E5C8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1C2C7DD04(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C2C7E5D8(uint64_t a1, int a2)
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

uint64_t sub_1C2C7E620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a2;
  sub_1C2E73654();
  sub_1C2E737E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  v4 = sub_1C2E75844();
  WitnessTable = swift_getWitnessTable();
  v36 = v4;
  v5 = sub_1C2E75304();
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = sub_1C2E73654();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = sub_1C2E76424();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v40 = &v32 - v22;
  if (v23 == MEMORY[0x1E6981E70])
  {
    (*(v9 + 56))(v18, 1, 1, v8, v21);
    v41 = swift_getWitnessTable();
    v42 = MEMORY[0x1E697E270];
    swift_getWitnessTable();
  }

  else
  {
    v34 = a3;
    MEMORY[0x1EEE9AC00](v20);
    v33 = v16;
    v24 = v38;
    v25 = v39;
    *(&v32 - 4) = v26;
    *(&v32 - 3) = v25;
    *(&v32 - 2) = v24;
    sub_1C2E75744();
    sub_1C2E752F4();
    v27 = swift_getWitnessTable();
    sub_1C2E74D44();
    (*(v37 + 8))(v7, v5);
    v46 = v27;
    v47 = MEMORY[0x1E697E270];
    swift_getWitnessTable();
    sub_1C2C6EE48(v11);
    v28 = *(v9 + 8);
    v28(v11, v8);
    sub_1C2C6EE48(v14);
    v28(v14, v8);
    v16 = v33;
    (*(v9 + 32))(v18, v11, v8);
    (*(v9 + 56))(v18, 0, 1, v8);
  }

  v29 = v40;
  (*(v16 + 16))(v40, v18, v15);
  v30 = *(v16 + 8);
  v30(v18, v15);
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x1E697E270];
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2C6EE48(v29);
  return (v30)(v29, v15);
}

void *RecentsCellAvatarLeadingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C2E718A4();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E71514();
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FEC8, &qword_1C2E82AE8);
  MEMORY[0x1EEE9AC00](v68);
  v74 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FED0, &unk_1C2E82AF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v15 = *(a1 + 16);
  sub_1C2E73654();
  sub_1C2E737E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75304();
  sub_1C2E73654();
  v16 = sub_1C2E76424();
  WitnessTable = swift_getWitnessTable();
  v86 = MEMORY[0x1E697E270];
  v84 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v70 = v16;
  v61 = v17;
  v62 = sub_1C2E73804();
  v18 = sub_1C2E73654();
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v56 - v19;
  v67 = v20;
  v71 = sub_1C2E73654();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v56 - v23;
  v24 = *(v2 + 40);
  v25 = v24 >> 62;
  v26 = v24;
  if (v24 >> 62)
  {
    if (sub_1C2E764E4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0, &unk_1C2E7C050);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C2E7A720;
  *(v27 + 32) = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
LABEL_6:
  sub_1C2E71504();
  v75 = v15;
  v76 = v14;
  if (v25)
  {
    v28 = sub_1C2E764E4();
  }

  else
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
LABEL_19:
    v41 = v74;
    (*(v72 + 32))(v74, v77, v73);
    *(v41 + *(v68 + 52)) = v29;
    sub_1C2D8F770(v87);

    sub_1C2D8F770(v87);

    sub_1C2E75744();
    sub_1C2E73274();
    v42 = v76;
    sub_1C2D8FDF4(v41, v76);
    v43 = (v42 + *(v12 + 36));
    v44 = v87[1];
    *v43 = v87[0];
    v43[1] = v44;
    v43[2] = v87[2];
    v45 = sub_1C2E75724();
    MEMORY[0x1EEE9AC00](v45);
    v46 = *(a1 + 24);
    *(&v56 - 4) = v75;
    *(&v56 - 3) = v46;
    *(&v56 - 2) = v3;
    v47 = sub_1C2D8FE64();
    v48 = v63;
    sub_1C2E74D64();
    sub_1C2D8FF54(v42);
    v49 = swift_getWitnessTable();
    v82 = v47;
    v83 = v49;
    v50 = v67;
    v51 = swift_getWitnessTable();
    v52 = v64;
    sub_1C2E74AD4();
    (*(v66 + 8))(v48, v50);
    v80 = v51;
    v81 = MEMORY[0x1E69802C0];
    v53 = v71;
    swift_getWitnessTable();
    v54 = v65;
    sub_1C2C6EE48(v52);
    v55 = *(v69 + 8);
    v55(v52, v53);
    sub_1C2C6EE48(v54);
    return (v55)(v54, v53);
  }

  *&v87[0] = MEMORY[0x1E69E7CC0];
  result = sub_1C2C7F4A8(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v56 = v12;
    v57 = a1;
    v58 = v3;
    v59 = a2;
    v31 = 0;
    v29 = *&v87[0];
    v32 = v26;
    v33 = v26 & 0xC000000000000001;
    v34 = v60;
    v35 = v32;
    do
    {
      if (v33)
      {
        v36 = MEMORY[0x1C6927010](v31);
      }

      else
      {
        v36 = *(v32 + 8 * v31 + 32);
      }

      v37 = v36;
      v38 = [v37 id];
      sub_1C2E71884();

      *&v87[0] = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1C2C7F4A8((v39 > 1), v40 + 1, 1);
        v29 = *&v87[0];
      }

      ++v31;
      *(v29 + 16) = v40 + 1;
      (*(v79 + 32))(v29 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v40, v34, v78);
      v32 = v35;
    }

    while (v28 != v31);
    v3 = v58;
    a1 = v57;
    v12 = v56;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_1C2C7F4A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C2C7F4EC(a1, a2, a3, *v3, &qword_1EC05DB60, &qword_1C2E7AFD8, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1C2C7F4EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C2C7F6D4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C2C72340(result, a2, a3 & 1);
  }

  return result;
}

void sub_1C2C7F718(uint64_t a1)
{
  sub_1C2CF072C(&qword_1EC05BB90, type metadata accessor for DateLabel, &protocol conformance descriptor for DateLabel);
  sub_1C2E73EE4();
  __break(1u);
}

uint64_t sub_1C2C7F774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC0610B0, qword_1C2E85918);
  sub_1C2E731E4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061138, &qword_1C2E85AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061140, &qword_1C2E85AD8);
  *(a2 + *(result + 36)) = v6;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C2E767A4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1C2E767A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = *(a1 + 48);
  v24 = a1[4];
  v25 = v8;
  v26 = v9;
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v10;
  v23 = v11;
  sub_1C2DD30A8(v24, v8, v9);
  sub_1C2DD30A8(v21, v10, v11);
  v12 = _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV15ForegroundStyleO2eeoiySbAG_AGtFZ_0(&v24, &v21);
  sub_1C2DD3E18(v21, v22, v23);
  sub_1C2DD3E18(v24, v25, v26);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 56))
  {
    return 0;
  }

  if ((sub_1C2E74504() & 1) == 0)
  {
    return 0;
  }

  sub_1C2C7FA30(a1[9], *(a2 + 72));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = a1[11];
  v15 = *(a1 + 96);
  v24 = a1[10];
  v25 = v14;
  v26 = v15;
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v21 = *(a2 + 80);
  v16 = v21;
  v22 = v17;
  v23 = v18;
  sub_1C2DD30A8(v24, v14, v15);
  sub_1C2DD30A8(v16, v17, v18);
  LOBYTE(v16) = _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV15ForegroundStyleO2eeoiySbAG_AGtFZ_0(&v24, &v21);
  sub_1C2DD3E18(v21, v22, v23);
  sub_1C2DD3E18(v24, v25, v26);
  if ((v16 & 1) == 0 || (sub_1C2E74504() & 1) == 0)
  {
    return 0;
  }

  v19 = *(type metadata accessor for ContactAvatarTileView.Caption(0) + 48);

  return MEMORY[0x1EEDE5810](a1 + v19, a2 + v19);
}

void sub_1C2C7FA30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *(v3 - 2);
    v11 = *(v3 - 1);
    v12 = *v3;
    if (!(v9 >> 6))
    {
      break;
    }

    if (v9 >> 6 == 1)
    {
      if ((v12 & 0xC0) != 0x40)
      {
        goto LABEL_39;
      }

      if (v8 == v10 && v7 == v11)
      {
        sub_1C2C77478(*(i - 2), *(i - 1), *i);
        sub_1C2C77478(v8, v7, v12);
        sub_1C2C775D8(v8, v7, v9);
        sub_1C2C775D8(v8, v7, v12);
      }

      else
      {
        v5 = *(v3 - 1);
        v6 = sub_1C2E767A4();
        sub_1C2C77478(v8, v7, v9);
        sub_1C2C77478(v10, v5, v12);
        sub_1C2C775D8(v8, v7, v9);
        sub_1C2C775D8(v10, v5, v12);
        if ((v6 & 1) == 0)
        {
          return;
        }
      }
    }

    else
    {
      v18 = (v12 & 0xC0) == 0x80 && (v11 | v10) == 0;
      if (!v18 || v12 != 128)
      {
        goto LABEL_40;
      }

      sub_1C2C775D8(*(i - 2), *(i - 1), *i);
      sub_1C2C775D8(0, 0, 0x80u);
    }

LABEL_6:
    v3 += 24;
    if (!--v2)
    {
      return;
    }
  }

  if (v12 < 0x40)
  {
    v13 = *(i - 2);
    v14 = *(i - 1);
    if (*i)
    {
      if (v9 != 1)
      {
        sub_1C2C77478(v13, v14, 2u);
        sub_1C2C77478(v10, v11, v12);
        sub_1C2C77478(v8, v7, 2u);
        sub_1C2C77478(v10, v11, v12);
        sub_1C2C77478(v8, v7, 2u);
        sub_1C2C77478(v8, v7, 2u);
        sub_1C2C77478(v10, v11, v12);
        v20 = v11;
        v21 = [v8 description];
        v31 = sub_1C2E75C64();
        v32 = v22;

        v11 = v20;
        sub_1C2C775D8(v8, v7, 2u);
        v19 = v32;
LABEL_27:
        v30 = v9;
        v33 = v19;
        v29 = v11;
        if (v12)
        {
          if (v12 != 1)
          {
            sub_1C2C70B1C(v10, v11, 2u);
            v28 = [v10 description];
            v24 = sub_1C2E75C64();
            v25 = v11;
            v11 = v26;

            sub_1C2C775D8(v10, v25, 2u);
            goto LABEL_33;
          }

          v23 = 1;
        }

        else
        {
          v23 = 0;
        }

        sub_1C2C70B1C(v10, v11, v23);
        v24 = v10;
LABEL_33:
        if (v31 == v24 && v33 == v11)
        {

          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
        }

        else
        {
          v27 = sub_1C2E767A4();

          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
          sub_1C2C775D8(v10, v29, v12);
          sub_1C2C775D8(v8, v7, v30);
          if ((v27 & 1) == 0)
          {
            return;
          }
        }

        goto LABEL_6;
      }

      sub_1C2C77478(v13, v14, 1u);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 1u);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 1u);
      v15 = v8;
      v16 = v7;
      v17 = 1;
    }

    else
    {
      sub_1C2C77478(v13, v14, 0);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 0);
      sub_1C2C77478(v10, v11, v12);
      sub_1C2C77478(v8, v7, 0);
      v15 = v8;
      v16 = v7;
      v17 = 0;
    }

    sub_1C2C77478(v15, v16, v17);
    sub_1C2C77478(v10, v11, v12);
    v31 = v8;
    v19 = v7;
    goto LABEL_27;
  }

LABEL_39:
  sub_1C2C77478(*(i - 2), *(i - 1), *i);
LABEL_40:
  sub_1C2C77478(v10, v11, v12);
  sub_1C2C775D8(v8, v7, v9);
  sub_1C2C775D8(v10, v11, v12);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  sub_1C2CE1FA4(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_1C2E743E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for FTMenuView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C2E732B4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 40)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_4()
{
  sub_1C2C7DF38(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for CallTranslationLanguagePicker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  if (*(v0 + v3 + 48))
  {
  }

  if (*(v4 + 64))
  {
  }

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E732B4();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  if (*(v4 + v1[10]) >= 2uLL)
  {
  }

  if (*(v4 + v1[11]) >= 2uLL)
  {
  }

  v7 = v1[12];
  v8 = sub_1C2E71934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);
  v11 = v1[13];
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for LanguageSelectionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECC0, &qword_1C2E82E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C2E732B4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  if (*(v5 + v1[12]))
  {
  }

  if (*(v5 + v1[14]))
  {
  }

  if (*(v5 + v1[15]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroyTm_8()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for ControlButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061538, &qword_1C2E86C68);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F2D0, &qword_1C2E86AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C2E73DB4();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for SettingsPersonList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v9 = *(*(v1 - 8) + 64);
  v4 = sub_1C2E754F4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0616B8, &qword_1C2E87550);

  v6 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F298, &qword_1C2E7EEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061788, &qword_1C2E87650);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v5(v6 + *(v7 + 32), v4);
    }
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v9, v2 | 7);
}

uint64_t objectdestroyTm_11()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_12()
{
  sub_1C2C77608(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for CallWaveFormView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063B28, &qword_1C2E8EF88);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 81);
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v7 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v6 + 40));
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroyTm_15()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_16()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t _s16CommunicationsUI21ContactAvatarTileViewV7CaptionV9AccessoryO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!(v4 >> 6))
  {
    if (v7 > 0x3F)
    {
      goto LABEL_17;
    }

    v12 = *a1;
    if (v4)
    {
      if (v4 != 1)
      {
        sub_1C2C77478(v12, v2, 2u);
        sub_1C2C77478(v3, v2, 2u);
        sub_1C2C77478(v6, v5, v7);
        sub_1C2C77478(v3, v2, 2u);
        sub_1C2C77478(v6, v5, v7);
        v23 = [v3 description];
        v21 = sub_1C2E75C64();
        v22 = v24;

        sub_1C2C775D8(v3, v2, 2u);
LABEL_25:
        if (v7)
        {
          if (v7 != 1)
          {
            sub_1C2C70B1C(v6, v5, 2u);
            v30 = v21;
            v27 = [v6 description];
            v28 = sub_1C2E75C64();
            v26 = v29;

            sub_1C2C775D8(v6, v5, 2u);
            if (v30 != v28)
            {
              goto LABEL_34;
            }

            goto LABEL_32;
          }

          v25 = 1;
        }

        else
        {
          v25 = 0;
        }

        sub_1C2C70B1C(v6, v5, v25);
        v26 = v5;
        if (v21 != v6)
        {
          goto LABEL_34;
        }

LABEL_32:
        if (v22 == v26)
        {
          v17 = 1;
LABEL_35:

          sub_1C2C775D8(v3, v2, v4);
          sub_1C2C775D8(v6, v5, v7);
          sub_1C2C775D8(v6, v5, v7);
          sub_1C2C775D8(v3, v2, v4);
          return v17 & 1;
        }

LABEL_34:
        v17 = sub_1C2E767A4();
        goto LABEL_35;
      }

      sub_1C2C77478(v12, v2, 1u);
      sub_1C2C77478(v3, v2, 1u);
      sub_1C2C77478(v6, v5, v7);
      v13 = v3;
      v14 = v2;
      v15 = 1;
    }

    else
    {
      sub_1C2C77478(v12, v2, 0);
      sub_1C2C77478(v3, v2, 0);
      sub_1C2C77478(v6, v5, v7);
      v13 = v3;
      v14 = v2;
      v15 = 0;
    }

    sub_1C2C77478(v13, v14, v15);
    sub_1C2C77478(v6, v5, v7);
    v21 = v3;
    v22 = v2;
    goto LABEL_25;
  }

  if (v4 >> 6 == 1)
  {
    if ((v7 & 0xC0) == 0x40)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1C2E767A4();
        sub_1C2C77478(v3, v2, v4);
        sub_1C2C77478(v6, v5, v7);
        sub_1C2C775D8(v3, v2, v4);
        sub_1C2C775D8(v6, v5, v7);
        return v10 & 1;
      }

      sub_1C2C77478(v8, v2, v4);
      sub_1C2C77478(v3, v2, v7);
      sub_1C2C775D8(v3, v2, v4);
      v18 = v3;
      v19 = v2;
      v20 = v7;
      goto LABEL_21;
    }
  }

  else
  {
    v16 = (v7 & 0xC0) == 0x80 && (v5 | v6) == 0;
    if (v16 && v7 == 128)
    {
      sub_1C2C775D8(*a1, v2, v4);
      v18 = 0;
      v19 = 0;
      v20 = 0x80;
LABEL_21:
      sub_1C2C775D8(v18, v19, v20);
      v17 = 1;
      return v17 & 1;
    }
  }

LABEL_17:
  sub_1C2C77478(*a1, v2, v4);
  sub_1C2C77478(v6, v5, v7);
  sub_1C2C775D8(v3, v2, v4);
  sub_1C2C775D8(v6, v5, v7);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2C8119C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C811D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1C2C81240(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1C2C812F4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C2C8130C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C2E75C64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2C81338(uint64_t a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1C2E74204();

    return sub_1C2E73654();
  }

  else
  {
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    sub_1C2E73654();
    sub_1C2E76424();
    swift_getWitnessTable();
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    return sub_1C2E73654();
  }
}

uint64_t sub_1C2C8149C(uint64_t a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1C2E74204();
    sub_1C2E73654();
  }

  else
  {
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    sub_1C2E73654();
    sub_1C2E76424();
    swift_getWitnessTable();
    sub_1C2E737D4();
    swift_getWitnessTable();
    sub_1C2E74084();
    sub_1C2E73654();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C8169C()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C2E734B4();
  }

  else
  {
    sub_1C2E733B4();
  }

  return sub_1C2E73654();
}

uint64_t sub_1C2C81704()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C2E734B4();
    sub_1C2E73654();
    sub_1C2C965D4();
  }

  else
  {
    sub_1C2E733B4();
    sub_1C2E73654();
    sub_1C2C94F80(&qword_1EC05CBD8, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1C2C817F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C81818(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t _s26ButtonShelfHorizontalStackVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2C81868(void *a1)
{
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();

  return swift_getWitnessTable();
}

uint64_t sub_1C2C81944()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C819C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81A48()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81AAC@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(sub_1C2C9F44C() + 16);

  *a1 = v2;
  return result;
}

uint64_t sub_1C2C81AE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C2C81B40(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16CommunicationsUI29CallTranslationViewController_lockStateDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C2C81BA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81BFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81DC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2CAA1F8(v1, v2);
}

uint64_t sub_1C2C81E08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C81F38()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C81FA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for IconButton.IconView(255, *a1, a3, a4);
  swift_getWitnessTable();
  sub_1C2E751F4();
  type metadata accessor for IconButton.ButtonStyle(255, v4, v5, v6);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  type metadata accessor for IconButton.LabelView(255, v4, v7, v8);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v9 = sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IconButton.Container(255, v4, v9, WitnessTable);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73F54();
  sub_1C2E73654();
  sub_1C2E73F54();
  sub_1C2E73654();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2C6E9FC(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C82364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2C823A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for IconButtonStyle(0, *(a3 + 16), a3, a4);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1C2C82454(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IconButtonStyle(0, *(a4 + 16), a3, a4);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C82544()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C8257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C2C82644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C8273C(uint64_t a1)
{
  sub_1C2E752E4();
  sub_1C2E75214();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C82810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA0, &qword_1C2E7B900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2C82880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DDA0, &qword_1C2E7B900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2C828E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OptionalForegroundStyle(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1C2E74094();
  sub_1C2E741F4();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C82A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD88, &qword_1C2E7B8E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD90, &qword_1C2E7B8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DD98, &qword_1C2E7B8F8);
  sub_1C2C94F38(&qword_1EC05B498, &qword_1EC05DD88, &qword_1C2E7B8E8, MEMORY[0x1E697FDF8]);
  sub_1C2CB28EC();
  sub_1C2CB2BEC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C82B20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82B60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82BA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C82BF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82C2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C82C64()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C82CA8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C82D64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DD28, &qword_1C2E7B7A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_x7SwiftUI5ImageV5ScaleORi_zRi0_zlyxIsegnr_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2C82EBC@<X0>(_BYTE *a1@<X8>)
{
  result = IconButtonConfig.enabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2C8309C@<X0>(_BYTE *a1@<X8>)
{
  result = IconButtonConfig.hasBadge.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C2C83154(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  type metadata accessor for IconButton.IconView(255, *a1, a3, a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1C2E74704();
  sub_1C2E734E4();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EC05DFA0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DFA8, &unk_1C2E7BDD0);
  sub_1C2E73654();
  type metadata accessor for IconButton.ButtonStyle(255, v4, v5, v6);
  swift_getOpaqueTypeConformance2();
  v12 = MEMORY[0x1E6980A18];
  sub_1C2C94F38(qword_1EC05DFB0, &qword_1EC05DFA8, &unk_1C2E7BDD0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC68, &unk_1C2E7B270);
  sub_1C2E73654();
  swift_getOpaqueTypeConformance2();
  sub_1C2C94F38(&qword_1EC05CAF8, &qword_1EC05DC68, &unk_1C2E7B270, MEMORY[0x1E6980B30]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for IconButton.LabelView(255, v4, v7, v8);
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  v9 = sub_1C2E73F54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for IconButton.Container(255, v4, v9, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DC70, &qword_1C2E7BDE0);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getWitnessTable();
  sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70, &qword_1C2E7BDE0, v12);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C2CB9BA8(&qword_1EDDCDA08, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  sub_1C2E73F54();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C83724()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C83764()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void *sub_1C2C837C4@<X0>(_BYTE *a1@<X8>)
{
  sub_1C2CBE714();
  result = sub_1C2E73BB4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2C83884(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0C8, &unk_1C2E7C090);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D0, &unk_1C2E93440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D8, &qword_1C2E7C0A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0, &qword_1C2E7C0A8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_1C2C83A68(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0C8, &unk_1C2E7C090);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D0, &unk_1C2E93440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0D8, &qword_1C2E7C0A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0, &qword_1C2E7C0A8);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C2C83C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0, &qword_1C2E7C0A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288, &qword_1C2E7C388);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C2C83DB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E0E0, &qword_1C2E7C0A8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E288, &qword_1C2E7C388);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C83EF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = DisableableControlService.controlEnabled.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

__n128 sub_1C2C83F64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C2C83F74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C83FC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C83FF8()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C8414C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2CCECB0(v1, v2);
}

__n128 sub_1C2C84278(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C2C8428C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C842C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6A8, &qword_1C2E7D1A0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C2C84398(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6A8, &qword_1C2E7D1A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1C2C8445C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0, &unk_1C2E7D1F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C84518(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0, &unk_1C2E7D1F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C84604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E71574();
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

uint64_t sub_1C2C846C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E71574();
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

uint64_t sub_1C2C84780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9F8, &unk_1C2E7D5B0);
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

uint64_t sub_1C2C84848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E9F8, &unk_1C2E7D5B0);
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

uint64_t sub_1C2C8490C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E728, &qword_1C2E7D2D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E730, &qword_1C2E7D2E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E7D0, &qword_1C2E7D340);
  sub_1C2CD7D3C();
  sub_1C2CD7E5C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C849E4()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C84A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EA18, &qword_1C2E7D6D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EA10, &qword_1C2E7D6D0);
  sub_1C2CD8C8C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C84B28()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C84B60()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C84BA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C84BEC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0, qword_1C2E82F30);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0, &unk_1C2E7D1F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C2C84D28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0, qword_1C2E82F30);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E6E0, &unk_1C2E7D1F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C2C84EC0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0, qword_1C2E82F30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1C2C84F7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05ECD0, qword_1C2E82F30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C85068()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C850B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C85110()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85150()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85188()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C851F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C85240()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C85288()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C2C852E0()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C2C85348()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C2C853A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C853E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1C2C85428(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C2C8543C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C85484()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C854BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E71844();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F280, qword_1C2E7EE80);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C2C855E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E71844();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F280, qword_1C2E7EE80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C2C85780()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F2B0, &qword_1C2E7F000);
  sub_1C2CF20CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C857F4()
{
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1C2C85940(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  BasicApertureHudConfiguration.title.setter(v1);
}

uint64_t sub_1C2C859F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85A50()
{

  sub_1C2CFAECC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C2C85AA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C2C85ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F3D0, &qword_1C2E7F738);
  sub_1C2E73404();
  sub_1C2C94F38(&qword_1EC05F3F0, &qword_1EC05F3D0, &qword_1C2E7F738, MEMORY[0x1E697CD20]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C2C85B8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C85BC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C85C54()
{
  v1 = type metadata accessor for FTPickerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  if (*(v0 + v3))
  {
  }

  v5 = v0 + v3 + *(v1 + 24);
  v6 = sub_1C2E718A4();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for FTPickerView.PickerItem(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D8, &qword_1C2E7FDC0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C2C85D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D8, &qword_1C2E7FDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C2C85E44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4D8, &qword_1C2E7FDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C2C85EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E718A4();
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

uint64_t sub_1C2C85FB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C2E718A4();
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

uint64_t sub_1C2C8609C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F568, &unk_1C2E80130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB8, &unk_1C2E7C240);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05F570, &qword_1C2E80140);
  sub_1C2E73654();
  sub_1C2E74384();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05E1F0, &qword_1C2E7C220);
  sub_1C2E73654();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05DCB0, &unk_1C2E7B640);
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2C94F38(&qword_1EDDCDA10, &qword_1EC05F570, &qword_1C2E80140, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  sub_1C2E75024();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata3();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73654();
  sub_1C2E73654();
  sub_1C2E73654();
  swift_getTupleTypeMetadata2();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E752E4();
  swift_getTupleTypeMetadata();
  sub_1C2E75844();
  swift_getWitnessTable();
  sub_1C2E75214();
  sub_1C2E73F54();
  sub_1C2E75024();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C2E73654();
  swift_getOpaqueTypeConformance2();
  sub_1C2D06C00();
  return swift_getWitnessTable();
}

uint64_t sub_1C2C866A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C86718()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C2C86768()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C2C867C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C2C86810()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C86848()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C86880()
{
  MEMORY[0x1C6927ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C2C868B8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C2C868F8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2C86944()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}