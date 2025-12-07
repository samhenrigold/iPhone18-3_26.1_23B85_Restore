uint64_t sub_1E64460A0(uint64_t a1, double a2, double a3)
{
  v8 = *(sub_1E65DB748() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1E5FE99E8;

  return sub_1E6445B0C(a1, v3 + v9, v3 + v12, a2, a3);
}

uint64_t sub_1E64461EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a2;
  v57 = a3;
  v60 = a1;
  v47 = a4;
  v6 = sub_1E65DB288();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - v9;
  v11 = sub_1E65D74E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v55 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DB748();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v50 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v42 - v18;
  v20 = sub_1E65DB048();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65DB558();
  v45 = *(v24 - 8);
  v46 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v49 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v44 = v42 - v27;
  v58 = v21;
  v59 = v20;
  v28 = v21;
  v29 = v14;
  (*(v28 + 16))(v23, v60, v20);
  v60 = v15;
  v30 = *(v15 + 16);
  v30(v19, v56, v14);
  v48 = *(v57 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  sub_1E65DB008();
  v56 = v12;
  v57 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E62282E0(v10);
    v31 = sub_1E65DB0F8();
    sub_1E6446CC8(&unk_1ED075F10, MEMORY[0x1E699D058], MEMORY[0x1E699D060]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E699D050], v31);
    swift_willThrow();
LABEL_5:
    (*(v60 + 8))(v19, v29);
    return (*(v58 + 8))(v23, v59);
  }

  (*(v56 + 32))(v55, v10, v57);
  v43 = v14;
  v30(v50, v19, v14);
  v42[1] = sub_1E65DB028();
  v33 = v51;
  sub_1E65DB038();
  sub_1E65DB278();
  (*(v52 + 8))(v33, v53);
  sub_1E65D7428();
  v34 = v49;
  v35 = v54;
  sub_1E65DB518();
  if (v35)
  {
    v29 = v43;
    (*(v56 + 8))(v55, v57);
    goto LABEL_5;
  }

  (*(v56 + 8))(v55, v57);
  (*(v60 + 8))(v19, v43);
  (*(v58 + 8))(v23, v59);
  v37 = v44;
  v38 = v45;
  v39 = v34;
  v40 = v46;
  (*(v45 + 32))(v44, v39, v46);
  sub_1E65DB4F8();
  v60 = sub_1E65DB528();
  v59 = v41;
  sub_1E65DB4E8();
  sub_1E65DB538();
  sub_1E65DB548();
  sub_1E65DB508();
  sub_1E65DB0D8();
  return (*(v38 + 8))(v37, v40);
}

uint64_t sub_1E64468AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(sub_1E65DB748() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for AppComposer(0) - 8);
  return sub_1E64461EC(a1, v4 + v8, v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2);
}

uint64_t sub_1E64469A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DB048();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  if (*(*(a1 + *(type metadata accessor for AppState(0) + 148)) + 16) && (sub_1E6416C60(a2), (v7 & 1) != 0))
  {
  }

  else
  {
    sub_1E6428640(MEMORY[0x1E69E7CC0]);
  }

  return sub_1E65DB098();
}

uint64_t sub_1E6446AC0(uint64_t a1)
{
  v3 = *(sub_1E65DB048() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E64469A4(a1, v4);
}

uint64_t sub_1E6446B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65DB0A8();
  v6 = *(type metadata accessor for AppState(0) + 148);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + v6);
  result = sub_1E64222A0(v5, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v9;
  return result;
}

uint64_t objectdestroy_6Tm_2()
{
  v1 = sub_1E65DB048();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E6446C48(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E65DB048() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6446B40(a1, a2, v6);
}

uint64_t sub_1E6446CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RootItem.contains<A>(id:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = *v2;
  v5 = v2[1];
  (*(v6 + 16))(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    v7 = v15;
    v8 = v16;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v9 = 0xE600000000000000;
        v10 = 0x686372616573;
        if (v16 <= 2)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

      if (v5 != 4)
      {
        if (v5 == 5)
        {
          v9 = 0xE500000000000000;
          v10 = 0x736E616C70;
          if (v16 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

LABEL_18:
        v15 = 0x7974696C61646F6DLL;
        v16 = 0xE90000000000003ALL;
        MEMORY[0x1E694D7C0](v4, v5);
        v10 = v15;
        v9 = v16;
        if (v8 <= 2)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

      v9 = 0xE600000000000000;
      v10 = 0x7478654E7075;
      if (v16 > 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!v5)
      {
        v9 = 0xE700000000000000;
        v10 = 0x65726F6C707865;
        if (v16 <= 2)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

      if (v5 != 1)
      {
        if (v5 == 2)
        {
          v9 = 0xE700000000000000;
          v10 = 0x7972617262696CLL;
          if (v16 <= 2)
          {
            goto LABEL_29;
          }

LABEL_21:
          switch(v8)
          {
            case 3:
              v12 = 0xE600000000000000;
              if (v10 != 0x686372616573)
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            case 4:
              v12 = 0xE600000000000000;
              if (v10 != 0x7478654E7075)
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            case 5:
              v12 = 0xE500000000000000;
              if (v10 != 0x736E616C70)
              {
                goto LABEL_43;
              }

              goto LABEL_41;
          }

          goto LABEL_36;
        }

        goto LABEL_18;
      }

      v9 = 0xE600000000000000;
      v10 = 0x756F59726F66;
      if (v16 > 2)
      {
        goto LABEL_21;
      }
    }

LABEL_29:
    switch(v8)
    {
      case 0:
        v12 = 0xE700000000000000;
        if (v10 != 0x65726F6C707865)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      case 1:
        v12 = 0xE600000000000000;
        if (v10 != 0x756F59726F66)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      case 2:
        v12 = 0xE700000000000000;
        if (v10 != 0x7972617262696CLL)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (v9 == v12)
        {

          v11 = 1;
          return v11 & 1;
        }

LABEL_43:
        v11 = sub_1E65E6C18();

        return v11 & 1;
    }

LABEL_36:
    v15 = 0x7974696C61646F6DLL;
    v16 = 0xE90000000000003ALL;
    v13 = v10;
    MEMORY[0x1E694D7C0](v7, v8, 0x65726F6C707865);
    sub_1E5E0476C(v7, v8);
    v12 = v16;
    if (v13 != v15)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t RootItem.apply<A>(as:operation:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1E65E6668();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4[1];
  v19[0] = *v4;
  v19[1] = v15;
  sub_1E5E05374(v19[0], v15);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a4);
    (*(v12 + 32))(v14, v11, a4);
    a2(v14);
    return (*(v12 + 8))(v14, a4);
  }

  else
  {
    v17(v11, 1, 1, a4);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1E64472A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v48 = a1;
  v49 = a2;
  v3 = sub_1E65E5528();
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E57D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v44 - v14;
  v16 = sub_1E65DF878();
  if (v16 <= 3)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v20 = sub_1E65DF8C8();
        v22 = v21;
        swift_storeEnumTagMultiPayload();
        v23 = v50;
        *v50 = v20;
        v23[1] = v22;
      }

      else
      {
        v29 = sub_1E65DF8C8();
        v31 = v30;
        swift_storeEnumTagMultiPayload();
        v23 = v50;
        *v50 = v29;
        v23[1] = v31;
        type metadata accessor for PlaylistType(0);
        swift_storeEnumTagMultiPayload();
      }

      type metadata accessor for RouteResource(0);
      goto LABEL_17;
    }

    if (v16)
    {
      sub_1E65DF928();
      v24 = sub_1E65DFA88();
      v25 = (*(*(v24 - 8) + 48))(v15, 1, v24);
      sub_1E6447918(v15);
      if (v25 == 1)
      {
LABEL_15:
        v26 = sub_1E65DF8C8();
        v28 = v27;
        swift_storeEnumTagMultiPayload();
        v23 = v50;
        *v50 = v26;
        v23[1] = v28;
        type metadata accessor for RouteResource(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        v32 = type metadata accessor for RouteDestination(0);
        sub_1E6094E10(v12, v23 + *(v32 + 20));
        *(v23 + *(v32 + 24)) = MEMORY[0x1E69E7CD0];
        return sub_1E6069714(v12);
      }

      sub_1E5FAA54C();
      swift_allocError();
      v18 = 3;
LABEL_8:
      *v17 = v18;
      return swift_willThrow();
    }

LABEL_7:
    sub_1E5FAA54C();
    swift_allocError();
    v18 = 2;
    goto LABEL_8;
  }

  if (v16 > 5)
  {
    if (v16 != 7)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (v16 == 4)
  {
    goto LABEL_15;
  }

  *v9 = sub_1E65DF8C8();
  v9[1] = v33;
  v34 = *MEMORY[0x1E69CD900];
  v46 = v7;
  (*(v7 + 104))(v9, v34, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v35 = v47;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  v51 = v36;
  sub_1E64478C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  v45 = type metadata accessor for RouteDestination(0);
  v37 = v50;
  swift_storeEnumTagMultiPayload();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v39 = v38[12];
  v40 = (v37 + v38[16]);
  v41 = v38[20];
  (*(v46 + 32))(v37, v9, v6);
  (*(v35 + 32))(v37 + v39, v5, v3);
  v43 = v48;
  v42 = v49;
  *v40 = v48;
  v40[1] = v42;
  *(v37 + v41) = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  *(v37 + *(v45 + 24)) = MEMORY[0x1E69E7CD0];
  return sub_1E5FA9D34(v43, v42);
}

unint64_t sub_1E64478C0()
{
  result = qword_1ED078A30;
  if (!qword_1ED078A30)
  {
    sub_1E65E5528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078A30);
  }

  return result;
}

uint64_t sub_1E6447918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6447980@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v40 = a1;
  v4 = sub_1E65E5528();
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E57D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DFD68();
  if (v14 <= 3)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v20 = sub_1E65DFD78();
        v22 = v21;
        swift_storeEnumTagMultiPayload();
        *a3 = v20;
        a3[1] = v22;
      }

      else
      {
        v23 = sub_1E65DFD78();
        v25 = v24;
        swift_storeEnumTagMultiPayload();
        *a3 = v23;
        a3[1] = v25;
        type metadata accessor for PlaylistType(0);
        swift_storeEnumTagMultiPayload();
      }

      type metadata accessor for RouteResource(0);
      goto LABEL_15;
    }

    if (v14)
    {
LABEL_4:
      v15 = sub_1E65DFD78();
      v17 = v16;
      swift_storeEnumTagMultiPayload();
      *a3 = v15;
      a3[1] = v17;
      type metadata accessor for RouteResource(0);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      v26 = type metadata accessor for RouteDestination(0);
      sub_1E6094E10(v13, a3 + *(v26 + 20));
      *(a3 + *(v26 + 24)) = MEMORY[0x1E69E7CD0];
      return sub_1E6069714(v13);
    }

LABEL_7:
    sub_1E5FAA54C();
    swift_allocError();
    *v18 = 2;
    return swift_willThrow();
  }

  if (v14 > 5)
  {
    if (v14 != 7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v14 == 4)
  {
    goto LABEL_4;
  }

  *v10 = sub_1E65DFD78();
  v10[1] = v27;
  v28 = *MEMORY[0x1E69CD900];
  v38 = v8;
  (*(v8 + 104))(v10, v28, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v29 = v39;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  v42 = v30;
  sub_1E64478C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  v37 = type metadata accessor for RouteDestination(0);
  swift_storeEnumTagMultiPayload();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v32 = v31[12];
  v33 = (a3 + v31[16]);
  v34 = v31[20];
  (*(v38 + 32))(a3, v10, v7);
  (*(v29 + 32))(a3 + v32, v6, v4);
  v36 = v40;
  v35 = v41;
  *v33 = v40;
  v33[1] = v35;
  *(a3 + v34) = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  *(a3 + *(v37 + 24)) = MEMORY[0x1E69E7CD0];
  return sub_1E5FA9D34(v36, v35);
}

uint64_t sub_1E6447EB4(uint64_t a1, int a2)
{
  v32 = a2;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v28 = *(v3 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CB8, &qword_1E66039F0);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = v26 - v7;
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CC0, &qword_1E66039F8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CC8, &qword_1E6603A00);
  v29 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v26[1] = *v2;
  sub_1E5E1DEAC(v2, v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_1E5E1FA80(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1E5E1DEAC(v2, v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_1E5E1FA80(v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  sub_1E604CB00();
  sub_1E65DEDF8();
  sub_1E65DED48();
  v18 = v30;
  sub_1E5DFD1CC(v30, v5, &qword_1ED073958, &qword_1E65EDCD0);
  v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v20 = v19 + v27;
  v21 = swift_allocObject();
  sub_1E6448E98(v5, v21 + v19);
  *(v21 + v20) = v32;
  sub_1E5DFD1CC(v18, v5, &qword_1ED073958, &qword_1E65EDCD0);
  v22 = swift_allocObject();
  sub_1E6448E98(v5, v22 + v19);
  type metadata accessor for AppFeature(0);
  sub_1E5DED16C();
  sub_1E5FED46C(&qword_1ED079CD0, &qword_1ED079CC8, &qword_1E6603A00, MEMORY[0x1E699CDA0]);
  v23 = v31;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v24 = sub_1E65E4F08();
  (*(v33 + 8))(v23, v34);
  (*(v29 + 8))(v14, v12);
  return v24;
}

uint64_t sub_1E64483A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_1E65D7848();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F60, &qword_1E65F8FA8);
  v9 = *(v18[0] - 8);
  MEMORY[0x1EEE9AC00](v18[0]);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE0, &qword_1E6603A58);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  if (a1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
    (*(*(v15 - 8) + 16))(v14, a2, v15);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    swift_getOpaqueTypeConformance2();
    return sub_1E65E4138();
  }

  else
  {
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65DE798();
    (*(v6 + 8))(v8, v5);
    v17 = v18[0];
    (*(v9 + 16))(v14, v11, v18[0]);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    swift_getOpaqueTypeConformance2();
    sub_1E65E4138();
    return (*(v9 + 8))(v11, v17);
  }
}

uint64_t sub_1E6448734()
{
  v0 = sub_1E65D7848();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DE7A8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E6448834()
{
  v0 = sub_1E65D7848();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DE798();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E6448934@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E64489C0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v7 = *(v6 - 8);
  if (a1)
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a3, a2, v6);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, v6);
}

uint64_t sub_1E6448A98@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_1E6448B1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_1E6448B8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 56) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6448BBC, 0, 0);
}

uint64_t sub_1E6448BBC()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6448C68, v3, v2);
}

uint64_t sub_1E6448C68()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 56);

  sub_1E608521C(v2, v1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6448CE8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6448B8C(a1, v1 + v5);
}

uint64_t sub_1E6448DC0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6000CF4(a1, v1 + v5);
}

uint64_t sub_1E6448E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6448FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v32 = *(v33 - 8);
  v8 = MEMORY[0x1EEE9AC00](v33);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v44 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v28 - v20;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v43 = a3;
  sub_1E65DE488();
  v40 = v53;
  v41 = v52;
  v39 = v54;
  sub_1E65DE488();
  v22 = v49;
  v21 = v50;
  v23 = v51;
  v29 = type metadata accessor for AppState(0);
  v36 = *(v29 + 88);
  v46 = v22;
  v47 = v21;
  v48 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E6001C2C(v22, v21, v23);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CD8, &qword_1E6603A28);
  sub_1E65DEBE8();
  sub_1E5DFD1CC(v15, v37, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4C78();
  sub_1E65E4C88();
  sub_1E5DFE50C(v15, &unk_1ED077CC0, &unk_1E65F2610);
  (*(v44 + 8))(v19, v16);
  v49 = v41;
  v50 = v40;
  v51 = v39;
  sub_1E65E4D88();
  sub_1E65DE488();
  if (v54)
  {
    return sub_1E6001C2C(v52, v53, v54);
  }

  v54 = 0;
  v43 = v52;
  v44 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v25 = v30;
  sub_1E65E4D78();
  v26 = v34;
  sub_1E65DEBF8();
  sub_1E5DFD1CC(v26, v35, &unk_1ED077CD0, &unk_1E65F42F0);
  v27 = v33;
  sub_1E65E4C78();
  sub_1E5DF23E0();
  sub_1E65E4C88();
  sub_1E5DFE50C(v26, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v32 + 8))(v25, v27);
  v52 = v43;
  v53 = v44;
  v54 = 0;
  return sub_1E65E4D88();
}

uint64_t sub_1E6449518(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6448FA8(a1, a2, v6);
}

uint64_t sub_1E64495B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = sub_1E65E07B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v59 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  sub_1E65E06F8();
  v69.origin.x = a3;
  v69.origin.y = a4;
  v69.size.width = a5;
  v69.size.height = a6;
  if (!CGRectEqualToRect(v67, v69))
  {
    v68.origin.x = a3;
    v68.origin.y = a4;
    v68.size.width = a5;
    v68.size.height = a6;
    Width = CGRectGetWidth(v68);
    v28 = _s10Blackbeard12AppSizeClassO11canvasWidthAC12CoreGraphics7CGFloatV_tcfC_0(Width);
    v29 = (v13 + 8);
    v30 = (v59 + 8);
    if (v28 > 2u)
    {
      v58 = a2;
      if (v28 == 3)
      {
        v63 = 3;
        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v29)(v15, v12);
        v37 = *v30;
        (*v30)(v19, v16);
        sub_1E65E06B8();
        v37(v22, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590) - 8);
        v50 = *(v49 + 72);
        v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1E6603A60;
        v52 = v41 + v51;
        *(v41 + v51) = 0;
        sub_1E65E0598();
        *(v52 + v50) = 1;
        sub_1E65E0598();
        *(v52 + 2 * v50) = 2;
        sub_1E65E0598();
        *(v52 + 3 * v50) = 3;
        sub_1E65E0598();
        *(v52 + 4 * v50) = 4;
        sub_1E65E0598();
        *(v52 + 5 * v50) = 5;
      }

      else
      {
        if (v28 == 4)
        {
          v64 = 4;
        }

        else
        {
          v65 = 5;
        }

        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v29)(v15, v12);
        v37 = *v30;
        (*v30)(v19, v16);
        sub_1E65E06B8();
        v37(v22, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590) - 8);
        v39 = *(v38 + 72);
        v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1E6603A60;
        v42 = v41 + v40;
        *(v41 + v40) = 0;
        sub_1E65E0598();
        *(v42 + v39) = 1;
        sub_1E65E0598();
        *(v42 + 2 * v39) = 2;
        sub_1E65E0598();
        *(v42 + 3 * v39) = 3;
        sub_1E65E0598();
        *(v42 + 4 * v39) = 4;
        sub_1E65E0598();
        *(v42 + 5 * v39) = 5;
      }
    }

    else
    {
      if (!v28)
      {
        v60 = 0;
        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v29)(v15, v12);
        v43 = *v30;
        (*v30)(v19, v16);
        v59 = v43;
        sub_1E65E06B8();
        v43(v22, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590) - 8);
        v45 = *(v44 + 72);
        v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1E6603A60;
        v48 = (v47 + v46);
        *v48 = 0;
        sub_1E65E0598();
        v48[v45] = 1;
        sub_1E65E0598();
        v48[2 * v45] = 2;
        sub_1E65E0598();
        v48[3 * v45] = 3;
        sub_1E65E0598();
        v48[4 * v45] = 4;
        sub_1E65E0598();
        v48[5 * v45] = 5;
        sub_1E65E0598();
        sub_1E5E0024C(v47);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_14;
      }

      v58 = a2;
      if (v28 == 1)
      {
        v61 = 1;
        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v29)(v15, v12);
        v31 = *v30;
        (*v30)(v19, v16);
        v59 = v31;
        sub_1E65E06B8();
        v31(v22, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590) - 8);
        v33 = *(v32 + 72);
        v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1E6603A60;
        v36 = v35 + v34;
        *(v35 + v34) = 0;
        sub_1E65E0598();
        *(v36 + v33) = 1;
        sub_1E65E0598();
        *(v36 + 2 * v33) = 2;
        sub_1E65E0598();
        *(v36 + 3 * v33) = 3;
        sub_1E65E0598();
        *(v36 + 4 * v33) = 4;
        sub_1E65E0598();
        *(v36 + 5 * v33) = 5;
        sub_1E65E0598();
        sub_1E5E0024C(v35);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
LABEL_14:
        sub_1E65E06C8();

        return (v59)(v24, v16);
      }

      v62 = 2;
      sub_1E65E0658();
      sub_1E65E0768();
      sub_1E65E0688();
      (*v29)(v15, v12);
      v37 = *v30;
      (*v30)(v19, v16);
      sub_1E65E06B8();
      v37(v22, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590) - 8);
      v54 = *(v53 + 72);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1E6603A60;
      v56 = v41 + v55;
      *(v41 + v55) = 0;
      sub_1E65E0598();
      *(v56 + v54) = 1;
      sub_1E65E0598();
      *(v56 + 2 * v54) = 2;
      sub_1E65E0598();
      *(v56 + 3 * v54) = 3;
      sub_1E65E0598();
      *(v56 + 4 * v54) = 4;
      sub_1E65E0598();
      *(v56 + 5 * v54) = 5;
    }

    sub_1E65E0598();
    sub_1E5E0024C(v41);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1E65E06C8();

    return (v37)(v24, v16);
  }

  v25 = *(v59 + 2);

  return v25(a2, a1, v16);
}

