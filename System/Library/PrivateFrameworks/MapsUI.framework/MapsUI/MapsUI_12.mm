void sub_1C575CD4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___MUEVChargingSectionController_hasMoreSectionExpanded) = 1;
    *(Strong + OBJC_IVAR___MUEVChargingSectionController__sectionViews) = sub_1C575BCF4(*(Strong + OBJC_IVAR___MUEVChargingSectionController_viewModel));

    v3.receiver = v1;
    v3.super_class = type metadata accessor for EVChargingSectionController();
    v2 = objc_msgSendSuper2(&v3, sel_delegate);
    if (v2)
    {
      [v2 placeSectionControllerDidUpdateContent_];
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1C575CE10()
{
  result = qword_1EC170F40;
  if (!qword_1EC170F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC170F38, &qword_1C5879190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170F40);
  }

  return result;
}

uint64_t sub_1C575CE78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
      do
      {
        sub_1C56466CC(v3, v8, &qword_1EC16D8C8, &qword_1C58677D0);
        sub_1C56466CC(v4, v7, &qword_1EC16D8C8, &qword_1C58677D0);
        sub_1C5764E88(&qword_1EC170FE8, &unk_1C5867FE8);
        v5 = sub_1C584F620();
        sub_1C5625230(v7, &qword_1EC16D8C8, &qword_1C58677D0);
        sub_1C5625230(v8, &qword_1EC16D8C8, &qword_1C58677D0);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 96;
        v4 += 96;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C575CFBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  v11 = *(v1 + 72);
  v12 = *(v1 + 56);
  sub_1C584F6C0();
  MEMORY[0x1C694A560](v2);
  MEMORY[0x1C694A560](*(v3 + 16));
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = v3 + 32;
    do
    {
      sub_1C56466CC(v8, v13, &qword_1EC16D8C8, &qword_1C58677D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
      sub_1C5764E88(&qword_1EC170F48, &unk_1C5867FA8);
      sub_1C584F5F0();
      sub_1C5625230(v13, &qword_1EC16D8C8, &qword_1C58677D0);
      v8 += 96;
      --v7;
    }

    while (v7);
  }

  *&v13[0] = v5;
  sub_1C5653140();
  sub_1C584F5F0();
  *&v13[0] = v4;
  sub_1C56760A0();
  sub_1C584F5F0();
  v9 = 0.0;
  if (v6 != 0.0)
  {
    v9 = v6;
  }

  MEMORY[0x1C694A590](*&v9);
  v13[0] = v12;
  v13[1] = v11;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C5676C38(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
  return sub_1C584F5F0();
}

uint64_t sub_1C575D188()
{
  sub_1C584FEA0();
  sub_1C575CFBC(v1);
  return sub_1C584FEF0();
}

uint64_t sub_1C575D1CC(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C575CFBC(v2);
  return sub_1C584FEF0();
}

__n128 sub_1C575D20C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C584EB60();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = vdupq_n_s64(0xC0000000uLL);
  *(a2 + 32) = v14;
  sub_1C584EB50();
  v9 = sub_1C584EB40();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *a2 = v9;
  *(a2 + 8) = v11;
  v12 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = a1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 48) = 0;
  result = *MEMORY[0x1E69DC5C0];
  *(a2 + 72) = *(MEMORY[0x1E69DC5C0] + 16);
  *(a2 + 56) = result;
  return result;
}

void sub_1C575D334(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C5633310(v5 + 40 * v4, v31);
      sub_1C5633374(v31, v32);
      v7 = *(v2 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = (v2 + 32);
        while ((sub_1C563337C(v9, v32) & 1) == 0)
        {
          ++v8;
          v9 += 12;
          if (v7 == v8)
          {
            goto LABEL_7;
          }
        }

        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        sub_1C56466CC(v9, v31, &qword_1EC16D8C8, &qword_1C58677D0);
      }

      else
      {
LABEL_7:
        sub_1C563326C(v32, v30);
        v10 = sub_1C5763EB8();
        v11 = sub_1C563E40C();
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = sub_1C563E420();
        v20 = v19;
        sub_1C563E430(&v29);
        sub_1C563E43C(v30, &v29, &type metadata for AnyCompositionalStackLayoutItem, v10, v31, v11, v13, v15, v17, v18, v20);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C5763984(0, v6[2] + 1, 1, v6);
      }

      v22 = v6[2];
      v21 = v6[3];
      if (v22 >= v21 >> 1)
      {
        v6 = sub_1C5763984((v21 > 1), v22 + 1, 1, v6);
      }

      v6[2] = v22 + 1;
      v23 = &v6[12 * v22];
      v24 = v31[1];
      v23[2] = v31[0];
      v23[3] = v24;
      v25 = v31[2];
      v26 = v31[3];
      v27 = v31[5];
      v23[6] = v31[4];
      v23[7] = v27;
      v23[4] = v25;
      v23[5] = v26;
      ++v4;
      sub_1C5763E64(v32);
      if (v4 == v3)
      {

        v1 = v28;
        goto LABEL_17;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
  *(v1 + 24) = v6;
}

uint64_t sub_1C575D58C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1C56466CC(v7, v11, &qword_1EC16D8C8, &qword_1C58677D0);
      result = v6(v11);
      if (v3)
      {
        return sub_1C5625230(v11, &qword_1EC16D8C8, &qword_1C58677D0);
      }

      if (result)
      {
        break;
      }

      result = sub_1C5625230(v11, &qword_1EC16D8C8, &qword_1C58677D0);
      v7 += 96;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v11[3];
    a3[2] = v11[2];
    a3[3] = v8;
    v9 = v11[5];
    a3[4] = v11[4];
    a3[5] = v9;
    v10 = v11[1];
    *a3 = v11[0];
    a3[1] = v10;
  }

  else
  {
LABEL_6:
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C575D68C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___MUCompositionalStackLayoutGroupInternal_group;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v12 = *(v3 + 32);
  v4 = v12;
  v13 = v5;
  v14 = *(v3 + 64);
  v6 = v14;
  v15 = *(v3 + 80);
  v8 = *(v3 + 16);
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a1 + 80) = v15;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v7;
  *(a1 + 16) = v8;
  return sub_1C5763FAC(v11, &v10);
}

uint64_t sub_1C575D710(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___MUCompositionalStackLayoutGroupInternal_group;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v9[2] = *(v3 + 32);
  v9[3] = v4;
  v9[4] = *(v3 + 64);
  v10 = *(v3 + 80);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  return sub_1C5763FE4(v9);
}

id sub_1C575D800(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___MUCompositionalStackLayoutGroupInternal_group];
  v5 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v5;
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 10) = *(a1 + 80);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t CompositionalStackLayout.GroupRef.init(axis:)(uint64_t a1)
{
  v2 = sub_1C584EB60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  sub_1C584EB50();
  v8 = sub_1C584EB40();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v15[0] = v8;
  v15[1] = v10;
  v15[2] = a1;
  v15[3] = MEMORY[0x1E69E7CC0];
  v16 = vdupq_n_s64(0xC0000000uLL);
  v17 = 0;
  v11 = *(MEMORY[0x1E69DC5C0] + 16);
  v18 = *MEMORY[0x1E69DC5C0];
  v19 = v11;
  v12 = (*(ObjectType + 112))(v15);
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t CompositionalStackLayout.GroupRef.__allocating_init(identifier:axis:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  v13 = vdupq_n_s64(0xC0000000uLL);
  v9 = *(MEMORY[0x1E69DC5C0] + 16);
  v15 = *MEMORY[0x1E69DC5C0];
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = MEMORY[0x1E69E7CC0];
  v14 = 0;
  v16 = v9;
  v10 = (*(ObjectType + 112))(v12);
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t CompositionalStackLayout.GroupRef.init(identifier:axis:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v11 = vdupq_n_s64(0xC0000000uLL);
  v7 = *(MEMORY[0x1E69DC5C0] + 16);
  v13 = *MEMORY[0x1E69DC5C0];
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = MEMORY[0x1E69E7CC0];
  v12 = 0;
  v14 = v7;
  v8 = (*(ObjectType + 112))(v10);
  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_1C575DBD4@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v5);
  result = (*(ObjectType + 112))(v5);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1C575DDE0()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(&v3);
  v1 = v3;

  sub_1C5763FE4(&v3);
  return v1;
}

uint64_t sub_1C575DF14(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))(v8);
  *v6 = a1;
  v6[1] = a2;

  return v5(v8, 0);
}

uint64_t sub_1C575DFA8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C575E004(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);

  return v4(v2, v3);
}

void (*sub_1C575E07C(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[17] = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  v6 = *v4;
  v5 = v4[1];

  sub_1C5763FE4(v4);
  v4[15] = v6;
  v4[16] = v5;
  return sub_1C575E13C;
}

void sub_1C575E13C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 88;
  v4 = *(*a1 + 120);
  v5 = *(*a1 + 128);
  v6 = *((*MEMORY[0x1E69E7D40] & **(*a1 + 136)) + 0x68);
  if (a2)
  {

    v7 = v6(v3);
    *v8 = v4;
    v8[1] = v5;

    v7(v3, 0);
  }

  else
  {
    v9 = v6(*a1 + 88);
    *v10 = v4;
    v10[1] = v5;

    v9(v3, 0);
  }

  free(v2);
}

uint64_t sub_1C575E2BC()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v2);
  sub_1C5763FE4(v2);
  return v2[2];
}

uint64_t sub_1C575E3B8(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v6);
  *(v4 + 16) = a1;
  return v3(v6, 0);
}

uint64_t sub_1C575E440@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

void (*sub_1C575E4F4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  sub_1C5763FE4(v4);
  *(v4 + 120) = *(v4 + 16);
  return sub_1C575E5AC;
}

void sub_1C575E5AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  *(v5 + 16) = v3;
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575E710()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C5724078();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C575E864(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C57240E4(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575E8F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

void (*sub_1C575E9A8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C5724078();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 120) = v5;
  return sub_1C575EA9C;
}

void sub_1C575EA9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  sub_1C57240E4(v3);
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575EC10()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C572470C();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1 & 1;
}

uint64_t sub_1C575ED64(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C5724738(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575EDF4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C575EEAC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C572470C();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5 & 1;
  return sub_1C575EFA4;
}

void sub_1C575EFA4(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C5724738(v3);
  v4(v2, 0);

  free(v1);
}

float sub_1C575F124()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C57246C0();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C575F288(float a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C5724750(a1);
  return v3(v5, 0);
}

void (*sub_1C575F3D4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C57246C0();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5;
  return sub_1C575F4D0;
}

void sub_1C575F4D0(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C5724750(v3);
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575F648()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C57243F4();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C575F79C(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C572440C(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575F82C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  return result;
}

void (*sub_1C575F8E8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C57243F4();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 120) = v5;
  return sub_1C575F9DC;
}

void sub_1C575F9DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  sub_1C572440C(v3);
  v4(v2, 0);

  free(v1);
}

uint64_t sub_1C575FB50()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C5724830();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1 & 1;
}

uint64_t sub_1C575FCA4(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C5724854(a1);
  return v3(v5, 0);
}

uint64_t sub_1C575FD34@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

void (*sub_1C575FDFC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C5724830();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5 & 1;
  return sub_1C575FEF4;
}

void sub_1C575FEF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C5724854(v3);
  v4(v2, 0);

  free(v1);
}

float sub_1C5760074()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v3);
  v1 = sub_1C5724800();
  v5[3] = v3[3];
  v5[4] = v3[4];
  v6 = v4;
  v5[0] = v3[0];
  v5[1] = v3[1];
  v5[2] = v3[2];
  sub_1C5763FE4(v5);
  return v1;
}

uint64_t sub_1C57601D8(float a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v5);
  sub_1C57248B8(a1);
  return v3(v5, 0);
}

void (*sub_1C5760334(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(v9);
  v5 = sub_1C5724800();
  v6 = v9[3];
  *(v4 + 32) = v9[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v9[4];
  *(v4 + 80) = v10;
  v7 = v9[1];
  *v4 = v9[0];
  *(v4 + 16) = v7;
  sub_1C5763FE4(v4);
  *(v4 + 128) = v5;
  return sub_1C5760430;
}

void sub_1C5760430(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 128);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 120)) + 0x68))(v2);
  sub_1C57248B8(v3);
  v4(v2, 0);

  free(v1);
}

double sub_1C5760558()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v2);
  sub_1C5763FE4(v2);
  return *&v2[6];
}

uint64_t sub_1C5760654(double a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v6);
  *(v4 + 48) = a1;
  return v3(v6, 0);
}

void (*sub_1C57607A0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  sub_1C5763FE4(v4);
  *(v4 + 120) = *(v4 + 48);
  return sub_1C5760858;
}

void sub_1C5760858(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 88;
  v3 = *(*a1 + 120);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 128)) + 0x68))(v2);
  *(v5 + 48) = v3;
  v4(v2, 0);

  free(v1);
}

double sub_1C576097C()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v2);
  sub_1C5763FE4(v2);
  return *&v2[7];
}

uint64_t sub_1C5760A94(double a1, double a2, double a3, double a4)
{
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x68))(v12);
  v10[7] = a1;
  v10[8] = a2;
  v10[9] = a3;
  v10[10] = a4;
  return v9(v12, 0);
}

void sub_1C5760B34(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1C5760C00(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 152) = v1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  sub_1C5763FE4(v4);
  *(v4 + 88) = *(v4 + 56);
  *(v4 + 104) = *(v4 + 72);
  return sub_1C5760CC0;
}

void sub_1C5760CC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 120;
  v5 = *(*a1 + 104);
  v6 = *(*a1 + 88);
  v3 = (*((*MEMORY[0x1E69E7D40] & **(*a1 + 152)) + 0x68))(v2);
  *(v4 + 72) = v5;
  *(v4 + 56) = v6;
  v3(v2, 0);

  free(v1);
}

uint64_t sub_1C5760DE4()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v13);
  v1 = v13[3];

  sub_1C5763FE4(v13);
  v12 = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C56466CC(v3, v10, &qword_1EC16D8C8, &qword_1C58677D0);
      v7[0] = v10[0];
      v7[1] = v10[1];
      v8 = v11;
      sub_1C5632F90(v7, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
      if ((swift_dynamicCast() & 1) != 0 && v9)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v4 = v12;
      }

      v3 += 96;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1C5761028(unint64_t a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))(&v50);
  v60[2] = v52;
  v60[3] = v53;
  v60[4] = v54;
  v61 = v55;
  v60[0] = v50;
  v60[1] = v51;
  v47 = *(&v51 + 1);

  sub_1C5763FE4(v60);
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v41 = v1;
  v43 = a1;
  if (v3)
  {
    if (v3 >= 1)
    {
      v4 = 0;
      v45 = a1 & 0xC000000000000001;
      v42 = a1 + 32;
      v5 = MEMORY[0x1E69E7CC0];
      v46 = (v47 + 32);
      v44 = v3;
      while (1)
      {
        if (v45)
        {
          a1 = MEMORY[0x1C694A320](v4, v43);
        }

        else
        {
          a1 = *(v42 + 8 * v4);
          swift_unknownObjectRetain();
        }

        v56[0] = a1;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
        if (swift_dynamicCast())
        {
          sub_1C5632F90(&v57, &v50);
          sub_1C5632F90(&v50, &v57);
        }

        else
        {
          v59 = 0;
          v57 = 0u;
          v58 = 0u;
          sub_1C5625230(&v57, &qword_1EC170F70, &qword_1C58791B8);
          type metadata accessor for CompositionalStackLayout.GroupRef();
          v6 = swift_dynamicCastClass();
          if (!v6)
          {
            goto LABEL_37;
          }

          v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x58);
          *(&v58 + 1) = &_s5GroupVN;
          v59 = &off_1F44C2640;
          *&v57 = swift_allocObject();
          v8 = swift_unknownObjectRetain();
          v7(v8);
          swift_unknownObjectRelease();
        }

        sub_1C5633310(&v57, &v50);
        v9 = sub_1C5633374(&v50, v56);
        MEMORY[0x1EEE9AC00](v9, v10);
        v1 = &v38;
        v39 = v56;
        v11 = *(v47 + 16);
        if (v11)
        {
          v12 = 0;
          v13 = v46;
          while (1)
          {
            v14 = sub_1C5764ED8(v13);
            if (v14)
            {
              break;
            }

            ++v12;
            v13 += 12;
            if (v11 == v12)
            {
              v12 = 0;
              break;
            }
          }

          v15 = v14 ^ 1;
        }

        else
        {
          v12 = 0;
          v15 = 1;
        }

        if (v15)
        {
          sub_1C563326C(v56, v49);
          v16 = sub_1C5763EB8();
          v17 = sub_1C563E40C();
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = sub_1C563E420();
          v26 = v25;
          sub_1C563E430(&v48);
          sub_1C563E43C(v49, &v48, &type metadata for AnyCompositionalStackLayoutItem, v16, &v50, v17, v19, v21, v23, v24, v26);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            v3 = sub_1C584FB90();
            goto LABEL_3;
          }

          if (v12 >= *(v47 + 16))
          {
            goto LABEL_34;
          }

          sub_1C56466CC(&v46[12 * v12], &v50, &qword_1EC16D8C8, &qword_1C58677D0);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C5763984(0, v5[2] + 1, 1, v5);
        }

        v27 = v44;
        v29 = v5[2];
        v28 = v5[3];
        if (v29 >= v28 >> 1)
        {
          v5 = sub_1C5763984((v28 > 1), v29 + 1, 1, v5);
        }

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v57);
        v5[2] = v29 + 1;
        v30 = &v5[12 * v29];
        v31 = v51;
        v30[2] = v50;
        v30[3] = v31;
        v32 = v52;
        v33 = v53;
        v34 = v55;
        v30[6] = v54;
        v30[7] = v34;
        v30[4] = v32;
        v30[5] = v33;
        ++v4;
        sub_1C5763E64(v56);
        if (v4 == v27)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_37:
    v40 = 0;
    v39 = 236;
    result = sub_1C584FD00();
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_32:

    v35 = (*((*MEMORY[0x1E69E7D40] & *v41) + 0x68))(&v50);
    *(v36 + 24) = v5;

    return v35(&v50, 0);
  }

  return result;
}

uint64_t sub_1C5761598@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

uint64_t sub_1C57615FC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x178);

  return v2(v3);
}

void (*sub_1C5761668(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C5760DE4();
  return sub_1C57616B0;
}

void sub_1C57616B0(unint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1C5761028(v2);
  }

  else
  {
    sub_1C5761028(*a1);
  }
}

uint64_t sub_1C5761708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v4 = swift_dynamicCast();
  v5 = MEMORY[0x1E69E7D40];
  if (v4)
  {
    sub_1C5632F90(&v42, v40);
    sub_1C5632F90(v40, v45);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_1C5625230(&v42, &qword_1EC170F70, &qword_1C58791B8);
    type metadata accessor for CompositionalStackLayout.GroupRef();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      result = sub_1C584FD00();
      __break(1u);
      return result;
    }

    v7 = *((*v5 & *v6) + 0x58);
    v45[3] = &_s5GroupVN;
    v45[4] = &off_1F44C2640;
    v45[0] = swift_allocObject();
    v8 = swift_unknownObjectRetain();
    v7(v8);
    swift_unknownObjectRelease();
  }

  sub_1C5633310(v45, v40);
  v9 = sub_1C5633374(v40, v41);
  (*((*v5 & *v2) + 0x58))(&v42, v9);
  v10 = *(&v43 + 1);

  sub_1C5763FE4(&v42);
  v11 = (v10 + 4);
  v12 = -v10[2];
  v13 = -1;
  v14 = &qword_1EC16D8C8;
  while (v12 + v13 != -1)
  {
    if (++v13 >= v10[2])
    {
      __break(1u);
      goto LABEL_16;
    }

    v15 = v11 + 96;
    sub_1C56466CC(v11, v40, &qword_1EC16D8C8, &qword_1C58677D0);
    v16 = sub_1C563337C(v40, v41);
    sub_1C5625230(v40, &qword_1EC16D8C8, &qword_1C58677D0);
    v11 = v15;
    if (v16)
    {

      goto LABEL_14;
    }
  }

  sub_1C563326C(v41, v39);
  v17 = sub_1C5763EB8();
  v18 = sub_1C563E40C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1C563E420();
  v27 = v26;
  sub_1C563E430(&v38);
  sub_1C563E43C(v39, &v38, &type metadata for AnyCompositionalStackLayoutItem, v17, v40, v18, v20, v22, v24, v25, v27);
  v3 = (*((*v5 & *v3) + 0x68))(v39);
  v14 = v28;
  v10 = v28[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[3] = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_11;
  }

