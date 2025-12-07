BOOL sub_1DAC904B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  return v2 != 0;
}

uint64_t sub_1DAC9052C(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DAC9004C(v3, *v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC90584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC8FF70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC905B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB6D1D0();
  *a1 = result;
  return result;
}

uint64_t sub_1DAC905E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC90634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC906A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC9071C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DAC90788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC907F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1DAC90868@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC904B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_1DAC908C0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC904B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC908EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAA71418();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAC9091C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC90970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC909C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  v8 = type metadata accessor for YahooBaseResponse.Item(255, a2, a3, a4);
  v9 = sub_1DACB9AF4();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v40 - v11;
  v53 = v8;
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v40 - v12;
  type metadata accessor for YahooBaseResponse.QueryResults.CodingKeys(255, a2, a3, v13);
  swift_getWitnessTable();
  v14 = sub_1DACBA004();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v49 = a3;
  Results = type metadata accessor for YahooBaseResponse.QueryResults(0, a2, a3, v17);
  v45 = *(Results - 8);
  MEMORY[0x1EEE9AC00](Results);
  v20 = &v40 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v56;
  sub_1DACBA2F4();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v20;
  v43 = Results;
  v44 = a2;
  v23 = v52;
  v24 = v53;
  sub_1DACB9724();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DACB9FE4();
  v42 = v16;
  v25 = v58;
  *v56 = v58;
  v41 = a1;
  v27 = v54;
  v26 = v55;
  v58 = v25;
  v55 = v25;
  sub_1DACB71E4();
  swift_getWitnessTable();
  v28 = v50;
  sub_1DACB98A4();
  v29 = v23;
  v30 = (*(v23 + 48))(v28, 1, v24);
  v31 = v51;
  v32 = v49;
  v33 = v44;
  if (v30 == 1)
  {
    (*(v47 + 8))(v28, v48);

    type metadata accessor for YahooBaseResponse.Errors(0, v33, v32, v34);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v27 + 8))(v42, v26);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    (*(v27 + 8))(v42, v26);
    v35 = *(v29 + 32);
    v36 = v46;
    v35(v46, v28, v24);

    v37 = v43;
    v38 = v56;
    v35(v56 + *(v43 + 36), v36, v24);
    v39 = v45;
    (*(v45 + 16))(v31, v38, v37);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return (*(v39 + 8))(v38, v37);
  }
}

uint64_t sub_1DAC90FB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DACBA174();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DAC91030@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v26 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for YahooBaseResponse.Item.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v28 = sub_1DACBA004();
  v24 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v21 - v11;
  v25 = a3;
  v14 = type metadata accessor for YahooBaseResponse.Item(0, a2, a3, v13);
  v22 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v29;
  sub_1DACBA2F4();
  if (!v17)
  {
    v29 = v14;
    v18 = v24;
    v19 = v26;
    sub_1DACB9FE4();
    (*(v18 + 8))(v12, v28);
    (*(v19 + 32))(v16, v27, a2);
    (*(v22 + 32))(v23, v16, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC91304(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DACBA174();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DAC91378@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v8 = type metadata accessor for YahooBaseResponse.Query(0, a2, a3, a4);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v25 - v9;
  type metadata accessor for YahooBaseResponse.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v11 = sub_1DACBA004();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = type metadata accessor for YahooBaseResponse(0, a2, a3, v14);
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v33;
  sub_1DACBA2F4();
  if (!v18)
  {
    v25 = v17;
    v33 = v15;
    v19 = v28;
    v21 = v30;
    v20 = v31;
    swift_getWitnessTable();
    v22 = v29;
    sub_1DACB9FE4();
    (*(v19 + 8))(v13, v22);
    v23 = v25;
    (*(v21 + 32))(v25, v32, v20);
    (*(v26 + 32))(v27, v23, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC9169C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC90FB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DAC916D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC91724(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC917AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC91304(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DAC917E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC91834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC91AA0(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  sub_1DAA82998(0);
  v36 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v32 - v6;
  sub_1DAA49610(0);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v32 - v15;
  v17 = sub_1DACB81A4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v38, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 != *MEMORY[0x1E69D63A8])
  {
    if (v21 == *MEMORY[0x1E69D63B0])
    {
      v31 = 1;
    }

    else if (v21 == *MEMORY[0x1E69D63B8])
    {
      type metadata accessor for CurrencyResponse(0);
      v31 = sub_1DACB7C14();
    }

    else
    {
      (*(v18 + 8))(v20, v17);
      v31 = 0;
    }

    return v31 & 1;
  }

  (*(v18 + 96))(v20, v17);
  sub_1DACB7BF4();
  sub_1DACB7BF4();
  v22 = sub_1DAA49674();
  result = sub_1DACB9244();
  if (result)
  {
    v24 = v11[2];
    v33 = v16;
    v24(v7, v16, v10);
    v25 = v36;
    v26 = &v7[*(v36 + 48)];
    v38 = v14;
    v24(v26, v14, v10);
    sub_1DAC92170(v7, v5, sub_1DAA82998);
    v27 = *(v25 + 48);
    v28 = v34;
    v32[1] = v22;
    v29 = v11[4];
    v29(v34, v5, v10);
    v30 = v11[1];
    v30(&v5[v27], v10);
    sub_1DAA836CC(v7, v5, sub_1DAA82998);
    v29((v28 + *(v35 + 36)), &v5[*(v25 + 48)], v10);
    v30(v5, v10);
    type metadata accessor for CurrencyResponse(0);
    if (sub_1DACB9234())
    {
      v31 = sub_1DACB9244();
    }

    else
    {
      v31 = 0;
    }

    sub_1DAC921D8(v28, sub_1DAA49610);
    v30(v38, v10);
    v30(v33, v10);
    return v31 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAC91F88()
{
  result = qword_1EE11E118;
  if (!qword_1EE11E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E118);
  }

  return result;
}

uint64_t sub_1DAC91FDC(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyResponse(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  result = sub_1DACB71E4();
  for (i = 0; v8; result = sub_1DAC921D8(v5, type metadata accessor for CurrencyResponse))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1DAC92170(*(a1 + 56) + *(v3 + 72) * (v13 | (v12 << 6)), v5, type metadata accessor for CurrencyResponse);
    sub_1DACB8544();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return sub_1DACB71E4();
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC92170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC921D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAC92238(uint64_t a1, uint64_t a2)
{
  sub_1DAC92540(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for CurrencyResponse(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB8524();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DAB87680(v5);
    return sub_1DAB68D7C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DAA836CC(v5, v9, type metadata accessor for CurrencyResponse);
    if (sub_1DAC91AA0(v9, a2))
    {
      sub_1DAC92540(0, &qword_1EE11CED8, sub_1DAB87AA8, MEMORY[0x1E69E6F90]);
      sub_1DAB87AA8(0);
      v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DACC1D20;
      sub_1DAC92170(v9, v13 + v12, type metadata accessor for CurrencyResponse);
      v14 = sub_1DAB68D7C(v13);
      swift_setDeallocating();
      sub_1DAC921D8(v13 + v12, sub_1DAB87AA8);
      swift_deallocClassInstance();
      sub_1DAC921D8(v9, type metadata accessor for CurrencyResponse);
      return v14;
    }

    else
    {
      v15 = sub_1DAB68D7C(MEMORY[0x1E69E7CC0]);
      sub_1DAC921D8(v9, type metadata accessor for CurrencyResponse);
      return v15;
    }
  }
}

void sub_1DAC92540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC925C8(uint64_t a1, void (*a2)(void *))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_32:
    a2(v5);
  }

  sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
  v4 = (a1 + 40);
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DACC1D20;
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    v9 = v5[2];
    swift_bridgeObjectRetain_n();
    if (v9 && (v10 = sub_1DAA4BF3C(v7, v6), (v11 & 1) != 0))
    {
      v12 = *(v5[7] + 8 * v10);
      sub_1DACB71E4();
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v13 = *(v12 + 16);
    v14 = *(v8 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    if (v15 > *(v8 + 24) >> 1)
    {
      if (v14 <= v15)
      {
        v19 = v14 + v13;
      }

      else
      {
        v19 = *(v8 + 16);
      }

      v8 = sub_1DAA9A3B0(1, v19, 1, v8);
      v14 = *(v8 + 16);
      if (*(v12 + 16))
      {
LABEL_12:
        if (((*(v8 + 24) >> 1) - v14) < v13)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v16 = *(v8 + 16);
          v17 = __OFADD__(v16, v13);
          v18 = v16 + v13;
          if (v17)
          {
            goto LABEL_40;
          }

          *(v8 + 16) = v18;
        }

        goto LABEL_21;
      }
    }

    else if (v13)
    {
      goto LABEL_12;
    }

    if (v13)
    {
      goto LABEL_36;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1DAA4BF3C(v7, v6);
    v23 = v5[2];
    v24 = (v22 & 1) == 0;
    v17 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (v17)
    {
      goto LABEL_37;
    }

    v26 = v22;
    if (v5[3] < v25)
    {
      sub_1DAB609F8(v25, isUniquelyReferenced_nonNull_native);
      v21 = sub_1DAA4BF3C(v7, v6);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_41;
      }

LABEL_26:
      if (v26)
      {
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_26;
    }

    v31 = v21;
    sub_1DAB65A84();
    v21 = v31;
    if (v26)
    {
LABEL_3:
      *(v5[7] + 8 * v21) = v8;

      goto LABEL_4;
    }

LABEL_27:
    v5[(v21 >> 6) + 8] |= 1 << v21;
    v28 = (v5[6] + 16 * v21);
    *v28 = v7;
    v28[1] = v6;
    *(v5[7] + 8 * v21) = v8;
    v29 = v5[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v17)
    {
      goto LABEL_39;
    }

    v5[2] = v30;
LABEL_4:
    v4 += 2;
    if (!--v2)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAC928DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_1DACB82E4();
  sub_1DAA4D678(v11 + 16, v21);
  (*(v8 + 16))(v10, a3, v7);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  sub_1DACB71E4();
  v17 = sub_1DAC92AB0(a1, a2, v16, v10);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = sub_1DACB82B4();

  return v18;
}

id sub_1DAC92AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SDSBaseOperationFactory();
  v24[3] = v8;
  v24[4] = &off_1F5690858;
  v24[0] = a3;
  v9 = type metadata accessor for SDSSearchOperation(0);
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v24, v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v23[3] = v8;
  v23[4] = &off_1F5690858;
  v23[0] = v15;
  v16 = &v10[qword_1ECBE95F8];
  *v16 = a1;
  *(v16 + 1) = a2;
  sub_1DAA4D678(v23, &v10[qword_1ECBE9600]);
  v17 = qword_1ECBE9608;
  v18 = sub_1DACB8204();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a4, v18);
  v22.receiver = v10;
  v22.super_class = v9;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v19 + 8))(a4, v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v20;
}

uint64_t sub_1DAC92CC8(uint64_t a1)
{
  v3 = *v1;
  sub_1DACB82E4();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v4 = sub_1DAB39164(a1);
  v5 = sub_1DACB82B4();

  return v5;
}

uint64_t sub_1DAC92D38()
{
  if (!*v0)
  {
    if (qword_1EE123DD8 == -1)
    {
      return sub_1DACB7824();
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_1EE123DD8 == -1)
    {
      return sub_1DACB7824();
    }

    goto LABEL_9;
  }

  if (qword_1EE123DD8 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1DACB7824();
}

unint64_t sub_1DAC92F0C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DAC92F38()
{
  result = qword_1ECBE99D0;
  if (!qword_1ECBE99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE99D0);
  }

  return result;
}

unint64_t sub_1DAC93040()
{
  result = qword_1ECBE99D8;
  if (!qword_1ECBE99D8)
  {
    sub_1DAC93098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE99D8);
  }

  return result;
}

void sub_1DAC93098()
{
  if (!qword_1ECBE99E0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE99E0);
    }
  }
}

unint64_t sub_1DAC930F8()
{
  result = qword_1ECBE99E8;
  if (!qword_1ECBE99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE99E8);
  }

  return result;
}

double sub_1DAC931B4(uint32_t a1, char a2)
{
  v4 = arc4random_uniform(a1);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = arc4random_uniform(a1);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v6 / v8;
  if ((a2 & 1) != 0 && (arc4random_uniform(2u) & 1) == 0)
  {
    return -v9;
  }

  return v9;
}

uint64_t sub_1DAC93224(uint32_t a1)
{
  LODWORD(result) = arc4random_uniform(a1);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1DAC93260()
{
  v0 = sub_1DACB9364();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA58424(0x3200000019);
  sub_1DACB9354();
  v4 = sub_1DACB9334();
  v6 = v5;

  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 != 15)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC93464()
{
  sub_1DAB4D534(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC9356C(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DAA4E4E0(a1, v2 + 16);
  return v2;
}

uint64_t sub_1DAC935F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_1DAC93628()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v3 + 117);
  LODWORD(v4) = v3[944];
  sub_1DAA640AC(v3);
  if (v4)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  return [objc_opt_self() enabledForCurrentLevel_];
}

id sub_1DAC93700()
{
  v1 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v4);
  (*(v5 + 8))(v4, v5);
  v6 = *(v3 + 117);
  LODWORD(v4) = v3[944];
  sub_1DAA640AC(v3);
  if (v4)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
  }

  return [objc_opt_self() enabledForCurrentLevel_];
}

uint64_t sub_1DAC93840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4D678(v3 + 16, v24);
  (*(v11 + 16))(v13, a2, v10);
  (*(v7 + 16))(v9, a3, v6);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v24[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = sub_1DACB71E4();
  v20 = sub_1DAC93AD8(v19, v18, v13, v9);
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_1DACB82E4();
  sub_1DACB8294();
  v21 = sub_1DACB82A4();

  return v21;
}

id sub_1DAC93AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SDSBaseOperationFactory();
  v26[3] = v8;
  v26[4] = &off_1F5690858;
  v26[0] = a2;
  v9 = type metadata accessor for SDSQuoteDetailOperation(0);
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v25[3] = v8;
  v25[4] = &off_1F5690858;
  v25[0] = v15;
  *&v10[qword_1EE121108] = a1;
  sub_1DAA4D678(v25, &v10[qword_1EE121120]);
  v16 = qword_1EE121110;
  v17 = sub_1DACB7CC4();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v10[v16], a3, v17);
  v19 = qword_1EE121118;
  v20 = sub_1DACB8204();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v10[v19], a4, v20);
  v24.receiver = v10;
  v24.super_class = v9;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v21 + 8))(a4, v20);
  (*(v18 + 8))(a3, v17);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v22;
}

unint64_t sub_1DAC93D30@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t *a9@<X8>, unint64_t a10)
{
  v10 = a10;
  v11 = 0x80000001DACEDC10;
  if (a2)
  {
    v12 = result;
  }

  else
  {
    v12 = 0xD00000000000002FLL;
  }

  if (a2)
  {
    v11 = a2;
  }

  v13 = 0x80000001DACEDC40;
  v14 = 0xD00000000000005ELL;
  if (a5)
  {
    v14 = a4;
    v13 = a5;
  }

  v15 = 23899;
  v16 = MEMORY[0x1E69E7CC0];
  if (a7)
  {
    v15 = a6;
  }

  v17 = 0xE200000000000000;
  if (a7)
  {
    v17 = a7;
  }

  if (a10)
  {
    v18 = a8;
  }

  else
  {
    v18 = 0;
  }

  *a9 = v12;
  a9[1] = v11;
  if (!a10)
  {
    v10 = 0xE000000000000000;
  }

  if (a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = v16;
  }

  a9[2] = v19;
  a9[3] = v14;
  a9[4] = v13;
  a9[5] = v15;
  a9[6] = v17;
  a9[7] = v18;
  a9[8] = v10;
  return result;
}

uint64_t sub_1DAC93DD4()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC93EA8(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC93F68(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC94038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC94F58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC94068(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "klistedChannelIds";
  v4 = "webEmbedContentBlockers";
  v5 = 0xD00000000000001FLL;
  if (v2 != 3)
  {
    v5 = 0xD000000000000019;
    v4 = "webEmbedContentBlockerOverrides";
  }

  if (v2 == 2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v3 = v4;
  }

  v6 = 0xD000000000000021;
  if (*v1)
  {
    v7 = "anfEmbedConfigurationAsset";
  }

  else
  {
    v6 = 0xD00000000000001ALL;
    v7 = "icleString";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v5;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

unint64_t sub_1DAC940FC()
{
  v1 = *v0;
  v2 = 0xD00000000000001FLL;
  if (v1 != 3)
  {
    v2 = 0xD000000000000019;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000021;
  if (!*v0)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAC9418C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC94F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC941B4(uint64_t a1)
{
  v2 = sub_1DAC94D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC941F0(uint64_t a1)
{
  v2 = sub_1DAC94D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC9422C@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAC94DCC(0, &qword_1EE123CB8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v52 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC94D78();
  sub_1DACBA2F4();
  if (!v2)
  {
    v67 = MEMORY[0x1E69E7CC0];
    v66 = 0;
    sub_1DACB9F84();
    v61 = a2;
    v10 = v65;
    v60 = v64;
    v11 = MEMORY[0x1E69E7CC0];
    if (!v65)
    {
      swift_beginAccess();
      v11 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1DAA9A3B0((v12 > 1), v13 + 1, 1, v11);
      }

      *(v11 + 2) = v13 + 1;
      v14 = &v11[16 * v13];
      *(v14 + 4) = 0xD00000000000001ALL;
      *(v14 + 5) = 0x80000001DACE2F40;
      v67 = v11;
      swift_endAccess();
    }

    v66 = 1;
    sub_1DAA613E8();
    v16 = v15;
    sub_1DAA962D8(&qword_1EE123E88, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v17 = 0;
    sub_1DACB9F84();
    v59 = v64;
    if (!v64)
    {
      v58 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        v11 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v19 + 1;
      v20 = &v11[16 * v19];
      *(v20 + 4) = 0xD000000000000021;
      *(v20 + 5) = 0x80000001DACE2F60;
      v67 = v11;
      swift_endAccess();
      v17 = v58;
    }

    v66 = 2;
    sub_1DACB9F84();
    if (v17)
    {
      (*(v7 + 8))(v9, v6);
LABEL_31:

      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v56 = v64;
    v57 = v65;
    if (!v65)
    {
      v58 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v22 = *(v11 + 2);
      v21 = *(v11 + 3);
      if (v22 >= v21 >> 1)
      {
        v11 = sub_1DAA9A3B0((v21 > 1), v22 + 1, 1, v11);
      }

      *(v11 + 2) = v22 + 1;
      v23 = &v11[16 * v22];
      *(v23 + 4) = 0xD000000000000017;
      *(v23 + 5) = 0x80000001DACE2F90;
      v67 = v11;
      swift_endAccess();
      v17 = v58;
    }

    v66 = 3;
    sub_1DACB9F84();
    if (v17)
    {
      (*(v7 + 8))(v9, v6);
LABEL_30:

      goto LABEL_31;
    }

    v54 = v64;
    v55 = v65;
    if (!v65)
    {
      v58 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v25 = *(v11 + 2);
      v24 = *(v11 + 3);
      if (v25 >= v24 >> 1)
      {
        v11 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v11);
      }

      *(v11 + 2) = v25 + 1;
      v26 = &v11[16 * v25];
      *(v26 + 4) = 0xD00000000000001FLL;
      *(v26 + 5) = 0x80000001DACE2FB0;
      v67 = v11;
      swift_endAccess();
      v17 = v58;
    }

    LOBYTE(v64) = 4;
    sub_1DACB9F84();
    if (v17)
    {
      (*(v7 + 8))(v9, v6);

      goto LABEL_30;
    }

    v28 = v63;
    if (v63)
    {
      v58 = v62;
      v29 = *(v11 + 2) == 0;
    }

    else
    {
      v58 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1DAA9A3B0(0, *(v11 + 2) + 1, 1, v11);
      }

      v31 = *(v11 + 2);
      v30 = *(v11 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v53 = v31 + 1;
        v51 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v11);
        v32 = v53;
        v11 = v51;
      }

      v29 = 0;
      v58 = 0;
      *(v11 + 2) = v32;
      v33 = &v11[16 * v31];
      *(v33 + 4) = 0xD000000000000019;
      *(v33 + 5) = 0x80000001DACE2FD0;
    }

    v34 = 0xD00000000000002FLL;
    if (v10)
    {
      v34 = v60;
    }

    v60 = v34;
    if (!v10)
    {
      v10 = 0x80000001DACEDC10;
    }

    v35 = MEMORY[0x1E69E7CC0];
    if (v59)
    {
      v35 = v59;
    }

    v59 = v35;
    v36 = 0x80000001DACEDC40;
    v37 = 0xD00000000000005ELL;
    if (v57)
    {
      v37 = v56;
      v36 = v57;
    }

    v56 = v37;
    v57 = v36;
    v38 = 23899;
    if (v55)
    {
      v38 = v54;
    }

    v54 = v38;
    v39 = 0xE200000000000000;
    if (v55)
    {
      v39 = v55;
    }

    v55 = v39;
    v40 = 0xE000000000000000;
    if (v28)
    {
      v40 = v28;
    }

    v53 = v40;
    if (v29)
    {
      sub_1DAA41DCC();
      v41 = sub_1DACB9AD4();
      v42 = sub_1DACB9914();
      sub_1DACB8C64("loaded NewsUI configuration with no need for fallback values", 60, 2, &dword_1DAA3F000, v41, v42, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1DAA41D64(0);
      v43 = swift_allocObject();
      v52 = v10;
      v44 = v43;
      *(v43 + 16) = xmmword_1DACC1D20;
      *(v43 + 56) = v16;
      *(v43 + 64) = sub_1DAAF691C();
      *(v44 + 32) = v11;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v41 = sub_1DACB9AD4();
      v45 = sub_1DACB9914();
      sub_1DACB8C64("loaded NewsUI configuration with fallback values for keys: %@", 61, 2, &dword_1DAA3F000, v41, v45, v44);
      v10 = v52;
    }

    (*(v7 + 8))(v9, v6);

    v46 = v61;
    *v61 = v60;
    v46[1] = v10;
    v48 = v56;
    v47 = v57;
    v46[2] = v59;
    v46[3] = v48;
    v46[4] = v47;
    v49 = v55;
    v46[5] = v54;
    v46[6] = v49;
    v50 = v53;
    v46[7] = v58;
    v46[8] = v50;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC94AD4(void *a1)
{
  sub_1DAC94DCC(0, &qword_1EE123C00, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = v1[2];
  v16[5] = v1[3];
  v17 = v8;
  v9 = v1[4];
  v16[3] = v1[5];
  v16[4] = v9;
  v10 = v1[6];
  v16[0] = v1[7];
  v16[1] = v1[8];
  v16[2] = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1DAC94D78();
  sub_1DACBA304();
  v23 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v18 = v17;
    v22 = 1;
    sub_1DAA613E8();
    sub_1DAA962D8(&qword_1EE123E98, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
    v21 = 2;
    sub_1DACBA094();
    v20 = 3;
    sub_1DACBA094();
    v19 = 4;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v14);
}

unint64_t sub_1DAC94D78()
{
  result = qword_1EE124CC0;
  if (!qword_1EE124CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CC0);
  }

  return result;
}

void sub_1DAC94DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC94D78();
    v7 = a3(a1, &type metadata for NewsUIConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAC94E54()
{
  result = qword_1ECBE9A58;
  if (!qword_1ECBE9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9A58);
  }

  return result;
}

unint64_t sub_1DAC94EAC()
{
  result = qword_1EE124CB0;
  if (!qword_1EE124CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CB0);
  }

  return result;
}

unint64_t sub_1DAC94F04()
{
  result = qword_1EE124CB8;
  if (!qword_1EE124CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CB8);
  }

  return result;
}

unint64_t sub_1DAC94F58(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC95048()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = sub_1DACB9644();
  if (!*(v1 + 16))
  {
    goto LABEL_7;
  }

  if (!*(v1 + 16))
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  sub_1DACB71E4();

  sub_1DACB79D4();
}

uint64_t sub_1DAC950FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1DACB79B4();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A0F8(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7AB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = sub_1DACB92F4();
  v18 = [v16 containerURLForSecurityApplicationGroupIdentifier_];

  if (v18)
  {
    sub_1DACB7A44();

    (*(v10 + 32))(v15, v13, v9);
    strcpy(v27, "Library/Caches");
    v27[15] = -18;
    v20 = v24;
    v19 = v25;
    (*(v24 + 104))(v5, *MEMORY[0x1E6968F58], v25);
    sub_1DAA642D8();
    sub_1DACB7AA4();
    (*(v20 + 8))(v5, v19);
    return (*(v10 + 8))(v15, v9);
  }

  else
  {
    v22 = v26;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DACB8234();
    result = (*(v10 + 48))(v8, 1, v9);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v10 + 32))(v22, v8, v9);
    }
  }

  return result;
}

uint64_t sub_1DAC95478(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for NetworkEvent(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1DAB25BB8(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1DACB8754() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1DAB25BB8((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1DAA7C62C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for NetworkEvent);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC9568C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 80);
      v12 = *(v9 + 112);
      v43 = *(v9 + 96);
      v44 = v12;
      v13 = *(v9 + 16);
      v14 = *(v9 + 48);
      v39 = *(v9 + 32);
      v40 = v14;
      v15 = *(v9 + 48);
      v16 = *(v9 + 80);
      v41 = *(v9 + 64);
      v42 = v16;
      v17 = *(v9 + 16);
      v38[0] = *v9;
      v38[1] = v17;
      v18 = *(v9 + 112);
      v34 = v43;
      v35 = v18;
      v30 = v39;
      v31 = v15;
      v32 = v41;
      v33 = v11;
      v45 = *(v9 + 128);
      v36 = *(v9 + 128);
      v28 = v38[0];
      v29 = v13;
      sub_1DAA806E4(v38, &v19);
      a1(&v37, &v28);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v25 = v34;
      v26 = v35;
      v27 = v36;
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v19 = v28;
      v20 = v29;
      sub_1DAA9B1C8(&v19);
      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        return v46;
      }

      v9 += 136;
    }

    v25 = v34;
    v26 = v35;
    v27 = v36;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v19 = v28;
    v20 = v29;
    sub_1DAA9B1C8(&v19);

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC95838(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v26;
  v25 = a1 + 64;
  result = sub_1DACB9BC4();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_1DACB93A4();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_1DAA5859C((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DAAA2C74(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
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

uint64_t sub_1DAC95A64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v48 = MEMORY[0x1E69E7CC0];
  sub_1DAA57914(0, v1, 0);
  v2 = v48;
  v49 = v3 + 64;
  result = sub_1DACB9BC4();
  if (result < 0 || (v5 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v35 = v3 + 72;
    v36 = v1;
    v6 = *(v3 + 36);
    v7 = 1;
    while (1)
    {
      v8 = v5 >> 6;
      if ((*(v49 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      v37 = v6;
      v9 = *(v3 + 56) + 136 * v5;
      v39 = *v9;
      v10 = *(v9 + 64);
      v12 = *(v9 + 16);
      v11 = *(v9 + 32);
      v42 = *(v9 + 48);
      v43 = v10;
      v40 = v12;
      v41 = v11;
      v14 = *(v9 + 96);
      v13 = *(v9 + 112);
      v15 = *(v9 + 80);
      v47 = *(v9 + 128);
      v45 = v14;
      v46 = v13;
      v44 = v15;
      result = sub_1DAA806E4(&v39, v38);
      v48 = v2;
      v16 = v3;
      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1DAA57914((v17 > 1), v18 + 1, 1);
        v2 = v48;
      }

      *(v2 + 16) = v18 + 1;
      v19 = v2 + 136 * v18;
      *(v19 + 32) = v39;
      v20 = v40;
      v21 = v41;
      v22 = v43;
      *(v19 + 80) = v42;
      *(v19 + 96) = v22;
      *(v19 + 48) = v20;
      *(v19 + 64) = v21;
      v23 = v44;
      v24 = v45;
      v25 = v46;
      *(v19 + 160) = v47;
      *(v19 + 128) = v24;
      *(v19 + 144) = v25;
      *(v19 + 112) = v23;
      v26 = 1 << *(v16 + 32);
      if (v5 >= v26)
      {
        goto LABEL_25;
      }

      v27 = *(v49 + 8 * v8);
      if ((v27 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v3 = v16;
      if (v37 != *(v16 + 36))
      {
        goto LABEL_27;
      }

      v28 = v27 & (-2 << (v5 & 0x3F));
      if (v28)
      {
        v5 = __clz(__rbit64(v28)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v29 = v36;
      }

      else
      {
        v30 = v8 << 6;
        v31 = v8 + 1;
        v29 = v36;
        v32 = (v35 + 8 * v8);
        while (v31 < (v26 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_1DAAA2C74(v5, v37, 0);
            v5 = __clz(__rbit64(v33)) + v30;
            goto LABEL_18;
          }
        }

        result = sub_1DAAA2C74(v5, v37, 0);
        v5 = v26;
      }

LABEL_18:
      if (v7 == v29)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = *(v3 + 36);
        ++v7;
        if (v5 < 1 << *(v3 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DAC95D1C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC95D40, 0, 0);
}

uint64_t sub_1DAC95D40()
{
  v0[6] = (*(v0[4] + 136))(v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC95DFC;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAC95DFC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1DABEF238;
  }

  else
  {

    v2 = sub_1DACA844C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC95F3C()
{
  v0 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1DACB92E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  sub_1DACB9284();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE13E470;
  sub_1DACB7DF4();
  v9 = sub_1DACB9384();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_1DAC96120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA66E0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DAC961CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA66F4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_1DAB1BC70();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DAC962D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA6708(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DAC96360@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DACA671C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 136 * a1;
    v9 = *(v8 + 144);
    v10 = v7 - 1;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(v8 + 160);
    v11 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v11;
    v12 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v12;
    v13 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v13;
    result = memmove((v8 + 32), (v8 + 168), 136 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DAC96418(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))(&v11);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v4 = (*(a2 + 112))(&v6, a1, a2);

  return v4;
}

uint64_t sub_1DAC964CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 136))(a3, a4);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DACB71E4();
  v7 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v8 = sub_1DACB8A64();

  return v8;
}

uint64_t sub_1DAC965C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 136))(a3, a4);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DACB71E4();
  v7 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v8 = sub_1DACB8A64();

  return v8;
}

uint64_t sub_1DAC966D0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  sub_1DACB8F34();
}

uint64_t sub_1DAC96724(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  v13 = *a2;
  v14[0] = v4;
  *(v14 + 10) = *(a2 + 26);
  v11[2] = a3;
  v11[3] = a4;
  sub_1DAC9568C(sub_1DAC98934, v11, a1);
  v5 = sub_1DACB89D4();
  sub_1DACB8934();

  v6 = swift_allocObject();
  v7 = v14[0];
  v6[1] = v13;
  v6[2] = v7;
  *(v6 + 42) = *(v14 + 10);
  sub_1DAA8DB84(&v13, v12);
  v8 = sub_1DACB89D4();
  v9 = sub_1DACB8A64();

  return v9;
}

uint64_t sub_1DAC96874(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC96898, 0, 0);
}

uint64_t sub_1DAC96898()
{
  v0[5] = (*(v0[3] + 48))(v0[2]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC9694C;

  return MEMORY[0x1EEE44EE0](v1);
}

uint64_t sub_1DAC9694C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1DAC96A68;
  }

  else
  {

    v2 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC96A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC96ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAC96AF4, 0, 0);
}

uint64_t sub_1DAC96AF4()
{
  v0[8] = (*(v0[6] + 72))(v0[3], v0[4], v0[5]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DAC96BB4;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1DAC96BB4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC96CF0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAC96CF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC96D54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  v5 = *a1;
  *(v4 + 80) = v3;
  *(v4 + 88) = v5;
  *(v4 + 96) = *(a1 + 1);
  v6 = a1[4];
  *(v4 + 112) = a1[3];
  *(v4 + 120) = v6;
  *(v4 + 58) = *(a1 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC96D94, 0, 0);
}

uint64_t sub_1DAC96D94()
{
  v13 = v0;
  v1 = *(v0 + 58);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = v3;
  v11 = v2;
  v12 = v1;
  *(v0 + 128) = (*(v5 + 80))(&v8, v4);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1DAC96E70;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC96E70()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DAC96FB4;
  }

  else
  {

    v2 = sub_1DACA8448;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC96FB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC97018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 56) = *(a2 + 8);
  v7 = *(a3 + 16);
  *(v6 + 88) = *a3;
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  v8 = *(a2 + 32);
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 80) = v8;
  *(v6 + 154) = *(a2 + 40);
  *(v6 + 104) = v7;
  *(v6 + 120) = *(a3 + 32);
  *(v6 + 152) = *(a3 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97078, 0, 0);
}

uint64_t sub_1DAC97078()
{
  v20 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 154);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v14 = v5;
  v15 = v4;
  v16 = v3;
  v8 = *(v0 + 104);
  v17[0] = *(v0 + 88);
  v17[1] = v8;
  v18 = v2;
  v19 = v1;
  *(v0 + 128) = (*(v7 + 152))(&v12, v17, v6);
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_1DAC97174;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v10);
}

uint64_t sub_1DAC97174()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC96FB4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAC972B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 160) = a4;
  *(v6 + 168) = a5;
  v7 = *(a2 + 112);
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a2 + 128);
  *(v6 + 152) = a1;
  v8 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v8;
  v9 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v9;
  v10 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v10;
  v11 = *a3;
  *(v6 + 176) = v5;
  *(v6 + 184) = v11;
  *(v6 + 192) = *(a3 + 1);
  v12 = a3[4];
  *(v6 + 208) = a3[3];
  *(v6 + 216) = v12;
  *(v6 + 248) = *(a3 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97318, 0, 0);
}

uint64_t sub_1DAC97318()
{
  v14 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = v3;
  v12 = v2;
  v13 = v1;
  *(v0 + 224) = (*(v5 + 160))(v0 + 16, &v9, v4);
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_1DAC973F8;
  v7 = *(v0 + 152);

  return MEMORY[0x1EEE44EE0](v7);
}

uint64_t sub_1DAC973F8()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC97534, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAC97534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC97598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 96) = *a2;
  *(v5 + 104) = *(a2 + 8);
  v6 = *(a2 + 32);
  *(v5 + 120) = *(a2 + 24);
  *(v5 + 128) = v6;
  *(v5 + 58) = *(a2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC975DC, 0, 0);
}

uint64_t sub_1DAC975DC()
{
  v14 = v0;
  v1 = *(v0 + 58);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = v3;
  v12 = v2;
  v13 = v1;
  *(v0 + 136) = sub_1DAC96724(v6, &v9, v4, v5);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1DAC976AC;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC976AC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1DAC977F0;
  }

  else
  {

    v2 = sub_1DAC614E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC977F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC97854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = *a3;
  *(v6 + 64) = v5;
  *(v6 + 72) = v7;
  *(v6 + 80) = *(a3 + 1);
  v8 = a3[4];
  *(v6 + 96) = a3[3];
  *(v6 + 104) = v8;
  *(v6 + 136) = *(a3 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97898, 0, 0);
}

uint64_t sub_1DAC97898()
{
  v15 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = v3;
  v13 = v2;
  v14 = v1;
  *(v0 + 112) = (*(v5 + 168))(v6, v7, &v10, v4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1DAC97978;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC97978()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1DAC97AB0;
  }

  else
  {

    v2 = sub_1DAC97A94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC97AB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC97B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  *(v7 + 64) = *a2;
  *(v7 + 72) = *(a2 + 8);
  v8 = *(a2 + 32);
  *(v7 + 88) = *(a2 + 24);
  *(v7 + 96) = v8;
  *(v7 + 128) = *(a2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC97B5C, 0, 0);
}

uint64_t sub_1DAC97B5C()
{
  v16 = v0;
  v1 = *(v0 + 128);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = v3;
  v14 = v2;
  v15 = v1;
  *(v0 + 104) = (*(v5 + 88))(&v11, v6, v7, v4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_1DAC97C3C;
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v9);
}

uint64_t sub_1DAC97C3C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAC97D78, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAC97D78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC97DDC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  *(v6 + 56) = *(a2 + 8);
  v7 = *(a2 + 32);
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 80) = v7;
  *(v6 + 112) = *(a2 + 40);
  *(v6 + 114) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DAC97E28, 0, 0);
}

uint64_t sub_1DAC97E28()
{
  v16 = v0;
  v1 = *(v0 + 114);
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v15 = v1;
  *(v0 + 88) = (*(v6 + 96))(&v10, &v15, v5);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1DAC97F10;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1DAC97F10()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DACA842C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAC9804C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  *(v6 + 56) = *(a2 + 8);
  v7 = *(a2 + 32);
  *(v6 + 72) = *(a2 + 24);
  *(v6 + 80) = v7;
  *(v6 + 112) = *(a2 + 40);
  *(v6 + 114) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DAC98098, 0, 0);
}