uint64_t sub_1E644A670(void *a1)
{
  v3 = type metadata accessor for AccountUpgradeDetour.State(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = type metadata accessor for RouteDestination(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state;
  swift_beginAccess();
  sub_1E644D080(v1 + v19, v8, type metadata accessor for AccountUpgradeDetour.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v8, 1, v20) == 1)
  {
    return sub_1E644D33C(v8, type metadata accessor for AccountUpgradeDetour.State);
  }

  v29 = v12;
  v23 = v14;
  v24 = a1;
  v25 = *(v20 + 48);
  (*(v31 + 32))(v18, v8, v30);
  sub_1E5F9CE80(&v8[v25], v23);
  (*(v21 + 56))(v6, 1, 1, v20);
  swift_beginAccess();
  sub_1E644D13C(v6, v1 + v19);
  swift_endAccess();
  if (v24)
  {
    v32 = v24;
    v26 = v24;
    v27 = v30;
    sub_1E65E5FE8();
  }

  else
  {
    sub_1E644D080(v23, v29, type metadata accessor for RouteDestination);
    v27 = v30;
    sub_1E65E5FF8();
  }

  sub_1E644D33C(v23, type metadata accessor for RouteDestination);
  return (*(v31 + 8))(v18, v27);
}

uint64_t sub_1E644A9DC()
{
  sub_1E644D33C(v0 + OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state, type metadata accessor for AccountUpgradeDetour.State);
  v1 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour__forceAccountUpgrade;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E644AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1E65E3B68();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  sub_1E65D7848();
  v6[11] = swift_task_alloc();
  sub_1E65E5C28();
  v6[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_1E65DE3E8();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644AC98, v5, 0);
}

uint64_t sub_1E644AC98()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  type metadata accessor for AppComposer(0);
  v4 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD20], v3);
  v5 = sub_1E637C87C(v1, v4);

  (*(v2 + 8))(v1, v3);
  if ((v5 & 1) == 0)
  {
    v29 = *(v0 + 16);
    v28 = *(v0 + 24);
LABEL_9:
    sub_1E644D080(v28, v29, type metadata accessor for RouteDestination);

    v30 = *(v0 + 8);

    return v30();
  }

  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);
  (*(v7 + 16))(v6, *(v0 + 56) + OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour__forceAccountUpgrade, v8);
  sub_1E65DDC48();
  (*(v7 + 8))(v6, v8);
  if (*(v0 + 208))
  {
    v9 = [objc_opt_self() sharedInstance];
    if (!v9)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE18](v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = v9;
    v18 = [v9 primaryAccountDSID];

    if (v18)
    {
      v19 = *(v0 + 56);
      v20 = *(v0 + 24);
      v43 = *(v0 + 40);
      v21 = [objc_allocWithZone(MEMORY[0x1E6997860]) initWithAltDSID_];
      *(v0 + 176) = v21;

      [v21 setDeviceToDeviceEncryptionUpgradeUIStyle_];
      [v21 setDeviceToDeviceEncryptionUpgradeType_];
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v24 = sub_1E65E5C48();

      [v21 setFeatureName_];

      v25 = swift_task_alloc();
      *(v0 + 184) = v25;
      *(v25 + 16) = v19;
      *(v25 + 24) = v20;
      *(v25 + 32) = v43;
      *(v25 + 48) = v21;
      v26 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour, &unk_1E6603B30);
      v27 = swift_task_alloc();
      *(v0 + 192) = v27;
      v16 = type metadata accessor for RouteDestination(0);
      *v27 = v0;
      v27[1] = sub_1E644B7B4;
      v13 = *(v0 + 56);
      v9 = *(v0 + 16);
      v10 = &unk_1E6603B98;
      v12 = sub_1E644CF6C;
      v11 = v25;
      v14 = v19;
      v15 = v26;

      return MEMORY[0x1EEE6DE18](v9, v10, v11, v12, v13, v14, v15, v16);
    }

    sub_1E65DE328();
    v35 = sub_1E65E3B48();
    v36 = sub_1E65E6328();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1E5DE9000, v35, v36, "Couldn't load altDSID to show UpgradeUI.", v37, 2u);
      MEMORY[0x1E694F1C0](v37, -1, -1);
    }

    v39 = *(v0 + 72);
    v38 = *(v0 + 80);
    v40 = *(v0 + 64);
    v42 = *(v0 + 16);
    v41 = *(v0 + 24);

    (*(v39 + 8))(v38, v40);
    v28 = v41;
    v29 = v42;
    goto LABEL_9;
  }

  type metadata accessor for AppEnvironment(0);
  v32 = SyncService.requireAccountUpgrade.getter();
  *(v0 + 152) = v33;
  v44 = (v32 + *v32);
  v34 = swift_task_alloc();
  *(v0 + 160) = v34;
  *v34 = v0;
  v34[1] = sub_1E644B280;

  return v44();
}

uint64_t sub_1E644B280()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1E644B97C;
  }

  else
  {
    v4 = sub_1E644B3AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E644B3AC()
{

  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  v10 = [v1 primaryAccountDSID];

  if (v10)
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 24);
    v30 = *(v0 + 40);
    v13 = [objc_allocWithZone(MEMORY[0x1E6997860]) initWithAltDSID_];
    *(v0 + 176) = v13;

    [v13 setDeviceToDeviceEncryptionUpgradeUIStyle_];
    [v13 setDeviceToDeviceEncryptionUpgradeType_];
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    v16 = sub_1E65E5C48();

    [v13 setFeatureName_];

    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *(v17 + 16) = v11;
    *(v17 + 24) = v12;
    *(v17 + 32) = v30;
    *(v17 + 48) = v13;
    v18 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour, &unk_1E6603B30);
    v19 = swift_task_alloc();
    *(v0 + 192) = v19;
    v8 = type metadata accessor for RouteDestination(0);
    *v19 = v0;
    v19[1] = sub_1E644B7B4;
    v5 = *(v0 + 56);
    v1 = *(v0 + 16);
    v2 = &unk_1E6603B98;
    v4 = sub_1E644CF6C;
    v3 = v17;
    v6 = v11;
    v7 = v18;

    return MEMORY[0x1EEE6DE18](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  sub_1E65DE328();
  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6328();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1E5DE9000, v20, v21, "Couldn't load altDSID to show UpgradeUI.", v22, 2u);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v25 = *(v0 + 64);
  v27 = *(v0 + 16);
  v26 = *(v0 + 24);

  (*(v24 + 8))(v23, v25);
  sub_1E644D080(v26, v27, type metadata accessor for RouteDestination);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1E644B7B4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1E644BA4C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1E644B8DC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E644B8DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E644B97C()
{
  v1 = v0[21];
  v3 = v0[2];
  v2 = v0[3];

  sub_1E644D080(v2, v3, type metadata accessor for RouteDestination);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E644BA4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E644BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E644BB24, a2, 0);
}

uint64_t sub_1E644BB24()
{
  v1 = *(v0 + 56);
  v2 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour, &unk_1E6603B30);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v9 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v9;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for RouteDestination(0);
  *v5 = v0;
  v5[1] = sub_1E5F8E974;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, v9, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E644D070, v3, v6);
}

uint64_t sub_1E644BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v33 = a4;
  v34 = a6;
  v32 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AccountUpgradeDetour.State(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  v18 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state;
  swift_beginAccess();
  sub_1E644D080(a2 + v18, v17, type metadata accessor for AccountUpgradeDetour.State);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v17, 1, v19);
  sub_1E644D33C(v17, type metadata accessor for AccountUpgradeDetour.State);
  if (v21 == 1)
  {
    v22 = *(v19 + 48);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v23 - 8) + 16))(v15, a1, v23);
    sub_1E644D080(a3, &v15[v22], type metadata accessor for RouteDestination);
    (*(v20 + 56))(v15, 0, 1, v19);
    swift_beginAccess();
    sub_1E644D13C(v15, a2 + v18);
    swift_endAccess();
    v24 = sub_1E65E60A8();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    v25 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour, &unk_1E6603B30);
    v26 = swift_allocObject();
    v26[2] = a2;
    v26[3] = v25;
    v27 = v32;
    v26[4] = v33;
    v26[5] = v27;
    v28 = v34;
    v26[6] = v34;
    v26[7] = a2;
    swift_retain_n();
    swift_unknownObjectRetain();
    v29 = v28;
    sub_1E64B80F8(0, 0, v11, &unk_1E6603BC0, v26);
  }

  else
  {
    sub_1E644D0E8();
    v35 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E644C024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E644C048, a7, 0);
}

uint64_t sub_1E644C048()
{
  v2 = v0[4];
  v1 = v0[5];
  v11 = v0[3];
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v11 + 24);
  v6 = v2;

  v10 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E644C1BC;
  v8 = v0[3];

  return v10(sub_1E644D274, v4, ObjectType, v8);
}

uint64_t sub_1E644C1BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E644C2CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  [a2 setPresentingViewController_];
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1E65E6058();
  v10 = a2;

  v11 = sub_1E65E6048();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a3;
  sub_1E64B80F8(0, 0, v8, &unk_1E6603BD0, v12);
}

uint64_t sub_1E644C420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_1E65E3B68();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_1E65E6058();
  v5[25] = sub_1E65E6048();
  v8 = sub_1E65E5FC8();
  v5[26] = v8;
  v5[27] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E644C520, v8, v7);
}

uint64_t sub_1E644C520()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6997868]) initWithContext_];
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1E644C660;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C60, &unk_1E65F32A8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E6147908;
  v0[13] = &block_descriptor_19;
  v0[14] = v2;
  [v1 performDeviceToDeviceEncryptionStateRepairWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E644C660()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_1E644C984;
  }

  else
  {
    v5 = sub_1E644C790;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1E644C790()
{
  v1 = *(v0 + 240);
  sub_1E65DE328();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Card Presented: %{BOOL}d", v4, 8u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);

  (*(v7 + 8))(v5, v6);
  v8 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E644C8A8, v8, 0);
}

uint64_t sub_1E644C8A8()
{
  sub_1E644A670(0);
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E644C910, v1, v2);
}

uint64_t sub_1E644C910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E644C984(uint64_t a1)
{
  v23 = v1;
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  swift_willThrow();

  sub_1E65DE328();
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 232);
    v8 = *(v1 + 176);
    v21 = *(v1 + 184);
    v9 = *(v1 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    *(v1 + 144) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v13 = sub_1E65E5CE8();
    v15 = sub_1E5DFD4B0(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Error checking if Upgrade UI should be shown: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);

    (*(v8 + 8))(v21, v9);
  }

  else
  {
    v17 = *(v1 + 176);
    v16 = *(v1 + 184);
    v18 = *(v1 + 168);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E644C8A8, v19, 0);
}

uint64_t sub_1E644CB7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E6603BB0, v6);
}

uint64_t sub_1E644CCA8()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E644D028(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E644CD6C, v1, 0);
}

uint64_t sub_1E644CD6C()
{
  v1 = *(v0 + 24);
  sub_1E644A670(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E644CDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return sub_1E644AAB4(a1, a2, a3, a4, a5);
}

uint64_t sub_1E644CEA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E644BB00(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E644CF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E644CC88(a1, v4, v5, v6);
}

uint64_t sub_1E644D028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E644D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E644D0E8()
{
  result = qword_1ED079CF8;
  if (!qword_1ED079CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079CF8);
  }

  return result;
}

uint64_t sub_1E644D13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountUpgradeDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E644D1A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E644C024(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E644D27C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E644C420(a1, v4, v5, v7, v6);
}

uint64_t sub_1E644D33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E644D3B0()
{
  result = qword_1ED079D00;
  if (!qword_1ED079D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079D00);
  }

  return result;
}

uint64_t sub_1E644D404(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  if (!*a1)
  {
    v10 = sub_1E65E60A8();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1E5DF650C(a2, v13);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    sub_1E5DF599C(v13, (v11 + 4));
    v11[9] = a3;

    result = sub_1E64B80F8(0, 0, v9, &unk_1E6603D30, v11);
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E644D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for ToastResource(0);
  v5[9] = swift_task_alloc();
  v6 = type metadata accessor for ToastAction(0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D08, &qword_1E6603D38);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644D670, 0, 0);
}

uint64_t sub_1E644D670()
{
  v1 = v0[7];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E65E6198();

  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E644D828;
  v7 = v0[13];

  return MEMORY[0x1EEE6D8D0](v7, 0, 0);
}

uint64_t sub_1E644D828()
{
  *(*v1 + 120) = v0;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E644D93C, 0, 0);
  }

  return result;
}

uint64_t sub_1E644D93C()
{
  v1 = *(v0 + 104);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 96);
    sub_1E5E1BCD8(v1, v4, type metadata accessor for ToastAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *v4;
    *(v0 + 146) = *v4;
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(v0 + 96);
      v8 = *(v0 + 72);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072838, &qword_1E65EBE80);
      v10 = *(v7 + *(v9 + 64));
      sub_1E5E1BCD8(v7 + *(v9 + 48), v8, type metadata accessor for ToastResource);
      *(v0 + 144) = v6;
      *(v0 + 145) = v10;
      v11 = swift_task_alloc();
      *(v0 + 136) = v11;
      *v11 = v0;
      v11[1] = sub_1E644DCE0;
      v12 = *(v0 + 72);

      return sub_1E644DEBC((v0 + 144), v12, (v0 + 145));
    }

    else
    {
      sub_1E65E6058();
      *(v0 + 128) = sub_1E65E6048();
      v14 = sub_1E65E5FC8();

      return MEMORY[0x1EEE6DFA0](sub_1E644DB6C, v14, v13);
    }
  }
}

void sub_1E644DB6C()
{
  v1 = *(v0 + 146);
  v2 = *(v0 + 120);
  v3 = *(v0 + 64);

  sub_1E6451850(v3, v1);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1E644DC1C, 0, 0);
  }
}

uint64_t sub_1E644DC1C()
{
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1E644D828;
  v2 = v0[13];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1E644DCE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E644DDDC, 0, 0);
}

uint64_t sub_1E644DDDC()
{
  sub_1E6451B88(v0[9], type metadata accessor for ToastResource);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1E644D828;
  v2 = v0[13];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1E644DEBC(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 288) = a2;
  *(v4 + 296) = v3;
  v7 = sub_1E65E3B68();
  *(v4 + 304) = v7;
  *(v4 + 312) = *(v7 - 8);
  *(v4 + 320) = swift_task_alloc();
  v8 = *(type metadata accessor for ToastResource(0) - 8);
  *(v4 + 328) = v8;
  *(v4 + 336) = *(v8 + 64);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 426) = *a1;
  *(v4 + 427) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1E644E008, 0, 0);
}

uint64_t sub_1E644E008()
{
  v1 = *(v0 + 296) + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
  v2 = type metadata accessor for AppComposer(0);
  v3 = *(v1 + *(v2 + 20) + 8);
  sub_1E64F75B4(v1, *(v1 + *(v2 + 36)), *(v1 + *(v2 + 36) + 8), (v0 + 16));
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      return sub_1E65E69D8();
    }

    v24 = *(v0 + 427);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 328);
    v28 = *(v0 + 288);
    v29 = *(v0 + 296);
    v30 = *(v29 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler + 8);
    ObjectType = swift_getObjectType();
    *(v0 + 424) = v24;
    sub_1E6451F30(v28, v25, type metadata accessor for ToastResource);
    v32 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v33 = v32 + v26;
    v34 = swift_allocObject();
    *(v0 + 384) = v34;
    *(v34 + 16) = v29;
    sub_1E5E1BCD8(v25, v34 + v32, type metadata accessor for ToastResource);
    *(v34 + v33) = 3;
    v35 = v34 + (v33 & 0xFFFFFFFFFFFFFFF8);
    v36 = *(v0 + 32);
    *(v35 + 8) = *(v0 + 16);
    v37 = *(v0 + 64);
    *(v35 + 72) = *(v0 + 80);
    v38 = *(v0 + 48);
    *(v35 + 56) = v37;
    *(v35 + 40) = v38;
    *(v35 + 24) = v36;

    sub_1E6169A3C(v0 + 16, v0 + 96);
    v39 = swift_task_alloc();
    *(v0 + 392) = v39;
    *v39 = v0;
    v39[1] = sub_1E644E564;
    v18 = &unk_1E6603D50;
    v19 = (v0 + 424);
    v20 = v34;
    v21 = ObjectType;
    v22 = v30;
  }

  else
  {
    v4 = *(v0 + 427);
    v5 = *(v0 + 426);
    v6 = *(v0 + 352);
    v7 = *(v0 + 328);
    v8 = *(v0 + 336);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v40 = *(v10 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler + 8);
    v11 = swift_getObjectType();
    *(v0 + 425) = v4;
    sub_1E6451F30(v9, v6, type metadata accessor for ToastResource);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v0 + 360) = v13;
    *(v13 + 16) = v10;
    sub_1E5E1BCD8(v6, v13 + v12, type metadata accessor for ToastResource);
    v14 = v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = *(v0 + 64);
    *(v14 + 32) = *(v0 + 48);
    *(v14 + 48) = v15;
    *(v14 + 64) = *(v0 + 80);
    v16 = *(v0 + 32);
    *v14 = *(v0 + 16);
    *(v14 + 16) = v16;
    *(v14 + 80) = v5;

    sub_1E6169A3C(v0 + 16, v0 + 176);
    v17 = swift_task_alloc();
    *(v0 + 368) = v17;
    *v17 = v0;
    v17[1] = sub_1E644E3C4;
    v18 = &unk_1E6603D60;
    v19 = (v0 + 425);
    v20 = v13;
    v21 = v11;
    v22 = v40;
  }

  return sub_1E61261B8(v19, v18, v20, v21, v22);
}

uint64_t sub_1E644E3C4()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1E644E9B8;
  }

  else
  {
    v2 = sub_1E644E4E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E644E4E8()
{
  sub_1E6451CFC(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E644E564()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1E644E7C0;
  }

  else
  {
    v2 = sub_1E6451F98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E644E688()
{
  v1 = *(v0 + 296);

  sub_1E6451850(v1, 0);

  return MEMORY[0x1EEE6DFA0](sub_1E644E738, 0, 0);
}

uint64_t sub_1E644E738()
{
  v1 = *(v0 + 408);
  sub_1E6451CFC(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E644E7C0(uint64_t a1)
{
  v21 = v1;
  v2 = v1[50];
  v1[51] = v2;
  sub_1E65DE348();
  v3 = v2;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[39];
    v6 = v1[40];
    v8 = v1[38];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x1E694E6C0](v1[33], v1[34]);
    v13 = sub_1E5DFD4B0(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[ToastPresenter] Failed to present toast with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[39];
    v14 = v1[40];
    v16 = v1[38];

    (*(v15 + 8))(v14, v16);
  }

  sub_1E65E6058();
  v1[52] = sub_1E65E6048();
  v18 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E644E688, v18, v17);
}

uint64_t sub_1E644E9B8(uint64_t a1)
{
  v21 = v1;
  v2 = v1[47];
  v1[51] = v2;
  sub_1E65DE348();
  v3 = v2;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[39];
    v6 = v1[40];
    v8 = v1[38];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x1E694E6C0](v1[33], v1[34]);
    v13 = sub_1E5DFD4B0(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[ToastPresenter] Failed to present toast with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[39];
    v14 = v1[40];
    v16 = v1[38];

    (*(v15 + 8))(v14, v16);
  }

  sub_1E65E6058();
  v1[52] = sub_1E65E6048();
  v18 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E644E688, v18, v17);
}

uint64_t sub_1E644EBB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 280) = a2;
  *(v4 + 288) = a4;
  *(v4 + 480) = a3;
  *(v4 + 272) = a1;
  *(v4 + 296) = type metadata accessor for AppComposer(0);
  *(v4 + 304) = swift_task_alloc();
  v5 = sub_1E65E3B68();
  *(v4 + 312) = v5;
  *(v4 + 320) = *(v5 - 8);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = type metadata accessor for ToastResource(0);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v6 = sub_1E65D7848();
  *(v4 + 360) = v6;
  *(v4 + 368) = *(v6 - 8);
  *(v4 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644ED40, 0, 0);
}

uint64_t sub_1E644ED40()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 272);
  v3 = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
  *(v0 + 384) = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
  v4 = v2 + v3;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v5 = sub_1E64F7C2C(v1);
  v7 = v6;
  *(v0 + 392) = v5;
  *(v0 + 400) = v6;
  v8 = [objc_allocWithZone(BBBulletinInfo) init];
  *(v0 + 408) = v8;
  if (v7)
  {

    v9 = sub_1E65E5C48();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 376);
  v11 = *(v0 + 480);
  [v8 setTitle_];

  sub_1E64F81F4(v10, v11);
  if (v12)
  {
    v13 = sub_1E65E5C48();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v0 + 376);
  [v8 setSubtitle_];

  sub_1E64F8538(v14);
  if (v15)
  {
    v16 = sub_1E65E5C48();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v0 + 296);
  [v8 setFooterMessage_];

  v18 = *(v17 + 20);
  v19 = swift_task_alloc();
  *(v0 + 416) = v19;
  *v19 = v0;
  v19[1] = sub_1E644EF40;

  return sub_1E64F8AD0(v4 + v18);
}

uint64_t sub_1E644EF40(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[53] = a1;
  v4[54] = a2;
  v4[55] = v2;

  if (v2)
  {

    v5 = sub_1E644F948;
  }

  else
  {
    v5 = sub_1E644F060;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E644F060()
{
  v44 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 424);
    v2 = sub_1E65D7508();
    sub_1E61681A0(v3, v1);
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 280);
  [*(v0 + 408) setImageData_];

  sub_1E6451F30(v5, v4, type metadata accessor for ToastResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v7 = 0;
      goto LABEL_11;
    }
  }

  else if (EnumCaseMultiPayload != 1)
  {
    sub_1E6451B88(*(v0 + 352), type metadata accessor for ToastResource);
    v7 = 0;
    goto LABEL_11;
  }

  v7 = sub_1E65E5C48();

LABEL_11:
  [*(v0 + 408) setSymbolName_];

  sub_1E65DE348();

  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 392);
    v10 = *(v0 + 400);
    v12 = *(v0 + 320);
    v41 = *(v0 + 328);
    v13 = *(v0 + 312);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 136315138;
    *(v0 + 256) = v11;
    *(v0 + 264) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    v16 = sub_1E65E6648();
    v18 = v17;

    v19 = sub_1E5DFD4B0(v16, v18, &v43);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "[ToastPresenter] Requesting presentation of PBSBulletin for (%s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v12 + 8))(v41, v13);
  }

  else
  {
    v21 = *(v0 + 320);
    v20 = *(v0 + 328);
    v22 = *(v0 + 312);

    (*(v21 + 8))(v20, v22);
  }

  v42 = *(v0 + 408);
  v23 = *(v0 + 344);
  v24 = *(v0 + 304);
  v26 = *(v0 + 280);
  v25 = *(v0 + 288);
  v27 = *(v0 + 272);
  sub_1E6451F30(v27 + *(v0 + 384), v24, type metadata accessor for AppComposer);
  sub_1E6451F30(v26, v23, type metadata accessor for ToastResource);
  v28 = *(v27 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext);
  v29 = *(v27 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext + 8);
  v30 = type metadata accessor for ToastDelegate(0);
  v31 = objc_allocWithZone(v30);
  sub_1E6451F30(v24, &v31[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_composer], type metadata accessor for AppComposer);
  v32 = &v31[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_itemRoutingContext];
  *v32 = v28;
  *(v32 + 1) = v29;
  sub_1E6451F30(v23, &v31[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_toastResource], type metadata accessor for ToastResource);
  v33 = &v31[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics];
  v34 = v25[1];
  v35 = v25[2];
  v36 = v25[4];
  *(v33 + 3) = v25[3];
  *(v33 + 4) = v36;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *v33 = *v25;

  sub_1E6169A3C(v25, v0 + 80);
  *(v0 + 224) = v31;
  *(v0 + 232) = v30;
  v37 = objc_msgSendSuper2((v0 + 224), sel_init);
  *(v0 + 448) = v37;
  sub_1E6451B88(v23, type metadata accessor for ToastResource);
  sub_1E6451B88(v24, type metadata accessor for AppComposer);
  v38 = [objc_opt_self() sharedBulletinServiceWithDelegate_];
  *(v0 + 456) = v38;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1E644F5D4;
  v39 = swift_continuation_init();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D20, &qword_1E6603DB8);
  *(v0 + 160) = MEMORY[0x1E69E9820];
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_1E644FAD8;
  *(v0 + 184) = &block_descriptor_20;
  *(v0 + 192) = v39;
  [v38 presentBulletinWithInfo:v42 withCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1E644F5D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E644F6B4, 0, 0);
}

