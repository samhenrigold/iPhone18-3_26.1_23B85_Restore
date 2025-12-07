uint64_t sub_1E6058124@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B98, &qword_1E65EE208);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073BA0, &unk_1E65EE210);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60596CC();
  v11 = v30;
  sub_1E65E6D98();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_1E65E6AF8();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_1E5FBE3F4() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = sub_1E65E68F8();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v20 = v22;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  sub_1E6059720();
  sub_1E65E6A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  sub_1E6059774(&qword_1ED073BA8, MEMORY[0x1E699CA98]);
  v22 = v10;
  sub_1E65E6AD8();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_1E605953C(v4, v12);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1E6058534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E60585BC(uint64_t a1)
{
  v2 = sub_1E60596CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E60585F8(uint64_t a1)
{
  v2 = sub_1E60596CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6058634(uint64_t a1)
{
  v2 = sub_1E6059720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6058670(uint64_t a1)
{
  v2 = sub_1E6059720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E60586DC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E60595FC(v1, v3, type metadata accessor for ContextMenu.Context);
  MEMORY[0x1E694E740](0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  sub_1E65DE4A8();
  return sub_1E6059664(v3);
}

uint64_t sub_1E605879C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B90, &qword_1E65EE200);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_1E60595FC(a1, &v10 - v6, type metadata accessor for ContextMenu.Context);
  sub_1E60595FC(a2, &v7[v8], type metadata accessor for ContextMenu.Context);
  type metadata accessor for WorkoutContextMenuLoadState(0);
  sub_1E5DF2D50(&qword_1EE2D81C0, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E66051FC);
  sub_1E5DF2D50(&qword_1EE2D81D8, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E66051D4);
  sub_1E5DF2D50(&qword_1EE2D81D0, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E6605194);
  LOBYTE(a2) = sub_1E65DE498();
  sub_1E6059664(&v7[v8]);
  sub_1E6059664(v7);
  return a2 & 1;
}

uint64_t sub_1E6058988(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B88, &qword_1E65EE1F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60594E8();
  sub_1E65E6DA8();
  v8[15] = 0;
  sub_1E65D76F8();
  sub_1E5DF2D50(&qword_1EE2D71B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1E65E6B78();
  if (!v1)
  {
    type metadata accessor for ContextMenu(0);
    v8[14] = 1;
    type metadata accessor for ContextMenu.Context(0);
    sub_1E5DF2D50(&qword_1EE2DB970, type metadata accessor for ContextMenu.Context, &unk_1E65EE0B0);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E6058B88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65D76F8();
  v21 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B70, &qword_1E65EE1F0);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ContextMenu(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60594E8();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_1E5DF2D50(&qword_1ED073B78, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v13 = v23;
  v14 = v25;
  sub_1E65E6AD8();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_1E5DF2D50(&qword_1ED073B80, type metadata accessor for ContextMenu.Context, &unk_1E65EE0D8);
  sub_1E65E6AD8();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_1E605953C(v5, &v19[*(v18 + 20)]);
  sub_1E60595FC(v15, v20, type metadata accessor for ContextMenu);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E60595A0(v15);
}

uint64_t sub_1E6058F74()
{
  if (*v0)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1E6058FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E6059098(uint64_t a1)
{
  v2 = sub_1E60594E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E60590D4(uint64_t a1)
{
  v2 = sub_1E60594E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6059140(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6059198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76F8();
  sub_1E5DF2D50(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E65E5B48();
  sub_1E60595FC(v2 + *(a2 + 20), v6, type metadata accessor for ContextMenu.Context);
  MEMORY[0x1E694E740](0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  sub_1E65DE4A8();
  return sub_1E6059664(v6);
}

uint64_t sub_1E60592C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E65E6D28();
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6059314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B90, &qword_1E65EE200);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  if (sub_1E65D76D8())
  {
    v9 = *(a3 + 20);
    v10 = *(v6 + 48);
    sub_1E60595FC(a1 + v9, v8, type metadata accessor for ContextMenu.Context);
    sub_1E60595FC(a2 + v9, &v8[v10], type metadata accessor for ContextMenu.Context);
    type metadata accessor for WorkoutContextMenuLoadState(0);
    sub_1E5DF2D50(&qword_1EE2D81C0, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E66051FC);
    sub_1E5DF2D50(&qword_1EE2D81D8, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E66051D4);
    sub_1E5DF2D50(&qword_1EE2D81D0, type metadata accessor for WorkoutContextMenuLoadState, &unk_1E6605194);
    v11 = sub_1E65DE498();
    sub_1E6059664(&v8[v10]);
    sub_1E6059664(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1E60594E8()
{
  result = qword_1EE2DB8C8[0];
  if (!qword_1EE2DB8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DB8C8);
  }

  return result;
}

uint64_t sub_1E605953C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextMenu.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60595A0(uint64_t a1)
{
  v2 = type metadata accessor for ContextMenu(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E60595FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6059664(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E60596CC()
{
  result = qword_1EE2DB9A0[0];
  if (!qword_1EE2DB9A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DB9A0);
  }

  return result;
}

unint64_t sub_1E6059720()
{
  result = qword_1EE2DB988;
  if (!qword_1EE2DB988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB988);
  }

  return result;
}

uint64_t sub_1E6059774(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073B60, &unk_1E65EE020);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60597F8()
{
  result = qword_1ED073BC0;
  if (!qword_1ED073BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073BC0);
  }

  return result;
}

unint64_t sub_1E6059850()
{
  result = qword_1ED073BC8;
  if (!qword_1ED073BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073BC8);
  }

  return result;
}

unint64_t sub_1E60598A8()
{
  result = qword_1ED073BD0;
  if (!qword_1ED073BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073BD0);
  }

  return result;
}

unint64_t sub_1E6059900()
{
  result = qword_1EE2DB978;
  if (!qword_1EE2DB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB978);
  }

  return result;
}

unint64_t sub_1E6059958()
{
  result = qword_1EE2DB980;
  if (!qword_1EE2DB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB980);
  }

  return result;
}

unint64_t sub_1E60599B0()
{
  result = qword_1EE2DB990;
  if (!qword_1EE2DB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB990);
  }

  return result;
}

unint64_t sub_1E6059A08()
{
  result = qword_1EE2DB998;
  if (!qword_1EE2DB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB998);
  }

  return result;
}

unint64_t sub_1E6059A60()
{
  result = qword_1EE2DB8B8;
  if (!qword_1EE2DB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB8B8);
  }

  return result;
}

unint64_t sub_1E6059AB8()
{
  result = qword_1EE2DB8C0;
  if (!qword_1EE2DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB8C0);
  }

  return result;
}

uint64_t sub_1E6059B28(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1E65E6778();
    v9 = v8;
    v10 = sub_1E65E6808();
    v12 = v11;
    v13 = MEMORY[0x1E694E1A0](v7, v9, v10, v11);
    sub_1E5F87098(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_1E5F87098(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_1E65E6748();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1E605FDF4(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_1E5F87098(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_1E6059CB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E65E6748();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_1E606000C(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_1E6059D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E65E6748();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0uLL;
    v6 = -1;
    v7 = 0uLL;
  }

  else
  {
    sub_1E60600D0(result, *(a1 + 36), a1, v11);
    v8 = v11[1];
    v9 = v11[0];
    v6 = v12;
    result = sub_1E6060250(v11, v10);
    v7 = v8;
    v5 = v9;
  }

  *a2 = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1E6059EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1E5DFD1CC(a3, v22 - v9, &unk_1ED0735B0, &qword_1E65EA000);
  v11 = sub_1E65E60A8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1E5DFE50C(v10, &unk_1ED0735B0, &qword_1E65EA000);
  }

  else
  {
    sub_1E65E6098();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E65E5FC8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E65E5D18() + 32;

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
      v20 = swift_task_create();

      sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);

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

  sub_1E5DFE50C(a3, &unk_1ED0735B0, &qword_1E65EA000);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E605A158@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for AppState(0);
  v5 = (a1 + *(result + 248));
  v6 = *v5;
  v7 = v5[1];
  if (v7 != 6)
  {
    v8 = *(a1 + *(result + 252));
    sub_1E5E05374(v6, v7);
    result = sub_1E5E25298(v6, v7, v8);
    if ((result & 1) == 0)
    {
      result = sub_1E5E07DA0(v6, v7);
      v6 = 0;
      v7 = 6;
    }
  }

  *a2 = v6;
  a2[1] = v7;
  return result;
}

uint64_t sub_1E605A1F4()
{
  v1 = 0x4C52556E65706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6974634172657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E605A258@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E6060134(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E605A280(uint64_t a1)
{
  v2 = sub_1E605A7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E605A2BC(uint64_t a1)
{
  v2 = sub_1E605A7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E605A2F8(uint64_t a1)
{
  v2 = sub_1E605A8C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E605A334(uint64_t a1)
{
  v2 = sub_1E605A8C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E605A370(uint64_t a1)
{
  v2 = sub_1E605A874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E605A3AC(uint64_t a1)
{
  v2 = sub_1E605A874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E605A3E8(uint64_t a1)
{
  v2 = sub_1E605A820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E605A424(uint64_t a1)
{
  v2 = sub_1E605A820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppCoordinator.LaunchResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073BD8, &qword_1E65EE580);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073BE0, &qword_1E65EE588);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073BE8, &qword_1E65EE590);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073BF0, &qword_1E65EE598);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E605A7CC();
  sub_1E65E6DA8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E605A874();
      v9 = v21;
      sub_1E65E6B18();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E605A820();
      v9 = v24;
      sub_1E65E6B18();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E605A8C8();
    sub_1E65E6B18();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E605A7CC()
{
  result = qword_1ED073BF8;
  if (!qword_1ED073BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073BF8);
  }

  return result;
}

unint64_t sub_1E605A820()
{
  result = qword_1ED073C00;
  if (!qword_1ED073C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C00);
  }

  return result;
}

unint64_t sub_1E605A874()
{
  result = qword_1ED073C08;
  if (!qword_1ED073C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C08);
  }

  return result;
}

unint64_t sub_1E605A8C8()
{
  result = qword_1ED073C10;
  if (!qword_1ED073C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C10);
  }

  return result;
}

uint64_t AppCoordinator.LaunchResult.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

uint64_t AppCoordinator.LaunchResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C18, &qword_1E65EE5A0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C20, &qword_1E65EE5A8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C28, &qword_1E65EE5B0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C30, &unk_1E65EE5B8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E605A7CC();
  v15 = v36;
  sub_1E65E6D98();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E65E6AF8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E5FBE3E4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E65E68F8();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v24 = &type metadata for AppCoordinator.LaunchResult;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E605A874();
          sub_1E65E6A68();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E605A820();
          v26 = v17;
          sub_1E65E6A68();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E605A8C8();
        sub_1E65E6A68();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t AppCoordinator.onAppLaunch(connectionOptions:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for RouteDestination(0);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C38, &unk_1E65EE5D0);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for URLContext(0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for RouteSource(0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_1E65D74E8();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3[19] = swift_task_alloc();
  sub_1E65E6058();
  v3[20] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v3[21] = v7;
  v3[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E605B16C, v7, v6);
}

uint64_t sub_1E605B16C()
{
  v48 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1E65E3B68();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47 = v8;
    *v7 = 136446210;
    *(v0 + 16) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C60, &qword_1E65EE5F8);
    v9 = sub_1E65E6648();
    v11 = sub_1E5DFD4B0(v9, v10, &v47);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Routing Scene Connection Options: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v12 = *(v0 + 152);
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v13;

  sub_1E6059EAC(0, 0, v12, &unk_1E65EE5E8, v16);

  if (v14)
  {
    v17 = [v3 URLContexts];
    sub_1E5DEF738(0, &qword_1ED073C40, 0x1E69DCD08);
    sub_1E605F8C0(&qword_1ED073C48, &qword_1ED073C40, 0x1E69DCD08);
    v18 = sub_1E65E6208();

    v19 = sub_1E6059B28(v18, &qword_1ED073C40, 0x1E69DCD08);
    *(v0 + 192) = v19;

    if (v19)
    {
      v20 = *(v0 + 120);
      v21 = __swift_project_boxed_opaque_existential_1((*(v0 + 40) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver), *(*(v0 + 40) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver + 24));
      v22 = [v19 URL];
      sub_1E65D7478();

      sub_1E605C6E0(v19, v20);
      type metadata accessor for AppLaunchScope(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v23 = *v21;
      v24 = swift_task_alloc();
      *(v0 + 200) = v24;
      *v24 = v0;
      v24[1] = sub_1E605B80C;
      v25 = *(v0 + 144);
      v26 = *(v0 + 120);
LABEL_8:
      v27 = MEMORY[0x1E69E7CD0];

      return sub_1E5FFC850(v25, v26, v27, v23);
    }

    v29 = [v3 userActivities];
    sub_1E5DEF738(0, &qword_1ED073C50, 0x1E696B090);
    sub_1E605F8C0(&qword_1ED073C58, &qword_1ED073C50, 0x1E696B090);
    v30 = sub_1E65E6208();

    v31 = sub_1E6059B28(v30, &qword_1ED073C50, 0x1E696B090);
    *(v0 + 216) = v31;

    if (v31)
    {
      v32 = *(v0 + 72);
      v33 = *(v0 + 80);
      v34 = *(v0 + 64);
      v35 = v31;
      sub_1E605C8E0(v35, v34);
      if ((*(v33 + 48))(v34, 1, v32) != 1)
      {
        v42 = *(v0 + 112);
        v43 = *(v0 + 88);
        v44 = *(v0 + 40);
        sub_1E606030C(*(v0 + 64), v43, type metadata accessor for URLContext);
        v45 = __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver), *(v44 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver + 24));
        sub_1E605F9C4(v43, v42, type metadata accessor for URLContext);
        type metadata accessor for AppLaunchScope(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v23 = *v45;
        v46 = swift_task_alloc();
        *(v0 + 224) = v46;
        *v46 = v0;
        v46[1] = sub_1E605BD14;
        v26 = *(v0 + 112);
        v25 = *(v0 + 88);
        goto LABEL_8;
      }

      v36 = *(v0 + 64);

      sub_1E5DFE50C(v36, &qword_1ED073C38, &unk_1E65EE5D0);
    }
  }

  v37 = *(v0 + 104);
  v39 = *(v0 + 48);
  v38 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(*(v0 + 40) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  type metadata accessor for AppLaunchScope(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E606030C(v37, v38 + *(v39 + 20), type metadata accessor for RouteSource);
  *(v38 + *(v39 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 256) = 0;
  v40 = swift_task_alloc();
  *(v0 + 240) = v40;
  *v40 = v0;
  v40[1] = sub_1E605C200;
  v41 = *(v0 + 56);

  return sub_1E6337384(v41, (v0 + 256));
}

uint64_t sub_1E605B80C()
{
  v2 = *v1;
  (*v1)[26] = v0;

  v3 = v2[18];
  v4 = v2[17];
  v5 = v2[16];
  sub_1E60602AC(v2[15], type metadata accessor for RouteSource);
  (*(v4 + 8))(v3, v5);
  v6 = v2[22];
  v7 = v2[21];
  if (v0)
  {
    v8 = sub_1E605BB04;
  }

  else
  {
    v8 = sub_1E605B9D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

id sub_1E605B9D0()
{
  v1 = v0[24];
  v2 = v0[5];
  v3 = v0[3];

  *v3 = 1;
  result = [*(v2 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v5 = result;
    [result setAlpha_];

    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E605BB04()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v2;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Unable to route connection options: %@", v6, 0xCu);
    sub_1E5DFE50C(v7, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  v10 = v0[5];

  swift_willThrow();
  result = [*(v10 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v12 = result;
    [result setAlpha_];

    v13 = v0[1];

    return v13();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E605BD14()
{
  v2 = *v1;
  (*v1)[29] = v0;

  sub_1E60602AC(v2[14], type metadata accessor for RouteSource);
  v3 = v2[22];
  v4 = v2[21];
  if (v0)
  {
    v5 = sub_1E605BFD0;
  }

  else
  {
    v5 = sub_1E605BE7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

id sub_1E605BE7C()
{
  v1 = v0[27];
  v2 = v0[11];
  v3 = v0[5];
  v4 = v0[3];

  sub_1E60602AC(v2, type metadata accessor for URLContext);
  *v4 = 2;
  result = [*(v3 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v6 = result;
    [result setAlpha_];

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E605BFD0()
{
  v1 = v0[27];
  v2 = v0[11];

  sub_1E60602AC(v2, type metadata accessor for URLContext);
  v3 = v0[29];
  v4 = v3;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v3;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Unable to route connection options: %@", v7, 0xCu);
    sub_1E5DFE50C(v8, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v11 = v0[5];

  swift_willThrow();
  result = [*(v11 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v13 = result;
    [result setAlpha_];

    v14 = v0[1];

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E605C200()
{
  v2 = *v1;
  (*v1)[31] = v0;

  if (v0)
  {
    v3 = sub_1E605C460;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    sub_1E60602AC(v2[7], type metadata accessor for RouteDestination);
    v4 = v2[21];
    v5 = v2[22];
    v3 = sub_1E605C338;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

id sub_1E605C338()
{
  v1 = v0[5];
  v2 = v0[3];

  *v2 = 0;
  result = [*(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v4 = result;
    [result setAlpha_];

    v5 = v0[1];

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E605C460()
{
  sub_1E60602AC(v0[7], type metadata accessor for RouteDestination);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1E605C4D8, v1, v2);
}

id sub_1E605C4D8()
{

  v1 = v0[31];
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Unable to route connection options: %@", v5, 0xCu);
    sub_1E5DFE50C(v6, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v6, -1, -1);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  v9 = v0[5];

  swift_willThrow();
  result = [*(v9 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v11 = result;
    [result setAlpha_];

    v12 = v0[1];

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E605C6E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1E65D74E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 URL];
  sub_1E65D7478();

  (*(v8 + 56))(v6, 1, 1, v7);
  v12 = [a1 options];
  v13 = [v12 sourceApplication];

  if (v13)
  {
    v14 = sub_1E65E5C78();
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 0;
  }

  (*(v8 + 32))(a2, v10, v7);
  v17 = type metadata accessor for URLContext(0);
  result = sub_1E6009E5C(v6, a2 + *(v17 + 20));
  v19 = (a2 + *(v17 + 24));
  *v19 = v14;
  v19[1] = v16;
  return result;
}

uint64_t sub_1E605C8E0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v47 - v4;
  v6 = sub_1E65D74E8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = [a1 activityType];
  v17 = sub_1E65E5C78();
  v19 = v18;

  if (v17 == sub_1E65E5C78() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_1E65E6C18();

    if ((v22 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = [a1 webpageURL];
  if (!v23)
  {
LABEL_11:

    v29 = type metadata accessor for URLContext(0);
    v30 = *(*(v29 - 8) + 56);
    v31 = v29;
    v32 = v48;

    return v30(v32, 1, 1, v31);
  }

  v24 = v23;
  sub_1E65D7478();

  v25 = *(v7 + 32);
  v25(v15, v13, v6);
  (*(v7 + 16))(v10, v15, v6);
  v26 = [a1 referrerURL];
  if (v26)
  {
    v27 = v26;
    sub_1E65D7478();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v7 + 56))(v5, v28, 1, v6);
  v34 = [a1 smu_sourceApplication];
  if (v34)
  {
    v35 = v10;
    v36 = v5;
    v37 = v25;
    v38 = v34;
    v47 = sub_1E65E5C78();
    v39 = v15;
    v41 = v40;

    v25 = v37;
    v5 = v36;
    v10 = v35;

    v42 = v39;
    v43 = v47;
    (*(v7 + 8))(v42, v6);
  }

  else
  {
    (*(v7 + 8))(v15, v6);

    v43 = 0;
    v41 = 0;
  }

  v44 = v48;
  v25(v48, v10, v6);
  v45 = type metadata accessor for URLContext(0);
  sub_1E6009E5C(v5, &v44[*(v45 + 20)]);
  v46 = &v44[*(v45 + 24)];
  *v46 = v43;
  v46[1] = v41;
  return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
}

uint64_t AppCoordinator.onAppActive()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for RouteDestination(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1E65E6058();
  v1[7] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E605CE30, v4, v3);
}

uint64_t sub_1E605CE30()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = sub_1E65E3B68();
  *(v0 + 80) = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  sub_1E65E3B38();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v4 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E605F9C4(v1, v3, type metadata accessor for RouteDestination);
  (*(v2 + 56))(v3, 0, 1, v4);
  sub_1E605D6E8(v3);
  v6 = *(v0 + 16);
  sub_1E5DFE50C(*(v0 + 24), &unk_1ED072040, &qword_1E65F0860);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v6 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  *(v0 + 112) = 0;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1E605D1C4;
  v8 = *(v0 + 48);

  return sub_1E6337384(v8, (v0 + 112));
}

uint64_t sub_1E605D1C4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E605D330, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 104) = v3;
    *v3 = v2;
    v3[1] = sub_1E605D4DC;

    return sub_1E6134ED4();
  }
}

uint64_t sub_1E605D348()
{
  v1 = *(v0 + 96);
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Unable to route app active: %@", v5, 0xCu);
    sub_1E5DFE50C(v6, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v6, -1, -1);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1E605D4DC;

  return sub_1E6134ED4();
}

uint64_t sub_1E605D4DC()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E605D5FC, v3, v2);
}

id sub_1E605D5FC()
{
  v1 = v0[2];
  sub_1E605DD88();
  result = [*(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v3 = result;
    v4 = v0[6];

    [v3 setAlpha_];

    sub_1E60602AC(v4, type metadata accessor for RouteDestination);

    v5 = v0[1];

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E605D6E8(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CC0, &qword_1E65EEAA8);
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = type metadata accessor for RouteDestination(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v43 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  sub_1E5DFD1CC(a1, v13, &unk_1ED072040, &qword_1E65F0860);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    return sub_1E5DFE50C(v13, &unk_1ED072040, &qword_1E65F0860);
  }

  sub_1E606030C(v13, v19, type metadata accessor for RouteDestination);
  v42 = v19;
  sub_1E605F9C4(v19, v11, type metadata accessor for RouteDestination);
  v22 = *(v15 + 56);
  v22(v11, 0, 1, v14);
  v23 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  sub_1E5DFD1CC(*v23 + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver, v48, &unk_1ED072050, &unk_1E65EEAB0);
  v24 = v49;
  if (v49)
  {
    v25 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v26 = v47;
    (*(v25 + 8))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  else
  {
    sub_1E5DFE50C(v48, &unk_1ED072050, &unk_1E65EEAB0);
    v26 = v47;
    v22(v47, 1, 1, v14);
  }

  v27 = v46;
  v28 = *(v45 + 48);
  sub_1E5DFD1CC(v11, v46, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5DFD1CC(v26, v27 + v28, &unk_1ED072040, &qword_1E65F0860);
  if (v20(v27, 1, v14) == 1)
  {
    sub_1E5DFE50C(v26, &unk_1ED072040, &qword_1E65F0860);
    sub_1E5DFE50C(v11, &unk_1ED072040, &qword_1E65F0860);
    if (v20((v27 + v28), 1, v14) == 1)
    {
      sub_1E5DFE50C(v27, &unk_1ED072040, &qword_1E65F0860);
      v29 = v42;
LABEL_9:
      v30 = v29;
      sub_1E6060374();
      swift_allocError();
      *v31 = 4;
      swift_willThrow();
      return sub_1E60602AC(v30, type metadata accessor for RouteDestination);
    }

    goto LABEL_12;
  }

  v32 = v44;
  sub_1E5DFD1CC(v27, v44, &unk_1ED072040, &qword_1E65F0860);
  if (v20((v27 + v28), 1, v14) == 1)
  {
    sub_1E5DFE50C(v47, &unk_1ED072040, &qword_1E65F0860);
    sub_1E5DFE50C(v11, &unk_1ED072040, &qword_1E65F0860);
    sub_1E60602AC(v32, type metadata accessor for RouteDestination);
LABEL_12:
    v33 = &qword_1ED073CC0;
    v34 = &qword_1E65EEAA8;
    v35 = v27;
LABEL_18:
    sub_1E5DFE50C(v35, v33, v34);
    v29 = v42;
    return sub_1E60602AC(v29, type metadata accessor for RouteDestination);
  }

  v36 = v43;
  sub_1E606030C(v27 + v28, v43, type metadata accessor for RouteDestination);
  v37 = _s10Blackbeard13RouteResourceO2eeoiySbAC_ACtFZ_0(v32, v36);
  v38 = v47;
  if ((v37 & 1) == 0 || (_s10Blackbeard11RouteSourceO2eeoiySbAC_ACtFZ_0(&v32[*(v14 + 20)], v36 + *(v14 + 20)) & 1) == 0)
  {
    sub_1E5DFE50C(v38, &unk_1ED072040, &qword_1E65F0860);
    sub_1E5DFE50C(v11, &unk_1ED072040, &qword_1E65F0860);
    sub_1E60602AC(v36, type metadata accessor for RouteDestination);
    sub_1E60602AC(v32, type metadata accessor for RouteDestination);
    v35 = v27;
    v33 = &unk_1ED072040;
    v34 = &qword_1E65F0860;
    goto LABEL_18;
  }

  v39 = v32;
  v40 = sub_1E63DAF94();
  sub_1E5DFE50C(v38, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5DFE50C(v11, &unk_1ED072040, &qword_1E65F0860);
  sub_1E60602AC(v36, type metadata accessor for RouteDestination);
  sub_1E60602AC(v39, type metadata accessor for RouteDestination);
  sub_1E5DFE50C(v27, &unk_1ED072040, &qword_1E65F0860);
  v29 = v42;
  if (v40)
  {
    goto LABEL_9;
  }

  return sub_1E60602AC(v29, type metadata accessor for RouteDestination);
}

uint64_t sub_1E605DD88()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteParticipantScope(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowsingIdentity(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  swift_getKeyPath();

  sub_1E65E4EC8();

  sub_1E606030C(v10, v8, type metadata accessor for BrowsingIdentity);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1 || (v12 = *(v11 + 48), sub_1E606030C(v8, v4, type metadata accessor for RemoteParticipantScope), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_1E60602AC(v4, type metadata accessor for RemoteParticipantScope), v14 = sub_1E65DA2A8(), result = (*(*(v14 - 8) + 8))(&v8[v12], v14), EnumCaseMultiPayload != 1))
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v16 = sub_1E65E3B68();
    __swift_project_value_buffer(v16, qword_1EE2EA2A0);
    sub_1E65E3B38();
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator), *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator + 24));
    return sub_1E65E5998();
  }

  return result;
}

uint64_t AppCoordinator.onTabSwitch(isReselection:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 169) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v2 + 40) = swift_task_alloc();
  v3 = type metadata accessor for RouteDestination(0);
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  *(v2 + 72) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073C68, &qword_1E65EE618);
  *(v2 + 80) = v4;
  *(v2 + 88) = *(v4 - 8);
  *(v2 + 96) = swift_task_alloc();
  type metadata accessor for AppComposer(0);
  *(v2 + 104) = swift_task_alloc();
  sub_1E65E6058();
  *(v2 + 112) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v2 + 120) = v6;
  *(v2 + 128) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E605E280, v6, v5);
}

id sub_1E605E280()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 169);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Tab Switch with reselection = %{BOOL}d", v5, 8u);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  v6 = *(v0 + 169);

  if (v6 == 1)
  {
    v7 = (*(v0 + 32) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    swift_getKeyPath();

    sub_1E65E4EC8();

    v8 = *(v0 + 24);
    if (v8 != 6)
    {
      v9 = *(v0 + 96);
      v10 = *(v0 + 104);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      v13 = *(v0 + 16);
      v14 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_1E605F9C4(*v14 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer, v10, type metadata accessor for AppComposer);
      v15 = swift_allocObject();
      swift_weakInit();

      sub_1E61147FC(sub_1E605FA2C, v15);

      sub_1E60602AC(v10, type metadata accessor for AppComposer);

      *v9 = v13;
      v9[1] = v8;
      (*(v12 + 104))(v9, *MEMORY[0x1E699CE48], v11);
      sub_1E65E4EE8();

      (*(v12 + 8))(v9, v11);
    }

    result = [*(*(v0 + 32) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
    if (result)
    {
      v17 = result;

      [v17 setAlpha_];

      v18 = *(v0 + 8);

      return v18();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = sub_1E65E60A8();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v23;

    sub_1E6059EAC(0, 0, v20, &unk_1E65EE620, v26);

    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v19 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E605F9C4(v19, v24, type metadata accessor for RouteDestination);
    (*(v22 + 56))(v24, 0, 1, v21);
    sub_1E605D6E8(v24);
    v27 = *(v0 + 32);
    sub_1E5DFE50C(*(v0 + 40), &unk_1ED072040, &qword_1E65F0860);
    __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v27 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
    *(v0 + 168) = 0;
    v28 = swift_task_alloc();
    *(v0 + 144) = v28;
    *v28 = v0;
    v28[1] = sub_1E605E954;
    v29 = *(v0 + 64);

    return sub_1E6337384(v29, (v0 + 168));
  }

  return result;
}

uint64_t sub_1E605E954()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E605EAC0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 160) = v3;
    *v3 = v2;
    v3[1] = sub_1E605EC6C;

    return sub_1E6134ED4();
  }
}

uint64_t sub_1E605EAD8()
{
  v1 = *(v0 + 152);
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Unable to route tab switch: %@", v5, 0xCu);
    sub_1E5DFE50C(v6, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v6, -1, -1);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  else
  {
  }

  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_1E605EC6C;

  return sub_1E6134ED4();
}

uint64_t sub_1E605EC6C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E605ED8C, v3, v2);
}

id sub_1E605ED8C()
{
  v1 = v0[8];
  sub_1E605DD88();
  sub_1E60602AC(v1, type metadata accessor for RouteDestination);
  result = [*(v0[4] + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController) view];
  if (result)
  {
    v3 = result;

    [v3 setAlpha_];

    v4 = v0[1];

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E605EEA8@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_4;
  }

  sub_1E5DF650C(result + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router, v14);

  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v13[0] = v9;
  v13[1] = v8;
  sub_1E63350F4(v13, v7);
  v11 = type metadata accessor for NavigationControllerRoutingContext(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    result = sub_1E5DFE50C(v7, &qword_1ED072A30, &qword_1E65EEA70);
LABEL_4:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = v11;
  *(a3 + 32) = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1E606030C(v7, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1E605F050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1E65D9BA8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E605F110, 0, 0);
}

uint64_t sub_1E605F110()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B38();
  *(v0 + 48) = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer;
  *(v0 + 112) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 56) = type metadata accessor for AppEnvironment(0);
  v2 = PrivacyPreferenceService.queryNoticePrivacyPreference.getter();
  *(v0 + 64) = v3;
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1E605F2CC;
  v5 = *(v0 + 40);

  return v7(v5);
}

uint64_t sub_1E605F2CC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E605F724;
  }

  else
  {
    v2 = sub_1E605F3E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E605F3E0()
{

  sub_1E65D9B78();
  if ((v1 & 1) != 0 && (v2 = sub_1E65D9B58(), v2 == sub_1E65D9B58()))
  {
    v3 = ServiceSubscriptionService.refreshServiceSubscription.getter();
    v0[11] = v4;
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1E605F574;

    return v8();
  }

  else
  {
    (*(v0[4] + 8))(v0[5], v0[3]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1E605F574()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E605F790;
  }

  else
  {
    v2 = sub_1E605F6A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E605F6A4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E605F724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E605F790()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E605F80C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E605F050(a1, v4, v5, v6);
}

uint64_t sub_1E605F8C0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E5DEF738(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E605F910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E605F050(a1, v4, v5, v6);
}

uint64_t sub_1E605F9C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E605FA38()
{
  result = qword_1ED073C70;
  if (!qword_1ED073C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C70);
  }

  return result;
}

unint64_t sub_1E605FAE0()
{
  result = qword_1ED073C78;
  if (!qword_1ED073C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C78);
  }

  return result;
}

unint64_t sub_1E605FB38()
{
  result = qword_1ED073C80;
  if (!qword_1ED073C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C80);
  }

  return result;
}

unint64_t sub_1E605FB90()
{
  result = qword_1ED073C88;
  if (!qword_1ED073C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C88);
  }

  return result;
}

unint64_t sub_1E605FBE8()
{
  result = qword_1ED073C90;
  if (!qword_1ED073C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C90);
  }

  return result;
}

unint64_t sub_1E605FC40()
{
  result = qword_1ED073C98;
  if (!qword_1ED073C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073C98);
  }

  return result;
}

unint64_t sub_1E605FC98()
{
  result = qword_1ED073CA0;
  if (!qword_1ED073CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CA0);
  }

  return result;
}

unint64_t sub_1E605FCF0()
{
  result = qword_1ED073CA8;
  if (!qword_1ED073CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CA8);
  }

  return result;
}

unint64_t sub_1E605FD48()
{
  result = qword_1ED073CB0;
  if (!qword_1ED073CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CB0);
  }

  return result;
}

unint64_t sub_1E605FDA0()
{
  result = qword_1ED073CB8;
  if (!qword_1ED073CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CB8);
  }

  return result;
}

void sub_1E605FDF4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E694E1F0](a1, a2, v11);
      sub_1E5DEF738(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1E5DEF738(0, a5, a6);
    if (sub_1E65E67A8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1E65E67B8();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1E65E6598();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1E65E65A8();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1E606000C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_1E60600D0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v4 = *(a3 + 48) + 40 * result;
    v5 = *(v4 + 32);
    v6 = *(v4 + 16);
    *a4 = *v4;
    *(a4 + 16) = v6;
    *(a4 + 32) = v5;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E6060134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEC00000079746976)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E60602AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E606030C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E6060374()
{
  result = qword_1ED078620;
  if (!qword_1ED078620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078620);
  }

  return result;
}

uint64_t sub_1E60603EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 56) = a4;
  sub_1E65E6058();
  *(v5 + 24) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6060488, v7, v6);
}

uint64_t sub_1E6060488()
{
  if (*(v0 + 56))
  {
    v4 = (*MEMORY[0x1E69CD898] + MEMORY[0x1E69CD898]);
    v1 = swift_task_alloc();
    *(v0 + 48) = v1;
    *v1 = v0;
    v1[1] = sub_1E6060570;

    return v4(1);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1E6060570()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v3, v2);
}

id sub_1E6060690()
{
  v0 = objc_allocWithZone(sub_1E65E55A8());

  return [v0 init];
}

uint64_t sub_1E60606C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1E65E6058();
  v8 = a1;
  v9 = sub_1E65E6048();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  sub_1E64B80F8(0, 0, v5, &unk_1E65EEBF8, v10);
}

uint64_t sub_1E6060848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E6060938();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E60608AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E6060938();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E6060910(uint64_t a1)
{
  sub_1E6060938();
  sub_1E65E40F8();
  __break(1u);
}

unint64_t sub_1E6060938()
{
  result = qword_1ED073CC8;
  if (!qword_1ED073CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073CC8);
  }

  return result;
}

uint64_t sub_1E606098C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E60603EC(a1, v4, v5, v6, v7);
}

uint64_t sub_1E6060A50()
{
  v0 = sub_1E65E07B8();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E0768();
  sub_1E65E0768();
  return sub_1E65E1678();
}

uint64_t sub_1E6060BC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12[-1] - v8;
  sub_1E5E20198(8, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD0, &qword_1E65EEC70);
  result = swift_dynamicCast();
  if (result)
  {
    v12[0] = a1;
    v12[1] = a2;
    v13 = a3;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_1E6060D28@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  v3 = type metadata accessor for AppStateService();
  Description = v3[-1].Description;
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v75 = v4;
  v76 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v68 - v6;
  v7 = type metadata accessor for AssetService();
  v8 = v7[-1].Description;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v12 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v13 = type metadata accessor for AppEnvironment(0);
  v70 = *(v13 + 28);
  v14 = *(v13 + 36);
  v86 = v14;
  v15 = sub_1E65DDCD8();
  v85 = v15;
  v92 = v16;
  KeyPath = swift_getKeyPath();
  v17 = v8[2];
  v87 = (v8 + 2);
  v88 = v17;
  v18 = v12;
  v17(&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v14, v7);
  v19 = *(v8 + 80);
  v82 = v2;
  v20 = (v19 + 16) & ~v19;
  v84 = v19;
  v72 = v7;
  v73 = v9 + 7;
  v21 = (v9 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v8[4];
  v83 = (v8 + 4);
  v74 = v23;
  v23(v22 + v20, v10, v7);
  v24 = (v22 + v21);
  v25 = v92;
  *v24 = v15;
  v24[1] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD0, &qword_1E65EEC70);
  v71 = v10;
  v27 = v26;
  swift_allocObject();

  v28 = sub_1E65E4E68();
  KeyPath = v28;
  v29 = v89;
  v89[3] = v27;
  v29[4] = &off_1F5FAA810;
  *v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1E65EA8E0;
  v79 = sub_1E65E60A8();
  v30 = *(v79 - 8);
  v81 = *(v30 + 56);
  v31 = v30 + 56;
  v32 = v90;
  v81(v90, 1, 1, v79);
  v68 = v31;
  v33 = Description;
  v34 = Description[2];
  v69 = v18;
  v35 = v76;
  v36 = v78;
  v34(v76, v18 + v70, v78);
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = (v75 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (v33[4])(v39 + v37, v35, v36);
  *(v39 + v38) = v82;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = KeyPath;
  swift_retain_n();

  v40 = sub_1E6059EAC(0, 0, v32, &unk_1E65EEC80, v39);
  v42 = v80;
  v41 = v81;
  *(v80 + 32) = v40;
  v43 = v32;
  v44 = v79;
  v41(v43, 1, 1, v79);
  v45 = v71;
  v46 = v72;
  v88(v71, v18 + v86, v72);
  v47 = (v84 + 32) & ~v84;
  v48 = (v73 + v47) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  v51 = v74;
  v74(v50 + v47, v45, v46);
  v52 = (v50 + v48);
  v54 = KeyPath;
  v53 = v92;
  *v52 = v85;
  v52[1] = v53;
  *(v50 + v49) = v54;

  v55 = v90;
  *(v42 + 40) = sub_1E6059EAC(0, 0, v90, &unk_1E65EEC90, v50);
  v56 = v44;
  v57 = v81;
  v81(v55, 1, 1, v56);
  v88(v45, v69 + v86, v46);
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v51(v58 + v47, v45, v46);
  v59 = (v58 + v48);
  v60 = KeyPath;
  v61 = v92;
  *v59 = v85;
  v59[1] = v61;
  *(v58 + v49) = v60;
  v62 = v60;

  v63 = sub_1E6059EAC(0, 0, v55, &unk_1E65EECA0, v58);
  v64 = v79;
  v65 = v80;
  *(v80 + 48) = v63;
  v89[5] = v65;
  v57(v55, 1, 1, v64);
  v66 = swift_allocObject();
  v66[2] = 0;
  v66[3] = 0;
  v66[4] = v82;
  v66[5] = v62;

  sub_1E6059EAC(0, 0, v55, &unk_1E65EECB0, v66);
}

uint64_t sub_1E6061454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  *(v5 + 80) = a1;
  *(v5 + 88) = a3;
  v7 = sub_1E65D7B58();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = *a2;
  *(v5 + 74) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E6061570, 0, 0);
}

uint64_t sub_1E6061570()
{
  if (*(v0 + 74))
  {
    v1 = sub_1E65DE4C8();
    sub_1E6001C44();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E699CAA0], v1);
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);

    v7 = AssetService.queryWorkoutAssetBundles.getter();
    *(v0 + 168) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = v6;
    v10 = inited + 32;
    *(inited + 40) = v5;
    v11 = sub_1E5F9B6E4(inited);
    *(v0 + 176) = v11;
    swift_setDeallocating();
    sub_1E6065BF0(v10);
    v13 = (v7 + *v7);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_1E60617B8;

    return v13(v11);
  }
}