uint64_t sub_1DAC98098()
{
  v16 = v0;
  v1 = *(v0 + 114);
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = v4;
  v13 = v3;
  v14 = v2;
  v15 = v1;
  *(v0 + 88) = (*(v6 + 104))(&v10, &v15, v5);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1DAC70CD4;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1DAC98180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = *a5;
  *(v8 + 80) = v7;
  *(v8 + 88) = v9;
  *(v8 + 96) = *(a5 + 1);
  v10 = a5[4];
  *(v8 + 112) = a5[3];
  *(v8 + 120) = v10;
  *(v8 + 152) = *(a5 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC981C8, 0, 0);
}

uint64_t sub_1DAC981C8()
{
  v17 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = v3;
  v15 = v2;
  v16 = v1;
  *(v0 + 128) = (*(v5 + 192))(v8, v9, v6, v7, &v12, v4);
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_1DAC982AC;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC982AC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DAC96FB4;
  }

  else
  {

    v2 = sub_1DACA83E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC983C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 56) = *a2;
  *(v5 + 64) = *(a2 + 8);
  v6 = *(a2 + 32);
  *(v5 + 80) = *(a2 + 24);
  *(v5 + 88) = v6;
  *(v5 + 120) = *(a2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1DAC9840C, 0, 0);
}

uint64_t sub_1DAC9840C()
{
  v14 = v0;
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = v3;
  v12 = v2;
  v13 = v1;
  *(v0 + 96) = (*(v5 + 184))(v6, &v9, v4);
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_1DAC984EC;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC984EC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1DAC98608;
  }

  else
  {

    v2 = sub_1DACA844C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAC98608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAC9866C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = *a1 + 48 * v3;
    v6 = *(v4 - 16);
    v5 = *(v4 - 8);
    v8 = *v4;
    v7 = *(v4 + 8);
    v9 = *(v4 + 16);
    LOWORD(v4) = *(v4 + 24);
    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = v8;
    *(a3 + 24) = v7;
    *(a3 + 32) = v9;
    *(a3 + 40) = v4;
    sub_1DACB71E4();
    sub_1DACB71E4();
    return sub_1DACB71E4();
  }

  else
  {
    v11 = a2[1];
    *a3 = *a2;
    *(a3 + 16) = v11;
    *(a3 + 26) = *(a2 + 26);
    return sub_1DAA8DB84(a2, &v12);
  }
}

uint64_t sub_1DAC98700(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  v5 = *a1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v5;
  *(v4 + 56) = *(a1 + 1);
  v6 = a1[4];
  *(v4 + 72) = a1[3];
  *(v4 + 80) = v6;
  *(v4 + 112) = *(a1 + 20);
  return MEMORY[0x1EEE6DFA0](sub_1DAC98740, 0, 0);
}

uint64_t sub_1DAC98740()
{
  v13 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = v3;
  v11 = v2;
  v12 = v1;
  *(v0 + 88) = (*(v5 + 112))(&v8, v4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_1DAB87F78;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1DAC9881C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = (*result + 73);
  v5 = *(*result + 16) + 1;
  while (1)
  {
    if (!--v5)
    {
      *(a4 + 26) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    v6 = *(v4 - 41);
    v7 = *(v4 - 33);
    v8 = *(v4 - 25);
    v9 = *(v4 - 17);
    v10 = *(v4 - 9);
    v11 = *(v4 - 1);
    v12 = *v4;
    if (v9 == a2 && v10 == a3)
    {
      break;
    }

    v4 += 48;
    result = sub_1DACBA174();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v9 = a2;
LABEL_11:
  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11 | (v12 << 8);
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB71E4();
}

uint64_t sub_1DAC98934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[5];
  v7 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v7;
  v16 = *(a1 + 128);
  v8 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v8;
  v9 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v9;
  v10 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v10;
  v11 = v6[1];
  v13 = *v6;
  v14[0] = v11;
  *(v14 + 10) = *(v6 + 26);
  result = (*(v5 + 160))(v15, &v13, v4);
  *a2 = result;
  return result;
}

uint64_t WatchlistError.errorDescription.getter()
{
  v1 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1DACB92E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  v9 = *v0;
  v10 = (v3 + 16);
  if (!v9)
  {
    sub_1DACB9284();
    (*v10)(v6, v8, v2);
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v9 == 1)
  {
    sub_1DACB9284();
    (*v10)(v6, v8, v2);
    if (qword_1EE123DD8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_1DACB9284();
  (*v10)(v6, v8, v2);
  if (qword_1EE123DD8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v11 = qword_1EE13E470;
  sub_1DACB7DF4();
  v12 = sub_1DACB9384();
  (*(v3 + 8))(v8, v2);
  return v12;
}

uint64_t WatchlistError.localizedStringResource.getter()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t WatchlistError.hashValue.getter()
{
  v1 = *v0;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v1);
  return sub_1DACBA2C4();
}

unint64_t sub_1DAC9907C()
{
  result = qword_1ECBE9A60;
  if (!qword_1ECBE9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9A60);
  }

  return result;
}

unint64_t sub_1DAC990D4()
{
  result = qword_1ECBE9A68;
  if (!qword_1ECBE9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9A68);
  }

  return result;
}

uint64_t sub_1DAC99304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = sub_1DACB92E4();
  v5 = *(v31 - 8);
  v6 = MEMORY[0x1EEE9AC00](v31);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  v30[1] = @"watchlist";
  v11 = sub_1DACB9324();
  v13 = *(a1 + 8);
  if (*(v13 + 16))
  {
    v14 = sub_1DAA4BF3C(v11, v12);
    v16 = v15;

    if (v16)
    {
      v17 = *(v13 + 56) + 48 * v14;
      v19 = *v17;
      v18 = *(v17 + 8);
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      v22 = *(v17 + 32);
      LOWORD(v17) = *(v17 + 40);
      *a2 = v19;
      *(a2 + 8) = v18;
      *(a2 + 16) = v21;
      *(a2 + 24) = v20;
      *(a2 + 32) = v22;
      *(a2 + 40) = v17;
      sub_1DACB71E4();
      sub_1DACB71E4();
      return sub_1DACB71E4();
    }
  }

  else
  {
  }

  sub_1DACB9284();
  v24 = v31;
  (*(v5 + 16))(v8, v10, v31);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v25 = qword_1EE13E470;
  sub_1DACB7DF4();
  v26 = sub_1DACB9384();
  v28 = v27;
  (*(v5 + 8))(v10, v24);
  result = sub_1DACB9324();
  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = result;
  *(a2 + 32) = v29;
  *(a2 + 40) = 160;
  return result;
}

void sub_1DAC995B0(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(v1 + 38);
  v3 = *&v1[40]._os_unfair_lock_opaque;
  v10 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_1DACB9E14();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v9 = v1;
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12777A0](v5, v3);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v1 = v9;
            v8 = v10;
            goto LABEL_19;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          sub_1DACB71F4();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
        {
        }

        else
        {
          sub_1DACB9D34();
          sub_1DACB9D74();
          sub_1DACB9D84();
          v1 = &v10;
          sub_1DACB9D44();
        }

        ++v5;
        if (v6 == v4)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *&v1[40]._os_unfair_lock_opaque = v8;

  os_unfair_lock_unlock(v1 + 38);
}

uint64_t sub_1DAC99730(uint64_t a1, void *a2)
{
  v2 = a2[12];
  v3 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v2);
  return (*(v3 + 120))(v2, v3);
}

void sub_1DAC9978C(uint64_t *a1@<X0>, os_unfair_lock_s *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  os_unfair_lock_lock(a2 + 12);
  sub_1DAC997FC(&a2[14], v6, a3);
  os_unfair_lock_unlock(a2 + 12);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1DAC997FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result;
  v25 = *(*result + 16);
  if (!v25)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_23:
    *a3 = v5;
    return result;
  }

  v4 = 0;
  v21 = (a2 + 73);
  v22 = v3 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v23 = *result;
  v24 = a2;
  while (2)
  {
    v26 = v5;
LABEL_4:
    if (v4 < *(v3 + 16))
    {
      v6 = v21;
      v7 = (v22 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v27 = v4 + 1;
      v10 = *(a2 + 16) + 1;
      while (1)
      {
        if (!--v10)
        {
          a2 = v24;
          v5 = v26;
          v4 = v27;
          v3 = v23;
          if (v27 != v25)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        v29 = *(v6 - 41);
        v11 = *(v6 - 33);
        v12 = *(v6 - 25);
        v13 = *(v6 - 17);
        v14 = *(v6 - 9);
        v15 = *(v6 - 1);
        v28 = *v6;
        if (v13 == v9 && v14 == v8)
        {
          break;
        }

        v6 += 48;
        result = sub_1DACBA174();
        if (result)
        {
          goto LABEL_16;
        }
      }

      v13 = v9;
LABEL_16:
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v5 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DAA929C8(0, *(v26 + 16) + 1, 1, v26);
        v5 = result;
      }

      v3 = v23;
      a2 = v24;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1DAA929C8((v17 > 1), v18 + 1, 1, v5);
        a2 = v24;
        v5 = result;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 48 * v18;
      *(v19 + 32) = v29;
      *(v19 + 40) = v11;
      *(v19 + 48) = v12;
      *(v19 + 56) = v13;
      *(v19 + 64) = v14;
      *(v19 + 72) = v15;
      *(v19 + 73) = v28;
      v4 = v27;
      if (v27 != v25)
      {
        continue;
      }

      goto LABEL_23;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC999E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a2 + 48));
  if (*(*(a2 + 64) + 16))
  {
    sub_1DAA4BF3C(a3, a4);
    if (v7)
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
    }
  }

  os_unfair_lock_unlock((a2 + 48));
  sub_1DAA763B0(0, &qword_1EE11FE88, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC99B10(uint64_t a1, uint64_t a2)
{
  sub_1DACB8BB4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71E4();
  v5 = sub_1DACB89D4();
  sub_1DACB8A74();

  v6 = sub_1DACB89D4();
  sub_1DACB8A74();

  v7 = sub_1DACB89D4();
  sub_1DACB8A74();

  v8 = sub_1DACB89D4();
  v9 = sub_1DACB8A74();

  return v9;
}

uint64_t sub_1DAC99CE0(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DACB7664();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a3;
  v26 = a4;
  sub_1DACB75B4();
  sub_1DAA642D8();
  v11 = sub_1DACB9B34();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    sub_1DAC990D4();
    swift_allocError();
    *v23 = 1;
    goto LABEL_7;
  }

  os_unfair_lock_lock(a2 + 12);
  v15 = sub_1DACB71E4();
  v16 = sub_1DAC95838(v15);

  os_unfair_lock_unlock(a2 + 12);
  v17 = sub_1DACB93A4();
  v19 = v18;

  v25 = v17;
  v26 = v19;
  MEMORY[0x1EEE9AC00](v20);
  *(&v25 - 2) = &v25;
  v21 = sub_1DAC78448(sub_1DAC49E88, (&v25 - 4), v16);

  if (v21)
  {
    sub_1DAC990D4();
    swift_allocError();
    *v22 = 0;
LABEL_7:
    sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  v25 = a3;
  v26 = a4;
  sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC99FC0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  return (*(v5 + 80))(v2, v3, v4, v5);
}

uint64_t sub_1DAC9A034(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 20);
  v7 = a2[12];
  v8 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v7);
  v10 = v3;
  v11 = *(a1 + 1);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  return (*(v8 + 184))(&v10, v7, v8);
}

uint64_t sub_1DAC9A0D4(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v16 = *a1;
  *v17 = v3;
  *&v17[10] = *(a1 + 26);
  os_unfair_lock_lock((a2 + 48));
  v5 = *&v17[8];
  v4 = *&v17[16];
  v6 = *(a2 + 56);
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 56) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DAA9A3B0(0, *(v6 + 2) + 1, 1, v6);
    *(a2 + 56) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DAA9A3B0((v8 > 1), v9 + 1, 1, v6);
    *(a2 + 56) = v6;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  sub_1DAA8DB84(&v16, &v14);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *&v14 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v16, v5, v4, v11);

  *(a2 + 64) = v14;
  os_unfair_lock_unlock((a2 + 48));
  v14 = v16;
  v15[0] = *v17;
  *(v15 + 10) = *&v17[10];
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA8DB84(&v16, &v13);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC9A270(__int128 *a1)
{
  v2 = a1[1];
  v11 = *a1;
  v12[0] = v2;
  *(v12 + 10) = *(a1 + 26);
  sub_1DACB8BB4();
  v3 = swift_allocObject();
  v4 = a1[1];
  v3[1] = *a1;
  v3[2] = v4;
  *(v3 + 42) = *(a1 + 26);
  sub_1DAA8DB84(&v11, &v10);
  v5 = sub_1DACB89D4();
  sub_1DACB8A74();

  v6 = sub_1DACB89D4();
  sub_1DACB8A74();

  v7 = sub_1DACB89D4();
  v8 = sub_1DACB8A74();

  return v8;
}

uint64_t sub_1DAC9A428(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 20);
  v7 = a2[12];
  v8 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v7);
  v10 = v3;
  v11 = *(a1 + 1);
  v12 = v4;
  v13 = v5;
  v14 = v6;
  return (*(v8 + 192))(&v10, v7, v8);
}

uint64_t sub_1DAC9A4C8(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v10 = *a1;
  *v11 = v3;
  *&v11[10] = *(a1 + 26);
  os_unfair_lock_lock((a2 + 48));
  sub_1DAA8DB84(&v10, &v8);
  v4 = sub_1DACA7B20((a2 + 56), &v10);
  result = sub_1DAA934A8(&v10);
  v6 = *(*(a2 + 56) + 16);
  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1DACA6FFC(v4, v6);
    sub_1DAB5FC68(*&v11[8], *&v11[16], &v8);
    sub_1DAA75E60(v8, *(&v8 + 1), *v9, *&v9[8], *&v9[16]);
    os_unfair_lock_unlock((a2 + 48));
    v8 = v10;
    *v9 = *v11;
    *&v9[10] = *&v11[10];
    sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1DAA8DB84(&v10, &v7);
    return sub_1DACB8AE4();
  }

  return result;
}

uint64_t sub_1DAC9A5F0(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = a1[7];
  v37 = a1[6];
  v38 = v6;
  v39 = *(a1 + 16);
  v7 = a1[3];
  v33 = a1[2];
  v34 = v7;
  v8 = a1[5];
  v35 = a1[4];
  v36 = v8;
  v9 = a1[1];
  v31 = *a1;
  v32 = v9;
  v10 = a2[1];
  v29 = *a2;
  v30[0] = v10;
  *(v30 + 10) = *(a2 + 26);
  sub_1DACB8BB4();
  v11 = swift_allocObject();
  v12 = a1[7];
  *(v11 + 112) = a1[6];
  *(v11 + 128) = v12;
  v13 = a1[3];
  *(v11 + 48) = a1[2];
  *(v11 + 64) = v13;
  v14 = a1[5];
  *(v11 + 80) = a1[4];
  *(v11 + 96) = v14;
  v15 = a1[1];
  *(v11 + 16) = *a1;
  *(v11 + 32) = v15;
  v16 = a2[1];
  *(v11 + 152) = *a2;
  *(v11 + 144) = *(a1 + 16);
  *(v11 + 168) = v16;
  *(v11 + 178) = *(a2 + 26);
  sub_1DAA806E4(&v31, v28);
  sub_1DAA8DB84(&v29, v28);
  v17 = sub_1DACB89D4();
  sub_1DACB8A74();

  v18 = swift_allocObject();
  v19 = v30[0];
  *(v18 + 16) = v29;
  *(v18 + 32) = v19;
  *(v18 + 42) = *(v30 + 10);
  v20 = v38;
  *(v18 + 160) = v37;
  *(v18 + 176) = v20;
  v21 = v39;
  v22 = v34;
  *(v18 + 96) = v33;
  *(v18 + 112) = v22;
  v23 = v36;
  *(v18 + 128) = v35;
  *(v18 + 144) = v23;
  v24 = v32;
  *(v18 + 64) = v31;
  *(v18 + 80) = v24;
  *(v18 + 192) = v21;
  *(v18 + 200) = v3;
  sub_1DAA806E4(&v31, v28);
  sub_1DAA8DB84(&v29, v28);
  sub_1DACB71F4();
  v25 = sub_1DACB89D4();
  v26 = sub_1DACB8A74();

  return v26;
}

void sub_1DAC9A848(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4, os_unfair_lock_s *a5)
{
  v61 = a4;
  v47[4] = *&a5->_os_unfair_lock_opaque;
  os_unfair_lock_lock((a2 + 48));
  v8 = a3[3];
  v9 = a3[4];
  v10 = *(a2 + 64);
  v11 = *(v10 + 16);
  v48 = a5;
  v52 = v9;
  if (v11 && (v12 = sub_1DAA4BF3C(v8, v9), (v13 & 1) != 0))
  {
    v14 = *(v10 + 56) + 48 * v12;
    v15 = *(v14 + 8);
    v51 = *v14;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v9 = *(v14 + 32);
    v18 = *(v14 + 40);
    LODWORD(v14) = *(v14 + 41);
    v49 = v18;
    v50 = v14;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
  }

  else
  {
    v19 = *(a3 + 41);
    v49 = *(a3 + 40);
    v50 = v19;
    v15 = a3[1];
    v16 = a3[2];
    v51 = *a3;
    sub_1DAA8DB84(a3, &v54);
    v17 = v8;
  }

  sub_1DAA5A8BC(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  v56 = v61[1];
  *(inited + 32) = v56;
  *&v59 = v16;
  sub_1DACB71E4();
  sub_1DAAA1344(&v56, &v54);
  sub_1DACB71E4();
  sub_1DAC28658(inited);
  *&v57 = v51;
  *(&v57 + 1) = v15;
  *v58 = v59;
  *&v58[8] = v17;
  *&v58[16] = v9;
  v58[24] = v49;
  v58[25] = v50;
  swift_bridgeObjectRetain_n();
  sub_1DAA8DB84(&v57, &v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v54 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v57, v17, v9, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v54;

  os_unfair_lock_unlock((a2 + 48));
  if (v8 == sub_1DACB9324() && v52 == v22)
  {

LABEL_11:
    v54 = v57;
    v55[0] = *v58;
    *(v55 + 10) = *&v58[10];
    sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1DACB8AE4();
    return;
  }

  v23 = sub_1DACBA174();

  if (v23)
  {
    goto LABEL_11;
  }

  v24 = v48;
  os_unfair_lock_lock(v48 + 12);
  sub_1DAC99304(&v48[14], &v54);
  if (v53)
  {
    os_unfair_lock_unlock(v48 + 12);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v48 + 12);
  v25 = *&v55[0];

  v59 = v56;
  MEMORY[0x1EEE9AC00](v26);
  v47[2] = &v59;
  v27 = sub_1DAC78448(sub_1DAA88710, v47, v25);

  if (v27)
  {
    goto LABEL_11;
  }

  os_unfair_lock_lock(v24 + 12);
  sub_1DAC99304(&v24[14], &v54);
  os_unfair_lock_unlock(v24 + 12);
  v59 = v54;
  v60[0] = v55[0];
  *(v60 + 10) = *(v55 + 10);
  sub_1DACB8BB4();
  v28 = swift_allocObject();
  v29 = v61;
  v30 = v61[7];
  *(v28 + 112) = v61[6];
  *(v28 + 128) = v30;
  v31 = *(v29 + 48);
  *(v28 + 48) = *(v29 + 32);
  *(v28 + 64) = v31;
  v32 = *(v29 + 80);
  *(v28 + 80) = *(v29 + 64);
  *(v28 + 96) = v32;
  v33 = *(v29 + 16);
  *(v28 + 16) = *v29;
  *(v28 + 32) = v33;
  v34 = v60[0];
  *(v28 + 152) = v59;
  *(v28 + 144) = *(v29 + 128);
  *(v28 + 168) = v34;
  *(v28 + 178) = *(v60 + 10);
  sub_1DAA806E4(v29, &v54);
  sub_1DAA8DB84(&v59, &v54);
  v35 = sub_1DACB89D4();
  sub_1DACB8A74();

  v36 = swift_allocObject();
  v37 = v60[0];
  *(v36 + 16) = v59;
  *(v36 + 32) = v37;
  *(v36 + 42) = *(v60 + 10);
  v38 = *(v29 + 112);
  *(v36 + 160) = *(v29 + 96);
  *(v36 + 176) = v38;
  v39 = *(v29 + 128);
  v40 = *(v29 + 48);
  *(v36 + 96) = *(v29 + 32);
  *(v36 + 112) = v40;
  v41 = *(v29 + 80);
  *(v36 + 128) = *(v29 + 64);
  *(v36 + 144) = v41;
  v42 = *(v29 + 16);
  *(v36 + 64) = *v29;
  *(v36 + 80) = v42;
  *(v36 + 192) = v39;
  *(v36 + 200) = v24;
  sub_1DAA806E4(v29, &v54);
  sub_1DAA8DB84(&v59, &v54);
  sub_1DACB71F4();
  v43 = sub_1DACB89D4();
  sub_1DACB8A74();

  sub_1DAA934A8(&v59);
  v44 = swift_allocObject();
  v45 = *v58;
  v44[1] = v57;
  v44[2] = v45;
  *(v44 + 42) = *&v58[10];
  v46 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DAC9AE64(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a3[1];
  v18 = *a3;
  v19[0] = v6;
  *(v19 + 10) = *(a3 + 26);
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = a3[1];
  *(v7 + 32) = *a3;
  *(v7 + 48) = v8;
  *(v7 + 58) = *(a3 + 26);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v18, v17);
  v9 = sub_1DACB89D4();
  sub_1DACB8A74();

  v10 = swift_allocObject();
  v11 = v19[0];
  v10[1] = v18;
  v10[2] = v11;
  *(v10 + 42) = *(v19 + 10);
  sub_1DAA8DB84(&v18, v17);
  v12 = sub_1DACB89D4();
  sub_1DACB8A84();

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1DACB71E4();
  v14 = sub_1DACB89D4();
  v15 = sub_1DACB8A64();

  return v15;
}

void sub_1DAC9B098(uint64_t *a1, os_unfair_lock_s *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *a1;
  v6 = a1[1];
  os_unfair_lock_lock(a2 + 12);
  v7 = *&v4[16]._os_unfair_lock_opaque;
  if (*(v7 + 16))
  {
    v8 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32));
    if (v9)
    {
      v34 = v4;
      v10 = *(v7 + 56) + 48 * v8;
      v11 = *v10;
      v12 = *(v10 + 16);
      v38 = *(v10 + 24);
      v13 = *(v10 + 32);
      v35 = *(v10 + 41);
      v36 = *(v10 + 40);
      v14 = *(v12 + 16);
      v37 = *(v10 + 8);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      if (v14)
      {
        v15 = 0;
        v16 = v12 + 40;
        v39 = MEMORY[0x1E69E7CC0];
        v32 = v13;
        v33 = v11;
        do
        {
          v17 = (v16 + 16 * v15);
          v18 = v15;
          while (1)
          {
            if (v18 >= *(v12 + 16))
            {
              __break(1u);
              return;
            }

            v19 = *(v17 - 1);
            v20 = *v17;
            v21 = v19 == v5 && v20 == v6;
            if (!v21)
            {
              v22 = v16;
              v23 = sub_1DACBA174();
              v16 = v22;
              if ((v23 & 1) == 0)
              {
                break;
              }
            }

            ++v18;
            v17 += 2;
            if (v14 == v18)
            {
              v13 = v32;
              v11 = v33;
              goto LABEL_22;
            }
          }

          sub_1DACB71E4();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v39;
          *&v41 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAA5859C(0, *(v39 + 16) + 1, 1);
            v25 = v41;
          }

          v11 = v33;
          v27 = *(v25 + 16);
          v26 = *(v25 + 24);
          v28 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            v40 = v27 + 1;
            v31 = *(v25 + 16);
            sub_1DAA5859C((v26 > 1), v27 + 1, 1);
            v28 = v40;
            v25 = v41;
            v27 = v31;
            v11 = v33;
          }

          v15 = v18 + 1;
          *(v25 + 16) = v28;
          v39 = v25;
          v29 = v25 + 16 * v27;
          *(v29 + 32) = v19;
          *(v29 + 40) = v20;
          v21 = v14 - 1 == v18;
          v13 = v32;
          v16 = v22;
        }

        while (!v21);
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

LABEL_22:

      *&v41 = v11;
      *(&v41 + 1) = v37;
      v42 = v39;
      v43 = v38;
      v44 = v13;
      v45 = v36;
      v46 = v35;
      sub_1DACB71E4();
      v4 = v34;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *&v34[16]._os_unfair_lock_opaque;
      *&v34[16]._os_unfair_lock_opaque = 0x8000000000000000;
      sub_1DACA56F8(&v41, v38, v13, v30);

      *&v34[16]._os_unfair_lock_opaque = v47;
    }
  }

  os_unfair_lock_unlock(v4 + 12);
}