uint64_t sub_1E644F6B4()
{
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_1E644F75C;
  v2 = *(v0 + 280);

  return sub_1E644FB4C(v2);
}

uint64_t sub_1E644F75C()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1E644FA0C;
  }

  else
  {
    v2 = sub_1E644F870;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E644F870()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E644F948()
{
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E644FA0C()
{
  v1 = *(v0 + 448);

  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E644FAD8(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return MEMORY[0x1EEE6DED8](v6);
}

uint64_t sub_1E644FB4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v2[4] = swift_task_alloc();
  v3 = sub_1E65DA5B8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1E65E3B68();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ToastResource(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = sub_1E65DBB88();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644FD5C, 0, 0);
}

uint64_t sub_1E644FD5C()
{
  v58 = v0;
  sub_1E6451F30(v0[2], v0[16], type metadata accessor for ToastResource);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = v0[15];
    v2 = v0[2];
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    sub_1E65DE348();
    sub_1E6451F30(v2, v1, type metadata accessor for ToastResource);
    v3 = sub_1E65E3B48();
    v4 = sub_1E65E6338();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[15];
    if (v5)
    {
      v7 = v0[14];
      v54 = v0[12];
      v9 = v0[9];
      v8 = v0[10];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v57 = v11;
      *v10 = 136315138;
      sub_1E6451F30(v6, v7, type metadata accessor for ToastResource);
      v12 = sub_1E65E5CE8();
      v14 = v13;
      sub_1E6451B88(v6, type metadata accessor for ToastResource);
      v15 = sub_1E5DFD4B0(v12, v14, &v57);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1E5DE9000, v3, v4, "[ToastPresenter] Received request to journal notification record for toastResource %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E694F1C0](v11, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);

      v16 = v54;
      v55 = *(v8 + 8);
      v55(v16, v9);
    }

    else
    {
      v17 = v0[12];
      v18 = v0[9];
      v19 = v0[10];

      sub_1E6451B88(v6, type metadata accessor for ToastResource);
      v55 = *(v19 + 8);
      v55(v17, v18);
    }

    v20 = sub_1E65DBB48();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v0[6];
      v57 = MEMORY[0x1E69E7CC0];
      sub_1E601D118(0, v21, 0);
      v23 = v57;
      v24 = v20 + 40;
      do
      {
        v25 = v0[4];

        sub_1E65D7688();
        v26 = sub_1E65D76A8();
        (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
        sub_1E65DA5A8();
        v57 = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1E601D118((v27 > 1), v28 + 1, 1);
          v23 = v57;
        }

        v29 = v0[8];
        v30 = v0[5];
        *(v23 + 16) = v28 + 1;
        (*(v22 + 32))(v23 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v28, v29, v30);
        v24 += 16;
        --v21;
      }

      while (v21);
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }

    v0[20] = v23;
    sub_1E65DE348();

    v31 = sub_1E65E3B48();
    v32 = sub_1E65E6338();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[11];
    v35 = v0[9];
    if (v33)
    {
      v36 = v0[5];
      v53 = v0[11];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v57 = v38;
      *v37 = 136315138;
      v39 = MEMORY[0x1E694D940](v23, v36);
      v41 = sub_1E5DFD4B0(v39, v40, &v57);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1E5DE9000, v31, v32, "[ToastPresenter] Inserting new achievement notification records %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E694F1C0](v38, -1, -1);
      MEMORY[0x1E694F1C0](v37, -1, -1);

      v42 = v53;
    }

    else
    {

      v42 = v34;
    }

    result = (v55)(v42, v35);
    v44 = *(v23 + 16);
    v45 = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
    v0[21] = v44;
    v0[22] = v45;
    if (v44)
    {
      v46 = v0[6];
      v0[23] = 0;
      v47 = v0[20];
      if (*(v47 + 16))
      {
        (*(v46 + 16))(v0[7], v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v0[5]);
        type metadata accessor for AppComposer(0);
        type metadata accessor for AppEnvironment(0);
        v48 = AwardsService.journalAchievementNotificationRecord.getter();
        v0[24] = v49;
        v56 = (v48 + *v48);
        v50 = swift_task_alloc();
        v0[25] = v50;
        *v50 = v0;
        v50[1] = sub_1E6450454;
        v51 = v0[7];

        return v56(v51);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  else
  {
    sub_1E6451B88(v0[16], type metadata accessor for ToastResource);
  }

  v52 = v0[1];

  return v52();
}

uint64_t sub_1E6450454()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {

    v3 = sub_1E645082C;
  }

  else
  {

    v3 = sub_1E64505D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1E64505D0()
{
  v1 = v0[23] + 1;
  if (v1 == v0[21])
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[23] = v1;
    v3 = v0[20];
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v0[6] + 16))(v0[7], v3 + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v1, v0[5]);
      type metadata accessor for AppComposer(0);
      type metadata accessor for AppEnvironment(0);
      v4 = AwardsService.journalAchievementNotificationRecord.getter();
      v0[24] = v5;
      v8 = (v4 + *v4);
      v6 = swift_task_alloc();
      v0[25] = v6;
      *v6 = v0;
      v6[1] = sub_1E6450454;
      v7 = v0[7];

      v8(v7);
    }
  }
}

uint64_t sub_1E645082C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E645091C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  *(v4 + 40) = swift_task_alloc();
  v5 = sub_1E65E3B68();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6450A1C, 0, 0);
}

uint64_t sub_1E6450A1C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_1E65DE348();
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "[ToastPresenter] Dismissing currently presented toast early due to incoming toast presentation request", v4, 2u);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }

    v6 = v0[7];
    v5 = v0[8];
    v7 = v0[6];
    v8 = v0[2];

    (*(v6 + 8))(v5, v7);
    if (*(v8 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask))
    {

      sub_1E65E6148();
    }

    sub_1E65E6058();
    v0[9] = sub_1E65E6048();
    v9 = sub_1E65E5FC8();
    v11 = v10;
    v12 = sub_1E6450BFC;
  }

  else
  {
    v0[11] = 0;
    sub_1E65E6058();
    v0[12] = sub_1E65E6048();
    v9 = sub_1E65E5FC8();
    v11 = v13;
    v12 = sub_1E6450D4C;
  }

  return MEMORY[0x1EEE6DFA0](v12, v9, v11);
}

uint64_t sub_1E6450BFC()
{
  v1 = *(v0 + 16);

  sub_1E6451850(v1, 1);
  *(v0 + 80) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1E6450CB0, 0, 0);
}

uint64_t sub_1E6450CB0()
{
  v0[11] = v0[10];
  sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6450D4C, v2, v1);
}

void sub_1E6450D4C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 112);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  sub_1E6451128(v3, v5, v4, v2 & 1);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1E6450E14, 0, 0);
  }
}

uint64_t sub_1E6450E14()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E6450EA8;
  v2 = *(v0 + 24);

  return sub_1E644FB4C(v2);
}

uint64_t sub_1E6450EA8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6451000, 0, 0);
  }
}

uint64_t sub_1E6451000()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_1E65E60A8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  *(v2 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask) = sub_1E64B80F8(0, 0, v1, &unk_1E6603D78, v4);

  v5 = v0[1];

  return v5();
}

void sub_1E6451128(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v37 = a4;
  v36 = type metadata accessor for ToastResource(0);
  v7 = MEMORY[0x1EEE9AC00](v36);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v38 = sub_1E65E3B68();
  v12 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D10, &qword_1E6603D80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1E64F8F6C((a2 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer), *(a2 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext), *(a2 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext + 8), a3, &v33 - v16);
  v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D18, &qword_1E6603D88));
  v18 = sub_1E65E3DC8();
  sub_1E65E3DB8();
  swift_unknownObjectWeakAssign();
  sub_1E65DE348();
  v19 = v11;
  sub_1E6451F30(a1, v11, type metadata accessor for ToastResource);
  v39 = v14;
  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6338();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v18;
    v23 = v22;
    v24 = swift_slowAlloc();
    v34 = v12;
    v25 = v24;
    v40 = v24;
    *v23 = 136315138;
    sub_1E6451F30(v11, v9, type metadata accessor for ToastResource);
    v26 = sub_1E65E5CE8();
    v28 = v27;
    sub_1E6451B88(v19, type metadata accessor for ToastResource);
    v29 = sub_1E5DFD4B0(v26, v28, &v40);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1E5DE9000, v20, v21, "[ToastPresenter] Presenting toast for toastResource %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    v30 = v23;
    v18 = v35;
    MEMORY[0x1E694F1C0](v30, -1, -1);

    (*(v34 + 8))(v39, v38);
  }

  else
  {

    sub_1E6451B88(v11, type metadata accessor for ToastResource);
    (*(v12 + 8))(v39, v38);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    sub_1E62DE854(v18, (v37 & 1) == 0);
  }
}

uint64_t sub_1E6451504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1E645159C;
  v6.n128_u64[0] = 7.0;

  return MEMORY[0x1EEE34840](v6);
}

uint64_t sub_1E645159C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1E64517F0;
  }

  else
  {
    v2 = sub_1E64516B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E64516B0()
{
  sub_1E65E6058();
  *(v0 + 40) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6451744, v2, v1);
}

void sub_1E6451744()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  sub_1E6451850(v2, 0);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1E5F87068, 0, 0);
  }
}