uint64_t sub_1E60617B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1E6061B90;
  }

  else
  {

    *(v4 + 200) = a1;
    v5 = sub_1E60618F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60618F0()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);

  v8 = sub_1E6065EBC(v1, v7, v6);

  sub_1E6059C5C(v8, v2);

  sub_1E6066264(v2, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v9 = *(v0 + 136);
    sub_1E60662D4(*(v0 + 144));
    sub_1E60662D4(v9);
LABEL_6:
    v13 = 0;
    v11 = 1;
    goto LABEL_7;
  }

  (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 136), *(v0 + 112));
  *(v0 + 64) = sub_1E65D7B28();
  *(v0 + 72) = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v11 = 0;
  v12 = *(v0 + 73);
  v13 = 0x100000000;
  if (v12 <= 9)
  {
    if (((1 << v12) & 0x29E) != 0)
    {
      v14 = *(v0 + 144);
      v16 = *(v0 + 120);
      v15 = *(v0 + 128);
      v17 = *(v0 + 112);
      v18 = sub_1E65DE4C8();
      sub_1E6001C44();
      v19 = swift_allocError();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E699CAA8], v18);
      swift_willThrow();
      (*(v16 + 8))(v15, v17);
      sub_1E60662D4(v14);

      goto LABEL_6;
    }

    if (((1 << v12) & 0x140) != 0)
    {
      v13 = 0;
LABEL_14:
      v11 = 1;
      goto LABEL_15;
    }

    if (v12 == 5)
    {
      v13 = 1;
      goto LABEL_14;
    }
  }