LABEL_16:
  v10 = sub_1C5763984(0, v10[2] + 1, 1, v10);
  v14[3] = v10;
LABEL_11:
  v31 = v10[2];
  v30 = v10[3];
  if (v31 >= v30 >> 1)
  {
    v10 = sub_1C5763984((v30 > 1), v31 + 1, 1, v10);
    v14[3] = v10;
  }

  v10[2] = v31 + 1;
  v32 = &v10[12 * v31];
  v33 = v40[1];
  v32[2] = v40[0];
  v32[3] = v33;
  v34 = v40[2];
  v35 = v40[3];
  v36 = v40[5];
  v32[6] = v40[4];
  v32[7] = v36;
  v32[4] = v34;
  v32[5] = v35;
  (v3)(v39, 0);
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_1C5763E64(v41);
}

uint64_t sub_1C5761B60(uint64_t a1, uint64_t a2)
{
  *&v16[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v3 = swift_dynamicCast();
  v4 = MEMORY[0x1E69E7D40];
  if (v3)
  {
    sub_1C5632F90(&v18, v17);
    sub_1C5632F90(v17, &v18);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1C5625230(&v18, &qword_1EC170F70, &qword_1C58791B8);
    type metadata accessor for CompositionalStackLayout.GroupRef();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = *((*v4 & *v5) + 0x58);
    *(&v19 + 1) = &_s5GroupVN;
    v20 = &off_1F44C2640;
    *&v18 = swift_allocObject();
    v7 = swift_unknownObjectRetain();
    v6(v7);
    swift_unknownObjectRelease();
  }

  sub_1C5633310(&v18, v16);
  v8 = sub_1C5633374(v16, v17);
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = (*((*v4 & *v2) + 0x68))(v16);
  v12 = v11;
  v13 = sub_1C5763AE0(sub_1C5764ED8);
  v14 = *(*(v12 + 24) + 16);
  if (v14 >= v13)
  {
    sub_1C5764124(v13, v14);
    v10(v16, 0);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    return sub_1C5763E64(v17);
  }

  __break(1u);
LABEL_8:
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

void sub_1C5761E0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1C5761E84@<X0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  v15[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v5 = swift_dynamicCast();
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    sub_1C5632F90(&v18, &v16);
    sub_1C5632F90(&v16, &v18);
LABEL_5:
    sub_1C5633310(&v18, &v16);
    v10 = sub_1C5633374(&v16, v15);
    (*((*v6 & *v3) + 0x58))(&v16, v10);
    v11 = v17;

    v12 = sub_1C5763FE4(&v16);
    MEMORY[0x1EEE9AC00](v12, v13);
    sub_1C575D58C(sub_1C5764ED8, v11, a3);

    __swift_destroy_boxed_opaque_existential_1(&v18);
    return sub_1C5763E64(v15);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1C5625230(&v18, &qword_1EC170F70, &qword_1C58791B8);
  type metadata accessor for CompositionalStackLayout.GroupRef();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *((*v6 & *v7) + 0x58);
    *(&v19 + 1) = &_s5GroupVN;
    v20 = &off_1F44C2640;
    *&v18 = swift_allocObject();
    v9 = swift_unknownObjectRetain();
    v8(v9);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5762108(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v52[0] = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F60, &unk_1C58791A0);
  v5 = swift_dynamicCast();
  v6 = MEMORY[0x1E69E7D40];
  v42 = a1;
  if (v5)
  {
    sub_1C5632F90(&v44, v50);
    sub_1C5632F90(v50, v53);
    goto LABEL_5;
  }

  *&v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1C5625230(&v44, &qword_1EC170F70, &qword_1C58791B8);
  type metadata accessor for CompositionalStackLayout.GroupRef();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *((*v6 & *v7) + 0x58);
    v53[3] = &_s5GroupVN;
    v53[4] = &off_1F44C2640;
    v53[0] = swift_allocObject();
    v9 = swift_unknownObjectRetain();
    v8(v9);
    swift_unknownObjectRelease();
LABEL_5:
    sub_1C5633310(v53, v50);
    v10 = sub_1C5633374(v50, v51);
    (*((*v6 & *v2) + 0x58))(v52, v10);
    v11 = v52[3];

    v12 = sub_1C5763FE4(v52);
    MEMORY[0x1EEE9AC00](v12, v13);
    v14 = *(v11 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = (v11 + 32);
      while (1)
      {
        v17 = sub_1C5764ED8(v16);
        if (v17)
        {
          break;
        }

        ++v15;
        v16 += 12;
        if (v14 == v15)
        {
          v15 = 0;
          break;
        }
      }

      v18 = v17 ^ 1;
    }

    else
    {
      v15 = 0;
      v18 = 1;
    }

    v19 = v18 & 1;

    if (v19)
    {
      swift_unknownObjectRelease();
      v20 = &qword_1EC170F50;
      v21 = &qword_1C5879198;
      v22 = a1;
LABEL_23:
      sub_1C5625230(v22, v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v53);
      return sub_1C5763E64(v51);
    }

    sub_1C56466CC(a1, &v44, &qword_1EC170F50, &qword_1C5879198);
    if (!*(&v45 + 1))
    {
      sub_1C5625230(&v44, &qword_1EC170F50, &qword_1C5879198);
      sub_1C563326C(v51, &v44);
      v28 = sub_1C5763EB8();
      v29 = sub_1C563E40C();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = sub_1C563E420();
      v38 = v37;
      sub_1C563E430(&v43);
      sub_1C563E43C(&v44, &v43, &type metadata for AnyCompositionalStackLayoutItem, v28, v50, v29, v31, v33, v35, v36, v38);
      v23 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x68))(&v44);
      v25 = v39;
      v26 = *(v39 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 24) = v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_21:
        if (v15 < v26[2])
        {
          sub_1C5763F3C(v50, &v26[12 * v15 + 4]);
          v23(&v44, 0);
          swift_unknownObjectRelease();
          v20 = &qword_1EC170F50;
          v21 = &qword_1C5879198;
          v22 = v42;
          goto LABEL_23;
        }

        goto LABEL_29;
      }

LABEL_27:
      v26 = sub_1C5763ACC(v26);
      *(v25 + 24) = v26;
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    v50[2] = v46;
    v50[3] = v47;
    v50[4] = v48;
    v50[5] = v49;
    v50[0] = v44;
    v50[1] = v45;
    v23 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))(&v44);
    v25 = v24;
    v26 = *(v24 + 24);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 24) = v26;
    if (v27)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = sub_1C5763ACC(v26);
      *(v25 + 24) = v26;
      if ((v15 & 0x8000000000000000) == 0)
      {
LABEL_17:
        if (v15 < v26[2])
        {
          sub_1C5764E18(v50, &v26[12 * v15 + 4]);
          v23(&v44, 0);
          swift_unknownObjectRelease();
          sub_1C5625230(v42, &qword_1EC170F50, &qword_1C5879198);
          v20 = &qword_1EC16D8C8;
          v21 = &qword_1C58677D0;
          v22 = v50;
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_30:
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

void (*sub_1C576269C(uint64_t *a1, uint64_t a2))(__int128 **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xD0uLL);
  }

  *a1 = v5;
  *(v5 + 192) = a2;
  *(v5 + 200) = v2;
  sub_1C5761E84(a2, v5);
  return sub_1C576271C;
}

void sub_1C576271C(__int128 **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    sub_1C56466CC(*a1, (v2 + 6), &qword_1EC170F50, &qword_1C5879198);
    swift_unknownObjectRetain();
    sub_1C5762108(v2 + 6, v3);
    sub_1C5625230(v2, &qword_1EC170F50, &qword_1C5879198);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1C5762108(v2, v3);
  }

  free(v2);
}

double sub_1C57627CC(uint64_t a1, uint64_t a2)
{
  sub_1C5761E84(a1, &v4);
  if (v5)
  {
    v2 = v6;
  }

  else
  {
    v2 = *MEMORY[0x1E69DC5C0];
  }

  sub_1C5625230(&v4, &qword_1EC170F50, &qword_1C5879198);
  return v2;
}

uint64_t sub_1C5762920(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_1C576269C(v12, a1);
  if (*(v9 + 24))
  {
    *(v9 + 40) = a2;
    *(v9 + 48) = a3;
    *(v9 + 56) = a4;
    *(v9 + 64) = a5;
  }

  return (v10)(v12, 0);
}

double sub_1C5762A44(uint64_t a1, uint64_t a2)
{
  sub_1C5761E84(a1, &v4);
  if (v5)
  {
    v2 = v6;
  }

  else
  {
    v2 = *MEMORY[0x1E69DE258];
  }

  sub_1C5625230(&v4, &qword_1EC170F50, &qword_1C5879198);
  return v2;
}

uint64_t sub_1C5762B54(uint64_t a1, double a2, double a3)
{
  v6 = sub_1C576269C(v8, a1);
  if (*(v5 + 24))
  {
    *(v5 + 72) = a2;
    *(v5 + 80) = a3;
  }

  return (v6)(v8, 0);
}

BOOL sub_1C5762C50(uint64_t a1, uint64_t a2)
{
  sub_1C5761E84(a1, &v8);
  if (v9)
  {
    v3 = v10;
    v4 = sub_1C5625230(&v8, &qword_1EC170F50, &qword_1C5879198);
    v6[1] = v3;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))(v7, v4);
    sub_1C5763FE4(v7);
    v6[0] = v7[5];
    sub_1C5724040(v6, &v11);
    return (~v11 & 0xFFFFFFFE) != 0;
  }

  else
  {
    sub_1C5625230(&v8, &qword_1EC170F50, &qword_1C5879198);
    return 0;
  }
}

uint64_t sub_1C5762D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C576269C(v6, a1);
  if (*(v3 + 24))
  {
    *(v3 + 88) = a2;
  }

  return (v4)(v6, 0);
}

uint64_t sub_1C5762DD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v7 = a1;
  v9 = sub_1C576269C(v11, a3);
  if (*(v8 + 24))
  {
    *(v8 + 88) = a4;
  }

  v9(v11, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5762E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C5761E84(a1, &v16);
  v4 = MEMORY[0x1E69E7D40];
  if (*(&v17 + 1))
  {
    v5 = v22;
    v6 = sub_1C5625230(&v16, &qword_1EC170F50, &qword_1C5879198);
    v10[1] = v5;
    (*((*v4 & *v3) + 0x58))(v11, v6);
    sub_1C5763FE4(v11);
    v10[0] = *(&v12 + 1);
    v7 = sub_1C5724040(v10, &v23);
    v8 = v23;
    if ((~v23 & 0xFFFFFFFE) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = sub_1C5625230(&v16, &qword_1EC170F50, &qword_1C5879198);
  }

  (*((*v4 & *v3) + 0x58))(v11, v7);
  v8 = *(&v12 + 1);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v16 = v11[0];
  v17 = v11[1];
  sub_1C5763FE4(&v16);
LABEL_6:
  *&v16 = v8;
  return sub_1C57243F4();
}

uint64_t sub_1C5763018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C5761E84(a2, &v20);
  v6 = MEMORY[0x1E69E7D40];
  if (!*(&v21 + 1))
  {
    v9 = sub_1C5625230(&v20, &qword_1EC170F50, &qword_1C5879198);
    goto LABEL_5;
  }

  v7 = v26;
  v8 = sub_1C5625230(&v20, &qword_1EC170F50, &qword_1C5879198);
  v14[1] = v7;
  (*((*v6 & *v3) + 0x58))(v15, v8);
  sub_1C5763FE4(v15);
  v14[0] = *(&v16 + 1);
  v9 = sub_1C5724040(v14, &v27);
  v10 = v27;
  if ((~v27 & 0xFFFFFFFE) == 0)
  {
LABEL_5:
    (*((*v6 & *v3) + 0x58))(v15, v9);
    v10 = *(&v16 + 1);
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v20 = v15[0];
    v21 = v15[1];
    sub_1C5763FE4(&v20);
  }

  *&v15[0] = v10;
  sub_1C572440C(a1);
  v12 = sub_1C576269C(&v20, a2);
  if (*(v11 + 24))
  {
    *(v11 + 88) = *&v15[0];
  }

  return (v12)(&v20, 0);
}

uint64_t sub_1C576324C(uint64_t a1, uint64_t a2)
{
  sub_1C5761E84(a1, &v9);
  if (!v10)
  {
    sub_1C5625230(&v9, &qword_1EC170F50, &qword_1C5879198);
    goto LABEL_5;
  }

  v3 = v11;
  v4 = sub_1C5625230(&v9, &qword_1EC170F50, &qword_1C5879198);
  v7[1] = v3;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))(v8, v4);
  sub_1C5763FE4(v8);
  v7[0] = v8[5];
  sub_1C5724040(v7, &v12);
  if ((~v12 & 0xFFFFFFFE) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  *&v9 = v12;
  v5 = sub_1C5724830();
  return v5 & 1;
}

uint64_t sub_1C5763350(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

uint64_t *sub_1C57633B0(char a1, uint64_t a2)
{
  v3 = v2;
  sub_1C5761E84(a2, &v13);
  if (!v14)
  {
    return sub_1C5625230(&v13, &qword_1EC170F50, &qword_1C5879198);
  }

  v6 = v15;
  v7 = sub_1C5625230(&v13, &qword_1EC170F50, &qword_1C5879198);
  v11[1] = v6;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x58))(v12, v7);
  sub_1C5763FE4(v12);
  v11[0] = v12[5];
  result = sub_1C5724040(v11, &v16);
  if ((~v16 & 0xFFFFFFFE) != 0)
  {
    v12[0] = v16;
    sub_1C5724854(a1 & 1);
    v10 = sub_1C576269C(&v13, a2);
    if (*(v9 + 24))
    {
      *(v9 + 88) = v12[0];
    }

    return (v10)(&v13, 0);
  }

  return result;
}

double sub_1C5763570(uint64_t a1, uint64_t a2)
{
  sub_1C5761E84(a1, &v8);
  if (v9)
  {
    v3 = v10;
    v4 = sub_1C5625230(&v8, &qword_1EC170F50, &qword_1C5879198);
    v6[1] = v3;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))(v7, v4);
    sub_1C5763FE4(v7);
    v6[0] = v7[5];
    sub_1C5724040(v6, &v11);
    if ((~v11 & 0xFFFFFFFE) != 0)
    {
      *&v8 = v11;
      *&result = sub_1C5724800();
      return result;
    }
  }

  else
  {
    sub_1C5625230(&v8, &qword_1EC170F50, &qword_1C5879198);
  }

  return 0.0;
}

uint64_t *sub_1C57636B0(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  sub_1C5761E84(a1, &v14);
  if (!v15)
  {
    return sub_1C5625230(&v14, &qword_1EC170F50, &qword_1C5879198);
  }

  v7 = v16;
  v8 = sub_1C5625230(&v14, &qword_1EC170F50, &qword_1C5879198);
  v12[1] = v7;
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x58))(v13, v8);
  sub_1C5763FE4(v13);
  v12[0] = v13[5];
  result = sub_1C5724040(v12, &v17);
  if ((~v17 & 0xFFFFFFFE) != 0)
  {
    v13[0] = v17;
    sub_1C57248B8(a3);
    v11 = sub_1C576269C(&v14, a1);
    if (*(v10 + 24))
    {
      *(v10 + 88) = v13[0];
    }

    return (v11)(&v14, 0);
  }

  return result;
}

id CompositionalStackLayout.GroupRef.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompositionalStackLayout.GroupRef.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CompositionalStackLayout.GroupRef();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1C5763984(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170FE0, &unk_1C58792B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C5763AE0(uint64_t (*a1)(void *))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 16; ; i += 12)
    {
      result = a1(&v4[i - 12]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v10 = v1 + 1;
        if (!__OFADD__(v1, 1))
        {
          v11 = *v5;
          if (v10 == *v5)
          {
            return v1;
          }

          while (v10 < v11)
          {
            v17 = v4;
            sub_1C56466CC(&v4[i], v16, &qword_1EC16D8C8, &qword_1C58677D0);
            v12 = a1(v16);
            result = sub_1C5625230(v16, &qword_1EC16D8C8, &qword_1C58677D0);
            if (v12)
            {
              v4 = v17;
            }

            else
            {
              if (v10 == v1)
              {
                v4 = v17;
              }

              else
              {
                v4 = v17;
                if ((v1 & 0x8000000000000000) != 0)
                {
                  goto LABEL_29;
                }

                v13 = *v5;
                if (v1 >= *v5)
                {
                  goto LABEL_30;
                }

                result = sub_1C56466CC(&v17[12 * v1 + 4], v16, &qword_1EC16D8C8, &qword_1C58677D0);
                if (v10 >= v13)
                {
                  goto LABEL_31;
                }

                sub_1C56466CC(&v4[i], v15, &qword_1EC16D8C8, &qword_1C58677D0);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_1C5763ACC(v4);
                }

                result = sub_1C5763F3C(v15, &v4[12 * v1 + 4]);
                if (v10 >= v4[2])
                {
                  goto LABEL_32;
                }

                result = sub_1C5763F3C(v16, &v4[i]);
                *v14 = v4;
              }

              ++v1;
            }

            ++v10;
            v5 = (v4 + 2);
            v11 = v4[2];
            i += 12;
            if (v10 == v11)
            {
              return v1;
            }
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
        }

        __break(1u);
        return result;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_1C5763D34(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 6);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 48);
  v14 = *(a1 + 7);
  v15 = *(a1 + 9);
  v12 = *(a2 + 56);
  v13 = *(a2 + 72);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v6)
    {
LABEL_12:
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
    v8 = sub_1C584FDC0();
    v9 = 0;
    if ((v8 & 1) == 0 || v2 != v6)
    {
      return v9 & 1;
    }
  }

  if ((sub_1C575CE78(v3, v5) & 1) == 0 || (static StackLayout.Distribution.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = static StackLayout.Alignment.== infix(_:_:)();
  v9 = 0;
  if ((v10 & 1) != 0 && v4 == v7)
  {
    v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, v12), vceqq_f64(v15, v13))));
  }

  return v9 & 1;
}

unint64_t sub_1C5763EB8()
{
  result = qword_1ED77E868;
  if (!qword_1ED77E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E868);
  }

  return result;
}