uint64_t sub_1E64517F0()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1E6451850(uint64_t a1, char a2)
{
  v3 = sub_1E65E3B68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      sub_1E62DED74(v8, a2 & 1);
    }
  }

  else
  {
    sub_1E65DE348();
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6338();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "[ToastPresenter] No existing toast view, nothing to dismiss", v13, 2u);
      MEMORY[0x1E694F1C0](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1E64519E4()
{
  sub_1E6451B88(v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer, type metadata accessor for AppComposer);

  swift_unknownObjectRelease();

  MEMORY[0x1E694F2D0](v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_currentToastView);
  MEMORY[0x1E694F2D0](v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_presentationContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1E6451AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E644D54C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1E6451B88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6451BE8()
{
  v2 = *(type metadata accessor for ToastResource(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFA78C;

  return sub_1E644EBB0(v5, v0 + v3, v7, v6 + 8);
}

uint64_t sub_1E6451CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CF0, &qword_1E65F3700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6451D64()
{
  v2 = *(type metadata accessor for ToastResource(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E645091C(v4, v0 + v3, v5, v6);
}

uint64_t sub_1E6451E7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6451504(a1, v4, v5, v6);
}

uint64_t sub_1E6451F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1E6451FE4(uint64_t *a1, int a2, int a3, void *aBlock, const void *a5)
{
  _Block_copy(aBlock);
  _Block_copy(a5);

  sub_1E64520D0();
}

uint64_t PersonalizationModalityPreference.transformed()(uint64_t a1)
{
  sub_1E65DAA58();
  v1 = sub_1E65DAA78();
  sub_1E600AA08(v1);

  v2 = sub_1E65DAA68();
  sub_1E600AA08(v2);

  return sub_1E65E2A08();
}

uint64_t sub_1E64521C0@<X0>(uint64_t *a1@<X8>)
{
  v161 = a1;
  v155 = type metadata accessor for ServiceSubscriptionService();
  Description = v155[-1].Description;
  MEMORY[0x1EEE9AC00](v155);
  v152 = v2;
  v153 = &v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for AccountService();
  v150 = v151[-1].Description;
  MEMORY[0x1EEE9AC00](v151);
  v148 = v3;
  v149 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for RemoteBrowsingService();
  v146 = v147[-1].Description;
  MEMORY[0x1EEE9AC00](v147);
  v144 = v4;
  v145 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for WorkoutPlanService();
  v143 = v159[-1].Description;
  MEMORY[0x1EEE9AC00](v159);
  v139 = v5;
  v141 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for ArchivedSessionService();
  v138 = v174[-1].Description;
  MEMORY[0x1EEE9AC00](v174);
  v132 = v6;
  v134 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v178 = &v128 - v8;
  v175 = type metadata accessor for CatalogService();
  v9 = v175[-1].Description;
  MEMORY[0x1EEE9AC00](v175);
  v171 = v10;
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for ConfigurationService();
  v12 = v172[-1].Description;
  MEMORY[0x1EEE9AC00](v172);
  v170 = v13;
  v14 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for RecommendationService();
  v164 = v157[-1].Description;
  MEMORY[0x1EEE9AC00](v157);
  v158 = v15;
  v163 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  v160 = *(v166 - 8);
  v16 = MEMORY[0x1EEE9AC00](v166);
  v167 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v128 - v18;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v19 = sub_1E65E3B68();
  __swift_project_value_buffer(v19, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v20 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v173 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v21 = type metadata accessor for AppEnvironment(0);
  v140 = v21[6];
  v162 = v21[8];
  v22 = v21[12];
  v23 = v21[13];
  v24 = v21[24];
  v129 = v21[25];
  v137 = v24;
  v142 = v21[27];
  v156 = v21[36];
  v168 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  v25 = v164;
  v135 = v164[2];
  v136 = (v164 + 2);
  v26 = v20 + v24;
  v27 = v157;
  v135(v163, v26, v157);
  v28 = v172;
  v12[2](v14, v20 + v23, v172);
  v29 = v9[2];
  v165 = v11;
  v29(v11, v20 + v22, v175);
  v133 = *(v25 + 80);
  v30 = (v133 + 16) & ~v133;
  v130 = v133 | 7;
  v31 = (v158 + *(v12 + 80) + v30) & ~*(v12 + 80);
  v32 = (v170 + *(v9 + 80) + v31) & ~*(v9 + 80);
  v33 = swift_allocObject();
  v34 = v25[4];
  v164 = v25 + 4;
  v131 = v34;
  v34(v33 + v30, v163, v27);
  v12[4]((v33 + v31), v14, v28);
  (v9[4])(v33 + v32, v165, v175);

  v35 = v176;
  sub_1E65E4E08();
  v36 = v161;
  v37 = v166;
  v161[3] = v166;
  v36[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  v39 = v160;
  v41 = (v160 + 16);
  v40 = *(v160 + 16);
  (v40)(boxed_opaque_existential_1, v35, v37);
  v172 = v40;
  v165 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1E65FECC0;
  v168 = sub_1E65E60A8();
  v42 = *(v168 - 8);
  v43 = *(v42 + 56);
  KeyPath = v42 + 56;
  v170 = v43;
  v43(v178, 1, 1, v168);
  v44 = v138;
  v45 = v174;
  v46 = v134;
  v138[2](v134, v173 + v162, v174);
  v47 = v37;
  (v40)(v167, v35, v37);
  v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v49 = *(v39 + 80);
  v50 = (v132 + v49 + v48) & ~v49;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (v44)[4]((v51 + v48), v46, v45);
  v174 = *(v39 + 32);
  v175 = (v39 + 32);
  v52 = v167;
  (v174)(v51 + v50, v167, v47);
  v53 = v178;
  v54 = sub_1E6059EAC(0, 0, v178, &unk_1E6603E50, v51);
  v55 = v170;
  *(v171 + 32) = v54;
  v55(v53, 1, 1, v168);
  v56 = v143;
  v138 = v143[2];
  v57 = v141;
  v58 = v159;
  (v138)(v141, v173 + v156, v159);
  v59 = v52;
  v60 = v47;
  (v172)(v52, v176, v47);
  v61 = *(v56 + 80);
  v162 = v49;
  v62 = (v61 + 32) & ~v61;
  v134 = v62;
  v63 = (v139 + v49 + v62) & ~v49;
  v139 = v49 | v61;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v143 = v56[4];
  v65 = v57;
  (v143)(v64 + v62, v57, v58);
  v66 = v59;
  (v174)(v64 + v63, v59, v60);
  v67 = v178;
  v68 = sub_1E6059EAC(0, 0, v178, &unk_1E6603E60, v64);
  v69 = v170;
  v70 = v171;
  *(v171 + 40) = v68;
  v69(v67, 1, 1, v168);
  v71 = v173;
  (v138)(v65, v173 + v156, v58);
  v72 = v176;
  v73 = v166;
  v74 = v172;
  (v172)(v66, v176, v166);
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  (v143)(&v134[v75], v65, v159);
  v76 = v167;
  (v174)(v75 + v63, v167, v73);
  v77 = v178;
  *(v70 + 48) = sub_1E6059EAC(0, 0, v178, &unk_1E6603E70, v75);
  v78 = v170;
  v170(v77, 1, 1, v168);
  v79 = v146;
  v80 = v71 + v129;
  v81 = v145;
  v82 = v147;
  v146[2](v145, v80, v147);
  v83 = v72;
  v84 = v166;
  (v74)(v76, v83, v166);
  v85 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v86 = (v144 + v162 + v85) & ~v162;
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  *(v87 + 24) = 0;
  (v79)[4]((v87 + v85), v81, v82);
  v88 = v76;
  (v174)(v87 + v86, v76, v84);
  v89 = v178;
  v90 = sub_1E6059EAC(0, 0, v178, &unk_1E6603E80, v87);
  v91 = v171;
  *(v171 + 56) = v90;
  v92 = v168;
  v78(v89, 1, 1, v168);
  v93 = v173;
  v94 = v163;
  v95 = v157;
  v135(v163, v173 + v137, v157);
  (v172)(v88, v176, v84);
  v96 = (v133 + 32) & ~v133;
  v97 = (v96 + v158 + v162) & ~v162;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  *(v98 + 24) = 0;
  v131(v98 + v96, v94, v95);
  v99 = v98 + v97;
  v101 = v166;
  v100 = v167;
  (v174)(v99, v167, v166);
  v102 = v178;
  *(v91 + 64) = sub_1E6059EAC(0, 0, v178, &unk_1E6603E90, v98);
  v170(v102, 1, 1, v92);
  v103 = v150;
  v104 = v149;
  v105 = v151;
  v150[2](v149, v93 + v140, v151);
  v106 = v100;
  v107 = v101;
  (v172)(v100, v176, v101);
  v108 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v109 = v162;
  v110 = (v148 + v109 + v108) & ~v109;
  v111 = swift_allocObject();
  *(v111 + 16) = 0;
  *(v111 + 24) = 0;
  (v103)[4]((v111 + v108), v104, v105);
  v112 = v107;
  (v174)(v111 + v110, v106, v107);
  v113 = v178;
  v114 = sub_1E6059EAC(0, 0, v178, &unk_1E6603EA0, v111);
  v115 = v170;
  *(v171 + 72) = v114;
  v115(v113, 1, 1, v168);
  v116 = Description;
  v117 = v153;
  v118 = v155;
  Description[2](v153, v173 + v142, v155);
  v119 = v106;
  v120 = v106;
  v121 = v176;
  (v172)(v119, v176, v112);
  v122 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v123 = (v152 + v109 + v122) & ~v109;
  v124 = swift_allocObject();
  *(v124 + 16) = 0;
  *(v124 + 24) = 0;
  (v116)[4]((v124 + v122), v117, v118);
  (v174)(v124 + v123, v120, v112);
  v125 = sub_1E6059EAC(0, 0, v178, &unk_1E6603EB0, v124);
  v126 = v171;
  *(v171 + 80) = v125;
  result = (*(v160 + 8))(v121, v112);
  v161[5] = v126;
  return result;
}

uint64_t sub_1E645331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *(sub_1E65DA388() - 8);
  v4[13] = swift_task_alloc();
  v5 = sub_1E65E1F78();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1E65E1FC8();
  v4[17] = swift_task_alloc();
  v6 = sub_1E65DA7C8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_1E65D9D28();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v8 = sub_1E65D82F8();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = sub_1E65D9E68();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DD0, &qword_1E6603EC8);
  v4[35] = swift_task_alloc();
  v10 = sub_1E65DAB38();
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v11 = sub_1E65DAB98();
  v4[39] = v11;
  v4[40] = *(v11 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v12 = sub_1E65E3B68();
  v4[43] = v12;
  v4[44] = *(v12 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v13 = sub_1E65D76F8();
  v4[47] = v13;
  v4[48] = *(v13 - 8);
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64537E8, 0, 0);
}

uint64_t sub_1E64537E8(uint64_t a1)
{
  v41 = v1;
  v2 = v1[50];
  v3 = v1[51];
  v4 = v1[47];
  v5 = v1[48];
  sub_1E65D76E8();
  sub_1E65DE2F8();
  v38 = *(v5 + 16);
  v38(v2, v3, v4);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[50];
  v10 = v1[47];
  v11 = v1[48];
  v12 = v1[46];
  v14 = v1[43];
  v13 = v1[44];
  if (v8)
  {
    v37 = v1[43];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40 = v16;
    *v15 = 136315138;
    v34 = sub_1E65D76C8();
    v36 = v12;
    v18 = v17;
    v35 = v7;
    v19 = *(v11 + 8);
    v19(v9, v10);
    v20 = sub_1E5DFD4B0(v34, v18, &v40);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1E5DE9000, v6, v35, "[Resolver] Requesting personalized plans - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E694F1C0](v16, -1, -1);
    MEMORY[0x1E694F1C0](v15, -1, -1);

    v21 = *(v13 + 8);
    v21(v36, v37);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
    v21 = *(v13 + 8);
    v21(v12, v14);
  }

  v1[52] = v21;
  v1[53] = v19;
  v23 = v1[41];
  v22 = v1[42];
  v24 = v1[39];
  v25 = v1[40];
  v26 = v1[35];
  v38(v1[49], v1[51], v1[47]);
  sub_1E65DDFC8();
  sub_1E65DAB88();
  (*(v25 + 16))(v23, v22, v24);
  v27 = sub_1E65DAB48();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  sub_1E65DAB28();
  v28 = RecommendationService.fetchPersonalizedWorkoutPlans.getter();
  v1[54] = v29;
  v39 = (v28 + *v28);
  v30 = swift_task_alloc();
  v1[55] = v30;
  *v30 = v1;
  v30[1] = sub_1E6453B4C;
  v31 = v1[38];
  v32 = v1[34];

  return v39(v32, v31);
}

uint64_t sub_1E6453B4C()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_1E6454BE0;
  }

  else
  {
    v2 = sub_1E6453C68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6453C68()
{

  v1 = ConfigurationService.queryConfiguration.getter();
  v0[57] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[58] = v3;
  *v3 = v0;
  v3[1] = sub_1E6453D6C;
  v4 = v0[29];

  return v6(v4);
}

uint64_t sub_1E6453D6C()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1E6454DBC;
  }

  else
  {
    v2 = sub_1E6453E9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6453E9C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v0[60] = sub_1E65D8298();
  (*(v2 + 8))(v1, v3);
  v4 = CatalogService.queryAllCatalogModalityReferences.getter();
  v0[61] = v5;
  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[62] = v6;
  *v6 = v0;
  v6[1] = sub_1E6453FC8;

  return v8();
}

uint64_t sub_1E6453FC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 504) = a1;
  *(v3 + 512) = v1;

  if (v1)
  {

    v4 = sub_1E6454FB0;
  }

  else
  {
    v4 = sub_1E64540EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64540EC()
{
  v111 = v1;
  v7 = v1[60];

  v89 = v7;
  v84 = v1;
  v87 = *(v7 + 16);
  if (v87)
  {
    v8 = 0;
    v9 = v1[22];
    v85 = v1[60] + 32;
    v100 = v1[63];
    v10 = (v100 + 56);
    v96 = v9;
    v98 = (v9 + 32);
    v93 = (v9 + 8);
    v83 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *(v89 + 16);
      if (v8 >= v11)
      {
        __break(1u);
        goto LABEL_47;
      }

      v12 = v85 + 24 * v8;
      v91 = v8 + 1;
      v0 = -1 << *(v100 + 32);
      if (-v0 < 64)
      {
        v13 = ~(-1 << -v0);
      }

      else
      {
        v13 = -1;
      }

      v4 = v13 & *(v100 + 56);
      v105 = *(v12 + 8);
      v108 = *v12;
      v102 = *(v12 + 16);
      sub_1E5F8710C(*v12, v105, v102);
      v3 = (63 - v0) >> 6;

      v14 = 0;
      if (v4)
      {
        while (1)
        {
          v15 = v14;
LABEL_14:
          v17 = v1[23];
          v16 = v1[24];
          v18 = v1[21];
          v19 = *(v96 + 72);
          (*(v96 + 16))(v16, *(v100 + 48) + v19 * (__clz(__rbit64(v4)) | (v15 << 6)), v18);
          v2 = *(v96 + 32);
          (v2)(v17, v16, v18);
          v20 = sub_1E65D9D08();
          v5 = v21;
          v1[2] = v20;
          v1[3] = v21;
          v6 = v22 & 1;
          *(v1 + 32) = v22 & 1;
          v1[5] = v108;
          v1[6] = v105;
          *(v1 + 56) = v102;
          sub_1E6217698();
          sub_1E6069558();
          v0 = sub_1E65D7FD8();
          sub_1E5F87058(v20, v5, v6);
          if (v0)
          {
            break;
          }

          v4 &= v4 - 1;
          (*v93)(v1[23], v1[21]);
          v14 = v15;
          v10 = (v100 + 56);
          if (!v4)
          {
            goto LABEL_11;
          }
        }

        v5 = v1[25];
        v23 = v1[26];
        v6 = v1[23];
        v24 = v1[21];
        sub_1E5F87058(v108, v105, v102);

        (v2)(v5, v6, v24);
        (v2)(v23, v5, v24);
        v25 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1E64F6B78(0, v83[2] + 1, 1, v83);
        }

        v8 = v91;
        v0 = v25[2];
        v26 = v25[3];
        v83 = v25;
        v1 = v84;
        if (v0 >= v26 >> 1)
        {
          v83 = sub_1E64F6B78((v26 > 1), v0 + 1, 1, v25);
        }

        v27 = v84[26];
        v28 = v84[21];
        v83[2] = v0 + 1;
        (v2)(v83 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + v0 * v19, v27, v28);
        v10 = (v100 + 56);
      }

      else
      {
        while (1)
        {
LABEL_11:
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_34;
          }

          if (v15 >= v3)
          {
            break;
          }

          v4 = *(v10 + v15);
          ++v14;
          if (v4)
          {
            goto LABEL_14;
          }
        }

        sub_1E5F87058(v108, v105, v102);

        v8 = v91;
      }

      if (v8 == v87)
      {
        goto LABEL_23;
      }
    }
  }

  v83 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v30 = v1[33];
  v29 = v1[34];
  v32 = v1[31];
  v31 = v1[32];
  v33 = v1[30];

  sub_1E65DE2F8();
  v34 = *(v32 + 16);
  v34(v30, v29, v33);
  v34(v31, v29, v33);
  v35 = sub_1E65E3B48();
  v36 = sub_1E65E6338();
  if (os_log_type_enabled(v35, v36))
  {
    v99 = v1[53];
    v109 = v1[52];
    v97 = v35;
    v90 = v84[49];
    v94 = v84[47];
    v106 = v84[45];
    v103 = v84[43];
    v37 = v84[33];
    v38 = v84[32];
    v39 = v84[31];
    v40 = v84[30];
    v41 = v84[20];
    v42 = v84[19];
    v43 = v84[18];
    v86 = v43;
    v88 = v40;
    v4 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v110[0] = v95;
    *v4 = 134218242;
    v92 = v36;
    sub_1E65D9E48();
    v44 = sub_1E65DA7A8();
    v45 = *(v42 + 8);
    v45(v41, v43);
    v10 = *(v39 + 8);
    v10(v37, v40);
    *(v4 + 4) = v44;
    *(v4 + 12) = 2080;
    sub_1E65D9E48();
    sub_1E65DA7B8();
    v45(v41, v86);
    v46 = sub_1E65D76C8();
    v48 = v47;
    v1 = v84;
    v99(v90, v94);
    v98 = v10;
    v10(v38, v88);
    v49 = sub_1E5DFD4B0(v46, v48, v110);

    *(v4 + 14) = v49;
    _os_log_impl(&dword_1E5DE9000, v97, v92, "[Resolver] Response cohort:%ld reco:%s", v4, 0x16u);
    v0 = v95;
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x1E694F1C0](v95, -1, -1);
    MEMORY[0x1E694F1C0](v4, -1, -1);

    v109(v106, v103);
  }

  else
  {
    v50 = v1[52];
    v51 = v1[45];
    v0 = v1[43];
    v52 = v1[32];
    v53 = v1[30];
    v54 = v1[31];
    v55 = *(v54 + 8);
    v4 = v54 + 8;
    v10 = v55;
    v55(v1[33], v53);

    v98 = v55;
    v55(v52, v53);
    v50(v51, v0);
  }

  v2 = sub_1E65D9E38();
  v3 = *(v2 + 16);
  if (v3)
  {
    v6 = v1[15];
    v5 = v1[12];
    v110[0] = MEMORY[0x1E69E7CC0];
    sub_1E601D15C(0, v3, 0);
    v11 = *(v2 + 16);
    if (!v11)
    {
      goto LABEL_47;
    }

    v15 = v110[0];
    v4 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v1 = v84;
    v56 = v84[64];
    v57 = v84[16];
    v58 = v84[13];
    v5 = *(v5 + 72);
    sub_1E645A7F8(v2 + v4, v58);
    sub_1E64551A4(v58, v83, v57);
    if (v56)
    {
      sub_1E645A85C(v84[13]);
    }

LABEL_34:
    sub_1E645A85C(v1[13]);
    v110[0] = v15;
    v0 = *(v15 + 16);
    v11 = *(v15 + 24);
    v10 = (v0 + 1);
    if (v0 >= v11 >> 1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v60 = v1[16];
      v61 = v1[14];
      *(v15 + 16) = v10;
      v107 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v104 = *(v6 + 72);
      v6 = *(v6 + 32);
      (v6)(v15 + v107 + v104 * v0, v60, v61);
      if (v3 == 1)
      {
        break;
      }

      v101 = v5;
      v4 += v2 + v5;
      v5 = 1;
      while (1)
      {
        v11 = *(v2 + 16);
        if (v5 >= v11)
        {
          break;
        }

        v1 = v84;
        v69 = v84[16];
        v70 = v84[13];
        sub_1E645A7F8(v4, v70);
        sub_1E64551A4(v70, v83, v69);
        sub_1E645A85C(v84[13]);
        v110[0] = v15;
        v0 = *(v15 + 16);
        v71 = *(v15 + 24);
        v10 = (v0 + 1);
        if (v0 >= v71 >> 1)
        {
          sub_1E601D15C((v71 > 1), v0 + 1, 1);
          v15 = v110[0];
        }

        ++v5;
        v72 = v84[16];
        v73 = v84[14];
        *(v15 + 16) = v10;
        (v6)(v15 + v107 + v104 * v0, v72, v73);
        v4 += v101;
        if (v3 == v5)
        {
          goto LABEL_36;
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:
      sub_1E601D15C((v11 > 1), v10, 1);
      v15 = v110[0];
    }

LABEL_36:

    v1 = v84;
  }

  else
  {
  }

  v81 = v1[51];
  v82 = v1[53];
  v80 = v1[47];
  v62 = v1[40];
  v78 = v1[39];
  v79 = v1[42];
  v63 = v1[37];
  v76 = v1[36];
  v77 = v1[38];
  v74 = v1[34];
  v75 = v1[30];
  v64 = v1[19];
  v65 = v1[20];
  v66 = v1[17];
  v67 = v1[18];
  sub_1E65D9E48();
  sub_1E64C6B48(v66);
  (*(v64 + 8))(v65, v67);
  sub_1E65E1F58();
  v98(v74, v75);
  (*(v63 + 8))(v77, v76);
  (*(v62 + 8))(v79, v78);
  v82(v81, v80);

  v68 = v1[1];

  return v68();
}

uint64_t sub_1E6454BE0()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6454DBC()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6454FB0()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E64551A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v192 = a2;
  v206 = a1;
  v195 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v190 = &v174 - v4;
  v5 = sub_1E65E2A38();
  v6 = *(v5 - 8);
  v202 = v5;
  v203 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v213 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1E65D9388();
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v187 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E2CF8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v194 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_1E65DAA88();
  v210 = *(v214 - 8);
  v11 = MEMORY[0x1EEE9AC00](v214);
  v209 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v211 = &v174 - v13;
  v205 = sub_1E65D9D28();
  v212 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v204 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DA878();
  v16 = *(v15 - 8);
  v199 = v15;
  v200 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v184 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v174 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v191 = &v174 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v185 = &v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v182 = &v174 - v26;
  v183 = sub_1E65D76F8();
  v181 = *(v183 - 8);
  v27 = MEMORY[0x1EEE9AC00](v183);
  v193 = &v174 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v180 = &v174 - v29;
  v30 = sub_1E65D9C28();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v197 = &v174 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v196 = &v174 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v174 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v174 - v42;
  v44 = sub_1E65E3B68();
  v207 = *(v44 - 8);
  v208 = v44;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v174 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v174 - v48;
  v50 = sub_1E65DA388();
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = &v174 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E645A7F8(v206, v52);
  if ((*(v31 + 48))(v52, 1, v30) == 1)
  {
    sub_1E65DE2F8();
    v53 = sub_1E65E3B48();
    v54 = sub_1E65E6338();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1E5DE9000, v53, v54, "[Resolver] Personalized Plan: Custom", v55, 2u);
      MEMORY[0x1E694F1C0](v55, -1, -1);
    }

    (*(v207 + 8))(v49, v208);
    v56 = MEMORY[0x1E699F188];
    v57 = v195;
LABEL_49:
    v169 = *v56;
    v170 = sub_1E65E1F78();
    return (*(*(v170 - 8) + 104))(v57, v169, v170);
  }

  (*(v31 + 32))(v43, v52, v30);
  sub_1E65DE2F8();
  v58 = v31;
  v59 = *(v31 + 16);
  v59(v41, v43, v30);
  v59(v196, v43, v30);
  v59(v197, v43, v30);
  v198 = v43;
  v59(v34, v43, v30);
  v60 = sub_1E65E3B48();
  v61 = sub_1E65E6338();
  v62 = os_log_type_enabled(v60, v61);
  v179 = v21;
  v186 = v30;
  v178 = v58;
  if (v62)
  {
    v176 = v61;
    v177 = v60;
    v206 = v47;
    v63 = swift_slowAlloc();
    v174 = v34;
    v64 = v63;
    v175 = swift_slowAlloc();
    v217 = v175;
    *v64 = 136315906;
    sub_1E65D9C18();
    v65 = sub_1E65D9708();
    v67 = v66;
    v68 = *(v58 + 8);
    v68(v41);
    v69 = sub_1E5DFD4B0(v65, v67, &v217);

    *(v64 + 4) = v69;
    *(v64 + 6) = 2080;
    v70 = v196;
    v71 = sub_1E65D9BD8();
    v73 = v72;
    (v68)(v70, v30);
    v74 = sub_1E5DFD4B0(v71, v73, &v217);

    *(v64 + 14) = v74;
    *(v64 + 11) = 2080;
    v75 = v180;
    v76 = v197;
    sub_1E65D9BB8();
    sub_1E645A910();
    v77 = v183;
    v78 = sub_1E65E6BC8();
    v80 = v79;
    v181 = *(v181 + 8);
    (v181)(v75, v77);
    v196 = v68;
    (v68)(v76, v186);
    v81 = sub_1E5DFD4B0(v78, v80, &v217);

    *(v64 + 3) = v81;
    v197 = v64;
    *(v64 + 16) = 2080;
    v82 = v182;
    v83 = v174;
    sub_1E65D9BE8();
    v84 = sub_1E65DA7C8();
    v85 = *(v84 - 8);
    v86 = v83;
    if ((*(v85 + 48))(v82, 1, v84) == 1)
    {
      sub_1E5DFE50C(v82, &qword_1ED072B58, &qword_1E65EC600);
      v87 = 0;
      v88 = 0;
    }

    else
    {
      sub_1E65DA7B8();
      (*(v85 + 8))(v82, v84);
      v87 = sub_1E65D76C8();
      v88 = v93;
      (v181)(v75, v183);
    }

    v92 = v191;
    v95 = v207;
    v94 = v208;
    v96 = v206;
    v215 = v87;
    v216 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    v97 = sub_1E65E6648();
    v99 = v98;
    (v196)(v86, v186);

    v100 = sub_1E5DFD4B0(v97, v99, &v217);

    v101 = v197;
    *(v197 + 34) = v100;
    v102 = v177;
    _os_log_impl(&dword_1E5DE9000, v177, v176, "[Resolver] Personalized Plan: %s %s planId: %s reco:%s", v101, 0x2Au);
    v103 = v175;
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v103, -1, -1);
    MEMORY[0x1E694F1C0](v101, -1, -1);

    (*(v95 + 8))(v96, v94);
    v91 = v201;
    v90 = v205;
  }

  else
  {

    v89 = *(v58 + 8);
    v89(v34, v30);
    v89(v197, v30);
    v89(v196, v30);
    v196 = v89;
    v89(v41, v30);
    (*(v207 + 8))(v47, v208);
    v90 = v205;
    v91 = v201;
    v92 = v191;
  }

  sub_1E65D9BF8();
  v104 = sub_1E65DA858();
  v105 = *(v200 + 8);
  v200 += 8;
  v197 = v105;
  (v105)(v92, v199);
  v106 = *(v104 + 16);
  if (v106)
  {
    v215 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v106, 0);
    v107 = v215;
    v207 = *(v210 + 16);
    v108 = (*(v210 + 80) + 32) & ~*(v210 + 80);
    v191 = v104;
    v109 = v104 + v108;
    v206 = *(v210 + 72);
    v208 = (v210 + 16);
    v110 = (v210 + 8);
    do
    {
      v111 = v211;
      v112 = v214;
      (v207)(v211, v109, v214);
      v113 = sub_1E65DAA58();
      v115 = v114;
      (*v110)(v111, v112);
      v215 = v107;
      v117 = v107[2];
      v116 = v107[3];
      if (v117 >= v116 >> 1)
      {
        sub_1E601C0B8((v116 > 1), v117 + 1, 1);
        v107 = v215;
      }

      v107[2] = v117 + 1;
      v118 = &v107[2 * v117];
      v118[4] = v113;
      v118[5] = v115;
      v109 += v206;
      --v106;
    }

    while (v106);

    v91 = v201;
    v90 = v205;
  }

  else
  {

    v107 = MEMORY[0x1E69E7CC0];
  }

  v119 = *(v192 + 16);
  v120 = v204;
  if (v119)
  {
    v208 = v212[2];
    v121 = v192 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
    v122 = v212[9];
    v212 += 2;
    v206 = (v212 - 1);
    v207 = v122;
    v211 = MEMORY[0x1E69E7CC0];
    v208(v204, v121, v90);
    while (1)
    {
      v215 = sub_1E65D9CD8();
      v216 = v123;
      MEMORY[0x1EEE9AC00](v215);
      v172 = &v215;
      v124 = v91;
      v125 = v120;
      v126 = sub_1E5F95F4C(sub_1E645A8B8, (&v174 - 4), v107);

      if (v126)
      {
        v127 = sub_1E65D9D18();
        v129 = v128;
        (*v206)(v125, v90);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v211 = sub_1E64F6718(0, *(v211 + 2) + 1, 1, v211);
        }

        v131 = *(v211 + 2);
        v130 = *(v211 + 3);
        if (v131 >= v130 >> 1)
        {
          v211 = sub_1E64F6718((v130 > 1), v131 + 1, 1, v211);
        }

        v132 = v211;
        *(v211 + 2) = v131 + 1;
        v133 = &v132[16 * v131];
        *(v133 + 4) = v127;
        *(v133 + 5) = v129;
        v91 = v124;
        v120 = v204;
        v90 = v205;
      }

      else
      {
        (*v206)(v125, v90);
        v120 = v125;
        v91 = v124;
      }

      v121 += v207;
      if (!--v119)
      {
        break;
      }

      v208(v120, v121, v90);
    }
  }

  else
  {
    v211 = MEMORY[0x1E69E7CC0];
  }

  v201 = v91;

  v134 = v179;
  sub_1E65D9BF8();
  v135 = sub_1E65DA858();
  (v197)(v134, v199);
  v136 = *(v135 + 16);
  if (!v136)
  {

    v212 = MEMORY[0x1E69E7CC8];
LABEL_45:
    sub_1E65D9BB8();
    v214 = sub_1E65D9BD8();
    v156 = objc_opt_self();
    v157 = sub_1E65E5EF8();

    v158 = [v156 localizedStringByJoiningStrings_];

    sub_1E65E5C78();
    v159 = v187;
    sub_1E65D9C08();
    sub_1E61DADA0(v194);
    (*(v188 + 8))(v159, v189);
    v160 = v184;
    sub_1E65D9BF8();
    sub_1E65DA868();
    (v197)(v160, v199);
    v161 = sub_1E65D9C18();
    v162 = v185;
    sub_1E65D9BE8();
    v163 = sub_1E65DA7C8();
    v164 = *(v163 - 8);
    if ((*(v164 + 48))(v162, 1, v163) == 1)
    {
      sub_1E5DFE50C(v162, &qword_1ED072B58, &qword_1E65EC600);
      v165 = 1;
      v166 = v190;
    }

    else
    {
      v167 = v162;
      v166 = v190;
      sub_1E64C6B48(v190);
      (*(v164 + 8))(v167, v163);
      v165 = 0;
    }

    v168 = sub_1E65E1FC8();
    (*(*(v168 - 8) + 56))(v166, v165, 1, v168);
    v173 = v166;
    LOBYTE(v172) = v161;
    v57 = v195;
    sub_1E65E2038();
    (v196)(v198, v186);
    v56 = MEMORY[0x1E699F180];
    goto LABEL_49;
  }

  v137 = *(v210 + 16);
  v138 = v135 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
  v207 = *(v210 + 72);
  v208 = v137;
  v204 = v135;
  v205 = v203 + 40;
  v210 += 16;
  v206 = v210 - 8;
  v212 = MEMORY[0x1E69E7CC8];
  v137(v209, v138, v214);
  while (1)
  {
    v140 = sub_1E65DAA58();
    v142 = v141;
    sub_1E65DAA58();
    v143 = sub_1E65DAA78();
    sub_1E600AA08(v143);

    v144 = sub_1E65DAA68();
    sub_1E600AA08(v144);

    sub_1E65E2A08();
    v145 = v212;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v215 = v145;
    v148 = sub_1E6215038(v140, v142);
    v149 = v145[2];
    v150 = (v147 & 1) == 0;
    v151 = v149 + v150;
    if (__OFADD__(v149, v150))
    {
      break;
    }

    v152 = v147;
    if (v145[3] >= v151)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E64242F0();
      }
    }

    else
    {
      sub_1E641B0BC(v151, isUniquelyReferenced_nonNull_native);
      v153 = sub_1E6215038(v140, v142);
      if ((v152 & 1) != (v154 & 1))
      {
        goto LABEL_51;
      }

      v148 = v153;
    }

    v155 = v209;
    v212 = v215;
    if (v152)
    {
      (*(v203 + 40))(v215[7] + *(v203 + 72) * v148, v213, v202);
    }

    else
    {
      sub_1E6422E40(v148, v140, v142, v213, v215);
    }

    v139 = v214;
    (*v206)(v155, v214);
    v138 += v207;
    if (!--v136)
    {

      goto LABEL_45;
    }

    v208(v155, v138, v139);
  }

  __break(1u);
LABEL_51:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E64566E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6456818, 0, 0);
}

uint64_t sub_1E6456818()
{
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6456914;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6456914()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FE0E84;
  }

  else
  {
    v2 = sub_1E6456A44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6456A44()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E6456B20;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E6456B20()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6456C1C, 0, 0);
}

uint64_t sub_1E6456C1C()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6456D1C, v2, v1);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E6456D1C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E6456B20;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E6456DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6456F1C, 0, 0);
}

uint64_t sub_1E6456F1C()
{
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[10] = v2;
  v6 = (active + *active);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6457018;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6457018()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6457130, 0, 0);
}

uint64_t sub_1E6457130()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E645720C;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E645720C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6457308, 0, 0);
}

uint64_t sub_1E6457308()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6457408, v4, v3);
  }
}

uint64_t sub_1E6457408()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E645720C;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E64574D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078908, &qword_1E65FE190);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078910, &qword_1E65FE198);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6457640, 0, 0);
}

uint64_t sub_1E6457640()
{
  v1 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E645773C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E645773C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6457854, 0, 0);
}

uint64_t sub_1E6457854()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6457930;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6457930()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6457A2C, 0, 0);
}

uint64_t sub_1E6457A2C()
{
  v1 = v0[4];
  v2 = sub_1E65DDF18();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6457B7C, v6, v5);
  }
}

uint64_t sub_1E6457B7C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6457C00, 0, 0);
}

uint64_t sub_1E6457C00()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078908, &qword_1E65FE190);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6457930;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6457CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6457E2C, 0, 0);
}

uint64_t sub_1E6457E2C()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6457F28;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6457F28()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6458040, 0, 0);
}

uint64_t sub_1E6458040()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E645811C;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E645811C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6458218, 0, 0);
}

uint64_t sub_1E6458218()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6458368, v6, v5);
  }
}

uint64_t sub_1E6458368()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E64583EC, 0, 0);
}