LABEL_15:
  v24 = *(v0 + 144);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  sub_1E60662D4(v24);
LABEL_7:
  v21 = *(v0 + 80);
  *v21 = v13;
  *(v21 + 4) = BYTE4(v13);
  *(v21 + 5) = v11;

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1E6061B90()
{
  v1 = v0[24];

  v2 = v0[10];
  *v2 = 0;
  *(v2 + 4) = 256;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6061C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6061D6C, 0, 0);
}

uint64_t sub_1E6061D6C()
{
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[11] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6061E68;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6061E68()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6061F80, 0, 0);
}

uint64_t sub_1E6061F80()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E606205C;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v5);
}

uint64_t sub_1E606205C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6062158, 0, 0);
}

uint64_t sub_1E6062158()
{
  if (*(v0 + 128) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1E6062258;
    v4 = *(v0 + 32);

    return sub_1E6062464(v4);
  }
}

uint64_t sub_1E6062258()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60623DC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_1E606205C;
    v4 = v2[8];

    return MEMORY[0x1EEE6D9C8](v2 + 16, 0, 0, v4);
  }
}

uint64_t sub_1E60623DC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6062464(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_1E65D7B58();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60625D0, 0, 0);
}

uint64_t sub_1E60625D0()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  type metadata accessor for AppEnvironment(0);
  v2 = AssetService.queryAllAssetBundles.getter();
  *(v0 + 152) = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1E6062798;

  return v6();
}

uint64_t sub_1E6062798(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_1E60634B8;
  }

  else
  {

    v4 = sub_1E60628E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60628E8(uint64_t a1)
{
  v73 = v1;
  v2 = v1;
  v72 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 168);
  v4 = *(v3 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = v3;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_49;
  }

  while (2)
  {
    v63 = &v63;
    v64 = v5;
    v5 = *(v2 + 120);
    MEMORY[0x1EEE9AC00](a1);
    v65 = &v63 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v65, v7);
    v66 = 0;
    v8 = 0;
    v9 = v6 + 56;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v69 = v5 + 16;
    v70 = v5;
    v68 = (v5 + 8);
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v71 = (v12 - 1) & v12;
LABEL_12:
      v17 = v14 | (v8 << 6);
      v18 = *(v2 + 144);
      v19 = *(v2 + 112);
      v5 = v6;
      v20 = *(v6 + 48);
      v21 = *(v70 + 72);
      v67 = v17;
      (*(v70 + 16))(v18, v20 + v21 * v17, v19);
      v22 = sub_1E65D7B48();
      v24 = v23;
      v26 = sub_1E65DDCD8();
      v27 = v22;
      v3 = *(v2 + 144);
      v28 = v2;
      v29 = *(v2 + 112);
      if (v27 == v26 && v24 == v25)
      {

        (*v68)(v3, v29);
        v2 = v28;
        v6 = v5;
        v12 = v71;
LABEL_19:
        *&v65[(v67 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v67;
        if (__OFADD__(v66++, 1))
        {
          __break(1u);
LABEL_22:
          v33 = sub_1E608850C(v65, v64, v66, *(v2 + 168));
          goto LABEL_23;
        }
      }

      else
      {
        v31 = sub_1E65E6C18();

        (*v68)(v3, v29);
        v2 = v28;
        v6 = v5;
        v12 = v71;
        if (v31)
        {
          goto LABEL_19;
        }
      }
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
        goto LABEL_22;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v71 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_49:

    if (swift_stdlib_isStackAllocationSafe())
    {

      v6 = *(v2 + 168);
      continue;
    }

    break;
  }

  v58 = *(v2 + 168);
  v57 = *(v2 + 176);
  v59 = v2;
  v60 = swift_slowAlloc();
  v61 = v57;
  v62 = sub_1E6065B38(v60, v5, v58, sub_1E6064D18, 0);

  result = MEMORY[0x1E694F1C0](v60, -1, -1);
  if (v61)
  {
    return result;
  }

  v33 = v62;
  v2 = v59;
LABEL_23:
  *(v2 + 184) = v33;
  v34 = *(v2 + 120);
  v35 = *(v33 + 32);
  *(v2 + 34) = v35;
  v36 = -1;
  v37 = -1 << v35;
  if (-(-1 << v35) < 64)
  {
    v36 = ~(-1 << -(-1 << v35));
  }

  v38 = v36 & *(v33 + 56);
  if (!v38)
  {
    v40 = 0;
    v41 = ((63 - v37) >> 6) - 1;
    while (v41 != v40)
    {
      v39 = v40 + 1;
      v38 = *(v33 + 8 * v40++ + 64);
      if (v38)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_37;
  }

  v39 = 0;
LABEL_30:
  *(v2 + 192) = v38;
  *(v2 + 200) = v39;
  v42 = *(v2 + 128);
  v43 = *(v2 + 136);
  v44 = *(v2 + 112);
  (*(v34 + 16))(v43, *(v33 + 48) + *(v34 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v44);
  (*(v34 + 32))(v42, v43, v44);
  *(v2 + 40) = sub_1E65D7B28();
  *(v2 + 48) = v45 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v46 = *(v2 + 33);
  if (v46 > 4)
  {
    if (*(v2 + 33) <= 6u)
    {
      if (v46 == 5)
      {
        v52 = xmmword_1E65EEC10;
        goto LABEL_45;
      }
    }

    else
    {
      if (v46 == 7)
      {
LABEL_32:
        v48 = *(v2 + 120);
        v47 = *(v2 + 128);
        v49 = *(v2 + 112);

        (*(v48 + 8))(v47, v49);
LABEL_38:

        v50 = *(v2 + 8);

        return v50();
      }

      if (v46 != 8)
      {
        (*(*(v2 + 120) + 8))(*(v2 + 128), *(v2 + 112));
LABEL_37:

        goto LABEL_38;
      }
    }

    v52 = xmmword_1E65EEC20;
    goto LABEL_45;
  }

  if (v46 - 1 < 4)
  {
    goto LABEL_32;
  }

  v52 = xmmword_1E65EEC30;
LABEL_45:
  *(v2 + 208) = v52;
  v53 = sub_1E65D7B38();
  *(v2 + 224) = v54;
  *(v2 + 16) = v53;
  *(v2 + 24) = v54;
  *(v2 + 32) = 0;
  *(v2 + 232) = sub_1E65E6058();
  *(v2 + 240) = sub_1E65E6048();
  v56 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6062F54, v56, v55);
}

uint64_t sub_1E6062F54()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6063010, 0, 0);
}

uint64_t sub_1E6063010(uint64_t a1)
{
  *(v1 + 56) = *(v1 + 208) | *(v1 + 216);
  *(v1 + 64) = 0;
  *(v1 + 248) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60630E0, v3, v2);
}

uint64_t sub_1E60630E0()
{

  sub_1E65E4E38();

  return MEMORY[0x1EEE6DFA0](sub_1E6063190, 0, 0);
}

uint64_t sub_1E6063190()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 200);
  v5 = (*(v0 + 192) - 1) & *(v0 + 192);
  if (!v5)
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
      }

      v6 = *(v0 + 184);
      if (v7 >= (((1 << *(v0 + 34)) + 63) >> 6))
      {
        goto LABEL_14;
      }

      v5 = *(v6 + 8 * v7 + 56);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }
  }

  v6 = *(v0 + 184);
LABEL_7:
  *(v0 + 192) = v5;
  *(v0 + 200) = v4;
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  (*(v11 + 16))(v9, *(v6 + 48) + *(v11 + 72) * (__clz(__rbit64(v5)) | (v4 << 6)), v10);
  (*(v11 + 32))(v8, v9, v10);
  *(v0 + 40) = sub_1E65D7B28();
  *(v0 + 48) = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v13 = *(v0 + 33);
  if (v13 > 4)
  {
    if (*(v0 + 33) <= 6u)
    {
      if (v13 == 5)
      {
        v19 = xmmword_1E65EEC10;
        goto LABEL_22;
      }
    }

    else
    {
      if (v13 == 7)
      {
        goto LABEL_9;
      }

      if (v13 != 8)
      {
        (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
LABEL_14:

        goto LABEL_15;
      }
    }

    v19 = xmmword_1E65EEC20;
    goto LABEL_22;
  }

  if (v13 - 1 < 4)
  {
LABEL_9:
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);

    (*(v15 + 8))(v14, v16);
LABEL_15:

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = xmmword_1E65EEC30;
LABEL_22:
  *(v0 + 208) = v19;
  v20 = sub_1E65D7B38();
  *(v0 + 224) = v21;
  *(v0 + 16) = v20;
  *(v0 + 24) = v21;
  *(v0 + 32) = 0;
  *(v0 + 232) = sub_1E65E6058();
  *(v0 + 240) = sub_1E65E6048();
  v23 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6062F54, v23, v22);
}

uint64_t sub_1E60634B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6063580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_1E65D9098();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460);
  v7[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D08, &qword_1E65EECE8);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D10, &qword_1E65EECF0);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60637B4, 0, 0);
}

uint64_t sub_1E60637B4()
{
  v1 = AssetService.makeAssetBundleProgressUpdatedStream.getter();
  v0[26] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_1E60638B0;
  v4 = v0[22];

  return v6(v4);
}

uint64_t sub_1E60638B0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1E6064114;
  }

  else
  {
    v2 = sub_1E60639E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60639E0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1E6063ABC;
  v5 = v0[23];
  v6 = v0[19];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6063ABC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6063BB8, 0, 0);
}

uint64_t sub_1E6063BB8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_2:
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v4 = *(v0 + 8);

    return v4();
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  (*(v3 + 32))(*(v0 + 144), v1, v2);
  if (sub_1E65D9078() == v7 && v8 == v6)
  {
  }

  else
  {
    v10 = sub_1E65E6C18();

    if ((v10 & 1) == 0)
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      goto LABEL_2;
    }
  }

  v11 = sub_1E65D9068();
  *(v0 + 240) = v12;
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  *(v0 + 32) = 0;
  *(v0 + 248) = sub_1E65E6058();
  *(v0 + 256) = sub_1E65E6048();
  v14 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6063DAC, v14, v13);
}

uint64_t sub_1E6063DAC()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6063E3C, 0, 0);
}

uint64_t sub_1E6063E3C()
{
  sub_1E65D9088();
  if (v1 >= 1.0)
  {
    *(v0 + 56) = 0x10000000001;
    *(v0 + 64) = 0;
    *(v0 + 264) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v7;
    v6 = sub_1E6063F38;
  }

  else
  {
    sub_1E65D9088();
    *(v0 + 40) = v2;
    *(v0 + 48) = 0;
    *(v0 + 272) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();
    v5 = v4;
    v6 = sub_1E6063FB4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1E6063F38()
{

  sub_1E65E4E38();

  return MEMORY[0x1EEE6DFA0](sub_1E6066340, 0, 0);
}

uint64_t sub_1E6063FB4()
{

  sub_1E65E4E38();

  return MEMORY[0x1EEE6DFA0](sub_1E6064030, 0, 0);
}

uint64_t sub_1E6064030()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1E6063ABC;
  v5 = v0[23];
  v6 = v0[19];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6064114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60641AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CD8, &qword_1E65EECC0);
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_1E65D7B58();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0);
  v7[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  v7[20] = v10;
  v7[21] = *(v10 - 8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF8, &qword_1E65EECE0);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60643E0, 0, 0);
}

uint64_t sub_1E60643E0()
{
  v1 = AssetService.makeAssetBundleUpdatedStream.getter();
  v0[26] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_1E60644DC;
  v4 = v0[22];

  return v6(v4);
}

uint64_t sub_1E60644DC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1E606633C;
  }

  else
  {
    v2 = sub_1E606460C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E606460C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1E60646E8;
  v5 = v0[23];
  v6 = v0[19];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E60646E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E60647E4, 0, 0);
}

uint64_t sub_1E60647E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
LABEL_13:

    v14 = *(v0 + 8);

    return v14();
  }

  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  (*(v3 + 32))(*(v0 + 144), v1, v2);
  if (sub_1E65D7B48() == v5 && v6 == v4)
  {
  }

  else
  {
    v8 = sub_1E65E6C18();

    if ((v8 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  *(v0 + 40) = sub_1E65D7B28();
  *(v0 + 48) = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
  sub_1E65D7FB8();
  v10 = *(v0 + 33);
  if (v10 > 4)
  {
    if (*(v0 + 33) <= 6u)
    {
      if (v10 == 5)
      {
        v16 = xmmword_1E65EEC10;
        goto LABEL_23;
      }
    }

    else if (v10 != 8)
    {
      goto LABEL_12;
    }

    v16 = xmmword_1E65EEC20;
    goto LABEL_23;
  }

  if (v10 - 1 < 4)
  {
LABEL_12:
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 184);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    (*(v12 + 8))(v11, v13);
    goto LABEL_13;
  }

  v16 = xmmword_1E65EEC30;
LABEL_23:
  *(v0 + 240) = v16;
  v17 = sub_1E65D7B38();
  *(v0 + 256) = v18;
  *(v0 + 16) = v17;
  *(v0 + 24) = v18;
  *(v0 + 32) = 0;
  *(v0 + 264) = sub_1E65E6058();
  *(v0 + 272) = sub_1E65E6048();
  v20 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6064A8C, v20, v19);
}

uint64_t sub_1E6064A8C()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6064B1C, 0, 0);
}

uint64_t sub_1E6064B1C(uint64_t a1)
{
  *(v1 + 56) = *(v1 + 240) | *(v1 + 248);
  *(v1 + 64) = 0;
  *(v1 + 280) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6064BB8, v3, v2);
}

uint64_t sub_1E6064BB8()
{

  sub_1E65E4E38();

  return MEMORY[0x1EEE6DFA0](sub_1E6064C34, 0, 0);
}

uint64_t sub_1E6064C34()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1E60646E8;
  v5 = v0[23];
  v6 = v0[19];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6064D18(uint64_t a1)
{
  v1 = sub_1E65D7B48();
  v3 = v2;
  if (v1 == sub_1E65DDCD8() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();
  }

  return v5 & 1;
}