uint64_t sub_1C5763F3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5764038(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 96 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 96 * a3;
  v13 = (v7 + 32 + 96 * a2);
  if (result != v13 || result >= v13 + 96 * v12)
  {
    result = memmove(result, v13, 96 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5764124(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1C5763984(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1C5764038(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1C57641E8()
{
  result = qword_1EC170F78;
  if (!qword_1EC170F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170F78);
  }

  return result;
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

uint64_t sub_1C5764260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1C57642A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C5764E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5764E88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC16D8C8, &qword_1C58677D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5764EF4()
{
  type metadata accessor for MUWebBasedPlacecardImageDataProvider();
  v0 = swift_allocObject();
  result = sub_1C5764FC0();
  *(v0 + 16) = result;
  qword_1EC18F7F8 = v0;
  return result;
}

uint64_t sub_1C5764F34()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1C5764FC0();
  return v0;
}

uint64_t *sub_1C5764F70()
{
  if (qword_1EC174CD0 != -1)
  {
    swift_once();
  }

  return &qword_1EC18F7F8;
}

uint64_t sub_1C5764FC0()
{
  result = GEOConfigGetUInteger();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = GEOConfigGetUInteger();
  if (result < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  result = GEOConfigGetUInteger();
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = GEOConfigGetUInteger();
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = [objc_allocWithZone(MUAMSResultCache) initWithAppAdamIdCacheCount:v1 appAdamIdTimeToLive:v2 bundleIdCacheCount:v3 bundleIdTimeToLive:result];
    v5 = [objc_allocWithZone(MUAMSResultProvider) initWithCache_];

    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

double sub_1C57650B8()
{
  result = 150.0;
  qword_1EC190478 = 0x4062C00000000000;
  unk_1EC190480 = 0x405C000000000000;
  return result;
}

uint64_t sub_1C57650E0(uint64_t a1)
{
  v90[4] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C584EFF0();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v89 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v85 - v12;
  v14 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v88 = (v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v85 - v19;
  sub_1C5695BCC((v85 - v19));
  sub_1C584EFE0();
  v85[2] = sub_1C576751C();
  v21 = sub_1C584F120();
  v23 = v22;
  v85[1] = v7;
  v24 = *(v7 + 8);
  v25 = v21;
  v86 = v24;
  v87 = v6;
  v24(v13, v6);
  sub_1C5767884(v20, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  v26 = objc_opt_self();
  v27 = sub_1C584EAC0();
  v90[0] = 0;
  v28 = [v26 JSONObjectWithData:v27 options:0 error:v90];

  v29 = v23;
  if (!v28)
  {
    v56 = v90[0];
    v57 = sub_1C584E950();

    swift_willThrow();
    sub_1C566DD84(v25, v23);

LABEL_11:
    v58 = v87;
LABEL_14:
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v59 = sub_1C584F2C0();
    __swift_project_value_buffer(v59, qword_1EC18FA20);
    sub_1C57678E4(a1, v5, type metadata accessor for WebPlacecardBridge.MUIconArgument);
    v60 = sub_1C584F2A0();
    v61 = sub_1C584F9B0();
    if (os_log_type_enabled(v60, v61))
    {
      v87 = v58;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v90[0] = v63;
      *v62 = 136315138;
      sub_1C5695BCC(v88);
      sub_1C584EFE0();
      v64 = sub_1C584F110();
      v66 = v65;
      v86(v89, v87);
      sub_1C5767884(v88, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
      sub_1C5767884(v5, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      v67 = sub_1C5649518(v64, v66, v90);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1C5620000, v60, v61, "fail to decode argument.styleAttributes: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1C694B7A0](v63, -1, -1);
      MEMORY[0x1C694B7A0](v62, -1, -1);
    }

    else
    {

      sub_1C5767884(v5, type metadata accessor for WebPlacecardBridge.MUIconArgument);
    }

    return 0;
  }

  v30 = v25;
  v31 = v90[0];
  sub_1C584FB30();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171090, &unk_1C58792C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C566DD84(v25, v29);
    goto LABEL_11;
  }

  v32 = objc_allocWithZone(MEMORY[0x1E69A25E0]);
  v33 = sub_1C584F5C0();

  v34 = [v32 initWithDictionary_];

  if (!v34)
  {
LABEL_13:
    sub_1C566DD84(v25, v29);
    v58 = v87;
    goto LABEL_14;
  }

  v35 = v34;
  v36 = [objc_allocWithZone(MEMORY[0x1E69A25D8]) init];
  if (!v36)
  {

    goto LABEL_13;
  }

  v37 = v36;
  v38 = sub_1C5695D30();
  v39 = sub_1C5695D58();
  [v37 setKey_];
  [v37 setValue_];
  [v34 addAttribute_];
  v40 = [objc_allocWithZone(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes_];
  v41 = sub_1C5695D98();
  v42 = objc_opt_self();
  if (!v41)
  {
    v69 = [objc_opt_self() mainScreen];
    [v69 nativeScale];
    v71 = v70;

    LOBYTE(v84) = v38 & 1;
    v72 = [v42 imageForStyle:v40 size:4 forScale:1 format:v39 & 1 transparent:0 transitMode:0 isCarplay:v71 nightMode:v84];
    if (v72)
    {
      v73 = v72;
      v74 = UIImagePNGRepresentation(v72);
      if (v74)
      {
        v75 = v74;
        v51 = sub_1C584EAE0();
        v76 = v37;
        v54 = v77;

        sub_1C566DCD4(v51, v54);
        v55 = sub_1C584EAD0();
        sub_1C566DD84(v30, v29);

        goto LABEL_23;
      }

      sub_1C566DD84(v30, v29);

      return 0;
    }

    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v83 = sub_1C584F2C0();
    __swift_project_value_buffer(v83, qword_1EC18FA20);
    v79 = sub_1C584F2A0();
    v80 = sub_1C584F9B0();
    if (!os_log_type_enabled(v79, v80))
    {
LABEL_33:
      sub_1C566DD84(v30, v29);

      return 0;
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "fetched nil image from MKIconManager";
LABEL_32:
    _os_log_impl(&dword_1C5620000, v79, v80, v82, v81, 2u);
    MEMORY[0x1C694B7A0](v81, -1, -1);
    goto LABEL_33;
  }

  v43 = sub_1C5695D80();
  v44 = [objc_opt_self() mainScreen];
  [v44 nativeScale];
  v46 = v45;

  v47 = [v42 imageForIconID:v43 contentScale:1 sizeGroup:0 nightMode:v46];
  if (!v47)
  {
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v78 = sub_1C584F2C0();
    __swift_project_value_buffer(v78, qword_1EC18FA20);
    v79 = sub_1C584F2A0();
    v80 = sub_1C584F9B0();
    if (!os_log_type_enabled(v79, v80))
    {
      goto LABEL_33;
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "fetched nil image for accolade icon from MKIconManager";
    goto LABEL_32;
  }

  v48 = v47;
  v49 = UIImagePNGRepresentation(v47);
  if (!v49)
  {
    sub_1C566DD84(v30, v29);

    return 0;
  }

  v50 = v49;
  v51 = sub_1C584EAE0();
  v52 = v37;
  v54 = v53;

  sub_1C566DCD4(v51, v54);
  v55 = sub_1C584EAD0();
  sub_1C566DD84(v30, v29);

LABEL_23:
  sub_1C566DD84(v51, v54);
  sub_1C566DD84(v51, v54);
  return v55;
}

id sub_1C5765B28(void *a1)
{
  if ([a1 type] == 3 || !objc_msgSend(a1, sel_labelArtwork))
  {
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v18 = sub_1C584F2C0();
    __swift_project_value_buffer(v18, qword_1EC18FA20);
    v19 = a1;
    v11 = sub_1C584F2A0();
    v20 = sub_1C584F9B0();

    if (os_log_type_enabled(&v11->super, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&dword_1C5620000, &v11->super, v20, "It's a separator or empty labelArtwork:%@", v21, 0xCu);
      sub_1C5625230(v22, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v22, -1, -1);
      MEMORY[0x1C694B7A0](v21, -1, -1);
    }

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 scale];
  v5 = v4;

  v6 = [v2 mainScreen];
  v7 = [v6 traitCollection];

  v8 = [v7 userInterfaceStyle];
  v9 = [objc_opt_self() sharedInstance];
  result = [a1 labelArtwork];
  if (result)
  {
    v11 = [v9 imageForArtwork:result size:6 featureType:2 scale:v8 == 2 nightMode:v5];
    swift_unknownObjectRelease();
    if (!v11)
    {

      return 0;
    }

    v12 = UIImagePNGRepresentation(v11);
    if (v12)
    {
      v13 = v12;
      v14 = sub_1C584EAE0();
      v16 = v15;

      sub_1C566DCD4(v14, v16);
      v17 = sub_1C584EAD0();

      sub_1C566DD84(v14, v16);
      sub_1C566DD84(v14, v16);
      return v17;
    }

LABEL_11:
    return 0;
  }

  __break(1u);
  return result;
}

void sub_1C5765E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  if (v9)
  {
    v10 = v9;
    [v9 screenScale];
    v12 = v11;

    v13 = [objc_allocWithZone(MUAMSResultProviderFetchOptions) initWithDisplayScale:4 artworkSize:v12 source:{48.0, 48.0}];
    v14 = *(v4 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C5867900;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;

    v16 = sub_1C584F750();

    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v17 = sub_1C584F9F0();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v20[4] = sub_1C5767574;
    v20[5] = v18;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1C5766700;
    v20[3] = &block_descriptor_13;
    v19 = _Block_copy(v20);
    sub_1C5633060(a3, a4);

    [v14 fetchResultsForAdamIds:v16 options:v13 callbackQueue:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5766048(unint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v69 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v68 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v64 - v16;
  v18 = sub_1C584EA90();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v66 = *(v23 - 8);
  v67 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    goto LABEL_20;
  }

  if (a1 >> 62)
  {
    if (sub_1C584FB90())
    {
      goto LABEL_5;
    }

LABEL_20:
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v54 = sub_1C584F2C0();
    __swift_project_value_buffer(v54, qword_1EC18FA20);
    v55 = a2;
    v56 = sub_1C584F2A0();
    v57 = sub_1C584F9B0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      if (a2)
      {
        v60 = a2;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        v62 = v61;
      }

      else
      {
        v61 = 0;
        v62 = 0;
      }

      *(v58 + 4) = v61;
      *v59 = v62;
      _os_log_impl(&dword_1C5620000, v56, v57, "empty fetchedResult or error occurs: %@", v58, 0xCu);
      sub_1C5625230(v59, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v59, -1, -1);
      MEMORY[0x1C694B7A0](v58, -1, -1);
    }

    if (a3)
    {
      v63 = v68;
      (*(v66 + 56))(v68, 1, 1, v67);
      a3(v63);
      sub_1C5625230(v63, &qword_1EC170A90, &unk_1C58783D0);
    }

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_5:
  v65 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1C694A320](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v27 = *(a1 + 32);
  }

  v28 = v27;
  sub_1C5697020(v26);
  v29 = [v28 identifier];
  v30 = sub_1C584F660();
  v32 = v31;

  sub_1C569A78C(v30, v32);
  v33 = [v28 displayName];
  v34 = sub_1C584F660();
  v36 = v35;

  sub_1C569A7A4(v34, v36);
  v37 = [v28 url];
  sub_1C584EA50();

  v38 = sub_1C584EA00();
  v40 = v39;
  v64 = *(v19 + 8);
  v64(v22, v18);
  sub_1C569A7BC(v38, v40);
  v41 = [v28 subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1C584F660();
    v45 = v44;

    sub_1C569A7EC(v43, v45);
  }

  v46 = [v28 artworkURL];
  if (v46)
  {
    v47 = v46;
    sub_1C584EA50();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  (*(v19 + 56))(v14, v48, 1, v18);
  sub_1C5767814(v14, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C5625230(v17, &unk_1EC16E660, &unk_1C58685F0);
  }

  else
  {
    v49 = sub_1C584EA00();
    v51 = v50;
    v64(v17, v18);
    sub_1C569A7D4(v49, v51);
  }

  sub_1C569A804([v28 isAppInstalled]);
  v52 = v65;
  if (v65)
  {
    v53 = v68;
    sub_1C57678E4(v26, v68, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
    (*(v66 + 56))(v53, 0, 1, v67);
    v52(v53);

    sub_1C5625230(v53, &qword_1EC170A90, &unk_1C58783D0);
    sub_1C5767884(v26, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  }

  else
  {
    sub_1C5767884(v26, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  }
}

double sub_1C5766700(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C5626E40(0, &qword_1EC170FF0, 0x1E69A1B60);
    v4 = sub_1C584F770();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

id sub_1C57667A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v67 - v10;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5697200(v15);
  v16 = *(**sub_1C567A818() + 96);

  v17 = v16(a1, a2, a3);

  if (!v17)
  {
    if (qword_1EC17B018 != -1)
    {
      swift_once();
    }

    v49 = sub_1C584F2C0();
    __swift_project_value_buffer(v49, qword_1EC18FA20);
    v50 = sub_1C584F2A0();
    v51 = sub_1C584F9B0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1C5620000, v50, v51, "fetched empty attribution", v52, 2u);
      MEMORY[0x1C694B7A0](v52, -1, -1);
    }

    if (!a4)
    {
      return sub_1C5767884(v15, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    }

    (*(v69 + 56))(v11, 1, 1, v70);
    a4(v11);
    goto LABEL_27;
  }

  result = [v17 providerName];
  if (!result)
  {
    __break(1u);
    goto LABEL_31;
  }

  v19 = result;
  v20 = sub_1C584F660();
  v22 = v21;

  sub_1C569A864(v20, v22);
  result = [v17 providerID];
  if (!result)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = result;
  v24 = sub_1C584F660();
  v26 = v25;

  sub_1C569A84C(v24, v26);
  v27 = [v17 attributionURLs];
  if (!v27 || (v28 = v27, v29 = sub_1C584F770(), v28, v30 = sub_1C5766D78(v29), , !v30))
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v68 = a4;

  *v15 = v30;
  v31 = objc_opt_self();
  v32 = &selRef_setHideChevron_;
  result = [v31 sharedInstance];
  if (!result)
  {
    goto LABEL_32;
  }

  v33 = result;
  v34 = &selRef_preferredTitleLabelFont;
  [result screenScale];
  v36 = v35;

  v37 = [v17 providerLogoImageForScale_];
  if (v37)
  {
    v38 = v37;
    v39 = UIImagePNGRepresentation(v37);
    if (v39)
    {
      v40 = v39;
      v41 = sub_1C584EAE0();
      v43 = v42;

      sub_1C566DCD4(v41, v43);
      v44 = sub_1C584EAD0();
      v46 = v45;
      sub_1C566DD84(v41, v43);
      v47 = v41;
      v34 = &selRef_preferredTitleLabelFont;
      v48 = v43;
      v32 = &selRef_setHideChevron_;
      sub_1C566DD84(v47, v48);
    }

    else
    {
      v44 = 0;
      v46 = 0xE000000000000000;
    }

    sub_1C569A87C(v44, v46);
  }

  result = [v31 v32[488]];
  if (result)
  {
    v53 = result;
    [result v34[209]];
    v55 = v54;

    v56 = [v17 providerSnippetLogoImageForScale_];
    v57 = v68;
    if (v56)
    {
      v58 = v56;
      v59 = UIImagePNGRepresentation(v56);
      if (v59)
      {
        v60 = v59;
        v61 = sub_1C584EAE0();
        v67 = v11;
        v63 = v62;

        sub_1C566DCD4(v61, v63);
        v64 = sub_1C584EAD0();
        v66 = v65;
        sub_1C566DD84(v61, v63);
        v11 = v67;
        sub_1C566DD84(v61, v63);
      }

      else
      {
        v64 = 0;
        v66 = 0xE000000000000000;
      }

      sub_1C569A894(v64, v66);
    }

    if (!v57)
    {

      return sub_1C5767884(v15, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    }

    sub_1C57678E4(v15, v11, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
    (*(v69 + 56))(v11, 0, 1, v70);
    v57(v11);

LABEL_27:
    sub_1C5625230(v11, &unk_1EC170A60, &qword_1C586B0E0);
    return sub_1C5767884(v15, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C5766D78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C563B144(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1C56465F8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C563B144((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1C5766E8C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v36 - v8;
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [objc_opt_self() sharedInstance];
  v16 = sub_1C584F630();
  v17 = [v15 bestAttributionForPublisher_];

  if (v17)
  {
    v18 = objc_opt_self();
    v19 = [v17 logoIdentifier];
    v20 = [objc_opt_self() mainScreen];
    [v20 scale];
    v22 = v21;

    v23 = [v18 imageForIconID:v19 contentScale:1 sizeGroup:0 nightMode:v22];
    if (v23)
    {
      v24 = v23;
      v25 = UIImagePNGRepresentation(v23);
      if (v25)
      {
        v36[1] = a4;
        v26 = v25;
        v27 = sub_1C584EAE0();
        v29 = v28;

        sub_1C5697200(v14);
        v30 = sub_1C584EAD0();
        sub_1C569A87C(v30, v31);
        if (a3)
        {
          sub_1C57678E4(v14, v9, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
          (*(v11 + 56))(v9, 0, 1, v10);
          a3(v9);

          sub_1C566DD84(v27, v29);
          swift_unknownObjectRelease();
          sub_1C5625230(v9, &unk_1EC170A60, &qword_1C586B0E0);
          sub_1C5767884(v14, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
        }

        else
        {
          sub_1C5767884(v14, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);

          sub_1C566DD84(v27, v29);
          swift_unknownObjectRelease();
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_1EC17B018 != -1)
  {
    swift_once();
  }

  v32 = sub_1C584F2C0();
  __swift_project_value_buffer(v32, qword_1EC18FA20);
  v33 = sub_1C584F2A0();
  v34 = sub_1C584F9B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1C5620000, v33, v34, "fail to fetch publisher attribution data", v35, 2u);
    MEMORY[0x1C694B7A0](v35, -1, -1);
  }

  if (a3)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    a3(v9);
    sub_1C5625230(v9, &unk_1EC170A60, &qword_1C586B0E0);
  }
}

void sub_1C57672D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EC18EEF0 != -1)
  {
    swift_once();
  }

  v6 = *&qword_1EC190478;
  v7 = unk_1EC190480;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v12[4] = sub_1C5767594;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C5641E50;
  v12[3] = &block_descriptor_9_1;
  v10 = _Block_copy(v12);
  v11 = a1;
  sub_1C5633060(a2, a3);

  [v11 fetchImageTilewWithSize:v10 completion:{v6, v7}];
  _Block_release(v10);
}

uint64_t sub_1C5767444()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C576747C()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA20);
  __swift_project_value_buffer(v0, qword_1EC18FA20);
  type metadata accessor for MUWebBasedPlacecardImageDataProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170FF8, &unk_1C5879318);
  sub_1C584F680();
  return sub_1C584F2B0();
}

unint64_t sub_1C576751C()
{
  result = qword_1EC16D7A8;
  if (!qword_1EC16D7A8)
  {
    type metadata accessor for WebPlacecardBridge.MUStyleAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D7A8);
  }

  return result;
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_1C5767594(void *a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!a2 && a1)
    {
      if (v6)
      {
        v7 = a1;
        v8 = UIImagePNGRepresentation(v7);
        if (v8)
        {
          v10 = v8;
          v11 = sub_1C584EAE0();
          v13 = v12;

          sub_1C566DCD4(v11, v13);
          v14 = sub_1C584EAD0();
          v16 = v15;
          sub_1C566DD84(v11, v13);
          v9.n128_f64[0] = sub_1C566DD84(v11, v13);
        }

        else
        {
          v14 = 0;
          v16 = 0;
        }

        v6(v14, v16, v9);
      }

      else
      {
      }

      return result;
    }
  }

  if (qword_1EC17B018 != -1)
  {
    swift_once();
  }

  v17 = sub_1C584F2C0();
  __swift_project_value_buffer(v17, qword_1EC18FA20);
  v18 = v5;
  v19 = sub_1C584F2A0();
  v20 = sub_1C584F9B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_1C5620000, v19, v20, "fail to fetch route snapshot for mapItem: %@", v21, 0xCu);
    sub_1C5625230(v22, &unk_1EC16E670, &qword_1C586A030);
    MEMORY[0x1C694B7A0](v22, -1, -1);
    MEMORY[0x1C694B7A0](v21, -1, -1);
  }

  if (v6)
  {
    (v6)(0, 0);
  }

  return result;
}

uint64_t sub_1C5767814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5767884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C57678E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1C5767954(void *a1)
{
  result = [a1 inactiveLines];
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171000, qword_1C5879328);
  v3 = sub_1C584F770();

  if (v3 >> 62)
  {
    result = sub_1C584FB90();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C694A320](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
    swift_unknownObjectRetain();
LABEL_7:

    v5 = [v4 departuresSequence];
    swift_unknownObjectRelease();
    return v5;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1C5767A58(void *a1)
{
  result = [a1 inactiveLines];
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171000, qword_1C5879328);
  v3 = sub_1C584F770();

  if (v3 >> 62)
  {
    result = sub_1C584FB90();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return MEMORY[0x1E69E7CC0];
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C694A320](0, v3);
    goto LABEL_7;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170890, &qword_1C5879340);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C5867900;
    swift_unknownObjectRetain();
    GEOLocationCoordinate2DMake();
    *(v4 + 56) = &type metadata for TransitDepartureInactiveLinesRowViewModel;
    *(v4 + 64) = &off_1F44C68A0;
    *(v4 + 32) = v5;
    swift_unknownObjectRelease();
    return v4;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_1C5767B98()
{
  v1 = sub_1C5767954(*v0);
  if (!v1)
  {
    return 0;
  }

  result = [v1 containerDisplayName];
  if (result)
  {
    v3 = result;
    v4 = sub_1C584F660();
    swift_unknownObjectRelease();

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1C5767C18()
{
  v1 = sub_1C5767954(*v0);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = [v1 containerLabelItems];
  if (result)
  {
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD38, &qword_1C5868370);
    v4 = sub_1C584F770();
    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C5767E3C()
{
  v0 = sub_1C584EA90();
  __swift_allocate_value_buffer(v0, qword_1EC174CB8);
  __swift_project_value_buffer(v0, qword_1EC174CB8);
  v1 = sub_1C5626E40(0, &qword_1EC16CF98, 0x1E696AAE8);
  v3 = static NSBundle.mapsUIBundle.getter(v1, v2);
  v4 = sub_1C584F630();
  v5 = sub_1C584F630();
  v6 = sub_1C584F630();
  v7 = [v3 pathForResource:v4 ofType:v5 inDirectory:v6];

  if (v7)
  {
    sub_1C584F660();

    sub_1C584EA10();
  }

  else
  {
    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v8 = sub_1C584F2C0();
    __swift_project_value_buffer(v8, qword_1EC18FA98);
    v9 = sub_1C584F2A0();
    v10 = sub_1C584F9B0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C5620000, v9, v10, "BuiltInBundle not found", v11, 2u);
      MEMORY[0x1C694B7A0](v11, -1, -1);
    }

    sub_1C584EA10();
  }
}

uint64_t static _MUWebBasedPlacecardResourceConfiguration.builtInBundlePath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC174CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584EA90();
  v3 = __swift_project_value_buffer(v2, qword_1EC174CB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id _MUWebBasedPlacecardResourceConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MUWebBasedPlacecardResourceConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1C5768208()
{
  result = [objc_allocWithZone(type metadata accessor for _MUWebBasedPlacecardResourceManager(0)) init];
  qword_1EC174CF0 = result;
  return result;
}

id _MUWebBasedPlacecardResourceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_1C5768270()
{
  if (qword_1EC174CE8 != -1)
  {
    swift_once();
  }

  return &qword_1EC174CF0;
}

id static _MUWebBasedPlacecardResourceManager.shared.getter()
{
  if (qword_1EC174CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC174CF0;

  return v1;
}

void sub_1C5768378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C584F570();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C584F5B0();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v27 - v17;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(v16);
  v19 = sub_1C584EA90();
  v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  sub_1C5625230(v18, &unk_1EC16E660, &unk_1C58685F0);
  if (v20 == 1)
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = a1;
    v22[4] = a2;

    sub_1C5633060(a1, a2);
    sub_1C5768AD0(sub_1C576CE28, v22);
  }

  else
  {
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v23 = sub_1C584F9F0();
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = v3;
    aBlock[4] = sub_1C576E71C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_14;
    v25 = _Block_copy(aBlock);
    sub_1C5633060(a1, a2);
    v26 = v3;

    sub_1C584F590();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C576DCEC(&qword_1EC16D0E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
    sub_1C5664E38();
    sub_1C584FB50();
    MEMORY[0x1C694A0B0](0, v13, v9, v25);
    _Block_release(v25);

    (*(v30 + 8))(v9, v6);
    (*(v28 + 8))(v13, v29);
  }
}

void *sub_1C57687C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C584F570();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C584F5B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v24 = sub_1C584F9F0();
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = v16;
    aBlock[4] = sub_1C576E6E8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C56444F8;
    aBlock[3] = &block_descriptor_28;
    v18 = _Block_copy(aBlock);
    v23 = v10;
    v19 = v18;
    sub_1C5633060(a2, a3);
    v20 = v16;

    sub_1C584F590();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C576DCEC(&qword_1EC16D0E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A30, &unk_1C5869B00);
    sub_1C5664E38();
    sub_1C584FB50();
    v21 = v24;
    MEMORY[0x1C694A0B0](0, v14, v9, v19);
    _Block_release(v19);

    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v23);
  }

  return result;
}

void sub_1C5768AD0(unint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v47 - v7;
  v9 = sub_1C584F580();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() modernManager];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v14 activeTileGroup];

  if (!v16 || (v17 = [v16 explicitResources], v16, !v17) || (aBlock[0] = 0, v54 = sub_1C5626E40(0, &qword_1EC16D048, 0x1E69A2460), sub_1C584F760(), v17, (v18 = aBlock[0]) == 0))
  {
    if (qword_1EC17B090 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  v50 = v13;
  v51 = v10;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v19 = v18 & 0xFFFFFFFFFFFFFF8;
  v55 = v18;
  if (v18 >> 62)
  {
    v8 = sub_1C584FB90();
    v52 = v9;
    v53 = v2;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_35:

    v38 = [objc_opt_self() sharedRequester];
    v39 = sub_1C584F750();

    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v41 = v50;
    v40 = v51;
    v42 = v52;
    (*(v51 + 104))(v50, *MEMORY[0x1E69E7FA0], v52);
    v43 = sub_1C584FA20();
    (*(v40 + 8))(v41, v42);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = a1;
    v45[4] = a2;
    aBlock[4] = sub_1C576E694;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C576CC7C;
    aBlock[3] = &block_descriptor_22_0;
    v46 = _Block_copy(aBlock);
    sub_1C5633060(a1, a2);

    [v38 fetchResources:v39 force:0 unpack:1 manifestConfiguration:0 auditToken:0 queue:v43 handler:v46];
    _Block_release(v46);

    return;
  }

  v8 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v9;
  v53 = v2;
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_7:
  v48 = a1;
  v49 = a2;
  a1 = 0;
  v20 = v55;
  v56 = v55 & 0xC000000000000001;
  while (1)
  {
    if (v56)
    {
      v21 = MEMORY[0x1C694A320](a1, v20);
    }

    else
    {
      if (a1 >= *(v19 + 16))
      {
        goto LABEL_32;
      }

      v21 = *(v20 + 8 * a1 + 32);
    }

    v22 = v21;
    v23 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      break;
    }

    v24 = [v21 filename];
    v25 = GEOCanonicalResourceNameForVersionedName();

    if (v25)
    {
      v26 = v8;
      v27 = v19;
      v28 = sub_1C584F660();
      v30 = v29;

      if (v28 == 0x7261636563616C70 && v30 == 0xED0000736D632E64)
      {

        v19 = v27;
      }

      else
      {
        v32 = sub_1C584FDC0();

        v19 = v27;
        if ((v32 & 1) == 0)
        {

LABEL_23:
          v8 = v26;
          v20 = v55;
          goto LABEL_9;
        }
      }

      sub_1C584FCA0();
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
      goto LABEL_23;
    }

LABEL_9:
    ++a1;
    if (v23 == v8)
    {
      a1 = v48;
      a2 = v49;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_26:
  v33 = sub_1C584F2C0();
  __swift_project_value_buffer(v33, qword_1EC18FA98);
  v34 = sub_1C584F2A0();
  v35 = sub_1C584F9B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1C5620000, v34, v35, "Fetching resources error", v36, 2u);
    MEMORY[0x1C694B7A0](v36, -1, -1);
  }

  if (a1)
  {
    v37 = sub_1C584EA90();
    (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
    (a1)(v8);
    sub_1C5625230(v8, &unk_1EC16E660, &unk_1C58685F0);
  }
}

uint64_t sub_1C5769130(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = sub_1C584EA90();
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*((*MEMORY[0x1E69E7D40] & *a3) + 0x78))(result);
    a1(v10);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1C57693F8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C584EA90();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v46 - v14;
  BOOL = GEOConfigGetBOOL();
  v17 = MEMORY[0x1E69E7D40];
  if (BOOL)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
    v18 = *(v49 + 48);
    if (v18(v15, 1, v4) != 1)
    {
      return (*(v49 + 32))(a1, v15, v4);
    }

    sub_1C584EA10();
    result = (v18)(v15, 1, v4);
    if (result != 1)
    {
      return sub_1C5625230(v15, &unk_1EC16E660, &unk_1C58685F0);
    }

    return result;
  }

  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))() & 1) == 0 && !GEOConfigGetBOOL())
  {
    (*((*v17 & *v1) + 0x98))();
    if ((*(v49 + 48))(v12, 1, v4) == 1)
    {
      sub_1C5625230(v12, &unk_1EC16E660, &unk_1C58685F0);
      (*((*v17 & *v1) + 0x88))(1);
      if (qword_1EC17B090 != -1)
      {
        swift_once();
      }

      v26 = sub_1C584F2C0();
      __swift_project_value_buffer(v26, qword_1EC18FA98);
      v27 = sub_1C584F2A0();
      v28 = sub_1C584F9B0();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1C5620000, v27, v28, "OnlineBundleURL is empty, fall back to built-in URL", v29, 2u);
        MEMORY[0x1C694B7A0](v29, -1, -1);
      }

      return (*(v49 + 16))(a1, v2 + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL, v4);
    }

    v30 = *(v49 + 32);
    v31 = v30(v7, v12, v4);
    v32 = (*((*v17 & *v1) + 0xB8))(v31);
    v34 = v33;
    v35 = (*((*v17 & *v1) + 0xB0))();
    v37 = HIBYTE(v34) & 0xF;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v37 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v38 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v38 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v38)
      {

LABEL_32:
        (*((*v17 & *v1) + 0x88))(1);
        if (qword_1EC17B090 != -1)
        {
          swift_once();
        }

        v42 = sub_1C584F2C0();
        __swift_project_value_buffer(v42, qword_1EC18FA98);
        v43 = sub_1C584F2A0();
        v44 = sub_1C584F9B0();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1C5620000, v43, v44, "Online bundle is older than built-in bundle, fall back to built-in URL", v45, 2u);
          MEMORY[0x1C694B7A0](v45, -1, -1);
        }

        (*(v49 + 8))(v7, v4);
        return (*(v49 + 16))(a1, v2 + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL, v4);
      }

      v39 = sub_1C584F630();
      v48 = v30;
      v40 = v39;
      v41 = sub_1C584F630();
      v47 = [v40 compare:v41 options:64];

      v30 = v48;
      if (v47 == 1)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    return v30(a1, v7, v4);
  }

  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v20 = sub_1C584F2C0();
  __swift_project_value_buffer(v20, qword_1EC18FA98);
  v21 = sub_1C584F2A0();
  v22 = sub_1C584F990();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1C5620000, v21, v22, "Using built-in bundle URL", v23, 2u);
    MEMORY[0x1C694B7A0](v23, -1, -1);
  }

  v24 = *(v49 + 16);
  v25 = v2 + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL;

  return v24(a1, v25, v4);
}

uint64_t sub_1C5769B94()
{
  v1 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5769C2C(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5769C7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C5769FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  return sub_1C5754258(v1 + v3, a1);
}

uint64_t sub_1C576A258(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  sub_1C576DC7C(a1, v1 + v7);
  swift_endAccess();
  sub_1C5754258(v1 + v7, v6);
  v8 = sub_1C584EA90();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) == 1;
  sub_1C5625230(v6, &unk_1EC16E660, &unk_1C58685F0);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v9);
  return sub_1C5625230(a1, &unk_1EC16E660, &unk_1C58685F0);
}

uint64_t (*sub_1C576A3BC(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_1C576A488;
}

void sub_1C576A488(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    sub_1C5754258(v5 + v3[5], v3[4]);
    v6 = sub_1C584EA90();
    v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) == 1;
    sub_1C5625230(v4, &unk_1EC16E660, &unk_1C58685F0);
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x88))(v7);
  }

  free(v4);

  free(v3);
}