uint64_t sub_1E64583EC()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E645811C;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E64584AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DC0, &qword_1E6603EB8);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072868, &qword_1E65EBEC0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DC8, &qword_1E6603EC0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6458618, 0, 0);
}

uint64_t sub_1E6458618()
{
  v1 = RecommendationService.makeOnboardingSurveyResultsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6458714;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6458714()
{

  return MEMORY[0x1EEE6DFA0](sub_1E645882C, 0, 0);
}

uint64_t sub_1E645882C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6458908;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6458908()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6458A04, 0, 0);
}

uint64_t sub_1E6458A04()
{
  v1 = v0[4];
  v2 = sub_1E65DE1C8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6458B54, v6, v5);
  }
}

uint64_t sub_1E6458B54()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6458BD8, 0, 0);
}

uint64_t sub_1E6458BD8()
{
  sub_1E5DFE50C(v0[4], &qword_1ED079DC0, &qword_1E6603EB8);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6458908;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6458C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6458DCC, 0, 0);
}

uint64_t sub_1E6458DCC()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6458EC8;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6458EC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6458FE0, 0, 0);
}

uint64_t sub_1E6458FE0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E64590BC;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E64590BC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64591B8, 0, 0);
}

uint64_t sub_1E64591B8()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64592B8, v4, v3);
  }
}

uint64_t sub_1E64592B8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E64590BC;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6459384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A40, &qword_1E65FED78);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072848, &qword_1E65EBE90);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A48, &qword_1E65FED80);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64594F0, 0, 0);
}

uint64_t sub_1E64594F0()
{
  v1 = ServiceSubscriptionService.makeServiceSubscriptionStatusStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E64595EC;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E64595EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6459704, 0, 0);
}

uint64_t sub_1E6459704()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E64597E0;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E64597E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E64598DC, 0, 0);
}

uint64_t sub_1E64598DC()
{
  v1 = v0[4];
  v2 = sub_1E65D92D8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6459A2C, v6, v5);
  }
}

uint64_t sub_1E6459A2C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6459AB0, 0, 0);
}

uint64_t sub_1E6459AB0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078A40, &qword_1E65FED78);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E64597E0;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6459B70(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for ConfigurationService()[-1].Description;
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v8[8];
  v11 = type metadata accessor for CatalogService()[-1].Description;
  v12 = (v9 + v10 + v11[80]) & ~v11[80];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E645331C(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1E6459D10(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E64566E4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6459E6C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6456DE8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6459FC8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E64574D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A124(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6457CC0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A280(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E64584AC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A3DC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6458C98(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_13(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E645A69C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6459384(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA388();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E645A85C(uint64_t a1)
{
  v2 = sub_1E65DA388();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E645A8B8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E65E6C18() & 1;
  }
}

unint64_t sub_1E645A910()
{
  result = qword_1EE2D7198;
  if (!qword_1EE2D7198)
  {
    sub_1E65D76F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7198);
  }

  return result;
}

uint64_t sub_1E645A968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v129 = a3;
  v128 = a2;
  v142 = a1;
  v143 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760D8, &qword_1E65F4990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v130 = &v119 - v5;
  v6 = sub_1E65DCF98();
  v137 = *(v6 - 8);
  v138 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DCA68();
  v136 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7D18();
  v133 = *(v10 - 8);
  v134 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v123 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v139 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v119 - v15;
  v16 = sub_1E65E3B68();
  v131 = *(v16 - 8);
  v132 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v126 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v127 = &v119 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E0, &qword_1E65F4998);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v121 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v119 - v23;
  v25 = sub_1E65DCCE8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v120 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v119 - v29;
  v31 = sub_1E65D9CC8();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v125 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v124 = &v119 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v119 - v37;
  v39 = sub_1E65D8398();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E645FBF4(v141, v41, MEMORY[0x1E69CB3B0]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v141 = v25;
    v42 = v133;
    v43 = v134;
    v44 = v140;
    (*(v133 + 32))(v140, v41, v134);
    v46 = v135;
    v45 = v136;
    (*(v136 + 104))(v135, *MEMORY[0x1E699EE70], v8);
    sub_1E645FC5C(&qword_1ED079DD8, MEMORY[0x1E699EE78], MEMORY[0x1E699EE80]);
    v47 = v142;
    v48 = sub_1E65E5B98();
    v49 = (*(v45 + 8))(v46, v8);
    v50 = v47;
    v51 = v138;
    v52 = v139;
    v53 = v137;
    if (v48 & 1) == 0 && (sub_1E645DEB8(v49))
    {
      v54 = v121;
      sub_1E645F180(v50, MEMORY[0x1E69CB048], MEMORY[0x1E69CB040], MEMORY[0x1E69CB050], v121);
      v55 = v26;
      v56 = v54;
      v57 = v54;
      v58 = v141;
      if ((*(v55 + 48))(v57, 1, v141) != 1)
      {
        (*(v42 + 8))(v44, v43);
        v116 = *(v55 + 32);
        v117 = v120;
        v116(v120, v56, v58);
        v118 = v143;
        v116(v143, v117, v58);
        v106 = sub_1E65DCA48();
        swift_storeEnumTagMultiPayload();
        v109 = *(*(v106 - 8) + 56);
        v110 = v118;
        goto LABEL_15;
      }

      sub_1E5DFE50C(v56, &qword_1ED0760E0, &qword_1E65F4998);
    }

    v59 = v130;
    sub_1E645DFB4(v50, v128, v129, v130);
    if ((*(v53 + 48))(v59, 1, v51) == 1)
    {
      sub_1E5DFE50C(v59, &qword_1ED0760D8, &qword_1E65F4990);
      v60 = v126;
      sub_1E65DD1C8();
      v61 = *(v42 + 16);
      v61(v52, v44, v43);
      v62 = v123;
      v61(v123, v44, v43);
      v63 = sub_1E65E3B48();
      v64 = sub_1E65E6328();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        LODWORD(v141) = v64;
        v142 = v66;
        v149[0] = v66;
        *v65 = 136315394;
        v67 = sub_1E65D7BF8();
        v68 = v52;
        v70 = v69;
        v71 = *(v42 + 8);
        v71(v68, v43);
        v72 = sub_1E5DFD4B0(v67, v70, v149);

        *(v65 + 4) = v72;
        *(v65 + 12) = 2080;
        v73 = sub_1E65D7C58();
        v75 = v74;
        v146 = v73;
        v147 = v74;
        v77 = v76 & 1;
        v148 = v76 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
        sub_1E65D7F98();
        v71(v62, v43);
        sub_1E5F87058(v73, v75, v77);
        v78 = sub_1E5DFD4B0(v144, v145, v149);

        *(v65 + 14) = v78;
        _os_log_impl(&dword_1E5DE9000, v63, v141, "Failed to create search tile for: %s:%s", v65, 0x16u);
        v79 = v142;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v79, -1, -1);
        MEMORY[0x1E694F1C0](v65, -1, -1);

        (*(v131 + 8))(v126, v132);
        v71(v140, v43);
      }

      else
      {

        v114 = *(v42 + 8);
        v114(v62, v43);
        v114(v52, v43);
        (*(v131 + 8))(v60, v132);
        v114(v44, v43);
      }

LABEL_18:
      v112 = sub_1E65DCA48();
      v109 = *(*(v112 - 8) + 56);
      v110 = v143;
      v111 = 1;
      return v109(v110, v111, 1, v112);
    }

    (*(v42 + 8))(v44, v43);
    v107 = *(v53 + 32);
    v108 = v122;
    v107(v122, v59, v51);
    v105 = v143;
    v107(v143, v108, v51);
    v106 = sub_1E65DCA48();
  }

  else
  {
    (*(v32 + 32))(v38, v41, v31);
    sub_1E645F180(v142, MEMORY[0x1E69CC860], MEMORY[0x1E69CC858], MEMORY[0x1E69CC868], v24);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_1E5DFE50C(v24, &qword_1ED0760E0, &qword_1E65F4998);
      v80 = v127;
      sub_1E65DD1C8();
      v81 = *(v32 + 16);
      v82 = v124;
      v81(v124, v38, v31);
      v83 = v125;
      v81(v125, v38, v31);
      v84 = sub_1E65E3B48();
      v85 = sub_1E65E6328();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v149[0] = v142;
        *v86 = 136315394;
        LODWORD(v141) = v85;
        v87 = sub_1E65D9C98();
        v89 = v88;
        v140 = *(v32 + 8);
        (v140)(v82, v31);
        v90 = sub_1E5DFD4B0(v87, v89, v149);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2080;
        v91 = sub_1E65D9CA8();
        v92 = v83;
        v94 = v93;
        v146 = v91;
        v147 = v93;
        v95 = v84;
        v97 = v96 & 1;
        v148 = v96 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
        sub_1E65D7F98();
        v98 = v92;
        v99 = v31;
        v100 = v31;
        v101 = v140;
        (v140)(v98, v99);
        sub_1E5F87058(v91, v94, v97);
        v102 = sub_1E5DFD4B0(v144, v145, v149);

        *(v86 + 14) = v102;
        _os_log_impl(&dword_1E5DE9000, v95, v141, "Failed to create search placeholder for: %s:%s", v86, 0x16u);
        v103 = v142;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v103, -1, -1);
        MEMORY[0x1E694F1C0](v86, -1, -1);

        (*(v131 + 8))(v127, v132);
        (v101)(v38, v100);
      }

      else
      {

        v113 = *(v32 + 8);
        v113(v83, v31);
        v113(v82, v31);
        (*(v131 + 8))(v80, v132);
        v113(v38, v31);
      }

      goto LABEL_18;
    }

    (*(v32 + 8))(v38, v31);
    v104 = *(v26 + 32);
    v104(v30, v24, v25);
    v105 = v143;
    v104(v143, v30, v25);
    v106 = sub_1E65DCA48();
  }

  swift_storeEnumTagMultiPayload();
  v109 = *(*(v106 - 8) + 56);
  v110 = v105;
LABEL_15:
  v111 = 0;
  v112 = v106;
  return v109(v110, v111, 1, v112);
}