uint64_t sub_1E6064DA4(uint64_t a1, uint64_t a2)
{
  Description = type metadata accessor for AssetService()[-1].Description;
  v7 = (*(Description + 80) + 16) & ~*(Description + 80);
  v8 = (v2 + ((Description[8] + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFA78C;

  return sub_1E6061454(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_1E6064EC8(uint64_t a1)
{
  Description = type metadata accessor for AppStateService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = (Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E6061C34(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1E6065000(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AssetService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = (Description[8] + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E6063580(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for AssetService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 32) & ~*(Description + 80);
  swift_unknownObjectRelease();
  Description[1](v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E6065238(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AssetService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = (Description[8] + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E60641AC(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_1E606537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6062464(a5);
}

uint64_t sub_1E6065418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E606537C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E60655D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  result = MEMORY[0x1EEE9AC00](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v10 + 16;
  v37 = v10;
  v34 = 0;
  v35 = (v10 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      return (*v35)(v23, v22);
    }

    v28 = v26;
    result = (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        return v32(v33, v31, v34, v30);
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6065840(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v34 = a4;
  v25 = a2;
  v26 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  result = MEMORY[0x1EEE9AC00](v33);
  v31 = &v25 - v7;
  v32 = v6;
  v8 = 0;
  v35 = a3;
  v9 = *(a3 + 56);
  v27 = 0;
  v28 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v29 = v6 + 8;
  v30 = v6 + 16;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v36 = (v12 - 1) & v12;
LABEL_11:
    v18 = v31;
    v17 = v32;
    v19 = v14 | (v8 << 6);
    v20 = v33;
    (*(v32 + 16))(v31, *(v35 + 48) + *(v32 + 72) * v19, v33);
    v21 = v37;
    v22 = v34(v18);
    result = (*(v17 + 8))(v18, v20);
    v37 = v21;
    if (v21)
    {
      return result;
    }

    v12 = v36;
    if (v22)
    {
      *(v26 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v35;

        return sub_1E608A040(v26, v25, v27, v24);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v28 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v36 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1E6065A94(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1E6065C44(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1E6065B38(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1E60655D8(result, a2, a3, a4, a5, MEMORY[0x1E69CB020], sub_1E608850C);

    return v10;
  }

  return result;
}

uint64_t sub_1E6065C44(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v35 = a5;
  v36 = a4;
  v29 = a1;
  v6 = sub_1E65D7B58();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v33 = v8;
  v34 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v32 = v8 + 16;
  v30 = 0;
  v31 = (v8 + 8);
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v11 << 6);
    (*(v33 + 16))(v10, *(v34 + 48) + *(v33 + 72) * v23, v6);
    if (sub_1E65D7B48() == v36 && v24 == v35)
    {

      result = (*v31)(v10, v6);
      goto LABEL_15;
    }

    v19 = sub_1E65E6C18();

    result = (*v31)(v10, v6);
    if (v19)
    {
LABEL_15:
      *(v29 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_18:
        v26 = v34;

        return sub_1E608850C(v29, v28, v30, v26);
      }
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v22 = *(v13 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v17 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6065EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v38 = *MEMORY[0x1E69E9840];
  v37 = sub_1E65D7B58();
  v7 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;
  v35 = a3;

  if (v10 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v28 = v11;
    v29 = v4;
    v27 = &v27;
    MEMORY[0x1EEE9AC00](v13);
    v30 = &v27 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v14 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v11 = v16 & *(a1 + 56);
    v4 = (v15 + 63) >> 6;
    v33 = v7 + 16;
    v34 = v7;
    v31 = 0;
    v32 = (v7 + 8);
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v20 = v17 | (v14 << 6);
      v7 = a1;
      (*(v34 + 16))(v9, *(a1 + 48) + *(v34 + 72) * v20, v37);
      if (sub_1E65D7B48() == v36 && v21 == v35)
      {

        (*v32)(v9, v37);
        goto LABEL_16;
      }

      v12 = sub_1E65E6C18();

      (*v32)(v9, v37);
      if (v12)
      {
LABEL_16:
        *&v30[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_19:
          v23 = sub_1E608850C(v30, v28, v31, a1);

          return v23;
        }
      }
    }

    v18 = v14;
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v14 >= v4)
      {
        goto LABEL_19;
      }

      v19 = *(a1 + 56 + 8 * v14);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v25 = swift_slowAlloc();
  v26 = v35;

  v23 = sub_1E6065A94(v25, v11, a1, v36, v26);

  MEMORY[0x1E694F1C0](v25, -1, -1);

  return v23;
}

uint64_t sub_1E6066264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60662D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6066344(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v28 = v1;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1E601C224(0, v6, 0);
  v7 = v36;
  v8 = a1 + 56;
  result = sub_1E65E6748();
  v10 = result;
  v11 = 0;
  v29 = a1 + 64;
  v30 = v6;
  v31 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v34 = v11;
    v35 = v14;
    v15 = *(a1 + 48);
    v16 = sub_1E65D9D28();
    (*(*(v16 - 8) + 16))(&v5[*(v33 + 48)], v15 + *(*(v16 - 8) + 72) * v10, v16);
    *v5 = sub_1E65D9D08();
    *(v5 + 1) = v17;
    v5[16] = v18 & 1;
    v36 = v7;
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1E601C224((v19 > 1), v20 + 1, 1);
      v7 = v36;
    }

    *(v7 + 16) = v20 + 1;
    result = sub_1E60697E0(v5, v7 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v31;
    v21 = *(v31 + 8 * v13);
    if ((v21 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v35 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v10 & 0x3F));
    if (v22)
    {
      v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v25 = (v29 + 8 * v13);
      while (v24 < (v12 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1E5F87098(v10, v35, 0);
          v12 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v10, v35, 0);
    }

LABEL_4:
    v11 = v34 + 1;
    v10 = v12;
    if (v34 + 1 == v30)
    {
      return v7;
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
  return result;
}

uint64_t sub_1E6066654()
{
  result = sub_1E65E5C48();
  qword_1ED096290 = result;
  return result;
}

uint64_t sub_1E606668C()
{
  result = sub_1E65E5C48();
  qword_1ED096298 = result;
  return result;
}

uint64_t sub_1E60666C4()
{
  result = sub_1E65E5C48();
  qword_1ED0962A0 = result;
  return result;
}

uint64_t sub_1E60666FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_1E65E60A8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1E5DF650C(a7, v23);
  sub_1E65E6058();

  v18 = sub_1E65E6048();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  sub_1E5DF599C(v23, v19 + 64);
  *(v19 + 104) = a1;
  *(v19 + 112) = a2;
  sub_1E64B80F8(0, 0, v16, &unk_1E65EED08, v19);
}

uint64_t sub_1E6066884(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 32) = v14;
  *(v8 + 40) = v15;
  *(v8 + 104) = a7;
  *(v8 + 16) = a6;
  *(v8 + 24) = a8;
  sub_1E65D7848();
  *(v8 + 48) = swift_task_alloc();
  sub_1E65E5C28();
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = sub_1E65E6058();
  *(v8 + 72) = sub_1E65E6048();
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v8 + 80) = v10;
  *v10 = v8;
  v10[1] = sub_1E6066A00;

  return v12();
}

uint64_t sub_1E6066A00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1E65E5FC8();
    v7 = v6;
    v8 = sub_1E6066F0C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1E65E5FC8();
    v7 = v9;
    v8 = sub_1E6066B80;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1E6066B80()
{
  v21 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = sub_1E6066344(v1);

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D20, &qword_1E65EED10);
    v4 = sub_1E65E6A28();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v20[0] = v4;
  sub_1E60690A0(v3, 1, v20);
  if (v2)
  {

    return swift_unexpectedError();
  }

  else
  {
    v6 = *(v0 + 104);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = v20[0];
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
    v11 = sub_1E6403C6C(sub_1E6069534, v10, &unk_1F5FA8338);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E65EA660;
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_1E65D77A8();
    sub_1E65E5D48();
    if (qword_1ED071930 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED0962A0;
    if (v11 >> 62)
    {
      sub_1E5DEF738(0, &qword_1ED073D28, 0x1E69DCC78);
      v19 = v15;

      sub_1E65E69E8();
    }

    else
    {
      v16 = qword_1ED0962A0;

      sub_1E65E6C38();
      sub_1E5DEF738(0, &qword_1ED073D28, 0x1E69DCC78);
    }

    v17 = *(v0 + 32);

    sub_1E5DEF738(0, &qword_1ED073D30, 0x1E69DCC60);
    *(v12 + 32) = sub_1E65E64E8();
    v17(v12);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1E6066F0C()
{
  v1 = v0[11];
  v2 = v0[4];

  v2(MEMORY[0x1E69E7CC0]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6066FA4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6066884(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t sub_1E6067098@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v45 = a5;
  v42 = a4;
  LODWORD(v41) = a3;
  v44 = sub_1E65D9D28();
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v44);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v37 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v37 - v13;
  v15 = *a1;
  v48 = *a1;
  sub_1E6069558();
  sub_1E65D8008();
  v16 = v46;
  v17 = v47;
  if (!*(a2 + 16))
  {
    result = sub_1E5F87058(v46, *(&v46 + 1), v47);
    goto LABEL_6;
  }

  v39 = v14;
  v40 = v7;
  v18 = sub_1E6417318(v46, *(&v46 + 1), v47);
  v20 = v19;
  result = sub_1E5F87058(v16, *(&v16 + 1), v17);
  if ((v20 & 1) == 0)
  {
LABEL_6:
    v30 = 0;
    goto LABEL_9;
  }

  v22 = v40;
  v23 = *(a2 + 56) + *(v40 + 72) * v18;
  v24 = *(v40 + 16);
  v25 = v44;
  v24(v12, v23, v44);
  v38 = *(v22 + 32);
  v38(v39, v12, v25);
  v26 = sub_1E65D9D18();
  v37[0] = v27;
  v37[1] = v26;
  sub_1E6289E48(v41 & 1, v15);
  if (v28)
  {
    v29 = sub_1E65E5C48();
    v41 = [objc_opt_self() systemImageNamed_];
  }

  else
  {
    v41 = 0;
  }

  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  sub_1E5DF650C(v42, &v46);
  v31 = v43;
  v32 = v44;
  v33 = v39;
  v24(v43, v39, v44);
  v34 = v40;
  v35 = (*(v40 + 80) + 56) & ~*(v40 + 80);
  v36 = swift_allocObject();
  sub_1E5DF599C(&v46, v36 + 16);
  v38((v36 + v35), v31, v32);
  v30 = sub_1E65E65C8();
  result = (*(v34 + 8))(v33, v32);
LABEL_9:
  *v45 = v30;
  return result;
}

uint64_t sub_1E60673E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65D9D28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1E5DF650C(a2, v19);
  (*(v6 + 16))(v8, a3, v5);
  sub_1E65E6058();
  v13 = sub_1E65E6048();
  v14 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_1E5DF599C(v19, v15 + 32);
  (*(v6 + 32))(v15 + v14, v8, v5);
  sub_1E6059EAC(0, 0, v11, &unk_1E65EED20, v15);
}

uint64_t sub_1E60675EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for RouteSource(0);
  v5[4] = swift_task_alloc();
  sub_1E65E6058();
  v5[5] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E60676B0, v7, v6);
}

uint64_t sub_1E60676B0()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v2 = sub_1E65D9CD8();
  v4 = v3;
  *(v0 + 64) = v3;
  sub_1E6226DB8();
  v5 = *v1;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1E60677B8;
  v7 = *(v0 + 32);

  return sub_1E6226DFC(1, v2, v4, 0, v7, v5);
}

uint64_t sub_1E60677B8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_1E6069714(v3);
  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_1E60679A0;
  }

  else
  {
    v6 = sub_1E6067934;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E6067934()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60679A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6067A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6067AF0, v6, v5);
}

uint64_t sub_1E6067AF0()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1E6226DB8();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067BDC;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(0, 1, 0, 1, v4, v2);
}

uint64_t sub_1E6067BDC()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  sub_1E6069714(v3);
  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1E6069D84;
  }

  else
  {
    v6 = sub_1E6069D80;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E6067D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6067E18, v6, v5);
}

uint64_t sub_1E6067E18()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1E6226DB8();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067F04;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(0, 0, 0, 1, v4, v2);
}

uint64_t sub_1E6067F04()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  sub_1E6069714(v3);
  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1E60680C8;
  }

  else
  {
    v6 = sub_1E606805C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E606805C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60680C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6068154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6068218, v6, v5);
}

uint64_t sub_1E6068218()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1E6226DB8();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067BDC;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(0, 2, 0, 1, v4, v2);
}

uint64_t sub_1E6068324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E60683E8, v6, v5);
}

uint64_t sub_1E60683E8()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1E6226DB8();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067BDC;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(0, 5, 0, 1, v4, v2);
}

uint64_t sub_1E60684F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E60685B8, v6, v5);
}

uint64_t sub_1E60685B8()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1E6226DB8();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067BDC;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(0, 3, 0, 1, v4, v2);
}

uint64_t sub_1E60686A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5DF650C(a5, v19);
  sub_1E65E6058();

  v14 = sub_1E65E6048();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  sub_1E5DF599C(v19, (v15 + 8));
  sub_1E64B80F8(0, 0, v12, &unk_1E65EED38, v15);
}

uint64_t sub_1E6068814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[7] = a6;
  sub_1E65D7848();
  v8[10] = swift_task_alloc();
  sub_1E65E5C28();
  v8[11] = swift_task_alloc();
  v8[12] = sub_1E65E6058();
  v8[13] = sub_1E65E6048();
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v8[14] = v10;
  *v10 = v8;
  v10[1] = sub_1E6068984;

  return v12();
}