uint64_t sub_1DAC9B31C(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = a1[7];
  v52 = a1[6];
  v53 = v6;
  v54 = *(a1 + 16);
  v7 = a1[3];
  v48 = a1[2];
  v49 = v7;
  v8 = a1[5];
  v50 = a1[4];
  v51 = v8;
  v9 = a1[1];
  v46 = *a1;
  v47 = v9;
  v10 = a2[7];
  v61 = a2[6];
  v62 = v10;
  v63 = *(a2 + 16);
  v11 = a2[3];
  v57 = a2[2];
  v58 = v11;
  v12 = a2[5];
  v59 = a2[4];
  v60 = v12;
  v13 = a2[1];
  v55 = *a2;
  v56 = v13;
  v14 = a3[1];
  v44 = *a3;
  v45[0] = v14;
  *(v45 + 10) = *(a3 + 26);
  sub_1DACB8BB4();
  v15 = swift_allocObject();
  v16 = a1[7];
  *(v15 + 112) = a1[6];
  *(v15 + 128) = v16;
  v17 = a1[3];
  *(v15 + 48) = a1[2];
  *(v15 + 64) = v17;
  v18 = a1[5];
  *(v15 + 80) = a1[4];
  *(v15 + 96) = v18;
  v19 = a1[1];
  *(v15 + 16) = *a1;
  *(v15 + 32) = v19;
  v20 = a2[4];
  *(v15 + 232) = a2[5];
  v21 = a2[7];
  *(v15 + 248) = a2[6];
  *(v15 + 264) = v21;
  v22 = *a2;
  *(v15 + 168) = a2[1];
  v23 = a2[3];
  *(v15 + 184) = a2[2];
  *(v15 + 200) = v23;
  *(v15 + 144) = *(a1 + 16);
  *(v15 + 280) = *(a2 + 16);
  *(v15 + 216) = v20;
  *(v15 + 152) = v22;
  v24 = a3[1];
  *(v15 + 288) = *a3;
  *(v15 + 304) = v24;
  *(v15 + 314) = *(a3 + 26);
  sub_1DAA806E4(&v46, v43);
  v25 = MEMORY[0x1E69E6720];
  sub_1DACA73E4(&v55, v43, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(&v44, v43);
  v26 = sub_1DACB89D4();
  sub_1DACB8A74();

  v27 = swift_allocObject();
  v28 = v45[0];
  v27[1] = v44;
  v27[2] = v28;
  *(v27 + 42) = *(v45 + 10);
  sub_1DAA8DB84(&v44, v43);
  v29 = sub_1DACB89D4();
  sub_1DACB8A74();

  v30 = swift_allocObject();
  v31 = v45[0];
  *(v30 + 16) = v44;
  *(v30 + 32) = v31;
  *(v30 + 42) = *(v45 + 10);
  v32 = v53;
  *(v30 + 160) = v52;
  *(v30 + 176) = v32;
  v33 = v49;
  *(v30 + 96) = v48;
  *(v30 + 112) = v33;
  v34 = v51;
  *(v30 + 128) = v50;
  *(v30 + 144) = v34;
  v35 = v47;
  *(v30 + 64) = v46;
  *(v30 + 80) = v35;
  v36 = v62;
  *(v30 + 296) = v61;
  *(v30 + 312) = v36;
  v37 = v55;
  *(v30 + 216) = v56;
  v38 = v58;
  *(v30 + 232) = v57;
  *(v30 + 248) = v38;
  v39 = v60;
  *(v30 + 264) = v59;
  *(v30 + 280) = v39;
  *(v30 + 192) = v54;
  *(v30 + 328) = v63;
  *(v30 + 200) = v37;
  sub_1DAA806E4(&v46, v43);
  sub_1DACA73E4(&v55, v43, &qword_1EE1201A8, &type metadata for Stock, v25);
  sub_1DAA8DB84(&v44, v43);
  v40 = sub_1DACB89D4();
  v41 = sub_1DACB8A74();

  return v41;
}

uint64_t sub_1DAC9B6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  os_unfair_lock_lock((a2 + 48));
  v9 = *(a2 + 64);
  if (!*(v9 + 16) || (v10 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32)), (v11 & 1) == 0))
  {
    os_unfair_lock_unlock((a2 + 48));
    goto LABEL_54;
  }

  v12 = *(v9 + 56) + 48 * v10;
  v64 = *v12;
  v13 = *(v12 + 16);
  v62 = *(v12 + 24);
  v14 = *(v12 + 32);
  v63 = *(v12 + 41);
  v15 = *(v13 + 16);
  sub_1DACB71E4();
  sub_1DACB71E4();
  result = sub_1DACB71E4();
  if (v15)
  {
    v17 = 0;
    v18 = v13 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v90 = v19;
      v20 = (v18 + 16 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v23 = *(v20 - 1);
        v22 = *v20;
        if (v23 != *(a4 + 16) || v22 != *(a4 + 24))
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v21;
        v20 += 2;
        if (v15 == v21)
        {
          v19 = v90;
          goto LABEL_22;
        }
      }

      sub_1DACB71E4();
      v19 = v90;
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v75 = v90;
      if ((result & 1) == 0)
      {
        result = sub_1DAA5859C(0, *(v90 + 2) + 1, 1);
        v19 = v75;
      }

      v26 = *(v19 + 2);
      v25 = *(v19 + 3);
      v27 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v90 = (v26 + 1);
        v60 = v26;
        result = sub_1DAA5859C((v25 > 1), v26 + 1, 1);
        v27 = v90;
        v26 = v60;
        v19 = v75;
      }

      v17 = v21 + 1;
      *(v19 + 2) = v27;
      v28 = &v19[16 * v26];
      *(v28 + 4) = v23;
      *(v28 + 5) = v22;
      v18 = v13 + 40;
    }

    while (v15 - 1 != v21);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:

  v29 = a5[7];
  v81 = a5[6];
  v82 = v29;
  v83 = *(a5 + 16);
  v30 = a5[3];
  v77 = a5[2];
  v78 = v30;
  v31 = a5[5];
  v79 = a5[4];
  v80 = v31;
  v32 = a5[1];
  v75 = *a5;
  v76 = v32;
  result = get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v75);
  v33 = *(v19 + 2);
  if (result == 1)
  {
    v34 = *(a4 + 16);
    v35 = *(a4 + 24);
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v19;
    v37 = v14;
    if (isUniquelyReferenced_nonNull_native && v33 < *(v19 + 3) >> 1)
    {
      v90 = v19;
    }

    else
    {
      v90 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v33 + 1, 1, v19);
      v65 = v90;
    }

    v45 = 0;
    v46 = 0;
    v47 = v34;
    goto LABEL_46;
  }

  v37 = v14;
  v90 = v19;
  v38 = 0;
  if (v33)
  {
    v39 = v76;
    v40 = v19 + 40;
    while (1)
    {
      result = *(v40 - 1);
      if (result == v39 && *v40 == *(&v39 + 1))
      {
        break;
      }

      result = sub_1DACBA174();
      if (result)
      {
        break;
      }

      ++v38;
      v40 += 2;
      if (v33 == v38)
      {
        v38 = 0;
        break;
      }
    }

    v19 = v90;
  }

  v42 = v38 + 1;
  if (__OFADD__(v38, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v33 < v42)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v43 = *(v19 + 2);
  if (v43 >= v42)
  {
    v35 = *(a4 + 24);
    v61 = *(a4 + 16);
    sub_1DACB71E4();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v19;
    if (!v44 || v43 >= *(v19 + 3) >> 1)
    {
      v90 = sub_1DAA9A3B0(v44, v43 + 1, 1, v19);
      v65 = v90;
    }

    v45 = v42;
    v46 = v42;
    v47 = v61;
LABEL_46:
    sub_1DACA69B8(v45, v46, 1, v47, v35);

    v84 = v64;
    v85 = v90;
    v86 = v62;
    v87 = v37;
    v88 = -96;
    v89 = v63;
    sub_1DACB71E4();
    sub_1DAA8DB84(&v84, &v66);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = *(a2 + 64);
    *(a2 + 64) = 0x8000000000000000;
    sub_1DACA56F8(&v84, v62, v37, v48);

    *(a2 + 64) = v66;
    os_unfair_lock_unlock((a2 + 48));
    if (*(&v64 + 1))
    {
      sub_1DACB8F34();
      v50 = *(&v67 + 1);
      v49 = v68;

      if (v50 == v62 && v14 == v49)
      {
      }

      else
      {
        v51 = sub_1DACBA174();

        if ((v51 & 1) == 0)
        {
          v54 = *(&v64 + 1);
          v53 = v64;
          v55 = v90;
          goto LABEL_53;
        }
      }

      v66 = v64;
      v52 = v90;
      *&v67 = v90;
      *(&v67 + 1) = v62;
      *&v68 = v14;
      BYTE8(v68) = -96;
      BYTE9(v68) = v63;
      sub_1DACB8F24();
      v54 = *(&v64 + 1);
      v53 = v64;
      v55 = v52;
LABEL_53:
      sub_1DAA75E60(v53, v54, v55, v62, v14);
    }

LABEL_54:
    v56 = *(a4 + 112);
    v72 = *(a4 + 96);
    v73 = v56;
    v74 = *(a4 + 128);
    v57 = *(a4 + 48);
    v68 = *(a4 + 32);
    v69 = v57;
    v58 = *(a4 + 80);
    v70 = *(a4 + 64);
    v71 = v58;
    v59 = *(a4 + 16);
    v66 = *a4;
    v67 = v59;
    sub_1DAA5A8BC(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1DAA806E4(a4, &v65);
    return sub_1DACB8AE4();
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1DAC9BC3C(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v21 = *a2;
  v22[0] = v4;
  *(v22 + 10) = *(a2 + 26);
  sub_1DACB8BB4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  *(v5 + 50) = *(a2 + 26);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v21, v20);
  v7 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DACB8A74();

  v8 = swift_allocObject();
  v9 = v22[0];
  v8[1] = v21;
  v8[2] = v9;
  *(v8 + 42) = *(v22 + 10);
  sub_1DAA8DB84(&v21, v20);
  v10 = sub_1DACB89D4();
  sub_1DACB8A74();

  v11 = swift_allocObject();
  v12 = v22[0];
  *(v11 + 16) = v21;
  *(v11 + 32) = v12;
  *(v11 + 42) = *(v22 + 10);
  *(v11 + 64) = a1;
  sub_1DACB71E4();
  sub_1DAA8DB84(&v21, v20);
  v13 = sub_1DACB89D4();
  sub_1DACB8A84();

  v14 = swift_allocObject();
  v15 = v22[0];
  v14[1] = v21;
  v14[2] = v15;
  *(v14 + 42) = *(v22 + 10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DACA72A0;
  *(v16 + 24) = v14;
  sub_1DAA8DB84(&v21, v20);
  v17 = sub_1DACB89D4();
  v18 = sub_1DACB8A64();

  return v18;
}

void sub_1DAC9BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a2 + 48));
  v7 = *(a2 + 64);
  if (!*(v7 + 16) || (v8 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32)), (v9 & 1) == 0))
  {
    os_unfair_lock_unlock((a2 + 48));
    return;
  }

  v10 = *(v7 + 56) + 48 * v8;
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 24);
  v13 = *(v10 + 32);
  v15 = *(v10 + 41);
  *&v29 = *v10;
  *(&v29 + 1) = v11;
  v30 = a4;
  v31 = v14;
  v32 = v13;
  v33 = -96;
  v34 = v15;
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA8DB84(&v29, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v29, v14, v13, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v24[0];
  os_unfair_lock_unlock((a2 + 48));
  if (!v11)
  {
    return;
  }

  v35 = v12;
  v23 = v15;
  sub_1DACB8F34();
  v18 = v25;
  v17 = v26;

  if (v18 == v14 && v13 == v17)
  {

    goto LABEL_12;
  }

  v20 = sub_1DACBA174();

  if (v20)
  {
LABEL_12:
    v22 = v35;
    v24[0] = v35;
    v24[1] = v11;
    v24[2] = a4;
    v25 = v14;
    v26 = v13;
    v27 = -96;
    v28 = v23;
    sub_1DACB8F24();
    v21 = v22;
    goto LABEL_13;
  }

  v21 = v35;
LABEL_13:
  sub_1DAA75E60(v21, v11, a4, v14, v13);
}

uint64_t sub_1DAC9C144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = a5[1];
  v23 = *a5;
  v24[0] = v10;
  *(v24 + 10) = *(a5 + 26);
  sub_1DACB8BB4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v12 = a5[1];
  *(v11 + 48) = *a5;
  *(v11 + 64) = v12;
  *(v11 + 74) = *(a5 + 26);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA8DB84(&v23, v22);
  v13 = sub_1DACB89D4();
  sub_1DACB8A74();

  v14 = swift_allocObject();
  v15 = v24[0];
  *(v14 + 16) = v23;
  *(v14 + 32) = v15;
  *(v14 + 42) = *(v24 + 10);
  *(v14 + 64) = a3;
  *(v14 + 72) = a4;
  sub_1DACB71E4();
  sub_1DAA8DB84(&v23, v22);
  v16 = sub_1DACB89D4();
  sub_1DACB8A84();

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1DACA7180;
  *(v18 + 24) = v17;
  sub_1DACB71E4();
  v19 = sub_1DACB89D4();
  v20 = sub_1DACB8A64();

  return v20;
}

void sub_1DAC9C3C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v9 = a1[1];
  os_unfair_lock_lock((a2 + 48));
  v11 = *(a2 + 64);
  if (!*(v11 + 16) || (v12 = sub_1DAA4BF3C(*(a3 + 24), *(a3 + 32)), (v13 & 1) == 0))
  {
    os_unfair_lock_unlock((a2 + 48));
    return;
  }

  v14 = *(v11 + 56) + 48 * v12;
  v49 = *v14;
  v50 = *(v14 + 8);
  v15 = *(v14 + 16);
  v45 = *(v14 + 24);
  v46 = *(v14 + 32);
  v47 = *(v14 + 41);
  v48 = *(v14 + 40);
  v16 = *(v15 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 40;
    while (1)
    {
      v19 = *(v18 - 1) == v10 && *v18 == v9;
      if (v19 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      ++v17;
      v18 += 2;
      if (v16 == v17)
      {
        goto LABEL_11;
      }
    }

    v22 = *(v15 + 2);
    if (v22 < v17)
    {
LABEL_47:
      __break(1u);
      return;
    }

    sub_1DACB71E4();
    sub_1DACB71E4();
    v21 = v46;
    sub_1DACB71E4();
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v15;
    if (!isUniquelyReferenced_nonNull_native || v22 >= *(v15 + 3) >> 1)
    {
      v15 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v15);
      v62 = v15;
    }

    sub_1DACA69B8(v17, v17, 1, a4, a5);

    v24 = *(v15 + 2);
    if (v24)
    {
      v25 = 0;
      v26 = v15 + 40;
      v44 = MEMORY[0x1E69E7CC0];
      do
      {
        v27 = &v26[16 * v25];
        v28 = v25;
        while (1)
        {
          if (v28 >= *(v15 + 2))
          {
            __break(1u);
            goto LABEL_47;
          }

          v29 = *(v27 - 1);
          v30 = *v27;
          v31 = v29 == v10 && v30 == v9;
          if (!v31 && (sub_1DACBA174() & 1) == 0)
          {
            break;
          }

          ++v28;
          v27 += 16;
          if (v24 == v28)
          {
            v21 = v46;
            goto LABEL_36;
          }
        }

        sub_1DACB71E4();
        *&v56 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DAA5859C(0, *(v44 + 16) + 1, 1);
          v44 = v56;
        }

        v26 = v15 + 40;
        v33 = *(v44 + 16);
        v32 = *(v44 + 24);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v42 = *(v44 + 16);
          v43 = v33 + 1;
          sub_1DAA5859C((v32 > 1), v33 + 1, 1);
          v33 = v42;
          v34 = v43;
          v26 = v15 + 40;
          v44 = v56;
        }

        v25 = v28 + 1;
        *(v44 + 16) = v34;
        v35 = v44 + 16 * v33;
        *(v35 + 32) = v29;
        *(v35 + 40) = v30;
        v19 = v24 - 1 == v28;
        v21 = v46;
      }

      while (!v19);
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

LABEL_36:

    v15 = v44;
    v20 = v50;
  }

  else
  {
LABEL_11:
    sub_1DACB71E4();
    v20 = v50;
    sub_1DACB71E4();
    v21 = v46;
    sub_1DACB71E4();
  }

  *&v56 = v49;
  *(&v56 + 1) = v20;
  v57 = v15;
  v58 = v45;
  v59 = v21;
  v60 = v48;
  v61 = v47;
  sub_1DACB71E4();
  sub_1DAA8DB84(&v56, v51);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v56, v45, v21, v36);

  *(a2 + 64) = v51[0];
  os_unfair_lock_unlock((a2 + 48));
  if (v20)
  {
    sub_1DACB8F34();
    v38 = v52;
    v37 = v53;

    if (v38 == v45 && v21 == v37)
    {
    }

    else
    {
      v39 = sub_1DACBA174();

      if ((v39 & 1) == 0)
      {
        v40 = v49;
        v41 = v50;
        goto LABEL_44;
      }
    }

    v51[0] = v49;
    v51[1] = v50;
    v51[2] = v15;
    v52 = v45;
    v53 = v21;
    v54 = v48;
    v55 = v47;
    sub_1DACB8F24();
    v40 = v49;
    v41 = v50;
LABEL_44:
    sub_1DAA75E60(v40, v41, v15, v45, v21);
  }
}