uint64_t sub_1E645B850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v174 = a3;
  v165 = a1;
  v172 = a4;
  v162 = sub_1E65D8258();
  v161 = *(v162 - 8);
  v6 = MEMORY[0x1EEE9AC00](v162);
  v160 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v159 = &v142 - v8;
  v158 = sub_1E65E3B68();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v175 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v167 = &v142 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v171 = &v142 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v166 = &v142 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v170 = &v142 - v17;
  v156 = sub_1E65DAC98();
  v154 = *(v156 - 8);
  v18 = MEMORY[0x1EEE9AC00](v156);
  v150 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v142 - v20;
  v155 = sub_1E65DD1A8();
  MEMORY[0x1EEE9AC00](v155);
  v151 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1E65DA0B8();
  v152 = *(v153 - 8);
  v22 = MEMORY[0x1EEE9AC00](v153);
  v148 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v147 = &v142 - v24;
  v146 = sub_1E65D9D58();
  v145 = *(v146 - 8);
  v25 = MEMORY[0x1EEE9AC00](v146);
  v144 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v143 = &v142 - v27;
  v164 = sub_1E65D8BB8();
  v28 = MEMORY[0x1EEE9AC00](v164);
  v30 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v173 = &v142 - v31;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  v32 = MEMORY[0x1EEE9AC00](v169);
  v168 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v180 = &v142 - v34;
  v163 = sub_1E65DCA68();
  v35 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v179 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v178 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v177 = &v142 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v183 = &v142 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v142 - v44;
  v184 = sub_1E65D72D8();
  v182 = *(v184 - 8);
  v46 = MEMORY[0x1EEE9AC00](v184);
  v176 = &v142 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v181 = &v142 - v48;
  v49 = v4;
  v50 = sub_1E65D80C8();
  v52 = v51;
  v188 = v50;
  v189 = v51;
  v54 = v53 & 1;
  v190 = v53 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7FB8();
  sub_1E5F87058(v50, v52, v54);
  v55 = v185;
  if (v185 > 4u)
  {
    if (v185 <= 6u)
    {
      if (v185 == 5)
      {
        v55 = 7;
      }
    }

    else if (v185 == 7)
    {
      v55 = 5;
    }

    else if (v185 != 8)
    {
      v61 = v175;
      sub_1E65DD1C8();
      v62 = v161;
      v63 = *(v161 + 16);
      v64 = v159;
      v65 = v162;
      v63(v159, v49, v162);
      v66 = v160;
      v63(v160, v49, v65);
      v67 = sub_1E65E3B48();
      v68 = sub_1E65E6328();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v187 = v184;
        *v69 = 136315394;
        LODWORD(v183) = v68;
        v70 = sub_1E65D8078();
        v71 = v64;
        v73 = v72;
        v74 = *(v62 + 8);
        v74(v71, v65);
        v75 = sub_1E5DFD4B0(v70, v73, &v187);

        *(v69 + 4) = v75;
        *(v69 + 12) = 2080;
        v76 = sub_1E65D80C8();
        v77 = v65;
        v79 = v78;
        v188 = v76;
        v189 = v78;
        v182 = v67;
        v81 = v80 & 1;
        v190 = v80 & 1;
        sub_1E65D7F98();
        v74(v66, v77);
        sub_1E5F87058(v76, v79, v81);
        v82 = sub_1E5DFD4B0(v185, v186, &v187);

        *(v69 + 14) = v82;
        v83 = v182;
        _os_log_impl(&dword_1E5DE9000, v182, v183, "Missing referenceType transformation for CatalogLockup %s:%s", v69, 0x16u);
        v84 = v184;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v84, -1, -1);
        MEMORY[0x1E694F1C0](v69, -1, -1);

        (*(v157 + 8))(v175, v158);
      }

      else
      {

        v141 = *(v62 + 8);
        v141(v66, v65);
        v141(v64, v65);
        (*(v157 + 8))(v61, v158);
      }

      v138 = 1;
      v137 = v172;
      goto LABEL_31;
    }
  }

  LODWORD(v162) = v55;
  v56 = sub_1E65D8248();
  v57 = v174;
  sub_1E63C4134(a2, v174, v56, v181);

  v58 = *(sub_1E65D80A8() + 16);

  if (v58)
  {
    v59 = sub_1E65D80A8();
    sub_1E63C4134(a2, v57, v59, v45);

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  isa = v182[7].isa;
  v86 = 1;
  v175 = v45;
  (isa)(v45, v60, 1, v184);
  v87 = *(sub_1E65D8068() + 16);

  if (v87)
  {
    v88 = sub_1E65D8068();
    v89 = v183;
    sub_1E63C4134(a2, v174, v88, v183);

    v86 = 0;
  }

  else
  {
    v89 = v183;
  }

  (isa)(v89, v86, 1, v184);
  v90 = sub_1E65D81F8();
  if (!v91)
  {
    v90 = sub_1E65DADE8();
  }

  v92 = v90;
  v93 = v91;
  v94 = sub_1E65D8078();
  v96 = v95;
  v97 = sub_1E65D81B8();
  if (v98)
  {
    v99 = v97;
  }

  else
  {
    v99 = 0;
  }

  if (v98)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0xE000000000000000;
  }

  v188 = v94;
  v189 = v96;

  MEMORY[0x1E694D7C0](v99, v100);

  MEMORY[0x1E694D7C0](0, 0xE000000000000000);

  v101 = v188;
  v102 = v189;
  (*(v35 + 16))(v179, v165, v163);
  v103 = sub_1E65D8078();
  v105 = v104;
  v158 = sub_1E65D81B8();
  v157 = v106;
  v107 = v173;
  sub_1E65D8128();
  sub_1E645FBF4(v107, v30, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v174 = v92;
  v161 = v93;
  v160 = v101;
  v159 = v102;
  v165 = v103;
  v163 = v105;
  if (EnumCaseMultiPayload == 1)
  {
    v109 = v152;
    v110 = v147;
    v111 = v153;
    (*(v152 + 32))(v147, v30, v153);
    v112 = v148;
    (*(v109 + 16))(v148, v110, v111);
    v113 = v149;
    sub_1E65DA098();
    v114 = v154;
    v115 = v150;
    v116 = v156;
    (*(v154 + 16))(v150, v113, v156);
    sub_1E602A934(v115, v151);
    (*(v114 + 8))(v113, v116);
    sub_1E65DA0A8();
    sub_1E645FC5C(&qword_1ED075918, MEMORY[0x1E699EF60], MEMORY[0x1E699EF58]);
    v117 = v168;
    sub_1E65DC438();
    v118 = *(v109 + 8);
    v118(v112, v111);
    v118(v110, v111);
    v107 = v173;
  }

  else
  {
    v119 = v145;
    v120 = v143;
    v121 = v146;
    (*(v145 + 32))(v143, v30, v146);
    (*(v119 + 16))(v144, v120, v121);
    v117 = v168;
    sub_1E6134684();
    (*(v119 + 8))(v120, v121);
  }

  v123 = v170;
  v122 = v171;
  v124 = v183;
  sub_1E645FB94(v107, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E645FB24(v117, v180);
  v125 = sub_1E65D8108();
  if (v126 == -1)
  {
    v127 = 9;
  }

  else
  {
    v188 = v125;
    LOBYTE(v189) = v126 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
    sub_1E65D7FB8();
    v127 = v185;
  }

  LODWORD(v173) = v127;
  sub_1E65D80E8();
  v128 = sub_1E65D76A8();
  v129 = (*(*(v128 - 8) + 48))(v123, 1, v128);
  sub_1E5DFE50C(v123, &qword_1ED0752D8, &qword_1E660CC30);
  (v182[2].isa)(v176, v181, v184);
  sub_1E60976FC(v175, v177);
  sub_1E60976FC(v124, v178);
  v171 = sub_1E65D8188();
  v130 = sub_1E65D8238();
  if (v132 == -1)
  {
    v136 = 4;
  }

  else
  {
    v188 = v130;
    v189 = v131;
    v190 = v132 & 1;
    v133 = v130;
    v134 = v131;
    v135 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E61281C8(v133, v134, v135);
    v136 = 0x402030100uLL >> (8 * v185);
  }

  v170 = v136;
  LODWORD(v169) = v129 != 1;
  v168 = sub_1E65D80D8();
  LODWORD(v164) = sub_1E65D81C8();
  v156 = sub_1E65D8088();
  sub_1E65D81D8();
  sub_1E65D8118();
  sub_1E602A6CC(v122, v166);
  sub_1E65D80F8();
  sub_1E65D8138();
  sub_1E65D8098();
  v137 = v172;
  sub_1E65DCE38();
  sub_1E5DFE50C(v183, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v175, &qword_1ED072D90, &qword_1E66040F0);
  (v182[1].isa)(v181, v184);
  v138 = 0;
LABEL_31:
  v139 = sub_1E65DCF98();
  return (*(*(v139 - 8) + 56))(v137, v138, 1, v139);
}

uint64_t sub_1E645CB58@<X0>(uint64_t *a1@<X8>)
{
  v161 = a1;
  v1 = sub_1E65E5528();
  v149 = *(v1 - 8);
  v150 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v148 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65E57D8();
  v146 = *(v3 - 8);
  v147 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v145 = (&v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v160);
  v156 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E3B68();
  v153 = *(v6 - 8);
  v154 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v163 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v139 - v9;
  v10 = sub_1E65DCF98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DCCE8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SearchItemContext(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v144 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v140 = &v139 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v162 = &v139 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v143 = &v139 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v142 = &v139 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v141 = &v139 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v139 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v139 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v139 = &v139 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v151 = &v139 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v139 - v41;
  sub_1E645FBF4(v164, &v139 - v41, type metadata accessor for SearchItemContext);
  v159 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v157 = v11;
  v158 = v13;
  v155 = v14;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v15 + 32))(v17, v42, v14);
    v44 = sub_1E65DCCA8();
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v42, v10);
    v44 = sub_1E65DCE68();
    (*(v11 + 8))(v13, v10);
  }

  v45 = v15;
  v46 = v17;
  v47 = v44;
  v49 = v162;
  v48 = v163;
  if (v47 <= 3)
  {
    if (v47 > 1)
    {
      v80 = v157;
      v81 = v158;
      if (v47 != 2)
      {
        v103 = v141;
        sub_1E645FBF4(v164, v141, type metadata accessor for SearchItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v104 = v155;
          (*(v45 + 32))(v46, v103, v155);
          v105 = sub_1E65DCCB8();
          v107 = v106;
          (*(v45 + 8))(v46, v104);
        }

        else
        {
          (*(v80 + 32))(v81, v103, v10);
          v105 = sub_1E65DCED8();
          v107 = v118;
          (*(v80 + 8))(v81, v10);
        }

        v119 = v161;
        v120 = v156;
        swift_storeEnumTagMultiPayload();
        *v119 = v105;
        v119[1] = v107;
        type metadata accessor for PlaylistType(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RouteResource(0);
        goto LABEL_41;
      }

      sub_1E645FBF4(v164, v33, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = v155;
        (*(v45 + 32))(v46, v33, v155);
        v83 = sub_1E65DCCB8();
        v85 = v84;
        (*(v45 + 8))(v46, v82);
      }

      else
      {
        (*(v80 + 32))(v81, v33, v10);
        v83 = sub_1E65DCED8();
        v85 = v116;
        (*(v80 + 8))(v81, v10);
      }
    }

    else
    {
      v64 = v157;
      v65 = v158;
      if (!v47)
      {
        v66 = v152;
        sub_1E65DD1C8();
        v67 = v151;
        sub_1E645FBF4(v164, v151, type metadata accessor for SearchItemContext);
        v68 = sub_1E65E3B48();
        v69 = sub_1E65E6328();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = v64;
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v73 = v67;
          v74 = v72;
          v165[0] = v72;
          *v71 = 136315138;
          v75 = v139;
          sub_1E645FBF4(v73, v139, type metadata accessor for SearchItemContext);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v76 = v155;
            (*(v45 + 32))(v46, v75, v155);
            v77 = sub_1E65DCCB8();
            v79 = v78;
            (*(v45 + 8))(v46, v76);
          }

          else
          {
            (*(v70 + 32))(v65, v75, v10);
            v131 = sub_1E65DCED8();
            v132 = v65;
            v77 = v131;
            v79 = v133;
            (*(v70 + 8))(v132, v10);
          }

          v115 = v161;
          sub_1E645FB94(v151, type metadata accessor for SearchItemContext);
          v134 = sub_1E5DFD4B0(v77, v79, v165);

          *(v71 + 4) = v134;
          _os_log_impl(&dword_1E5DE9000, v68, v69, "Unsupported reference type editorialCard %s for route resource", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          MEMORY[0x1E694F1C0](v74, -1, -1);
          MEMORY[0x1E694F1C0](v71, -1, -1);

          (*(v153 + 8))(v152, v154);
        }

        else
        {

          sub_1E645FB94(v67, type metadata accessor for SearchItemContext);
          (*(v153 + 8))(v66, v154);
          v115 = v161;
        }

        v130 = type metadata accessor for RouteDestination(0);
        v99 = *(*(v130 - 8) + 56);
        v100 = v115;
        goto LABEL_49;
      }

      sub_1E645FBF4(v164, v36, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v101 = v155;
        (*(v45 + 32))(v46, v36, v155);
        v83 = sub_1E65DCCB8();
        v85 = v102;
        (*(v45 + 8))(v46, v101);
      }

      else
      {
        (*(v64 + 32))(v65, v36, v10);
        v83 = sub_1E65DCED8();
        v85 = v117;
        (*(v64 + 8))(v65, v10);
      }
    }

    goto LABEL_40;
  }

  if (v47 <= 5)
  {
    v86 = v155;
    if (v47 == 4)
    {
      v87 = v142;
      sub_1E645FBF4(v164, v142, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v123 = v157;
        v124 = v158;
        (*(v157 + 32))(v158, v87, v10);
        v83 = sub_1E65DCED8();
        v85 = v125;
        (*(v123 + 8))(v124, v10);
        goto LABEL_40;
      }
    }

    else
    {
      v87 = v143;
      sub_1E645FBF4(v164, v143, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v126 = v157;
        v127 = v158;
        (*(v157 + 32))(v158, v87, v10);
        v83 = sub_1E65DCED8();
        v85 = v128;
        (*(v126 + 8))(v127, v10);
        goto LABEL_40;
      }
    }

    (*(v45 + 32))(v17, v87, v86);
    v83 = sub_1E65DCCB8();
    v85 = v114;
    (*(v45 + 8))(v17, v86);
LABEL_40:
    v119 = v161;
    v120 = v156;
    swift_storeEnumTagMultiPayload();
    *v119 = v83;
    v119[1] = v85;
    type metadata accessor for RouteResource(0);
LABEL_41:
    swift_storeEnumTagMultiPayload();
    v93 = type metadata accessor for RouteDestination(0);
    sub_1E645FBF4(v120, v119 + *(v93 + 20), type metadata accessor for RouteSource);
    *(v119 + *(v93 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E645FB94(v120, type metadata accessor for RouteSource);
    v99 = *(*(v93 - 8) + 56);
    v100 = v119;
    goto LABEL_42;
  }

  if (v47 != 6)
  {
    if (v47 == 7)
    {
      v50 = v17;
      sub_1E65DD1C8();
      sub_1E645FBF4(v164, v49, type metadata accessor for SearchItemContext);
      v51 = sub_1E65E3B48();
      v52 = sub_1E65E6328();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v158;
      if (v53)
      {
        v55 = v10;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v165[0] = v57;
        *v56 = 136315138;
        v58 = v140;
        sub_1E645FBF4(v49, v140, type metadata accessor for SearchItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v59 = v50;
          v60 = v155;
          (*(v45 + 32))(v50, v58, v155);
          v61 = sub_1E65DCCB8();
          v63 = v62;
          (*(v45 + 8))(v59, v60);
        }

        else
        {
          v135 = v157;
          (*(v157 + 32))(v54, v58, v55);
          v61 = sub_1E65DCED8();
          v63 = v136;
          (*(v135 + 8))(v54, v55);
        }

        v121 = v161;
        sub_1E645FB94(v162, type metadata accessor for SearchItemContext);
        v137 = sub_1E5DFD4B0(v61, v63, v165);

        *(v56 + 4) = v137;
        _os_log_impl(&dword_1E5DE9000, v51, v52, "Unsupported reference type upsell header %s for route resource", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x1E694F1C0](v57, -1, -1);
        MEMORY[0x1E694F1C0](v56, -1, -1);

        (*(v153 + 8))(v163, v154);
      }

      else
      {

        sub_1E645FB94(v49, type metadata accessor for SearchItemContext);
        (*(v153 + 8))(v48, v154);
        v121 = v161;
      }

      v130 = type metadata accessor for RouteDestination(0);
      v99 = *(*(v130 - 8) + 56);
      v100 = v121;
LABEL_49:
      v129 = 1;
      return v99(v100, v129, 1, v130);
    }

    v108 = v144;
    sub_1E645FBF4(v164, v144, type metadata accessor for SearchItemContext);
    v109 = swift_getEnumCaseMultiPayload();
    v110 = v157;
    v111 = v158;
    if (v109 == 1)
    {
      v112 = v155;
      (*(v45 + 32))(v46, v108, v155);
      v83 = sub_1E65DCCB8();
      v85 = v113;
      (*(v45 + 8))(v46, v112);
    }

    else
    {
      (*(v157 + 32))(v158, v108, v10);
      v83 = sub_1E65DCED8();
      v85 = v122;
      (*(v110 + 8))(v111, v10);
    }

    goto LABEL_40;
  }

  v88 = v145;
  sub_1E645F41C(v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v89 = v149;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  v165[0] = v90;
  sub_1E645FC5C(&qword_1ED078A30, MEMORY[0x1E69CD868], MEMORY[0x1E69CD880]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  v91 = v148;
  v92 = v150;
  sub_1E65E6738();
  v93 = type metadata accessor for RouteDestination(0);
  v94 = v161;
  swift_storeEnumTagMultiPayload();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v96 = v95[12];
  v97 = v95[16];
  v98 = v95[20];
  (*(v146 + 32))(v94, v88, v147);
  (*(v89 + 32))(v94 + v96, v91, v92);
  *(v94 + v97) = xmmword_1E65EAE00;
  *(v94 + v98) = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  *(v94 + *(v93 + 24)) = MEMORY[0x1E69E7CD0];
  v99 = *(*(v93 - 8) + 56);
  v100 = v94;
LABEL_42:
  v129 = 0;
  v130 = v93;
  return v99(v100, v129, 1, v130);
}

uint64_t sub_1E645DEB8(uint64_t a1)
{
  v1 = sub_1E65D7C58();
  v3 = v2;
  v5 = v4 & 1;
  sub_1E6018A94();
  sub_1E6018AE8();
  v6 = sub_1E65D7FE8();
  sub_1E5F87058(v1, v3, v5);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = sub_1E65D7C58();
    v10 = v9;
    v12 = v11 & 1;
    v7 = sub_1E65D7FE8();
    sub_1E5F87058(v8, v10, v12);
  }

  return v7 & 1;
}

uint64_t sub_1E645DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v165 = a3;
  v166 = a2;
  v157 = a1;
  v153 = sub_1E65D7D18();
  v152 = *(v153 - 8);
  v6 = MEMORY[0x1EEE9AC00](v153);
  v151 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v150 = &v134 - v8;
  v149 = sub_1E65E3B68();
  v135 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v167 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v159 = &v134 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v163 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v158 = &v134 - v15;
  v148 = sub_1E65DAC98();
  v146 = *(v148 - 8);
  v16 = MEMORY[0x1EEE9AC00](v148);
  v142 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v134 - v18;
  v147 = sub_1E65DD1A8();
  MEMORY[0x1EEE9AC00](v147);
  v143 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1E65DA0B8();
  v144 = *(v145 - 8);
  v20 = MEMORY[0x1EEE9AC00](v145);
  v140 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v134 - v22;
  v139 = sub_1E65D9D58();
  v138 = *(v139 - 8);
  v23 = MEMORY[0x1EEE9AC00](v139);
  v137 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v134 - v25;
  v155 = sub_1E65D8BB8();
  v26 = MEMORY[0x1EEE9AC00](v155);
  v28 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v134 - v29;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  v30 = MEMORY[0x1EEE9AC00](v162);
  v160 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v172 = &v134 - v32;
  v154 = sub_1E65DCA68();
  v33 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v171 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v170 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v169 = &v134 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v175 = &v134 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v174 = (&v134 - v42);
  v176 = sub_1E65D72D8();
  v173 = *(v176 - 8);
  v43 = MEMORY[0x1EEE9AC00](v176);
  v168 = &v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v134 - v45;
  v47 = sub_1E65D7C58();
  v49 = v48;
  v180 = v47;
  v181 = v48;
  v51 = v50 & 1;
  v182 = v50 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7FB8();
  sub_1E5F87058(v47, v49, v51);
  v52 = v177;
  v164 = a4;
  if (v177 > 4u)
  {
    v53 = v175;
    v54 = v166;
    if (v177 <= 6u)
    {
      if (v177 == 5)
      {
        v52 = 7;
      }
    }

    else if (v177 == 7)
    {
      v52 = 5;
    }

    else if (v177 != 8)
    {
      v61 = v167;
      sub_1E65DD1C8();
      v62 = v152;
      v63 = *(v152 + 16);
      v64 = v150;
      v65 = v153;
      v63(v150, v4, v153);
      v66 = v151;
      v63(v151, v4, v65);
      v67 = sub_1E65E3B48();
      v68 = sub_1E65E6328();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v179 = v176;
        *v69 = 136315394;
        LODWORD(v175) = v68;
        v70 = sub_1E65D7BF8();
        v174 = v67;
        v71 = v66;
        v73 = v72;
        v74 = *(v62 + 8);
        v74(v64, v65);
        v75 = sub_1E5DFD4B0(v70, v73, &v179);

        *(v69 + 4) = v75;
        *(v69 + 12) = 2080;
        v76 = sub_1E65D7C58();
        v77 = v65;
        v79 = v78;
        v180 = v76;
        v181 = v78;
        v81 = v80 & 1;
        v182 = v80 & 1;
        sub_1E65D7F98();
        v74(v71, v77);
        sub_1E5F87058(v76, v79, v81);
        v82 = sub_1E5DFD4B0(v177, v178, &v179);

        *(v69 + 14) = v82;
        v83 = v174;
        _os_log_impl(&dword_1E5DE9000, v174, v175, "Missing referenceType transformation for CatalogTile %s:%s", v69, 0x16u);
        v84 = v176;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v84, -1, -1);
        v85 = v69;
        a4 = v164;
        MEMORY[0x1E694F1C0](v85, -1, -1);

        (*(v135 + 8))(v167, v149);
      }

      else
      {

        v133 = *(v62 + 8);
        v133(v66, v65);
        v133(v64, v65);
        (*(v135 + 8))(v61, v149);
      }

      v130 = 1;
      goto LABEL_28;
    }
  }

  else
  {
    v53 = v175;
    v54 = v166;
  }

  LODWORD(v153) = v52;
  v55 = sub_1E65D7D08();
  v167 = v46;
  v56 = v165;
  sub_1E63C4134(v54, v165, v55, v46);

  v57 = *(sub_1E65D7C38() + 16);

  if (v57)
  {
    v58 = sub_1E65D7C38();
    v59 = v174;
    sub_1E63C4134(v54, v56, v58, v174);

    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v174;
  }

  v86 = *(v173 + 56);
  v87 = 1;
  v86(v59, v60, 1, v176);
  v88 = *(sub_1E65D7BE8() + 16);

  if (v88)
  {
    v89 = sub_1E65D7BE8();
    sub_1E63C4134(v166, v165, v89, v53);

    v87 = 0;
  }

  v86(v53, v87, 1, v176);
  v90 = sub_1E65D7CE8();
  if (!v91)
  {
    v90 = sub_1E65DADE8();
  }

  v92 = v90;
  v93 = v91;
  v94 = sub_1E65D7BF8();
  v96 = v95;
  v97 = sub_1E65D7CC8();
  if (v98)
  {
    v99 = v97;
  }

  else
  {
    v99 = 0;
  }

  if (v98)
  {
    v100 = v98;
  }

  else
  {
    v100 = 0xE000000000000000;
  }

  v180 = v94;
  v181 = v96;

  MEMORY[0x1E694D7C0](v99, v100);

  MEMORY[0x1E694D7C0](0, 0xE000000000000000);

  v101 = v180;
  v102 = v181;
  (*(v33 + 16))(v171, v157, v154);
  v103 = sub_1E65D7BF8();
  v154 = v104;
  v150 = sub_1E65D7CC8();
  v149 = v105;
  v106 = v156;
  sub_1E65D7C88();
  sub_1E645FBF4(v106, v28, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v165 = v93;
  v166 = v92;
  v152 = v101;
  v151 = v102;
  v157 = v103;
  if (EnumCaseMultiPayload == 1)
  {
    v108 = v144;
    v109 = v161;
    v110 = v145;
    (*(v144 + 32))(v161, v28, v145);
    v111 = v140;
    (*(v108 + 16))(v140, v109, v110);
    v112 = v141;
    sub_1E65DA098();
    v113 = v146;
    v114 = v142;
    v115 = v148;
    (*(v146 + 16))(v142, v112, v148);
    sub_1E602A934(v114, v143);
    (*(v113 + 8))(v112, v115);
    sub_1E65DA0A8();
    sub_1E645FC5C(&qword_1ED075918, MEMORY[0x1E699EF60], MEMORY[0x1E699EF58]);
    v116 = v160;
    sub_1E65DC438();
    v117 = *(v108 + 8);
    v117(v111, v110);
    v117(v161, v110);
  }

  else
  {
    v118 = v138;
    v119 = v136;
    v120 = v139;
    (*(v138 + 32))(v136, v28, v139);
    (*(v118 + 16))(v137, v119, v120);
    v116 = v160;
    sub_1E6134684();
    (*(v118 + 8))(v119, v120);
  }

  v121 = v163;
  v122 = v174;
  sub_1E645FB94(v106, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E645FB24(v116, v172);
  (*(v173 + 16))(v168, v167, v176);
  sub_1E60976FC(v122, v169);
  sub_1E60976FC(v175, v170);
  v163 = sub_1E65D7CB8();
  v123 = sub_1E65D7CF8();
  if (v125 == -1)
  {
    v129 = 4;
  }

  else
  {
    v180 = v123;
    v181 = v124;
    v182 = v125 & 1;
    v126 = v123;
    v127 = v124;
    v128 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E61281C8(v126, v127, v128);
    v129 = 0x402030100uLL >> (8 * v177);
  }

  v162 = v129;
  v161 = sub_1E65D7C08();
  sub_1E65D7CD8();
  sub_1E65D7C78();
  sub_1E602A6CC(v121, v158);
  sub_1E65D7C68();
  sub_1E65D7C98();
  sub_1E65D7C28();
  a4 = v164;
  sub_1E65DCE38();
  sub_1E5DFE50C(v175, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v174, &qword_1ED072D90, &qword_1E66040F0);
  (*(v173 + 8))(v167, v176);
  v130 = 0;
LABEL_28:
  v131 = sub_1E65DCF98();
  return (*(*(v131 - 8) + 56))(a4, v130, 1, v131);
}

uint64_t sub_1E645F180@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v9 = sub_1E65DCA68();
  v33 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2(v10);
  v15 = v14;
  v36 = v13;
  v37 = v14;
  v17 = v16 & 1;
  v38 = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7FB8();
  v18 = sub_1E5F87058(v13, v15, v17);
  if (v35 <= 8u)
  {
    v21 = a3(v18);
    v23 = v22;
    v24 = (a4)();
    v31 = a3;
    v32 = a4;
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v36 = v21;
    v37 = v23;

    MEMORY[0x1E694D7C0](v26, v27);

    MEMORY[0x1E694D7C0](0, 0xE000000000000000);

    v28 = (*(v33 + 16))(v12, a1, v9);
    v31(v28);
    v32();
    v20 = v34;
    sub_1E65DCC88();
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v20 = v34;
  }

  v29 = sub_1E65DCCE8();
  return (*(*(v29 - 8) + 56))(v20, v19, 1, v29);
}

uint64_t sub_1E645F41C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_1E65DCCE8();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v52 - v8;
  v9 = sub_1E65E5608();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = sub_1E65D74E8();
  v62 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v52 - v17;
  v18 = type metadata accessor for SearchItemContext(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - v22;
  v24 = sub_1E65DCF98();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v52 - v29;
  sub_1E645FBF4(v2, v23, type metadata accessor for SearchItemContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E645FB94(v23, type metadata accessor for SearchItemContext);
  }

  else
  {
    (*(v25 + 32))(v30, v23, v24);
    sub_1E65DCE58();
    if ((*(v62 + 48))(v13, 1, v14) != 1)
    {
      v42 = v61;
      v43 = v62;
      (*(v62 + 32))(v61, v13, v14);
      v44 = sub_1E65DCED8();
      v59 = v45;
      v60 = v44;
      (*(v43 + 16))(v52, v42, v14);
      v46 = v53;
      sub_1E65DCEA8();
      sub_1E602AD74(v46, v54);
      v58 = sub_1E65DCF28();
      v53 = v47;
      sub_1E65DCEC8();
      sub_1E65DCE98();
      v48 = v55;
      sub_1E65E55F8();
      (*(v43 + 8))(v61, v14);
      (*(v25 + 8))(v30, v24);
      v49 = v63;
      (*(v56 + 32))(v63, v48, v57);
      v50 = *MEMORY[0x1E69CD908];
      v51 = sub_1E65E57D8();
      return (*(*(v51 - 8) + 104))(v49, v50, v51);
    }

    (*(v25 + 8))(v30, v24);
    sub_1E5DFE50C(v13, &qword_1ED072340, &qword_1E65EA410);
  }

  sub_1E645FBF4(v2, v21, type metadata accessor for SearchItemContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v58;
    v31 = v59;
    v33 = v60;
    (*(v59 + 32))(v58, v21, v60);
    v34 = sub_1E65DCCB8();
    v36 = v35;
    (*(v31 + 8))(v32, v33);
  }

  else
  {
    (*(v25 + 32))(v28, v21, v24);
    v34 = sub_1E65DCED8();
    v36 = v37;
    (*(v25 + 8))(v28, v24);
  }

  v38 = v63;
  *v63 = v34;
  v38[1] = v36;
  v39 = *MEMORY[0x1E69CD900];
  v40 = sub_1E65E57D8();
  return (*(*(v40 - 8) + 104))(v38, v39, v40);
}

uint64_t sub_1E645FB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E645FB94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E645FBF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E645FC5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1E645FCA4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  v7 = sub_1E65E6568();

  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = sub_1E65E6538();

  v10 = sub_1E65E6548();
  _UISolariumEnabled();
  v11 = OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_textLabel;
  v12 = sub_1E65E6558();

  v13 = sub_1E65E6508();
  *&v2[v11] = v13;
  v14 = &v2[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v2[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onDismiss];
  *v15 = 0;
  *(v15 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B970, &unk_1E6603F00);
  sub_1E65D7F18();
  sub_1E5DF599C(v26, &v2[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_privacyPreferenceClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *&v2[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_eventHub] = v26[0];
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = [v17 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v19 = sub_1E65E5C48();

  sub_1E65E5BA8();
  v20 = [v17 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v21 = sub_1E65E5C48();

  v25.receiver = v2;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_initWithTitle_detailText_symbolName_contentLayout_, v19, v21, 0, 2);

  return v22;
}

void sub_1E6460054()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED079E10, &qword_1E6603F20);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v60 = &v55 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v55 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v55 - v12;
  v13 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  v15 = *&v1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_textLabel];
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = ObjCClassFromMetadata;
  v61 = objc_opt_self();
  v17 = [v61 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v18 = sub_1E65E5C48();

  [v15 setText_];

  v19 = [v1 contentView];
  [v19 addSubview_];

  v56 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E65F32F0;
  v21 = [v15 topAnchor];
  v22 = [v1 contentView];
  v23 = [v22 topAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v20 + 32) = v24;
  v25 = [v15 leadingAnchor];
  v26 = [v1 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v20 + 40) = v28;
  v29 = [v15 trailingAnchor];
  v30 = [v1 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  v33 = v57;
  *(v20 + 48) = v32;
  sub_1E6094C88();
  v34 = sub_1E65E5EF8();

  [v56 activateConstraints_];

  v35 = objc_opt_self();
  v36 = [v35 boldButton];
  [v36 addTarget:v1 action:sel_didTapOptOutButton forControlEvents:64];
  v37 = v36;
  sub_1E65E5BA8();
  v38 = [v61 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v39 = sub_1E65E5C48();

  [v37 setTitle:v39 forState:0];

  sub_1E65E6608();
  v40 = v63;
  v41 = sub_1E65E65F8();
  v42 = *(*(v41 - 8) + 48);
  if (v42(v33, 1, v41))
  {
    sub_1E6461660(v33, v40);
    sub_1E65E6618();

    sub_1E5DFE50C(v33, qword_1ED079E10, &qword_1E6603F20);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_1E65E65E8();
    sub_1E65E6618();
  }

  v43 = v58;
  sub_1E65E6608();
  if (v42(v43, 1, v41))
  {
    sub_1E6461660(v43, v63);
    sub_1E65E6618();

    sub_1E5DFE50C(v43, qword_1ED079E10, &qword_1E6603F20);
  }

  else
  {
    v44 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1E65E65D8();
    sub_1E65E6618();
  }

  v45 = [v1 buttonTray];
  [v45 addButton_];

  v46 = [v35 boldButton];
  [v46 addTarget:v1 action:sel_didTapOptInButton forControlEvents:64];
  v47 = v46;
  sub_1E65E5BA8();
  v48 = [v61 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v49 = sub_1E65E5C48();

  [v47 setTitle:v49 forState:0];

  v50 = v59;
  sub_1E65E6608();
  if (v42(v50, 1, v41))
  {
    v51 = v63;
    sub_1E6461660(v50, v63);
    sub_1E65E6618();

    sub_1E5DFE50C(v50, qword_1ED079E10, &qword_1E6603F20);
    v52 = v60;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_1E65E65E8();
    sub_1E65E6618();

    v52 = v60;
    v51 = v63;
  }

  sub_1E65E6608();
  if (v42(v52, 1, v41))
  {
    sub_1E6461660(v52, v51);
    sub_1E65E6618();

    sub_1E5DFE50C(v52, qword_1ED079E10, &qword_1E6603F20);
  }

  else
  {
    v53 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1E65E65D8();
    sub_1E65E6618();
  }

  v54 = [v1 buttonTray];
  [v54 addButton_];

  [v1 setModalInPresentation_];
}

uint64_t sub_1E6460A48(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  v13 = sub_1E65DA988();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DA958();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_privacyPreferenceClient), *(v2 + OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_privacyPreferenceClient + 24));
  sub_1E65DD668();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E6460ED8;
  *(v16 + 24) = 0;
  (*(v4 + 16))(v7, v10, v3);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + v17, v7, v3);
  v19 = (v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_1E646123C;
  v19[1] = v16;
  sub_1E65DACA8();
  v20 = *(v4 + 8);
  v20(v10, v3);
  v21 = sub_1E65DACC8();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_1E5E20B18, v22);

  v20(v12, v3);
  v23 = v28 + OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onDismiss;
  swift_beginAccess();
  v24 = *v23;
  if (*v23)
  {
    v25 = *(v23 + 8);
    swift_endAccess();

    v24(v26);
    sub_1E5E29474(v24, v25);
    return (*(v29 + 8))(v15, v30);
  }

  else
  {
    (*(v29 + 8))(v15, v30);
    return swift_endAccess();
  }
}

void sub_1E6460E30(char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *&a1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  if (v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent + 8];
    v8 = a1;
    sub_1E5F8711C(v5, v7);
    v5(a3 & 1);
    sub_1E5E29474(v5, v7);
  }

  else
  {
    v9 = a1;
  }

  sub_1E6460A48(a4, 1);
}