uint64_t sub_1E6068984()
{
  *(*v1 + 120) = v0;

  v3 = sub_1E65E5FC8();
  if (v0)
  {
    v4 = sub_1E6068D2C;
  }

  else
  {
    v4 = sub_1E6068AE0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E6068AE0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E65EA660;
  sub_1E5DEF738(0, &qword_1ED073D38, 0x1E69DC628);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v6 = sub_1E65E5C48();
  v7 = [objc_opt_self() smm:v6 systemImageNamed:?];

  sub_1E5DF650C(v1, v0 + 16);
  v8 = swift_allocObject();
  sub_1E5DF599C((v0 + 16), v8 + 16);
  *(v3 + 32) = sub_1E65E65C8();
  v2(v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E6068D2C()
{
  v1 = v0[15];
  v2 = v0[7];

  v2(MEMORY[0x1E69E7CC0]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6068DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1E5DF650C(a2, v15);
  sub_1E65E6058();
  v10 = sub_1E65E6048();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  sub_1E5DF599C(v15, v11 + 32);
  sub_1E6059EAC(0, 0, v8, a4, v11);
}

uint64_t sub_1E6068EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for RouteSource(0);
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E6068FB4, v6, v5);
}

uint64_t sub_1E6068FB4()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_1E6226DB8();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1E6067BDC;
  v4 = *(v0 + 24);

  return sub_1E6226DFC(1, 0, 0, 4, v4, v2);
}

void sub_1E60690A0(uint64_t a1, char a2, void *a3)
{
  v50 = a3;
  v6 = sub_1E65D9D28();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v48 = v39 - v12;
  v47 = *(a1 + 16);
  if (!v47)
  {
LABEL_13:

    return;
  }

  v39[1] = v3;
  v40 = v11;
  v13 = 0;
  v14 = *(v10 + 48);
  v45 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v46 = v14;
  v15 = (v7 + 32);
  v43 = v7;
  v44 = v6;
  v41 = (v7 + 32);
  v42 = a1;
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
      sub_1E65E6C68();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v48;
    sub_1E6069770(v45 + *(v11 + 72) * v13, v48);
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v53 = *v16;
    v18 = v53;
    v54 = v17;
    v55 = v19;
    v20 = *v15;
    (*v15)(v49, v16 + v46, v6);
    v21 = *v50;
    v23 = sub_1E6417318(v18, v17, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1E6424680();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = v49;
    v31 = *v50;
    *(*v50 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v32 = v31[6] + 24 * v23;
    *v32 = v18;
    *(v32 + 8) = v17;
    *(v32 + 16) = v19;
    v6 = v44;
    v33 = v31[7] + *(v43 + 72) * v23;
    v15 = v41;
    v20(v33, v30, v44);
    v34 = v31[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    ++v13;
    v31[2] = v36;
    a2 = 1;
    a1 = v42;
    v11 = v40;
    if (v47 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_1E641B714(v26, a2 & 1);
  v28 = sub_1E6417318(v18, v17, v19);
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocError();
  swift_willThrow();

  v56 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v43 + 8))(v49, v44);
    sub_1E5F87058(v18, v17, v19);

    return;
  }

LABEL_22:
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

unint64_t sub_1E6069558()
{
  result = qword_1EE2D70B0;
  if (!qword_1EE2D70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70B0);
  }

  return result;
}

uint64_t sub_1E60695AC(uint64_t a1)
{
  v3 = *(sub_1E65D9D28() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E60673E0(a1, v1 + 16, v4);
}

uint64_t sub_1E6069620(uint64_t a1)
{
  v4 = *(sub_1E65D9D28() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60675EC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E6069714(uint64_t a1)
{
  v2 = type metadata accessor for RouteSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6069770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60697E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073218, &qword_1E65ED070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6069850(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6068814(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1E6069960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6068EF0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069A10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60684F4(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069AC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6068324(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069B70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6068154(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069C20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6067D54(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069CD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6067A2C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E6069D88@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, BOOL *a4@<X8>)
{
  v7 = sub_1E65DA2A8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D34C(a1, v16, type metadata accessor for BrowsingIdentity);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    type metadata accessor for AppComposer(0);
    v18 = sub_1E65DAE38();
    result = sub_1E65DAE38();
    *a4 = v18 != result;
  }

  else
  {
    v20 = (*(v8 + 32))(v13, &v16[*(v17 + 48)], v7);
    a3(v20);
    sub_1E60733D0(&qword_1ED071E28, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC10]);
    v21 = sub_1E65E6718();
    v22 = *(v8 + 8);
    v22(v11, v7);
    v22(v13, v7);
    *a4 = v21 & 1;
    return sub_1E6073418(v16);
  }

  return result;
}

uint64_t sub_1E606A028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v182 = a2;
  v183 = a1;
  v190 = a3;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D48, &qword_1E65EEDA0);
  v154 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v152 = &v151 - v5;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D50, &qword_1E65EEDA8);
  v155 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v153 = &v151 - v6;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D58, &qword_1E65EEDB0);
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v151 - v7;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D60, &qword_1E65EEDB8);
  v8 = MEMORY[0x1EEE9AC00](v188);
  v161 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v160 = &v151 - v10;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D68, &qword_1E65EEDC0);
  MEMORY[0x1EEE9AC00](v187);
  v189 = &v151 - v11;
  v181 = sub_1E65D76F8();
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v200 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D70, &qword_1E65EEDC8);
  v164 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v162 = &v151 - v13;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D78, &qword_1E65EEDD0);
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v163 = &v151 - v14;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D80, &qword_1E65EEDD8);
  MEMORY[0x1EEE9AC00](v168);
  v169 = &v151 - v15;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D88, &qword_1E65EEDE0);
  v16 = MEMORY[0x1EEE9AC00](v184);
  v171 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v151 - v18;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  MEMORY[0x1EEE9AC00](v186);
  v185 = &v151 - v19;
  v20 = type metadata accessor for AppComposer(0);
  v21 = *(v20 - 8);
  v177 = (v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8);
  v176 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v179 = &v151 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v195 = &v151 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v151 - v29;
  v194 = (&v151 - v29);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v151 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v151 - v34;
  sub_1E5E1D34C(v4, &v151 - v34, type metadata accessor for AppComposer);
  v36 = *(v21 + 80);
  v37 = (v36 + 16) & ~v36;
  v191 = swift_allocObject();
  v199 = v35;
  sub_1E5E1FA80(v35, v191 + v37);
  v202 = v4;
  v193 = type metadata accessor for AppComposer;
  sub_1E5E1D34C(v4, v33, type metadata accessor for AppComposer);
  v197 = v37 + v22;
  v38 = swift_allocObject();
  v198 = v37;
  v196 = v38;
  sub_1E5E1FA80(v33, v38 + v37);
  sub_1E65E5148();
  v39 = sub_1E65E5138();
  v201 = v39;
  sub_1E5E1D34C(v4, v30, type metadata accessor for AppComposer);
  v174 = ((v36 + 32) & ~v36);
  v40 = (v174 + v22) & 0xFFFFFFFFFFFFFFF8;
  v41 = v174 + v22;
  v173 = (v174 + v22);
  v42 = swift_allocObject();
  v192 = &unk_1E65EEDF0;
  v43 = v191;
  *(v42 + 16) = &unk_1E65EEDF0;
  *(v42 + 24) = v43;
  sub_1E5E1FA80(v194, v42 + ((v36 + 32) & ~v36));
  v41[v42] = 0;
  v44 = v42 + v40;
  v194 = sub_1E606C134;
  *(v44 + 8) = sub_1E606C134;
  *(v44 + 16) = v38;
  v45 = (v42 + ((v40 + 31) & 0xFFFFFFFFFFFFFFF8));
  v46 = MEMORY[0x1E69AB380];
  *v45 = v39;
  v45[1] = v46;
  v47 = v202;
  v48 = v193;
  sub_1E5E1D34C(v202, v195, v193);
  v49 = (v36 + 48) & ~v36;
  v50 = v49 + v22;
  v172 = v49;
  v51 = swift_allocObject();
  v52 = v192;
  *(v51 + 2) = v192;
  *(v51 + 3) = v43;
  *(v51 + 4) = v201;
  *(v51 + 5) = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v195, v51 + v49);
  *(v51 + v50) = 0;
  v53 = v51 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v196;
  *(v53 + 1) = v194;
  *(v53 + 2) = v54;
  v55 = v179;
  sub_1E5E1D34C(v47, v179, v48);
  v56 = swift_allocObject();
  v56[2] = v52;
  v56[3] = v43;
  v57 = v201;
  v56[4] = v201;
  v56[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v55, v172 + v56);
  v58 = v56 + ((v50 + 7) & 0xFFFFFFFFFFFFFFF8);
  v59 = v42;
  *v58 = v194;
  *(v58 + 1) = v54;
  v58[16] = 0;
  v60 = v202;
  v61 = v176;
  sub_1E5E1D34C(v202, v176, v193);
  v62 = swift_allocObject();
  *(v62 + 16) = v192;
  *(v62 + 24) = v43;
  sub_1E5E1FA80(v61, v174 + v62);
  *&v206 = v57;
  *(&v206 + 1) = MEMORY[0x1E69AB380];
  *&v207 = &unk_1E65EB918;
  v195 = v59;
  *(&v207 + 1) = v59;
  *&v208 = &unk_1E65FA770;
  v194 = v51;
  *(&v208 + 1) = v51;
  *&v209 = &unk_1E65EB920;
  *(&v209 + 1) = v56;
  *&v210 = &unk_1E65FA780;
  *(&v210 + 1) = v62;
  v63 = *(v60 + *(v177 + 7) + 8);
  v179 = v62;
  v178 = v56;
  v175 = v36;
  if (v63 < 2)
  {
    v193 = type metadata accessor for AppComposer;
    v64 = v199;
    sub_1E5E1D34C(v60, v199, type metadata accessor for AppComposer);
    v65 = (v197 + 7) & 0xFFFFFFFFFFFFFFF8;
    v192 = v65;
    v66 = swift_allocObject();
    v176 = v66;
    v67 = sub_1E5E1FA80(v64, v66 + v198);
    v177 = &v151;
    v68 = (v66 + v65);
    v69 = v209;
    v68[2] = v208;
    v68[3] = v69;
    v68[4] = v210;
    v70 = v207;
    *v68 = v206;
    v68[1] = v70;
    v71 = MEMORY[0x1EEE9AC00](v67);
    v174 = &v145;
    v72 = v183;
    v73 = MEMORY[0x1EEE9AC00](v71);
    v173 = &v145;
    MEMORY[0x1EEE9AC00](v73);
    v172 = &v145;
    v147 = v60;
    v148 = v72;
    v149 = v74;
    v150 = v75;
    (*(v180 + 16))(v200);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D98, &qword_1E65EEDF8);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA0, &unk_1E65FA8A0);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
    v78 = sub_1E6071C64(&unk_1EE2D4C90, &qword_1ED073D98, &qword_1E65EEDF8, sub_1E6071B80);
    v79 = sub_1E6071C64(&qword_1EE2D4CB0, &qword_1ED073DA0, &unk_1E65FA8A0, sub_1E6071CE8);
    v80 = sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    v148 = v79;
    v149 = v80;
    v146 = v77;
    v147 = v78;
    v145 = v76;
    v81 = v162;
    sub_1E65E25B8();
    v82 = v199;
    sub_1E5E1D34C(v202, v199, v193);
    sub_1E5DF650C(v72, &v203);
    v83 = v192;
    v84 = swift_allocObject();
    v85 = v198;
    sub_1E5E1FA80(v82, v84 + v198);
    sub_1E5DF599C(&v203, v83 + v84);
    v86 = sub_1E5FED46C(&qword_1ED073E58, &qword_1ED073D70, &qword_1E65EEDC8, MEMORY[0x1E699F340]);
    v87 = sub_1E5FEAE50();
    v88 = v163;
    v89 = v166;
    sub_1E65E4758();

    (*(v164 + 8))(v81, v89);
    *&v203 = v89;
    *(&v203 + 1) = &type metadata for CreatePlanHandoffViewRepresentable;
    v204 = v86;
    v205 = v87;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v91 = v169;
    v92 = v167;
    sub_1E630FCD8(&v206, v167, OpaqueTypeConformance2, v169);
    (*(v165 + 8))(v88, v92);
    sub_1E5E1D34C(v202, v82, v193);
    v93 = swift_allocObject();
    sub_1E5E1FA80(v82, v93 + v85);
    sub_1E60725A0();
    v94 = v171;
    sub_1E6259D5C(sub_1E60772D8, v93, v168);

    sub_1E5DFE50C(v91, &qword_1ED073D80, &qword_1E65EEDD8);
    v95 = sub_1E6072514();
    v96 = v170;
    v97 = v184;
    sub_1E5FEE4C8();
    v98 = &qword_1ED073D88;
    v99 = &qword_1E65EEDE0;
    sub_1E5DFE50C(v94, &qword_1ED073D88, &qword_1E65EEDE0);
    sub_1E5FEE4C8();
    v100 = sub_1E6072488();
    v101 = v189;
    sub_1E62DFC6C(v94, v97, v188, v95, v100);
    v102 = sub_1E60726F4();
    v103 = v185;
    sub_1E62DFC6C(v101, v187, MEMORY[0x1E69E73E0], v102, MEMORY[0x1E6982070]);

    sub_1E5DFE50C(v101, &qword_1ED073D68, &qword_1E65EEDC0);
    sub_1E5DFE50C(v94, &qword_1ED073D88, &qword_1E65EEDE0);
    v104 = v96;
LABEL_5:
    sub_1E5DFE50C(v104, v98, v99);
    sub_1E6071C64(&qword_1ED073E68, &qword_1ED073D90, &unk_1E65FA3D0, sub_1E60726F4);
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v103, &qword_1ED073D90, &unk_1E65FA3D0);
  }

  v106 = v197;
  v105 = v198;
  v107 = v199;
  v108 = v183;
  if (v63 == 3)
  {
    v193 = type metadata accessor for AppComposer;
    sub_1E5E1D34C(v60, v199, type metadata accessor for AppComposer);
    v109 = (v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v192 = v109;
    v110 = swift_allocObject();
    v176 = v110;
    v111 = sub_1E5E1FA80(v107, v110 + v105);
    v177 = &v151;
    v112 = (v110 + v109);
    v113 = v209;
    v112[2] = v208;
    v112[3] = v113;
    v112[4] = v210;
    v114 = v207;
    *v112 = v206;
    v112[1] = v114;
    v115 = MEMORY[0x1EEE9AC00](v111);
    v174 = &v145;
    v116 = MEMORY[0x1EEE9AC00](v115);
    v173 = &v145;
    MEMORY[0x1EEE9AC00](v116);
    v172 = &v145;
    v147 = v60;
    v148 = v108;
    v149 = v117;
    v150 = v118;
    (*(v180 + 16))(v200);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D98, &qword_1E65EEDF8);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA0, &unk_1E65FA8A0);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
    v121 = sub_1E6071C64(&unk_1EE2D4C90, &qword_1ED073D98, &qword_1E65EEDF8, sub_1E6071B80);
    v122 = sub_1E6071C64(&qword_1EE2D4CB0, &qword_1ED073DA0, &unk_1E65FA8A0, sub_1E6071CE8);
    v123 = sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    v148 = v122;
    v149 = v123;
    v146 = v120;
    v147 = v121;
    v145 = v119;
    v124 = v152;
    sub_1E65E2DB8();
    v125 = v199;
    sub_1E5E1D34C(v202, v199, v193);
    sub_1E5DF650C(v108, &v203);
    v126 = v192;
    v127 = swift_allocObject();
    v128 = v198;
    sub_1E5E1FA80(v125, v127 + v198);
    sub_1E5DF599C(&v203, v126 + v127);
    v129 = sub_1E5FED46C(&qword_1ED073E30, &qword_1ED073D48, &qword_1E65EEDA0, MEMORY[0x1E699F620]);
    v130 = sub_1E5FEAE50();
    v131 = v153;
    v132 = v156;
    sub_1E65E4758();

    (*(v154 + 8))(v124, v132);
    *&v203 = v132;
    *(&v203 + 1) = &type metadata for CreatePlanHandoffViewRepresentable;
    v204 = v129;
    v205 = v130;
    v133 = swift_getOpaqueTypeConformance2();
    v134 = v159;
    v135 = v157;
    sub_1E630FCD8(&v206, v157, v133, v159);
    (*(v155 + 8))(v131, v135);
    sub_1E5E1D34C(v202, v125, v193);
    v136 = swift_allocObject();
    sub_1E5E1FA80(v125, v136 + v128);
    sub_1E6072334();
    v137 = v161;
    sub_1E6259D5C(sub_1E60722DC, v136, v158);

    sub_1E5DFE50C(v134, &qword_1ED073D58, &qword_1E65EEDB0);
    v138 = sub_1E6072488();
    v139 = v160;
    v140 = v188;
    sub_1E5FEE4C8();
    v98 = &qword_1ED073D60;
    v99 = &qword_1E65EEDB8;
    sub_1E5DFE50C(v137, &qword_1ED073D60, &qword_1E65EEDB8);
    sub_1E5FEE4C8();
    v141 = sub_1E6072514();
    v142 = v189;
    sub_1E62DFB74(v137, v184, v140, v141, v138);
    v143 = sub_1E60726F4();
    v103 = v185;
    sub_1E62DFC6C(v142, v187, MEMORY[0x1E69E73E0], v143, MEMORY[0x1E6982070]);

    sub_1E5DFE50C(v142, &qword_1ED073D68, &qword_1E65EEDC0);
    sub_1E5DFE50C(v137, &qword_1ED073D60, &qword_1E65EEDB8);
    v104 = v139;
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E606B8DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E606BA20, 0, 0);
}

uint64_t sub_1E606BA20()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *MEMORY[0x1E69CBD60];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v6 + *(type metadata accessor for AppComposer(0) + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E606BCAC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E606B8DC(a1, v1 + v5);
}

unint64_t sub_1E606BD88()
{
  v0 = sub_1E65D76F8();
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v12);
  sub_1E5DFE50C(v5, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v7 + 8))(v9, v6);
  v13 = sub_1E65D7EB8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1E5DFE50C(v12, &qword_1ED072968, &unk_1E6609800);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    sub_1E65D7DC8();
    (*(v14 + 8))(v12, v13);
    v15 = sub_1E65D76C8();
    v16 = v17;
    (*(v21 + 8))(v2, v22);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 9;
  v23 = v15;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v19 = sub_1E6427784(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
  return v19;
}