uint64_t sub_1DAC9C7F4(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v21 = *a1;
  v22[0] = v4;
  *(v22 + 10) = *(a1 + 26);
  v5 = a2[1];
  v23 = *a2;
  v24[0] = v5;
  *(v24 + 10) = *(a2 + 26);
  sub_1DACB8BB4();
  v6 = swift_allocObject();
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  *(v6 + 42) = *(a1 + 26);
  v8 = a2[1];
  v6[4] = *a2;
  v6[5] = v8;
  *(v6 + 90) = *(a2 + 26);
  sub_1DAA8DB84(&v21, v20);
  v9 = MEMORY[0x1E69E6720];
  sub_1DACA73E4(&v23, v20, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v10 = sub_1DACB89D4();
  sub_1DACB8A74();

  v11 = swift_allocObject();
  v12 = v24[0];
  v11[1] = v23;
  v11[2] = v12;
  *(v11 + 42) = *(v24 + 10);
  sub_1DACA73E4(&v23, v20, &qword_1EE120130, &type metadata for Watchlist, v9);
  v13 = sub_1DACB89D4();
  sub_1DACB8A84();

  v14 = swift_allocObject();
  v15 = v22[0];
  v14[1] = v21;
  v14[2] = v15;
  *(v14 + 42) = *(v22 + 10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DACA7860;
  *(v16 + 24) = v14;
  sub_1DAA8DB84(&v21, v20);
  v17 = sub_1DACB89D4();
  v18 = sub_1DACB8A64();

  return v18;
}

void sub_1DAC9CAB0(__int128 *a1, os_unfair_lock_s *a2, void *a3)
{
  v6 = a1[1];
  v7 = *a1;
  v8[0] = v6;
  *(v8 + 10) = *(a1 + 26);
  os_unfair_lock_lock(a2 + 12);
  sub_1DAC9CB34(&a2[14], &v7, a3);
  os_unfair_lock_unlock(a2 + 12);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_1DAC9CB34(char **a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 2);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 5;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = &v8[2 * v7];
      v11 = v7;
      while (1)
      {
        if (v11 >= v5[2])
        {
          __break(1u);
          goto LABEL_47;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = v12 == *(a2 + 24) && v13 == *(a2 + 32);
        if (!v14 && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        ++v11;
        v10 += 2;
        if (v6 == v11)
        {
          goto LABEL_18;
        }
      }

      sub_1DACB71E4();
      v35 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DAA5859C(0, *(v9 + 2) + 1, 1);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_1DAA5859C((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
      }

      v7 = v11 + 1;
      *(v9 + 2) = v17;
      v18 = &v9[16 * v16];
      *(v18 + 4) = v12;
      *(v18 + 5) = v13;
      a3 = v35;
      v8 = v5 + 5;
    }

    while (v6 - 1 != v11);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  if (!a3[1] || (v11 = *(v9 + 2)) == 0)
  {
LABEL_27:
    a3 = *(a2 + 24);
    a2 = *(a2 + 32);
    v25 = *(v9 + 2);
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 >= *(v9 + 3) >> 1)
    {
      v9 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v9);
    }

    v27 = 0;
    v28 = 0;
LABEL_31:
    sub_1DACA69B8(v27, v28, 1, a3, a2);

LABEL_32:

    *a1 = v9;
    return result;
  }

  v19 = 0;
  v20 = a3[3];
  v21 = a3[4];
  v22 = v9 + 40;
  while (1)
  {
    result = *(v22 - 1);
    if (result == v20 && *v22 == v21)
    {
      break;
    }

    result = sub_1DACBA174();
    if (result)
    {
      break;
    }

    ++v19;
    v22 += 2;
    if (v11 == v19)
    {
      goto LABEL_27;
    }
  }

  a3 = *(a2 + 24);
  a2 = *(a2 + 32);
  if (v11 - 1 == v19)
  {
    sub_1DACB71E4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_47:
      v9 = sub_1DAA9A3B0(0, v11 + 1, 1, v9);
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    if (v30 >= v29 >> 1)
    {
      v9 = sub_1DAA9A3B0((v29 > 1), v30 + 1, 1, v9);
    }

    *(v9 + 2) = v30 + 1;
    v31 = &v9[16 * v30];
    *(v31 + 4) = a3;
    *(v31 + 5) = a2;
    goto LABEL_32;
  }

  v32 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < v32)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v33 = *(v9 + 2);
  if (v33 >= v32)
  {
    sub_1DACB71E4();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    if (!v34 || v33 >= *(v9 + 3) >> 1)
    {
      v9 = sub_1DAA9A3B0(v34, v33 + 1, 1, v9);
    }

    v27 = v19 + 1;
    v28 = v19 + 1;
    goto LABEL_31;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1DAC9CE74(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v18 = *a1;
  v19[0] = v6;
  *(v19 + 10) = *(a1 + 26);
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a1[1];
  *(v7 + 32) = *a1;
  *(v7 + 48) = v8;
  *(v7 + 58) = *(a1 + 26);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v18, v17);
  v9 = sub_1DACB89D4();
  sub_1DACB8A74();

  v10 = swift_allocObject();
  v11 = v19[0];
  v10[1] = v18;
  v10[2] = v11;
  *(v10 + 42) = *(v19 + 10);
  sub_1DAA8DB84(&v18, v17);
  v12 = sub_1DACB89D4();
  sub_1DACB8A74();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_1DACB71E4();
  v14 = sub_1DACB89D4();
  v15 = sub_1DACB8A74();

  return v15;
}

void sub_1DAC9D0B4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1DACB7664();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a3;
  v27 = a4;
  sub_1DACB75B4();
  sub_1DAA642D8();
  v13 = sub_1DACB9B34();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    os_unfair_lock_lock(a2 + 12);
    v17 = v28;
    sub_1DAC9D3EC(&a2[14], a5, &v26);
    if (v17)
    {
      os_unfair_lock_unlock(a2 + 12);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(a2 + 12);
      v18 = v26;
      v19 = sub_1DACB93A4();
      v21 = v20;

      v26 = v19;
      v27 = v21;
      MEMORY[0x1EEE9AC00](v22);
      *(&v26 - 2) = &v26;
      v23 = sub_1DAC78448(sub_1DAC49E88, (&v26 - 4), v18);

      if (v23)
      {
        sub_1DAC990D4();
        swift_allocError();
        *v24 = 0;
        sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
        swift_allocObject();
        sub_1DACB8AD4();
      }

      else
      {
        v26 = a3;
        v27 = a4;
        sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
        swift_allocObject();
        sub_1DACB71E4();
        sub_1DACB8AE4();
      }
    }
  }

  else
  {

    sub_1DAC990D4();
    swift_allocError();
    *v25 = 1;
    sub_1DAA5A8BC(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1DACB8AD4();
  }
}

uint64_t sub_1DAC9D3EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(v4 + 56) + 48 * (v12 | (v10 << 6)));
    if (*v13 != *a2 || v13[1] != a2[1])
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        v15 = sub_1DACB93A4();
        v21 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DAA9A3B0(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
        }

        v18 = *(v23 + 16);
        v17 = *(v23 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          result = sub_1DAA9A3B0((v17 > 1), v18 + 1, 1, v23);
          v19 = v18 + 1;
          v23 = result;
        }

        *(v23 + 16) = v19;
        v20 = v23 + 16 * v18;
        *(v20 + 32) = v15;
        *(v20 + 40) = v21;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      *a3 = v23;
      return result;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC9D5A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a1[1];
  v16 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = *(a1 + 41);
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *v20 = v5;
  *&v20[8] = v6;
  *&v20[16] = v7;
  v20[24] = v8;
  v20[25] = v9;
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  os_unfair_lock_lock((a2 + 48));
  sub_1DAA8DB84(&v19, &v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v17 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v19, v6, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v17;
  os_unfair_lock_unlock((a2 + 48));
  sub_1DACB8F34();
  v12 = *&v18[8];
  v11 = *&v18[16];

  if (__PAIR128__(v11, v12) == __PAIR128__(v7, v6))
  {

LABEL_4:
    *&v17 = v16;
    *(&v17 + 1) = v15;
    *v18 = v5;
    *&v18[8] = v6;
    *&v18[16] = v7;
    v18[24] = v8;
    v18[25] = v9;
    sub_1DACB8F24();
    goto LABEL_5;
  }

  v13 = sub_1DACBA174();

  if (v13)
  {
    goto LABEL_4;
  }

LABEL_5:
  v17 = v19;
  *v18 = *v20;
  *&v18[10] = *&v20[10];
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC9D774(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 41);
  *&v16 = *a1;
  *(&v16 + 1) = v4;
  *v17 = v5;
  *&v17[8] = v6;
  *&v17[16] = v7;
  v17[24] = a3;
  v17[25] = v8;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  os_unfair_lock_lock((a2 + 48));
  sub_1DACB71E4();
  sub_1DAA8DB84(&v16, &v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v16, v6, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v14;
  os_unfair_lock_unlock((a2 + 48));
  sub_1DACB8F34();
  v11 = *&v15[8];
  v10 = *&v15[16];

  if (__PAIR128__(v10, v11) == *&v17[8])
  {

LABEL_4:
    v14 = v16;
    *v15 = *v17;
    *&v15[10] = *&v17[10];
    sub_1DACB8F24();
    goto LABEL_5;
  }

  v12 = sub_1DACBA174();

  if (v12)
  {
    goto LABEL_4;
  }

LABEL_5:
  v14 = v16;
  *v15 = *v17;
  *&v15[10] = *&v17[10];
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAC9D920(__int128 *a1, char *a2)
{
  v3 = a1[1];
  v14 = *a1;
  v15[0] = v3;
  *(v15 + 10) = *(a1 + 26);
  v4 = *a2;
  sub_1DACB8BB4();
  v5 = swift_allocObject();
  v6 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 42) = *(a1 + 26);
  *(v5 + 58) = v4;
  sub_1DAA8DB84(&v14, v13);
  v7 = sub_1DACB89D4();
  sub_1DACB8A74();

  v8 = swift_allocObject();
  v9 = v15[0];
  v8[1] = v14;
  v8[2] = v9;
  *(v8 + 42) = *(v15 + 10);
  sub_1DAA8DB84(&v14, v13);
  v10 = sub_1DACB89D4();
  v11 = sub_1DACB8A74();

  return v11;
}

uint64_t sub_1DAC9DAD8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v16 = *a1;
  v17[0] = v5;
  *(v17 + 10) = *(a1 + 26);
  os_unfair_lock_lock((a2 + 48));
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  sub_1DACB71E4();
  sub_1DAA8DB84(&v16, &v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14 = *(a2 + 64);
  *(a2 + 64) = 0x8000000000000000;
  sub_1DACA56F8(&v16, v6, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 64) = v14;
  os_unfair_lock_unlock((a2 + 48));
  sub_1DACB8F34();
  v10 = *&v15[8];
  v9 = *&v15[16];

  if (__PAIR128__(v9, v10) == *(v17 + 8))
  {

LABEL_4:
    v14 = v16;
    *v15 = v17[0];
    *&v15[10] = *(v17 + 10);
    sub_1DACB8F24();
    goto LABEL_5;
  }

  v11 = sub_1DACBA174();

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_5:
  v14 = v16;
  *v15 = v17[0];
  *&v15[10] = *(v17 + 10);
  sub_1DAA5A8BC(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA8DB84(&v16, &v13);
  return sub_1DACB8AE4();
}

void sub_1DAC9DC6C(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 48));
  v2 = sub_1DACB9324();
  v4 = *(a1 + 64);
  if (*(v4 + 16))
  {
    v5 = sub_1DAA4BF3C(v2, v3);
    v7 = v6;

    if (v7)
    {
      v8 = (*(v4 + 56) + 48 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      v13 = v8[4];
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      os_unfair_lock_unlock((a1 + 48));
      if (v9)
      {
        sub_1DACB8F24();
        if (qword_1EE121840 != -1)
        {
          swift_once();
        }

        v14 = qword_1EE13E318;
        sub_1DAA41D64(0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1DACC1D20;
        sub_1DACB9DD4();
        sub_1DAA75E60(v10, v9, v11, v12, v13);
        *(v15 + 56) = MEMORY[0x1E69E6158];
        *(v15 + 64) = sub_1DAA443C8();
        *(v15 + 32) = 0;
        *(v15 + 40) = 0xE000000000000000;
        v16 = sub_1DACB9914();
        sub_1DACB8C64("WatchlistManager sets default watchlist as active watchlist: %{public}@", 71, 2, &dword_1DAA3F000, v14, v16, v15);
      }

      return;
    }
  }

  else
  {
  }

  os_unfair_lock_unlock((a1 + 48));
}

uint64_t sub_1DAC9DEB0(uint64_t *a1)
{
  sub_1DACB8F24();
  sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAC9DF4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *v2;
  v6 = (v2 + 6);
  v8 = v7;
  os_unfair_lock_lock(v6);
  v9 = sub_1DACB71E4();
  v10 = sub_1DAA6BD48(v9, (v3 + 7));

  os_unfair_lock_unlock(v6);
  v11 = *(v10 + 16);
  v52 = a1;
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 73;
    v51 = MEMORY[0x1E69E7CC0];
    v49 = a2;
    v50 = v10;
    v44 = v10 + 73;
    v45 = *(v10 + 16);
    while (1)
    {
      v14 = (v13 + 48 * v12);
      v15 = v11 - v12;
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        v16 = v8;
        v48 = *(v14 - 41);
        v17 = *(v14 - 33);
        v18 = *(v14 - 25);
        v19 = *(v14 - 17);
        v20 = *(v14 - 9);
        v46 = *v14;
        v47 = *(v14 - 1);
        if (v19 != sub_1DACB9324() || v20 != v21)
        {
          break;
        }

LABEL_4:

        v14 += 48;
        ++v12;
        --v15;
        v8 = v16;
        a2 = v49;
        v10 = v50;
        if (!v15)
        {
          goto LABEL_19;
        }
      }

      v23 = sub_1DACBA174();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if (v23)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v51;
      *&v55 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAB25C88(0, *(v51 + 16) + 1, 1);
        v25 = v55;
      }

      a1 = v52;
      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_1DAB25C88((v26 > 1), v27 + 1, 1);
        v28 = v27 + 1;
        v25 = v55;
      }

      ++v12;
      *(v25 + 16) = v28;
      v51 = v25;
      v29 = v25 + 48 * v27;
      *(v29 + 32) = v48;
      *(v29 + 40) = v17;
      *(v29 + 48) = v18;
      *(v29 + 56) = v19;
      *(v29 + 64) = v20;
      *(v29 + 72) = v47;
      *(v29 + 73) = v46;
      v8 = v16;
      a2 = v49;
      v10 = v50;
      v13 = v44;
      v11 = v45;
      if (v15 == 1)
      {
        goto LABEL_19;
      }
    }

    a1 = v52;
    goto LABEL_4;
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v30 = *(v51 + 16);
  if (v30)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v31 = 32;
    do
    {
      v32 = *(v51 + v31);
      v33 = *(v51 + v31 + 16);
      *&v56[10] = *(v51 + v31 + 26);
      v55 = v32;
      *v56 = v33;
      sub_1DAA8DB84(&v55, v53);
      sub_1DACB8BB4();
      v34 = swift_allocObject();
      *(v34 + 16) = a1;
      *(v34 + 24) = a2;
      v35 = *v56;
      *(v34 + 32) = v55;
      *(v34 + 48) = v35;
      *(v34 + 58) = *&v56[10];
      sub_1DAA8DB84(&v55, v53);
      sub_1DACB71E4();
      v36 = sub_1DACB89D4();
      sub_1DACB8A74();

      v37 = swift_allocObject();
      v38 = *v56;
      v37[1] = v55;
      v37[2] = v38;
      *(v37 + 42) = *&v56[10];
      sub_1DAA8DB84(&v55, v53);
      v39 = sub_1DACB89D4();
      sub_1DACB8A84();

      v40 = swift_allocObject();
      *(v40 + 16) = v52;
      *(v40 + 24) = a2;
      sub_1DACB71E4();
      v41 = sub_1DACB89D4();
      sub_1DACB8A64();

      sub_1DAA934A8(&v55);
      sub_1DACB9D34();
      sub_1DACB9D74();
      a1 = v52;
      sub_1DACB9D84();
      sub_1DACB9D44();
      v31 += 48;
      --v30;
    }

    while (v30);
  }

  else
  {
  }

  v42 = sub_1DACB89D4();
  sub_1DACB8934();

  v43 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DAC9E4CC()
{

  sub_1DACA82B8(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_1DACA82E8(v0 + 160, sub_1DAC9E590);
  sub_1DACA82E8(v0 + 176, sub_1DAC9E5C4);

  return v0;
}

uint64_t sub_1DAC9E55C()
{
  sub_1DAC9E4CC();

  return swift_deallocClassInstance();
}

unint64_t sub_1DAC9E5F8()
{
  result = qword_1ECBE9AA0;
  if (!qword_1ECBE9AA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECBE9AA0);
  }

  return result;
}

void sub_1DAC9E65C(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock(v3 + 12);
  sub_1DAC99304(&v3[14], a1);

  os_unfair_lock_unlock(v3 + 12);
}

uint64_t sub_1DAC9E6E0()
{
  if (*(*v0 + 24))
  {
    sub_1DACB71F4();
    sub_1DACB88F4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC9E7C0(__int128 *a1, char *a2, uint64_t a3)
{
  v4 = a1[1];
  v13 = *a1;
  v14[0] = v4;
  *(v14 + 10) = *(a1 + 26);
  v5 = *a2;
  sub_1DACB8BB4();
  v6 = swift_allocObject();
  v7 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 42) = *(a1 + 26);
  *(v6 + 58) = v5;
  sub_1DAA8DB84(&v13, &v12);
  v8 = sub_1DACB89D4();
  sub_1DACB8A74();

  *(swift_allocObject() + 16) = v5;
  v9 = sub_1DACB89D4();
  v10 = sub_1DACB8A74();

  return v10;
}

uint64_t sub_1DAC9E960(uint64_t a1, uint64_t a2)
{
  v17 = *v2;
  sub_1DAC9ED14();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v5 = (*(a2 + 112))(&v7, a1, a2);

  return v5;
}

uint64_t sub_1DAC9EA14(uint64_t a1)
{
  sub_1DACB8BB4();
  v1 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8A74();

  v2 = sub_1DACB89D4();
  v3 = sub_1DACB8A84();

  return v3;
}

uint64_t sub_1DAC9EB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DACB8BB4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1DACB71E4();
  v6 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  v7 = sub_1DACB8A74();

  return v7;
}

uint64_t sub_1DAC9ED3C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v113 = *v3;
  v121 = sub_1DACB8FB4();
  v144 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1DACB9004();
  v6 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB92E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v125 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v113 - v14;
  v15 = *a2;
  if (qword_1EE121840 != -1)
  {
LABEL_81:
    swift_once();
  }

  v16 = qword_1EE13E318;
  sub_1DAA41D64(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC1D20;
  aBlock = v15;
  v18 = sub_1DAC61F20();
  v20 = v19;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1DAA443C8();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = sub_1DACB9914();
  sub_1DACB8C64("WatchlistManager received watchlist symbol changes with %@", 58, 2, &dword_1DAA3F000, v16, v21, v17, v113);

  v22 = v15 + 64;
  v23 = 1 << *(v15 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v15 + 64);
  v137 = @"watchlist";
  v123 = (v11 + 16);
  v122 = (v11 + 8);
  v117 = &v149;
  v26 = (v23 + 63) >> 6;
  v116 = v144 + 2;
  v115 = (v6 + 8);
  sub_1DACB71E4();
  v27 = 0;
  v144 = v3;
  v136 = v15;
  v135 = v15 + 64;
  v134 = v26;
  while (v25)
  {
    v3 = v10;
LABEL_11:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v27 << 6);
    v31 = (*(v15 + 48) + 16 * v30);
    v32 = *v31;
    v6 = v31[1];
    v33 = *(*(v15 + 56) + 8 * v30);
    sub_1DACB71E4();
    v11 = v33;
    v34 = v144;
    os_unfair_lock_lock(v144 + 12);
    v35 = *&v34[16]._os_unfair_lock_opaque;
    if (!*(v35 + 16) || (v36 = sub_1DAA4BF3C(v32, v6), (v37 & 1) == 0))
    {
      os_unfair_lock_unlock(v144 + 12);
      v10 = v3;
      goto LABEL_17;
    }

    v141 = v32;
    v38 = (*(v35 + 56) + 48 * v36);
    v39 = *(v38 + 26);
    v40 = v38[1];
    v153 = *v38;
    *v154 = v40;
    *&v154[10] = v39;
    sub_1DAA8DB84(&v153, &aBlock);
    v41 = [v11 symbolsPostDiff];
    v140 = sub_1DACB9644();

    v42 = *&v154[8];
    v43 = *&v154[16];
    v44 = sub_1DACB9324();
    v143 = v11;
    if (v42 == v44 && v43 == v45)
    {

      v46 = &selRef_initWithWatchlistIdentifier_updatedName_;
      v10 = v3;
LABEL_19:
      v48 = v124;
      sub_1DACB9284();
      (*v123)(v125, v48, v10);
      v3 = v144;
      if (qword_1EE123DD8 != -1)
      {
        swift_once();
      }

      v49 = qword_1EE13E470;
      sub_1DACB7DF4();
      v50 = sub_1DACB9384();
      v142 = v51;
      (*v122)(v48, v10);
      v11 = v143;
      goto LABEL_22;
    }

    v47 = sub_1DACBA174();

    v46 = &selRef_initWithWatchlistIdentifier_updatedName_;
    v10 = v3;
    if (v47)
    {
      goto LABEL_19;
    }

    v97 = [v11 updatedName];
    v3 = v144;
    if (v97)
    {
      v98 = v97;
      v50 = sub_1DACB9324();
      v142 = v99;
    }

    else
    {
      v142 = *(&v153 + 1);
      v50 = v153;
      sub_1DACB71E4();
    }

LABEL_22:
    sub_1DAC9FE7C(v11, &v153, &aBlock);
    if (aBlock <= 0xFDu)
    {
      v52 = aBlock;
    }

    else
    {
      v52 = v154[24];
    }

    v53 = [v11 v46[244]];
    if (!v53 || (v54 = v53, v55 = [v53 integerValue], v54, v55 >= 3))
    {
      v55 = v154[25];
    }

    v128 = v50;
    *&v155 = v50;
    *(&v155 + 1) = v142;
    v56 = v141;
    v156 = v140;
    v157 = v141;
    v158 = v6;
    v127 = v52;
    v159 = v52;
    v130 = v55;
    v160 = v55;
    swift_bridgeObjectRetain_n();
    sub_1DAA8DB84(&v155, &aBlock);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *(v3 + 64);
    *(v3 + 64) = 0x8000000000000000;
    sub_1DACA56F8(&v155, v56, v6, isUniquelyReferenced_nonNull_native);

    *(v3 + 64) = aBlock;
    v58 = [v11 updatedName];
    if (v58)
    {
      v59 = v58;
      v60 = sub_1DACB9324();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_1DAC9FE7C(v11, &v153, &v146);
    sub_1DAA934A8(&v153);
    v63 = [v11 updatedDisplayState];
    if (v63)
    {
      v64 = v63;
      v65 = v10;
      v66 = [v63 integerValue];

      v67 = 3;
      if (v66 < 3)
      {
        v67 = v66;
      }

      v10 = v65;
      v11 = v143;
    }

    else
    {
      v67 = 3;
    }

    v22 = v135;
    v145 = v67;
    sub_1DAC9FFC4(MEMORY[0x1E69E7CC0], v11, v60, v62, &v146, &v145, &aBlock);

    v139 = aBlock;
    v133 = v148;
    v129 = v149;
    v138 = v150;
    v131 = v151;
    v132 = BYTE1(v151);
    os_unfair_lock_unlock((v3 + 48));
    v15 = v136;
    v26 = v134;
    if (v142)
    {
      v114 = v10;
      sub_1DACB8F34();
      v69 = v150;
      v68 = v151;

      v15 = v141;
      if (v141 == v69 && v6 == v68)
      {

        v70 = v128;
        v71 = v127;
LABEL_41:
        aBlock = v70;
        v148 = v142;
        v149 = v140;
        v150 = v15;
        v151 = v6;
        LOBYTE(v152) = v71;
        BYTE1(v152) = v130;
        sub_1DACB8F24();
        goto LABEL_42;
      }

      v72 = sub_1DACBA174();

      v70 = v128;
      v71 = v127;
      if (v72)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (*(v139 + 16) || *(v133 + 16) || v138 || v131 < 0xFE || v132 != 3)
      {
        sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
        v128 = sub_1DACB9954();
        v73 = swift_allocObject();
        v74 = v139;
        *(v73 + 16) = v3;
        *(v73 + 24) = v74;
        v75 = v129;
        *(v73 + 32) = v133;
        *(v73 + 40) = v75;
        *(v73 + 48) = v138;
        *(v73 + 56) = v131;
        *(v73 + 57) = v132;
        v76 = v142;
        *(v73 + 64) = v70;
        *(v73 + 72) = v76;
        *(v73 + 80) = v140;
        *(v73 + 88) = v15;
        *(v73 + 96) = v6;
        *(v73 + 104) = v71;
        *(v73 + 105) = v130;
        v151 = sub_1DACA8120;
        v152 = v73;
        aBlock = MEMORY[0x1E69E9820];
        v148 = 1107296256;
        v149 = sub_1DAA5796C;
        v150 = &block_descriptor_208;
        v77 = _Block_copy(&aBlock);
        sub_1DACB71E4();
        sub_1DACB71F4();
        sub_1DACB71E4();
        sub_1DACB71E4();

        v78 = v118;
        sub_1DACB8FD4();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1DAA59D78(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1DAA59DC0(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1DAA6F790();
        v79 = v120;
        v80 = v121;
        sub_1DACB9BB4();
        v81 = v128;
        MEMORY[0x1E1277440](0, v78, v79, v77);
        v82 = v77;
        v15 = v141;
        _Block_release(v82);

        v83 = v80;
        v11 = v143;
        (*&v116->_os_unfair_lock_opaque)(v79, v83);
        (*v115)(v78, v119);
      }

      else
      {

        v138 = 0;
        v132 = 3;
      }

      if (v15 == sub_1DACB9324() && v6 == v84)
      {
      }

      else
      {
        v85 = sub_1DACBA174();

        if ((v85 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v86 = [v11 removedSymbols];
      v87 = sub_1DACB9644();

      v88 = *(v87 + 16);
      if (v88)
      {
        v89 = (v87 + 40);
        do
        {
          v90 = *(v89 - 1);
          v91 = *v89;
          sub_1DACB71E4();
          sub_1DAC9DF4C(v90, v91);

          v89 += 2;
          --v88;
        }

        while (v88);
      }

      v11 = v143;
LABEL_52:
      v92 = [v11 symbolsPostDiff];
      v93 = sub_1DACB9644();

      v94 = [v143 symbolsPreDiff];
      v11 = v143;
      v95 = sub_1DACB9644();

      v10 = *(v93 + 16);
      if (v10 == *(v95 + 16))
      {
        if (v10)
        {
          v96 = v93 == v95;
        }

        else
        {
          v96 = 1;
        }

        if (!v96)
        {
          v100 = 0;
          while (v10)
          {
            v101 = *(v93 + v100 + 32) == *(v95 + v100 + 32) && *(v93 + v100 + 40) == *(v95 + v100 + 40);
            if (!v101 && (sub_1DACBA174() & 1) == 0)
            {
              goto LABEL_73;
            }

            v100 += 16;
            if (!--v10)
            {

              goto LABEL_76;
            }
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

LABEL_76:
      }

      else
      {
LABEL_73:

        v102 = [v11 symbolsPostDiff];
        v103 = sub_1DACB9644();

        v104 = [v11 symbolsPreDiff];
        v105 = sub_1DACB9644();

        aBlock = v103;
        sub_1DAC28658(v105);
        v106 = sub_1DAA5518C(aBlock);

        *(swift_allocObject() + 16) = v106;
        sub_1DAA7F334();
        sub_1DACB8BA4();

        v107 = swift_allocObject();
        v108 = v139;
        *(v107 + 16) = v11;
        *(v107 + 24) = v108;
        v109 = v129;
        *(v107 + 32) = v133;
        *(v107 + 40) = v109;
        *(v107 + 48) = v138;
        *(v107 + 56) = v131;
        *(v107 + 57) = v132;
        *(v107 + 64) = v15;
        *(v107 + 72) = v6;
        *(v107 + 80) = v3;
        v110 = v11;
        sub_1DACB71F4();
        v111 = sub_1DACB89D4();
        v11 = sub_1DACB8A84();

        v6 = sub_1DACB89D4();
        sub_1DACB8AA4();
      }

      v10 = v114;
      v15 = v136;
      v22 = v135;
      v26 = v134;
    }

    else
    {
LABEL_17:
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_80;
    }

    if (v28 >= v26)
    {
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
    if (v25)
    {
      v3 = v10;
      v27 = v28;
      goto LABEL_11;
    }
  }
}

id sub_1DAC9FE7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 updatedSortState];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 integerValue];
    v9 = [a1 updatedSortOrderState];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 integerValue];
    }

    else
    {
      v11 = 0;
    }

    v16 = a3;
    v17 = v8;
    v18 = v11;
    v19 = v10 == 0;
  }

  else
  {
    result = [a1 updatedSortOrderState];
    if (!result)
    {
      *a3 = -2;
      return result;
    }

    v13 = *(&unk_1DACDE7B0 + ((*(a2 + 40) >> 2) & 0x38));
    v14 = result;
    v15 = [result integerValue];

    v16 = a3;
    v17 = v13;
    v18 = v15;
    v19 = 0;
  }

  return sub_1DABF7EBC(v17, v18, v19, v16);
}

uint64_t sub_1DAC9FFC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, unsigned __int8 *a6@<X5>, void *a7@<X8>)
{
  v199 = a4;
  v200 = a2;
  v197 = a3;
  v198 = a7;
  sub_1DAC62ADC(0);
  v206 = *(v10 - 8);
  v207 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v202 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v201 = &v194 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v205 = &v194 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v204 = (&v194 - v17);
  v18 = *a5;
  v19 = *(a1 + 16);
  v195 = *a6;
  v196 = v18;
  if (v19)
  {
    v20 = (a1 + 32);
    v21 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v35 = v20[7];
      v217 = v20[6];
      v218 = v35;
      v219 = *(v20 + 16);
      v36 = v20[3];
      v213 = v20[2];
      v214 = v36;
      v37 = v20[5];
      v215 = v20[4];
      v216 = v37;
      v38 = v20[1];
      v211 = *v20;
      v212 = v38;
      v39 = v38;
      sub_1DAA806E4(&v211, v209);
      sub_1DAA806E4(&v211, v209);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v208 = v21;
      v42 = sub_1DAA4BF3C(v39, *(&v39 + 1));
      v43 = v21[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      v46 = v41;
      if (v21[3] >= v45)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v41)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1DAB656FC();
          if (v46)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1DAA80804(v45, isUniquelyReferenced_nonNull_native);
        v47 = sub_1DAA4BF3C(v39, *(&v39 + 1));
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_88;
        }

        v42 = v47;
        if (v46)
        {
LABEL_3:
          v21 = v208;
          v22 = v208[7] + 136 * v42;
          v209[0] = *v22;
          v23 = *(v22 + 64);
          v25 = *(v22 + 16);
          v24 = *(v22 + 32);
          v209[3] = *(v22 + 48);
          v209[4] = v23;
          v209[1] = v25;
          v209[2] = v24;
          v27 = *(v22 + 96);
          v26 = *(v22 + 112);
          v28 = *(v22 + 80);
          v210 = *(v22 + 128);
          v209[6] = v27;
          v209[7] = v26;
          v209[5] = v28;
          *v22 = v211;
          v29 = v212;
          v30 = v213;
          v31 = v215;
          *(v22 + 48) = v214;
          *(v22 + 64) = v31;
          *(v22 + 16) = v29;
          *(v22 + 32) = v30;
          v32 = v216;
          v33 = v217;
          v34 = v218;
          *(v22 + 128) = v219;
          *(v22 + 96) = v33;
          *(v22 + 112) = v34;
          *(v22 + 80) = v32;
          sub_1DAA9B1C8(v209);
          sub_1DAA9B1C8(&v211);
          goto LABEL_4;
        }
      }

      v21 = v208;
      v208[(v42 >> 6) + 8] |= 1 << v42;
      *(v21[6] + 16 * v42) = v39;
      v49 = v21[7] + 136 * v42;
      v50 = v219;
      v52 = v217;
      v51 = v218;
      *(v49 + 80) = v216;
      *(v49 + 96) = v52;
      *(v49 + 112) = v51;
      *(v49 + 128) = v50;
      v54 = v214;
      v53 = v215;
      v55 = v213;
      *(v49 + 16) = v212;
      *(v49 + 32) = v55;
      *(v49 + 48) = v54;
      *(v49 + 64) = v53;
      *v49 = v211;
      sub_1DACB71E4();
      sub_1DAA9B1C8(&v211);
      v56 = v21[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_87;
      }

      v21[2] = v58;
LABEL_4:
      v20 = (v20 + 136);
      if (!--v19)
      {
        goto LABEL_17;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC8];
LABEL_17:
  v59 = v200;
  v60 = [v200 addedSymbols];
  v61 = sub_1DACB9644();

  v62 = *(v61 + 16);
  if (v62)
  {
    LODWORD(v203) = *MEMORY[0x1E69D6590];
    v63 = (v206 + 104);
    v194 = v61;
    v64 = (v61 + 40);
    v65 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v21[2])
      {
        v66 = *(v64 - 1);
        v67 = *v64;
        sub_1DACB71E4();
        v68 = sub_1DAA4BF3C(v66, v67);
        v70 = v69;

        if (v70)
        {
          v71 = (v21[7] + 136 * v68);
          v211 = *v71;
          v72 = v71[3];
          v73 = v71[4];
          v74 = v71[2];
          v212 = v71[1];
          v213 = v74;
          v214 = v72;
          v215 = v73;
          v75 = v71[5];
          v76 = v71[6];
          v77 = v71[7];
          v219 = *(v71 + 16);
          v217 = v76;
          v218 = v77;
          v216 = v75;
          v78 = v204;
          memmove(v204, v71, 0x88uLL);
          (*v63)(v78, v203, v207);
          sub_1DAA806E4(&v211, v209);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_1DAADBA48(0, v65[2] + 1, 1, v65);
          }

          v80 = v65[2];
          v79 = v65[3];
          if (v80 >= v79 >> 1)
          {
            v65 = sub_1DAADBA48((v79 > 1), v80 + 1, 1, v65);
          }

          v65[2] = v80 + 1;
          (*(v206 + 32))(v65 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v80, v204, v207);
        }
      }

      v64 += 2;
      --v62;
    }

    while (v62);

    v59 = v200;
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  v81 = [v59 removedSymbols];
  v82 = sub_1DACB9644();

  v83 = *(v82 + 16);
  if (v83)
  {
    LODWORD(v204) = *MEMORY[0x1E69D6598];
    v84 = (v206 + 104);
    v203 = v82;
    v85 = (v82 + 40);
    do
    {
      if (v21[2])
      {
        v86 = *(v85 - 1);
        v87 = *v85;
        sub_1DACB71E4();
        v88 = sub_1DAA4BF3C(v86, v87);
        v90 = v89;

        if (v90)
        {
          v91 = (v21[7] + 136 * v88);
          v211 = *v91;
          v92 = v91[3];
          v93 = v91[4];
          v94 = v91[2];
          v212 = v91[1];
          v213 = v94;
          v214 = v92;
          v215 = v93;
          v95 = v91[5];
          v96 = v91[6];
          v97 = v91[7];
          v219 = *(v91 + 16);
          v217 = v96;
          v218 = v97;
          v216 = v95;
          v98 = v205;
          memmove(v205, v91, 0x88uLL);
          (*v84)(v98, v204, v207);
          sub_1DAA806E4(&v211, v209);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = sub_1DAADBA48(0, v65[2] + 1, 1, v65);
          }

          v100 = v65[2];
          v99 = v65[3];
          if (v100 >= v99 >> 1)
          {
            v65 = sub_1DAADBA48((v99 > 1), v100 + 1, 1, v65);
          }

          v65[2] = v100 + 1;
          (*(v206 + 32))(v65 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v100, v205, v207);
        }
      }

      v85 += 2;
      --v83;
    }

    while (v83);
  }

  v101 = v200;
  v102 = [v200 addedSymbols];
  v103 = sub_1DACB9644();

  v104 = *(v103 + 16);
  v194 = v103;
  if (v104)
  {
    LODWORD(v205) = *MEMORY[0x1E69D6588];
    v203 = v206 + 32;
    v204 = (v206 + 104);
    v105 = (v103 + 40);
    do
    {
      if (v21[2])
      {
        v106 = *(v105 - 1);
        v107 = *v105;
        sub_1DACB71E4();
        v108 = sub_1DAA4BF3C(v106, v107);
        if (v109)
        {
          v110 = v21[7] + 136 * v108;
          v211 = *v110;
          v111 = *(v110 + 48);
          v112 = *(v110 + 64);
          v113 = *(v110 + 32);
          v212 = *(v110 + 16);
          v213 = v113;
          v214 = v111;
          v215 = v112;
          v114 = *(v110 + 80);
          v115 = *(v110 + 96);
          v116 = *(v110 + 112);
          v219 = *(v110 + 128);
          v217 = v115;
          v218 = v116;
          v216 = v114;
          sub_1DAA806E4(&v211, v209);
          v117 = [v101 indexesOfAddedSymbols];
          sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
          v118 = sub_1DACB9124();

          if (*(v118 + 16))
          {
            v119 = sub_1DAA4BF3C(v106, v107);
            v121 = v120;

            if (v121)
            {
              v122 = *(*(v118 + 56) + 8 * v119);

              v123 = [v122 integerValue];

              v124 = v218;
              v125 = v201;
              *(v201 + 6) = v217;
              *(v125 + 7) = v124;
              v126 = v219;
              v127 = v214;
              *(v125 + 2) = v213;
              *(v125 + 3) = v127;
              v128 = v216;
              *(v125 + 4) = v215;
              *(v125 + 5) = v128;
              v129 = v212;
              *v125 = v211;
              *(v125 + 1) = v129;
              *(v125 + 16) = v126;
              *(v125 + 17) = v123;
              (*v204)();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_1DAADBA48(0, v65[2] + 1, 1, v65);
              }

              v131 = v65[2];
              v130 = v65[3];
              if (v131 >= v130 >> 1)
              {
                v65 = sub_1DAADBA48((v130 > 1), v131 + 1, 1, v65);
              }

              v65[2] = v131 + 1;
              (*(v206 + 32))(v65 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v131, v201, v207);
              goto LABEL_42;
            }

            sub_1DAA9B1C8(&v211);
          }

          else
          {
            sub_1DAA9B1C8(&v211);
          }
        }
      }

LABEL_42:
      v105 += 2;
      --v104;
    }

    while (v104);
  }

  v132 = [v101 reorderedSymbols];
  v133 = sub_1DACB9644();

  v134 = *(v133 + 16);
  v201 = v133;
  if (v134)
  {
    LODWORD(v205) = *MEMORY[0x1E69D6588];
    v203 = v206 + 32;
    v204 = (v206 + 104);
    v135 = (v133 + 40);
    do
    {
      if (v21[2])
      {
        v136 = *(v135 - 1);
        v137 = *v135;
        sub_1DACB71E4();
        v138 = sub_1DAA4BF3C(v136, v137);
        if (v139)
        {
          v140 = v21[7] + 136 * v138;
          v211 = *v140;
          v141 = *(v140 + 48);
          v142 = *(v140 + 64);
          v143 = *(v140 + 32);
          v212 = *(v140 + 16);
          v213 = v143;
          v214 = v141;
          v215 = v142;
          v144 = *(v140 + 80);
          v145 = *(v140 + 96);
          v146 = *(v140 + 112);
          v219 = *(v140 + 128);
          v217 = v145;
          v218 = v146;
          v216 = v144;
          sub_1DAA806E4(&v211, v209);
          v147 = [v101 indexesOfReorderedSymbols];
          sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
          v148 = sub_1DACB9124();

          if (*(v148 + 16))
          {
            v149 = sub_1DAA4BF3C(v136, v137);
            v151 = v150;

            if (v151)
            {
              v152 = *(*(v148 + 56) + 8 * v149);

              v153 = [v152 integerValue];

              v154 = v218;
              v155 = v202;
              *(v202 + 6) = v217;
              *(v155 + 7) = v154;
              v156 = v219;
              v157 = v214;
              *(v155 + 2) = v213;
              *(v155 + 3) = v157;
              v158 = v216;
              *(v155 + 4) = v215;
              *(v155 + 5) = v158;
              v159 = v212;
              *v155 = v211;
              *(v155 + 1) = v159;
              *(v155 + 16) = v156;
              *(v155 + 17) = v153;
              (*v204)();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_1DAADBA48(0, v65[2] + 1, 1, v65);
              }

              v161 = v65[2];
              v160 = v65[3];
              if (v161 >= v160 >> 1)
              {
                v65 = sub_1DAADBA48((v160 > 1), v161 + 1, 1, v65);
              }

              v65[2] = v161 + 1;
              (*(v206 + 32))(v65 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v161, v202, v207);
              goto LABEL_57;
            }

            sub_1DAA9B1C8(&v211);
          }

          else
          {
            sub_1DAA9B1C8(&v211);
          }
        }
      }

LABEL_57:
      v135 += 2;
      --v134;
    }

    while (v134);
  }

  v162 = [v101 symbolsPostDiff];
  v163 = sub_1DACB9644();

  v164 = *(v163 + 16);
  if (v164)
  {
    v165 = 0;
    v166 = v163 + 40;
    v207 = v164 - 1;
    v167 = MEMORY[0x1E69E7CC0];
    v206 = v163 + 40;
LABEL_71:
    v168 = (v166 + 16 * v165);
    v169 = v165;
    while (v169 < *(v163 + 16))
    {
      if (v21[2])
      {
        v170 = *(v168 - 1);
        v171 = *v168;
        sub_1DACB71E4();
        v172 = sub_1DAA4BF3C(v170, v171);
        if (v173)
        {
          v174 = v21[7] + 136 * v172;
          v211 = *v174;
          v175 = *(v174 + 48);
          v176 = *(v174 + 64);
          v177 = *(v174 + 32);
          v212 = *(v174 + 16);
          v213 = v177;
          v214 = v175;
          v215 = v176;
          v178 = *(v174 + 80);
          v179 = *(v174 + 96);
          v180 = *(v174 + 112);
          v219 = *(v174 + 128);
          v217 = v179;
          v218 = v180;
          v216 = v178;
          sub_1DAA806E4(&v211, v209);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v167 = sub_1DAA5A0A8(0, *(v167 + 2) + 1, 1, v167);
          }

          v166 = v206;
          v182 = *(v167 + 2);
          v181 = *(v167 + 3);
          if (v182 >= v181 >> 1)
          {
            v167 = sub_1DAA5A0A8((v181 > 1), v182 + 1, 1, v167);
          }

          v165 = v169 + 1;
          *(v167 + 2) = v182 + 1;
          v183 = &v167[136 * v182];
          *(v183 + 2) = v211;
          v184 = v212;
          v185 = v213;
          v186 = v215;
          *(v183 + 5) = v214;
          *(v183 + 6) = v186;
          *(v183 + 3) = v184;
          *(v183 + 4) = v185;
          v187 = v216;
          v188 = v217;
          v189 = v218;
          *(v183 + 20) = v219;
          *(v183 + 8) = v188;
          *(v183 + 9) = v189;
          *(v183 + 7) = v187;
          if (v207 != v169)
          {
            goto LABEL_71;
          }

          goto LABEL_84;
        }
      }

      ++v169;
      v168 += 2;
      if (v164 == v169)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_86;
  }

  v167 = MEMORY[0x1E69E7CC0];