uint64_t sub_1E6460ED8(void *a1)
{
  v2 = sub_1E65E3B68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE348();
  v6 = a1;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "[PersonalizationPrivacyConsentViewController] Failed updating personalization privacy preference: %{public}@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E6461198(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_1E65DACA8();
}

void sub_1E6461244(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_1E627F0C8(v6, 0);
}

uint64_t sub_1E64612D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v9 = sub_1E65DACC8();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_1E646163C, v10);
}

uint64_t sub_1E64613AC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E64612D8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1E6461468(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_1E65DACC8();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_1E5E20B0C, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

uint64_t *sub_1E64615F4(uint64_t *result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_1E6461660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED079E10, &qword_1E6603F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E64616D0@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v24 - v3;
  v4 = type metadata accessor for CatalogService();
  Description = v4[-1].Description;
  v6 = Description[8];
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v8 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v27 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v9 = v1 + *(type metadata accessor for AppEnvironment(0) + 48);
  v28 = v9;
  swift_getKeyPath();
  v26 = Description[2];
  v26(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, v4);
  v25 = v4;
  v10 = *(Description + 80);
  v11 = swift_allocObject();
  v29 = Description[4];
  v29(v11 + ((v10 + 16) & ~v10), &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA8, &qword_1E65F7738);
  swift_allocObject();

  v13 = sub_1E65E4E68();
  v24 = v13;
  v14 = v31;
  v31[3] = v12;
  v14[4] = &off_1F5FAA810;
  *v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA670;
  v16 = sub_1E65E60A8();
  v17 = v30;
  (*(*(v16 - 8) + 56))(v30, 1, 1, v16);
  v18 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v25;
  v26(v18, v28 + v27, v25);
  v20 = (v10 + 32) & ~v10;
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v29(v22 + v20, v18, v19);
  *(v22 + v21) = v24;

  result = sub_1E6059EAC(0, 0, v17, &unk_1E6603F60, v22);
  *(v15 + 32) = result;
  v14[5] = v15;
  return result;
}

uint64_t sub_1E6461AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A90, &qword_1E65F7720);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-1] - v6;
  sub_1E5E20198(9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA8, &qword_1E65F7738);
  result = swift_dynamicCast();
  if (result)
  {
    v10[0] = a1;
    v10[1] = a2;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1E6461BF0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E6461C18, 0, 0);
}

uint64_t sub_1E6461C18()
{
  v1 = CatalogService.fetchRemoteCatalogEditorialCollectionDetail.getter();
  v0[6] = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E60EBD8C;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v4, v5);
}

uint64_t sub_1E6461D18(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6461BF0(a1, a2, v2 + v7);
}

uint64_t sub_1E6461DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6461F30, 0, 0);
}

uint64_t sub_1E6461F30()
{
  v1 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E646202C;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E646202C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E60EC658;
  }

  else
  {
    v2 = sub_1E646215C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E646215C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6462238;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v5);
}

uint64_t sub_1E6462238()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6462334, 0, 0);
}

uint64_t sub_1E6462334()
{
  if (*(v0 + 120) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6462434, v4, v3);
  }
}

uint64_t sub_1E6462434()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E6462238;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 120, 0, 0, v2);
}

uint64_t sub_1E64624EC(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6461DFC(a1, v6, v7, v1 + v5, v8);
}

void sub_1E6462614(uint64_t a1)
{
  sub_1E64626F4(319);
  if (v1 <= 0x3F)
  {
    swift_getFunctionTypeMetadata1();
    sub_1E65DC2C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E64626F4(uint64_t a1)
{
  if (!qword_1ED079E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079EA0, qword_1E6603F88);
    sub_1E6462764();
    v1 = sub_1E65E3C88();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED079E98);
    }
  }
}

unint64_t sub_1E6462764()
{
  result = qword_1ED079EA8;
  if (!qword_1ED079EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079EA0, qword_1E6603F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079EA8);
  }

  return result;
}

uint64_t sub_1E646280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_1E6462C00;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  type metadata accessor for FocusedLibraryView(0, a5, a6, v15);
  return sub_1E64628B8(a3, a4, a5, a6);
}

uint64_t sub_1E64628B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E65DC2A8();
}

uint64_t (*sub_1E6462958(uint64_t a1))(char a1)
{
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E65DC2C8();
  sub_1E65DC2B8();
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  return sub_1E6462BC8;
}

uint64_t sub_1E64629FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  sub_1E6462958(v7);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079EA0, qword_1E6603F88);
  sub_1E6462764();
  sub_1E65E3C78();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v12 = *(v11 + 32);
  v17 = v16;
  v12(&v17);

  sub_1E5FEE4C8();
  v13 = *(v3 + 8);
  v13(v6, v2);
  sub_1E5FEE4C8();
  return (v13)(v9, v2);
}