uint64_t sub_1E606C14C(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF8, &qword_1E65EEEB0);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v24 - v8;
  v9 = sub_1E65E25A8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1E65E2588();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v25 = a1;
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  sub_1E65E2598();
  sub_1E65E2578();
  sub_1E65E4CC8();
  sub_1E5E1D34C(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = v12 + v6;
  v14 = swift_allocObject();
  v15 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1FA80(v15, v14 + v12);
  type metadata accessor for AppFeature(0);
  sub_1E60733D0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v24 = sub_1E60733D0(&qword_1ED073F00, MEMORY[0x1E699F338], MEMORY[0x1E699F330]);
  sub_1E65E4DE8();
  sub_1E5E1D34C(v25, v15, type metadata accessor for AppComposer);
  v25 = a2[7];
  v16 = swift_allocObject();
  sub_1E5E1FA80(v15, v16 + v12);
  v17 = (v16 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = *(a2 + 3);
  v17[2] = *(a2 + 2);
  v17[3] = v18;
  v17[4] = *(a2 + 4);
  v19 = *(a2 + 1);
  *v17 = *a2;
  v17[1] = v19;
  swift_unknownObjectRetain();

  v20 = v26;
  v21 = v31;
  v22 = sub_1E65E4F08();

  (*(v29 + 8))(v21, v30);
  (*(v28 + 8))(v20, v10);
  return v22;
}

uint64_t sub_1E606C5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a2;
  v110 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD0, &unk_1E65FA8B0);
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v89 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED0, &qword_1E65EEE88);
  MEMORY[0x1EEE9AC00](v107);
  v9 = &v89 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED8, &qword_1E65EEE90);
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v89 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC8, &qword_1E65EEE18);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v89 - v12;
  v13 = type metadata accessor for AppComposer(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v89 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD8, &qword_1E65EEE20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v89 - v26;
  v28 = *(a1 + *(v14 + 28) + 8);
  v108 = v9;
  v109 = v6;
  v103 = v24;
  v102 = v10;
  v99 = v20;
  v98 = a1;
  if (v28 >= 2)
  {
    v96 = v27;
    v97 = v25;
    v59 = v100;
    if (v28 == 3)
    {
      v89 = type metadata accessor for AppComposer;
      sub_1E5E1D34C(a1, v22, type metadata accessor for AppComposer);
      sub_1E5DF650C(v59, &v115);
      v60 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v61 = v60 + v16;
      v62 = (v60 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = (v61 + 55) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      sub_1E5E1FA80(v22, v64 + v60);
      sub_1E5DF599C(&v115, v64 + v62);
      *(v64 + v62 + 40) = 2;
      v95 = v64;
      v65 = (v64 + v63);
      v66 = (v64 + ((v63 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v65 = 0;
      v65[1] = 0;
      *v66 = 0;
      v66[1] = 0;
      v67 = v98;
      v68 = v99;
      sub_1E5E1D34C(v98, v99, type metadata accessor for AppComposer);
      sub_1E5DF650C(v59, &v114);
      v90 = *a3;
      v91 = a3[3];
      v92 = a3[5];
      v93 = a3[7];
      v94 = a3[9];
      v69 = (v62 + 47) & 0xFFFFFFFFFFFFFFF8;
      v70 = v69 + 80;
      v71 = swift_allocObject();
      sub_1E5E1FA80(v68, v71 + v60);
      sub_1E5DF599C(&v114, v71 + v62);
      v72 = (v71 + v69);
      v73 = *(a3 + 3);
      v72[2] = *(a3 + 2);
      v72[3] = v73;
      v72[4] = *(a3 + 4);
      v74 = *(a3 + 1);
      *v72 = *a3;
      v72[1] = v74;
      *(v71 + v70) = 2;
      v75 = v67;
      v76 = v101;
      sub_1E5E1D34C(v75, v101, v89);
      sub_1E5DF650C(v59, v113);
      v77 = swift_allocObject();
      sub_1E5E1FA80(v76, v77 + v60);
      sub_1E5DF599C(v113, v77 + v62);
      v78 = (v77 + v69);
      v79 = *(a3 + 3);
      v78[2] = *(a3 + 2);
      v78[3] = v79;
      v78[4] = *(a3 + 4);
      v80 = *(a3 + 1);
      *v78 = *a3;
      v78[1] = v80;
      *(v77 + v70) = 2;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
      v82 = sub_1E60731B0();
      v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
      v111 = v81;
      v112 = v82;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v111 = v83;
      v112 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v85 = v96;
      sub_1E65E20B8();
      v86 = v97;
      v87 = v103;
      (*(v97 + 16))(v104, v85, v103);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0, MEMORY[0x1E699F158]);
      sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20, MEMORY[0x1E699F1E0]);
      v88 = v106;
      sub_1E65E4138();
      sub_1E5E70EC8(v88, v108);
      swift_storeEnumTagMultiPayload();
      sub_1E6071CE8();
      sub_1E65E4138();
      sub_1E5DFE50C(v88, &qword_1ED073DC8, &qword_1E65EEE18);
      return (*(v86 + 8))(v85, v87);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v89 = type metadata accessor for AppComposer;
    v29 = a1;
    sub_1E5E1D34C(a1, v22, type metadata accessor for AppComposer);
    v30 = v100;
    sub_1E5DF650C(v100, &v115);
    v31 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v32 = (v31 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v31 + v16 + 55) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_1E5E1FA80(v22, v34 + v31);
    sub_1E5DF599C(&v115, v34 + v32);
    *(v34 + v32 + 40) = 2;
    v95 = v34;
    v35 = (v34 + v33);
    v36 = (v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v35 = 0;
    v35[1] = 0;
    *v36 = 0;
    v36[1] = 0;
    v37 = v29;
    v38 = v99;
    v39 = v89;
    sub_1E5E1D34C(v37, v99, v89);
    sub_1E5DF650C(v30, &v114);
    v90 = *a3;
    v91 = a3[3];
    v92 = a3[5];
    v93 = a3[7];
    v94 = a3[9];
    v40 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1E5E1FA80(v38, v41 + v31);
    sub_1E5DF599C(&v114, v41 + v32);
    v42 = (v41 + v40);
    v43 = *(a3 + 3);
    v42[2] = *(a3 + 2);
    v42[3] = v43;
    v42[4] = *(a3 + 4);
    v44 = *(a3 + 1);
    *v42 = *a3;
    v42[1] = v44;
    *(v41 + v40 + 80) = 2;
    v45 = v101;
    sub_1E5E1D34C(v98, v101, v39);
    sub_1E5DF650C(v30, v113);
    v46 = swift_allocObject();
    sub_1E5E1FA80(v45, v46 + v31);
    sub_1E5DF599C(v113, v46 + v32);
    v47 = (v46 + v40);
    v48 = *(a3 + 3);
    v47[2] = *(a3 + 2);
    v47[3] = v48;
    v47[4] = *(a3 + 4);
    v49 = *(a3 + 1);
    *v47 = *a3;
    v47[1] = v49;
    *(v46 + v40 + 80) = 2;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
    v51 = sub_1E60731B0();
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
    v111 = v50;
    v112 = v51;
    v53 = swift_getOpaqueTypeConformance2();
    v111 = v52;
    v112 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v96;
    sub_1E65E1F38();
    v55 = v97;
    v56 = v109;
    (*(v97 + 16))(v104, v54, v109);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0, MEMORY[0x1E699F158]);
    sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20, MEMORY[0x1E699F1E0]);
    v57 = v106;
    sub_1E65E4138();
    sub_1E5E70EC8(v57, v108);
    swift_storeEnumTagMultiPayload();
    sub_1E6071CE8();
    sub_1E65E4138();
    sub_1E5DFE50C(v57, &qword_1ED073DC8, &qword_1E65EEE18);
    return (*(v55 + 8))(v54, v56);
  }

  return result;
}

uint64_t sub_1E606D2C0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v186 = a3;
  v187 = a1;
  v182 = a5;
  v183 = a2;
  v6 = a4[1];
  v167 = *a4;
  v166 = v6;
  v7 = a4[3];
  v169 = a4[2];
  v168 = v7;
  v8 = a4[5];
  v173 = a4[4];
  v174 = v8;
  v9 = a4[7];
  v175 = a4[6];
  v172 = v9;
  v10 = a4[9];
  v171 = a4[8];
  v170 = v10;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v141 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v153 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v152 = &v141 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v141 - v13;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v14 = MEMORY[0x1EEE9AC00](v179);
  v159 = (&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v154 = &v141 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v141 - v18;
  v165 = sub_1E65D76F8();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = v19;
  v184 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppComposer(0);
  v21 = v20 - 8;
  v161 = *(v20 - 8);
  v22 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v162 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v141 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v141 - v27;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v29 = MEMORY[0x1EEE9AC00](v176);
  v31 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v141 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v141 - v35;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  MEMORY[0x1EEE9AC00](v178);
  v39 = &v141 - v38;
  v40 = *(v37 + *(v21 + 28) + 8);
  v177 = v39;
  v160 = 0x80000001E6611D30;
  if (v40 < 2)
  {
    v162 = type metadata accessor for AppComposer;
    v41 = v185;
    sub_1E5E1D34C(v37, v185, type metadata accessor for AppComposer);
    sub_1E5DF650C(v183, &v188);
    v144 = *a4;
    v145 = a4[3];
    v146 = a4[5];
    v147 = a4[7];
    v148 = a4[9];
    v42 = *(v161 + 80);
    v43 = (v42 + 16) & ~v42;
    v44 = v42 | 7;
    v45 = (v43 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v143 = v45;
    v161 = v43 + v22;
    v46 = (v43 + v22 + 55) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v149 = v47;
    sub_1E5E1FA80(v41, v47 + v43);
    sub_1E5DF599C(&v188, v47 + v45);
    *(v47 + v45 + 40) = 1;
    v48 = (v47 + v46);
    *v48 = 0xD000000000000014;
    v48[1] = v160;
    v49 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
    v50 = *(a4 + 4);
    v49[3] = *(a4 + 3);
    v49[4] = v50;
    v51 = *(a4 + 2);
    v49[1] = *(a4 + 1);
    v49[2] = v51;
    *v49 = *a4;
    v52 = v187;
    v53 = v41;
    v54 = v162;
    sub_1E5E1D34C(v187, v41, v162);
    v151 = v44;
    v160 = swift_allocObject();
    v150 = v43;
    sub_1E5E1FA80(v41, v160 + v43);
    sub_1E5E1D34C(v52, v41, v54);
    sub_1E5DF650C(v183, &v188);
    v55 = v164;
    v183 = *(v164 + 16);
    v56 = v165;
    v183(v184, v186, v165);
    v57 = v143;
    v58 = (v143 + 47) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + *(v55 + 80) + 80) & ~*(v55 + 80);
    v60 = swift_allocObject();
    sub_1E5E1FA80(v53, v60 + v43);
    sub_1E5DF599C(&v188, v60 + v57);
    v61 = (v60 + v58);
    v62 = *(a4 + 3);
    v61[2] = *(a4 + 2);
    v61[3] = v62;
    v61[4] = *(a4 + 4);
    v63 = *(a4 + 1);
    *v61 = *a4;
    v61[1] = v63;
    v64 = v184;
    (*(v55 + 32))(v60 + v59, v184, v56);
    v183(v64, v186, v56);
    type metadata accessor for ArtworkDescriptor(0);
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v165 = type metadata accessor for ItemMetrics(0);
    v164 = type metadata accessor for SectionMetrics(0);
    v163 = type metadata accessor for ViewDescriptor(0);
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v65 = v152;
    sub_1E65E2448();
    v66 = sub_1E65E2DA8();
    v67 = v166;
    if ((v66 & 1) == 0)
    {
      v67 = 0;
    }

    v68 = v167;
    if ((v66 & 1) == 0)
    {
      v68 = 0;
    }

    *&v188 = v68;
    *(&v188 + 1) = v67;
    v69 = v170;
    if ((v66 & 1) == 0)
    {
      v69 = 0;
    }

    v70 = v168;
    if ((v66 & 1) == 0)
    {
      v70 = 0;
    }

    v71 = v169;
    if ((v66 & 1) == 0)
    {
      v71 = 0;
    }

    v189 = v71;
    v190 = v70;
    v72 = v171;
    if ((v66 & 1) == 0)
    {
      v72 = 0;
    }

    v73 = v172;
    if ((v66 & 1) == 0)
    {
      v73 = 0;
    }

    v74 = v174;
    if ((v66 & 1) == 0)
    {
      v74 = 0;
    }

    v75 = v173;
    if ((v66 & 1) == 0)
    {
      v75 = 0;
    }

    v191 = v75;
    v192 = v74;
    v76 = v175;
    if ((v66 & 1) == 0)
    {
      v76 = 0;
    }

    v193 = v76;
    v194 = v73;
    v195 = v72;
    v196 = v69;
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38, MEMORY[0x1E699F2B0]);
    v77 = v157;
    v78 = v155;
    sub_1E630FFE8(&v188, v155, v157);
    v153[1](v65, v78);
    v79 = v185;
    sub_1E5E1D34C(v187, v185, v162);
    v80 = swift_allocObject();
    sub_1E5E1FA80(v79, v80 + v150);
    sub_1E6071EE4();
    v81 = v154;
    sub_1E6259D5C(sub_1E60772C0, v80, v156);

    sub_1E5DFE50C(v77, &qword_1ED073DF8, &unk_1E65FA440);
    v82 = sub_1E6071E58();
    v83 = v158;
    v84 = v179;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v81, &unk_1ED077710, &qword_1E65EEE28);
    v85 = v159;
    sub_1E5FEE4C8();
    v86 = sub_1E6072098();
    v87 = v181;
    sub_1E62DFC6C(v85, v84, v176, v82, v86);
    v88 = sub_1E6071DCC();
    v89 = v177;
    sub_1E62DFC6C(v87, v180, MEMORY[0x1E69E73E0], v88, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v87, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v85, &unk_1ED077710, &qword_1E65EEE28);
    sub_1E5DFE50C(v83, &unk_1ED077710, &qword_1E65EEE28);
    v90 = v89;
LABEL_45:
    sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v90, &qword_1ED073DA8, &unk_1E65FA550);
  }

  v152 = v25;
  v91 = v183;
  v153 = v34;
  v154 = v23;
  v155 = v26;
  v156 = v28;
  v157 = v36;
  v158 = v31;
  v92 = v185;
  if (v40 == 3)
  {
    v159 = type metadata accessor for AppComposer;
    sub_1E5E1D34C(v37, v185, type metadata accessor for AppComposer);
    v93 = v91;
    sub_1E5DF650C(v91, &v188);
    v144 = *a4;
    v145 = a4[3];
    v146 = a4[5];
    v147 = a4[7];
    v148 = a4[9];
    v94 = *(v161 + 80);
    v95 = (v94 + 16) & ~v94;
    v96 = v94 | 7;
    v161 = v95 + v22;
    v97 = (v95 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v143 = v97;
    v98 = (v97 + 47) & 0xFFFFFFFFFFFFFFF8;
    v142 = v98;
    v99 = swift_allocObject();
    v149 = v99;
    sub_1E5E1FA80(v92, v99 + v95);
    sub_1E5DF599C(&v188, v99 + v97);
    v100 = (v99 + v98);
    *v100 = 0xD000000000000014;
    v100[1] = v160;
    v101 = v99 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
    v102 = *(a4 + 4);
    *(v101 + 48) = *(a4 + 3);
    *(v101 + 64) = v102;
    v103 = *(a4 + 2);
    *(v101 + 16) = *(a4 + 1);
    *(v101 + 32) = v103;
    *v101 = *a4;
    *(v101 + 80) = 1;
    v104 = v187;
    v105 = v159;
    sub_1E5E1D34C(v187, v92, v159);
    v151 = v96;
    v160 = swift_allocObject();
    v106 = v95;
    v150 = v95;
    sub_1E5E1FA80(v92, v160 + v95);
    sub_1E5E1D34C(v104, v92, v105);
    sub_1E5DF650C(v93, &v188);
    v107 = v164;
    v183 = *(v164 + 16);
    v108 = v184;
    v109 = v165;
    v183(v184, v186, v165);
    v110 = v142;
    v111 = (v142 + *(v107 + 80) + 80) & ~*(v107 + 80);
    v112 = swift_allocObject();
    sub_1E5E1FA80(v92, v112 + v106);
    sub_1E5DF599C(&v188, v112 + v143);
    v113 = (v112 + v110);
    v114 = *(a4 + 3);
    v113[2] = *(a4 + 2);
    v113[3] = v114;
    v113[4] = *(a4 + 4);
    v115 = *(a4 + 1);
    *v113 = *a4;
    v113[1] = v115;
    (*(v107 + 32))(v112 + v111, v108, v109);
    v183(v108, v186, v109);
    type metadata accessor for ArtworkDescriptor(0);
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v165 = type metadata accessor for ItemMetrics(0);
    v164 = type metadata accessor for SectionMetrics(0);
    v163 = type metadata accessor for ViewDescriptor(0);
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v116 = v152;
    sub_1E65E1EB8();
    v117 = sub_1E65E2DA8();
    v118 = v167;
    if ((v117 & 1) == 0)
    {
      v118 = 0;
    }

    v119 = v166;
    if ((v117 & 1) == 0)
    {
      v119 = 0;
    }

    *&v188 = v118;
    *(&v188 + 1) = v119;
    v120 = v169;
    if ((v117 & 1) == 0)
    {
      v120 = 0;
    }

    v121 = v168;
    if ((v117 & 1) == 0)
    {
      v121 = 0;
    }

    v122 = v173;
    if ((v117 & 1) == 0)
    {
      v122 = 0;
    }

    v189 = v120;
    v190 = v121;
    v123 = v174;
    if ((v117 & 1) == 0)
    {
      v123 = 0;
    }

    v124 = v175;
    if ((v117 & 1) == 0)
    {
      v124 = 0;
    }

    v125 = v172;
    if ((v117 & 1) == 0)
    {
      v125 = 0;
    }

    v126 = v171;
    if ((v117 & 1) == 0)
    {
      v126 = 0;
    }

    v191 = v122;
    v192 = v123;
    v127 = v170;
    if ((v117 & 1) == 0)
    {
      v127 = 0;
    }

    v193 = v124;
    v194 = v125;
    v195 = v126;
    v196 = v127;
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450, MEMORY[0x1E699F128]);
    v128 = v156;
    v129 = v154;
    sub_1E630FFE8(&v188, v154, v156);
    (*(v162 + 1))(v116, v129);
    v130 = v185;
    sub_1E5E1D34C(v187, v185, v159);
    v131 = swift_allocObject();
    sub_1E5E1FA80(v130, v131 + v150);
    sub_1E6072124();
    v132 = v153;
    sub_1E6259D5C(sub_1E60772C0, v131, v155);

    sub_1E5DFE50C(v128, &unk_1ED077720, &qword_1E65EEE40);
    v133 = sub_1E6072098();
    v134 = v157;
    v135 = v176;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v132, &qword_1ED073E10, &unk_1E65FA460);
    v136 = v158;
    sub_1E5FEE4C8();
    v137 = sub_1E6071E58();
    v138 = v181;
    sub_1E62DFB74(v136, v179, v135, v137, v133);
    v139 = sub_1E6071DCC();
    v90 = v177;
    sub_1E62DFC6C(v138, v180, MEMORY[0x1E69E73E0], v139, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v138, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v136, &qword_1ED073E10, &unk_1E65FA460);
    sub_1E5DFE50C(v134, &qword_1ED073E10, &unk_1E65FA460);
    goto LABEL_45;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E606E8F0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EF8, &qword_1E65EEEB0);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v24 - v8;
  v9 = sub_1E65E25A8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1E65E2588();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v25 = a1;
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  sub_1E65E2598();
  sub_1E65E2578();
  sub_1E65E4CC8();
  sub_1E5E1D34C(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = v12 + v6;
  v14 = swift_allocObject();
  v15 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1FA80(v15, v14 + v12);
  type metadata accessor for AppFeature(0);
  sub_1E60733D0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v24 = sub_1E60733D0(&qword_1ED073F00, MEMORY[0x1E699F338], MEMORY[0x1E699F330]);
  sub_1E65E4DE8();
  sub_1E5E1D34C(v25, v15, type metadata accessor for AppComposer);
  v25 = a2[7];
  v16 = swift_allocObject();
  sub_1E5E1FA80(v15, v16 + v12);
  v17 = (v16 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = *(a2 + 3);
  v17[2] = *(a2 + 2);
  v17[3] = v18;
  v17[4] = *(a2 + 4);
  v19 = *(a2 + 1);
  *v17 = *a2;
  v17[1] = v19;
  swift_unknownObjectRetain();

  v20 = v26;
  v21 = v31;
  v22 = sub_1E65E4F08();

  (*(v29 + 8))(v21, v30);
  (*(v28 + 8))(v20, v10);
  return v22;
}

uint64_t sub_1E606ED44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v58 = a4;
  v50 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v49 - v12;
  v65 = sub_1E65D7848();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E2568();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v49 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v56 = *(v20 - 8);
  v57 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v49 - v21;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  MEMORY[0x1EEE9AC00](v54);
  v23 = &v49 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v51 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v61 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v73 = &v49 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v71 = &v49 - v32;
  v72 = sub_1E65E07B8();
  v70 = *(v72 - 8);
  v33 = MEMORY[0x1EEE9AC00](v72);
  v53 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v74 = &v49 - v35;
  v36 = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  v68 = v15;
  v69 = a6;
  v66 = v18;
  v67 = v13;
  v52 = a1;
  if (v36 >= 2)
  {
    if (v36 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    }

    sub_1E65E0768();
  }

  else
  {
    type metadata accessor for AppState(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
  }

  v50 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v37 = *(v51 + 8);
  v38 = v37(v26, v24);
  MEMORY[0x1EEE9AC00](v38);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v23, &qword_1ED071E58, &qword_1E65EA150);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v39 = v37(v26, v24);
  MEMORY[0x1EEE9AC00](v39);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v23, &qword_1ED071E58, &qword_1E65EA150);
  swift_getKeyPath();
  v40 = v55;
  sub_1E65E4EC8();

  v41 = v59;
  v42 = v57;
  sub_1E65E4C98();
  (*(v56 + 8))(v40, v42);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v41, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v70 + 16))(v53, v74, v72);
  sub_1E65E2558();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v43 = v64;
  sub_1E65E4C98();
  v44 = v67;
  sub_1E5E1F544(v67);
  sub_1E5DFE50C(v43, &qword_1ED071F78, &unk_1E65EA3F0);
  v45 = v63;
  v46 = *(v63 + 48);
  v47 = v65;
  if (v46(v44, 1, v65) == 1)
  {
    sub_1E65D77C8();
    if (v46(v44, 1, v47) != 1)
    {
      sub_1E5DFE50C(v44, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v45 + 32))(v68, v44, v47);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E2548();
  return (*(v70 + 8))(v74, v72);
}

uint64_t sub_1E606F6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = *(a5 + 3);
  *(v13 + 64) = *(a5 + 2);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(a5 + 4);
  v15 = *(a5 + 1);
  *(v13 + 32) = *a5;
  *(v13 + 48) = v15;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v11, a7, v13);
}