LABEL_84:

  v191 = v197;
  v190 = v198;
  *v198 = v65;
  v190[1] = v167;
  v192 = v199;
  v190[2] = v191;
  v190[3] = v192;
  LOBYTE(v191) = v195;
  *(v190 + 32) = v196;
  *(v190 + 33) = v191;
  return sub_1DACB71E4();
}

void sub_1DACA0E28(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 152));
  v4 = *(a1 + 160);
  sub_1DACB71E4();
  os_unfair_lock_unlock((a1 + 152));
  if (v4 >> 62)
  {
    v5 = sub_1DACB9E14();
    if (v5)
    {
LABEL_3:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = 0;
        v16 = v4 & 0xC000000000000001;
        do
        {
          if (v16)
          {
            v13 = MEMORY[0x1E12777A0](v6, v4);
          }

          else
          {
            v13 = *(v4 + 8 * v6 + 32);
            sub_1DACB71F4();
          }

          v21[3] = type metadata accessor for WatchlistManager();
          v21[4] = &off_1F5692AD8;
          v21[0] = a1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v7 = *(v13 + 24);
            ObjectType = swift_getObjectType();
            v9 = *(a2 + 16);
            v19[0] = *a2;
            v19[1] = v9;
            v20 = *(a2 + 32);
            v10 = a3[1];
            v17 = *a3;
            v18[0] = v10;
            *(v18 + 10) = *(a3 + 26);
            v11 = v4;
            v12 = *(v7 + 8);
            sub_1DACB71F4();
            v12(v21, v19, &v17, ObjectType, v7);
            v4 = v11;
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          ++v6;
          __swift_destroy_boxed_opaque_existential_1(v21);
        }

        while (v5 != v6);
      }

      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1DACA1000(void *a1, uint64_t a2)
{
  v4 = sub_1DACB8204();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1DACB7CC4();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1DACB8344();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1DACB81B4();
  v40 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE13E318;
  sub_1DAA41D64(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D40;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = MEMORY[0x1E69E6530];
  *(v10 + 64) = v12;
  *(v10 + 32) = v11;
  v13 = MEMORY[0x1E69E6158];
  v14 = sub_1DACB9814();
  v16 = v15;
  *(v10 + 96) = v13;
  *(v10 + 104) = sub_1DAA443C8();
  *(v10 + 72) = v14;
  *(v10 + 80) = v16;
  v17 = sub_1DACB9914();
  sub_1DACB8C64("WatchlistManager will fetch metadata for the symbols, count=%ld, symbols=%@", 75, 2, &dword_1DAA3F000, v9, v17, v10);

  v18 = a1[17];
  v19 = a1[18];
  v20 = __swift_project_boxed_opaque_existential_1(a1 + 14, v18);
  v21 = *(a2 + 16);
  v37 = v20;
  v38 = v18;
  if (!v21)
  {
    v25 = v19;
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v36 = sub_1DAA7D2EC(v21, 0);
  v22 = sub_1DAB05C50(&v50, v36 + 4, v21, a2);
  v23 = v50;
  sub_1DACB71E4();
  result = sub_1DAA54B38(v23);
  if (v22 == v21)
  {
    v25 = v19;
    v26 = v36;
LABEL_7:
    v27 = v39;
    v28 = v40;
    (*(v40 + 104))(v39, *MEMORY[0x1E69D63C8], v51);
    v29 = v41;
    sub_1DACB8334();
    v30 = v43;
    sub_1DACB7CB4();
    v32 = v48;
    v31 = v49;
    v33 = v46;
    (*(v48 + 104))(v46, *MEMORY[0x1E69D6490], v49);
    v34 = (*(v25 + 8))(v26, v27, v29, v30, v33, v38, v25);

    (*(v32 + 8))(v33, v31);
    (*(v45 + 8))(v30, v47);
    (*(v42 + 8))(v29, v44);
    (*(v28 + 8))(v27, v51);
    return v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DACA14D4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v58 = a6;
  v50 = a7;
  v57 = a5;
  v11 = sub_1DACB8FB4();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DACB9004();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE13E318;
  sub_1DAA41D64(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DACC1D40;
  v17 = *(v14 + 16);
  v18 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = MEMORY[0x1E69E6530];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  v19 = MEMORY[0x1E69E6158];
  v20 = sub_1DACB9184();
  v22 = v21;
  *(v16 + 96) = v19;
  *(v16 + 104) = sub_1DAA443C8();
  *(v16 + 72) = v20;
  *(v16 + 80) = v22;
  v23 = sub_1DACB9914();
  sub_1DACB8C64("WatchlistManager fetched metadata with, count=%ld, stocks=%@", 60, 2, &dword_1DAA3F000, v15, v23, v16);

  v24 = v59;
  v25 = sub_1DAC95A64(v14);
  v59 = v24;
  v26 = [a3 updatedName];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1DACB9324();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  LOBYTE(aBlock[0]) = *(a4 + 32);
  v63 = *(a4 + 33);
  sub_1DAC9FFC4(v25, a3, v28, v30, aBlock, &v63, v61);

  os_unfair_lock_lock((a2 + 48));
  v31 = *(a2 + 64);
  if (*(v31 + 16) && (v32 = sub_1DAA4BF3C(v57, v58), (v33 & 1) != 0))
  {
    v34 = *(v31 + 56) + 48 * v32;
    v36 = *v34;
    v35 = *(v34 + 8);
    v38 = *(v34 + 16);
    v37 = *(v34 + 24);
    v39 = *(v34 + 32);
    v40 = *(v34 + 40);
    v41 = *(v34 + 41);
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    os_unfair_lock_unlock((a2 + 48));
    if (v35)
    {
      sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
      v58 = sub_1DACB9954();
      v42 = swift_allocObject();
      *(v42 + 16) = v50;
      *(v42 + 24) = a2;
      v43 = v61[1];
      *(v42 + 32) = v61[0];
      *(v42 + 48) = v43;
      *(v42 + 64) = v62;
      *(v42 + 72) = v36;
      *(v42 + 80) = v35;
      *(v42 + 88) = v38;
      *(v42 + 96) = v37;
      *(v42 + 104) = v39;
      *(v42 + 112) = v40;
      *(v42 + 113) = v41;
      aBlock[4] = sub_1DACA82A8;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAA5796C;
      aBlock[3] = &block_descriptor_233;
      v44 = _Block_copy(aBlock);
      sub_1DACB71F4();
      sub_1DACB71F4();

      v45 = v51;
      sub_1DACB8FD4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA59D78(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1DAA59DC0(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1DAA6F790();
      v46 = v53;
      v47 = v56;
      sub_1DACB9BB4();
      v48 = v58;
      MEMORY[0x1E1277440](0, v45, v46, v44);
      _Block_release(v44);

      (*(v55 + 8))(v46, v47);
      return (*(v52 + 8))(v45, v54);
    }
  }

  else
  {
    os_unfair_lock_unlock((a2 + 48));
  }

  return sub_1DACA8254(v61);
}

void sub_1DACA1A1C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  os_unfair_lock_lock((a1 + 152));
  v6 = *(a1 + 160);
  sub_1DACB71E4();
  os_unfair_lock_unlock((a1 + 152));
  if (v6 >> 62)
  {
    v7 = sub_1DACB9E14();
    if (v7)
    {
LABEL_3:
      if (v7 < 1)
      {
        __break(1u);
      }

      else
      {
        v8 = 0;
        v18 = v6 & 0xC000000000000001;
        do
        {
          if (v18)
          {
            v15 = MEMORY[0x1E12777A0](v8, v6);
          }

          else
          {
            v15 = *(v6 + 8 * v8 + 32);
            sub_1DACB71F4();
          }

          v23[3] = type metadata accessor for WatchlistManager();
          v23[4] = &off_1F5692AD8;
          v23[0] = a2;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v9 = *(v15 + 24);
            ObjectType = swift_getObjectType();
            v11 = *(a3 + 16);
            v21[0] = *a3;
            v21[1] = v11;
            v22 = *(a3 + 32);
            v12 = a4[1];
            v19 = *a4;
            v20[0] = v12;
            *(v20 + 10) = *(a4 + 26);
            v13 = v6;
            v14 = *(v9 + 8);
            sub_1DACB71F4();
            v14(v23, v21, &v19, ObjectType, v9);
            v6 = v13;
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          ++v8;
          __swift_destroy_boxed_opaque_existential_1(v23);
        }

        while (v7 != v8);
      }

      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1DACA1C08(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE13E318;
  v6 = sub_1DACB9904();
  sub_1DAA41D64(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10, MEMORY[0x1E69E7280]);
  sub_1DACB9DD4();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1DAA443C8();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1DACB8C64(a2, a3, 2, &dword_1DAA3F000, v5, v6, v7);
}

void sub_1DACA1D40(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  sub_1DAB1BC70();
  v6 = v5;
  v105 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v84 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v83 - v9);
  sub_1DACA7CB0(0);
  v104 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v101 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAA59DC0(0, &qword_1EE11F980, sub_1DACA7CB0, MEMORY[0x1E69E6720]);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v103 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v83 - v17);
  v19 = *a2;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  sub_1DACB71E4();
  v20 = sub_1DACB9AD4();
  v21 = sub_1DACB9914();

  v22 = os_log_type_enabled(v20, v21);
  v106 = v3;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v113 = v12;
    v114 = v24;
    v25 = v24;
    *v23 = 136315138;
    v121 = v19;
    sub_1DACB71E4();
    v26 = sub_1DAC62418();
    v28 = v27;

    v29 = sub_1DAA7ABE4(v26, v28, &v114);
    v3 = v106;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1DAA3F000, v20, v21, "WatchlistManager received watchlist order changes with %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v30 = v25;
    v12 = v113;
    MEMORY[0x1E1278C00](v30, -1, -1);
    MEMORY[0x1E1278C00](v23, -1, -1);
  }

  v121 = v19;
  v31 = *(v19 + 16);
  v100 = v105 + 16;
  v112 = (v12 + 56);
  v113 = v31;
  v110 = (v105 + 32);
  v111 = (v12 + 48);
  v109 = (v105 + 88);
  v108 = *MEMORY[0x1E69D6590];
  v107 = *MEMORY[0x1E69D6598];
  v98 = (v105 + 8);
  v99 = (v105 + 96);
  v97 = @"watchlist";
  v102 = v19;
  sub_1DACB71E4();
  v85 = 0;
  v32 = 0;
  v86 = 0;
  v34 = v103;
  v33 = v104;
  v94 = v10;
  v96 = v18;
  v95 = v6;
  while (1)
  {
    if (v32 == v113)
    {
      v35 = 1;
      v32 = v113;
    }

    else
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      if (v32 >= *(v102 + 16))
      {
        goto LABEL_39;
      }

      v36 = v105;
      v37 = v102 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32;
      v38 = *(v33 + 48);
      v39 = v101;
      *v101 = v32;
      (*(v36 + 16))(v39 + v38, v37, v6);
      sub_1DAA7C62C(v39, v34, sub_1DACA7CB0);
      v35 = 0;
      ++v32;
    }

    (*v112)(v34, v35, 1, v33);
    sub_1DACA7D1C(v34, v18);
    if ((*v111)(v18, 1, v33) == 1)
    {
      break;
    }

    v40 = *v18;
    (*v110)(v10, v18 + *(v33 + 48), v6);
    v41 = (*v109)(v10, v6);
    if (v41 == v108)
    {
      (*v99)(v10, v6);
      v75 = *v10;
      v74 = v10[1];
      os_unfair_lock_lock(v3 + 12);
      v114 = v75;
      v115 = v74;
      MEMORY[0x1EEE9AC00](v76);
      *(&v83 - 2) = &v114;
      v77 = v86;
      LOBYTE(v75) = sub_1DAC78448(sub_1DAC49E88, (&v83 - 4), v78);
      v86 = v77;

      if (v75)
      {
        v79 = v84;
        sub_1DAC961CC(v40, v84);
        (*v98)(v79, v6);
      }

      os_unfair_lock_unlock(v3 + 12);
      v85 = 1;
      v34 = v103;
      v33 = v104;
    }

    else if (v41 == v107)
    {
      (*v99)(v10, v6);
      v42 = *v10;
      v43 = v10[1];
      os_unfair_lock_lock(v3 + 12);
      v44 = sub_1DAA4BF3C(v42, v43);
      if (v45)
      {
        v46 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *&v3[16]._os_unfair_lock_opaque;
        v114 = v48;
        *&v3[16]._os_unfair_lock_opaque = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DAB658E0();
          v48 = v114;
        }

        sub_1DAB6493C(v46, v48);
        *&v3[16]._os_unfair_lock_opaque = v48;

        v10 = v94;
      }

      v49 = sub_1DACB9324();
      v51 = *&v3[16]._os_unfair_lock_opaque;
      if (!*(v51 + 16))
      {

LABEL_24:
        v3 = v106;
        os_unfair_lock_unlock(v106 + 12);
LABEL_25:

        v34 = v103;
        v33 = v104;
        v6 = v95;
        goto LABEL_26;
      }

      v52 = sub_1DAA4BF3C(v49, v50);
      v54 = v53;

      if ((v54 & 1) == 0)
      {
        goto LABEL_24;
      }

      v55 = *(v51 + 56) + 48 * v52;
      v56 = *(v55 + 8);
      v90 = *v55;
      v57 = *(v55 + 16);
      v93 = *(v55 + 24);
      v58 = *(v55 + 32);
      v59 = *(v55 + 40);
      v60 = *(v55 + 41);
      sub_1DACB71E4();
      v92 = v57;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v3 = v106;
      os_unfair_lock_unlock(v106 + 12);
      v91 = v56;
      if (!v56)
      {
        goto LABEL_25;
      }

      v89 = v58;
      v88 = v59;
      v87 = v60;
      sub_1DACB8F34();
      v61 = v117;
      v62 = v118;

      if (v61 == v42 && v62 == v43)
      {

        v6 = v95;
      }

      else
      {
        v63 = sub_1DACBA174();

        v6 = v95;
        if ((v63 & 1) == 0)
        {
          v69 = v90;
          v70 = v91;
          v71 = v92;
          v72 = v93;
          v73 = v89;
          goto LABEL_33;
        }
      }

      v64 = v90;
      v65 = v91;
      v114 = v90;
      v115 = v91;
      v66 = v92;
      v67 = v93;
      v116 = v92;
      v117 = v93;
      v68 = v89;
      v118 = v89;
      v119 = v88;
      v120 = v87;
      sub_1DACB8F24();
      v69 = v64;
      v70 = v65;
      v71 = v66;
      v72 = v67;
      v73 = v68;
LABEL_33:
      sub_1DAA75E60(v69, v70, v71, v72, v73);
      v3 = v106;
      v34 = v103;
      v33 = v104;
LABEL_26:
      v18 = v96;
    }

    else
    {
      (*v98)(v10, v6);
    }
  }

  os_unfair_lock_lock(v3 + 12);
  sub_1DACA2740(&v3[14], &v121);
  os_unfair_lock_unlock(v3 + 12);
  if (v85)
  {
    v80 = *&v3[24]._os_unfair_lock_opaque;
    v81 = *&v3[26]._os_unfair_lock_opaque;
    __swift_project_boxed_opaque_existential_1(&v3[18]._os_unfair_lock_opaque, v80);
    (*(v81 + 120))(v80, v81);
    sub_1DACB71F4();
    v82 = sub_1DACB89D4();
    sub_1DACB8A64();
  }

  else
  {
    sub_1DAA75EB0();
  }

  sub_1DACA3274();
}

void sub_1DACA2740(uint64_t *a1, uint64_t *a2)
{
  v36 = *a1;
  sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
  sub_1DACB71E4();
  v4 = sub_1DACB9AD4();
  v5 = sub_1DACB9914();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35[0] = v7;
    *v6 = 136315138;
    v8 = sub_1DACB71E4();
    v9 = MEMORY[0x1E1277130](v8, MEMORY[0x1E69E6158]);
    v11 = v10;

    v12 = sub_1DAA7ABE4(v9, v11, v35);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "WatchlistManager watchlist order before applying changes: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v35[3] = *a2;
  swift_beginAccess();
  sub_1DAA5A8BC(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA59DC0(0, &qword_1EE11FA78, sub_1DAB1BC70, MEMORY[0x1E69E62F8]);
  sub_1DACA801C();
  sub_1DACA8098();
  sub_1DACB71E4();
  sub_1DACB98C4();
  swift_endAccess();

  v13 = v36;
  v14 = sub_1DACB9324();
  v16 = v15;
  v17 = *(v13 + 16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v14;
  v19 = 0;
  v20 = (v13 + 40);
  while (1)
  {
    v21 = *(v20 - 1) == v18 && *v20 == v16;
    if (v21 || (sub_1DACBA174() & 1) != 0)
    {
      break;
    }

    ++v19;
    v20 += 2;
    if (v17 == v19)
    {
      goto LABEL_14;
    }
  }

  if (v19)
  {
    swift_beginAccess();
    sub_1DAC962D4(v19);
    swift_endAccess();

    v22 = sub_1DACB9324();
    v24 = v23;
    swift_beginAccess();
    sub_1DACA6A9C(0, 0, v22, v24);
    swift_endAccess();
LABEL_14:
  }

  v25 = v36;
  sub_1DACB71E4();

  *a1 = v25;
  v26 = sub_1DACB9AD4();
  v27 = sub_1DACB9914();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v28 = 136315138;
    v30 = sub_1DACB71E4();
    v31 = MEMORY[0x1E1277130](v30, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1DAA7ABE4(v31, v33, v35);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1DAA3F000, v26, v27, "WatchlistManager watchlist order after applying changes: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E1278C00](v29, -1, -1);
    MEMORY[0x1E1278C00](v28, -1, -1);
  }
}

void sub_1DACA2B98(uint64_t *a1, os_unfair_lock_s *a2)
{
  v4 = *a1;
  os_unfair_lock_lock(a2 + 12);
  sub_1DACA2C04(&a2[14], v4);
  os_unfair_lock_unlock(a2 + 12);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_1DAA75EB0();
  }
}

uint64_t sub_1DACA2C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB92E4();
  v7 = MEMORY[0x1EEE9AC00](v6);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v77 - v10;
  v13 = *(a2 + 16);
  if (!v13)
  {
    return result;
  }

  v78 = (v9 + 8);
  v79 = (v9 + 16);
  v14 = (a2 + 73);
  v83 = a1;
  v84 = @"watchlist";
  v82 = &v77 - v10;
  v80 = v11;
  while (1)
  {
    v17 = v6;
    v85 = *(v14 - 41);
    v86 = v13;
    v18 = *(v14 - 33);
    v19 = *(v14 - 25);
    v20 = *(v14 - 17);
    v21 = *(v14 - 9);
    v22 = *v14;
    v87 = *(v14 - 1);
    v88 = v22;
    v24 = v20 == sub_1DACB9324() && v21 == v23;
    v89 = v18;
    v90 = v19;
    v91 = v20;
    if (v24)
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
    }

    else
    {
      v25 = sub_1DACBA174();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if ((v25 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = *(a1 + 8);
        v27 = v92;
        v28 = v91;
        v29 = sub_1DAA4BF3C(v91, v21);
        v31 = v27[2];
        v32 = (v30 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          goto LABEL_39;
        }

        v35 = v30;
        v6 = v17;
        if (v27[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = v29;
            sub_1DAB658E0();
            v29 = v68;
            v62 = v92;
            if (v35)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        else
        {
          sub_1DAA74978(v34, isUniquelyReferenced_nonNull_native);
          v29 = sub_1DAA4BF3C(v28, v21);
          if ((v35 & 1) != (v36 & 1))
          {
            goto LABEL_41;
          }
        }

        v62 = v92;
        if (v35)
        {
LABEL_29:
          v63 = v62[7] + 48 * v29;
          v64 = v28;
          v66 = v89;
          v65 = v90;
          *v63 = v85;
          *(v63 + 8) = v66;
          *(v63 + 16) = v65;
          *(v63 + 24) = v64;
          *(v63 + 32) = v21;
          LOBYTE(v64) = v88;
          *(v63 + 40) = v87;
          *(v63 + 41) = v64;

LABEL_35:
          v76 = v83;
          *(v83 + 8) = v62;
          a1 = v76;
          goto LABEL_5;
        }

LABEL_33:
        v62[(v29 >> 6) + 8] |= 1 << v29;
        v69 = (v62[6] + 16 * v29);
        *v69 = v28;
        v69[1] = v21;
        v70 = v62[7] + 48 * v29;
        v72 = v89;
        v71 = v90;
        *v70 = v85;
        *(v70 + 8) = v72;
        *(v70 + 16) = v71;
        *(v70 + 24) = v28;
        *(v70 + 32) = v21;
        v73 = v88;
        *(v70 + 40) = v87;
        *(v70 + 41) = v73;

        v74 = v62[2];
        v33 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v33)
        {
          goto LABEL_40;
        }

        v62[2] = v75;
        goto LABEL_35;
      }
    }

    sub_1DACB9284();
    v37 = v17;
    (*v79)(v80, v12, v17);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE13E470;
    sub_1DACB7DF4();
    v39 = sub_1DACB9384();
    v41 = v40;
    v42 = v12;
    v43 = v37;
    (*v78)(v42, v37);
    sub_1DACB71E4();
    sub_1DACB71E4();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(a1 + 8);
    v45 = v92;
    v47 = sub_1DAA4BF3C(v91, v21);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      break;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      v54 = v90;
      if (v44)
      {
        v55 = v92;
        if ((v46 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v67 = v90;
        sub_1DAB658E0();
        v54 = v67;
        v55 = v92;
        if ((v51 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_1DAA74978(v50, v44);
      v52 = sub_1DAA4BF3C(v91, v21);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_41;
      }

      v47 = v52;
      v54 = v90;
      v55 = v92;
      if ((v51 & 1) == 0)
      {
LABEL_25:
        v55[(v47 >> 6) + 8] |= 1 << v47;
        v56 = (v55[6] + 16 * v47);
        v57 = v91;
        *v56 = v91;
        v56[1] = v21;
        v58 = v55[7] + 48 * v47;
        *v58 = v39;
        *(v58 + 8) = v41;
        *(v58 + 16) = v54;
        *(v58 + 24) = v57;
        *(v58 + 32) = v21;
        v59 = v88;
        *(v58 + 40) = v87;
        *(v58 + 41) = v59;

        v60 = v55[2];
        v33 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v33)
        {
          goto LABEL_38;
        }

        v55[2] = v61;
        goto LABEL_4;
      }
    }

    v15 = v55[7] + 48 * v47;
    *v15 = v39;
    *(v15 + 8) = v41;
    v16 = v91;
    *(v15 + 16) = v54;
    *(v15 + 24) = v16;
    *(v15 + 32) = v21;
    LOBYTE(v16) = v88;
    *(v15 + 40) = v87;
    *(v15 + 41) = v16;

LABEL_4:
    a1 = v83;
    *(v83 + 8) = v55;
    v6 = v43;
LABEL_5:
    v12 = v82;
    v14 += 48;
    v13 = v86 - 1;
    if (v86 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DACA3274()
{
  v1 = v0;
  v2 = sub_1DACB8FB4();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9004();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB8FA4();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DACB9024();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = sub_1DACB9994();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v0 + 168));
  v19 = *(v0 + 176);
  *(v1 + 176) = 0;
  os_unfair_lock_unlock((v1 + 168));
  if (v19)
  {
    swift_getObjectType();
    sub_1DACB99F4();
    swift_unknownObjectRelease();
  }

  sub_1DAA420F4(0, &qword_1EE11F8A0, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&qword_1EE11F8A8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  sub_1DAA59DC0(0, &qword_1EE11F9D0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
  sub_1DACA7DCC();
  sub_1DACB9BB4();
  v20 = sub_1DACB99A4();
  (*(v16 + 8))(v18, v15);
  ObjectType = swift_getObjectType();
  sub_1DACB9014();
  sub_1DACB9034();
  v22 = v31;
  v23 = *(v30 + 8);
  v23(v12, v31);
  *v8 = 0;
  v25 = v32;
  v24 = v33;
  (*(v32 + 104))(v8, *MEMORY[0x1E69E7F28], v33);
  MEMORY[0x1E1277530](v14, v8, ObjectType, INFINITY);
  (*(v25 + 8))(v8, v24);
  v23(v14, v22);
  aBlock[4] = sub_1DACA7E54;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_181;
  v26 = _Block_copy(aBlock);
  sub_1DACB71F4();
  v27 = v34;
  sub_1DAC4A7BC(ObjectType);
  v28 = v37;
  sub_1DAA67C60();
  sub_1DACB99E4();
  _Block_release(v26);
  (*(v38 + 8))(v28, v39);
  (*(v35 + 8))(v27, v36);

  os_unfair_lock_lock((v1 + 168));
  swift_unknownObjectRelease();
  *(v1 + 176) = v20;
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 168));
  sub_1DACB9A04();
  return swift_unknownObjectRelease();
}

void sub_1DACA3810(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 168));
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  os_unfair_lock_unlock((a1 + 168));
  if (v2)
  {
    swift_getObjectType();
    sub_1DACB99F4();
    v3 = swift_unknownObjectRelease();
  }

  sub_1DACA3868(v3);
}

void sub_1DACA3868(uint64_t a1)
{
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E318;
  v2 = sub_1DACB9914();
  sub_1DACB8C64("WatchlistManager performing merge duplicate watchlist operation", 63, 2, &dword_1DAA3F000, v1, v2, MEMORY[0x1E69E7CC0]);
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v3 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v4 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DACA3A00(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (qword_1EE121840 != -1)
  {
LABEL_23:
    swift_once();
  }

  v3 = qword_1EE13E318;
  sub_1DAA41D64(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v5 = MEMORY[0x1E1277130](v2, &type metadata for Watchlist);
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_1DACB9914();
  sub_1DACB8C64("WatchlistManager mergeDuplicateWatchlist  all watchlists: %{public}@", 68, 2, &dword_1DAA3F000, v3, v8, v4);

  v37 = *(v2 + 16);
  if (v37)
  {
    v9 = 0;
    v10 = (v2 + 73);
    v11 = MEMORY[0x1E69E7CC8];
    v36 = v2;
    while (1)
    {
      if (v9 >= *(v2 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v38 = v9;
      v39 = *(v10 - 41);
      v2 = *(v10 - 25);
      v13 = *(v10 - 17);
      v14 = *(v10 - 9);
      v40 = *(v10 - 1);
      v41 = *v10;
      v42 = *(v10 - 33);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_1DAA4BF3C(v13, v14);
      v18 = v11[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_21;
      }

      v21 = v16;
      if (v11[3] >= v20)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1DAB658E0();
          if (v21)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1DAA74978(v20, isUniquelyReferenced_nonNull_native);
        v22 = sub_1DAA4BF3C(v13, v14);
        if ((v21 & 1) != (v23 & 1))
        {
          result = sub_1DACBA1F4();
          __break(1u);
          return result;
        }

        v17 = v22;
        if (v21)
        {
LABEL_4:
          v12 = v11[7] + 48 * v17;
          *v12 = v39;
          *(v12 + 8) = v42;
          *(v12 + 16) = v2;
          *(v12 + 24) = v13;
          *(v12 + 32) = v14;
          *(v12 + 40) = v40;
          *(v12 + 41) = v41;

          goto LABEL_5;
        }
      }

      v11[(v17 >> 6) + 8] |= 1 << v17;
      v24 = (v11[6] + 16 * v17);
      *v24 = v13;
      v24[1] = v14;
      v25 = v11[7] + 48 * v17;
      *v25 = v39;
      *(v25 + 8) = v42;
      *(v25 + 16) = v2;
      *(v25 + 24) = v13;
      *(v25 + 32) = v14;
      *(v25 + 40) = v40;
      *(v25 + 41) = v41;

      v26 = v11[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v11[2] = v28;
LABEL_5:
      v9 = v38 + 1;
      v10 += 48;
      v2 = v36;
      if (v37 == v38 + 1)
      {
        goto LABEL_19;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v29 = a2[12];
  v30 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v29);
  (*(v30 + 176))(v29, v30);
  *(swift_allocObject() + 16) = v11;
  v31 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8A54();

  *(swift_allocObject() + 16) = v2;
  sub_1DACB71E4();
  v32 = sub_1DACB89D4();
  v33 = sub_1DACB8B04();

  return v33;
}

uint64_t sub_1DACA3E70(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1EE121840 != -1)
  {
LABEL_18:
    swift_once();
  }

  v6 = qword_1EE13E318;
  sub_1DAA41D64(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  v8 = MEMORY[0x1E69E6158];
  v9 = MEMORY[0x1E1277130](v5, MEMORY[0x1E69E6158]);
  v11 = v10;
  *(v7 + 56) = v8;
  *(v7 + 64) = sub_1DAA443C8();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = sub_1DACB9914();
  sub_1DACB8C64("WatchlistManager mergeDuplicateWatchlist watchlistOrder: %{public}@", 67, 2, &dword_1DAA3F000, v6, v12, v7);

  v13 = *(v5 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v5 + 40;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v3;
      v18 = (v15 + 16 * v14);
      v3 = v14;
      while (1)
      {
        if (v3 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        if (*(a2 + 16))
        {
          break;
        }

LABEL_5:
        ++v3;
        v18 += 2;
        if (v13 == v3)
        {
          goto LABEL_16;
        }
      }

      v19 = *(v18 - 1);
      v20 = *v18;
      sub_1DACB71E4();
      v21 = sub_1DAA4BF3C(v19, v20);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v37 = v15;
      v23 = *(a2 + 56) + 48 * v21;
      v24 = *v23;
      v25 = *(v23 + 16);
      v34 = *(v23 + 24);
      v26 = *(v23 + 32);
      v32 = *(v23 + 41);
      v33 = *(v23 + 40);
      v35 = *(v23 + 8);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      v36 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1DAA929C8(0, *(v16 + 2) + 1, 1, v16);
      }

      v28 = *(v16 + 2);
      v27 = *(v16 + 3);
      if (v28 >= v27 >> 1)
      {
        v16 = sub_1DAA929C8((v27 > 1), v28 + 1, 1, v16);
      }

      v14 = v3 + 1;
      *(v16 + 2) = v28 + 1;
      v29 = &v16[48 * v28];
      *(v29 + 4) = v36;
      *(v29 + 5) = v35;
      *(v29 + 6) = v25;
      *(v29 + 7) = v34;
      *(v29 + 8) = v26;
      v29[72] = v33;
      v29[73] = v32;
      v15 = v37;
      v30 = v13 - 1 == v3;
      v3 = v17;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  sub_1DAA763B0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DACA4154(uint64_t a1, uint64_t a2)
{
  sub_1DAA763B0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DACA41E0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (qword_1EE121840 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v3 = qword_1EE13E318;
    sub_1DAA41D64(0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DACC1D20;
    v5 = MEMORY[0x1E1277130](v2, &type metadata for Watchlist);
    v7 = v6;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v115 = sub_1DAA443C8();
    *(v4 + 64) = v115;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    v8 = sub_1DACB9914();
    v110 = v3;
    sub_1DACB8C64("WatchlistManager mergeDuplicateWatchlist ordered watchlists: %{public}@", 71, 2, &dword_1DAA3F000, v3, v8, v4);

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAB69444(MEMORY[0x1E69E7CC0]);
    v114 = *(v2 + 16);
    if (!v114)
    {
      break;
    }

    v11 = 0;
    v12 = (v2 + 73);
    v107 = v9;
    v113 = v2;
    while (v11 < *(v2 + 16))
    {
      v116 = v11;
      v14 = *(v12 - 41);
      v15 = *(v12 - 33);
      v16 = *(v12 - 25);
      v118 = *(v12 - 17);
      v17 = *(v12 - 9);
      v18 = *v12;
      v125 = *(v12 - 1);
      v126 = v18;
      v19 = v10[2];
      sub_1DACB71E4();
      sub_1DACB71E4();
      v117 = v17;
      sub_1DACB71E4();
      if (!v19 || (sub_1DACB71E4(), v20 = sub_1DAA4BF3C(v14, v15), v22 = v21, , (v22 & 1) == 0))
      {
        v45 = v9;
        v2 = v16;
        sub_1DACB71E4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v123 = v10;
        v47 = v14;
        v48 = sub_1DAA4BF3C(v14, v15);
        v50 = v10[2];
        v51 = (v49 & 1) == 0;
        v52 = __OFADD__(v50, v51);
        v53 = v50 + v51;
        if (v52)
        {
          goto LABEL_52;
        }

        v54 = v49;
        if (v10[3] >= v53)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_19;
          }

          v61 = v48;
          sub_1DAB65A84();
          v48 = v61;
          v9 = v45;
          v56 = v117;
          v10 = v123;
          if ((v54 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_20:
          *(v10[7] + 8 * v48) = v2;
        }

        else
        {
          sub_1DAB609F8(v53, isUniquelyReferenced_nonNull_native);
          v48 = sub_1DAA4BF3C(v14, v15);
          if ((v54 & 1) != (v55 & 1))
          {
            result = sub_1DACBA1F4();
            __break(1u);
            return result;
          }

LABEL_19:
          v56 = v117;
          v9 = v45;
          v10 = v123;
          if (v54)
          {
            goto LABEL_20;
          }

LABEL_28:
          v10[(v48 >> 6) + 8] |= 1 << v48;
          v62 = (v10[6] + 16 * v48);
          *v62 = v47;
          v62[1] = v15;
          *(v10[7] + 8 * v48) = v2;
          v63 = v10[2];
          v52 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v52)
          {
            goto LABEL_53;
          }

          v10[2] = v64;
          sub_1DACB71E4();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DAA929C8(0, *(v9 + 2) + 1, 1, v9);
        }

        v66 = *(v9 + 2);
        v65 = *(v9 + 3);
        if (v66 >= v65 >> 1)
        {
          v70 = sub_1DAA929C8((v65 > 1), v66 + 1, 1, v9);
          v67 = v47;
          v9 = v70;
        }

        else
        {
          v67 = v47;
        }

        *(v9 + 2) = v66 + 1;
        v68 = &v9[48 * v66];
        *(v68 + 4) = v67;
        *(v68 + 5) = v15;
        *(v68 + 6) = v2;
        *(v68 + 7) = v118;
        *(v68 + 8) = v56;
        v69 = v126;
        v68[72] = v125;
        v68[73] = v69;
        v2 = v113;
        v13 = v116;
        goto LABEL_6;
      }

      v108 = v9;
      *&v119 = *(v10[7] + 8 * v20);
      v23 = v10;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1DACC1D40;
      v25 = MEMORY[0x1E69E6158];
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = v115;
      *(v24 + 32) = v14;
      *(v24 + 40) = v15;
      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB9DD4();
      v26 = v121;
      *(v24 + 96) = v25;
      *(v24 + 104) = v115;
      *(v24 + 72) = v26;
      v27 = sub_1DACB9914();
      sub_1DACB8C64("WatchlistManager duplicate watchlist found for name: %{public}@ \n watchlist: %{public}@", 87, 2, &dword_1DAA3F000, v110, v27, v24);

      v28 = sub_1DACB71E4();
      sub_1DAC28658(v28);
      v29 = v119;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DACA60F4(v119, v14, v15, v30, sub_1DAB65A84, sub_1DAB609F8);

      v111 = v23;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DACC1D40;
      v32 = MEMORY[0x1E69E6158];
      v33 = MEMORY[0x1E1277130](v16, MEMORY[0x1E69E6158]);
      *(v31 + 56) = v32;
      *(v31 + 64) = v115;
      *(v31 + 32) = v33;
      *(v31 + 40) = v34;
      *&v121 = 0;
      *(&v121 + 1) = 0xE000000000000000;
      *&v123 = v14;
      *(&v123 + 1) = v15;
      *v124 = v16;
      *&v124[8] = v118;
      *&v124[16] = v117;
      v124[24] = v125;
      v124[25] = v126;
      sub_1DACB9DD4();
      v35 = v121;
      *(v31 + 96) = v32;
      *(v31 + 104) = v115;
      *(v31 + 72) = v35;
      v36 = sub_1DACB9914();
      sub_1DACB8C64("WatchlistManager merging symbols: %{public}@ from watchlist: %{public}@", 71, 2, &dword_1DAA3F000, v110, v36, v31);

      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1DACC1D40;
      v38 = MEMORY[0x1E1277130](v29, v32);
      v40 = v39;

      v41 = MEMORY[0x1E69E6158];
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = v115;
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      *(v37 + 96) = v41;
      *(v37 + 104) = v115;
      *(v37 + 72) = v14;
      *(v37 + 80) = v15;
      sub_1DACB71E4();
      v42 = sub_1DACB9914();
      sub_1DACB8C64("WatchlistManager merged symbols: %{public}@ for watchlist: %{public}@", 69, 2, &dword_1DAA3F000, v110, v42, v37);

      if (v118 == sub_1DACB9324() && v117 == v43)
      {

        v9 = v108;
        v10 = v111;
      }

      else
      {
        v44 = sub_1DACBA174();

        if (v44)
        {

          v10 = v111;
        }

        else
        {
          v10 = v111;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1DAA929C8(0, *(v107 + 2) + 1, 1, v107);
          }

          v58 = *(v107 + 2);
          v57 = *(v107 + 3);
          if (v58 >= v57 >> 1)
          {
            v107 = sub_1DAA929C8((v57 > 1), v58 + 1, 1, v107);
          }

          *(v107 + 2) = v58 + 1;
          v59 = &v107[48 * v58];
          *(v59 + 4) = v14;
          *(v59 + 5) = v15;
          *(v59 + 6) = v16;
          *(v59 + 7) = v118;
          *(v59 + 8) = v117;
          v60 = v126;
          v59[72] = v125;
          v59[73] = v60;
        }

        v9 = v108;
      }

      v13 = v116;
      v2 = v113;
LABEL_6:
      v11 = v13 + 1;
      v12 += 48;
      if (v114 == v11)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v107 = v9;
LABEL_37:
  v109 = v9;
  v112 = v10;
  v71 = MEMORY[0x1E69E7CA8];
  if (*(v107 + 2))
  {
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1DACC1D20;
    v73 = MEMORY[0x1E1277130](v107, &type metadata for Watchlist);
    *(v72 + 56) = MEMORY[0x1E69E6158];
    *(v72 + 64) = v115;
    *(v72 + 32) = v73;
    *(v72 + 40) = v74;
    v75 = sub_1DACB9914();
    sub_1DACB8C64("WatchlistManager removing duplicate watchlistIDs: %{public}@", 60, 2, &dword_1DAA3F000, v110, v75, v72);

    v76 = *(v107 + 2);
    if (v76)
    {
      v77 = (v107 + 32);
      do
      {
        v78 = *v77;
        v79 = v77[1];
        *&v124[10] = *(v77 + 26);
        v123 = v78;
        *v124 = v79;
        sub_1DAA8DB84(&v123, &v121);
        sub_1DACB8BB4();
        v80 = swift_allocObject();
        v81 = *v124;
        v80[1] = v123;
        v80[2] = v81;
        *(v80 + 42) = *&v124[10];
        sub_1DAA8DB84(&v123, &v121);
        v82 = v71;
        v83 = sub_1DACB89D4();
        sub_1DACB8A74();

        v71 = v82;
        v84 = sub_1DACB89D4();
        sub_1DACB8A74();

        v85 = sub_1DACB89D4();
        sub_1DACB8A74();

        sub_1DAA934A8(&v123);
        v77 += 3;
        --v76;
      }

      while (v76);
    }
  }

  v86 = *(v109 + 2);
  v87 = v112;
  if (v86)
  {
    v88 = (v109 + 32);
    do
    {
      v89 = *v88;
      v90 = v88[1];
      *(v122 + 10) = *(v88 + 26);
      v121 = v89;
      v122[0] = v90;
      if (v87[2])
      {
        v91 = v121;
        sub_1DAA8DB84(&v121, &v119);
        sub_1DACB71E4();
        v92 = sub_1DAA4BF3C(v91, *(&v91 + 1));
        v94 = v93;

        if (v94)
        {
          v95 = *(v87[7] + 8 * v92);
          v96 = *(v95 + 16);
          if (v96)
          {
            if (*(*&v122[0] + 16) != v96)
            {
              v97 = swift_allocObject();
              *(v97 + 16) = xmmword_1DACC1D40;
              v98 = sub_1DACB71E4();
              v99 = MEMORY[0x1E69E6158];
              v100 = MEMORY[0x1E1277130](v98, MEMORY[0x1E69E6158]);
              *(v97 + 56) = v99;
              *(v97 + 64) = v115;
              *(v97 + 32) = v100;
              *(v97 + 40) = v101;
              v119 = v121;
              v120[0] = v122[0];
              *(v120 + 10) = *(v122 + 10);
              sub_1DACB9DD4();
              *(v97 + 96) = v99;
              *(v97 + 104) = v115;
              *(v97 + 72) = 0;
              *(v97 + 80) = 0xE000000000000000;
              v102 = sub_1DACB9914();
              sub_1DACB8C64("WatchlistManager updating merged symbols: %{public}@ for watchlist %{public}@", 77, 2, &dword_1DAA3F000, v110, v102, v97);

              *(swift_allocObject() + 16) = v95;
              sub_1DAA7F334();
              sub_1DACB8BA4();

              v103 = swift_allocObject();
              v104 = v122[0];
              v103[1] = v121;
              v103[2] = v104;
              *(v103 + 42) = *(v122 + 10);
              sub_1DAA8DB84(&v121, &v119);
              v105 = sub_1DACB89D4();
              v87 = v112;
              sub_1DACB8A84();
            }
          }
        }

        sub_1DAA934A8(&v121);
      }

      v88 += 3;
      --v86;
    }

    while (v86);
  }
}

uint64_t sub_1DACA4E90(void *a1, uint64_t a2)
{
  v30 = a2;
  v25 = sub_1DACB8204();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7CC4();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB8344();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB81B4();
  v23 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[17];
  v15 = a1[18];
  v22[1] = __swift_project_boxed_opaque_existential_1(a1 + 14, v16);
  (*(v12 + 104))(v14, *MEMORY[0x1E69D63C8], v11);
  v17 = v10;
  v22[0] = v10;
  sub_1DACB8334();
  sub_1DACB7CB4();
  v19 = v24;
  v18 = v25;
  (*(v3 + 104))(v24, *MEMORY[0x1E69D6490], v25);
  v20 = (*(v15 + 8))(v30, v14, v17, v7, v19, v16, v15);
  (*(v3 + 8))(v19, v18);
  (*(v28 + 8))(v7, v29);
  (*(v26 + 8))(v22[0], v27);
  (*(v12 + 8))(v14, v23);
  return v20;
}

uint64_t sub_1DACA51E0(uint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v5 = sub_1DAC95A64(*a1);
  v13 = a2;
  v11[2] = &v13;
  v11[3] = a3;
  sub_1DAC9568C(sub_1DACA7FA4, v11, v5);

  v6 = sub_1DACB89D4();
  sub_1DACB8934();

  v7 = swift_allocObject();
  v8 = a3[1];
  v7[1] = *a3;
  v7[2] = v8;
  *(v7 + 42) = *(a3 + 26);
  sub_1DAA8DB84(a3, v12);
  v9 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DACA532C(void *a1, __int128 *a2, uint64_t *a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1DACA6850(v8, a2, a3, v3, v6, v7);
}

uint64_t sub_1DACA5390(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1DACA6794(v4, v1, v2, v3);
}

uint64_t sub_1DACA53DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1DAA4BF3C(a3, a4);
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
      sub_1DAAA2514(v18, a5 & 1);
      v13 = sub_1DAA4BF3C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1DAB65314();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5564(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DAA4BF3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for QuoteDetail(0);
      return sub_1DACA6ED4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for QuoteDetail);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DAB65480();
    goto LABEL_7;
  }

  sub_1DAB6065C(v15, a4 & 1);
  v22 = sub_1DAA4BF3C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DACA64D4(v12, a2, a3, a1, v18, type metadata accessor for QuoteDetail, sub_1DAC2FF24);

  return sub_1DACB71E4();
}

uint64_t sub_1DACA56F8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAA4BF3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAA74978(v16, a4 & 1);
      v11 = sub_1DAA4BF3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DAB658E0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;

    return sub_1DACA6B78(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = *a1;
  v27 = a1[1];
  *(v25 + 26) = *(a1 + 26);
  *v25 = v26;
  v25[1] = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA58B4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DAA4BF3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1DAB61390(v16, a4 & 1);
      v11 = sub_1DAA4BF3C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DAB66138();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 104 * v11;

    return sub_1DACA6C08(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 104 * v11;
  v26 = *a1;
  v27 = a1[2];
  *(v25 + 16) = a1[1];
  *(v25 + 32) = v27;
  *v25 = v26;
  v28 = a1[3];
  v29 = a1[4];
  v30 = a1[5];
  *(v25 + 96) = *(a1 + 12);
  *(v25 + 64) = v29;
  *(v25 + 80) = v30;
  *(v25 + 48) = v28;
  v31 = v21[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v32;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DAA4BF3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for EarningsCalendarEventModel(0);
      return sub_1DACA6ED4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for EarningsCalendarEventModel);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DAB664AC();
    goto LABEL_7;
  }

  sub_1DAB619FC(v15, a4 & 1);
  v22 = sub_1DAA4BF3C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DACA64D4(v12, a2, a3, a1, v18, type metadata accessor for EarningsCalendarEventModel, sub_1DACA6BF0);

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5BF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DAA4BF3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Chart(0);
      return sub_1DACA6ED4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Chart);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DAB66744();
    goto LABEL_7;
  }

  sub_1DAA860FC(v15, a4 & 1);
  v22 = sub_1DAA4BF3C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DACA64D4(v12, a2, a3, a1, v18, type metadata accessor for Chart, sub_1DAA86044);

  return sub_1DACB71E4();
}

uint64_t sub_1DACA5D84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DAB095DC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1DAB61DB4(v14, a3 & 1);
      v9 = sub_1DAB095DC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1DAB669C0();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v19[6] + 136 * v9;
    v23 = *(a2 + 48);
    v22 = *(a2 + 64);
    v24 = *(a2 + 32);
    *(v21 + 16) = *(a2 + 16);
    *(v21 + 32) = v24;
    *(v21 + 48) = v23;
    *(v21 + 64) = v22;
    *v21 = *a2;
    v25 = *(a2 + 80);
    v26 = *(a2 + 96);
    v27 = *(a2 + 112);
    *(v21 + 128) = *(a2 + 128);
    *(v21 + 96) = v26;
    *(v21 + 112) = v27;
    *(v21 + 80) = v25;
    *(v19[7] + 8 * v9) = a1;
    v28 = v19[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v19[2] = v29;
      return sub_1DAA806E4(a2, v30);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

uint64_t sub_1DACA5F1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1DAA4BF3C(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1DAB624E0(v20, a6 & 1);
      v15 = sub_1DAA4BF3C(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1DAB66D30();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = v25[7] + 24 * v15;
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3 & 1;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;

  return sub_1DACB71E4();
}

uint64_t sub_1DACA60F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1DAA4BF3C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1DAA4BF3C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;

  return sub_1DACB71E4();
}

_OWORD *sub_1DACA628C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1DACB9DF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1DAB09820(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1DAB67A90();
      goto LABEL_7;
    }

    sub_1DAB63CC0(v17, a3 & 1);
    v23 = sub_1DAB09820(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1DACA6580(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1DACBA1F4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_1DAB6A61C(a1, v21);
}

unint64_t sub_1DACA6464(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 136 * result;
  v5 = *(a2 + 112);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = v5;
  *(v4 + 128) = *(a2 + 128);
  v6 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v6;
  v7 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = v7;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  *(a4[7] + 8 * result) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_1DACA64D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, unint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = a7(a4, v12 + *(*(v13 - 8) + 72) * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

_OWORD *sub_1DACA6580(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DACB9DF4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1DAB6A61C(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1DACA6640(uint64_t a1, char a2)
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

  sub_1DACB9E14();
LABEL_9:
  result = sub_1DACB9CD4();
  *v2 = result;
  return result;
}

uint64_t sub_1DACA6730(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DACB9E14();
  }

  return sub_1DACB9CD4();
}

uint64_t sub_1DACA6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v11, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1DACA6850(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38[3] = a5;
  v38[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v12 = *a2;
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v15 = *(a2 + 32);
  v16 = *(a2 + 33);
  v17 = *a3;
  v25 = *(a3 + 1);
  v26 = v12;
  v18 = a3[3];
  v19 = a3[4];
  v24 = *(a3 + 40);
  v20 = *(a3 + 41);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    v33 = v26;
    v34 = v13;
    v35 = v14;
    v36 = v15;
    v37 = v16;
    v27 = v17;
    v28 = v25;
    v29 = v18;
    v30 = v19;
    v31 = v24;
    v32 = v20;
    (*(v21 + 8))(v38, &v33, &v27, ObjectType, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

unint64_t sub_1DACA69B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = sub_1DACB71E4();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1DACA6A9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = sub_1DACA69B8(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_1DACA6CC0(uint64_t a1, uint64_t a2, unint64_t *a3, ValueMetadata *a4)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = a4;
  v7 = a3;
  v9 = *v5;
  v10 = (v9 + 32 + 136 * a1);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v7, v6);
  v13 = v7 - v6;
  if (v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v9 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_19;
  }

  result = &v10[136 * v7];
  v16 = (v9 + 32 + 136 * a2);
  if (result != v16 || result >= &v16[136 * v15])
  {
    result = memmove(result, v16, 136 * v15);
  }

  v18 = *(v9 + 16);
  v12 = __OFADD__(v18, v13);
  v19 = v18 + v13;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, v4, 0x88uLL);
  a3 = &unk_1ECBE9AB0;
  a4 = &type metadata for Stock;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1DACA73E4(v4, v20, a3, a4, MEMORY[0x1E69E6BC0]);
    __break(1u);
    return result;
  }

  return sub_1DACA73E4(v4, v20, &unk_1ECBE9AB0, &type metadata for Stock, MEMORY[0x1E69E6BC0]);
}

uint64_t sub_1DACA6E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1DACA6ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DACA6F3C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DACA6FFC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1DAA9A3B0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1DACA6F3C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1DACA70BC(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a2[12];
  v8 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v7);
  v9 = *(v2 + 64);
  v11 = *(v2 + 48);
  v12[0] = v9;
  *(v12 + 10) = *(v2 + 74);
  return (*(v8 + 168))(v3, v4, v5, v6, &v11, v7, v8);
}

uint64_t sub_1DACA7180()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DACA71B0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DACA71F0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  v6 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 50);
  return (*(v5 + 32))(v3, &v8, v4, v5);
}

uint64_t sub_1DACA72A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1DACA72E8(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = *(v2 + 128);
  v19[6] = *(v2 + 112);
  v19[7] = v5;
  v20 = *(v2 + 144);
  v6 = *(v2 + 64);
  v19[2] = *(v2 + 48);
  v19[3] = v6;
  v7 = *(v2 + 96);
  v19[4] = *(v2 + 80);
  v19[5] = v7;
  v8 = *(v2 + 32);
  v19[0] = *(v2 + 16);
  v19[1] = v8;
  v9 = *(v2 + 232);
  v10 = *(v2 + 264);
  v17[6] = *(v2 + 248);
  v17[7] = v10;
  v18 = *(v2 + 280);
  v11 = *(v2 + 168);
  v12 = *(v2 + 200);
  v17[2] = *(v2 + 184);
  v17[3] = v12;
  v17[4] = *(v2 + 216);
  v17[5] = v9;
  v17[0] = *(v2 + 152);
  v17[1] = v11;
  v13 = *(v2 + 304);
  v15 = *(v2 + 288);
  v16[0] = v13;
  *(v16 + 10) = *(v2 + 314);
  return (*(v4 + 160))(v19, v17, &v15, v3, v4);
}

uint64_t sub_1DACA73E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1DAA5A8BC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DACA746C(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v8 = v2[1];
  v9[0] = v5;
  *(v9 + 10) = *(v2 + 42);
  v7 = -96;
  return (*(v4 + 104))(&v8, &v7, v3, v4);
}

uint64_t sub_1DACA754C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_1DACB71E4();
}

uint64_t objectdestroy_109Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 194, 7);
}

uint64_t sub_1DACA7630(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = *(v2 + 128);
  v13[6] = *(v2 + 112);
  v13[7] = v5;
  v14 = *(v2 + 144);
  v6 = *(v2 + 64);
  v13[2] = *(v2 + 48);
  v13[3] = v6;
  v7 = *(v2 + 96);
  v13[4] = *(v2 + 80);
  v13[5] = v7;
  v8 = *(v2 + 32);
  v13[0] = *(v2 + 16);
  v13[1] = v8;
  v9 = *(v2 + 168);
  v11 = *(v2 + 152);
  v12[0] = v9;
  *(v12 + 10) = *(v2 + 178);
  return (*(v4 + 144))(v13, &v11, v3, v4);
}

uint64_t objectdestroy_112Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1DACA776C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  *a1 = v1[1];
  a1[1] = v2;
  *(a1 + 26) = *(v1 + 42);
  return sub_1DAA8DB84((v1 + 1), &v4);
}

uint64_t sub_1DACA77B4(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v10 = v2[1];
  v11[0] = v5;
  *(v11 + 10) = *(v2 + 42);
  v6 = v2[5];
  v8 = v2[4];
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 90);
  return (*(v4 + 200))(&v10, &v8, v3, v4);
}

uint64_t sub_1DACA7860@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  *a1 = v1[1];
  a1[1] = v2;
  *(a1 + 26) = *(v1 + 42);
  return sub_1DAA8DB84((v1 + 1), &v4);
}

uint64_t sub_1DACA78E4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 58);
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  v6 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 42);
  v10 = v3;
  return (*(v5 + 112))(&v8, &v10, v4, v5);
}

uint64_t sub_1DACA7990(uint64_t a1, void *a2)
{
  v3 = *(v2 + 58);
  v4 = a2[12];
  v5 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v4);
  v6 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9[0] = v6;
  *(v9 + 10) = *(v2 + 42);
  v10 = v3;
  return (*(v5 + 104))(&v8, &v10, v4, v5);
}

uint64_t sub_1DACA7A5C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[12];
  v6 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v5);
  v7 = v2[2];
  v9 = v2[1];
  v10[0] = v7;
  *(v10 + 10) = *(v2 + 42);
  return (*(v6 + 96))(&v9, v3, v4, v5, v6);
}

uint64_t sub_1DACA7B20(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1DACA6E0C(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = *(v4 + 16);
    if (v8 == v9)
    {
      return v7;
    }

    v10 = 16 * result;
    while (v8 < v9)
    {
      v12 = *(v4 + v10 + 48);
      v13 = *(v4 + v10 + 56);
      if (v12 != *(a2 + 24) || v13 != *(a2 + 32))
      {
        result = sub_1DACBA174();
        if ((result & 1) == 0)
        {
          if (v8 != v7)
          {
            if (v7 >= v9)
            {
              goto LABEL_24;
            }

            v15 = (v4 + 32 + 16 * v7);
            v16 = v15[1];
            v18 = *v15;
            sub_1DACB71E4();
            sub_1DACB71E4();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1DACA6708(v4);
            }

            v17 = v4 + 16 * v7;
            *(v17 + 32) = v12;
            *(v17 + 40) = v13;

            if (v8 >= *(v4 + 16))
            {
              goto LABEL_25;
            }

            v11 = v4 + v10;
            *(v11 + 48) = v18;
            *(v11 + 56) = v16;

            *a1 = v4;
          }

          ++v7;
        }
      }

      ++v8;
      v9 = *(v4 + 16);
      v10 += 16;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DACA7CB0(uint64_t a1)
{
  if (!qword_1EE11F988)
  {
    sub_1DAB1BC70();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F988);
    }
  }
}

uint64_t sub_1DACA7D1C(uint64_t a1, uint64_t a2)
{
  sub_1DAA59DC0(0, &qword_1EE11F980, sub_1DACA7CB0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DACA7DCC()
{
  result = qword_1EE11F9C8;
  if (!qword_1EE11F9C8)
  {
    sub_1DAA59DC0(255, &qword_1EE11F9D0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F9C8);
  }

  return result;
}

uint64_t sub_1DACA7E5C()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return (*(v2 + 120))(v1, v2);
}

uint64_t sub_1DACA7EF0(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  v5 = v2[2];
  v7 = v2[1];
  v8[0] = v5;
  *(v8 + 10) = *(v2 + 42);
  return (*(v4 + 88))(&v7, v3, v4);
}

uint64_t sub_1DACA7FA4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAC9A5F0(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_1DACA801C()
{
  result = qword_1EE11FA30;
  if (!qword_1EE11FA30)
  {
    sub_1DAA5A8BC(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA30);
  }

  return result;
}

unint64_t sub_1DACA8098()
{
  result = qword_1EE11FA68;
  if (!qword_1EE11FA68)
  {
    sub_1DAA59DC0(255, &qword_1EE11FA78, sub_1DAB1BC70, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FA68);
  }

  return result;
}

uint64_t objectdestroy_100Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 74, 7);
}

uint64_t sub_1DACA81C4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = a2[12];
  v6 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v5);
  v7 = *(v2 + 48);
  v9 = *(v2 + 32);
  v10[0] = v7;
  *(v10 + 10) = *(v2 + 58);
  return (*(v6 + 152))(v3, v4, &v9, v5, v6);
}