uint64_t sub_1E6462BC8(char a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1E6462C54(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1E65DF6C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v11 = v5;
        (*(v4 + 104))(v7, *MEMORY[0x1E699E6E8], v5);
        v12 = sub_1E65DF6B8();
        (*(v4 + 8))(v7, v11);
        if (v12)
        {
          return 0x4D7972617262694CLL;
        }

        else
        {
          return 0x796C746E65636552;
        }
      }
    }

    else if (a2 == 4)
    {
      return 0x63656C6C6F43794DLL;
    }

    return 0xD000000000000012;
  }

  v8 = 0x756F6B726F57794DLL;
  v9 = 0x736B63617453794DLL;
  if (a2 != 2)
  {
    v9 = 0x6172676F7250794DLL;
  }

  if (a2)
  {
    v8 = 0x61746964654D794DLL;
  }

  if (a2 <= 1u)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1E6462E80(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1E65DF6C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v11 = v5;
        (*(v4 + 104))(v7, *MEMORY[0x1E699E6E8], v5);
        v12 = sub_1E65DF6B8();
        (*(v4 + 8))(v7, v11);
        if (v12)
        {
          return 0x4D7972617262694CLL;
        }

        else
        {
          return 0x796C746E65636552;
        }
      }
    }

    else if (a2 == 4)
    {
      return 0x697463656C6C6F43;
    }

    return 0x64616F6C6E776F44;
  }

  v8 = 0x7374756F6B726F57;
  v9 = 0x736B63617453;
  if (a2 != 2)
  {
    v9 = 0x736D6172676F7250;
  }

  if (a2)
  {
    v8 = 0x697461746964654DLL;
  }

  if (a2 <= 1u)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1E646309C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1E65E62C8();
  if (!v19)
  {
    return sub_1E65E5F88();
  }

  v41 = v19;
  v45 = sub_1E65E6998();
  v32 = sub_1E65E69A8();
  sub_1E65E6948();
  result = sub_1E65E6298();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1E65E62E8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1E65E6988();
      result = sub_1E65E62D8();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E64634BC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (**a15)(char *, char *, uint64_t))
{
  v516 = a7;
  v517 = a8;
  v514 = a5;
  v515 = a6;
  v415 = a4;
  v416 = a3;
  v427 = a2;
  v428 = a1;
  v485 = a9;
  v440 = a11;
  v441 = a10;
  v486 = a15;
  v15 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v505 = &v410 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v504 = sub_1E65DFDA8();
  v425 = *(v504 - 8);
  MEMORY[0x1EEE9AC00](v504);
  v503 = &v410 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v18 = MEMORY[0x1EEE9AC00](v489);
  v479 = &v410 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v468 = &v410 - v20;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v21 = MEMORY[0x1EEE9AC00](v488 - 8);
  v477 = &v410 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v476 = &v410 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v467 = &v410 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v466 = &v410 - v27;
  v487 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v28 = MEMORY[0x1EEE9AC00](v487);
  v475 = &v410 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v465 = &v410 - v30;
  v31 = type metadata accessor for ContextMenu.Context(0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v492 = &v410 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v478 = (&v410 - v34);
  v528 = sub_1E65DF978();
  v424 = *(v528 - 1);
  v35 = MEMORY[0x1EEE9AC00](v528);
  v518 = &v410 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v502 = &v410 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v499 = &v410 - v39;
  v40 = sub_1E65DFAA8();
  v41 = *(v40 - 8);
  v522 = v40;
  v523 = v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v512 = &v410 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v527 = &v410 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v481 = (&v410 - v47);
  MEMORY[0x1EEE9AC00](v46);
  v524 = &v410 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v525 = *(v49 - 8);
  v526 = v49;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v521 = &v410 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v501 = &v410 - v52;
  v491 = sub_1E65DFCC8();
  v498 = *(v491 - 1);
  MEMORY[0x1EEE9AC00](v491);
  v490 = (&v410 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v442 = &v410 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v439 = &v410 - v57;
  v58 = sub_1E65D72D8();
  MEMORY[0x1EEE9AC00](v58 - 8);
  v438 = &v410 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = sub_1E65E0128();
  v414 = *(v421 - 8);
  MEMORY[0x1EEE9AC00](v421);
  v420 = &v410 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = sub_1E65DFC88();
  v422 = *(v423 - 8);
  MEMORY[0x1EEE9AC00](v423);
  v419 = &v410 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v412 = &v410 - v63;
  v418 = sub_1E65DFF38();
  v413 = *(v418 - 8);
  MEMORY[0x1EEE9AC00](v418);
  v417 = &v410 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v459 = sub_1E65D8C68();
  v458 = *(v459 - 8);
  MEMORY[0x1EEE9AC00](v459);
  v457 = &v410 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v67 = MEMORY[0x1EEE9AC00](v66 - 8);
  v508 = (&v410 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v67);
  v434 = (&v410 - v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v71 = MEMORY[0x1EEE9AC00](v70 - 8);
  v511 = &v410 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v497 = &v410 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v464 = &v410 - v76;
  MEMORY[0x1EEE9AC00](v75);
  v460 = &v410 - v77;
  v455 = sub_1E65E00B8();
  v454 = *(v455 - 8);
  v78 = MEMORY[0x1EEE9AC00](v455);
  v431 = &v410 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v433 = &v410 - v80;
  v484 = sub_1E65E0438();
  v483 = *(v484 - 8);
  MEMORY[0x1EEE9AC00](v484);
  v493 = &v410 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v494 = (&v410 - v83);
  v513 = type metadata accessor for ViewDescriptor(0);
  MEMORY[0x1EEE9AC00](v513);
  v432 = (&v410 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v450 = sub_1E65E01E8();
  v449 = *(v450 - 8);
  MEMORY[0x1EEE9AC00](v450);
  v448 = &v410 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v87 = MEMORY[0x1EEE9AC00](v86 - 8);
  v430 = &v410 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v91 = &v410 - v90;
  MEMORY[0x1EEE9AC00](v89);
  v447 = &v410 - v92;
  v474 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v93 = MEMORY[0x1EEE9AC00](v474);
  v429 = &v410 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x1EEE9AC00](v93);
  v482 = (&v410 - v96);
  MEMORY[0x1EEE9AC00](v95);
  v445 = &v410 - v97;
  v446 = sub_1E65DFF88();
  v444 = *(v446 - 8);
  MEMORY[0x1EEE9AC00](v446);
  v443 = &v410 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = sub_1E65E01B8();
  v437 = *(v470 - 8);
  v99 = MEMORY[0x1EEE9AC00](v470);
  v426 = &v410 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99);
  v469 = &v410 - v101;
  v102 = sub_1E65DFBB8();
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v410 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = sub_1E65DFE28();
  v461 = *(v462 - 8);
  MEMORY[0x1EEE9AC00](v462);
  v472 = &v410 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v106 = MEMORY[0x1EEE9AC00](v463);
  v510 = &v410 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v106);
  v520 = &v410 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v496 = &v410 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v500 = &v410 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v507 = &v410 - v115;
  MEMORY[0x1EEE9AC00](v114);
  v473 = (&v410 - v116);
  v519 = type metadata accessor for ItemContext(0);
  v117 = MEMORY[0x1EEE9AC00](v519);
  v509 = &v410 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1EEE9AC00](v117);
  v495 = &v410 - v120;
  v121 = MEMORY[0x1EEE9AC00](v119);
  v506 = &v410 - v122;
  MEMORY[0x1EEE9AC00](v121);
  v451 = (&v410 - v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v125 = *(v124 - 8);
  v126 = MEMORY[0x1EEE9AC00](v124);
  v435 = &v410 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126);
  v456 = &v410 - v128;
  v436 = sub_1E65D7848();
  v129 = *(v436 - 8);
  MEMORY[0x1EEE9AC00](v436);
  v131 = &v410 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v132 - 8);
  v134 = &v410 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v453 = sub_1E65E0298();
  v452 = *(v453 - 8);
  MEMORY[0x1EEE9AC00](v453);
  v471 = &v410 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1E65DFFB8();
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v410 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6473E80(v486, v138, MEMORY[0x1E699D618]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v480 = v91;
    if (!EnumCaseMultiPayload)
    {
      v410 = v125;
      v411 = v124;
      (*(v452 + 32))(v471, v138, v453);
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v172 = objc_opt_self();
      v173 = [v172 bundleForClass_];
      v174 = *(v129 + 16);
      v175 = v436;
      v174(v131, a13, v436);
      v524 = sub_1E65E5D48();
      v527 = v176;
      sub_1E65E5BA8();
      v177 = [v172 &selRef:ObjCClassFromMetadata alertControllerWithTitle:? message:? preferredStyle:? + 3];
      v174(v131, a13, v175);
      v178 = sub_1E65E5D48();
      v180 = v179;
      sub_1E65E5BA8();
      v181 = [v172 bundleForClass_];
      v174(v131, a13, v175);
      v182 = sub_1E65E5D48();
      v184 = v183;
      v185 = v451;
      *v451 = 0xD000000000000010;
      v185[1] = 0x80000001E6610B10;
      type metadata accessor for BrowseItemContext(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v186 = sub_1E65E0278();
      if (!v187)
      {
        v188 = v527;

        v186 = v524;
        v187 = v188;
      }

      v189 = v473;
      *v473 = v186;
      v189[1] = v187;
      v190 = sub_1E65E0288();
      if (v191)
      {
        v192 = v190;
        v193 = v191;

        v178 = v192;
        v180 = v193;
      }

      v194 = v473;
      v473[2] = v178;
      v194[3] = v180;
      v195 = sub_1E65E0268();
      if (v196)
      {
        v197 = v195;
        v198 = v196;

        v182 = v197;
        v184 = v198;
      }

      v199 = v473;
      v473[4] = v182;
      v199[5] = v184;
      v200 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B28, &qword_1E6604130) + 80);
      v201 = sub_1E65DFAE8();
      (*(*(v201 - 8) + 16))(v199 + v200, a12, v201);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v202 = type metadata accessor for ContextMenu(0);
      v203 = *(*(v202 - 8) + 56);
      v528 = v202;
      v203(v460, 1, 1);
      v204 = sub_1E65E28F8();
      v206 = v205;
      (*(v458 + 104))(v457, *MEMORY[0x1E69CBAA0], v459);
      v207 = sub_1E65E0278();
      if (v208)
      {
        v209 = v207;
        v210 = v208;

        v211 = v209;
      }

      else
      {
        v210 = v527;
        v211 = v524;
      }

      v334 = type metadata accessor for ItemMetrics(0);
      v335 = v334[7];
      v336 = *MEMORY[0x1E69CC458];
      v337 = sub_1E65D9908();
      v338 = v434;
      (*(*(v337 - 8) + 104))(v434 + v335, v336, v337);
      v339 = v334[8];
      v340 = *MEMORY[0x1E69CBCD8];
      v524 = sub_1E65D8F28();
      v341 = *(v524 - 8);
      v522 = *(v341 + 104);
      v523 = v341 + 104;
      v522(v338 + v339, v340, v524);
      v342 = v334[10];
      v343 = *MEMORY[0x1E69CCA80];
      v344 = sub_1E65D9F88();
      (*(*(v344 - 8) + 104))(v338 + v342, v343, v344);
      *v338 = v204;
      v338[1] = v206;
      (*(v458 + 32))(v338 + v334[5], v457, v459);
      v345 = (v338 + v334[6]);
      *v345 = v211;
      v345[1] = v210;
      (*(*(v334 - 1) + 56))(v338, 0, 1, v334);
      v527 = type metadata accessor for ActionButtonDescriptor(0);
      v512 = type metadata accessor for ArtworkDescriptor(0);
      v521 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v520 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      v518 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      v517 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v516 = sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v515 = sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v514 = sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      v511 = sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      v346 = v456;
      sub_1E65E0488();
      v510 = 0x80000001E66179D0;
      v347 = v482;
      *v482 = 1;
      v347[1] = 0;
      v348 = *MEMORY[0x1E699D840];
      v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
      (*(*(v349 - 8) + 104))(v347, v348, v349);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v350 - 8) + 56))(v480, 1, 1, v350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073010, &qword_1E65ECE68);
      v351 = (*(v525 + 80) + 32) & ~*(v525 + 80);
      v352 = swift_allocObject();
      *(v352 + 16) = xmmword_1E65EA670;
      v353 = v410;
      (*(v410 + 16))(v352 + v351, v346, v411);
      swift_storeEnumTagMultiPayload();
      v354 = type metadata accessor for SectionMetrics(0);
      v355 = v494;
      v522(v494 + *(v354 + 24), *MEMORY[0x1E69CBCB0], v524);
      v356 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      *v355 = 0xD000000000000017;
      v355[1] = 0x80000001E66179D0;
      v355[2] = 0;
      v355[3] = 0xE000000000000000;
      *(v355 + *(v354 + 32)) = v356;
      (*(*(v354 - 8) + 56))(v355, 0, 1, v354);
      (*(v483 + 104))(v493, *MEMORY[0x1E699D7D8], v484);
      type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      sub_1E65E0418();
      (*(v353 + 8))(v456, v411);
      return (*(v452 + 8))(v471, v453);
    }

    if (EnumCaseMultiPayload == 1)
    {
      (*(v461 + 32))(v472, v138, v462);
      sub_1E65DFE18();
      v140 = swift_getEnumCaseMultiPayload();
      v411 = v124;
      v410 = v125;
      if (v140)
      {
        if (v140 == 1)
        {
          v141 = v422;
          v142 = v419;
          v143 = v423;
          (*(v422 + 32))(v419, v104, v423);
          (*(v141 + 16))(v506, v142, v143);
          type metadata accessor for BrowseItemContext(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED0, &qword_1E6604030);
          v145 = (v507 + *(v144 + 64));
          v528 = (v507 + *(v144 + 80));
          sub_1E65DFC58();
          sub_1E65DFC68();
          sub_1E65E5BA8();
          type metadata accessor for LocalizationBundle();
          v146 = swift_getObjCClassFromMetadata();
          v147 = objc_opt_self();
          v148 = [v147 bundleForClass_];
          v149 = *(v129 + 16);
          v150 = v436;
          v149(v131, a13, v436);
          *v145 = sub_1E65E5D48();
          v145[1] = v151;
          sub_1E65E5BA8();
          v152 = [v147 bundleForClass_];
          v149(v131, a13, v150);
          v153 = sub_1E65E5D48();
          v154 = v528;
          *v528 = v153;
          v154[1] = v155;
          v156 = *MEMORY[0x1E699DA78];
          v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED8, &qword_1E6604038);
          (*(*(v157 - 8) + 104))(v507, v156, v157);
          swift_storeEnumTagMultiPayload();
          v158 = type metadata accessor for ContextMenu(0);
          (*(*(v158 - 8) + 56))(v464, 1, 1, v158);
          v159 = type metadata accessor for ItemMetrics(0);
          (*(*(v159 - 8) + 56))(v508, 1, 1, v159);
          v160 = type metadata accessor for ActionButtonDescriptor(0);
          v161 = type metadata accessor for ArtworkDescriptor(0);
          v528 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
          v527 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
          sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
          sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
          sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
          v523 = v159;
          v162 = v435;
          v527 = v161;
          v528 = v160;
          v524 = v158;
          sub_1E65E0488();
          (*(v422 + 8))(v419, v423);
        }

        else
        {
          v368 = v414;
          v369 = v420;
          v370 = v421;
          (*(v414 + 32))(v420, v104, v421);
          (*(v368 + 16))(v506, v369, v370);
          type metadata accessor for BrowseItemContext(0);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v371 = v507;
          sub_1E65E00F8();
          v372 = *MEMORY[0x1E699DA80];
          v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED8, &qword_1E6604038);
          (*(*(v373 - 8) + 104))(v371, v372, v373);
          swift_storeEnumTagMultiPayload();
          v374 = type metadata accessor for ContextMenu(0);
          (*(*(v374 - 8) + 56))(v464, 1, 1, v374);
          v375 = type metadata accessor for ItemMetrics(0);
          (*(*(v375 - 8) + 56))(v508, 1, 1, v375);
          v528 = type metadata accessor for ActionButtonDescriptor(0);
          v527 = type metadata accessor for ArtworkDescriptor(0);
          v524 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
          v523 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
          sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
          sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
          sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
          v523 = v375;
          v162 = v435;
          v524 = v374;
          sub_1E65E0488();
          (*(v368 + 8))(v420, v421);
        }
      }

      else
      {
        v358 = v413;
        v359 = v417;
        v360 = v418;
        (*(v413 + 32))(v417, v104, v418);
        (*(v358 + 16))(v506, v359, v360);
        type metadata accessor for BrowseItemContext(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v361 = v412;
        sub_1E65DFF08();
        v362 = v507;
        v416(v361);
        sub_1E5DFE50C(v361, &qword_1ED0758D8, &qword_1E65F1FE0);
        v363 = *MEMORY[0x1E699DA88];
        v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED8, &qword_1E6604038);
        (*(*(v364 - 8) + 104))(v362, v363, v364);
        swift_storeEnumTagMultiPayload();
        v365 = type metadata accessor for ContextMenu(0);
        (*(*(v365 - 8) + 56))(v464, 1, 1, v365);
        v366 = type metadata accessor for ItemMetrics(0);
        (*(*(v366 - 8) + 56))(v508, 1, 1, v366);
        v528 = type metadata accessor for ActionButtonDescriptor(0);
        v367 = type metadata accessor for ArtworkDescriptor(0);
        v527 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
        v524 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v523 = v366;
        v162 = v435;
        v527 = v367;
        v524 = v365;
        sub_1E65E0488();
        (*(v358 + 8))(v417, v418);
      }

      v376 = sub_1E65DFDF8();
      v521 = v377;
      v522 = v376;
      v378 = v482;
      *v482 = 1;
      v378[1] = 0;
      v379 = *MEMORY[0x1E699D840];
      v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
      (*(*(v380 - 8) + 104))(v378, v379, v380);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v381 - 8) + 56))(v480, 1, 1, v381);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073010, &qword_1E65ECE68);
      v382 = (*(v525 + 80) + 32) & ~*(v525 + 80);
      v383 = swift_allocObject();
      *(v383 + 16) = xmmword_1E65EA670;
      v384 = v410;
      (*(v410 + 16))(v383 + v382, v162, v411);
      swift_storeEnumTagMultiPayload();
      v526 = type metadata accessor for SectionMetrics(0);
      (*(*(v526 - 8) + 56))(v494, 1, 1, v526);
      (*(v483 + 104))(v493, *MEMORY[0x1E699D7D8], v484);
      type metadata accessor for ActionButtonDescriptor(0);
      type metadata accessor for ArtworkDescriptor(0);
      type metadata accessor for ContextMenu(0);
      type metadata accessor for ItemMetrics(0);
      v525 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      v520 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v518 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      v517 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      v516 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      sub_1E65E0418();
      (*(v384 + 8))(v162, v411);
      return (*(v461 + 8))(v472, v462);
    }

    v255 = v469;
    (*(v437 + 32))(v469, v138, v470);
    v256 = sub_1E65E0198();
    v134 = v256;
    v527 = v256;
    if (v257)
    {
      v480 = sub_1E65E0138();
      v479 = v258;
      v259 = sub_1E65E0148();
      v260 = sub_1E634BE4C(v259);
      v441(v260);
      sub_1E65E0178();
      v261 = v439;
      sub_1E65E01A8();
      v125 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v125 - 8) + 56))(v261, 0, 1, v125);
      v428(v255);
      v262 = type metadata accessor for ActionButtonDescriptor(0);
      v263 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v264 = sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      v265 = v430;
      v509 = v262;
      v477 = v125;
      v498 = v263;
      v476 = v264;
      sub_1E65E0458();
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v266 - 8) + 56))(v265, 0, 1, v266);
      v267 = *(v134 + 2);
      if (!v267)
      {

        v521 = MEMORY[0x1E69E7CC0];
LABEL_103:
        v394 = v437;
        v395 = v426;
        (*(v437 + 16))(v426, v469, v470);
        v396 = v494;
        sub_1E6470CD8(v395, v494);
        v397 = type metadata accessor for SectionMetrics(0);
        (*(*(v397 - 8) + 56))(v396, 0, 1, v397);
        (*(v483 + 104))(v493, *MEMORY[0x1E699D7D8], v484);
        v528 = type metadata accessor for ArtworkDescriptor(0);
        v527 = type metadata accessor for ContextMenu(0);
        v526 = type metadata accessor for ItemMetrics(0);
        v525 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF11E0();
        sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        sub_1E65E0418();
        return (*(v394 + 8))(v469, v470);
      }

      v529[0] = MEMORY[0x1E69E7CC0];
      sub_1E601BE24(0, v267, 0);
      v268 = 0;
      v518 = &v134[(*(v523 + 80) + 32) & ~*(v523 + 80)];
      v269 = v529[0];
      v492 = (v424 + 32);
      v512 = (v424 + 16);
      v491 = (v424 + 8);
      v490 = (v425 + 32);
      v486 = (v425 + 16);
      v482 = (v425 + 8);
      v270 = v499;
      v124 = v481;
      v520 = v267;
      while (1)
      {
        if (v268 >= *(v134 + 2))
        {
          goto LABEL_107;
        }

        v271 = v524;
        v272 = MEMORY[0x1E699D4B8];
        sub_1E6473E80(&v518[*(v523 + 72) * v268], v524, MEMORY[0x1E699D4B8]);
        sub_1E6473E80(v271, v124, v272);
        v273 = swift_getEnumCaseMultiPayload();
        v521 = v269;
        if (v273 != 1)
        {
          break;
        }

        v274 = v503;
        v275 = v504;
        (*v490)(v503, v124, v504);
        v276 = *v486;
        v511 = v268;
        v276(v506, v274, v275);
        type metadata accessor for BrowseItemContext(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v277 = sub_1E65DFD58();
        v278 = sub_1E634BE4C(v277);
        v516(v278);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        v268 = v511;
        v125 = v501;
        v270 = v499;
        sub_1E65E04D8();
        (*v482)(v274, v275);
LABEL_58:
        swift_storeEnumTagMultiPayload();
        sub_1E6473FC0(v524, MEMORY[0x1E699D4B8]);
        v269 = v521;
        v529[0] = v521;
        v305 = *(v521 + 2);
        v304 = *(v521 + 3);
        v134 = v527;
        if (v305 >= v304 >> 1)
        {
          sub_1E601BE24((v304 > 1), v305 + 1, 1);
          v269 = v529[0];
        }

        ++v268;
        *(v269 + 2) = v305 + 1;
        sub_1E5FAB460(v125, &v269[((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v305], &qword_1ED0720A8, &qword_1E65EA790);
        if (v520 == v268)
        {

          v521 = v269;
          goto LABEL_103;
        }
      }

      v279 = v528;
      (*v492)(v270, v124, v528);
      v280 = v500;
      v514(v270, 0, 0);
      v281 = *v512;
      (*v512)(v495, v270, v279);
      type metadata accessor for BrowseItemContext(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1E6473EE8(v280, v496);
      if (sub_1E65DF878() != 8)
      {
        v286 = type metadata accessor for ContextMenu(0);
        (*(*(v286 - 8) + 56))(v497, 1, 1, v286);
        v287 = v270;
LABEL_57:
        v301 = v502;
        v302 = v287;
        (v281)(v502, v287, v528);
        v303 = v507;
        sub_1E6473EE8(v500, v507);
        sub_1E646FBE4(v301, v303, v508);
        v511 = type metadata accessor for ArtworkDescriptor(0);
        type metadata accessor for ContextMenu(0);
        v510 = type metadata accessor for ItemMetrics(0);
        sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v125 = v501;
        sub_1E65E0488();
        sub_1E5DFE50C(v500, &qword_1ED072610, &qword_1E65EB930);
        (*v491)(v302, v528);
        v270 = v302;
        v124 = v481;
        goto LABEL_58;
      }

      v282 = sub_1E65DF8C8();
      v283 = v478;
      *v478 = v282;
      v283[1] = v284;
      v285 = sub_1E65DF968();
      v511 = v281;
      if (v285 >= 4)
      {
        v289 = v468;
        v290 = v466;
        v288 = v465;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140);
        sub_1E65DF8C8();
        sub_1E65DF8F8();
        sub_1E65DF8E8();
        v288 = v465;
        v270 = v499;
        sub_1E65DE758();
        sub_1E65D7688();
        v289 = v468;
        v290 = v466;
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v291 = sub_1E65DF888();
      if (v291 > 5)
      {
        if (v291 - 7 >= 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
          *(v289 + 4) = 0;
          *v289 = 0;
          v292 = 1;
          goto LABEL_56;
        }
      }

      else if (v291 >= 5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
        *(v289 + 4) = 0;
        v292 = 1;
        *v289 = 1;
LABEL_56:
        *(v289 + 5) = v292;
        sub_1E65D7688();
        swift_storeEnumTagMultiPayload();
        v293 = sub_1E65DF828();
        v294 = v467;
        *v467 = v293 & 1;
        v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
        v296 = v478;
        v297 = v478 + *(v295 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
        sub_1E65D7688();
        swift_storeEnumTagMultiPayload();
        State = type metadata accessor for WorkoutContextMenuLoadState(0);
        v287 = v270;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
        swift_storeEnumTagMultiPayload();
        sub_1E5FAB460(v288, v297, &qword_1ED0737C8, &unk_1E6605140);
        sub_1E5FAB460(v290, v297 + State[5], &unk_1ED077CC0, &unk_1E65F2610);
        sub_1E5FAB460(v289, v297 + State[6], &unk_1ED077CD0, &unk_1E65F42F0);
        sub_1E5FAB460(v294, v297 + State[7], &unk_1ED077CC0, &unk_1E65F2610);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
        swift_storeEnumTagMultiPayload();
        v299 = v497;
        sub_1E65D76E8();
        v300 = type metadata accessor for ContextMenu(0);
        sub_1E6473F58(v296, &v299[*(v300 + 20)], type metadata accessor for ContextMenu.Context);
        (*(*(v300 - 8) + 56))(v299, 0, 1, v300);
        v281 = v511;
        goto LABEL_57;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
      v292 = 0;
      *v289 = 0;
      *(v289 + 4) = 1;
      goto LABEL_56;
    }

    v326 = *(v256 + 16);
    if (v326)
    {
      v529[0] = MEMORY[0x1E69E7CC0];
      sub_1E601D1D0(0, v326, 0);
      v327 = 0;
      v328 = v529[0];
      v329 = &v134[(*(v498 + 80) + 32) & ~*(v498 + 80)];
      v134 = (v498 + 8);
      do
      {
        if (v327 >= *(v527 + 2))
        {
          goto LABEL_108;
        }

        v330 = v490;
        v331 = v491;
        (*(v498 + 16))(v490, &v329[*(v498 + 72) * v327], v491);
        v332 = sub_1E646DC14(v330, v514, v515, v516, v517);
        (*v134)(v330, v331);
        v529[0] = v328;
        v124 = *(v328 + 16);
        v333 = *(v328 + 24);
        v125 = v124 + 1;
        if (v124 >= v333 >> 1)
        {
          sub_1E601D1D0((v333 > 1), v124 + 1, 1);
          v328 = v529[0];
        }

        ++v327;
        *(v328 + 16) = v125;
        *(v328 + 8 * v124 + 32) = v332;
      }

      while (v326 != v327);

      v255 = v469;
      v124 = *(v328 + 16);
      if (v124)
      {
        goto LABEL_85;
      }
    }

    else
    {

      v328 = MEMORY[0x1E69E7CC0];
      v124 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v124)
      {
LABEL_85:
        v125 = 0;
        v385 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v125 >= *(v328 + 16))
          {
            goto LABEL_109;
          }

          v386 = *(v328 + 32 + 8 * v125);
          v387 = *(v386 + 16);
          v134 = v385[2];
          v388 = &v134[v387];
          if (__OFADD__(v134, v387))
          {
            goto LABEL_110;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v388 <= v385[3] >> 1)
          {
            if (!*(v386 + 16))
            {
              goto LABEL_86;
            }
          }

          else
          {
            if (v134 <= v388)
            {
              v390 = &v134[v387];
            }

            else
            {
              v390 = v134;
            }

            v385 = sub_1E64F7230(isUniquelyReferenced_nonNull_native, v390, 1, v385);
            if (!*(v386 + 16))
            {
LABEL_86:

              if (v387)
              {
                goto LABEL_111;
              }

              goto LABEL_87;
            }
          }

          if ((v385[3] >> 1) - v385[2] < v387)
          {
            goto LABEL_112;
          }

          swift_arrayInitWithCopy();

          if (v387)
          {
            v391 = v385[2];
            v392 = __OFADD__(v391, v387);
            v393 = v391 + v387;
            if (v392)
            {
              goto LABEL_113;
            }

            v385[2] = v393;
          }

LABEL_87:
          ++v125;
        }

        while (v124 != v125);
      }
    }

    v398 = sub_1E65E0138();
    v527 = v399;
    v528 = v398;
    v400 = sub_1E65E0148();
    v401 = sub_1E634BE4C(v400);
    v441(v401);
    sub_1E65E0178();
    v402 = v439;
    sub_1E65E01A8();
    v403 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v403 - 8) + 56))(v402, 0, 1, v403);
    v428(v255);
    v526 = type metadata accessor for ActionButtonDescriptor(0);
    v525 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    v524 = sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
    v404 = v480;
    sub_1E65E0458();
    v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    (*(*(v405 - 8) + 56))(v404, 0, 1, v405);
    v406 = v437;
    v407 = v426;
    (*(v437 + 16))(v426, v255, v470);
    v408 = v494;
    sub_1E6470CD8(v407, v494);
    v409 = type metadata accessor for SectionMetrics(0);
    (*(*(v409 - 8) + 56))(v408, 0, 1, v409);
    (*(v483 + 104))(v493, *MEMORY[0x1E699D7D8], v484);
    v523 = type metadata accessor for ArtworkDescriptor(0);
    v522 = type metadata accessor for ContextMenu(0);
    v521 = type metadata accessor for ItemMetrics(0);
    v520 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    v518 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    sub_1E65E0418();
    return (*(v406 + 8))(v469, v470);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      (*(v449 + 32))(v448, v138, v450);
      v163 = sub_1E65E01D8();
      v164 = v432;
      *v432 = v163;
      *(v164 + 8) = v165;
      swift_storeEnumTagMultiPayload();
      v166 = sub_1E65E01D8();
      v527 = v167;
      v528 = v166;
      sub_1E6473E80(v164, v482, type metadata accessor for ViewDescriptor);
      swift_storeEnumTagMultiPayload();
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v168 - 8) + 56))(v91, 1, 1, v168);
      v169 = type metadata accessor for SectionMetrics(0);
      (*(*(v169 - 8) + 56))(v494, 1, 1, v169);
      (*(v483 + 104))(v493, *MEMORY[0x1E699D7D8], v484);
      v526 = type metadata accessor for ActionButtonDescriptor(0);
      v525 = type metadata accessor for ArtworkDescriptor(0);
      v524 = type metadata accessor for ContextMenu(0);
      v523 = type metadata accessor for ItemMetrics(0);
      v522 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      v521 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v520 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      v518 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      v517 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      sub_1E65E0418();
      sub_1E6473FC0(v164, type metadata accessor for ViewDescriptor);
      return (*(v449 + 8))(v448, v450);
    }

    else
    {
      v526 = a14;
      v306 = v454;
      v307 = v433;
      v308 = v455;
      (*(v454 + 32))(v433, v138);
      v529[0] = 0;
      v529[1] = 0xE000000000000000;
      sub_1E65E68A8();

      strcpy(v529, "newAndFeatured");
      HIBYTE(v529[1]) = -18;
      v309 = sub_1E65E00A8();
      v310 = (v309 & 1) == 0;
      if (v309)
      {
        v311 = 0x7374756F6B726F57;
      }

      else
      {
        v311 = 0x697461746964654DLL;
      }

      v480 = v91;
      if (v310)
      {
        v312 = 0xEB00000000736E6FLL;
      }

      else
      {
        v312 = 0xE800000000000000;
      }

      MEMORY[0x1E694D7C0](v311, v312);

      v527 = v529[1];
      v528 = v529[0];
      v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B20, &qword_1E65F77F0);
      v314 = *(v313 + 64);
      v315 = *(v313 + 112);
      v316 = sub_1E65E00A8();
      v317 = v482;
      *v482 = v316 & 1;
      *(v317 + 1) = sub_1E65E0058();
      v318 = v431;
      (*(v306 + 16))(v431, v307, v308);
      sub_1E647197C(v318, (v317 + v314));
      sub_1E65E0088();
      sub_1E65E0098();
      *(v317 + v315) = v526;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1E65E0088();
      v319 = v439;
      sub_1E65E0098();
      v320 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v320 - 8) + 56))(v319, 0, 1, v320);
      v321 = type metadata accessor for ActionButtonDescriptor(0);
      v322 = *(*(v321 - 8) + 56);
      v526 = v321;
      v322(v442, 1, 1, v321);
      v525 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      v524 = sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
      v323 = v480;
      sub_1E65E0458();
      v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v324 - 8) + 56))(v323, 0, 1, v324);
      (*(v483 + 104))(v493, *MEMORY[0x1E699D7D8], v484);
      v325 = type metadata accessor for SectionMetrics(0);
      (*(*(v325 - 8) + 56))(v494, 1, 1, v325);
      v523 = type metadata accessor for ArtworkDescriptor(0);
      v522 = type metadata accessor for ContextMenu(0);
      v521 = type metadata accessor for ItemMetrics(0);
      v520 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      v518 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      v517 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      sub_1E65E0418();
      return (*(v454 + 8))(v307, v455);
    }
  }

  (*(v444 + 32))(v443, v138, v446);
  v480 = sub_1E65DFF58();
  v478 = v212;
  v213 = sub_1E65DFF68();
  v214 = sub_1E634BE4C(v213);
  v441(v214);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v215 - 8) + 56))(v447, 1, 1, v215);
  v216 = sub_1E65DFF78();
  v217 = *(v216 + 16);
  if (v217)
  {
    v529[0] = MEMORY[0x1E69E7CC0];
    sub_1E601BE24(0, v217, 0);
    v218 = 0;
    v499 = (v216 + ((*(v523 + 80) + 32) & ~*(v523 + 80)));
    v125 = v529[0];
    v491 = (v424 + 32);
    v498 = v424 + 16;
    v490 = (v424 + 8);
    v486 = (v425 + 32);
    v482 = (v425 + 16);
    v481 = (v425 + 8);
    v219 = v518;
    v124 = v519;
    v501 = v216;
    v500 = v217;
    while (1)
    {
      if (v218 >= *(v216 + 16))
      {
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
        (*v134)(v125, v124);

        __break(1u);
        return result;
      }

      v220 = MEMORY[0x1E699D4B8];
      v221 = v527;
      sub_1E6473E80(&v499[*(v523 + 72) * v218], v527, MEMORY[0x1E699D4B8]);
      v222 = v221;
      v223 = v512;
      sub_1E6473E80(v222, v512, v220);
      v224 = swift_getEnumCaseMultiPayload();
      v524 = v125;
      if (v224 != 1)
      {
        break;
      }

      v225 = v503;
      v226 = v504;
      (*v486)(v503, v223, v504);
      (*v482)(v506, v225, v226);
      type metadata accessor for BrowseItemContext(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v227 = sub_1E65DFD58();
      v228 = sub_1E634BE4C(v227);
      v516(v228);
      sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      v219 = v518;
      v229 = v521;
      sub_1E65E04D8();
      (*v481)(v225, v226);
LABEL_35:
      swift_storeEnumTagMultiPayload();
      sub_1E6473FC0(v527, MEMORY[0x1E699D4B8]);
      v125 = v524;
      v529[0] = v524;
      v254 = *(v524 + 16);
      v253 = *(v524 + 24);
      v216 = v501;
      v134 = v500;
      if (v254 >= v253 >> 1)
      {
        sub_1E601BE24((v253 > 1), v254 + 1, 1);
        v125 = v529[0];
      }

      ++v218;
      *(v125 + 16) = v254 + 1;
      sub_1E5FAB460(v229, v125 + ((*(v525 + 80) + 32) & ~*(v525 + 80)) + *(v525 + 72) * v254, &qword_1ED0720A8, &qword_1E65EA790);
      if (v134 == v218)
      {

        v524 = v125;
        goto LABEL_80;
      }
    }

    v230 = v528;
    (*v491)(v219, v223, v528);
    v231 = v520;
    v514(v219, 0, 0);
    v232 = *v498;
    (*v498)(v509, v219, v230);
    type metadata accessor for BrowseItemContext(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1E6473EE8(v231, v510);
    if (sub_1E65DF878() != 8)
    {
      v236 = type metadata accessor for ContextMenu(0);
      (*(*(v236 - 8) + 56))(v511, 1, 1, v236);
LABEL_34:
      v251 = v502;
      v232(v502, v219, v528);
      v252 = v507;
      sub_1E6473EE8(v520, v507);
      sub_1E646FBE4(v251, v252, v508);
      v497 = type metadata accessor for ActionButtonDescriptor(0);
      v496 = type metadata accessor for ArtworkDescriptor(0);
      type metadata accessor for ContextMenu(0);
      v495 = type metadata accessor for ItemMetrics(0);
      sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
      sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
      sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
      sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
      v219 = v518;
      v124 = v519;
      v229 = v521;
      sub_1E65E0488();
      sub_1E5DFE50C(v520, &qword_1ED072610, &qword_1E65EB930);
      (*v490)(v219, v528);
      goto LABEL_35;
    }

    v233 = sub_1E65DF8C8();
    v234 = v492;
    *v492 = v233;
    *(v234 + 1) = v235;
    if (sub_1E65DF968() >= 4u)
    {
      v238 = v479;
      v239 = v476;
      v237 = v475;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140);
      sub_1E65DF8C8();
      sub_1E65DF8F8();
      sub_1E65DF8E8();
      v237 = v475;
      sub_1E65DE758();
      sub_1E65D7688();
      v238 = v479;
      v239 = v476;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v240 = sub_1E65DF888();
    if (v240 > 5)
    {
      if (v240 - 7 >= 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
        *(v238 + 4) = 0;
        *v238 = 0;
        v241 = 1;
        goto LABEL_33;
      }
    }

    else if (v240 >= 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
      *(v238 + 4) = 0;
      v241 = 1;
      *v238 = 1;
LABEL_33:
      *(v238 + 5) = v241;
      sub_1E65D7688();
      swift_storeEnumTagMultiPayload();
      v242 = sub_1E65DF828();
      v243 = v477;
      *v477 = v242 & 1;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
      v245 = v492;
      v246 = &v492[*(v244 + 48)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340);
      sub_1E65D7688();
      swift_storeEnumTagMultiPayload();
      v247 = type metadata accessor for WorkoutContextMenuLoadState(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
      swift_storeEnumTagMultiPayload();
      sub_1E5FAB460(v237, v246, &qword_1ED0737C8, &unk_1E6605140);
      sub_1E5FAB460(v239, v246 + v247[5], &unk_1ED077CC0, &unk_1E65F2610);
      sub_1E5FAB460(v238, v246 + v247[6], &unk_1ED077CD0, &unk_1E65F42F0);
      sub_1E5FAB460(v243, v246 + v247[7], &unk_1ED077CC0, &unk_1E65F2610);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
      swift_storeEnumTagMultiPayload();
      v248 = v511;
      sub_1E65D76E8();
      v249 = type metadata accessor for ContextMenu(0);
      v250 = v245;
      v219 = v518;
      sub_1E6473F58(v250, &v248[*(v249 + 20)], type metadata accessor for ContextMenu.Context);
      (*(*(v249 - 8) + 56))(v248, 0, 1, v249);
      goto LABEL_34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
    v241 = 0;
    *v238 = 0;
    *(v238 + 4) = 1;
    goto LABEL_33;
  }

  v524 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v357 = type metadata accessor for SectionMetrics(0);
  (*(*(v357 - 8) + 56))(v494, 1, 1, v357);
  (*(v483 + 104))(v493, *MEMORY[0x1E699D7D8], v484);
  v528 = type metadata accessor for ActionButtonDescriptor(0);
  v527 = type metadata accessor for ArtworkDescriptor(0);
  v526 = type metadata accessor for ContextMenu(0);
  v525 = type metadata accessor for ItemMetrics(0);
  v523 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v522 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v521 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  sub_1E65E0418();
  return (*(v444 + 8))(v443, v446);
}