uint64_t sub_1E606F800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a2;
  v110 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD0, &unk_1E65FA8B0);
  v97 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v89 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED0, &qword_1E65EEE88);
  MEMORY[0x1EEE9AC00](v107);
  v9 = &v89 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073ED8, &qword_1E65EEE90);
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v89 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC8, &qword_1E65EEE18);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v89 - v12;
  v13 = type metadata accessor for AppComposer(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v89 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v89 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DD8, &qword_1E65EEE20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v89 - v26;
  v28 = *(a1 + *(v14 + 28) + 8);
  v108 = v9;
  v109 = v6;
  v103 = v24;
  v102 = v10;
  v99 = v20;
  v98 = a1;
  if (v28 >= 2)
  {
    v96 = v27;
    v97 = v25;
    v59 = v100;
    if (v28 == 3)
    {
      v89 = type metadata accessor for AppComposer;
      sub_1E5E1D34C(a1, v22, type metadata accessor for AppComposer);
      sub_1E5DF650C(v59, &v115);
      v60 = (*(v15 + 80) + 16) & ~*(v15 + 80);
      v61 = v60 + v16;
      v62 = (v60 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = (v61 + 55) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      sub_1E5E1FA80(v22, v64 + v60);
      sub_1E5DF599C(&v115, v64 + v62);
      *(v64 + v62 + 40) = 2;
      v95 = v64;
      v65 = (v64 + v63);
      v66 = (v64 + ((v63 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v65 = 0;
      v65[1] = 0;
      *v66 = 0;
      v66[1] = 0;
      v67 = v98;
      v68 = v99;
      sub_1E5E1D34C(v98, v99, type metadata accessor for AppComposer);
      sub_1E5DF650C(v59, &v114);
      v90 = *a3;
      v91 = a3[3];
      v92 = a3[5];
      v93 = a3[7];
      v94 = a3[9];
      v69 = (v62 + 47) & 0xFFFFFFFFFFFFFFF8;
      v70 = v69 + 80;
      v71 = swift_allocObject();
      sub_1E5E1FA80(v68, v71 + v60);
      sub_1E5DF599C(&v114, v71 + v62);
      v72 = (v71 + v69);
      v73 = *(a3 + 3);
      v72[2] = *(a3 + 2);
      v72[3] = v73;
      v72[4] = *(a3 + 4);
      v74 = *(a3 + 1);
      *v72 = *a3;
      v72[1] = v74;
      *(v71 + v70) = 2;
      v75 = v67;
      v76 = v101;
      sub_1E5E1D34C(v75, v101, v89);
      sub_1E5DF650C(v59, v113);
      v77 = swift_allocObject();
      sub_1E5E1FA80(v76, v77 + v60);
      sub_1E5DF599C(v113, v77 + v62);
      v78 = (v77 + v69);
      v79 = *(a3 + 3);
      v78[2] = *(a3 + 2);
      v78[3] = v79;
      v78[4] = *(a3 + 4);
      v80 = *(a3 + 1);
      *v78 = *a3;
      v78[1] = v80;
      *(v77 + v70) = 2;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
      v82 = sub_1E60731B0();
      v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
      v111 = v81;
      v112 = v82;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v111 = v83;
      v112 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v85 = v96;
      sub_1E65E20B8();
      v86 = v97;
      v87 = v103;
      (*(v97 + 16))(v104, v85, v103);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0, MEMORY[0x1E699F158]);
      sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20, MEMORY[0x1E699F1E0]);
      v88 = v106;
      sub_1E65E4138();
      sub_1E5E70EC8(v88, v108);
      swift_storeEnumTagMultiPayload();
      sub_1E6071CE8();
      sub_1E65E4138();
      sub_1E5DFE50C(v88, &qword_1ED073DC8, &qword_1E65EEE18);
      return (*(v86 + 8))(v85, v87);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v89 = type metadata accessor for AppComposer;
    v29 = a1;
    sub_1E5E1D34C(a1, v22, type metadata accessor for AppComposer);
    v30 = v100;
    sub_1E5DF650C(v100, &v115);
    v31 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v32 = (v31 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v31 + v16 + 55) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    sub_1E5E1FA80(v22, v34 + v31);
    sub_1E5DF599C(&v115, v34 + v32);
    *(v34 + v32 + 40) = 2;
    v95 = v34;
    v35 = (v34 + v33);
    v36 = (v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v35 = 0;
    v35[1] = 0;
    *v36 = 0;
    v36[1] = 0;
    v37 = v29;
    v38 = v99;
    v39 = v89;
    sub_1E5E1D34C(v37, v99, v89);
    sub_1E5DF650C(v30, &v114);
    v90 = *a3;
    v91 = a3[3];
    v92 = a3[5];
    v93 = a3[7];
    v94 = a3[9];
    v40 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1E5E1FA80(v38, v41 + v31);
    sub_1E5DF599C(&v114, v41 + v32);
    v42 = (v41 + v40);
    v43 = *(a3 + 3);
    v42[2] = *(a3 + 2);
    v42[3] = v43;
    v42[4] = *(a3 + 4);
    v44 = *(a3 + 1);
    *v42 = *a3;
    v42[1] = v44;
    *(v41 + v40 + 80) = 2;
    v45 = v101;
    sub_1E5E1D34C(v98, v101, v39);
    sub_1E5DF650C(v30, v113);
    v46 = swift_allocObject();
    sub_1E5E1FA80(v45, v46 + v31);
    sub_1E5DF599C(v113, v46 + v32);
    v47 = (v46 + v40);
    v48 = *(a3 + 3);
    v47[2] = *(a3 + 2);
    v47[3] = v48;
    v47[4] = *(a3 + 4);
    v49 = *(a3 + 1);
    *v47 = *a3;
    v47[1] = v49;
    *(v46 + v40 + 80) = 2;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE8, &qword_1E65EEEA0);
    v51 = sub_1E60731B0();
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EF0, &qword_1E65EEEA8);
    v111 = v50;
    v112 = v51;
    v53 = swift_getOpaqueTypeConformance2();
    v111 = v52;
    v112 = v53;
    swift_getOpaqueTypeConformance2();
    v54 = v96;
    sub_1E65E1F38();
    v55 = v97;
    v56 = v109;
    (*(v97 + 16))(v104, v54, v109);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0, MEMORY[0x1E699F158]);
    sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20, MEMORY[0x1E699F1E0]);
    v57 = v106;
    sub_1E65E4138();
    sub_1E5E70EC8(v57, v108);
    swift_storeEnumTagMultiPayload();
    sub_1E6071CE8();
    sub_1E65E4138();
    sub_1E5DFE50C(v57, &qword_1ED073DC8, &qword_1E65EEE18);
    return (*(v55 + 8))(v54, v56);
  }

  return result;
}

uint64_t sub_1E6070520@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v186 = a3;
  v187 = a1;
  v182 = a5;
  v183 = a2;
  v6 = a4[1];
  v167 = *a4;
  v166 = v6;
  v7 = a4[3];
  v169 = a4[2];
  v168 = v7;
  v8 = a4[5];
  v173 = a4[4];
  v174 = v8;
  v9 = a4[7];
  v175 = a4[6];
  v172 = v9;
  v10 = a4[9];
  v171 = a4[8];
  v170 = v10;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v141 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v153 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v152 = &v141 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  MEMORY[0x1EEE9AC00](v156);
  v157 = &v141 - v13;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v14 = MEMORY[0x1EEE9AC00](v179);
  v159 = (&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v154 = &v141 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v141 - v18;
  v165 = sub_1E65D76F8();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = v19;
  v184 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppComposer(0);
  v21 = v20 - 8;
  v161 = *(v20 - 8);
  v22 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v162 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v141 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v141 - v27;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v29 = MEMORY[0x1EEE9AC00](v176);
  v31 = &v141 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v141 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v141 - v35;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  MEMORY[0x1EEE9AC00](v178);
  v39 = &v141 - v38;
  v40 = *(v37 + *(v21 + 28) + 8);
  v177 = v39;
  v160 = 0x80000001E6611D30;
  if (v40 < 2)
  {
    v162 = type metadata accessor for AppComposer;
    v41 = v185;
    sub_1E5E1D34C(v37, v185, type metadata accessor for AppComposer);
    sub_1E5DF650C(v183, &v188);
    v144 = *a4;
    v145 = a4[3];
    v146 = a4[5];
    v147 = a4[7];
    v148 = a4[9];
    v42 = *(v161 + 80);
    v43 = (v42 + 16) & ~v42;
    v44 = v42 | 7;
    v45 = (v43 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v143 = v45;
    v161 = v43 + v22;
    v46 = (v43 + v22 + 55) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v149 = v47;
    sub_1E5E1FA80(v41, v47 + v43);
    sub_1E5DF599C(&v188, v47 + v45);
    *(v47 + v45 + 40) = 1;
    v48 = (v47 + v46);
    *v48 = 0xD000000000000014;
    v48[1] = v160;
    v49 = (v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8));
    v50 = *(a4 + 4);
    v49[3] = *(a4 + 3);
    v49[4] = v50;
    v51 = *(a4 + 2);
    v49[1] = *(a4 + 1);
    v49[2] = v51;
    *v49 = *a4;
    v52 = v187;
    v53 = v41;
    v54 = v162;
    sub_1E5E1D34C(v187, v41, v162);
    v151 = v44;
    v160 = swift_allocObject();
    v150 = v43;
    sub_1E5E1FA80(v41, v160 + v43);
    sub_1E5E1D34C(v52, v41, v54);
    sub_1E5DF650C(v183, &v188);
    v55 = v164;
    v183 = *(v164 + 16);
    v56 = v165;
    v183(v184, v186, v165);
    v57 = v143;
    v58 = (v143 + 47) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + *(v55 + 80) + 80) & ~*(v55 + 80);
    v60 = swift_allocObject();
    sub_1E5E1FA80(v53, v60 + v43);
    sub_1E5DF599C(&v188, v60 + v57);
    v61 = (v60 + v58);
    v62 = *(a4 + 3);
    v61[2] = *(a4 + 2);
    v61[3] = v62;
    v61[4] = *(a4 + 4);
    v63 = *(a4 + 1);
    *v61 = *a4;
    v61[1] = v63;
    v64 = v184;
    (*(v55 + 32))(v60 + v59, v184, v56);
    v183(v64, v186, v56);
    type metadata accessor for ArtworkDescriptor(0);
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v165 = type metadata accessor for ItemMetrics(0);
    v164 = type metadata accessor for SectionMetrics(0);
    v163 = type metadata accessor for ViewDescriptor(0);
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v65 = v152;
    sub_1E65E2448();
    v66 = sub_1E65E2DA8();
    v67 = v166;
    if ((v66 & 1) == 0)
    {
      v67 = 0;
    }

    v68 = v167;
    if ((v66 & 1) == 0)
    {
      v68 = 0;
    }

    *&v188 = v68;
    *(&v188 + 1) = v67;
    v69 = v170;
    if ((v66 & 1) == 0)
    {
      v69 = 0;
    }

    v70 = v168;
    if ((v66 & 1) == 0)
    {
      v70 = 0;
    }

    v71 = v169;
    if ((v66 & 1) == 0)
    {
      v71 = 0;
    }

    v189 = v71;
    v190 = v70;
    v72 = v171;
    if ((v66 & 1) == 0)
    {
      v72 = 0;
    }

    v73 = v172;
    if ((v66 & 1) == 0)
    {
      v73 = 0;
    }

    v74 = v174;
    if ((v66 & 1) == 0)
    {
      v74 = 0;
    }

    v75 = v173;
    if ((v66 & 1) == 0)
    {
      v75 = 0;
    }

    v191 = v75;
    v192 = v74;
    v76 = v175;
    if ((v66 & 1) == 0)
    {
      v76 = 0;
    }

    v193 = v76;
    v194 = v73;
    v195 = v72;
    v196 = v69;
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38, MEMORY[0x1E699F2B0]);
    v77 = v157;
    v78 = v155;
    sub_1E630FFE8(&v188, v155, v157);
    v153[1](v65, v78);
    v79 = v185;
    sub_1E5E1D34C(v187, v185, v162);
    v80 = swift_allocObject();
    sub_1E5E1FA80(v79, v80 + v150);
    sub_1E6071EE4();
    v81 = v154;
    sub_1E6259D5C(sub_1E60730EC, v80, v156);

    sub_1E5DFE50C(v77, &qword_1ED073DF8, &unk_1E65FA440);
    v82 = sub_1E6071E58();
    v83 = v158;
    v84 = v179;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v81, &unk_1ED077710, &qword_1E65EEE28);
    v85 = v159;
    sub_1E5FEE4C8();
    v86 = sub_1E6072098();
    v87 = v181;
    sub_1E62DFC6C(v85, v84, v176, v82, v86);
    v88 = sub_1E6071DCC();
    v89 = v177;
    sub_1E62DFC6C(v87, v180, MEMORY[0x1E69E73E0], v88, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v87, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v85, &unk_1ED077710, &qword_1E65EEE28);
    sub_1E5DFE50C(v83, &unk_1ED077710, &qword_1E65EEE28);
    v90 = v89;
LABEL_45:
    sub_1E6071C64(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
    sub_1E5FEE4C8();
    return sub_1E5DFE50C(v90, &qword_1ED073DA8, &unk_1E65FA550);
  }

  v152 = v25;
  v91 = v183;
  v153 = v34;
  v154 = v23;
  v155 = v26;
  v156 = v28;
  v157 = v36;
  v158 = v31;
  v92 = v185;
  if (v40 == 3)
  {
    v159 = type metadata accessor for AppComposer;
    sub_1E5E1D34C(v37, v185, type metadata accessor for AppComposer);
    v93 = v91;
    sub_1E5DF650C(v91, &v188);
    v144 = *a4;
    v145 = a4[3];
    v146 = a4[5];
    v147 = a4[7];
    v148 = a4[9];
    v94 = *(v161 + 80);
    v95 = (v94 + 16) & ~v94;
    v96 = v94 | 7;
    v161 = v95 + v22;
    v97 = (v95 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v143 = v97;
    v98 = (v97 + 47) & 0xFFFFFFFFFFFFFFF8;
    v142 = v98;
    v99 = swift_allocObject();
    v149 = v99;
    sub_1E5E1FA80(v92, v99 + v95);
    sub_1E5DF599C(&v188, v99 + v97);
    v100 = (v99 + v98);
    *v100 = 0xD000000000000014;
    v100[1] = v160;
    v101 = v99 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8);
    v102 = *(a4 + 4);
    *(v101 + 48) = *(a4 + 3);
    *(v101 + 64) = v102;
    v103 = *(a4 + 2);
    *(v101 + 16) = *(a4 + 1);
    *(v101 + 32) = v103;
    *v101 = *a4;
    *(v101 + 80) = 1;
    v104 = v187;
    v105 = v159;
    sub_1E5E1D34C(v187, v92, v159);
    v151 = v96;
    v160 = swift_allocObject();
    v106 = v95;
    v150 = v95;
    sub_1E5E1FA80(v92, v160 + v95);
    sub_1E5E1D34C(v104, v92, v105);
    sub_1E5DF650C(v93, &v188);
    v107 = v164;
    v183 = *(v164 + 16);
    v108 = v184;
    v109 = v165;
    v183(v184, v186, v165);
    v110 = v142;
    v111 = (v142 + *(v107 + 80) + 80) & ~*(v107 + 80);
    v112 = swift_allocObject();
    sub_1E5E1FA80(v92, v112 + v106);
    sub_1E5DF599C(&v188, v112 + v143);
    v113 = (v112 + v110);
    v114 = *(a4 + 3);
    v113[2] = *(a4 + 2);
    v113[3] = v114;
    v113[4] = *(a4 + 4);
    v115 = *(a4 + 1);
    *v113 = *a4;
    v113[1] = v115;
    (*(v107 + 32))(v112 + v111, v108, v109);
    v183(v108, v186, v109);
    type metadata accessor for ArtworkDescriptor(0);
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v165 = type metadata accessor for ItemMetrics(0);
    v164 = type metadata accessor for SectionMetrics(0);
    v163 = type metadata accessor for ViewDescriptor(0);
    sub_1E60733D0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E5FEB2FC();
    sub_1E60728B0();
    sub_1E60733D0(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E5DF11E0();
    sub_1E60733D0(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF1338();
    sub_1E60733D0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    v116 = v152;
    sub_1E65E1EB8();
    v117 = sub_1E65E2DA8();
    v118 = v167;
    if ((v117 & 1) == 0)
    {
      v118 = 0;
    }

    v119 = v166;
    if ((v117 & 1) == 0)
    {
      v119 = 0;
    }

    *&v188 = v118;
    *(&v188 + 1) = v119;
    v120 = v169;
    if ((v117 & 1) == 0)
    {
      v120 = 0;
    }

    v121 = v168;
    if ((v117 & 1) == 0)
    {
      v121 = 0;
    }

    v122 = v173;
    if ((v117 & 1) == 0)
    {
      v122 = 0;
    }

    v189 = v120;
    v190 = v121;
    v123 = v174;
    if ((v117 & 1) == 0)
    {
      v123 = 0;
    }

    v124 = v175;
    if ((v117 & 1) == 0)
    {
      v124 = 0;
    }

    v125 = v172;
    if ((v117 & 1) == 0)
    {
      v125 = 0;
    }

    v126 = v171;
    if ((v117 & 1) == 0)
    {
      v126 = 0;
    }

    v191 = v122;
    v192 = v123;
    v127 = v170;
    if ((v117 & 1) == 0)
    {
      v127 = 0;
    }

    v193 = v124;
    v194 = v125;
    v195 = v126;
    v196 = v127;
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450, MEMORY[0x1E699F128]);
    v128 = v156;
    v129 = v154;
    sub_1E630FFE8(&v188, v154, v156);
    (*(v162 + 1))(v116, v129);
    v130 = v185;
    sub_1E5E1D34C(v187, v185, v159);
    v131 = swift_allocObject();
    sub_1E5E1FA80(v130, v131 + v150);
    sub_1E6072124();
    v132 = v153;
    sub_1E6259D5C(sub_1E60730EC, v131, v155);

    sub_1E5DFE50C(v128, &unk_1ED077720, &qword_1E65EEE40);
    v133 = sub_1E6072098();
    v134 = v157;
    v135 = v176;
    sub_1E5FEE4C8();
    sub_1E5DFE50C(v132, &qword_1ED073E10, &unk_1E65FA460);
    v136 = v158;
    sub_1E5FEE4C8();
    v137 = sub_1E6071E58();
    v138 = v181;
    sub_1E62DFB74(v136, v179, v135, v137, v133);
    v139 = sub_1E6071DCC();
    v90 = v177;
    sub_1E62DFC6C(v138, v180, MEMORY[0x1E69E73E0], v139, MEMORY[0x1E6982070]);
    sub_1E5DFE50C(v138, &qword_1ED073DE8, &unk_1E65FA430);
    sub_1E5DFE50C(v136, &qword_1ED073E10, &unk_1E65FA460);
    sub_1E5DFE50C(v134, &qword_1ED073E10, &unk_1E65FA460);
    goto LABEL_45;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

unint64_t sub_1E6071B80()
{
  result = qword_1EE2D4D38;
  if (!qword_1EE2D4D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DB0, &qword_1E65EEE00);
    sub_1E5FED46C(&unk_1EE2D6270, &qword_1ED073DB8, &qword_1E65EEE08, MEMORY[0x1E699F230]);
    sub_1E5FED46C(&unk_1EE2D6230, &qword_1ED073DC0, &qword_1E65EEE10, MEMORY[0x1E699F328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D38);
  }

  return result;
}

uint64_t sub_1E6071C64(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6071CE8()
{
  result = qword_1EE2D4D50;
  if (!qword_1EE2D4D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DC8, &qword_1E65EEE18);
    sub_1E5FED46C(&qword_1EE2D62C0, &qword_1ED073DD0, &unk_1E65FA8B0, MEMORY[0x1E699F158]);
    sub_1E5FED46C(&qword_1EE2D62A0, &qword_1ED073DD8, &qword_1E65EEE20, MEMORY[0x1E699F1E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D50);
  }

  return result;
}

unint64_t sub_1E6071DCC()
{
  result = qword_1ED073DE0;
  if (!qword_1ED073DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DE8, &unk_1E65FA430);
    sub_1E6071E58();
    sub_1E6072098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073DE0);
  }

  return result;
}

unint64_t sub_1E6071E58()
{
  result = qword_1ED077C50;
  if (!qword_1ED077C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077710, &qword_1E65EEE28);
    sub_1E6071EE4();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C50);
  }

  return result;
}

unint64_t sub_1E6071EE4()
{
  result = qword_1ED073DF0;
  if (!qword_1ED073DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DF8, &unk_1E65FA440);
    sub_1E6071F9C();
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38, MEMORY[0x1E699F2B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073DF0);
  }

  return result;
}

unint64_t sub_1E6071F9C()
{
  result = qword_1ED077C60;
  if (!qword_1ED077C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E00, &qword_1E65EEE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077700, &qword_1E65EEE38);
    sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38, MEMORY[0x1E699F2B0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C60);
  }

  return result;
}

unint64_t sub_1E6072098()
{
  result = qword_1ED073E08;
  if (!qword_1ED073E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E10, &unk_1E65FA460);
    sub_1E6072124();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E08);
  }

  return result;
}

unint64_t sub_1E6072124()
{
  result = qword_1ED077C30;
  if (!qword_1ED077C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077720, &qword_1E65EEE40);
    sub_1E60721DC();
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450, MEMORY[0x1E699F128]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C30);
  }

  return result;
}