uint64_t sub_1C576A5A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v50 - v6;
  v8 = sub_1C584EA90();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v50 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v50 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v50 - v24;
  v26 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v53 = (*MEMORY[0x1E69E7D40] & *v0) + 152;
  v54 = v26;
  (v26)(v23);
  v52 = *(v9 + 48);
  if (!v52(v7, 1, v8))
  {
    (*(v9 + 16))(v13, v7, v8);
    sub_1C5625230(v7, &unk_1EC16E660, &unk_1C58685F0);
    sub_1C584EA40();
    v36 = v13;
    v37 = v9;
    v38 = *(v9 + 8);
    v51 = v36;
    v38();
    sub_1C584EA30();
    v39 = v17;
    v40 = v38;
    v9 = v37;
    (v40)(v39, v8);
    (*(v37 + 32))(v25, v21, v8);
    v41 = sub_1C576D8C8(v25);
    if (!v41)
    {
      (v40)(v25, v8);
      v13 = v51;
      goto LABEL_3;
    }

    v42 = v41;
    if (*(v41 + 16) && (v43 = sub_1C5645D34(0x6E6F6973726576, 0xE700000000000000), (v44 & 1) != 0))
    {
      sub_1C56465F8(*(v42 + 56) + 32 * v43, v57);

      if (swift_dynamicCast())
      {
        v45 = v56;
LABEL_15:
        (v40)(v25, v8);
        return v45;
      }
    }

    else
    {
    }

    v45 = 0;
    goto LABEL_15;
  }

  sub_1C5625230(v7, &unk_1EC16E660, &unk_1C58685F0);
LABEL_3:
  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v27 = sub_1C584F2C0();
  __swift_project_value_buffer(v27, qword_1EC18FA98);
  v28 = v0;
  v29 = sub_1C584F2A0();
  v30 = sub_1C584F9B0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v57[0] = v32;
    *v31 = 136315138;
    v33 = v55;
    v54();
    if (v52(v33, 1, v8))
    {
      sub_1C5625230(v33, &unk_1EC16E660, &unk_1C58685F0);
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      (*(v9 + 16))(v13, v33, v8);
      sub_1C5625230(v33, &unk_1EC16E660, &unk_1C58685F0);
      v47 = sub_1C584EA00();
      v35 = v48;
      (*(v9 + 8))(v13, v8);
      v34 = v47;
    }

    v49 = sub_1C5649518(v34, v35, v57);

    *(v31 + 4) = v49;
    _os_log_impl(&dword_1C5620000, v29, v30, "online bundle error, url:%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1C694B7A0](v32, -1, -1);
    MEMORY[0x1C694B7A0](v31, -1, -1);
  }

  return 0;
}

id sub_1C576AB40(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C584F630();

  return v5;
}

uint64_t sub_1C576ABB0()
{
  v1 = sub_1C584EA90();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  sub_1C584EA40();
  sub_1C584EA30();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v11 = sub_1C576D8C8(v9);
  if (!v11)
  {
    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v16 = sub_1C584F2C0();
    __swift_project_value_buffer(v16, qword_1EC18FA98);
    v17 = v0;
    v18 = sub_1C584F2A0();
    v19 = sub_1C584F9B0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v20 = 136315138;
      sub_1C576DCEC(&qword_1EC16D8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v21 = sub_1C584FD90();
      v23 = sub_1C5649518(v21, v22, v29);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_1C5620000, v18, v19, "local bundle error, url:%s", v20, 0xCu);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C694B7A0](v24, -1, -1);
      MEMORY[0x1C694B7A0](v20, -1, -1);
    }

    goto LABEL_12;
  }

  v12 = v11;
  if (!*(v11 + 16) || (v13 = sub_1C5645D34(0x6E6F6973726576, 0xE700000000000000), (v14 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_1C56465F8(*(v12 + 56) + 32 * v13, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v28;
LABEL_13:
  v10(v9, v1);
  return v15;
}

double sub_1C576AF70()
{
  swift_beginAccess();

  return result;
}

double sub_1C576B030(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id _MUWebBasedPlacecardResourceManager.init()()
{
  v0[OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle] = 1;
  v1 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL;
  if (qword_1EC174CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584EA90();
  v3 = __swift_project_value_buffer(v2, qword_1EC174CB8);
  v4 = *(v2 - 8);
  (*(v4 + 16))(&v0[v1], v3, v2);
  (*(v4 + 56))(&v0[OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames] = MEMORY[0x1E69E7CD0];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for _MUWebBasedPlacecardResourceManager(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1C576B360(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

Swift::Void __swiftcall _MUWebBasedPlacecardResourceManager.prepareResources()()
{
  v1 = v0;
  v2 = sub_1C584EA90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C584F580();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v12 = sub_1C584F2C0();
  __swift_project_value_buffer(v12, qword_1EC18FA98);
  v13 = sub_1C584F2A0();
  v14 = sub_1C584F990();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v7;
    v16 = v3;
    v17 = v2;
    v18 = v1;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_1C5620000, v13, v14, "Start to prepare Resources", v15, 2u);
    v20 = v19;
    v1 = v18;
    v2 = v17;
    v3 = v16;
    v7 = v33;
    MEMORY[0x1C694B7A0](v20, -1, -1);
  }

  v21 = [objc_opt_self() modernManager];
  if (v21)
  {
    v22 = v21;
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    (*(v8 + 104))(v11, *MEMORY[0x1E69E7FA0], v7);
    v23 = sub_1C584FA20();
    (*(v8 + 8))(v11, v7);
    [v22 addTileGroupObserver:v1 queue:v23];

    v24 = sub_1C5669F28();
    v25 = *v24;
    MUWebPlacecardBridgePool.take()();
    v27 = v26;

    if (v27)
    {
      if (qword_1EC174CE8 != -1)
      {
        swift_once();
      }

      (*((*MEMORY[0x1E69E7D40] & *qword_1EC174CF0) + 0x78))();
      sub_1C566B63C(v6);
      (*(v3 + 8))(v6, v2);
      v28 = *v24;
      v29 = v27;
      MUWebPlacecardBridgePool.release(_:)(v27);
    }

    else
    {
      v29 = sub_1C584F2A0();
      v30 = sub_1C584F9B0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1C5620000, v29, v30, "Failed to warm up a bridge, no bridge returned by pool.", v31, 2u);
        MEMORY[0x1C694B7A0](v31, -1, -1);
      }
    }

    sub_1C5768AD0(sub_1C576B878, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C576B878(uint64_t a1)
{
  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584F2C0();
  __swift_project_value_buffer(v2, qword_1EC18FA98);
  v3 = sub_1C584F2A0();
  v4 = sub_1C584F990();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5620000, v3, v4, "Download manifest completed!", v5, 2u);
    MEMORY[0x1C694B7A0](v5, -1, -1);
  }

  v6 = sub_1C584EA90();
  if ((*(*(v6 - 8) + 48))(a1, 1, v6) == 1)
  {
    oslog = sub_1C584F2A0();
    v7 = sub_1C584F9B0();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C5620000, oslog, v7, "Download manifest failed: empty url", v8, 2u);
      MEMORY[0x1C694B7A0](v8, -1, -1);
    }
  }
}

Swift::Void __swiftcall _MUWebBasedPlacecardResourceManager.removeBundle()()
{
  v78[1] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v77 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v73 - v6;
  v8 = sub_1C584EA90();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v73 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v73 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v73 - v24;
  v26 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v75 = ((*MEMORY[0x1E69E7D40] & *v0) + 152);
  v76 = v26;
  (v26)(v23);
  v27 = *(v9 + 48);
  if (v27(v7, 1, v8))
  {
    sub_1C5625230(v7, &unk_1EC16E660, &unk_1C58685F0);
    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v28 = sub_1C584F2C0();
    __swift_project_value_buffer(v28, qword_1EC18FA98);
    v29 = v0;
    v30 = sub_1C584F2A0();
    v31 = sub_1C584F9B0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78[0] = v74;
      *v32 = 136315138;
      v33 = v77;
      v76();
      if (v27(v33, 1, v8))
      {
        sub_1C5625230(v33, &unk_1EC16E660, &unk_1C58685F0);
        v34 = 0;
        v35 = 0xE000000000000000;
      }

      else
      {
        v67 = v17;
        (*(v9 + 16))(v17, v33, v8);
        sub_1C5625230(v33, &unk_1EC16E660, &unk_1C58685F0);
        v68 = sub_1C584EA60();
        v35 = v69;
        (*(v9 + 8))(v67, v8);
        v34 = v68;
      }

      v70 = sub_1C5649518(v34, v35, v78);

      *(v32 + 4) = v70;
      _os_log_impl(&dword_1C5620000, v30, v31, "Can't remove bundle because it's using built-in version or the directory is empty:%s", v32, 0xCu);
      v71 = v74;
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1C694B7A0](v71, -1, -1);
      MEMORY[0x1C694B7A0](v32, -1, -1);
    }
  }

  else
  {
    v77 = v13;
    v76 = *(v9 + 16);
    (v76)(v17, v7, v8);
    sub_1C5625230(v7, &unk_1EC16E660, &unk_1C58685F0);
    sub_1C584EA40();
    v36 = *(v9 + 8);
    v36(v17, v8);
    (*(v9 + 32))(v25, v21, v8);
    v37 = [objc_opt_self() defaultManager];
    v38 = sub_1C584EA20();
    v78[0] = 0;
    v39 = [v37 removeItemAtURL:v38 error:v78];

    v40 = v25;
    if (v39)
    {
      v75 = v36;
      v41 = qword_1EC17B090;
      v42 = v78[0];
      if (v41 != -1)
      {
        swift_once();
      }

      v43 = sub_1C584F2C0();
      __swift_project_value_buffer(v43, qword_1EC18FA98);
      v44 = v77;
      (v76)(v77, v25, v8);
      v45 = sub_1C584F2A0();
      v46 = sub_1C584F990();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v78[0] = v48;
        *v47 = 136315138;
        v49 = sub_1C584EA60();
        v51 = v50;
        v52 = v44;
        v53 = v75;
        v75(v52, v8);
        v54 = sub_1C5649518(v49, v51, v78);

        *(v47 + 4) = v54;
        _os_log_impl(&dword_1C5620000, v45, v46, "Removed bundle in %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1C694B7A0](v48, -1, -1);
        MEMORY[0x1C694B7A0](v47, -1, -1);
      }

      else
      {

        v72 = v44;
        v53 = v75;
        v75(v72, v8);
      }

      v53(v25, v8);
    }

    else
    {
      v55 = v78[0];
      v56 = sub_1C584E950();

      swift_willThrow();
      if (qword_1EC17B090 != -1)
      {
        swift_once();
      }

      v57 = sub_1C584F2C0();
      __swift_project_value_buffer(v57, qword_1EC18FA98);
      v58 = v56;
      v59 = sub_1C584F2A0();
      v60 = sub_1C584F9B0();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v40;
        v63 = v36;
        v64 = swift_slowAlloc();
        *v61 = 138412290;
        v65 = v56;
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v66;
        *v64 = v66;
        _os_log_impl(&dword_1C5620000, v59, v60, "Remove bundle error: %@", v61, 0xCu);
        sub_1C5625230(v64, &unk_1EC16E670, &qword_1C586A030);
        MEMORY[0x1C694B7A0](v64, -1, -1);
        MEMORY[0x1C694B7A0](v61, -1, -1);

        v63(v62, v8);
      }

      else
      {

        v36(v40, v8);
      }
    }
  }
}

void sub_1C576C354(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v70 = a6;
  v71 = a5;
  v75 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v65 - v11;
  v13 = sub_1C584EA90();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = v65 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v65 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1 && !a3)
    {
      v69 = Strong;
      v72 = 1;
      if (a2 && a2[2])
      {
        v37 = *(v14 + 16);
        v38 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v65[1] = (v14 + 16);
        v66 = v37;
        v37(v25, v38, v13);
        v39 = objc_opt_self();

        v68 = [v39 defaultManager];
        sub_1C584EA60();
        v40 = sub_1C584F630();

        v41 = v68;
        LODWORD(v67) = [v68 fileExistsAtPath:v40 isDirectory:&v72];

        if (v67 && v72 == 1)
        {
          sub_1C584EA30();
          sub_1C584EA30();
          v67 = *(v14 + 8);
          v68 = (v14 + 8);
          v67(v18, v13);
          (*(v14 + 40))(v25, v22, v13);
          if (qword_1EC17B090 != -1)
          {
            swift_once();
          }

          v42 = sub_1C584F2C0();
          __swift_project_value_buffer(v42, qword_1EC18FA98);
          v43 = sub_1C584F2A0();
          v44 = sub_1C584F990();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v65[0] = swift_slowAlloc();
            v74[0] = v65[0];
            *v45 = 136315138;
            swift_beginAccess();
            sub_1C576DCEC(&qword_1EC16D8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v46 = sub_1C584FD90();
            v48 = sub_1C5649518(v46, v47, v74);

            *(v45 + 4) = v48;
            _os_log_impl(&dword_1C5620000, v43, v44, "Directory URL of unpacked web bundle: %s", v45, 0xCu);
            v49 = v65[0];
            __swift_destroy_boxed_opaque_existential_1(v65[0]);
            MEMORY[0x1C694B7A0](v49, -1, -1);
            MEMORY[0x1C694B7A0](v45, -1, -1);
          }

          v50 = v66;
          swift_beginAccess();
          v50(v12, v25, v13);
          v51 = *(v14 + 56);
          v51(v12, 0, 1, v13);
          v52 = v69;
          v53 = MEMORY[0x1E69E7D40];
          (*((*MEMORY[0x1E69E7D40] & *v69) + 0xA0))(v12);
          v54 = sub_1C576DD80(a1);

          (*((*v53 & *v52) + 0xC8))(v54);
          v55 = v71;
          if (v71)
          {
            v66(v12, v25, v13);
            v51(v12, 0, 1, v13);
            v55(v12);

            sub_1C5625230(v12, &unk_1EC16E660, &unk_1C58685F0);
          }

          else
          {
          }

          v67(v25, v13);
          return;
        }

        (*(v14 + 8))(v25, v13);
      }

      if (qword_1EC17B090 != -1)
      {
        swift_once();
      }

      v56 = sub_1C584F2C0();
      __swift_project_value_buffer(v56, qword_1EC18FA98);

      v57 = sub_1C584F2A0();
      v58 = sub_1C584F9B0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v73[0] = v60;
        *v59 = 136315394;
        v74[0] = a2;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1710A0, &qword_1C5879470);
        v61 = sub_1C584F680();
        v63 = sub_1C5649518(v61, v62, v73);

        *(v59 + 4) = v63;
        *(v59 + 12) = 1024;
        swift_beginAccess();
        *(v59 + 14) = v72;
        _os_log_impl(&dword_1C5620000, v57, v58, "Received incorrect path:%s, isDirectory:%{BOOL}d", v59, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1C694B7A0](v60, -1, -1);
        MEMORY[0x1C694B7A0](v59, -1, -1);
      }

      v64 = v71;
      if (!v71)
      {

        return;
      }

      (*(v14 + 56))(v12, 1, 1, v13);
      v64(v12);

      goto LABEL_14;
    }
  }

  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v27 = sub_1C584F2C0();
  __swift_project_value_buffer(v27, qword_1EC18FA98);
  v28 = a3;
  v29 = sub_1C584F2A0();
  v30 = sub_1C584F9B0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    if (a3)
    {
      v33 = a3;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = v34;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    *(v31 + 4) = v34;
    *v32 = v35;
    _os_log_impl(&dword_1C5620000, v29, v30, "Error fetching signed resource from GeoServices:%@)", v31, 0xCu);
    sub_1C5625230(v32, &unk_1EC16E670, &qword_1C586A030);
    MEMORY[0x1C694B7A0](v32, -1, -1);
    MEMORY[0x1C694B7A0](v31, -1, -1);
  }

  v36 = v71;
  if (v71)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v36(v12);