uint64_t sub_1DACA82E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1DACA8450(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1DACBA134();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1DACB78B4();

  v11 = [v10 domain];
  v12 = sub_1DACB9324();
  v14 = v13;

  if (v12 == sub_1DACB9324() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1DACBA174();

    if ((v17 & 1) == 0)
    {

      return 0;
    }
  }

  v19 = [v10 code];

  return v19 == 2;
}

uint64_t sub_1DACA866C(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    result = sub_1DACB8204();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DACA8764(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DAC06960(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DACAA698(v5);
  *a1 = v2;
  return result;
}

void sub_1DACA87D0(uint64_t a1, uint64_t a2)
{
  v14 = *(v2 + qword_1EE127038);
  sub_1DACB71E4();
  sub_1DACA8764(&v14);
  sub_1DACAA554(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DACAA630(&qword_1EE11FA38, MEMORY[0x1E69E6340]);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAA53180(0, &qword_1EE126CD8, sub_1DACAA5AC, MEMORY[0x1E69D6B18]);
    v8 = 32;
    do
    {
      MEMORY[0x1EEE9AC00](v7);
      swift_allocObject();
      sub_1DACB71E4();
      sub_1DACB8B44();

      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      v7 = sub_1DACB9D44();
      v8 += 8;
      --v6;
    }

    while (v6);
  }

  v9 = sub_1DACB89D4();
  sub_1DACAA5AC(0);
  sub_1DACB8934();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1DACB71F4();
  v11 = sub_1DACB89D4();
  sub_1DACB8A64();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t *sub_1DACA8B00(uint64_t *result, void (*a2)(uint64_t, void))
{
  v3 = *result;
  v4 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC8];
  v5 = *(*result + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      v7 = v6 + 1;
      type metadata accessor for YahooQuoteDetailItem(0);
      sub_1DACB71E4();
      sub_1DACB88C4();

      v6 = v7;
      if (v5 == v7)
      {
        v4 = v8;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    a2(v4, 0);
  }

  return result;
}

void sub_1DACA8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v63 = a4;
  v62 = a3;
  v10 = sub_1DACB8204();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DACB7CC4();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DACB7AB4();
  v60 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v59 = v15;
  v16 = __swift_project_boxed_opaque_existential_1(&a5[qword_1EE127040], *&a5[qword_1EE127040 + 24]);
  sub_1DAA53180(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 32) = 0x7372656B636974;
  *(inited + 40) = 0xE700000000000000;
  v71[0] = a6;
  sub_1DACAA554(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DACAA630(&qword_1EE123E90, MEMORY[0x1E69E6310]);
  sub_1DACB71F4();
  *(inited + 48) = sub_1DACB9214();
  *(inited + 56) = v18;
  strcpy((inited + 64), "crossProduct");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0x657A696D6974706FLL;
  *(inited + 88) = 0xE900000000000064;
  v58 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v19 = a5;
  v20 = &a5[qword_1EE127048];
  v21 = *&a5[qword_1EE127048];
  v22 = *&a5[qword_1EE127048 + 8];
  v57 = v21;
  v23 = *(v20 + 3);
  v56 = *(v20 + 2);
  v24 = qword_1EE127050;
  v25 = *v16;
  v26 = [objc_opt_self() sharedPreferences];
  if (v26)
  {
    v27 = v26;
    v55 = a6;
    v28 = [v26 stocksYQLBaseURL];

    if (v28)
    {
      v49 = 0x80000001DACF2F40;
      v52 = v14;
      sub_1DACB7A44();

      sub_1DAA4D678(v25 + 16, v71);
      v50 = *(v65 + 16);
      v54 = v19;
      v29 = v61;
      v50();
      v53 = *(v68 + 16);
      v53(v66, &v19[v24], v69);
      sub_1DACAB064(0);
      v51 = v30;
      v31 = objc_allocWithZone(v30);
      v32 = MEMORY[0x1E69E7D40];
      *(v31 + *((*MEMORY[0x1E69E7D40] & *v31) + qword_1EE13E4B0 + 16)) = 4;
      v33 = v60;
      (*(v60 + 16))(v31 + *((*v32 & *v31) + qword_1EE13E4B0 + 24), v14, v64);
      v34 = (v31 + *((*v32 & *v31) + qword_1EE13E4B0 + 32));
      *v34 = 0xD000000000000014;
      v34[1] = v49;
      *(v31 + *((*v32 & *v31) + qword_1EE13E4B0 + 40)) = v58;
      v35 = (v31 + *((*v32 & *v31) + qword_1EE13E4B0 + 48));
      *v35 = v57;
      v35[1] = v22;
      v35[2] = v56;
      v35[3] = v23;
      sub_1DAA4D678(v71, v31 + *((*v32 & *v31) + qword_1EE13E4B0 + 56));
      v36 = v29;
      v37 = v29;
      v38 = v67;
      (v50)(v31 + *((*v32 & *v31) + qword_1EE13E4B0 + 64), v37, v67);
      v39 = v66;
      v40 = v69;
      v53(v31 + *((*v32 & *v31) + qword_1EE13E4B0 + 72), v66, v69);
      v70.receiver = v31;
      v70.super_class = v51;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v41 = objc_msgSendSuper2(&v70, sel_init);
      (*(v68 + 8))(v39, v40);
      (*(v65 + 8))(v36, v38);
      __swift_destroy_boxed_opaque_existential_1(v71);
      (*(v33 + 8))(v52, v64);
      v42 = swift_allocObject();
      v43 = v54;
      v42[2] = v55;
      v42[3] = v43;
      v44 = v59;
      v42[4] = sub_1DAA73914;
      v42[5] = v44;
      v45 = v63;
      v42[6] = v62;
      v42[7] = v45;
      v46 = v41;
      sub_1DACB71E4();
      v47 = v43;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v46 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DACA94C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t (*a6)(void *))
{
  v139[1] = a5;
  v140 = a4;
  v151 = sub_1DACB7664();
  v9 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v150 = v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA53180(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v182 = v139 - v15;
  v16 = type metadata accessor for YahooQuoteDetailItem(0);
  v146 = *(v16 - 8);
  v147 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v139 - v19;
  v21 = *a1;
  if (*(a1 + 32))
  {
    return a6(v21);
  }

  v179 = v9;
  v180 = v21;
  v145 = v18;
  v181 = v14;
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = (a2 + 40);
    v152 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v183 = v23;
      v184 = v26;
      v28 = sub_1DACB93B4();
      v30 = v29;
      swift_bridgeObjectRetain_n();
      v31 = v152;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v187[0] = v31;
      v34 = sub_1DAA4BF3C(v28, v30);
      v35 = v31[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_98;
      }

      v38 = v33;
      if (v31[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v41 = v184;
          if ((v33 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1DAB65314();
          v41 = v184;
          if ((v38 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_1DAAA2514(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_1DAA4BF3C(v28, v30);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_101;
        }

        v34 = v39;
        v41 = v184;
        if ((v38 & 1) == 0)
        {
LABEL_14:
          v42 = v187[0];
          *(v187[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
          v43 = (v42[6] + 16 * v34);
          *v43 = v28;
          v43[1] = v30;
          v44 = (v42[7] + 16 * v34);
          *v44 = v41;
          v44[1] = v27;

          v45 = v42[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_100;
          }

          v152 = v42;
          v42[2] = v47;
          goto LABEL_6;
        }
      }

      v152 = v187[0];
      v25 = (*(v187[0] + 56) + 16 * v34);
      *v25 = v41;
      v25[1] = v27;

LABEL_6:
      v24 += 2;
      v23 = v183 - 1;
      if (v183 == 1)
      {
        goto LABEL_19;
      }
    }
  }

  v152 = MEMORY[0x1E69E7CC8];
LABEL_19:
  v48 = sub_1DACAB218(v180);
  v49 = v48;
  v143 = *(v48 + 16);
  if (!v143)
  {

    v51 = MEMORY[0x1E69E7CC8];
    goto LABEL_95;
  }

  v50 = 0;
  v142 = v48 + 32;
  v51 = MEMORY[0x1E69E7CC8];
  v149 = (v179 + 8);
  v52 = v152;
  v141 = v48;
  while (1)
  {
    if (v50 >= *(v49 + 16))
    {
      goto LABEL_99;
    }

    v53 = *(v142 + 8 * v50) ? *(v142 + 8 * v50) : MEMORY[0x1E69E7CC0];
    v54 = *(v53 + 16);
    if (v54)
    {
      break;
    }

    sub_1DACB71E4();

LABEL_22:
    if (++v50 == v143)
    {

LABEL_95:
      v140(v51);
    }
  }

  v144 = v50;
  sub_1DACB71E4();
  v55 = 0;
  v184 = v54 - 1;
  v56 = 32;
  v148 = v53;
  do
  {
    memcpy(v187, (v53 + v56), 0x2D0uLL);
    v57 = sub_1DACB93B4();
    v59 = v58;
    if (!v52[2])
    {

      goto LABEL_89;
    }

    v60 = v57;
    sub_1DABFDE7C(v187, &v185);
    v61 = sub_1DAA4BF3C(v60, v59);
    v63 = v62;

    if ((v63 & 1) == 0 || !v187[5])
    {
      sub_1DABFDEB4(v187);
      goto LABEL_89;
    }

    v64 = (v52[7] + 16 * v61);
    v65 = v64[1];
    v179 = *v64;
    v180 = v51;
    v66 = v187[18];
    v177 = v187[2];
    v178 = v187[4];
    v183 = v65;
    v176 = v187[3];
    v174 = v187[5];
    if (v187[18])
    {
      v67 = v187[20];
      v173 = v187[19];
      v68 = v187[17];
      v69 = v187[16];
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v175 = v69;
      sub_1DACAB348(v69, v68, v66, v173, v67);
    }

    else
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v175 = 0;
    }

    v70 = v187[21];
    if (!v187[23])
    {
      v70 = 0;
    }

    v172 = v187[23];
    v173 = v70;
    v168 = v187[28];
    if (v187[28])
    {
      v71 = v187[26];
    }

    else
    {
      v71 = 0;
    }

    v72 = v187[31];
    v159 = v187[33];
    if (!v187[33])
    {
      v72 = 0;
    }

    v170 = v72;
    v171 = v71;
    v73 = v187[36];
    v158 = v187[38];
    if (!v187[38])
    {
      v73 = 0;
    }

    v169 = v73;
    v157 = v187[43];
    if (v187[43])
    {
      v74 = v187[41];
    }

    else
    {
      v74 = 0;
    }

    v75 = v187[51];
    v156 = v187[53];
    if (!v187[53])
    {
      v75 = 0;
    }

    v166 = v75;
    v167 = v74;
    v155 = v187[58];
    if (v187[58])
    {
      v76 = v187[56];
    }

    else
    {
      v76 = 0;
    }

    v77 = v187[61];
    v154 = v187[63];
    if (!v187[63])
    {
      v77 = 0;
    }

    v162 = v77;
    v163 = v76;
    v153 = v187[68];
    if (v187[68])
    {
      v78 = v187[66];
    }

    else
    {
      v78 = 0;
    }

    v79 = v187[73];
    v80 = v187[71];
    if (!v187[73])
    {
      v80 = 0;
    }

    v160 = v80;
    v161 = v78;
    v164 = v187[76];
    v165 = v187[77];
    if (v187[79])
    {
      v81 = v66;
      v185 = v187[78];
      v186 = v187[79];
      sub_1DACB71E4();
      v82 = v150;
      sub_1DACB7604();
      sub_1DAA642D8();
      sub_1DACB9B44();
      v84 = v83;
      (*v149)(v82, v151);
      v85 = v174;
      if (v84)
      {
        sub_1DACB7A94();
      }

      else
      {
        v89 = sub_1DACB7AB4();
        (*(*(v89 - 8) + 56))(v182, 1, 1, v89);
      }

      v66 = v81;
      v87 = v187[85];
      if (!v187[85])
      {
LABEL_65:
        v88 = sub_1DACB7AB4();
        (*(*(v88 - 8) + 56))(v181, 1, 1, v88);
        goto LABEL_72;
      }
    }

    else
    {
      v86 = sub_1DACB7AB4();
      (*(*(v86 - 8) + 56))(v182, 1, 1, v86);
      sub_1DACB71E4();
      v85 = v174;
      v87 = v187[85];
      if (!v187[85])
      {
        goto LABEL_65;
      }
    }

    v90 = v66;
    v185 = v187[84];
    v186 = v87;
    v91 = v150;
    sub_1DACB7604();
    sub_1DAA642D8();
    sub_1DACB9B44();
    v93 = v92;
    (*v149)(v91, v151);
    if (v93)
    {
      sub_1DACB7A94();
    }

    else
    {
      v94 = sub_1DACB7AB4();
      (*(*(v94 - 8) + 56))(v181, 1, 1, v94);
    }

    v66 = v90;
LABEL_72:
    v95 = v79 == 0;
    v96 = v154;
    v97 = v153 == 0;
    v98 = v176;
    *v20 = v177;
    *(v20 + 1) = v98;
    v99 = v97;
    v100 = v96 == 0;
    v101 = v156;
    v97 = v155 == 0;
    *(v20 + 2) = v178;
    *(v20 + 3) = v85;
    v102 = v97;
    *(v20 + 4) = v175;
    v103 = v157 == 0;
    v104 = v158 == 0;
    v105 = v159 == 0;
    v106 = v168 == 0;
    v107 = v172 == 0;
    v20[40] = v66 == 0;
    *(v20 + 6) = v173;
    v20[56] = v107;
    *(v20 + 8) = v171;
    v20[72] = v106;
    *(v20 + 10) = v170;
    v20[88] = v105;
    *(v20 + 12) = v169;
    v20[104] = v104;
    *(v20 + 14) = v167;
    v20[120] = v103;
    *(v20 + 16) = v166;
    v20[136] = v101 == 0;
    *(v20 + 18) = v163;
    v20[152] = v102;
    v178 = v187[88];
    *(v20 + 20) = v162;
    v108 = v187[89];
    v20[168] = v100;
    v109 = v187[86];
    *(v20 + 22) = v161;
    v110 = v187[87];
    v20[184] = v99;
    v176 = v187[82];
    v177 = v109;
    *(v20 + 24) = v160;
    v111 = v187[83];
    v20[200] = v95;
    v112 = v187[80];
    v113 = v165;
    *(v20 + 26) = v164;
    *(v20 + 27) = v113;
    v114 = v187[81];
    v115 = v147;
    sub_1DAB4CCC4(v182, &v20[v147[18]]);
    sub_1DAB4CCC4(v181, &v20[v115[19]]);
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DABFDEB4(v187);
    v116 = &v20[v115[20]];
    *v116 = v112;
    *(v116 + 1) = v114;
    v117 = &v20[v115[21]];
    v118 = v177;
    *v117 = v176;
    *(v117 + 1) = v111;
    v119 = &v20[v115[22]];
    *v119 = v118;
    *(v119 + 1) = v110;
    v120 = &v20[v115[23]];
    *v120 = v178;
    *(v120 + 1) = v108;
    v121 = v145;
    sub_1DAB78ED4(v20, v145);
    v122 = v180;
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v185 = v122;
    v124 = v179;
    v125 = sub_1DAA4BF3C(v179, v183);
    v127 = *(v122 + 16);
    v128 = (v126 & 1) == 0;
    v46 = __OFADD__(v127, v128);
    v129 = v127 + v128;
    if (v46)
    {
      goto LABEL_96;
    }

    v130 = v126;
    if (*(v122 + 24) >= v129)
    {
      v52 = v152;
      if ((v123 & 1) == 0)
      {
        v138 = v125;
        sub_1DAB67F80();
        v125 = v138;
      }

      v131 = v183;
      if ((v130 & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      sub_1DAB643F0(v129, v123);
      v131 = v183;
      v125 = sub_1DAA4BF3C(v124, v183);
      v52 = v152;
      if ((v130 & 1) != (v132 & 1))
      {
        goto LABEL_101;
      }

      if ((v130 & 1) == 0)
      {
LABEL_86:
        v134 = v124;
        v51 = v185;
        v185[(v125 >> 6) + 8] |= 1 << v125;
        v135 = (v51[6] + 16 * v125);
        *v135 = v134;
        v135[1] = v131;
        sub_1DAB78ED4(v121, v51[7] + *(v146 + 72) * v125);
        v136 = v51[2];
        v46 = __OFADD__(v136, 1);
        v137 = v136 + 1;
        if (v46)
        {
          goto LABEL_97;
        }

        v51[2] = v137;
        goto LABEL_88;
      }
    }

    v133 = v125;

    v51 = v185;
    sub_1DACAB2E4(v121, v185[7] + *(v146 + 72) * v133);
LABEL_88:
    v53 = v148;
LABEL_89:
    if (v184 == v55)
    {

      v49 = v141;
      v50 = v144;
      goto LABEL_22;
    }

    ++v55;
    v56 += 720;
  }

  while (v55 < *(v53 + 16));
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DACAA118()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE127040));

  v1 = qword_1ECBE9AC8;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EE127050;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1DACAA200(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE127040));

  v2 = qword_1ECBE9AC8;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EE127050;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_1DACAA2EC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DACA87D0(sub_1DAADF554, v4);
}

void sub_1DACAA3BC(uint64_t a1)
{
  sub_1DACAA554(319, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DACAA554(319, &qword_1EE11F998, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1DACAA554(319, &qword_1EE11F780, MEMORY[0x1E69E6810], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1DAA53180(319, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DACAA554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DACAA5AC(uint64_t a1)
{
  if (!qword_1EE126CE0)
  {
    type metadata accessor for YahooQuoteDetailItem(255);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE126CE0);
    }
  }
}

uint64_t sub_1DACAA630(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DACAA554(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DACAA698(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DACBA104();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DACB96C4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DACAA860(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DACAA790(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DACAA790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1DACBA174(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DACAA860(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1DAC0694C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1DACAAE3C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1DACBA174();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1DACBA174();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DAADB818(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DAADB818((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1DACAAE3C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAC0694C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DAC068C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1DACBA174(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1DACAAE3C(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1DACBA174() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1DACAB064(uint64_t a1)
{
  if (!qword_1EE127168)
  {
    v2 = sub_1DACAB0C0();
    v4 = type metadata accessor for YahooBaseOperation(a1, &type metadata for YahooQuoteDetailResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE127168);
    }
  }
}

unint64_t sub_1DACAB0C0()
{
  result = qword_1EE127170;
  if (!qword_1EE127170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE127170);
  }

  return result;
}

uint64_t sub_1DACAB124(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1DAB25E98(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      if (v8 >= v9 >> 1)
      {
        sub_1DAB25E98((v9 > 1), v8 + 1, 1);
      }

      v4 += 3;
      *(v12 + 16) = v8 + 1;
      v10 = (v12 + 24 * v8);
      v10[4] = v5;
      v10[5] = v6;
      v10[6] = v7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DACAB218(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1DAB25F58(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = *(v10 + 16);
      v8 = *(v10 + 24);
      sub_1DACB71E4();
      if (v7 >= v8 >> 1)
      {
        sub_1DAB25F58((v8 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 8 * v7 + 32) = v5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DACAB2E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DACAB348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_1DACB71E4();

    sub_1DACB71E4();
  }
}

uint64_t sub_1DACAB38C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result;
    v7 = *(a3 + 16);
    v8 = *(type metadata accessor for NetworkEvent(0) - 8);
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      result = v7(v9, a2, a3);
      v9 += v10;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DACAB494()
{
  sub_1DAA58220(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

unint64_t sub_1DACAB518()
{
  result = qword_1ECBE9AD0;
  if (!qword_1ECBE9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AD0);
  }

  return result;
}

unint64_t sub_1DACAB580()
{
  result = qword_1ECBE9AD8;
  if (!qword_1ECBE9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AD8);
  }

  return result;
}

uint64_t sub_1DACAB5D4(uint64_t a1)
{
  sub_1DACB8294();
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB8B44();
  v1 = sub_1DACB89D4();
  sub_1DAB449A0();
  v2 = sub_1DACB8A54();

  return v2;
}

uint64_t sub_1DACAB6C8(uint64_t a1)
{
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DACAB754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_1DAA73914;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;
  v14[4] = sub_1DACABCF4;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DAA74E58;
  v14[3] = &block_descriptor_42;
  v12 = _Block_copy(v14);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [a5 setFetchCompletionBlock_];
  _Block_release(v12);
  return sub_1DACB82C4();
}

void sub_1DACAB894(void *a1, void (*a2)(), uint64_t a3, void (*a4)(void))
{
  if ([a1 fetchedObject] && (sub_1DAB44A98(0), (swift_dynamicCast() & 1) != 0))
  {
    a2();
  }

  else
  {
    v7 = [a1 error];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      sub_1DACABCA0();
      v8 = swift_allocError();
    }

    a4();
  }
}

uint64_t sub_1DACAB9A4(uint64_t a1)
{
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB8B44();
  v1 = sub_1DACB89D4();
  sub_1DAB449A0();
  v2 = sub_1DACB8A54();

  return v2;
}

unint64_t *sub_1DACABA84(unint64_t *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    result = sub_1DACB9E14();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1DACABCA0();
    swift_allocError();
    return swift_willThrow();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12777A0](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:
    sub_1DACABC3C(0, &qword_1EE11D3D0, sub_1DAB449A0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DACABB8C(uint64_t a1)
{
  sub_1DACB8294();
  sub_1DACABC3C(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v1 = sub_1DACB8B44();

  return v1;
}

void sub_1DACABC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DACABCA0()
{
  result = qword_1ECBE9AE0;
  if (!qword_1ECBE9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AE0);
  }

  return result;
}

unint64_t sub_1DACABD14()
{
  result = qword_1ECBE9AE8;
  if (!qword_1ECBE9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AE8);
  }

  return result;
}

uint64_t sub_1DACABD7C()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DACABDF8(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DACABE50@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DACB9F04();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DACABEE8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DACABF40(uint64_t a1)
{
  v2 = sub_1DACACBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DACABF7C(uint64_t a1)
{
  v2 = sub_1DACACBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DACABFB8(void *a1, uint64_t a2)
{
  sub_1DACAD424(0, &qword_1ECBE9B18, sub_1DACACBF8, &type metadata for SDSSearchResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACACBF8();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DACACC4C();
  sub_1DACACCF0(&qword_1ECBE9B20, sub_1DACACD5C, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DACAC17C(uint64_t a1)
{
  sub_1DACB9404();
}

unint64_t sub_1DACAC278@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DACACF78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DACAC2A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65676E6168637865;
  v5 = 0xE900000000000065;
  v6 = 0x6D614E74726F6873;
  v7 = 0xEB00000000656D61;
  v8 = 0x4E746361706D6F63;
  if (v2 != 4)
  {
    v8 = 0x79546C6F626D7973;
    v7 = 0xEA00000000006570;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701667182;
  if (v2 != 1)
  {
    v10 = 0x6C6F626D7973;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DACAC36C()
{
  v1 = *v0;
  v2 = 0x65676E6168637865;
  v3 = 0x6D614E74726F6873;
  v4 = 0x4E746361706D6F63;
  if (v1 != 4)
  {
    v4 = 0x79546C6F626D7973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DACAC42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DACACF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DACAC454(uint64_t a1)
{
  v2 = sub_1DACAD37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DACAC490(uint64_t a1)
{
  v2 = sub_1DACAD37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DACAC4CC(void *a1)
{
  v3 = v1;
  sub_1DACAD424(0, &qword_1ECBE9B60, sub_1DACAD37C, &type metadata for SDSSearchResponse.SDSSearchResponseItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACAD37C();
  sub_1DACBA304();
  v18 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v17 = 1;
    sub_1DACBA094();
    v16 = 2;
    sub_1DACBA094();
    v15 = 3;
    sub_1DACBA024();
    v14 = 4;
    sub_1DACBA024();
    v13 = *(v3 + 80);
    v12 = 5;
    sub_1DACAD48C();
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1DACAC6FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DACAD660(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DACAC72C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DACAD6AC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sub_1DACAC7A8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DACACFC4(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DACAC81C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1DACAC8DC(v7, v9) & 1;
}

void *sub_1DACAC888@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DACACA04(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DACAC8DC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DACBA174() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[9];
  v7 = a2[9];
  if (v6)
  {
    if (!v7 || (a1[8] != a2[8] || v6 != v7) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = a2[7];
  if (v8)
  {
    if (v9 && (a1[6] == a2[6] && v8 == v9 || (sub_1DACBA174() & 1) != 0))
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_26:

  return sub_1DAC3D738();
}

void *sub_1DACACA04(void *a1)
{
  sub_1DACAD424(0, &qword_1ECBE9AF0, sub_1DACACBF8, &type metadata for SDSSearchResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACACBF8();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DACACC4C();
    sub_1DACACCF0(&qword_1ECBE9B08, sub_1DACACC9C, MEMORY[0x1E69E6330]);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DACACBF8()
{
  result = qword_1ECBE9AF8;
  if (!qword_1ECBE9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9AF8);
  }

  return result;
}

void sub_1DACACC4C()
{
  if (!qword_1ECBE9B00)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9B00);
    }
  }
}

unint64_t sub_1DACACC9C()
{
  result = qword_1ECBE9B10;
  if (!qword_1ECBE9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B10);
  }

  return result;
}

uint64_t sub_1DACACCF0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DACACC4C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DACACD5C()
{
  result = qword_1ECBE9B28;
  if (!qword_1ECBE9B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B28);
  }

  return result;
}

uint64_t sub_1DACACDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1DACACE08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DACACE74()
{
  result = qword_1ECBE9B30;
  if (!qword_1ECBE9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B30);
  }

  return result;
}

unint64_t sub_1DACACECC()
{
  result = qword_1ECBE9B38;
  if (!qword_1ECBE9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B38);
  }

  return result;
}

unint64_t sub_1DACACF24()
{
  result = qword_1ECBE9B40;
  if (!qword_1ECBE9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B40);
  }

  return result;
}

unint64_t sub_1DACACF78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DACACFC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_1DACAD424(0, &qword_1ECBE9B48, sub_1DACAD37C, &type metadata for SDSSearchResponse.SDSSearchResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACAD37C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = a1;
  v10 = v6;
  v11 = v37;
  v44 = 0;
  v12 = v5;
  v13 = sub_1DACB9FA4();
  v15 = v14;
  v36 = v13;
  v43 = 1;
  v16 = sub_1DACB9FA4();
  v18 = v17;
  v35 = v16;
  v42 = 2;
  v33 = sub_1DACB9FA4();
  v34 = v19;
  v41 = 3;
  v31 = sub_1DACB9F34();
  v32 = v20;
  v40 = 4;
  v29 = sub_1DACB9F34();
  v30 = v21;
  v38 = 5;
  sub_1DACAD3D0();
  sub_1DACB9FE4();
  (*(v10 + 8))(v8, v12);
  v22 = v39;
  result = __swift_destroy_boxed_opaque_existential_1(v9);
  v24 = v35;
  *v11 = v36;
  *(v11 + 8) = v15;
  *(v11 + 16) = v24;
  *(v11 + 24) = v18;
  v25 = v34;
  *(v11 + 32) = v33;
  *(v11 + 40) = v25;
  v26 = v30;
  *(v11 + 48) = v29;
  *(v11 + 56) = v26;
  v27 = v32;
  *(v11 + 64) = v31;
  *(v11 + 72) = v27;
  *(v11 + 80) = v22;
  return result;
}

unint64_t sub_1DACAD37C()
{
  result = qword_1ECBE9B50;
  if (!qword_1ECBE9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B50);
  }

  return result;
}

unint64_t sub_1DACAD3D0()
{
  result = qword_1ECBE9B58;
  if (!qword_1ECBE9B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B58);
  }

  return result;
}

void sub_1DACAD424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DACAD48C()
{
  result = qword_1ECBE9B68;
  if (!qword_1ECBE9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B68);
  }

  return result;
}

unint64_t sub_1DACAD504()
{
  result = qword_1ECBE9B70;
  if (!qword_1ECBE9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B70);
  }

  return result;
}

unint64_t sub_1DACAD55C()
{
  result = qword_1ECBE9B78;
  if (!qword_1ECBE9B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B78);
  }

  return result;
}

unint64_t sub_1DACAD5B4()
{
  result = qword_1ECBE9B80;
  if (!qword_1ECBE9B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B80);
  }

  return result;
}

unint64_t sub_1DACAD60C()
{
  result = qword_1ECBE9B88;
  if (!qword_1ECBE9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B88);
  }

  return result;
}

unint64_t sub_1DACAD660(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DACAD6AC(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACBA2D4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_1DACBA184();
    LODWORD(v3) = sub_1DACAD660(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v3 == 8)
    {
      v3 = 0;
    }

    else
    {
      v3 = v3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DACAD780()
{
  result = qword_1ECBE9B90;
  if (!qword_1ECBE9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9B90);
  }

  return result;
}

uint64_t sub_1DACAD7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v16 = (*(a5 + 8) + **(a5 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAA9A3AC;
  v14.n128_f64[0] = a6;

  return v16(a1, a2, a3, a4, a5, v14);
}

uint64_t sub_1DACAD958@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA70078(0);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DACAD9D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 2168) = v4;
  *(v5 + 2120) = a3;
  *(v5 + 2072) = a4;
  *(v5 + 2024) = a2;
  *(v5 + 1976) = a1;
  sub_1DACB17E4(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant, MEMORY[0x1E69E6720]);
  *(v5 + 2216) = v6;
  *(v5 + 2264) = swift_task_alloc();
  *(v5 + 2312) = swift_task_alloc();
  *(v5 + 2360) = swift_task_alloc();
  *(v5 + 2368) = swift_task_alloc();
  v7 = sub_1DACB8204();
  *(v5 + 2376) = v7;
  v8 = *(v7 - 8);
  *(v5 + 2384) = v8;
  *(v5 + 2392) = *(v8 + 64);
  *(v5 + 2400) = swift_task_alloc();
  *(v5 + 2408) = swift_task_alloc();
  *(v5 + 2416) = swift_task_alloc();
  v9 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  *(v5 + 2424) = v9;
  *(v5 + 2432) = *(v9 + 64);
  *(v5 + 2440) = swift_task_alloc();
  *(v5 + 2448) = swift_task_alloc();
  *(v5 + 2456) = swift_task_alloc();
  v10 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  *(v5 + 2464) = v10;
  *(v5 + 2472) = *(v10 - 8);
  *(v5 + 2480) = swift_task_alloc();
  *(v5 + 2488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACADC28, 0, 0);
}

uint64_t sub_1DACADC28()
{
  v28 = v0[307];
  v1 = v0[304];
  v2 = v0[303];
  v3 = v0[302];
  v21 = v3;
  v23 = v0[306];
  v24 = v0[301];
  v25 = v0[305];
  v26 = v0[300];
  v4 = v0[298];
  v5 = v0[297];
  v27 = v0[271];
  v6 = v0[265];
  v30 = v6;
  v7 = v0[259];
  v32 = v0[253];
  sub_1DACB1910(v32, v28, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  v31 = *(v4 + 16);
  v31(v3, v6, v5);
  v8 = *(v2 + 80);
  v9 = (v8 + 24) & ~v8;
  v22 = v1 + 7;
  v10 = (v9 + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + 80);
  v12 = swift_allocObject();
  v0[312] = v12;
  *(v12 + 16) = v27;
  sub_1DACB1848(v28, v12 + v9, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  *(v12 + v10) = v7;
  v29 = *(v4 + 32);
  v29(v12 + ((v10 + v11 + 8) & ~v11), v21, v5);
  sub_1DACB71F4();
  swift_asyncLet_begin();
  sub_1DACB1910(v32, v23, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  v31(v24, v6, v5);
  v13 = (v8 + 16) & ~v8;
  v14 = (v13 + v22) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v11 + 8) & ~v11;
  v17 = swift_allocObject();
  v0[313] = v17;
  sub_1DACB1848(v23, v17 + v13, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  *(v17 + v14) = v27;
  *(v17 + v15) = v7;
  v29(v17 + v16, v24, v5);
  sub_1DACB71F4();
  swift_asyncLet_begin();
  sub_1DACB1910(v32, v25, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  v31(v26, v30, v5);
  v18 = swift_allocObject();
  v0[314] = v18;
  sub_1DACB1848(v25, v18 + v13, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  *(v18 + v14) = v27;
  *(v18 + v15) = v7;
  v29(v18 + v16, v26, v5);
  sub_1DACB71F4();
  swift_asyncLet_begin();
  v19 = v0[311];

  return MEMORY[0x1EEE6DEC0](v0 + 2, v19, sub_1DACADFF0, v0 + 242);
}

uint64_t sub_1DACADFF0()
{
  v1[315] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DACAE4B4, 0, 0);
  }

  else
  {
    sub_1DACB1910(v1[311], v1[310], type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v2 = v1[296];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v2, sub_1DACAE0B4, v1 + 266);
  }
}

uint64_t sub_1DACAE0B4()
{
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DACAE6A0, 0, 0);
  }

  else
  {
    sub_1DACB171C(v1[296], v1[289]);
    v2 = v1[295];

    return MEMORY[0x1EEE6DEC0](v1 + 162, v2, sub_1DACAE168, v1 + 272);
  }
}

uint64_t sub_1DACAE168()
{
  if (v0)
  {

    v1 = sub_1DACAE728;
  }

  else
  {
    v1 = sub_1DACAE1E4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1DACAE1E4()
{
  sub_1DACB171C(v0[295], v0[283]);
  v1 = v0[289];
  v2 = v0[283];
  v3 = v0[247];
  sub_1DACB1848(v0[310], v3, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  sub_1DACB1C8C(v1, v3 + *(v4 + 20), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DACB1C8C(v2, v3 + *(v4 + 24), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v5 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 162, v5, sub_1DACAE2E8, v0 + 278);
}

uint64_t sub_1DACAE37C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DACAE568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DACAE6A0()
{
  (*(v0[309] + 56))(v0[289], 1, 1, v0[308]);
  v1 = v0[295];

  return MEMORY[0x1EEE6DEC0](v0 + 162, v1, sub_1DACAE168, v0 + 272);
}

uint64_t sub_1DACAE728()
{
  (*(v0[309] + 56))(v0[283], 1, 1, v0[308]);
  v1 = v0[289];
  v2 = v0[283];
  v3 = v0[247];
  sub_1DACB1848(v0[310], v3, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  sub_1DACB1C8C(v1, v3 + *(v4 + 20), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DACB1C8C(v2, v3 + *(v4 + 24), qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v5 = v0[295];

  return MEMORY[0x1EEE6DEB0](v0 + 162, v5, sub_1DACAE2E8, v0 + 278);
}

uint64_t sub_1DACAE844(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a4;
  v9 = swift_task_alloc();
  v5[4] = v9;
  *v9 = v5;
  v9[1] = sub_1DACAE8FC;

  return sub_1DACAF4E4(a4, a5, a2);
}

uint64_t sub_1DACAE8FC(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    *(v8 + 40) = a3;
    *(v8 + 48) = a2;
    *(v8 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DACAEA60, 0, 0);
  }
}

uint64_t sub_1DACAEA60()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v4 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DACB1910(v4, v5 + *(v7 + 28), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  *v5 = v1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v6;
  v8 = v0[1];

  return v8();
}

uint64_t sub_1DACAEB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  sub_1DACB17B0(0);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACAEC14, 0, 0);
}

uint64_t sub_1DACAEC14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v4 = *(v0 + 3);
  v5 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  sub_1DACB1910(v4 + *(v5 + 20), v3, sub_1DACB17B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 2);
    sub_1DACB18B0(*(v0 + 7), sub_1DACB17B0);
    v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

    v8 = *(v0 + 1);

    return v8();
  }

  else
  {
    sub_1DACB1848(*(v0 + 7), *(v0 + 10), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v10 = swift_task_alloc();
    *(v0 + 11) = v10;
    *v10 = v0;
    v10[1] = sub_1DACAEDE4;
    v11 = *(v0 + 10);
    v12 = *(v0 + 6);
    v13 = v0[5];

    return sub_1DACAF4E4(v11, v12, v13);
  }
}

uint64_t sub_1DACAEDE4(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  *(*v4 + 96) = v3;

  if (v3)
  {
    v9 = sub_1DACAF050;
  }

  else
  {
    *(v8 + 104) = a3;
    *(v8 + 112) = a2;
    *(v8 + 120) = a1;
    v9 = sub_1DACAEF20;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DACAEF20()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[2];
  v6 = *(v4 + *(v0[8] + 20));
  v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DACB1910(v4, v5 + *(v7 + 28), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  *v5 = v1;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v6;
  sub_1DACB18B0(v4, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DACAF050()
{
  sub_1DACB18B0(*(v0 + 80), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DACAF0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 40) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  sub_1DACB17B0(0);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACAF1D8, 0, 0);
}

uint64_t sub_1DACAF1D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v4 = *(v0 + 3);
  v5 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  sub_1DACB1910(v4 + *(v5 + 24), v3, sub_1DACB17B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 2);
    sub_1DACB18B0(*(v0 + 7), sub_1DACB17B0);
    v7 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

    v8 = *(v0 + 1);

    return v8();
  }

  else
  {
    sub_1DACB1848(*(v0 + 7), *(v0 + 10), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v10 = swift_task_alloc();
    *(v0 + 11) = v10;
    *v10 = v0;
    v10[1] = sub_1DACAF3A8;
    v11 = *(v0 + 10);
    v12 = *(v0 + 6);
    v13 = v0[5];

    return sub_1DACAF4E4(v11, v12, v13);
  }
}

uint64_t sub_1DACAF3A8(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  *(*v4 + 96) = v3;

  if (v3)
  {
    v9 = sub_1DACB21A8;
  }

  else
  {
    *(v8 + 104) = a3;
    *(v8 + 112) = a2;
    *(v8 + 120) = a1;
    v9 = sub_1DACB21AC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DACAF4E4(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 88) = a2;
  *(v4 + 96) = v3;
  *(v4 + 80) = a3;
  *(v4 + 72) = a1;
  v5 = sub_1DACB8344();
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_1DACB8204();
  *(v4 + 128) = v6;
  v7 = *(v6 - 8);
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 + 64);
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_1DACB7AB4();
  *(v4 + 160) = v8;
  v9 = *(v8 - 8);
  *(v4 + 168) = v9;
  *(v4 + 176) = *(v9 + 64);
  *(v4 + 184) = swift_task_alloc();
  v10 = sub_1DACB81B4();
  *(v4 + 192) = v10;
  *(v4 + 200) = *(v10 - 8);
  *(v4 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DACAF6D0, 0, 0);
}

uint64_t sub_1DACAF6D0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);
  sub_1DACB17E4(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v4 = *(v2 + 80);
  v40 = ~v4;
  v5 = (v4 + 32) & ~v4;
  v37 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v41 = *(v2 + 16);
  v41(v6 + v5, v3, v1);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D648 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v30 = v7;
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v33 = v9;
  v34 = v8;
  v27 = *(v0 + 176);
  v29 = *(v0 + 168);
  v36 = *(v0 + 160);
  v39 = *(v0 + 152);
  v11 = *(v0 + 136);
  v38 = *(v0 + 128);
  v35 = *(v0 + 112);
  v31 = *(v0 + 120);
  v32 = *(v0 + 104);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v14 = *(v0 + 72);
  v25 = v14;
  v26 = *(v0 + 88);
  sub_1DACB7FE4();

  v15 = MEMORY[0x1E69D63C0];
  if (!*(v0 + 240))
  {
    v15 = MEMORY[0x1E69D63C8];
  }

  (*(v8 + 104))(v7, *v15, v9);
  sub_1DACB1B60(0, &qword_1EE11FED8, MEMORY[0x1E69D6B00]);
  sub_1DAA4D678(v12 + 24, v0 + 16);
  v41(v10, v14, v36);
  (*(v11 + 16))(v39, v26, v38);
  v16 = (v37 + 56) & v40;
  v28 = v27 + 7;
  v17 = (v28 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_1DAA4D460((v0 + 16), v19 + 16);
  v20 = *(v29 + 32);
  v20(v19 + v16, v10, v36);
  *(v19 + v17) = v13;
  (*(v11 + 32))(v19 + v18, v39, v38);
  v41(v10, v25, v36);
  v21 = (v37 + 24) & v40;
  v42 = swift_allocObject();
  *(v42 + 16) = v12;
  v20(v42 + v21, v10, v36);
  *(v42 + ((v28 + v21) & 0xFFFFFFFFFFFFFFF8)) = v13;
  sub_1DACB1B18(&qword_1EE11F120, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  swift_retain_n();
  v22 = sub_1DACBA114();
  MEMORY[0x1E1276F20](v22);

  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  sub_1DACB1B18(&qword_1EE1255B0, MEMORY[0x1E69D6528], MEMORY[0x1E69D6530]);
  sub_1DAA7A378(0);
  sub_1DACB1B18(&qword_1EE125518, sub_1DAA7A378, MEMORY[0x1E69E6328]);
  sub_1DACB9BB4();
  *(v0 + 216) = sub_1DACB89F4();

  (*(v35 + 8))(v31, v32);
  (*(v34 + 8))(v30, v33);
  v23 = swift_task_alloc();
  *(v0 + 224) = v23;
  *v23 = v0;
  v23[1] = sub_1DACAFCB0;

  return MEMORY[0x1EEE44EE0](v0 + 56);
}

uint64_t sub_1DACAFCB0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1DACAFECC;
  }

  else
  {

    v2 = sub_1DACAFDCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DACAFDCC()
{
  v1 = v0[7];
  if (*(v1 + 16) && (v2 = sub_1DAB0979C(v0[9]), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 24 * v2);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    sub_1DAB0B080(*v4, v6);

    v8 = v0[1];
    v9.n128_u64[0] = v7;

    return v8(v5, v6, v9);
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_1DACAFECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DACAFF64(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v8 = sub_1DACB8204();
  v23[0] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB7AB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB17E4(0, &qword_1EE11FE80, sub_1DAA6FF74, MEMORY[0x1E69D6B18]);
  v23[1] = v16;
  (*(v13 + 16))(v15, a4, v12);
  sub_1DAA4D678(v24, v25);
  (*(v9 + 16))(v11, a5, v8);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 8) & ~*(v9 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v17, v15, v12);
  sub_1DAA4D460(v25, v21 + v18);
  *(v21 + v19) = a1;
  (*(v9 + 32))(v21 + v20, v11, v23[0]);
  return sub_1DACB8A44();
}

uint64_t sub_1DACB01F0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DACB0218, 0, 0);
}

uint64_t sub_1DACB0218()
{
  v1 = *(v0 + 24);
  sub_1DACB17E4(0, &qword_1EE11F548, sub_1DACB1FD4, MEMORY[0x1E69E6F90]);
  sub_1DACB1FD4(0);
  *(v0 + 48) = v2;
  v3 = *(*(v2 - 8) + 80);
  *(v0 + 120) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = xmmword_1DACC1D20;
  v6 = sub_1DACB7AB4();
  *(v0 + 64) = v6;
  v7 = *(v6 - 8);
  *(v0 + 72) = v7;
  (*(v7 + 16))(v5 + v4, v1, v6);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1DACB03E8;
  v9 = *(v0 + 40);
  v10 = *(v0 + 32);
  v11 = *(v0 + 24);

  return sub_1DAB0B90C(v11, v9, v10);
}

uint64_t sub_1DACB03E8(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  *(*v4 + 88) = v3;

  if (v3)
  {
    v9 = sub_1DACB060C;
  }

  else
  {
    v10 = *(v8 + 48);
    *(v8 + 96) = a3;
    *(v8 + 104) = a2;
    *(v8 + 112) = a1;
    *(v8 + 124) = *(v10 + 48);
    v9 = sub_1DACB0530;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DACB0530()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = v2 + ((*(v0 + 120) + 32) & ~*(v0 + 120));
  v5 = (v4 + *(v0 + 124));
  *v5 = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);
  v5[1].i64[0] = v1;
  v6 = sub_1DAB69C14(v2);
  swift_setDeallocating();
  sub_1DACB18B0(v4, sub_1DACB1FD4);
  swift_deallocClassInstance();
  *v3 = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DACB060C()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56) + ((*(v0 + 120) + 32) & ~*(v0 + 120)), *(v0 + 64));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DACB06C0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DACB7AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DACB17E4(0, &qword_1EE11FE80, sub_1DAA6FF74, MEMORY[0x1E69D6B18]);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_1DACB71F4();
  return sub_1DACB8A94();
}

unint64_t sub_1DACB085C@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = sub_1DACB1E78();
  if (v5 >> 60 == 15)
  {
    result = sub_1DAB69C14(MEMORY[0x1E69E7CC0]);
    v8 = result;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v11 = v6;
    sub_1DACB17E4(0, &qword_1EE11F548, sub_1DACB1FD4, MEMORY[0x1E69E6F90]);
    sub_1DACB1FD4(0);
    v13 = v12 - 8;
    v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DACC1D20;
    v16 = v15 + v14;
    v17 = (v16 + *(v13 + 56));
    v18 = sub_1DACB7AB4();
    (*(*(v18 - 8) + 16))(v16, a1, v18);
    *v17 = v9;
    v17[1] = v10;
    v17[2] = v11;
    v8 = sub_1DAB69C14(v15);
    swift_setDeallocating();
    sub_1DACB18B0(v16, sub_1DACB1FD4);
    result = swift_deallocClassInstance();
  }

  *a2 = v8;
  return result;
}

uint64_t sub_1DACB0A28(uint64_t a1, uint64_t a2)
{
  sub_1DACB17E4(0, &qword_1EE11FE80, sub_1DAA6FF74, MEMORY[0x1E69D6B18]);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71E4();
  sub_1DACB71F4();
  return sub_1DACB8A94();
}

uint64_t sub_1DACB0ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a3;
  v59 = a2;
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v48 - v9;
  sub_1DACB17E4(0, &qword_1EE11F128, sub_1DACB1C20, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = *(a1 + 64);
  v51 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v50 = (v16 + 63) >> 6;
  v52 = v5 + 16;
  v62 = (v5 + 32);
  v55 = v5;
  v56 = a1;
  v57 = (v5 + 8);
  result = sub_1DACB71E4();
  v20 = 0;
  v58 = v4;
  v53 = v14;
  v61 = v8;
  while (v18)
  {
    v21 = v20;
LABEL_14:
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v21 << 6);
    v28 = v55;
    v27 = v56;
    v29 = v54;
    (*(v55 + 16))(v54, *(v56 + 48) + *(v55 + 72) * v26, v4);
    v30 = (*(v27 + 56) + 24 * v26);
    v31 = *v30;
    v63 = v30[1];
    v32 = v30[2];
    sub_1DACB1C20(0);
    v34 = v33;
    v35 = v60;
    v36 = &v60[*(v33 + 48)];
    (*(v28 + 32))(v60, v29, v4);
    v37 = v31;
    *v36 = v31;
    v38 = v63;
    *(v36 + 1) = v63;
    *(v36 + 2) = v32;
    v24 = v35;
    (*(*(v34 - 8) + 56))(v35, 0, 1, v34);
    sub_1DAB0B080(v37, v38);
    v23 = v21;
    v14 = v53;
LABEL_15:
    sub_1DACB1C8C(v24, v14, &qword_1EE11F128, sub_1DACB1C20);
    sub_1DACB1C20(0);
    v39 = (*(*(v34 - 8) + 48))(v14, 1, v34);
    v40 = v61;
    if (v39 == 1)
    {
      v47 = v56;

      *v49 = v47;
      return sub_1DACB71E4();
    }

    v63 = v23;
    v41 = &v14[*(v34 + 48)];
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v58;
    (*v62)(v61, v14, v58);
    sub_1DACB88F4();
    if (v64)
    {
      sub_1DACB79C4();
      v64 = v42;
      v65 = v43;
      v66 = v44;
      sub_1DAB0B080(v42, v43);
      v40 = v61;
      sub_1DACB8DC4();
    }

    sub_1DAA563C0(v42, v43);
    result = (*v57)(v40, v45);
    v20 = v63;
    v4 = v45;
  }

  if (v50 <= (v20 + 1))
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v50;
  }

  v23 = v22 - 1;
  v24 = v60;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v50)
    {
      sub_1DACB1C20(0);
      v34 = v46;
      (*(*(v46 - 8) + 56))(v24, 1, 1, v46);
      v18 = 0;
      goto LABEL_15;
    }

    v18 = *(v51 + 8 * v21);
    ++v20;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DACB0FC8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAA94754;

  return sub_1DACAD9D4(a1, a2, a3, a4);
}

uint64_t sub_1DACB108C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1DACB8204() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + v7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DAA9A3AC;

  return sub_1DACAE844(a1, v11, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1DACB11F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DAA9A3AC;

  return sub_1DACAEB1C(a1, v1 + v6, v11, v1 + v10, v12);
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v2 = *(*(v1 - 8) + 80);
  v14 = *(*(v1 - 8) + 64);
  v16 = sub_1DACB8204();
  v3 = *(v16 - 8);
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v17 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);
  v6 = sub_1DACB7AB4();
  v13 = *(*(v6 - 8) + 8);
  v13(v5, v6);
  v7 = *(v1 + 20);
  v8 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v9 = *(*(v8 - 8) + 48);
  if (!v9(v5 + v7, 1, v8))
  {
    v13(v5 + v7, v6);
  }

  v10 = *(v1 + 24);
  if (!v9(v5 + v10, 1, v8))
  {
    v13(v5 + v10, v6);
  }

  v11 = (((((v14 + ((v2 + 16) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v4 + 8) & ~v4;

  (*(v3 + 8))(v17 + v11, v16);

  return MEMORY[0x1EEE6BDD0](v17, v11 + v15, v2 | v4 | 7);
}

uint64_t sub_1DACB15AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RawAttributionSourceLogo.Unresolved(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DAA9A3AC;

  return sub_1DACAF0E0(a1, v1 + v6, v11, v1 + v10, v12);
}

uint64_t sub_1DACB171C(uint64_t a1, uint64_t a2)
{
  sub_1DACB17E4(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DACB17E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DACB1848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DACB18B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DACB1910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DACB1978(uint64_t a1)
{
  v3 = *(sub_1DACB7AB4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1DACB8204() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_1DACAFF64(v7, a1, v1 + 16, v1 + v4, v8);
}

uint64_t sub_1DACB1A60(uint64_t a1, double a2)
{
  v5 = *(sub_1DACB7AB4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1DACB06C0(a2, v7, a1, v8, v2 + v6);
}

uint64_t sub_1DACB1B18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DACB1B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DACB7AB4();
    v7 = sub_1DACB1B18(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v8 = a3(a1, v6, &type metadata for DownloadedImage, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DACB1C20(uint64_t a1)
{
  if (!qword_1EE11F130)
  {
    sub_1DACB7AB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F130);
    }
  }
}

uint64_t sub_1DACB1C8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DACB17E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = sub_1DACB7AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DACB1E78()
{
  sub_1DACB88F4();
  if (!v5)
  {
    return 0;
  }

  sub_1DACB79C4();
  sub_1DACB8DB4();

  if (v6 >> 60 == 15)
  {
    return 0;
  }

  if (qword_1EE11D360 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  __swift_project_value_buffer(v1, qword_1EE11D368);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Using cached attribution source logo", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  return v5;
}

void sub_1DACB1FD4(uint64_t a1)
{
  if (!qword_1EE123A68)
  {
    sub_1DACB7AB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE123A68);
    }
  }
}

uint64_t sub_1DACB203C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DACB7AB4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1DACB8204() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1DAA94754;

  return sub_1DACB01F0(a1, v1 + v6, v11, v1 + v7, v1 + v10);
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x1EEDBA770](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}