unint64_t sub_1E60721DC()
{
  result = qword_1ED073E18;
  if (!qword_1ED073E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077C40, &unk_1E65FA8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E20, &unk_1E65FA450);
    sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450, MEMORY[0x1E699F128]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E18);
  }

  return result;
}

unint64_t sub_1E6072334()
{
  result = qword_1ED073E38;
  if (!qword_1ED073E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D58, &qword_1E65EEDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D50, &qword_1E65EEDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D48, &qword_1E65EEDA0);
    sub_1E5FED46C(&qword_1ED073E30, &qword_1ED073D48, &qword_1E65EEDA0, MEMORY[0x1E699F620]);
    sub_1E5FEAE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E38);
  }

  return result;
}

unint64_t sub_1E6072488()
{
  result = qword_1ED073E40;
  if (!qword_1ED073E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D60, &qword_1E65EEDB8);
    sub_1E6072334();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E40);
  }

  return result;
}

unint64_t sub_1E6072514()
{
  result = qword_1ED073E48;
  if (!qword_1ED073E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D88, &qword_1E65EEDE0);
    sub_1E60725A0();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E48);
  }

  return result;
}

unint64_t sub_1E60725A0()
{
  result = qword_1ED073E50;
  if (!qword_1ED073E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D80, &qword_1E65EEDD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D78, &qword_1E65EEDD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D70, &qword_1E65EEDC8);
    sub_1E5FED46C(&qword_1ED073E58, &qword_1ED073D70, &qword_1E65EEDC8, MEMORY[0x1E699F340]);
    sub_1E5FEAE50();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E50);
  }

  return result;
}

unint64_t sub_1E60726F4()
{
  result = qword_1ED073E60;
  if (!qword_1ED073E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073D68, &qword_1E65EEDC0);
    sub_1E6072514();
    sub_1E6072488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E60);
  }

  return result;
}

uint64_t sub_1E6072798(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v4);
}

unint64_t sub_1E60728B0()
{
  result = qword_1ED077B80;
  if (!qword_1ED077B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B70, &unk_1E65FA820);
    sub_1E607293C();
    sub_1E6072E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077B80);
  }

  return result;
}

unint64_t sub_1E607293C()
{
  result = qword_1ED073E70;
  if (!qword_1ED073E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077B90, &qword_1E65EEE48);
    sub_1E60729C8();
    sub_1E6072AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E70);
  }

  return result;
}

unint64_t sub_1E60729C8()
{
  result = qword_1EE2D4D20;
  if (!qword_1EE2D4D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077BA0, &unk_1E65FA830);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590, MEMORY[0x1E697DB78]);
    sub_1E5FED46C(&qword_1EE2D6BF0, &unk_1ED077BB0, &qword_1E65EEE50, MEMORY[0x1E699D1B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D20);
  }

  return result;
}

unint64_t sub_1E6072AAC()
{
  result = qword_1ED073E78;
  if (!qword_1ED073E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077BC0, &unk_1E65FA840);
    sub_1E60733D0(&qword_1EE2D64E8, MEMORY[0x1E699E888], MEMORY[0x1E699E880]);
    sub_1E6072B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073E78);
  }

  return result;
}

unint64_t sub_1E6072B68()
{
  result = qword_1ED077BD0;
  if (!qword_1ED077BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E80, &qword_1E65EEE58);
    sub_1E6072BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077BD0);
  }

  return result;
}

unint64_t sub_1E6072BEC()
{
  result = qword_1ED077BE0;
  if (!qword_1ED077BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E88, &unk_1E65FA850);
    sub_1E6072CF0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077BF0, &qword_1E65EEE68);
    sub_1E5FED46C(&qword_1EE2D65F0, &unk_1ED077BF0, &qword_1E65EEE68, MEMORY[0x1E699D570]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077BE0);
  }

  return result;
}

unint64_t sub_1E6072CF0()
{
  result = qword_1EE2D4CA0;
  if (!qword_1EE2D4CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E90, &qword_1E65EEE60);
    sub_1E6072DAC();
    sub_1E60733D0(&qword_1EE2D6280, MEMORY[0x1E699F228], MEMORY[0x1E699F220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CA0);
  }

  return result;
}

unint64_t sub_1E6072DAC()
{
  result = qword_1EE2D4D40;
  if (!qword_1EE2D4D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073E98, &unk_1E65FA860);
    sub_1E60733D0(&qword_1EE2D6280, MEMORY[0x1E699F228], MEMORY[0x1E699F220]);
    sub_1E60733D0(&qword_1EE2D6288, MEMORY[0x1E699F218], MEMORY[0x1E699F210]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D40);
  }

  return result;
}

unint64_t sub_1E6072E98()
{
  result = qword_1ED077C00;
  if (!qword_1ED077C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EA0, &unk_1E65FA870);
    sub_1E6072F24();
    sub_1E6073008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C00);
  }

  return result;
}

unint64_t sub_1E6072F24()
{
  result = qword_1ED077C10;
  if (!qword_1ED077C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EA8, &qword_1E65EEE70);
    sub_1E5FED46C(&unk_1ED077C20, &qword_1ED073EB0, &unk_1E65FA880, MEMORY[0x1E699D538]);
    sub_1E5FED46C(&qword_1EE2D6240, &qword_1ED073EB8, &qword_1E65EEE78, MEMORY[0x1E699F2B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077C10);
  }

  return result;
}

unint64_t sub_1E6073008()
{
  result = qword_1EE2D4D60;
  if (!qword_1EE2D4D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EC0, &unk_1E65FA890);
    sub_1E5FED46C(&qword_1EE2D6540, &qword_1ED073EC8, &qword_1E65EEE80, MEMORY[0x1E699E760]);
    sub_1E6071C64(&qword_1EE2D4CB0, &qword_1ED073DA0, &unk_1E65FA8A0, sub_1E6071CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D60);
  }

  return result;
}

uint64_t sub_1E6073104(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1E60731B0()
{
  result = qword_1EE2D4C48;
  if (!qword_1EE2D4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073EE0, &qword_1E65EEE98);
    sub_1E603BAA0();
    sub_1E603C7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C48);
  }

  return result;
}

uint64_t sub_1E60732C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E60733D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6073418(uint64_t a1)
{
  v2 = type metadata accessor for RemoteParticipantScope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_42Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E607419C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5 + 80);

  return sub_1E620AA8C((v0 + v2), v0 + v3, v7, v8, (v0 + v5), v9);
}

uint64_t objectdestroy_55Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v93 + v92 + 7) & 0xFFFFFFFFFFFFFFF8)));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6074F70()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 55) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v4 + 40);
  v8 = (v0 + v5);
  v9 = *v8;
  v10 = v8[1];

  return sub_1E620DAB4((v0 + v2), v0 + v4, v7, v9, v10, (v0 + v6));
}

uint64_t sub_1E607501C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t objectdestroy_48Tm()
{
  v102 = type metadata accessor for AppComposer(0);
  v98 = *(*(v102 - 1) + 80);
  v96 = *(*(v102 - 1) + 64);
  v1 = sub_1E65D76F8();
  v99 = *(v1 - 8);
  v100 = v1;
  v95 = *(v99 + 80);
  v101 = v0;
  v97 = (v98 + 16) & ~v98;
  v92 = v0 + v97;

  v2 = v0 + v97 + v102[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v94 = type metadata accessor for AccountService();
  v93 = *(v94[-1].Description + 1);
  v93(v2 + v4, v94);
  v5 = v3[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(v2 + v5, v91);
  v6 = v3[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v6, v89);
  v7 = v3[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v7, v87);
  v8 = v3[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v8, v85);
  v9 = v3[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v9, v83);
  v10 = v3[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v10, v81);
  v11 = v3[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v11, v79);
  v12 = v3[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v12, v77);
  v13 = v3[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v13, v75);
  v14 = v3[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v14, v73);
  v15 = v3[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v15, v71);
  v16 = v3[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v16, v69);
  v17 = v3[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v17, v67);
  v18 = v3[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v18, v65);
  v19 = v3[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v19, v63);
  v20 = v3[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v20, v61);
  v21 = v3[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v21, v59);
  v22 = v3[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(v2 + v22, v57);
  v23 = v3[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(v2 + v23, v55);
  v24 = v3[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(v2 + v24, v53);
  v25 = v3[27];
  v51 = type metadata accessor for ServiceSubscriptionService();
  v50 = *(v51[-1].Description + 1);
  v50(v2 + v25, v51);
  v26 = v3[28];
  v44 = type metadata accessor for SessionService();
  v49 = *(v44[-1].Description + 1);
  v49(v2 + v26, v44);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v48 = *(v28[-1].Description + 1);
  v48(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v47 = *(v30[-1].Description + 1);
  v47(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v46 = *(v32[-1].Description + 1);
  v46(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v43 = *(v36[-1].Description + 1);
  v43(v2 + v35, v36);

  v37 = v92 + v102[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v93(v38 + v3[6], v94);
  v90(v38 + v3[7], v91);
  v88(v38 + v3[8], v89);
  v86(v38 + v3[9], v87);
  v84(v38 + v3[10], v85);
  v82(v38 + v3[11], v83);
  v80(v38 + v3[12], v81);
  v78(v38 + v3[13], v79);
  v76(v38 + v3[14], v77);
  v74(v38 + v3[15], v75);
  v72(v38 + v3[16], v73);
  v70(v38 + v3[17], v71);
  v68(v38 + v3[18], v69);
  v66(v38 + v3[19], v67);
  v64(v38 + v3[20], v65);
  v62(v38 + v3[21], v63);
  v60(v38 + v3[22], v61);
  v58(v38 + v3[23], v59);
  v56(v38 + v3[24], v57);
  v54(v38 + v3[25], v55);
  v52(v38 + v3[26], v53);
  v50(v38 + v3[27], v51);
  v49(v38 + v3[28], v44);
  v48(v38 + v3[29], v28);
  v47(v38 + v3[30], v30);
  v46(v38 + v3[31], v32);

  v45(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v43(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v92 + v102[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v92 + v102[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = (v96 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (((v40 + 47) & 0xFFFFFFFFFFFFFFF8) + v95 + 80) & ~v95;
  __swift_destroy_boxed_opaque_existential_1((v101 + v40));
  swift_unknownObjectRelease();

  (*(v99 + 8))(v101 + v41, v100);

  return swift_deallocObject();
}

uint64_t sub_1E6075E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  v11 = v3 + ((v9 + *(v10 + 80) + 80) & ~*(v10 + 80));

  return a3(a1, a2, v3 + v7, v3 + v8, v3 + v9, v11);
}

uint64_t sub_1E6075F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v5 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v14 + 80);

  return sub_1E6300A4C(a1, a2, a3, a4, v5 + v12, v5 + v13, v14, v15, a5);
}

uint64_t sub_1E6076050(uint64_t (*a1)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 55) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = *(v1 + v5 + 40);

  return a1(v1 + v3, v1 + v5, v13, v9, v10, v11, v12);
}

uint64_t sub_1E6076114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a4(a1, a2, a3, v4 + v9, v10);
}

uint64_t objectdestroy_70Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6076F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(type metadata accessor for AppComposer(0) - 8);
  v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E6303ED4(a1, a2, a3, a4, a5, a6, v7 + v16, v7 + v17, a7, v7 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8), *(v7 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8) + 80));
}

uint64_t sub_1E60770EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_1E606F6A0(a1, a2, a3, v5 + v12, (v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a4, a5);
}

uint64_t objectdestroy_96Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E607720C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t type metadata accessor for URLRoute(uint64_t a1)
{
  result = qword_1ED073F08;
  if (!qword_1ED073F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E607739C(uint64_t a1)
{
  result = _s8ResourceOMa(319);
  if (v2 <= 0x3F)
  {
    result = sub_1E65D74E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6077428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLRoute(0);
  v9 = *(v5 + 16);
  v9(a2 + *(v8 + 24), a1, v4);
  v9(v7, a1, v4);
  sub_1E648B700(v7, a2);
  v10 = sub_1E64A37AC();
  if (!*(v10 + 16) || (v11 = sub_1E6215038(1953460082, 0xE400000000000000), (v12 & 1) == 0))
  {

    v21 = xmmword_1E65EAE00;
    goto LABEL_6;
  }

  v13 = (*(v10 + 56) + 16 * v11);
  v14 = *v13;
  v15 = v13[1];

  RootItem.init(rawValue:)(v14, v15, &v21);
  v16 = *(&v21 + 1);
  if (*(&v21 + 1) == 6)
  {
LABEL_6:
    swift_beginAccess();
    v17 = qword_1ED075948;
    v16 = qword_1ED075950;
    sub_1E5E05374(qword_1ED075948, qword_1ED075950);
    goto LABEL_7;
  }

  v17 = v21;
LABEL_7:
  result = (*(v5 + 8))(a1, v4);
  v19 = (a2 + *(v8 + 20));
  *v19 = v17;
  v19[1] = v16;
  return result;
}

uint64_t sub_1E6077604(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F40, &qword_1E65EEFD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60780C4();
  sub_1E65E6DA8();
  LOBYTE(v13) = 0;
  _s8ResourceOMa(0);
  sub_1E6078240(&qword_1ED073F48, _s8ResourceOMa, &unk_1E66053D0);
  sub_1E65E6B78();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for URLRoute(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_1E5E05374(v13, v10);
    sub_1E5DF6D3C();
    sub_1E65E6B78();
    sub_1E5E0476C(v13, v14);
    LOBYTE(v13) = 2;
    sub_1E65D74E8();
    sub_1E6078240(&qword_1ED073F50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E607785C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = sub_1E65D74E8();
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s8ResourceOMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F20, &qword_1E65EEFD0);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v19 - v8;
  v10 = type metadata accessor for URLRoute(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E60780C4();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v14 = v23;
  v19 = v5;
  LOBYTE(v27) = 0;
  sub_1E6078240(&qword_1ED073F30, _s8ResourceOMa, &unk_1E66053F8);
  v15 = v24;
  sub_1E65E6AD8();
  sub_1E6078118(v15, v12);
  v28 = 1;
  sub_1E5DF6CE4();
  sub_1E65E6AD8();
  *&v12[*(v10 + 20)] = v27;
  LOBYTE(v27) = 2;
  sub_1E6078240(&qword_1ED073F38, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v16 = v19;
  v17 = v22;
  sub_1E65E6AD8();
  (*(v14 + 8))(v9, v25);
  (*(v20 + 32))(&v12[*(v10 + 24)], v16, v17);
  sub_1E607817C(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1E60781E0(v12, type metadata accessor for URLRoute);
}

uint64_t sub_1E6077CCC()
{
  v1 = 1953460082;
  if (*v0 != 1)
  {
    v1 = 0x69796C7265646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656372756F736572;
  }
}

uint64_t sub_1E6077D2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E60786B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6077D54(uint64_t a1)
{
  v2 = sub_1E60780C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6077D90(uint64_t a1)
{
  v2 = sub_1E60780C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6077DFC()
{
  sub_1E65E6D28();
  sub_1E648EFEC(v1);
  RootItem.rawValue.getter();
  sub_1E65E5D78();

  sub_1E65D74E8();
  sub_1E6078240(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6077ED8(uint64_t a1)
{
  sub_1E648EFEC(a1);
  RootItem.rawValue.getter();
  sub_1E65E5D78();

  sub_1E65D74E8();
  sub_1E6078240(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return sub_1E65E5B48();
}

uint64_t sub_1E6077FA0(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E648EFEC(v2);
  RootItem.rawValue.getter();
  sub_1E65E5D78();

  sub_1E65D74E8();
  sub_1E6078240(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

unint64_t sub_1E60780C4()
{
  result = qword_1ED073F28;
  if (!qword_1ED073F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F28);
  }

  return result;
}

uint64_t sub_1E6078118(uint64_t a1, uint64_t a2)
{
  v4 = _s8ResourceOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E607817C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60781E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6078240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6078288(uint64_t a1, char *a2)
{
  if ((sub_1E648FBE4(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for URLRoute(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = &a2[v4];
  v8 = *v7;
  v9 = *(v7 + 1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v10 = 0xE600000000000000;
        v11 = 0x686372616573;
        if (v9 > 2)
        {
          goto LABEL_20;
        }

        break;
      case 4:
        v10 = 0xE600000000000000;
        v11 = 0x7478654E7075;
        if (v9 <= 2)
        {
          break;
        }

        goto LABEL_20;
      case 5:
        v10 = 0xE500000000000000;
        v11 = 0x736E616C70;
        if (v9 > 2)
        {
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x756F59726F66;
        if (v9 <= 2)
        {
          goto LABEL_28;
        }

        goto LABEL_20;
      }

      if (v6 == 2)
      {
        v10 = 0xE700000000000000;
        v11 = 0x7972617262696CLL;
        if (v9 <= 2)
        {
          goto LABEL_28;
        }

LABEL_20:
        switch(v9)
        {
          case 3:
            v12 = 0xE600000000000000;
            if (v11 != 0x686372616573)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          case 4:
            v12 = 0xE600000000000000;
            if (v11 == 0x7478654E7075)
            {
              goto LABEL_40;
            }

LABEL_42:
            v14 = sub_1E65E6C18();

            if (v14)
            {
              goto LABEL_43;
            }

            return 0;
          case 5:
            v12 = 0xE500000000000000;
            if (v11 != 0x736E616C70)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
        }

LABEL_35:
        v13 = v11;
        MEMORY[0x1E694D7C0](v8, v9);
        v12 = 0xE90000000000003ALL;
        if (v13 == 0x7974696C61646F6DLL)
        {
          goto LABEL_40;
        }

        goto LABEL_42;
      }

LABEL_17:
      MEMORY[0x1E694D7C0](*v5);
      v11 = 0x7974696C61646F6DLL;
      v10 = 0xE90000000000003ALL;
      if (v9 > 2)
      {
        goto LABEL_20;
      }

      goto LABEL_28;
    }

    v10 = 0xE700000000000000;
    v11 = 0x65726F6C707865;
    if (v9 > 2)
    {
      goto LABEL_20;
    }
  }

LABEL_28:
  if (!v9)
  {
    v12 = 0xE700000000000000;
    if (v11 == 0x65726F6C707865)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (v9 == 1)
  {
    v12 = 0xE600000000000000;
    if (v11 != 0x756F59726F66)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v9 != 2)
  {
    goto LABEL_35;
  }

  v12 = 0xE700000000000000;
  if (v11 != 0x7972617262696CLL)
  {
    goto LABEL_42;
  }

LABEL_40:
  if (v10 != v12)
  {
    goto LABEL_42;
  }

LABEL_43:

  return sub_1E65D7468();
}

unint64_t sub_1E60785B0()
{
  result = qword_1ED073F60;
  if (!qword_1ED073F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F60);
  }

  return result;
}

unint64_t sub_1E6078608()
{
  result = qword_1ED073F68;
  if (!qword_1ED073F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F68);
  }

  return result;
}

unint64_t sub_1E6078660()
{
  result = qword_1ED073F70;
  if (!qword_1ED073F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073F70);
  }

  return result;
}

uint64_t sub_1E60786B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xED00004C5255676ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}