LABEL_14:
    sub_1C5625230(v12, &unk_1EC16E660, &unk_1C58685F0);
  }
}

double sub_1C576CC7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1C584F770();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    sub_1C584EA90();
    v5 = sub_1C584F770();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);

  return result;
}

uint64_t sub_1C576CD44()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18FA98);
  __swift_project_value_buffer(v0, qword_1EC18FA98);
  sub_1C5715FD8();
  swift_beginAccess();
  type metadata accessor for _MUWebBasedPlacecardResourceManager(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1710B0, &qword_1C5879478);
  sub_1C584F680();
  return sub_1C584F2B0();
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1C576CE4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1C584FEA0();

    sub_1C584F6C0();
    v16 = sub_1C584FEF0();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1C584FDC0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C576D004(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C584FEA0();
  sub_1C584F6C0();
  v8 = sub_1C584FEF0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C584FDC0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C576D3B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_1C576D154(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171080, &unk_1C5879460);
  v4 = sub_1C584FC10();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C584FEA0();
      sub_1C584F6C0();
      v21 = sub_1C584FEF0();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C576D3B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C576D154(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1C576D534();
      goto LABEL_16;
    }

    sub_1C576D690(v8 + 1);
  }

  v10 = *v4;
  sub_1C584FEA0();
  sub_1C584F6C0();
  v11 = sub_1C584FEF0();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1C584FDC0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1C584FDF0();
  __break(1u);
}

void sub_1C576D534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171080, &unk_1C5879460);
  v2 = *v0;
  v3 = sub_1C584FC00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C576D690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171080, &unk_1C5879460);
  v4 = sub_1C584FC10();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C584FEA0();

      sub_1C584F6C0();
      v20 = sub_1C584FEF0();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_1C576D8C8(uint64_t a1)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1C584EA90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C584EAA0();
  v19 = v18;
  v20 = objc_opt_self();
  v21 = sub_1C584EAC0();
  v27[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v27];

  if (v22)
  {
    v23 = v27[0];
    sub_1C584FB30();
    sub_1C566DD84(v17, v19);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC171090, &unk_1C58792C0);
    if (swift_dynamicCast())
    {
      return v26[1];
    }
  }

  else
  {
    v24 = v27[0];
    v25 = sub_1C584E950();

    swift_willThrow();
    sub_1C566DD84(v17, v19);
  }

  if (qword_1EC17B090 != -1)
  {
    swift_once();
  }

  v7 = sub_1C584F2C0();
  __swift_project_value_buffer(v7, qword_1EC18FA98);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_1C584F2A0();
  v9 = sub_1C584F9B0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27[0] = v11;
    *v10 = 136315138;
    sub_1C576DCEC(&qword_1EC16D8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v12 = sub_1C584FD90();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_1C5649518(v12, v14, v27);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C5620000, v8, v9, "Failed to load manifest from %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1C694B7A0](v11, -1, -1);
    MEMORY[0x1C694B7A0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_1C576DC7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C576DCEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for _MUWebBasedPlacecardResourceManager(uint64_t a1)
{
  result = qword_1EC174CD8;
  if (!qword_1EC174CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C576DD80(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C6949FF0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C576D004(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void _s6MapsUI35_MUWebBasedPlacecardResourceManagerC016resourceManifestG24DidChangeActiveTileGroupyySo011GEOResourceiG0CSgF_0()
{
  v0 = [objc_opt_self() modernManager];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 activeTileGroup];

    if (v2)
    {
      v3 = [v2 explicitResources];

      if (v3)
      {
        sub_1C5626E40(0, &qword_1EC16D048, 0x1E69A2460);
        sub_1C584F760();
      }
    }

    if (qword_1EC17B090 != -1)
    {
      swift_once();
    }

    v4 = sub_1C584F2C0();
    __swift_project_value_buffer(v4, qword_1EC18FA98);
    oslog = sub_1C584F2A0();
    v5 = sub_1C584F9B0();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C5620000, oslog, v5, "resourceManifestManager did change but there is no explicit resource", v6, 2u);
      MEMORY[0x1C694B7A0](v6, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1C576E388(uint64_t a1)
{
  sub_1C584EA90();
  if (v1 <= 0x3F)
  {
    sub_1C575B7AC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C576E5F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1C584EA20();
  (*(v2 + 16))(v2, v3);
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_5Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C576E77C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v161 = &v150 - v6;
  v160 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v159 = *(v160 - 8);
  v8 = MEMORY[0x1EEE9AC00](v160, v7);
  v154 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v155 = &v150 - v11;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v153 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v151 = &v150 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v152 = &v150 - v20;
  v21 = type metadata accessor for MUUserPreferences(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v158 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v157 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v156 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v163 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v162 = &v150 - v35;
  v36 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v164 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MULocation(0);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v150 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C584ECE0();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v150 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5696E34(a1);
  v52 = sub_1C584EC00();
  if (v52[2])
  {
    v54 = v52[4];
    v53 = v52[5];
  }

  else
  {

    sub_1C584EC80();
    v54 = sub_1C584EB70();
    v53 = v55;
    (*(v48 + 8))(v51, v47);
  }

  sub_1C5697BE0(v54, v53);
  v56 = [objc_opt_self() sharedConfiguration];
  v57 = v164;
  if (!v56)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v58 = v56;
  v59 = [v56 countryCode];

  if (!v59)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v60 = sub_1C584F660();
  v62 = v61;

  sub_1C5698D8C(v60, v62);
  sub_1C569643C(v46);
  v63 = [objc_opt_self() sharedLocationManager];
  if (!v63)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v64 = v63;
  v65 = [v63 currentLocation];

  if (v65)
  {
    v66 = [v65 latLng];

    if (v66)
    {
      [v66 lat];
      *&v67 = v67;
      sub_1C569686C(*&v67);
      [v66 lng];
      *&v68 = v68;
      sub_1C56968BC(*&v68);
    }
  }

  sub_1C5697C20(v46);
  sub_1C576F700(v42);
  sub_1C5698038(v42);
  v69 = [*(v2 + 32) userInterfaceIdiom];
  v70 = v69 + 1;
  if (v69 + 1 >= 8 || ((0xDFu >> v70) & 1) == 0)
  {
    goto LABEL_92;
  }

  sub_1C5697D8C(0x403010000020100uLL >> (8 * v70));
  v71 = [objc_opt_self() sharedPlatform];
  if (!v71)
  {
    goto LABEL_86;
  }

  v72 = v71;
  v73 = [v71 osAndBuildVersion];

  if (!v73)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v74 = sub_1C584F660();
  v76 = v75;

  sub_1C5697DD4(v74, v76);
  v77 = objc_opt_self();
  if ([v77 isMapsProcess])
  {
    v78 = 0;
  }

  else if ([v77 isSafariProcess])
  {
    v78 = 1;
  }

  else if ([v77 isSiriProcess])
  {
    v78 = 2;
  }

  else if ([v77 isSpotlightProcess])
  {
    v78 = 3;
  }

  else
  {
    v78 = 0;
  }

  sub_1C5697E1C(v78);
  v79 = [objc_opt_self() mainBundle];
  v80 = [v79 bundleIdentifier];

  if (v80)
  {
    v81 = sub_1C584F660();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0xE000000000000000;
  }

  sub_1C5698DD4(v81, v83);
  v84 = *v2;
  v85 = *(v2 + 8);

  sub_1C5697E64(v84, v85);
  v86 = *(v2 + 328);
  if (!v86 || (v87 = [v86 formattedAddressLines]) == 0 || (*&v169 = 0, v88 = v87, sub_1C584F760(), v88, (v89 = v169) == 0))
  {

    v89 = MEMORY[0x1E69E7CC0];
  }

  sub_1C5697EAC(v89);
  if (*(v2 + 24))
  {
    v90 = *(v2 + 16);
    v91 = *(v2 + 24);
  }

  else
  {
    v90 = 0;
    v91 = 0xE000000000000000;
  }

  sub_1C5697FB8(v90, v91);
  if (*(v2 + 176))
  {
    v92 = *(v2 + 168);
    v93 = *(v2 + 176);
  }

  else
  {
    v92 = 0;
    v93 = 0xE000000000000000;
  }

  sub_1C56981A4(v92, v93);
  v94 = *(v2 + 184);
  v95 = MEMORY[0x1E69E7CC0];
  if (v94)
  {
    v96 = [v94 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710F8, &qword_1C58795B0);
    v97 = sub_1C584F770();

    if (!(v97 >> 62))
    {
      goto LABEL_38;
    }

LABEL_44:
    if (sub_1C584FB90())
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  v97 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    if ((v97 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x1C694A320](0, v97);
      goto LABEL_42;
    }

    if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v98 = *(v97 + 32);
LABEL_42:
      v99 = v98;

      v100 = [objc_allocWithZone(MUContactLabeledValue) initWithContactLabeledValue:v99 type:1];
      v101 = [v100 valueString];
      v102 = sub_1C584F660();
      v104 = v103;

      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_45:

  v102 = 0;
  v104 = 0xE000000000000000;
LABEL_46:
  sub_1C56981EC(v102, v104);
  sub_1C5698234(*(v2 + 193));
  sub_1C5698240(*(v2 + 194));
  sub_1C56982F0(*(v2 + 195));
  sub_1C56982FC(*(v2 + 196));
  sub_1C5698308(v57);
  if (*(v2 + 208))
  {
    v105 = *(v2 + 200);
    v106 = *(v2 + 208);
  }

  else
  {
    v105 = 0;
    v106 = 0xE000000000000000;
  }

  sub_1C569A6AC(v105, v106);
  v107 = *(v2 + 216);
  if (*(v2 + 220))
  {
    v107 = 0.0;
  }

  sub_1C569A6C4(v107);
  if (*(v2 + 232))
  {
    v108 = *(v2 + 224);
    v109 = *(v2 + 232);
  }

  else
  {
    v108 = 0;
    v109 = 0xE000000000000000;
  }

  sub_1C569A6FC(v108, v109);
  v110 = *(v2 + 240);
  if (*(v2 + 244))
  {
    v110 = 0.0;
  }

  sub_1C569A754(v110);
  sub_1C5698370(v57);
  v111 = v163;
  sub_1C56984DC(v163);
  v112 = *(v2 + 264);
  v169 = *(v2 + 248);
  v170 = v112;
  v113 = v169;
  sub_1C576E720(&v169, v168);
  sub_1C569C20C(v113);
  sub_1C569C17C(SBYTE1(v169));
  sub_1C569C14C(SBYTE2(v169));
  sub_1C569C1AC(SBYTE3(v169));
  sub_1C569C1DC(SBYTE4(v169));
  sub_1C569C23C(*(&v169 + 2));
  sub_1C569C2D8(*(&v169 + 3));
  if (*(&v170 + 1))
  {
    sub_1C569C274(v170, *(&v170 + 1));
  }

  v114 = v111;
  v115 = v162;
  sub_1C577355C(v114, v162, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C5698564(v115);
  v116 = *(v2 + 288);
  v117 = *(v2 + 296);

  sub_1C56986D0(v116, v117);
  v118 = [objc_opt_self() modernManager];
  if (!v118)
  {
    goto LABEL_88;
  }

  v119 = v118;
  v120 = [v118 activeTileGroup];

  if (!v120)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v121 = [v120 attributions];

  if (!v121)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v122 = [v121 firstObject];

  if (v122)
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v166 = 0u;
    v167 = 0u;
  }

  v168[0] = v166;
  v168[1] = v167;
  if (!*(&v167 + 1))
  {
    sub_1C5625230(v168, &qword_1EC16E790, &unk_1C586A110);
    goto LABEL_69;
  }

  sub_1C5772E5C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:
    v133 = 0;
    v132 = 0xE000000000000000;
    goto LABEL_70;
  }

  v123 = v165;
  v124 = [v165 data];
  if (!v124)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    result = sub_1C584FD00();
    __break(1u);
    return result;
  }

  v125 = v124;
  v126 = sub_1C584EAE0();
  v128 = v127;

  v129 = sub_1C584EAD0();
  v131 = v130;
  sub_1C566DD84(v126, v128);

  v132 = v131;
  v133 = v129;
LABEL_70:
  sub_1C5698920(v133, v132);
  if (*(v2 + 304))
  {
    v134 = *(v2 + 304);
  }

  else
  {
    v134 = v95;
  }

  sub_1C5698968(v134);
  v135 = v156;
  sub_1C576FC94(v156);
  sub_1C56989E8(v135);
  v136 = sub_1C5770178();
  sub_1C5698D44(v136);
  if (*(v2 + 344))
  {
    v137 = 0;
  }

  else
  {
    v137 = *(v2 + 336);
  }

  v138 = v157;
  sub_1C5770BD0(v137, v157);
  v139 = v158;
  sub_1C569C814(v158);
  sub_1C57734FC(v138, type metadata accessor for WebPlacecardBridgeReply.MUUserPreferencesArgs);
  sub_1C5698E1C(v139);
  sub_1C5698F88(*(v2 + 345));
  v140 = sub_1C57703B8();
  sub_1C5698F94(v140);
  v141 = *(v2 + 320);
  if (v141 != 1)
  {
    v142 = v151;
    sub_1C5774BBC(*(v2 + 312), v141, v151);
    v143 = v152;
    sub_1C577355C(v142, v152, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
    sub_1C569C544(*(v2 + 197));
    v144 = v153;
    sub_1C5773494(v143, v153, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
    sub_1C5698BD8(v144);
    sub_1C57734FC(v143, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  }

  v145 = v161;
  sub_1C5770734(v161);
  if ((*(v159 + 48))(v145, 1, v160) == 1)
  {
    return sub_1C5625230(v145, &qword_1EC16EC88, &qword_1C586B110);
  }

  v147 = v145;
  v148 = v155;
  sub_1C577355C(v147, v155, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  v149 = v154;
  sub_1C5773494(v148, v154, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  sub_1C56987B4(v149);
  return sub_1C57734FC(v148, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
}

void sub_1C576F700(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v57 - v29;
  sub_1C5698000(a1);
  sub_1C569997C(*(v1 + 48));
  v64 = v1;
  v31 = *(v1 + 40);
  v61 = v7;
  if (v31)
  {
    v32 = sub_1C5772AF0(v31);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  sub_1C5699A18(v32);
  sub_1C5699AB8(v27);
  v33 = v64;
  v34 = v64[9];
  if (v34)
  {
    v35 = v64[8];
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v64[9];
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v60 = v64[9];

  v62 = v36;
  v63 = v35;
  sub_1C569A464(v35, v36);
  v37 = v33[7];
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v37))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    v43 = sub_1C584FB90();
    goto LABEL_21;
  }

  sub_1C569A47C(v37);
  sub_1C577355C(v27, v30, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5699B24(v30);
  v33 = v64;
  if (v64[35] >= 3uLL)
  {
    v38 = 0;
  }

  else
  {
    v38 = v64[35];
  }

  sub_1C569A100(v38);
  v39 = v33[14];
  if (v39)
  {
    v40 = v39;
    sub_1C57716F4(v40, v22);
  }

  else
  {
    sub_1C5699E70(v22);
  }

  v30 = v61;
  sub_1C5699F04(v22);
  v41 = *(v33 + 96);
  sub_1C5699C90(v19);
  sub_1C569A55C(v41);
  sub_1C5699F04(v19);
  v42 = *(v33 + 97);
  sub_1C5699C90(v19);
  sub_1C569A5BC(v42);
  sub_1C5699F04(v19);
  swift_bridgeObjectRetain_n();
  sub_1C5699C90(v19);
  sub_1C569A544(v63, v62);
  sub_1C5699F04(v19);
  v19 = v33[13];
  if (!v19)
  {
    goto LABEL_32;
  }

  if (v19 >> 62)
  {
    goto LABEL_37;
  }

  v43 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
  v44 = MEMORY[0x1E69E7CC0];
  if (v43)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1C5734448(0, v43 & ~(v43 >> 63), 0);
    if (v43 < 0)
    {
      __break(1u);
      return;
    }

    v58 = v10;
    v59 = a1;
    v45 = 0;
    v44 = v66;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1C694A320](v45, v19);
      }

      else
      {
        v46 = *(v19 + 8 * v45 + 32);
      }

      v47 = v46;
      sub_1C569A368(v14);
      v48 = [v47 category];
      v49 = sub_1C584F660();
      v51 = v50;

      sub_1C569A318(v49, v51);
      v52 = [v47 value];
      LODWORD(v48) = sub_1C584FE60();

      sub_1C569A330(v48);
      v66 = v44;
      v54 = *(v44 + 16);
      v53 = *(v44 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1C5734448((v53 > 1), v54 + 1, 1);
        v44 = v66;
      }

      ++v45;
      *(v44 + 16) = v54 + 1;
      sub_1C577355C(v14, v44 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v54, type metadata accessor for WebPlacecardBridgeReply.MUArpRating);
    }

    while (v43 != v45);
    v10 = v58;
    v30 = v61;
    v33 = v64;
  }

  sub_1C569A070(v44);
LABEL_32:
  v55 = v33[11];
  if (v55)
  {
    v56 = v33[10];

    sub_1C569A148(v10);
    sub_1C569A67C(v56, v55);
    sub_1C569A694(v63, v62);
    sub_1C5773494(v10, v30, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
    sub_1C569A1AC(v30);
    sub_1C57734FC(v10, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  }

  else
  {
  }
}

id sub_1C576FC94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MULocation(0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v60 - v14;
  v16 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v60 - v22;
  v24 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56989B0(v27);
  v28 = *v1;
  v29 = v2[1];

  sub_1C5698FDC(v28, v29);
  v30 = v2[16];
  v31 = v2[17];

  sub_1C5699178(v30, v31);
  sub_1C56990DC(*(v2 + 120));
  sub_1C569921C(v20);
  sub_1C56997FC(*(v2 + 121));
  sub_1C569982C(*(v2 + 122));
  sub_1C56998BC(*(v2 + 123));
  sub_1C569988C(*(v2 + 124));
  v32 = _MKRAPIsAvailable();
  sub_1C569985C(v32);
  result = [objc_opt_self() sharedLocationManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = [result isAuthorizedForPreciseLocation];

  sub_1C56998EC(v35);
  sub_1C577355C(v20, v23, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C569927C(v23);
  v36 = v2[41];
  if (v36)
  {
    v60 = v7;
    v37 = [v36 formattedAddressLines];
    if (v37 && (v61 = 0, v38 = v37, sub_1C584F760(), v38, (v39 = v61) != 0))
    {
      v40 = a1;
    }

    else
    {
      v40 = a1;

      v39 = MEMORY[0x1E69E7CC0];
    }

    sub_1C5699724(v39);
    v41 = [v36 structuredAddress];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 fullThoroughfare];

      if (v43)
      {
        v44 = sub_1C584F660();
        v46 = v45;

        v47 = v46;
        v41 = v44;
LABEL_13:
        sub_1C569976C(v41, v47);
        v49 = [v36 structuredAddress];
        if (v49)
        {
          v50 = v49;
          v51 = [v49 locality];

          a1 = v40;
          if (v51)
          {
            v52 = sub_1C584F660();
            v48 = v53;

            v49 = v52;
          }

          else
          {
            v49 = 0;
            v48 = 0xE000000000000000;
          }
        }

        else
        {
          v48 = 0xE000000000000000;
          a1 = v40;
        }

        v7 = v60;
        goto LABEL_19;
      }

      v41 = 0;
    }

    v47 = 0xE000000000000000;
    goto LABEL_13;
  }

  sub_1C5699724(MEMORY[0x1E69E7CC0]);
  v48 = 0xE000000000000000;
  sub_1C569976C(0, 0xE000000000000000);
  v49 = 0;
LABEL_19:
  sub_1C56997B4(v49, v48);
  if ((v2[20] & 1) == 0)
  {
    v55 = *(v2 + 18);
    v54 = *(v2 + 19);
    sub_1C569643C(v15);
    v56 = v55;
    sub_1C569686C(v56);
    v57 = v54;
    sub_1C56968BC(v57);
    sub_1C5773494(v15, v12, type metadata accessor for MULocation);
    sub_1C56995B8(v12);
    sub_1C57734FC(v15, type metadata accessor for MULocation);
  }

  v58 = v2[23];
  if (v58)
  {
    v59 = v58;
    sub_1C57718F0(v59, v7);
    sub_1C569944C(v7);
  }

  return sub_1C577355C(v27, a1, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
}

void *sub_1C5770178()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = sub_1C5654ED0();
  sub_1C569C700(v8);
  sub_1C569C6D0(0x6D756972616C6F53, 0xEF64656C62616E45);
  sub_1C569C6E8(0x6E4561726F727541, 0xED000064656C6261);
  *v8 = 1;
  sub_1C5773494(v8, v5, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1C5772914(0, v9[2] + 1, 1, v9, &qword_1EC16DFB8, &qword_1C58795A0, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1C5772914((v10 > 1), v11 + 1, 1, v9, &qword_1EC16DFB8, &qword_1C58795A0, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  }

  sub_1C57734FC(v8, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  v9[2] = v11 + 1;
  sub_1C577355C(v5, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag);
  return v9;
}

void *sub_1C57703B8()
{
  v1 = v0;
  v2 = type metadata accessor for MUSendToDevice(0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v37 - v10;
  v12 = *(v1 + 352);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v36 = *(v1 + 352);
  result = sub_1C584FB90();
  v12 = v36;
  v13 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if (v13 >= 1)
  {
    v14 = 0;
    v37 = v12 & 0xC000000000000001;
    v15 = MEMORY[0x1E69E7CC0];
    v38 = v12;
    do
    {
      if (v37)
      {
        v16 = MEMORY[0x1C694A320](v14);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      sub_1C5696DD8(v11);
      v18 = [v17 name];
      v19 = sub_1C584F660();
      v21 = v20;

      sub_1C5696D30(v19, v21);
      v22 = [v17 symbolName];
      v23 = sub_1C584F660();
      v25 = v24;

      sub_1C5696D60(v23, v25);
      v26 = [v17 deviceID];
      v27 = sub_1C584F660();
      v29 = v28;

      sub_1C5696D90(v27, v29);
      v30 = [v17 model];
      v31 = sub_1C584F660();
      v33 = v32;

      sub_1C5696DC0(v31, v33);
      sub_1C5773494(v11, v7, type metadata accessor for MUSendToDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1C5772914(0, v15[2] + 1, 1, v15, &qword_1EC1710E8, &qword_1C5879598, type metadata accessor for MUSendToDevice);
      }

      v35 = v15[2];
      v34 = v15[3];
      if (v35 >= v34 >> 1)
      {
        v15 = sub_1C5772914((v34 > 1), v35 + 1, 1, v15, &qword_1EC1710E8, &qword_1C5879598, type metadata accessor for MUSendToDevice);
      }

      ++v14;

      sub_1C57734FC(v11, type metadata accessor for MUSendToDevice);
      v15[2] = v35 + 1;
      sub_1C577355C(v7, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35, type metadata accessor for MUSendToDevice);
      v12 = v38;
    }

    while (v13 != v14);
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5770734@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs(0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5698718(v19);
  v20 = sub_1C5773014();
  v21 = v20[2];

  if (v21)
  {
    *v19 = v20;
  }

  if (GEOConfigGetBOOL())
  {
    v22 = GEOConfigGetString();
    if (v22)
    {
      v23 = v22;
      v24 = sub_1C584F660();
      v35 = v7;
      v25 = v15;
      v26 = a1;
      v28 = v27;

      sub_1C569C310(v11);
      v29 = v28;
      a1 = v26;
      v15 = v25;
      v30 = v1;
      sub_1C569C470(v24, v29);
      sub_1C577355C(v11, v14, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
      v31 = v35;
      sub_1C5773494(v14, v35, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
      sub_1C569C328(v31);
      sub_1C57734FC(v14, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUAxIdArgs);
      if ((*(v30 + 360) & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  if (*(v1 + 360))
  {
LABEL_8:
    sub_1C569C3E0(1);
    goto LABEL_10;
  }

  if (!v21)
  {
    v32 = 1;
    goto LABEL_11;
  }

LABEL_10:
  sub_1C5773494(v19, a1, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  v32 = 0;
LABEL_11:
  (*(v16 + 56))(a1, v32, 1, v15);
  return sub_1C57734FC(v19, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
}

__n128 sub_1C5770A1C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, char a18, char a19, char a20, char a21, __int128 a22, uint64_t a23, uint64_t a24, char a25, __int128 a26, uint64_t a27, char a28, char a29, char a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, char a37, uint64_t a38, uint64_t a39, int a40, char a41, __int128 *a42, __int128 a43, __int128 a44, __int128 a45, uint64_t a46, uint64_t a47, char a48, char a49, uint64_t a50, char a51)
{
  v51 = *a42;
  v52 = a42[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 97) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17;
  *(a9 + 121) = a18;
  *(a9 + 122) = a19;
  *(a9 + 123) = a20;
  *(a9 + 124) = a21;
  *(a9 + 144) = a23;
  *(a9 + 152) = a24;
  *(a9 + 160) = a25 & 1;
  *(a9 + 184) = a27;
  *(a9 + 192) = a28;
  *(a9 + 193) = a29;
  *(a9 + 194) = a30;
  *(a9 + 195) = a31;
  *(a9 + 196) = a32;
  *(a9 + 197) = a33;
  *(a9 + 200) = a34;
  *(a9 + 208) = a35;
  *(a9 + 216) = a36;
  *(a9 + 220) = a37 & 1;
  *(a9 + 224) = a38;
  *&v54[3] = v51;
  *&v54[19] = v52;
  *(a9 + 232) = a39;
  *(a9 + 240) = a40;
  *(a9 + 244) = a41 & 1;
  *(a9 + 261) = *&v54[16];
  *(a9 + 276) = HIDWORD(v52);
  *(a9 + 280) = a43;
  *(a9 + 296) = a44;
  *(a9 + 328) = a46;
  *(a9 + 336) = a47;
  *(a9 + 344) = a48 & 1;
  *(a9 + 345) = a49;
  *(a9 + 352) = a50;
  *(a9 + 360) = a51;
  result = *v54;
  *(a9 + 64) = a10;
  *(a9 + 128) = a22;
  *(a9 + 168) = a26;
  *(a9 + 245) = *v54;
  *(a9 + 312) = a45;
  return result;
}

id sub_1C5770BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v3 = sub_1C584ECC0();
  v91 = *(v3 - 8);
  v92 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v86 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v93 = &v82 - v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v97 = &v82 - v11;
  v12 = sub_1C584ED50();
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v87 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C584EBE0();
  v90 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v82 - v21;
  v23 = sub_1C584ECE0();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v85 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v82 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710C0, &qword_1C5879480);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v38 = &v82 - v37;
  v39 = type metadata accessor for MUUserPreferences(0);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v82 = &v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v82 - v44;
  v84 = a2;
  sub_1C569BD28(a2);
  v96 = v45;
  sub_1C5696CA0(v45);
  sub_1C584EC80();
  sub_1C584EC70();
  v46 = v23;
  v94 = *(v24 + 8);
  v95 = v24 + 8;
  v94(v34, v23);
  v47 = sub_1C584EC60();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v38, 1, v47) == 1)
  {
    sub_1C5625230(v38, &qword_1EC1710C0, &qword_1C5879480);
    v49 = 0;
    v50 = 0xE000000000000000;
  }

  else
  {
    v51 = sub_1C584EC50();
    v53 = v52;
    (*(v48 + 8))(v38, v47);
    v50 = v53;
    v49 = v51;
  }

  sub_1C5696994(v49, v50);
  sub_1C584EC80();
  sub_1C584EBF0();
  v54 = v31;
  v55 = v46;
  v94(v54, v46);
  sub_1C584EBD0();
  sub_1C5772EA8(&qword_1EC1710C8, MEMORY[0x1E6969660], MEMORY[0x1E6969668]);
  v56 = sub_1C584F620();
  v57 = *(v90 + 8);
  v57(v19, v15);
  v58 = v92;
  if (v56)
  {
    v57(v22, v15);
    v59 = 1;
  }

  else
  {
    sub_1C584EBC0();
    v60 = sub_1C584F620();
    v57(v19, v15);
    if (v60)
    {
      v57(v22, v15);
      v59 = 2;
    }

    else
    {
      sub_1C584EBB0();
      v61 = sub_1C584F620();
      v57(v19, v15);
      v57(v22, v15);
      if (v61)
      {
        v59 = 3;
      }

      else
      {
        v59 = 0;
      }
    }
  }

  sub_1C56969AC(v59);
  result = [objc_opt_self() currentLocale];
  v63 = v91;
  if (!result)
  {
    goto LABEL_54;
  }

  v64 = result;
  v65 = sub_1C584F630();
  v66 = [v64 objectForKey_];

  if (v66)
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v102 = v100;
  v103 = v101;
  if (*(&v101 + 1))
  {
    if (swift_dynamicCast())
    {
      v67 = v99;
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    sub_1C5625230(&v102, &qword_1EC16E790, &unk_1C586A110);
    v67 = 0;
  }

  if ([v64 objectForKey_])
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v102 = v100;
  v103 = v101;
  if (*(&v101 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v98)
      {
        LOBYTE(v68) = 1;
      }

      else
      {
        LOBYTE(v68) = 2;
      }

      if (!v67)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  else
  {
    sub_1C5625230(&v102, &qword_1EC16E790, &unk_1C586A110);
  }

  LOBYTE(v68) = 2;
  if (!v67)
  {
    goto LABEL_34;
  }

LABEL_32:
  sub_1C584F690();

  v69 = sub_1C584FD70();

  if (v69 <= 2)
  {
    v68 = 0x201u >> (8 * v69);
  }

LABEL_34:
  sub_1C56969DC(v68);
  v70 = v87;
  sub_1C584ED30();
  v71 = sub_1C584ECF0();
  result = (*(v88 + 8))(v70, v89);
  if (v71 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v71 > 0x7FFFFFFF)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  sub_1C5696A48(v71);
  v72 = v85;
  sub_1C584EC80();
  sub_1C584ECD0();
  v94(v72, v55);
  v73 = *(v63 + 104);
  v73(v93, *MEMORY[0x1E6969750], v58);
  sub_1C5772EA8(&qword_1EC1710D0, MEMORY[0x1E6969760], MEMORY[0x1E6969768]);
  sub_1C584F730();
  sub_1C584F730();
  if (v102 == v100)
  {
    v74 = 1;
  }

  else
  {
    v74 = sub_1C584FDC0();
  }

  v75 = *(v63 + 8);
  v75(v93, v58);

  if (v74)
  {
    v76 = 1;
    v77 = v83;
    v78 = v82;
  }

  else
  {
    v73(v86, *MEMORY[0x1E6969758], v58);
    sub_1C584F730();
    sub_1C584F730();
    if (v102 == v100)
    {
      v76 = 1;
    }

    else
    {
      v76 = sub_1C584FDC0();
    }

    v77 = v83;
    v78 = v82;
    v75(v86, v58);
  }

  v79 = v96;
  sub_1C5696A80(v76 & 1);
  if (v77 == 2)
  {
    v80 = 3;
  }

  else
  {
    v80 = 1;
  }

  if (v77 == 1)
  {
    v81 = 2;
  }

  else
  {
    v81 = v80;
  }

  sub_1C5696AB0(v81);
  sub_1C5773494(v79, v78, type metadata accessor for MUUserPreferences);
  sub_1C569C9B4(v78);

  v75(v97, v58);
  return sub_1C57734FC(v79, type metadata accessor for MUUserPreferences);
}

uint64_t sub_1C57716F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5698000(v7);
  sub_1C5699C90(a2);
  sub_1C57734FC(v7, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  v8 = [a1 title];
  v9 = sub_1C584F660();
  v11 = v10;

  sub_1C569A4B4(v9, v11);
  v12 = [a1 subtitle];
  v13 = sub_1C584F660();
  v15 = v14;

  sub_1C569A4CC(v13, v15);
  sub_1C569A4E4([a1 isRatingSuggestion]);
  sub_1C569A514([a1 isPhotoSuggestion]);
  v16 = [a1 userImage];
  v17 = sub_1C584F660();
  v19 = v18;

  sub_1C569A544(v17, v19);
  sub_1C569A55C([a1 canAddPhotos]);
  sub_1C569A58C([a1 hasNearbyPhotos]);
  sub_1C569A5BC([a1 canRate]);
  sub_1C569A5EC([a1 isPinned]);
  sub_1C569A61C([a1 hasVisited]);
  return sub_1C569A64C([a1 isNearbyLocation]);
}

void sub_1C57718F0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710F0, &qword_1C58795A8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v135 - v6;
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v147 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v140 = &v135 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v146 = &v135 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v150 = &v135 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v141 = &v135 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v149 = &v135 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v135 - v30;
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v151 = &v135 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v145 = &v135 - v37;
  MEMORY[0x1EEE9AC00](v36, v38);
  v139 = &v135 - v39;
  v137 = a2;
  sub_1C56993E8(a2);
  v136 = a1;
  v40 = [a1 postalAddresses];
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1710F8, &qword_1C58795B0);
  v41 = sub_1C584F770();

  if (v41 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v43 = 0;
    v143 = v41 & 0xFFFFFFFFFFFFFF8;
    v144 = v41 & 0xC000000000000001;
    v44 = MEMORY[0x1E69E7CC0];
    v138 = v8;
    v142 = i;
    while (1)
    {
      if (v144)
      {
        v45 = v41;
        v46 = MEMORY[0x1C694A320](v43, v41);
      }

      else
      {
        if (v43 >= *(v143 + 16))
        {
          goto LABEL_18;
        }

        v45 = v41;
        v46 = *(v41 + 8 * v43 + 32);
      }

      v41 = v46;
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v152 = v46;
      sub_1C5772680(&v152, v7);

      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_1C5625230(v7, &qword_1EC1710F0, &qword_1C58795A8);
      }

      else
      {
        v48 = v139;
        sub_1C577355C(v7, v139, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        sub_1C577355C(v48, v145, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1C5772914(0, v44[2] + 1, 1, v44, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        }

        v50 = v44[2];
        v49 = v44[3];
        if (v50 >= v49 >> 1)
        {
          v44 = sub_1C5772914((v49 > 1), v50 + 1, 1, v44, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        }

        v44[2] = v50 + 1;
        sub_1C577355C(v145, v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v50, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
        v8 = v138;
      }

      ++v43;
      v41 = v45;
      if (v47 == v142)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v51 = v137;

  *v51 = v44;
  v52 = [v136 phoneNumbers];
  v53 = sub_1C584F770();

  if (v53 >> 62)
  {
    goto LABEL_40;
  }

  v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = v9; v54; j = v9)
  {
    v55 = 0;
    v144 = v53 & 0xFFFFFFFFFFFFFF8;
    v145 = v53 & 0xC000000000000001;
    v56 = MEMORY[0x1E69E7CC0];
    v143 = v54;
    while (1)
    {
      if (v145)
      {
        v57 = MEMORY[0x1C694A320](v55, v53);
      }

      else
      {
        if (v55 >= *(v144 + 16))
        {
          goto LABEL_39;
        }

        v57 = *(v53 + 8 * v55 + 32);
      }

      v58 = v57;
      v59 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      v60 = v53;
      sub_1C5699964(v31);
      v61 = [v58 label];
      if (v61)
      {
        v62 = v61;
        v63 = sub_1C584F660();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0xE000000000000000;
      }

      sub_1C569991C(v63, v65);
      v66 = [objc_allocWithZone(MUContactLabeledValue) initWithContactLabeledValue:v58 type:1];
      v67 = [v66 valueString];
      v68 = sub_1C584F660();
      v70 = v69;

      sub_1C5699934(v68, v70);
      v71 = [v58 identifier];
      v72 = sub_1C584F660();
      v74 = v73;

      sub_1C569994C(v72, v74);
      sub_1C577355C(v31, v151, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1C5772914(0, v56[2] + 1, 1, v56, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v53 = v60;
      v75 = v143;
      v77 = v56[2];
      v76 = v56[3];
      v9 = j;
      if (v77 >= v76 >> 1)
      {
        v56 = sub_1C5772914((v76 > 1), v77 + 1, 1, v56, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v56[2] = v77 + 1;
      sub_1C577355C(v151, v56 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v77, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      ++v55;
      if (v59 == v75)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v54 = sub_1C584FB90();
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_42:

  v78 = v137;

  v78[1] = v56;
  v79 = [v136 emailAddresses];
  v80 = sub_1C584F770();

  if (v80 >> 62)
  {
    goto LABEL_61;
  }

  for (k = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_1C584FB90())
  {
    v82 = 0;
    v151 = v80 & 0xC000000000000001;
    v145 = v80 & 0xFFFFFFFFFFFFFF8;
    v83 = MEMORY[0x1E69E7CC0];
    v144 = k;
    while (1)
    {
      if (v151)
      {
        v84 = MEMORY[0x1C694A320](v82, v80);
      }

      else
      {
        if (v82 >= *(v145 + 16))
        {
          goto LABEL_60;
        }

        v84 = *(v80 + 8 * v82 + 32);
      }

      v85 = v84;
      v86 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      sub_1C5699964(v150);
      v87 = [v85 label];
      if (v87)
      {
        v88 = v87;
        v89 = sub_1C584F660();
        v91 = v90;
      }

      else
      {
        v89 = 0;
        v91 = 0xE000000000000000;
      }

      v92 = v150;
      sub_1C569991C(v89, v91);
      v93 = [v85 value];
      v94 = sub_1C584F660();
      v96 = v95;

      sub_1C5699934(v94, v96);
      v97 = [v85 identifier];
      v98 = sub_1C584F660();
      v100 = v99;

      sub_1C569994C(v98, v100);
      v101 = v141;
      sub_1C577355C(v92, v141, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      sub_1C577355C(v101, v149, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_1C5772914(0, v83[2] + 1, 1, v83, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v102 = v144;
      v104 = v83[2];
      v103 = v83[3];
      if (v104 >= v103 >> 1)
      {
        v83 = sub_1C5772914((v103 > 1), v104 + 1, 1, v83, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v83[2] = v104 + 1;
      sub_1C577355C(v149, v83 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v104, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      ++v82;
      if (v86 == v102)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v83 = MEMORY[0x1E69E7CC0];
LABEL_63:

  v105 = v137;

  v105[2] = v83;
  v106 = [v136 urlAddresses];
  v107 = sub_1C584F770();

  if (v107 >> 62)
  {
    goto LABEL_83;
  }

  for (m = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_1C584FB90())
  {
    v109 = 0;
    v150 = v107 & 0xFFFFFFFFFFFFFF8;
    v151 = v107 & 0xC000000000000001;
    v110 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v151)
      {
        v111 = MEMORY[0x1C694A320](v109, v107);
      }

      else
      {
        if (v109 >= *(v150 + 16))
        {
          goto LABEL_82;
        }

        v111 = *(v107 + 8 * v109 + 32);
      }

      v112 = v111;
      v113 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      v114 = v107;
      v115 = m;
      sub_1C5699964(v147);
      v116 = [v112 label];
      if (v116)
      {
        v117 = v116;
        v118 = sub_1C584F660();
        v120 = v119;
      }

      else
      {
        v118 = 0;
        v120 = 0xE000000000000000;
      }

      v121 = v147;
      sub_1C569991C(v118, v120);
      v122 = [v112 value];
      v123 = sub_1C584F660();
      v125 = v124;

      sub_1C5699934(v123, v125);
      v126 = [v112 identifier];
      v127 = sub_1C584F660();
      v129 = v128;

      sub_1C569994C(v127, v129);
      v130 = v140;
      sub_1C577355C(v121, v140, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      sub_1C577355C(v130, v146, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1C5772914(0, v110[2] + 1, 1, v110, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v132 = v110[2];
      v131 = v110[3];
      if (v132 >= v131 >> 1)
      {
        v110 = sub_1C5772914((v131 > 1), v132 + 1, 1, v110, &qword_1EC171100, &qword_1C58795B8, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      }

      v110[2] = v132 + 1;
      sub_1C577355C(v146, v110 + ((*(j + 80) + 32) & ~*(j + 80)) + *(j + 72) * v132, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
      ++v109;
      m = v115;
      v133 = v113 == v115;
      v107 = v114;
      if (v133)
      {
        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_85:

  v134 = v137;

  v134[3] = v110;
}

uint64_t sub_1C5772680@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1C5699964(v8);
  v10 = [v9 label];
  if (v10)
  {
    v11 = v10;
    sub_1C584F660();
  }

  v12 = objc_opt_self();
  v13 = sub_1C584F630();

  v14 = [v12 localizedStringForLabel_];

  v15 = sub_1C584F660();
  v17 = v16;

  v32[0] = v15;
  v32[1] = v17;
  sub_1C566339C();
  v18 = sub_1C584FB20();
  v20 = v19;

  sub_1C569991C(v18, v20);
  v21 = objc_opt_self();
  v22 = [v9 value];
  v23 = [v21 stringFromPostalAddress:v22 style:0];

  v24 = sub_1C584F660();
  v26 = v25;

  sub_1C5699934(v24, v26);
  v27 = [v9 identifier];
  v28 = sub_1C584F660();
  v30 = v29;

  sub_1C569994C(v28, v30);
  sub_1C577355C(v8, a2, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

void *sub_1C5772914(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_1C5772AF0(unint64_t a1)
{
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, a1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4, v7);
  v11 = &v33 - v10;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (v12 >= 1)
    {
      v13 = 0;
      v34 = v9 & 0xC000000000000001;
      v14 = MEMORY[0x1E69E7CC0];
      v33 = v9;
      while (1)
      {
        v15 = v34 ? MEMORY[0x1C694A320](v13) : *(v9 + 8 * v13 + 32);
        v16 = v15;
        sub_1C569A400(v11);
        v17 = [v16 title];
        v18 = sub_1C584F660();
        v20 = v19;

        sub_1C569A380(v18, v20);
        v21 = [v16 guideID];
        v22 = sub_1C584F660();
        v24 = v23;

        sub_1C569A398(v22, v24);
        v25 = [v16 image];
        v26 = sub_1C584F660();
        v28 = v27;

        sub_1C569A3B0(v26, v28);
        v29 = [v16 numberOfPlaces];
        if ((v29 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v29))
        {
          goto LABEL_17;
        }

        sub_1C569A3C8(v29);
        sub_1C5773494(v11, v6, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1C5772914(0, v14[2] + 1, 1, v14, &qword_1EC1710D8, &qword_1C5879588, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        }

        v31 = v14[2];
        v30 = v14[3];
        if (v31 >= v30 >> 1)
        {
          v14 = sub_1C5772914((v30 > 1), v31 + 1, 1, v14, &qword_1EC1710D8, &qword_1C5879588, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        }

        ++v13;

        sub_1C57734FC(v11, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        v14[2] = v31 + 1;
        sub_1C577355C(v6, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide);
        v9 = v33;
        if (v12 == v13)
        {
          return v14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v32 = v9;
      result = sub_1C584FB90();
      v9 = v32;
      v12 = result;
      if (!result)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1C5772E5C()
{
  result = qword_1EC16D030;
  if (!qword_1EC16D030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D030);
  }

  return result;
}

uint64_t sub_1C5772EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_6MapsUI14MUOfflineStateVSg(uint64_t a1)
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

uint64_t sub_1C5772F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
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

uint64_t sub_1C5772F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
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

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1C5773014()
{
  v0 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem(0);
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v26 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v26 - v15;
  if (GEOConfigGetBOOL())
  {
    sub_1C569C458(v16);
    sub_1C569C410(0xD000000000000010, 0x80000001C589C450);
    sub_1C569C428(0x61702E746867696CLL, 0xEB000000006C656ELL);
    sub_1C569C440(0xD000000000000014, 0x80000001C5897990);
    sub_1C5773494(v16, v13, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v17 = sub_1C5772914(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1C5772914((v18 > 1), v19 + 1, 1, v17, &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    }

    sub_1C57734FC(v16, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v17[2] = v19 + 1;
    sub_1C577355C(v13, v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_1C584F630();
  v22 = [v20 BOOLForKey_];

  if (v22)
  {
    sub_1C569C458(v9);
    sub_1C569C410(0xD000000000000011, 0x80000001C589C430);
    sub_1C569C428(0x6E6F697461636F6CLL, 0xED00006C6C69662ELL);
    sub_1C569C440(0xD000000000000018, 0x80000001C58979B0);
    sub_1C5773494(v9, v5, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1C5772914(0, v17[2] + 1, 1, v17, &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    }

    v24 = v17[2];
    v23 = v17[3];
    if (v24 >= v23 >> 1)
    {
      v17 = sub_1C5772914((v23 > 1), v24 + 1, 1, v17, &qword_1EC1710E0, &qword_1C5879590, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    }

    sub_1C57734FC(v9, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
    v17[2] = v24 + 1;
    sub_1C577355C(v5, v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v24, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions.MUFooterMenuItem);
  }

  return v17;
}

uint64_t sub_1C5773494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C57734FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C577355C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HikingTipViewModel.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUHikingTipViewModel_title);

  return v1;
}

id sub_1C5773618(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1C584F630();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t HikingTipViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___MUHikingTipViewModel_subtitle);

  return v1;
}

id sub_1C57736C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, id a8, char a9)
{
  v10 = v9;
  v19 = objc_allocWithZone(v10);
  v20 = v19;
  *&v19[OBJC_IVAR___MUHikingTipViewModel_mapIdentifier] = a1;
  v21 = &v19[OBJC_IVAR___MUHikingTipViewModel_title];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v19[OBJC_IVAR___MUHikingTipViewModel_subtitle];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &v19[OBJC_IVAR___MUHikingTipViewModel_actionText];
  *v23 = a6;
  *(v23 + 1) = a7;
  if (a8)
  {
    v24 = a1;
    a8 = a8;
    *&v20[OBJC_IVAR___MUHikingTipViewModel_image] = sub_1C584F560();
  }

  else
  {
    *&v19[OBJC_IVAR___MUHikingTipViewModel_image] = 0;
    v25 = a1;
  }

  v20[OBJC_IVAR___MUHikingTipViewModel_usesOriginMapItem] = a9 & 1;
  v28.receiver = v20;
  v28.super_class = v10;
  v26 = objc_msgSendSuper2(&v28, sel_init);

  return v26;
}

id HikingTipViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HikingTipViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5773944@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_1C584F3C0();
  *a2 = result;
  return result;
}

uint64_t WatchPlaceAddressViewModel.titleText.getter()
{
  v1 = *v0;

  return v1;
}

MapsUI::WatchPlaceAddressViewModel_optional __swiftcall WatchPlaceAddressViewModel.init(mapItem:)(MKMapItem mapItem)
{
  v3 = v1;
  v4 = [(objc_class *)mapItem.super.isa _addressFormattedAsMultilineAddress];
  if (!v4)
  {

LABEL_8:
    *v3 = 0;
    v3[1] = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_1C584F660();
  v8 = v7;

  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    goto LABEL_8;
  }

  *v3 = v6;
  v3[1] = v8;
LABEL_9:
  result.value.titleText._object = v10;
  result.value.titleText._countAndFlagsBits = v9;
  result.is_nil = v11;
  return result;
}

id sub_1C5773AD4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_1C5774758(a1, a2, a3, a4, a5, a6);

  return v14;
}

uint64_t sub_1C5773BDC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = Strong + OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v6 = sub_1C5694BCC();
    v8 = v7;
    swift_endAccess();
    (*(v4 + 8))(v6, v8, 0, 0xE000000000000000, 1, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  v9 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_menuButton;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C564898C(sub_1C5774B64, v11, sub_1C5774B68, v12, GEOLocationCoordinate2DMake, 0, GEOLocationCoordinate2DMake, 0, &v15);
  v13 = sub_1C5646814(v10, 0, 0xE000000000000000, 0, 0, -1);

  return v13;
}

id sub_1C5773E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v18 = a2;
  v19 = a3;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1C5774678;
  v17 = &block_descriptor_11;
  v10 = _Block_copy(&v14);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = a4;
  v19 = a5;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1C57746C8;
  v17 = &block_descriptor_8_0;
  v11 = _Block_copy(&v14);

LABEL_6:
  v12 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v10 actionProvider:v11];
  sub_1C5632FA8(a4, a5);
  sub_1C5632FA8(a2, a3);
  swift_unknownObjectRelease();
  _Block_release(v11);
  _Block_release(v10);
  return v12;
}

void sub_1C5774068(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      v7 = sub_1C5694BCC();
      v9 = v8;
      swift_endAccess();
      v10 = sub_1C56952EC();
      (*(v5 + 8))(v7, v9, v10, v11, 1, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1C57741A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C584F2C0();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_1C56954CC(v16);
    v19 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_mapItem;
    swift_beginAccess();
    v20 = *&v18[v19];
    v21 = v20;
    sub_1C5774F00(v20);
    v23 = v22;

    sub_1C5774AF0(v16, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    if (v23)
    {
      type metadata accessor for MUPlaceActionFeedbackEnvironment();
      v24 = a2;
      v25 = sub_1C56433CC(a2);
      v26 = OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_actionDispatcher;
      swift_beginAccess();
      v27 = *&v18[v26];
      MUPlaceActionDispatcher.performAction(for:environment:completion:)();
    }

    else
    {
      v28 = sub_1C5716150();
      v29 = v9;
      v30 = *(v9 + 16);
      v31 = v42;
      v30(v12, v28, v42);
      sub_1C5774A88(a1, v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      v32 = sub_1C584F2A0();
      v33 = sub_1C584F9B0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v43[0] = v35;
        *v34 = 136315138;
        v36 = sub_1C56953AC();
        v41 = v29;
        v38 = v37;
        sub_1C5774AF0(v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v39 = sub_1C5649518(v36, v38, v43);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1C5620000, v32, v33, "Failed to create dispatch action from menu item: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1C694B7A0](v35, -1, -1);
        MEMORY[0x1C694B7A0](v34, -1, -1);

        (*(v41 + 8))(v12, v31);
      }

      else
      {

        sub_1C5774AF0(v8, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        (*(v29 + 8))(v12, v31);
      }
    }
  }
}

uint64_t sub_1C577463C()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 32);
  do
  {
    v5 = *v4++;
    result |= qword_1C5879760[v5];
    --v2;
  }

  while (v2);
  return result;
}

id sub_1C5774678(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1C57746C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
  v3 = sub_1C584F770();

  v4 = v2(v3);

  return v4;
}

id sub_1C5774758(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_mapItem] = 0;
  sub_1C5774A88(a1, &v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_menuButton], type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
  *&v6[OBJC_IVAR____TtC6MapsUI11MUWebUIMenu_actionDispatcher] = a2;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v14 = a2;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a3, a4, a5, a6);
  [v15 setContextMenuInteractionEnabled_];
  [v15 setShowsMenuAsPrimaryAction_];
  [v15 setIsAccessibilityElement_];
  [v15 setAccessibilityTraits_];
  v16 = sub_1C584F630();
  [v15 setAccessibilityLabel_];

  v17 = v15;
  v18 = sub_1C584F630();
  [v17 setAccessibilityIdentifier_];

  v19 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  sub_1C5774AF0(a1, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
  return v17;
}

uint64_t type metadata accessor for MUWebUIMenu(uint64_t a1)
{
  result = qword_1EC17AEE0;
  if (!qword_1EC17AEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C57749D8(uint64_t a1)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(319);
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

uint64_t sub_1C5774A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5774AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1C5774B6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  result = [v0 setZeroPadsFractionDigits_];
  qword_1EC190488 = v0;
  return result;
}

uint64_t sub_1C5774BBC@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C5698B54(a3);
  if (a1 < 6)
  {
    sub_1C569C688(a1);
    sub_1C569C65C();
    sub_1C56F62E8();
    sub_1C584F730();
    sub_1C584F730();
    if (v18 == v17)
    {
      return sub_1C569C574(100.0);
    }

    if (a2)
    {
      [a2 fractionCompleted];
      *&v6 = v6;
      sub_1C569C574(*&v6);
      sub_1C569C5EC([a2 completedUnitCount]);
      sub_1C569C624([a2 totalUnitCount]);
      v7 = a2;
      v8 = [v7 byteCompletedCount];
      if (v8)
      {
        if (qword_1EC18EF80 != -1)
        {
          v16 = v8;
          swift_once();
          v8 = v16;
        }

        v9 = v8;
        v10 = [qword_1EC190488 stringFromByteCount_];
        v11 = sub_1C584F660();
        v13 = v12;

        v14 = v13;
        v15 = v11;
        return sub_1C569C6B8(v15, v14);
      }
    }

    else
    {
      sub_1C569C574(0.0);
      sub_1C569C5EC(0.0);
      sub_1C569C624(0.0);
    }

    v15 = 0;
    v14 = 0xE000000000000000;
    return sub_1C569C6B8(v15, v14);
  }

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5774DF4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C5774E50(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for MUOfflineMapDownloadState()
{
  if (!qword_1EC171140)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC171140);
    }
  }
}

void sub_1C5774F00(void *a1)
{
  v311 = a1;
  v2 = type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v313 = &v278 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v309 = &v278 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v310 = &v278 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v307 = &v278 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v308 = &v278 - v16;
  v17 = type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v303 = (&v278 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v306 = (&v278 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v305 = (&v278 - v26);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v302 = (&v278 - v29);
  MEMORY[0x1EEE9AC00](v28, v30);
  v300 = (&v278 - v31);
  v32 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension(0);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v299 = &v278 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v296 = &v278 - v37;
  v38 = type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip(0);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v298 = &v278 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v295 = &v278 - v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  v293 = &v278 - v46;
  v47 = type metadata accessor for MULocation(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v304 = &v278 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v301 = &v278 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v297 = &v278 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v294 = &v278 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v292 = &v278 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61, v63);
  v291 = &v278 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64, v66);
  v290 = &v278 - v68;
  MEMORY[0x1EEE9AC00](v67, v69);
  v289 = &v278 - v70;
  v71 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory(0);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v288 = &v278 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v76 = MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v287 = &v278 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76, v78);
  v286 = &v278 - v79;
  v80 = type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide(0);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v285 = &v278 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
  v85 = MEMORY[0x1EEE9AC00](v83 - 8, v84);
  v279 = (&v278 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v85, v87);
  v278 = (&v278 - v88);
  v89 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v91 = MEMORY[0x1EEE9AC00](v89 - 8, v90);
  v284 = &v278 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91, v93);
  v283 = &v278 - v94;
  v95 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide(0);
  MEMORY[0x1EEE9AC00](v95 - 8, v96);
  v282 = &v278 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  MEMORY[0x1EEE9AC00](v98 - 8, v99);
  v312 = &v278 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v103 = MEMORY[0x1EEE9AC00](v101 - 8, v102);
  v281 = (&v278 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = MEMORY[0x1EEE9AC00](v103, v105);
  v280 = (&v278 - v107);
  MEMORY[0x1EEE9AC00](v106, v108);
  v110 = (&v278 - v109);
  v111 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace(0);
  MEMORY[0x1EEE9AC00](v111 - 8, v112);
  v114 = &v278 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  MEMORY[0x1EEE9AC00](v115 - 8, v116);
  v118 = &v278 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v121 = MEMORY[0x1EEE9AC00](v119 - 8, v120);
  v123 = &v278 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v121, v124);
  v126 = &v278 - v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FEF0, &qword_1C586B090);
  MEMORY[0x1EEE9AC00](v127 - 8, v128);
  v130 = &v278 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  MEMORY[0x1EEE9AC00](v131 - 8, v132);
  v134 = &v278 - v133;
  v135 = type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide(0);
  MEMORY[0x1EEE9AC00](v135 - 8, v136);
  v138 = &v278 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides(0);
  MEMORY[0x1EEE9AC00](v139 - 8, v140);
  v142 = &v278 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = v1;
  switch(sub_1C56921A8())
  {
    case 1u:
      type metadata accessor for MUPlaceActionDispatcher.OpenUserGuideAction();
      sub_1C5692380(v138);
      v143 = sub_1C5695A4C();
      v145 = v144;
      sub_1C5776894(v138, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide);
      sub_1C5709C3C(v143, v145);
      break;
    case 2u:
      type metadata accessor for MUPlaceActionDispatcher.ExploreGuidesAction();
      v243 = v285;
      sub_1C56921FC(v285);
      v244 = sub_1C5695A34();
      v246 = v245;
      sub_1C5776894(v243, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide);
      sub_1C5708830(v244, v246);
      break;
    case 3u:
      type metadata accessor for MUPlaceActionDispatcher.TappedARPRatingAction();
      sub_1C5692504(v126);
      v223 = sub_1C5695A7C();
      v225 = v224;
      sub_1C5776894(v126, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
      sub_1C5692504(v123);
      v226 = sub_1C5695A94();
      sub_1C5776894(v123, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating);
      sub_1C5708000(v223, v225, v226);
      break;
    case 5u:
      type metadata accessor for MUPlaceActionDispatcher.RAPsInReviewAction();
      MUPlaceActionDispatcher.RAPsInReviewAction.__allocating_init()();
      break;
    case 6u:
      v242 = qword_1C58797E0[sub_1C5693A40()];
      type metadata accessor for MUPlaceActionDispatcher.ReportAnIssueAction();
      sub_1C57072B0(v242);
      break;
    case 7u:
      type metadata accessor for MUPlaceActionDispatcher.ShareAction();
      MUPlaceActionDispatcher.ShareAction.__allocating_init()();
      break;
    case 8u:
      type metadata accessor for MUPlaceActionDispatcher.CallAction();
      MUPlaceActionDispatcher.CallAction.__allocating_init()();
      break;
    case 9u:
      type metadata accessor for MUPlaceActionDispatcher.MessageAction();
      MUPlaceActionDispatcher.MessageAction.__allocating_init()();
      break;
    case 0xAu:
      type metadata accessor for MUPlaceActionDispatcher.WebsiteAction();
      MUPlaceActionDispatcher.WebsiteAction.__allocating_init()();
      break;
    case 0xBu:
      type metadata accessor for MUPlaceActionDispatcher.ActionGroupAction();
      MUPlaceActionDispatcher.ActionGroupAction.__allocating_init()();
      break;
    case 0xCu:
      type metadata accessor for MUPlaceActionDispatcher.DirectionsAction(0);
      sub_1C5693BDC(v134);
      v218 = type metadata accessor for MUContactLabeledValue(0);
      (*(*(v218 - 8) + 56))(v134, 0, 1, v218);
      sub_1C5707364(v134);
      break;
    case 0xDu:
      type metadata accessor for MUPlaceActionDispatcher.FlyoverAction();
      MUPlaceActionDispatcher.FlyoverAction.__allocating_init()();
      break;
    case 0xEu:
      type metadata accessor for MUPlaceActionDispatcher.OfflineDownloadAction();
      v229 = sub_1C5693A20();
      sub_1C5707524(v229);
      break;
    case 0xFu:
      type metadata accessor for MUPlaceActionDispatcher.AddPhotosAction();
      sub_1C5694704(v130);
      v210 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
      (*(*(v210 - 8) + 56))(v130, 0, 1, v210);
      sub_1C570759C(v130);
      break;
    case 0x10u:
      type metadata accessor for MUPlaceActionDispatcher.AddToFavoritesAction();
      MUPlaceActionDispatcher.AddToFavoritesAction.__allocating_init()();
      break;
    case 0x11u:
      type metadata accessor for MUPlaceActionDispatcher.AddToGuidesAction();
      v263 = sub_1C56940EC();
      sub_1C5693F68(v142);
      v264 = sub_1C569682C();
      sub_1C5776894(v142, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides);
      sub_1C57071DC(v263, v264 & 1);
      break;
    case 0x12u:
      type metadata accessor for MUPlaceActionDispatcher.TappedPhotoAction();
      v267 = v312;
      sub_1C5692868(v312);
      v268 = sub_1C5695E78();
      sub_1C5776894(v267, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
      sub_1C5707EF8(v268);
      break;
    case 0x13u:
      type metadata accessor for MUPlaceActionDispatcher.TappedAlbumAction();
      v265 = v312;
      sub_1C5692868(v312);
      v266 = sub_1C5695E90();
      sub_1C5776894(v265, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto);
      sub_1C5707F70(v266);
      break;
    case 0x14u:
      type metadata accessor for MUPlaceActionDispatcher.MorePlacesAction();
      sub_1C5692A10(v110);
      v194 = sub_1C5695FC8();
      v196 = v195;
      sub_1C5776894(v110, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
      v197 = v280;
      sub_1C5692A10(v280);
      v198 = *v197;

      sub_1C5776894(v197, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
      v199 = v281;
      sub_1C5692A10(v281);
      v200 = sub_1C5695FE0();
      v202 = v201;
      sub_1C5776894(v199, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList);
      sub_1C5707AE0(v194, v196, v198, v200, v202);
      break;
    case 0x15u:
      type metadata accessor for MUPlaceActionDispatcher.TappedPhotoAction();
      sub_1C5707EF8(0.0);
      break;
    case 0x16u:
      type metadata accessor for MUPlaceActionDispatcher.TappedGuideAction();
      v270 = v282;
      sub_1C5692BB0(v282);
      v271 = sub_1C5695A64();
      v273 = v272;
      sub_1C5776894(v270, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide);
      sub_1C570810C(v271, v273);
      break;
    case 0x17u:
      type metadata accessor for MUPlaceActionDispatcher.TappedPlaceAction();
      sub_1C5692D34(v114);
      v207 = sub_1C5695FF8();
      v209 = v208;
      sub_1C5776894(v114, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace);
      sub_1C5707A08(v207, v209);
      break;
    case 0x18u:
      sub_1C569269C(v118);
      v227 = sub_1C5695AEC();
      sub_1C5776894(v118, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry);
      v228 = qword_1C58797E0[v227];
      type metadata accessor for MUPlaceActionDispatcher.InlineRapEntryAction();
      sub_1C5707938(v228);
      break;
    case 0x19u:
      type metadata accessor for MUPlaceActionDispatcher.TappedURLAction(0);
      v211 = v283;
      sub_1C5692EB8(v283);
      v212 = sub_1C5696010();
      v214 = v213;
      sub_1C5776894(v211, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
      v215 = v284;
      sub_1C5692EB8(v284);
      v216 = sub_1C5696028();
      sub_1C5776894(v215, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl);
      sub_1C57082D4(v212, v214, v216 & 1);
      break;
    case 0x1Au:
      v251 = v311;
      if (v311)
      {
        type metadata accessor for MUPlaceActionDispatcher.TappedAttributionURLAction();
        v252 = v251;
        v253 = v278;
        sub_1C5693048(v278);
        v254 = *v253;

        sub_1C5776894(v253, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
        v255 = v279;
        sub_1C5693048(v279);
        v256 = sub_1C5696050();
        v258 = v257;
        sub_1C5776894(v255, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl);
        sub_1C5708688(v254, v256, v258, v252);
      }

      break;
    case 0x1Bu:
      type metadata accessor for MUPlaceActionDispatcher.TappedYourPhotosAction();
      MUPlaceActionDispatcher.TappedYourPhotosAction.__allocating_init()();
      break;
    case 0x1Cu:
      type metadata accessor for MUPlaceActionDispatcher.ContactsAction();
      MUPlaceActionDispatcher.ContactsAction.__allocating_init()();
      break;
    case 0x1Du:
      type metadata accessor for MUPlaceActionDispatcher.OpenFindMyAction();
      MUPlaceActionDispatcher.OpenFindMyAction.__allocating_init()();
      break;
    case 0x1Eu:
      type metadata accessor for MUPlaceActionDispatcher.LocationAction();
      MUPlaceActionDispatcher.LocationAction.__allocating_init()();
      break;
    case 0x1Fu:
      type metadata accessor for MUPlaceActionDispatcher.CloseAction();
      MUPlaceActionDispatcher.CloseAction.__allocating_init()();
      break;
    case 0x20u:
      type metadata accessor for MUPlaceActionDispatcher.RemoveFromFavoritesAction();
      MUPlaceActionDispatcher.RemoveFromFavoritesAction.__allocating_init()();
      break;
    case 0x21u:
      type metadata accessor for MUPlaceActionDispatcher.TappedLibraryAction();
      v219 = v286;
      sub_1C56931DC(v286);
      v220 = sub_1C5696068();
      sub_1C5776894(v219, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
      v221 = v287;
      sub_1C56931DC(v287);
      v222 = sub_1C5696094();
      sub_1C5776894(v221, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary);
      sub_1C57088F0(v220, v222 & 1);
      break;
    case 0x22u:
      type metadata accessor for MUPlaceActionDispatcher.TappedNoteAction();
      MUPlaceActionDispatcher.TappedNoteAction.__allocating_init()();
      break;
    case 0x23u:
      type metadata accessor for MUPlaceActionDispatcher.BrowseCategoryAction();
      v203 = v288;
      sub_1C569336C(v288);
      v204 = sub_1C56960BC();
      v206 = v205;
      sub_1C5776894(v203, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory);
      sub_1C57089D0(v204, v206);
      break;
    case 0x24u:
      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromLibraryAction();
      MUPlaceActionDispatcher.AddPhotoFromLibraryAction.__allocating_init()();
      break;
    case 0x25u:
      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromCameraAction();
      MUPlaceActionDispatcher.AddPhotoFromCameraAction.__allocating_init()();
      break;
    case 0x26u:
      v313 = type metadata accessor for MUPlaceActionDispatcher.TappedTransitDepartureAction();
      v173 = v289;
      sub_1C56934F0(v289);
      LODWORD(v312) = sub_1C56960D4();
      sub_1C5776894(v173, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v174 = v290;
      sub_1C56934F0(v290);
      v175 = sub_1C56960FC();
      v310 = v176;
      v311 = v175;
      sub_1C5776894(v174, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v177 = v291;
      sub_1C56934F0(v291);
      v178 = sub_1C5696114();
      v308 = v179;
      v309 = v178;
      sub_1C5776894(v177, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v180 = v292;
      sub_1C56934F0(v292);
      v181 = sub_1C569612C();
      v183 = v182;
      sub_1C5776894(v180, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v184 = v294;
      sub_1C56934F0(v294);
      v185 = sub_1C56961EC();
      v187 = v186;
      sub_1C5776894(v184, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v188 = v297;
      sub_1C56934F0(v297);
      v189 = sub_1C56962AC();
      v191 = v190;
      sub_1C5776894(v188, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      v192 = v301;
      sub_1C56934F0(v301);
      v193 = v304;
      sub_1C56962C4(v304);
      sub_1C5776894(v192, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
      sub_1C5708BDC(v312 & 1, v311, v310, v309, v308, v181, v183, v185, v187, v189, v191, v193);
      break;
    case 0x27u:
      type metadata accessor for MUPlaceActionDispatcher.CreateCustomRouteAction();
      MUPlaceActionDispatcher.CreateCustomRouteAction.__allocating_init()();
      break;
    case 0x28u:
      type metadata accessor for MUPlaceActionDispatcher.OpenAppClipAction();
      v161 = v293;
      sub_1C56936F4(v293);
      v162 = sub_1C56966BC();
      v164 = v163;
      sub_1C5776894(v161, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
      v165 = v295;
      sub_1C56936F4(v295);
      v166 = sub_1C56966D4();
      v168 = v167;
      sub_1C5776894(v165, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
      v169 = v298;
      sub_1C56936F4(v298);
      v170 = sub_1C56966EC();
      v172 = v171;
      sub_1C5776894(v169, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip);
      sub_1C5709000(v162, v164, v166, v168, v170, v172);
      break;
    case 0x29u:
      type metadata accessor for MUPlaceActionDispatcher.OpenExtensionAction();
      v155 = v296;
      sub_1C5693890(v296);
      v156 = sub_1C5696704();
      v158 = v157;
      sub_1C5776894(v155, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
      v159 = v299;
      sub_1C5693890(v299);
      v160 = sub_1C569671C();
      sub_1C5776894(v159, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension);
      sub_1C5709214(v156, v158, v160 & 1);
      break;
    case 0x2Au:
      type metadata accessor for MUPlaceActionDispatcher.MarkedLocationAction();
      v217 = sub_1C5693B58();
      sub_1C5709324(v217);
      break;
    case 0x2Bu:
      type metadata accessor for MUPlaceActionDispatcher.ShowAllCollectionsAction();
      v230 = v300;
      sub_1C5693DD0(v300);
      v231 = sub_1C5696814();
      v233 = v232;
      sub_1C5776894(v230, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      v234 = v302;
      sub_1C5693DD0(v302);
      v235 = *v234;

      sub_1C5776894(v234, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      v236 = v305;
      sub_1C5693DD0(v305);
      v237 = v236[1];

      sub_1C5776894(v236, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      v238 = v306;
      sub_1C5693DD0(v306);
      v239 = v238[2];

      sub_1C5776894(v238, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList);
      sub_1C570940C(v231, v233, v235, v237, v239);
      break;
    case 0x2Cu:
      type metadata accessor for MUPlaceActionDispatcher.TappedTransitIncidentAction();
      v269 = v303;
      sub_1C569420C(v303);
      sub_1C5708E54(v269);
      break;
    case 0x2Du:
      type metadata accessor for MUPlaceActionDispatcher.PublisherGuideAction();
      v146 = v308;
      sub_1C56943DC(v308);
      v147 = v307;
      sub_1C56943DC(v307);
      v148 = sub_1C5696498();
      v150 = v149;
      sub_1C5776894(v147, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
      v151 = v310;
      sub_1C56943DC(v310);
      v152 = sub_1C5696480();
      v154 = v153;
      sub_1C5776894(v151, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction);
      sub_1C5709CDC(v146, v148, v150, v152, v154);
      break;
    case 0x2Eu:
      type metadata accessor for MUPlaceActionDispatcher.SaveToContactAction();
      MUPlaceActionDispatcher.SaveToContactAction.__allocating_init()();
      break;
    case 0x2Fu:
      type metadata accessor for MUPlaceActionDispatcher.OpenPhotoViewerAction();
      v240 = v309;
      sub_1C5694578(v309);
      v241 = sub_1C569650C();
      sub_1C5776894(v240, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer);
      sub_1C570A15C(v241);
      break;
    case 0x30u:
      type metadata accessor for MUPlaceActionDispatcher.CopyCoordinatesAction();
      v259 = v313;
      sub_1C56948C0(v313);
      v260 = sub_1C56967FC();
      v262 = v261;
      sub_1C5776894(v259, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
      sub_1C570A22C(v260, v262);
      break;
    case 0x31u:
      type metadata accessor for MUPlaceActionDispatcher.CopyLinkAction();
      v274 = v313;
      sub_1C56948C0(v313);
      v275 = sub_1C56967FC();
      v277 = v276;
      sub_1C5776894(v274, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
      sub_1C570A2CC(v275, v277);
      break;
    case 0x32u:
      type metadata accessor for MUPlaceActionDispatcher.CopyAddressAction();
      v247 = v313;
      sub_1C56948C0(v313);
      v248 = sub_1C56967FC();
      v250 = v249;
      sub_1C5776894(v247, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy);
      sub_1C570A36C(v248, v250);
      break;
    case 0x35u:
      type metadata accessor for MUPlaceActionDispatcher.TappedSimulateLocationAction();
      MUPlaceActionDispatcher.TappedSimulateLocationAction.__allocating_init()();
      break;
    default:
      return;
  }
}

uint64_t sub_1C5776894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1C5776938(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_viewModel] = a1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  swift_unknownObjectRetain();
  v5 = [v4 initWithFrame_];
  v6 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel;
  *&v2[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel] = v5;
  v7 = objc_opt_self();
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = v5;
  v10 = [v7 preferredFontForTextStyle_];
  [v9 setFont_];

  [*&v2[v6] setNumberOfLines_];
  [*&v2[v6] setAdjustsFontForContentSizeCategory_];
  v11 = *&v2[v6];
  v12 = sub_1C584F630();
  [v11 setAccessibilityIdentifier_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696F3F8]) init];
  v14 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel;
  *&v2[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel] = v13;
  [v13 setTextAlignment_];
  [*&v2[v14] setNumberOfLines_];
  v15 = *MEMORY[0x1E69DDD00];
  v16 = *&v2[v14];
  v17 = [v7 preferredFontForTextStyle_];
  [v16 setFont_];

  v18 = *&v2[v14];
  v19 = sub_1C584F630();
  [v18 setAccessibilityIdentifier_];

  v20 = [objc_opt_self() defaultPlatterView];
  v21 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterView;
  *&v2[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterView] = v20;
  v22 = v20;
  v23 = [v7 preferredFontForTextStyle_];
  [v22 setGlyphFont_];

  v24 = *&v2[v21];
  v25 = sub_1C584F630();
  [v24 setGlyph_];

  v26 = *&v2[v21];
  v27 = sub_1C584F630();
  [v26 setAccessibilityIdentifier_];

  v66.receiver = v2;
  v66.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v29 = sub_1C584F630();
  [v28 setAccessibilityIdentifier_];

  [v28 _mapsui_resetLayoutMargins];
  [v28 setDirectionalLayoutMargins_];
  v30 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel];
  [v28 addSubview_];
  v31 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel];
  [v28 addSubview_];
  v32 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterView];
  [v28 addSubview_];
  type metadata accessor for SizeLayout();
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 preferredFontForTextStyle_];
  [v35 _mapkit_scaledValueForValue_];
  v37 = v36;

  v38 = SizeLayout.__allocating_init(item:size:)(v34, v37, v37);
  v39 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout];
  *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_infoPlatterSizeLayout] = v38;
  v40 = v38;

  sub_1C575D20C(1, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E928, &qword_1C5879830);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C5867990;
  *(v41 + 56) = sub_1C5626E40(0, &qword_1EC171170, 0x1E69DCC10);
  *(v41 + 64) = &off_1F44C2610;
  *(v41 + 32) = v30;
  *(v41 + 96) = sub_1C5626E40(0, &qword_1EC171178, 0x1E696F3F8);
  *(v41 + 104) = &off_1F44C2610;
  *(v41 + 72) = v31;
  v42 = v30;
  v43 = v31;
  sub_1C575D334(v41);
  sub_1C563E578(v69);
  *(&v74 + 1) = LOBYTE(v69[0]) | (DWORD1(v69[0]) << 32);
  sub_1C563E578(v69);
  v44 = 0x20000000;
  if (LOBYTE(v69[0]))
  {
    v44 = 536870913;
  }

  *&v74 = v44 | (DWORD1(v69[0]) << 32);
  sub_1C575D20C(0, v69);
  sub_1C563E578(v67);
  v45 = 1610612736;
  if (v67[0])
  {
    v45 = 1610612737;
  }

  v70 = v45 | (v68 << 32);
  sub_1C563E578(v67);
  v46 = 0x40000000;
  if (v67[0])
  {
    v46 = 1073741825;
  }

  v71 = v46 | (v68 << 32);
  v72 = 0x4020000000000000;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C5867990;
  *(v47 + 56) = &_s5GroupVN;
  *(v47 + 64) = &off_1F44C2640;
  v48 = swift_allocObject();
  *(v47 + 32) = v48;
  v49 = v75;
  *(v48 + 48) = v74;
  *(v48 + 64) = v49;
  *(v48 + 80) = v76;
  *(v48 + 96) = v77;
  v50 = v73[1];
  *(v48 + 16) = v73[0];
  *(v48 + 32) = v50;
  *(v47 + 96) = sub_1C5626E40(0, &unk_1EC171180, off_1E8216160);
  *(v47 + 104) = &off_1F44C2610;
  *(v47 + 72) = v34;
  sub_1C575D334(v47);
  type metadata accessor for CompositionalStackLayout();
  v51 = sub_1C57783A8([v28 layoutMarginsGuide], v69);
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C58682A0;
  *(v52 + 32) = v40;
  *(v52 + 40) = v51;
  v53 = v40;
  v54 = v51;
  static NSLayoutConstraint.activate(layouts:)(v52);

  v55 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_titleLabel];
  swift_beginAccess();
  v56 = swift_unknownObjectRetain();
  sub_1C577C150(v56);
  swift_unknownObjectRelease();
  v57 = sub_1C584F630();

  [v55 setText_];

  v58 = *&v28[OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_headsignLabel];
  v59 = swift_unknownObjectRetain();
  sub_1C577C1AC(v59);
  swift_unknownObjectRelease();
  v60 = sub_1C584F750();

  [v58 setLabelItems_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE90, &qword_1C5876290);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1C5867900;
  v62 = sub_1C584F310();
  v63 = MEMORY[0x1E69DC2B0];
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
  sub_1C584FAA0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v28;
}