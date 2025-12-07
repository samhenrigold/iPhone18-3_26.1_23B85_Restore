unint64_t sub_1D16384C4()
{
  result = qword_1EC63DF60;
  if (!qword_1EC63DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DF60);
  }

  return result;
}

uint64_t sub_1D1638534()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static ListConceptManager.activeMedicationsListManager(using:changeProvider:)(void *a1, void *a2)
{
  v4 = HKStringFromListUserDomainType();
  sub_1D166FA04();

  sub_1D1638628();
  sub_1D166F4B4();
  swift_allocObject();
  v5 = a1;
  v6 = a2;
  return sub_1D166F494();
}

unint64_t sub_1D1638628()
{
  result = qword_1EDECA9C0;
  if (!qword_1EDECA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA9C0);
  }

  return result;
}

uint64_t ListConceptManager.contains(concept:)(void *a1)
{
  v1 = sub_1D166F4A4();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_20:

    v12 = sub_1D166F484();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_39;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_40:
      v23 = 0;
      goto LABEL_41;
    }

LABEL_22:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D388D4D0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v14 = sub_1D1670224();
        if (!v14)
        {
          goto LABEL_40;
        }

        goto LABEL_22;
      }

      v19 = [v16 firstConceptIdentifier];
      v20 = [a1 identifier];
      v21 = v20;
      if (!v19)
      {
        break;
      }

      if (!v20)
      {

        v21 = v17;
LABEL_24:

        goto LABEL_25;
      }

      sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
      v22 = sub_1D16700A4();

      if (v22)
      {
        goto LABEL_36;
      }

LABEL_25:
      ++v15;
      if (v18 == v14)
      {
        goto LABEL_40;
      }
    }

    if (!v21)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D388D4D0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v3 = sub_1D1670224();
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    v8 = [v5 firstConceptIdentifier];
    v9 = [a1 identifier];
    v10 = v9;
    if (!v8)
    {

      if (!v10)
      {
        goto LABEL_36;
      }

      goto LABEL_5;
    }

    if (v9)
    {
      break;
    }

    v10 = v6;
LABEL_5:

LABEL_6:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_20;
    }
  }

  sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
  v11 = sub_1D16700A4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_36:
  v23 = 1;
LABEL_41:

  return v23;
}

uint64_t sub_1D163896C(void *a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_21:
    v4 = sub_1D1670224();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:

    return 0;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D388D4D0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9 = [v6 firstConceptIdentifier];
    v10 = [a1 identifier];
    v11 = v10;
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    if (v10)
    {
      break;
    }

    v11 = v9;
LABEL_5:

LABEL_6:
    ++v5;
    if (v8 == v4)
    {
      goto LABEL_22;
    }
  }

  sub_1D15EE5A8(0, &qword_1EC63DB10, 0x1E696C020);
  v12 = sub_1D16700A4();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

uint64_t sub_1D1638B10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1638B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1638BA8(uint64_t a1, uint64_t a2)
{
  sub_1D1638E54(0);
  v17 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15EE5A8(0, &qword_1EDECADC8, 0x1E696C1C0);
  sub_1D15EE5A8(0, &qword_1EDECB338, 0x1E696C530);
  v7 = objc_opt_self();
  v8 = [objc_opt_self() medicationUserDomainConceptTypeIdentifier];
  v9 = [v7 predicateForUserDomainConceptsWithTypeIdentifier_];

  v10 = sub_1D166FF24();
  sub_1D15EE5A8(0, &qword_1EDECACD8, 0x1E696C218);
  v11 = [v7 predicateForListUserDomainConceptWithListType_];
  v12 = sub_1D166FF24();

  v18 = v12;
  v19 = v10;
  sub_1D1638F20(0, &qword_1EDECAE68, &qword_1EDECAE08, &qword_1EDECB338, 0x1E696C530);
  sub_1D1638F20(0, &qword_1EDECAE58, &qword_1EDECADF8, &qword_1EDECACD8, 0x1E696C218);
  sub_1D1638FF4();
  sub_1D163906C();

  sub_1D166F524();
  sub_1D16390E4();
  v13 = v17;
  v14 = sub_1D166F754();

  (*(v4 + 8))(v6, v13);
  return v14;
}

void sub_1D1638E54(uint64_t a1)
{
  if (!qword_1EDECAE78)
  {
    sub_1D1638F20(255, &qword_1EDECAE68, &qword_1EDECAE08, &qword_1EDECB338, 0x1E696C530);
    sub_1D1638F20(255, &qword_1EDECAE58, &qword_1EDECADF8, &qword_1EDECACD8, 0x1E696C218);
    sub_1D1638FF4();
    sub_1D163906C();
    v1 = sub_1D166F514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECAE78);
    }
  }
}

void sub_1D1638F20(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1D1638F9C(255, a3, a4, a5);
    sub_1D15F9218();
    v6 = sub_1D166F5B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D1638F9C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1D15EE5A8(255, a3, a4);
    v5 = sub_1D166FCF4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D1638FF4()
{
  result = qword_1EDECAE70;
  if (!qword_1EDECAE70)
  {
    sub_1D1638F20(255, &qword_1EDECAE68, &qword_1EDECAE08, &qword_1EDECB338, 0x1E696C530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAE70);
  }

  return result;
}

unint64_t sub_1D163906C()
{
  result = qword_1EDECAE60;
  if (!qword_1EDECAE60)
  {
    sub_1D1638F20(255, &qword_1EDECAE58, &qword_1EDECADF8, &qword_1EDECACD8, 0x1E696C218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAE60);
  }

  return result;
}

unint64_t sub_1D16390E4()
{
  result = qword_1EDECAE80;
  if (!qword_1EDECAE80)
  {
    sub_1D1638E54(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAE80);
  }

  return result;
}

unint64_t sub_1D163913C(uint64_t a1)
{
  if (a1 > 6)
  {
    v4 = 0xD00000000000002BLL;
    v5 = 0xD00000000000002DLL;
    if (a1 != 13)
    {
      v5 = 0;
    }

    if (a1 != 12)
    {
      v4 = v5;
    }

    if (a1 == 10)
    {
      v4 = 0xD00000000000002CLL;
    }

    v6 = 0xD000000000000032;
    v7 = 0xD00000000000002CLL;
    v8 = 0xD00000000000002CLL;
    if (a1 != 9)
    {
      v8 = 0;
    }

    if (a1 != 8)
    {
      v7 = v8;
    }

    if (a1 != 7)
    {
      v6 = v7;
    }

    if (a1 <= 9)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 > 3)
    {
      v1 = 0xD00000000000002BLL;
      v2 = 0xD000000000000030;
      if (a1 != 6)
      {
        v2 = 0;
      }

      if (a1 == 5)
      {
        v2 = 0xD000000000000031;
      }

      v3 = a1 == 4;
    }

    else
    {
      v1 = 0xD00000000000002ELL;
      v2 = 0xD00000000000002DLL;
      if (a1 != 3)
      {
        v2 = 0;
      }

      if (a1 == 2)
      {
        v2 = 0xD000000000000032;
      }

      v3 = a1 == 1;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D16392F8(char a1, uint64_t a2)
{
  result = 0;
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        if (a1)
        {
          if (qword_1EDECB050 == -1)
          {
            return sub_1D166F004();
          }
        }

        else if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }

        goto LABEL_48;
      }

      if (a2 != 2)
      {
        if (a2 != 3)
        {
          return result;
        }

        v4 = qword_1EDECB050;
        if (a1)
        {
          goto LABEL_23;
        }

LABEL_51:
        if (v4 == -1)
        {
          return sub_1D166F004();
        }

        goto LABEL_48;
      }

      v5 = qword_1EDECB050;
      if (a1)
      {
LABEL_35:
        if (v5 == -1)
        {
          return sub_1D166F004();
        }

        goto LABEL_48;
      }

      goto LABEL_58;
    }

    if (a2 != 4)
    {
      if (a2 == 5)
      {
        if (a1)
        {
          if (qword_1EDECB050 == -1)
          {
            return sub_1D166F004();
          }
        }

        else if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }
      }

      else if (a1)
      {
        if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }
      }

      else if (qword_1EDECB050 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

    v6 = qword_1EDECB050;
    if (a1)
    {
LABEL_44:
      if (v6 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

LABEL_64:
    if (v6 == -1)
    {
      return sub_1D166F004();
    }

    goto LABEL_48;
  }

  if (a2 > 9)
  {
    if (a2 != 10)
    {
      if (a2 != 12)
      {
        if (a2 != 13)
        {
          return result;
        }

        v4 = qword_1EDECB050;
        if (a1)
        {
LABEL_23:
          if (v4 == -1)
          {
            return sub_1D166F004();
          }

          goto LABEL_48;
        }

        goto LABEL_51;
      }

      v6 = qword_1EDECB050;
      if (a1)
      {
        goto LABEL_44;
      }

      goto LABEL_64;
    }

    v7 = qword_1EDECB050;
    if (a1)
    {
LABEL_38:
      if (v7 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }
  }

  else
  {
    if (a2 == 7)
    {
      v5 = qword_1EDECB050;
      if (a1)
      {
        goto LABEL_35;
      }

LABEL_58:
      if (v5 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

    if (a2 != 8)
    {
      if (a1)
      {
        if (qword_1EDECB050 == -1)
        {
          return sub_1D166F004();
        }
      }

      else if (qword_1EDECB050 == -1)
      {
        return sub_1D166F004();
      }

      goto LABEL_48;
    }

    v7 = qword_1EDECB050;
    if (a1)
    {
      goto LABEL_38;
    }
  }

  if (v7 == -1)
  {
    return sub_1D166F004();
  }

LABEL_48:
  swift_once();
  return sub_1D166F004();
}

uint64_t Date.startOfDay()()
{
  v0 = sub_1D166F2D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F2B4();
  sub_1D166F204();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Date.endOfDay()@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_1D166F254();
  v2 = *(v1 - 8);
  v57 = v1;
  v58 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D166F274();
  v4 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D166F224();
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D166F174();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v15 = sub_1D166F2D4();
  v47 = v15;
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  sub_1D163AD10(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v50 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v44 - v25;
  sub_1D166F2B4();
  sub_1D166F2B4();
  sub_1D166F204();
  v26 = *(v16 + 8);
  v48 = v16 + 8;
  v49 = v26;
  v26(v19, v15);
  v27 = v9;
  (*(v7 + 104))(v9, *MEMORY[0x1E69698D0], v6);
  v29 = v51;
  v28 = v52;
  (*(v4 + 104))(v51, *MEMORY[0x1E69699C8], v52);
  v30 = v57;
  v31 = v58;
  v32 = v56;
  (*(v58 + 104))(v56, *MEMORY[0x1E6969998], v57);
  sub_1D166F284();
  (*(v31 + 8))(v32, v30);
  (*(v4 + 8))(v29, v28);
  (*(v46 + 8))(v27, v45);
  v33 = v53;
  v34 = v54;
  v35 = *(v53 + 8);
  v35(v14, v54);
  v36 = v47;
  v37 = v49;
  v49(v21, v47);
  sub_1D166F2B4();
  sub_1D166F204();
  v38 = v21;
  v39 = v33;
  v40 = v50;
  v37(v38, v36);
  v41 = v55;
  sub_1D166F114();
  v35(v14, v34);
  sub_1D15F8AB8(v60, v40);
  v42 = *(v39 + 48);
  if (v42(v40, 1, v34) == 1)
  {
    (*(v39 + 32))(v59, v41, v34);
    result = v42(v40, 1, v34);
    if (result != 1)
    {
      return sub_1D15F8E38(v40);
    }
  }

  else
  {
    v35(v41, v34);
    return (*(v39 + 32))(v59, v40, v34);
  }

  return result;
}

uint64_t Date.localizedRelative.getter()
{
  v42 = sub_1D166F174();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v1 = &v36 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D166F2D4();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D166EFA4();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D163AD10(0, &qword_1EC63D9D8, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v8 = sub_1D166F2C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D16721A0;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x1E6969A58], v8);
  v14(v13 + v10, *MEMORY[0x1E6969A88], v8);
  v14(v13 + 2 * v10, *MEMORY[0x1E6969A48], v8);
  sub_1D163AB74(v12);
  swift_setDeallocating();
  v15 = v7;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D166F2B4();
  sub_1D166F164();
  sub_1D166F234();
  (*(v41 + 8))(v1, v42);
  (*(v39 + 8))(v4, v40);
  result = sub_1D166EF74();
  if (v17)
  {
    __break(1u);
    goto LABEL_20;
  }

  v18 = result;
  result = sub_1D166EF84();
  if (v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = result;
  result = sub_1D166EF94();
  if (v21)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v22 = result;

  if (v18 < 1)
  {
    if (v20 < 1)
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      sub_1D166F004();
      sub_1D163AD10(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      v30 = MEMORY[0x1E69E6530];
      v31 = MEMORY[0x1E69E65A8];
      *(v29 + 16) = xmmword_1D16721D0;
      *(v29 + 56) = v30;
      *(v29 + 64) = v31;
      if (v22 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v22;
      }

      *(v29 + 32) = v32;
    }

    else
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      sub_1D166F004();
      sub_1D163AD10(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
      v26 = swift_allocObject();
      v27 = MEMORY[0x1E69E6530];
      *(v26 + 16) = xmmword_1D16721D0;
      v28 = MEMORY[0x1E69E65A8];
      *(v26 + 56) = v27;
      *(v26 + 64) = v28;
      *(v26 + 32) = v20;
    }
  }

  else
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    sub_1D166F004();
    sub_1D163AD10(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E6530];
    *(v23 + 16) = xmmword_1D16721D0;
    v25 = MEMORY[0x1E69E65A8];
    *(v23 + 56) = v24;
    *(v23 + 64) = v25;
    *(v23 + 32) = v18;
  }

  v33 = sub_1D166F9D4();
  v35 = v37;
  v34 = v38;

  (*(v35 + 8))(v15, v34);
  return v33;
}

uint64_t sub_1D163A878(uint64_t a1)
{
  v2 = sub_1D166F1A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D163AE58(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1D388CFF0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D1648B80(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D163AA14(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1670224())
  {
    v4 = sub_1D163AE0C();
    v5 = sub_1D163AE58(&qword_1EC63DE18, sub_1D163AE0C, MEMORY[0x1E69E81B8]);
    result = MEMORY[0x1D388CFF0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D388D4D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D1648FD4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D1670224();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D163AB74(uint64_t a1)
{
  v2 = sub_1D166F2C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D163AE58(&qword_1EC63DA78, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  result = MEMORY[0x1D388CFF0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D1649274(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_1D163AD10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D163AD74(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D388CFF0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D1648E60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1D163AE0C()
{
  result = qword_1EDECACB0;
  if (!qword_1EDECACB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDECACB0);
  }

  return result;
}

uint64_t sub_1D163AE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D163AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D163AF4C;

  return InteractionControlling.saveRemoteRecords(_:)(a1, a2, a3);
}

uint64_t sub_1D163AF4C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t InteractionControlling.saveRemoteRecords(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D163B078, 0, 0);
}

uint64_t sub_1D163B078()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1D163B17C;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 72, 0, 0, 0xD000000000000015, 0x80000001D1678540, sub_1D163B7D4, v3, v5);
}

uint64_t sub_1D163B17C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D163B2B4;
  }

  else
  {

    v2 = sub_1D163B298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D163B2B4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1D163B31C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15F7420;

  return InteractionControlling.getDismissedRemoteRecords()(a1, a2);
}

uint64_t InteractionControlling.getDismissedRemoteRecords()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D163B3E4, 0, 0);
}

uint64_t sub_1D163B3E4()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  sub_1D163BA20(0);
  *v3 = v0;
  v3[1] = sub_1D163B4E8;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000001D1678560, sub_1D163BA14, v2, v4);
}

uint64_t sub_1D163B4E8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D163B604;
  }

  else
  {

    v2 = sub_1D162E594;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D163B604()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D163B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D163C420(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_1D163C518, v14, a4, a5);
}

uint64_t sub_1D163B7E0(char a1, id a2)
{
  if (a1)
  {
    sub_1D163C420(0);
    return sub_1D166FD34();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162E194();
      sub_1D166F074();
      a2 = 0;
    }

    v3 = a2;
    sub_1D163C420(0);
    return sub_1D166FD24();
  }
}

uint64_t sub_1D163B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D163C330(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  (*(a4 + 24))(sub_1D163C3A0, v12, a3, a4);
}

void sub_1D163BA20(uint64_t a1)
{
  if (!qword_1EC63DF68)
  {
    sub_1D15EE5A8(255, &qword_1EC63DB70, 0x1E69A3A90);
    v1 = sub_1D166FCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF68);
    }
  }
}

uint64_t sub_1D163BA88(void *a1, id a2)
{
  if (a1)
  {
    sub_1D163C330(0);

    return sub_1D166FD34();
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for HKError(0);
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D162E194();
      sub_1D166F074();
      a2 = 0;
    }

    v3 = a2;
    sub_1D163C330(0);
    return sub_1D166FD24();
  }
}

void HKMedicationControl.saveRemoteRecords(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15EE5A8(0, &qword_1EC63DD70, 0x1E69A3B28);
  v6 = sub_1D166FC44();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D15FABB0;
  v8[3] = &block_descriptor_8;
  v7 = _Block_copy(v8);

  [v3 markRemoteScheduleUnavailableRecordsAsDismissed:v6 completion:v7];
  _Block_release(v7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void HKMedicationControl.getDismissedRemoteRecords(completion:)(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D163BD24;
  v4[3] = &block_descriptor_7_0;
  v3 = _Block_copy(v4);

  [v2 allDismissedRemoteScheduleUnavailableRecordsWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_1D163BD24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D15EE5A8(0, &qword_1EC63DB70, 0x1E69A3A90);
    v4 = sub_1D166FC54();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1D163BDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  sub_1D15EE5A8(0, &qword_1EC63DD70, 0x1E69A3B28);
  v7 = sub_1D166FC44();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D15FABB0;
  v9[3] = &block_descriptor_23;
  v8 = _Block_copy(v9);

  [v6 markRemoteScheduleUnavailableRecordsAsDismissed:v7 completion:v8];
  _Block_release(v8);
}

uint64_t sub_1D163BEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D163C5B0;

  return InteractionControlling.saveRemoteRecords(_:)(a1, a2, a3);
}

void sub_1D163BF6C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D163BD24;
  v5[3] = &block_descriptor_18_0;
  v4 = _Block_copy(v5);

  [v3 allDismissedRemoteScheduleUnavailableRecordsWithCompletion_];
  _Block_release(v4);
}

uint64_t sub_1D163C024(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FA328;

  return InteractionControlling.getDismissedRemoteRecords()(a1, a2);
}

uint64_t dispatch thunk of InteractionControlling.saveRemoteRecords(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D15F9958;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of InteractionControlling.getDismissedRemoteRecords()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15F9958;

  return v7(a1, a2);
}

void sub_1D163C330(uint64_t a1)
{
  if (!qword_1EC63DF70)
  {
    sub_1D163BA20(255);
    sub_1D15F9218();
    v1 = sub_1D166FD44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF70);
    }
  }
}

uint64_t sub_1D163C3A0(void *a1, void *a2)
{
  sub_1D163C330(0);

  return sub_1D163BA88(a1, a2);
}

void sub_1D163C420(uint64_t a1)
{
  if (!qword_1EC63DF78)
  {
    sub_1D15F9218();
    v1 = sub_1D166FD44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF78);
    }
  }
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D163C518(char a1, void *a2)
{
  sub_1D163C420(0);

  return sub_1D163B7E0(a1, a2);
}

uint64_t MedicationsSettingsManager.__allocating_init(healthStore:keyValueDomain:userDefaults:)(void (*a1)(void, void, void, void), void *a2, void (*a3)(void, void, void))
{
  swift_allocObject();
  v6 = sub_1D163E808(a1, a2, a3);

  return v6;
}

uint64_t sub_1D163C690(unint64_t *a1, uint64_t (*a2)(void, uint64_t), uint64_t *a3, void (*a4)(_BYTE *__return_ptr, uint64_t))
{
  sub_1D163F670(0, a1, MEMORY[0x1E69E6370], a2);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  v12 = *a3;
  swift_beginAccess();
  (*(v9 + 16))(v11, v4 + v12, v8);
  a4(&v14[7], v8);
  (*(v9 + 8))(v11, v8);
  return v14[7];
}

uint64_t MedicationsSettingsManager.init(healthStore:keyValueDomain:userDefaults:)(void (*a1)(void, void, void, void), void *a2, void (*a3)(void, void, void))
{
  v5 = sub_1D163E808(a1, a2, a3);

  return v5;
}

uint64_t (*MedicationsSettingsManager.isAlcoholDrugInteractionFactorEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  *(v3 + 56) = sub_1D166F3D4();
  return sub_1D163F928;
}

uint64_t sub_1D163C980@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X3>, uint64_t (*a3)(void, uint64_t)@<X4>, uint64_t *a4@<X5>, void (*a5)(_BYTE *__return_ptr, uint64_t)@<X6>, _BYTE *a6@<X8>)
{
  sub_1D163F670(0, a2, MEMORY[0x1E69E6370], a3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18[-v13];
  v15 = *a1;
  v16 = *a4;
  swift_beginAccess();
  (*(v12 + 16))(v14, v15 + v16, v11);
  a5(&v18[7], v11);
  result = (*(v12 + 8))(v14, v11);
  *a6 = v18[7];
  return result;
}

uint64_t sub_1D163CAC0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6, uint64_t (*a7)(void, uint64_t), void (*a8)(char *, uint64_t))
{
  v13 = *a1;
  swift_beginAccess();
  sub_1D163F670(0, a6, MEMORY[0x1E69E6370], a7);
  a8(&v13, v11);
  return swift_endAccess();
}

uint64_t sub_1D163CB94(char a1, void *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t), void (*a5)(char *, uint64_t))
{
  v10 = a1;
  swift_beginAccess();
  sub_1D163F670(0, a3, MEMORY[0x1E69E6370], a4);
  a5(&v10, v8);
  return swift_endAccess();
}

uint64_t (*MedicationsSettingsManager.isMarijuanaDrugInteractionFactorEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  *(v3 + 56) = sub_1D166F3D4();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.isTobaccoDrugInteractionFactorEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  *(v3 + 56) = sub_1D166F3D4();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.areDoseRemindersEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.areFollowUpNotificationsEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.didShowLifeStyleFactorsSelectionPage.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.didDismissCHRAddAccountTileInCategoryRoom.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.didDismissFollowUpTip.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.scheduleCompatibilityTileDismissalDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t MedicationsSettingsManager.scheduleCompatibilityLearnMoreOverrideURL.getter()
{
  sub_1D163F5F4(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1D166F334();
  (*(v3 + 8))(v5, v2);
  return v8[1];
}

double sub_1D163D610@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D163F5F4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL;
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v10, v5);
  sub_1D166F334();
  (*(v6 + 8))(v8, v5);
  result = v12[0];
  *a2 = *v12;
  return result;
}

uint64_t sub_1D163D734(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1D163F5F4(0);

  sub_1D166F344();
  return swift_endAccess();
}

uint64_t MedicationsSettingsManager.scheduleCompatibilityLearnMoreOverrideURL.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1D163F5F4(0);
  sub_1D166F344();
  return swift_endAccess();
}

uint64_t (*MedicationsSettingsManager.scheduleCompatibilityLearnMoreOverrideURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F5F4(0);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.isShardCheckOverrideEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.allowEndDatesInPast.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.alwaysShowLifeStyleFactorsSelectionPage.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.showMinorDrugInteractions.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

uint64_t (*MedicationsSettingsManager.timeZoneExperienceEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163DEA8;
}

uint64_t sub_1D163DEB8(uint64_t *a1)
{
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *a1;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  sub_1D166F334();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D163DFF8(uint64_t *a1, void x1_0, void x2_0, uint64_t *a2)
{
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *a1;
  v11 = *a2;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  sub_1D166F334();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D163E140(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1D15FB870(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  sub_1D15F8A24(a1, &v13 - v10);
  sub_1D15F8A24(v11, v9);
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  sub_1D166F344();
  swift_endAccess();
  return sub_1D15F8E38(v11);
}

uint64_t sub_1D163E27C(uint64_t a1, void *a2)
{
  sub_1D15FB870(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D15F8A24(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  sub_1D166F344();
  swift_endAccess();
  return sub_1D15F8E38(a1);
}

uint64_t (*MedicationsSettingsManager.medicationsCategoryRoomLastEnteredDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1D166F324();
  return sub_1D163F928;
}

void sub_1D163E440(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t MedicationsSettingsManager.deinit()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isAlcoholDrugInteractionFactorEnabled;
  v2 = MEMORY[0x1E69E6370];
  sub_1D163F670(0, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  v4 = v3;
  v5 = *(*(v3 - 8) + 8);
  v5(v0 + v1, v3);
  v5(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isMarijuanaDrugInteractionFactorEnabled, v4);
  v5(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isTobaccoDrugInteractionFactorEnabled, v4);
  v6 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areDoseRemindersEnabled;
  sub_1D163F670(0, &qword_1EDECAB78, v2, MEMORY[0x1E69A3C40]);
  v8 = v7;
  v9 = *(*(v7 - 8) + 8);
  v9(v0 + v6, v7);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areFollowUpNotificationsEnabled, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didShowLifeStyleFactorsSelectionPage, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissCHRAddAccountTileInCategoryRoom, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissFollowUpTip, v8);
  v10 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityTileDismissalDate;
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v12 = v11;
  v13 = *(*(v11 - 8) + 8);
  v13(v0 + v10, v11);
  v14 = OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL;
  sub_1D163F5F4(0);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isShardCheckOverrideEnabled, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__allowEndDatesInPast, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__alwaysShowLifeStyleFactorsSelectionPage, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__showMinorDrugInteractions, v8);
  v9(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__timeZoneExperienceEnabled, v8);
  v13(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__medicationsCategoryRoomLastEnteredDate, v12);
  return v0;
}

uint64_t MedicationsSettingsManager.__deallocating_deinit()
{
  MedicationsSettingsManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D163E808(void (*a1)(void, void, void, void), void *a2, void (*a3)(void, void, void))
{
  sub_1D163F5F4(0);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15FB870(0);
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D163F590(0, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
  v64 = v11;
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v57 - v12;
  v13 = MEMORY[0x1E69E6370];
  sub_1D163F670(0, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v63 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - v16;
  sub_1D163F670(0, &qword_1EDECAB28, v13, MEMORY[0x1E69A3308]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  v67 = v15;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v57 = a1;
    v58 = a3;
    v24 = *MEMORY[0x1E69A3A08];
    if (qword_1EDEC9ED8 != -1)
    {
      swift_once();
    }

    v25 = objc_allocWithZone(MEMORY[0x1E696C210]);
    v26 = sub_1D166F9C4();
    v23 = [v25 initWithCategory:v24 domainName:v26 healthStore:v57];

    a3 = v58;
  }

  *(v3 + 16) = v23;
  *(v3 + 24) = a3;
  v27 = qword_1EDEC9EC0;
  v28 = a2;
  v29 = v23;
  v30 = a3;
  if (v27 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;

  sub_1D166F3C4();
  v31 = *(v20 + 32);
  v31(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isAlcoholDrugInteractionFactorEnabled, v22, v19);
  v32 = qword_1EDEC9E88;
  v33 = *(v3 + 16);
  if (v32 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;

  sub_1D166F3C4();
  v31(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isMarijuanaDrugInteractionFactorEnabled, v22, v19);
  v34 = qword_1EDEC9EA0;
  v35 = *(v3 + 16);
  if (v34 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;

  sub_1D166F3C4();
  v31(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isTobaccoDrugInteractionFactorEnabled, v22, v19);
  if (qword_1EDECAD50 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 1;
  v36 = v30;

  sub_1D166F354();
  v37 = v67 + 32;
  v38 = *(v67 + 32);
  v39 = v63;
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areDoseRemindersEnabled, v17, v63);
  if (qword_1EDECAD38 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;
  v40 = v36;

  sub_1D166F354();
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__areFollowUpNotificationsEnabled, v17, v39);
  if (qword_1EDECAD20 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;
  v41 = v40;

  sub_1D166F354();
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didShowLifeStyleFactorsSelectionPage, v17, v39);
  if (qword_1EDECAD00 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;
  v42 = v41;

  sub_1D166F354();
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissCHRAddAccountTileInCategoryRoom, v17, v39);
  if (qword_1EDECAD68 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;
  v43 = v42;

  sub_1D166F354();
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__isShardCheckOverrideEnabled, v17, v39);
  if (qword_1EDEC9F10 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;
  v44 = v43;

  sub_1D166F354();
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__alwaysShowLifeStyleFactorsSelectionPage, v17, v39);
  if (qword_1EDEC9F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;
  v45 = v44;

  sub_1D166F354();
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__showMinorDrugInteractions, v17, v39);
  if (qword_1EDECAD98 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 1;
  v46 = v45;

  sub_1D166F354();
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__timeZoneExperienceEnabled, v17, v39);
  if (qword_1EDEC9F88 != -1)
  {
    swift_once();
  }

  LOBYTE(v69) = 0;
  v47 = v46;

  sub_1D166F354();
  v67 = v37;
  v58 = v38;
  v38(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__didDismissFollowUpTip, v17, v39);
  if (qword_1EDEC9F30 != -1)
  {
    swift_once();
  }

  v48 = sub_1D166F174();
  v57 = *(*(v48 - 8) + 56);
  v57(v65, 1, 1, v48);
  v49 = v47;

  v50 = v62;
  sub_1D166F354();
  v51 = *(v68 + 32);
  v68 += 32;
  v51(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityTileDismissalDate, v50, v64);
  if (qword_1EDEC9EF8 != -1)
  {
    swift_once();
  }

  v69 = 0;
  v70 = 0;
  sub_1D163F670(0, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v52 = v49;

  v53 = v59;
  sub_1D166F354();
  (*(v60 + 32))(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__scheduleCompatibilityLearnMoreOverrideURL, v53, v61);
  if (qword_1EDEC9F50 != -1)
  {
    swift_once();
  }

  v57(v65, 1, 1, v48);
  v54 = v52;

  v55 = v62;
  sub_1D166F354();
  v51(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__medicationsCategoryRoomLastEnteredDate, v55, v64);
  LOBYTE(v69) = 0;
  sub_1D166F354();
  v58(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience26MedicationsSettingsManager__allowEndDatesInPast, v17, v63);
  return v3;
}

void sub_1D163F590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D163F5F4(uint64_t a1)
{
  if (!qword_1EDECAB80)
  {
    sub_1D163F670(255, &qword_1EDECAE20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1D166F364();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECAB80);
    }
  }
}

void sub_1D163F670(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for MedicationsSettingsManager(uint64_t a1)
{
  result = qword_1EDECB2F8;
  if (!qword_1EDECB2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D163F714(uint64_t a1)
{
  sub_1D163F670(319, &qword_1EDECAB28, MEMORY[0x1E69E6370], MEMORY[0x1E69A3308]);
  if (v1 <= 0x3F)
  {
    sub_1D163F670(319, &qword_1EDECAB78, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
    if (v2 <= 0x3F)
    {
      sub_1D163F590(319, &qword_1EDECAB88, sub_1D15FB870, MEMORY[0x1E69A3C40]);
      if (v3 <= 0x3F)
      {
        sub_1D163F5F4(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t Publisher<>.filtered(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[2] = a3;
  v15[1] = a2;
  v4 = sub_1D166F174();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D1641A94(255, &qword_1EC63DF80, type metadata accessor for MedicationDoseEvent, MEMORY[0x1E69E62F8]);
  v7 = sub_1D166F554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1D166F764();

  swift_getWitnessTable();
  v13 = sub_1D166F754();
  (*(v8 + 8))(v10, v7);
  return v13;
}

void *sub_1D163FB98@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  if (*result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6[2] = v4;
    result = sub_1D15F156C(sub_1D164421C, v6, v5);
    if (result)
    {
      v3 = result;
    }
  }

  *a2 = v3;
  return result;
}

void *sub_1D163FC30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D166F174();

  return sub_1D163FB98(a1, a2);
}

uint64_t sub_1D163FCB0(unint64_t *a1, uint64_t a2)
{
  v21 = sub_1D166F2D4();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D166F174();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = *a1;
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  result = sub_1D1670224();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  v20[1] = v2;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1D388D4D0](0, v14);
    goto LABEL_6;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);

LABEL_6:
    v17 = *(v16 + 16);

    v18 = [v17 startDate];

    sub_1D166F144();
    (*(v8 + 32))(v13, v11, v7);
    sub_1D166F2B4();
    v19 = sub_1D166F2A4();
    (*(v4 + 8))(v6, v21);
    (*(v8 + 8))(v13, v7);
    return v19 & 1;
  }

  __break(1u);
  return result;
}

uint64_t Publisher<>.medicationsWithActiveSchedules(scheduleControl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D16401B4(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 2) = a2;
  *(v15 + 3) = v16;
  *(v15 + 4) = a1;
  (*(v7 + 32))(&v15[v14], &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1D1640248(0);
  sub_1D16404D8(&qword_1EC63DF98, sub_1D1640248, MEMORY[0x1E695C038]);
  v17 = a1;
  sub_1D166F6E4();
  sub_1D16404D8(&qword_1EC63DFA0, sub_1D16401B4, MEMORY[0x1E695C058]);
  v18 = sub_1D166F754();
  (*(v11 + 8))(v13, v10);
  return v18;
}

void sub_1D16401B4(uint64_t a1)
{
  if (!qword_1EC63DF88)
  {
    sub_1D1640248(255);
    sub_1D16404D8(&qword_1EC63DF98, sub_1D1640248, MEMORY[0x1E695C038]);
    v1 = sub_1D166F6F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF88);
    }
  }
}

void sub_1D1640248(uint64_t a1)
{
  if (!qword_1EC63DF90)
  {
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    v1 = sub_1D166F6B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DF90);
    }
  }
}

void sub_1D16402DC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1640344@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a1;
  (*(v8 + 32))(&v11[v10], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1D1640248(0);
  swift_allocObject();
  v12 = a1;
  result = sub_1D166F6C4();
  *a4 = result;
  return result;
}

uint64_t sub_1D16404D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1640520(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = sub_1D166FD84();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, a5);
  v18 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v24;
  *(v19 + 4) = a5;
  *(v19 + 5) = v20;
  *(v19 + 6) = a3;
  *(v19 + 7) = sub_1D162EF90;
  *(v19 + 8) = v16;
  (*(v11 + 32))(&v19[v18], &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5);

  v21 = a3;
  sub_1D16414D8(0, 0, v15, &unk_1D16745E0, v19);
}

uint64_t sub_1D1640770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v9 = sub_1D166F5F4();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = sub_1D166F5E4();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D16408B0, 0, 0);
}

uint64_t sub_1D16408B0()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D16409C0;
  v2 = swift_continuation_init();
  sub_1D16440EC(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D164109C;
  v0[13] = &block_descriptor_29;
  v0[14] = v2;
  [v1 fetchAllSchedulesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D16409C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1D164101C;
  }

  else
  {
    v2 = sub_1D1640AD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1640AD0()
{
  v1 = *(v0 + 18);
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
    {
      v3 = 0;
      v0 = &property descriptor for MedicationView.config;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1D388D4D0](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 isUnavailable])
        {
        }

        else
        {
          sub_1D1670374();
          sub_1D16703B4();
          sub_1D16703C4();
          sub_1D1670384();
        }

        ++v3;
        if (v6 == i)
        {
          v0 = v18;
          v7 = v19;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *(v0 + 33) = v7;
    v11 = *(v0 + 27);
    v10 = *(v0 + 28);
    v13 = *(v0 + 25);
    v12 = *(v0 + 26);
    v14 = *(v0 + 24);

    MEMORY[0x1D388C9A0](v14, v13);
    sub_1D166F5D4();
    (*(v11 + 8))(v10, v12);
    v15 = swift_task_alloc();
    *(v0 + 34) = v15;
    WitnessTable = swift_getWitnessTable();
    *v15 = v0;
    v15[1] = sub_1D1640D7C;
    v17 = *(v0 + 29);

    return MEMORY[0x1EEE6D8E0](v0 + 152, 0, 0, v17, WitnessTable);
  }

  else
  {
    (*(v0 + 21))(MEMORY[0x1E69E7CC0], 0);

    v8 = *(v0 + 1);

    return v8();
  }
}

uint64_t sub_1D1640D7C()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1640E8C, 0, 0);
  }

  return result;
}

uint64_t sub_1D1640E8C()
{
  if (v0[19])
  {
    v1 = v0[21];
    v2 = sub_1D16410C4(v0[33], v0[19]);

    v1(v2, 0);

    v3 = swift_task_alloc();
    v0[34] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v0;
    v3[1] = sub_1D1640D7C;
    v5 = v0[29];

    return MEMORY[0x1EEE6D8E0](v0 + 19, 0, 0, v5, WitnessTable);
  }

  else
  {
    (*(v0[30] + 8))(v0[31], v0[29]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D164101C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D16410C4(unint64_t a1, unint64_t a2)
{
  i = a1;
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v37[0] = MEMORY[0x1E69E7CC0];
  sub_1D162306C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v36 = a2;
    v6 = 0;
    v2 = v37[0];
    do
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D388D4D0](v6, i);
      }

      else
      {
        v7 = *(i + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 medicationIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D166FA04();
        v13 = v12;
      }

      else
      {

        v11 = 0;
        v13 = 0;
      }

      v37[0] = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D162306C((v14 > 1), v15 + 1, 1);
        v2 = v37[0];
      }

      ++v6;
      *(v2 + 16) = v15 + 1;
      v16 = v2 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v5 != v6);
    a2 = v36;
    goto LABEL_15;
  }

  __break(1u);
LABEL_53:
  for (i = sub_1D1670224(); ; i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v18 = 0;
      v19 = a2 & 0xC000000000000001;
      v20 = a2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v19)
        {
          v21 = MEMORY[0x1D388D4D0](v18, a2);
        }

        else
        {
          if (v18 >= *(v20 + 16))
          {
            goto LABEL_42;
          }

          v21 = *(a2 + 8 * v18 + 32);
        }

        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        MEMORY[0x1D388CE10](v21);
        if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = a2;
          sub_1D166FC84();
          a2 = v36;
        }

        sub_1D166FCC4();
        ++v18;
        if (v22 == i)
        {
          i = v37[0];
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    i = MEMORY[0x1E69E7CC0];
LABEL_29:
    v38 = v17;
    if (!(i >> 62))
    {
      v23 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        break;
      }

      goto LABEL_31;
    }

    v23 = sub_1D1670224();
    if (!v23)
    {
      break;
    }

LABEL_31:
    v24 = 0;
    v35 = i & 0xFFFFFFFFFFFFFF8;
    v36 = i & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v25 = MEMORY[0x1D388D4D0](v24, i);
      }

      else
      {
        if (v24 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        v25 = *(i + 8 * v24 + 32);
      }

      v26 = v25;
      a2 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v27 = [v25 semanticIdentifier];
      v28 = [v27 stringValue];

      v29 = sub_1D166FA04();
      v31 = v30;

      v37[0] = v29;
      v37[1] = v31;
      MEMORY[0x1EEE9AC00](v32);
      v34[2] = v37;
      LOBYTE(v29) = sub_1D15FE978(sub_1D1643EB4, v34, v2);

      if (v29)
      {
        sub_1D1670374();
        sub_1D16703B4();
        sub_1D16703C4();
        sub_1D1670384();
      }

      else
      {
      }

      ++v24;
      if (a2 == v23)
      {
        goto LABEL_55;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    if (i < 0)
    {
      v2 = i;
    }

    else
    {
      v2 = i & 0xFFFFFFFFFFFFFF8;
    }

    if (!sub_1D1670224())
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = sub_1D1670224();
    if (v5)
    {
      goto LABEL_3;
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v37[0] = MEMORY[0x1E69E7CC0];
    if (a2 >> 62)
    {
      goto LABEL_53;
    }
  }

LABEL_55:

  return v38;
}

uint64_t sub_1D16414D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1D161E668(a3, v22 - v9);
  v11 = sub_1D166FD84();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1D161DF10(v10);
  }

  else
  {
    sub_1D166FD74();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1D166FD14();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1D166FA94() + 32;

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

      sub_1D161DF10(a3);

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

  sub_1D161DF10(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t Publisher<>.unavailableMedicationsSchedulesPublisher.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  sub_1D16419FC(0);
  swift_allocObject();
  v10 = sub_1D166F634();
  v11 = sub_1D166FD84();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  (*(v5 + 16))(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  (*(v5 + 32))(&v13[v12], v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *&v13[(v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v10;

  sub_1D1632CAC(0, 0, v9, &unk_1D1674578, v13);

  v16[1] = v10;
  sub_1D16404D8(&qword_1EC63DFC0, sub_1D16419FC, MEMORY[0x1E695BF88]);
  v14 = sub_1D166F754();

  return v14;
}

void sub_1D16419FC(uint64_t a1)
{
  if (!qword_1EC63DFA8)
  {
    sub_1D1641A94(255, &qword_1EC63DFB0, sub_1D1641AF8, MEMORY[0x1E69E6720]);
    v1 = sub_1D166F644();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DFA8);
    }
  }
}

void sub_1D1641A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1641AF8(uint64_t a1)
{
  if (!qword_1EC63DFB8)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    sub_1D16402DC(255, &qword_1EDEC9FD8, &qword_1EDECACF0, 0x1E69A3AD0, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DFB8);
    }
  }
}

uint64_t sub_1D1641BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_1D166F5F4();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = sub_1D166F5E4();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1641CF8, 0, 0);
}

uint64_t sub_1D1641CF8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  MEMORY[0x1D388C9A0](v0[13], v0[14]);
  sub_1D166F5D4();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[21] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_1D1641E18;
  v6 = v0[18];

  return MEMORY[0x1EEE6D8E0](v0 + 2, 0, 0, v6, WitnessTable);
}

uint64_t sub_1D1641E18()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1641F28, 0, 0);
  }

  return result;
}

uint64_t sub_1D1641F28()
{
  v2 = v0 + 2;
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[3];
    if (v1 >> 62)
    {
      goto LABEL_27;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        if (!v3)
        {
          v11 = v0[19];
          v12 = v0[20];
          v13 = v0[18];

          v2[2] = 0;
          v2[3] = 0;
          sub_1D166F624();
          (*(v11 + 8))(v12, v13);
          goto LABEL_22;
        }

        v0 = (v3 & 0xFFFFFFFFFFFFFF8);
        if (v3 >> 62)
        {
          if (!sub_1D1670224())
          {
LABEL_32:

            v0 = v20;
            goto LABEL_33;
          }

          v19 = v1;
          v9 = MEMORY[0x1E69E7CC0];
          v2[8] = MEMORY[0x1E69E7CC0];
          v4 = sub_1D1670224();
          if (!v4)
          {
LABEL_20:
            v0 = v20;

            v10 = sub_1D16410C4(v9, v19);

            v20[6] = v10;
            v20[7] = v9;
            sub_1D166F624();

            goto LABEL_34;
          }
        }

        else
        {
          v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v4)
          {
            goto LABEL_32;
          }

          v19 = v1;
          v2[8] = MEMORY[0x1E69E7CC0];
        }

        v1 = 0;
        v5 = v3 & 0xC000000000000001;
        while (1)
        {
          if (v5)
          {
            v6 = MEMORY[0x1D388D4D0](v1, v3);
          }

          else
          {
            if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v6 = *(v3 + 8 * v1 + 32);
          }

          v7 = v6;
          v8 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if ([v6 isUnavailable])
          {
            sub_1D1670374();
            sub_1D16703B4();
            sub_1D16703C4();
            sub_1D1670384();
            v5 = v3 & 0xC000000000000001;
          }

          else
          {
          }

          ++v1;
          if (v8 == v4)
          {
            v9 = v2[8];
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

      while (sub_1D1670224());
    }

LABEL_33:
    v2[6] = 0;
    v2[7] = 0;
    sub_1D166F624();
LABEL_34:
    v16 = swift_task_alloc();
    v0[21] = v16;
    WitnessTable = swift_getWitnessTable();
    *v16 = v0;
    v16[1] = sub_1D1641E18;
    v18 = v0[18];

    return MEMORY[0x1EEE6D8E0](v2, 0, 0, v18, WitnessTable);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_22:

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D16422A4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D15FFFCC;

  return sub_1D1641BC0(a1, v7, v8, v1 + v6, v9, v4, v5);
}

uint64_t Publisher<>.remoteScheduleUnavailableAlertDeterminerPublisher(medicationControl:)(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a1;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1641A94(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  sub_1D164267C(0);
  swift_allocObject();
  v11 = sub_1D166F634();
  v12 = sub_1D166FD84();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v5 + 16))(v7, v3, a2);
  v13 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v22;
  *(v15 + 4) = a2;
  *(v15 + 5) = v16;
  (*(v5 + 32))(&v15[v13], v7, a2);
  *&v15[v14] = v11;
  v17 = v23;
  *&v15[(v14 + 15) & 0xFFFFFFFFFFFFFFF8] = v23;

  v18 = v17;
  sub_1D1632CAC(0, 0, v10, &unk_1D1674588, v15);

  v24 = v11;
  sub_1D16404D8(&qword_1EC63DFD8, sub_1D164267C, MEMORY[0x1E695BF88]);
  v19 = sub_1D166F754();

  return v19;
}

void sub_1D164267C(uint64_t a1)
{
  if (!qword_1EC63DFC8)
  {
    sub_1D16426E4();
    v1 = sub_1D166F644();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DFC8);
    }
  }
}

void sub_1D16426E4()
{
  if (!qword_1EC63DFD0)
  {
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DFD0);
    }
  }
}

uint64_t sub_1D1642734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[107] = a8;
  v8[106] = a7;
  v8[105] = a6;
  v8[104] = a5;
  v8[103] = a4;
  v9 = sub_1D166F5F4();
  v8[108] = v9;
  v8[109] = *(v9 - 8);
  v8[110] = swift_task_alloc();
  v10 = sub_1D166F5E4();
  v8[111] = v10;
  v8[112] = *(v10 - 8);
  v8[113] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1642878, 0, 0);
}

uint64_t sub_1D1642878()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  MEMORY[0x1D388C9A0](v0[106], v0[107]);
  sub_1D166F5D4();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[114] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_1D16429A0;
  v6 = v0[111];

  return MEMORY[0x1EEE6D8E0](v0 + 99, 0, 0, v6, WitnessTable);
}

uint64_t sub_1D16429A0()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1642AB0, 0, 0);
  }

  return result;
}

uint64_t sub_1D1642AB0()
{
  v1 = *(v0 + 792);
  *(v0 + 920) = v1;
  v2 = *(v0 + 800);
  *(v0 + 928) = v2;
  if (v1)
  {
    if (v1 >> 62)
    {
      if (sub_1D1670224())
      {
        goto LABEL_4;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if (!v2)
      {
LABEL_7:
        v3 = *(v0 + 840);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 808;
        *(v0 + 24) = sub_1D1642DB8;
        v4 = swift_continuation_init();
        sub_1D16438B8(0);
        *(v0 + 680) = v5;
        *(v0 + 656) = v4;
        *(v0 + 624) = MEMORY[0x1E69E9820];
        *(v0 + 632) = 1107296256;
        *(v0 + 640) = sub_1D1643948;
        *(v0 + 648) = &block_descriptor_9;

        [v3 allDismissedRemoteScheduleUnavailableRecordsWithCompletion_];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }

      if (v2 >> 62)
      {
        if (sub_1D1670224())
        {
          goto LABEL_7;
        }
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }
    }

    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    sub_1D166F624();
    sub_1D1643A9C(v0 + 528);
    v7 = swift_task_alloc();
    *(v0 + 912) = v7;
    WitnessTable = swift_getWitnessTable();
    *v7 = v0;
    v7[1] = sub_1D16429A0;
    v9 = *(v0 + 888);

    return MEMORY[0x1EEE6D8E0](v0 + 792, 0, 0, v9, WitnessTable);
  }

  (*(*(v0 + 896) + 8))(*(v0 + 904), *(v0 + 888));
  *(v0 + 960) = 1;
  sub_1D166F614();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1642DB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 936) = v1;
  if (v1)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v2 = sub_1D164354C;
  }

  else
  {
    v2 = sub_1D1642EE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1642EE4()
{
  v1 = v0[105];
  v0[118] = v0[101];
  v0[10] = v0;
  v0[15] = v0 + 102;
  v0[11] = sub_1D164300C;
  v2 = swift_continuation_init();
  sub_1D1643AF8(0);
  v0[93] = v3;
  v0[90] = v2;
  v0[86] = MEMORY[0x1E69E9820];
  v0[87] = 1107296256;
  v0[88] = sub_1D1643B94;
  v0[89] = &block_descriptor_15;
  [v1 accountDevicesInfoTriggeringUpdate:1 completion:v0 + 86];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1D164300C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 952) = v1;
  if (v1)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v2 = sub_1D1643660;
  }

  else
  {
    v2 = sub_1D1643144;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1643144()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 944);
  if (*(v0 + 928))
  {
    if (v2)
    {
      if (v1)
      {
        v3 = [objc_opt_self() sharedInstance];
        if (v3)
        {
          v8 = v3;

          v9 = [v8 getActivePairedDevice];

          if (v9)
          {
            v10 = [objc_allocWithZone(MEMORY[0x1E69A3B20]) initWithLocalPairedDevice_];
          }

          else
          {
            v10 = 0;
          }

          v16 = *(v0 + 928);
          v17 = *(v0 + 920);
          v18 = *(v0 + 840);
          *(v0 + 776) = sub_1D15EE5A8(0, &unk_1EDEC9E28, 0x1E69A3AC0);
          *(v0 + 784) = &protocol witness table for HKMedicationControl;
          *(v0 + 752) = v18;
          *(v0 + 352) = v17;
          *(v0 + 360) = v16;
          *(v0 + 368) = v2;
          *(v0 + 376) = v1;
          *(v0 + 384) = v10;
          sub_1D160BF60(v0 + 752, v0 + 392);
          v19 = v10;

          v20 = v18;

          v21 = v1;
          v22 = sub_1D160ECC0(v17, v16);

          v23 = sub_1D160EF5C(v22, v21);
          v24 = sub_1D160F080(v23, v21);

          v25 = [v21 localDeviceInfo];
          v26 = sub_1D160F214(v24, v2, v25, v10);

          v27 = sub_1D160F4DC(v22, v2, v21);

          __swift_destroy_boxed_opaque_existential_0((v0 + 752));
          *(v0 + 336) = v26;
          *(v0 + 344) = v27;
          sub_1D1643C64(v0 + 336, v0 + 432);
          sub_1D166F624();
          sub_1D1643A9C(v0 + 432);
          sub_1D1643CC0(v0 + 336);
          v28 = swift_task_alloc();
          *(v0 + 912) = v28;
          WitnessTable = swift_getWitnessTable();
          *v28 = v0;
          v28[1] = sub_1D16429A0;
          v6 = *(v0 + 888);
          v3 = (v0 + 792);
          v4 = 0;
          v5 = 0;
        }

        else
        {
          __break(1u);
        }

        return MEMORY[0x1EEE6D8E0](v3, v4, v5, v6, WitnessTable);
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = *(v0 + 904);
  v12 = *(v0 + 896);
  v13 = *(v0 + 888);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 240) = 0u;
  sub_1D166F624();

  sub_1D1643A9C(v0 + 240);
  (*(v12 + 8))(v11, v13);
  *(v0 + 960) = 1;
  sub_1D166F614();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D164354C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 936);
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 144) = 0u;
  sub_1D166F624();

  sub_1D1643A9C(v1 + 144);
  v3 = swift_task_alloc();
  *(v1 + 912) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_1D16429A0;
  v5 = *(v1 + 888);

  return MEMORY[0x1EEE6D8E0](v1 + 792, 0, 0, v5, WitnessTable);
}

uint64_t sub_1D1643660(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 952);
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 144) = 0u;
  sub_1D166F624();

  sub_1D1643A9C(v1 + 144);
  v3 = swift_task_alloc();
  *(v1 + 912) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_1D16429A0;
  v5 = *(v1 + 888);

  return MEMORY[0x1EEE6D8E0](v1 + 792, 0, 0, v5, WitnessTable);
}

uint64_t sub_1D1643774(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D1600968;

  return sub_1D1642734(a1, v8, v9, v1 + v6, v10, v11, v5, v4);
}

void sub_1D16438B8(uint64_t a1)
{
  if (!qword_1EC63DFE0)
  {
    sub_1D1643E44(255, &qword_1EC63DFE8, &qword_1EC63DF68, &qword_1EC63DB70, 0x1E69A3A90);
    sub_1D15F9218();
    v1 = sub_1D166FDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DFE0);
    }
  }
}

uint64_t sub_1D1643970(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), unint64_t *a5, void *a6)
{
  a4(0);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v12 = 0;
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v13 = a3;
    v14 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_1D15EE5A8(0, a5, a6);
      v12 = sub_1D166FC54();
    }

    **(*(v11 + 64) + 40) = v12;

    return MEMORY[0x1EEE6DEE0](v11);
  }
}

uint64_t sub_1D1643A9C(uint64_t a1)
{
  sub_1D16426E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1643AF8(uint64_t a1)
{
  if (!qword_1EC63DFF0)
  {
    sub_1D16402DC(255, &qword_1EC63DFF8, &qword_1EC63E000, 0x1E69A3B18, MEMORY[0x1E69E6720]);
    sub_1D15F9218();
    v1 = sub_1D166FDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DFF0);
    }
  }
}

uint64_t sub_1D1643B94(uint64_t a1, void *a2, void *a3)
{
  sub_1D1643D14();
  v6 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v6 + 64) + 40) = a2;
    v10 = a2;

    return MEMORY[0x1EEE6DEE0](v6);
  }
}

unint64_t sub_1D1643D14()
{
  result = qword_1EC63E008;
  if (!qword_1EC63E008)
  {
    sub_1D1643D88(255);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EC63E008);
  }

  return result;
}

void sub_1D1643D88(uint64_t a1)
{
  if (!qword_1EC63E010)
  {
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    sub_1D1643E44(255, &qword_1EDEC9FD0, &qword_1EDEC9FD8, &qword_1EDECACF0, 0x1E69A3AD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E010);
    }
  }
}

void sub_1D1643E44(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  if (!*a2)
  {
    sub_1D16402DC(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    v6 = sub_1D16700E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1643FD0(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D15FFFCC;

  return sub_1D1640770(a1, v5, v6, v7, v8, v9, v1 + v4, v3);
}

void sub_1D16440EC(uint64_t a1)
{
  if (!qword_1EC63DE68)
  {
    sub_1D1643E44(255, &qword_1EDEC9FD0, &qword_1EDEC9FD8, &qword_1EDECACF0, 0x1E69A3AD0);
    sub_1D15F9218();
    v1 = sub_1D166FDD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63DE68);
    }
  }
}

unint64_t sub_1D164417C()
{
  result = qword_1EC63E018;
  if (!qword_1EC63E018)
  {
    sub_1D16402DC(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EC63E018);
  }

  return result;
}

uint64_t sub_1D164424C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D1609034(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1D16061DC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1D1648690(&qword_1EDEC9D60, &qword_1EDEC9FA0, 0x1E696C2F0);
        v14 = v16;
      }

      result = sub_1D1647FD8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void *sub_1D164435C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  type metadata accessor for MedicationDetailProvider();
  swift_allocObject();
  result = sub_1D1644414(v0);
  qword_1EDECA560 = result;
  return result;
}

uint64_t static MedicationDetailProvider.shared.getter()
{
  if (qword_1EDECA558 != -1)
  {
    swift_once();
  }
}

void *sub_1D1644414(void *a1)
{
  v2 = v1;
  v19 = a1;
  v18 = sub_1D166FFB4();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D166FF94();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D166F814();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = MEMORY[0x1E69E7CC8];
  v1[4] = 0;
  v1[5] = v8;
  v9 = MEMORY[0x1E69E7CD0];
  v1[6] = v8;
  v1[7] = v9;
  sub_1D164CCB8(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v1[8] = v10;
  v11 = sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v17[1] = "cationDetailObserver_>8";
  v17[2] = v11;
  sub_1D166F804();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&unk_1EDEC9E70, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v12 = MEMORY[0x1E69E8030];
  sub_1D164CD1C(0, &qword_1EDEC9FE8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FE0, &qword_1EDEC9FE8, v12);
  sub_1D1670194();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v18);
  v1[9] = sub_1D166FFE4();
  v13 = v19;
  v1[2] = v19;
  sub_1D166F474();
  v14 = v13;
  v1[3] = sub_1D166F464();
  v20 = sub_1D164710C();
  sub_1D164CD88(0);
  sub_1D164C960(&qword_1EDECA088, sub_1D164CD88, MEMORY[0x1E695BED8]);

  v15 = sub_1D166F7B4();

  v2[4] = v15;

  return v2;
}

void *sub_1D16447A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16))
  {

    v7 = sub_1D16061DC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(v5 + 4);
  return v9;
}

void sub_1D164484C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D166F844();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 72);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1D166F864();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = sub_1D16447A4(a1, a2);
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      v13 = *(v2 + 48);
      if (*(v13 + 16))
      {

        v14 = sub_1D16061DC(a1, a2);
        if (v15)
        {
          v16 = *(*(v13 + 56) + 8 * v14);

          v17 = swift_allocObject();
          v17[2] = v12;
          v17[3] = a1;
          v17[4] = a2;
          aBlock[4] = sub_1D164CC4C;
          aBlock[5] = v17;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D1644AA0;
          aBlock[3] = &block_descriptor_81;
          v18 = _Block_copy(aBlock);
          v19 = v12;

          [v16 notifyObservers_];
          _Block_release(v18);

          v12 = v16;
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D1644AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1644B00(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1D166F7E4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_1D166F814();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  sub_1D164CAC4(0, &qword_1EDECAB10, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3940]);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  sub_1D164CAC4(0, &qword_1EDECAB18, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3930]);
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  sub_1D164CAC4(0, &qword_1EDECAB08, &qword_1EDECB338, 0x1E696C530, MEMORY[0x1E69A3948]);
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v9 = sub_1D166F844();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1644E0C, 0, 0);
}

uint64_t sub_1D1644E0C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = *(v0[14] + 72);
  v0[33] = v4;
  *v1 = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v5 = v4;
  LOBYTE(v4) = sub_1D166F864();
  v6 = (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v6, v7, v8);
  }

  v9 = sub_1D16447A4(v0[12], v0[13]);
  if (!v9)
  {
    v14 = v0[22];
    v13 = v0[23];
    v15 = v0[21];
    v30 = v0[14];
    v16 = objc_opt_self();
    sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
    v17 = [swift_getObjCClassFromMetadata() _typeIdentifier];
    v18 = [v16 predicateForUserDomainConceptsWithTypeIdentifier_];
    v0[34] = v18;

    v19 = sub_1D166F9C4();
    v20 = [v16 predicateForUserDomainConceptsWithSemanticIdentifier_];
    v0[35] = v20;

    sub_1D15F2860();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D1672930;
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    sub_1D15EE5A8(0, &qword_1EDECB348, 0x1E696AE18);
    v22 = v18;
    v23 = v20;
    v24 = sub_1D166FC44();

    v25 = [objc_opt_self() andPredicateWithSubpredicates_];
    v0[36] = v25;

    sub_1D15EE5A8(0, &qword_1EDECB338, 0x1E696C530);
    v26 = v25;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D166F434();
    v0[8] = v27;
    sub_1D166F424();
    sub_1D166F414();
    (*(v14 + 8))(v13, v15);
    v0[37] = v27;
    v28 = sub_1D1606278();
    v29 = swift_task_alloc();
    v0[38] = v29;
    *v29 = v0;
    v29[1] = sub_1D16451C8;
    v7 = v0[24];
    v6 = (v0 + 9);
    v8 = v28;

    return MEMORY[0x1EEE6D8C8](v6, v7, v8);
  }

  v10 = v9;

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1D16451C8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1D1645844;
  }

  else
  {
    v2 = sub_1D16452DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1645300()
{
  v1 = v0[40];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1D388CE10]();
    if (*((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D166FC84();
    }

    sub_1D166FCC4();

    v0[37] = v0[8];
    v3 = sub_1D1606278();
    v4 = swift_task_alloc();
    v0[38] = v4;
    *v4 = v0;
    v4[1] = sub_1D16451C8;
    v5 = v0[24];
    v6 = (v0 + 9);
    v7 = v3;

    return MEMORY[0x1EEE6D8C8](v6, v5, v7);
  }

  v8 = v0[37];
  (*(v0[25] + 8))(v0[26], v0[24]);
  if (!(v8 >> 62))
  {
    v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_16:
    v12 = v0[36];
    v13 = v0[35];

    goto LABEL_17;
  }

  v6 = sub_1D1670224();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1D388D4D0](0, v0[37]);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v6, v5, v7);
    }

    v9 = *(v0[37] + 32);
  }

  v10 = [v9 userConcept];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v13 = v0[35];
  v12 = v0[36];
  if (!v11)
  {

LABEL_17:
    v24 = v0[28];
    v23 = v0[29];
    v25 = v0[27];

    (*(v24 + 8))(v23, v25);
    v14 = 0;
    goto LABEL_18;
  }

  v14 = v11;
  v32 = v0[34];
  v37 = v0[29];
  v35 = v0[28];
  v36 = v0[27];
  v15 = v0[20];
  v33 = v0[19];
  v34 = v0[18];
  v31 = v0[16];
  v28 = v0[17];
  v29 = v0[15];
  v30 = v0[35];
  v16 = v0[13];
  v17 = v0[12];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v14;
  v19[4] = v17;
  v19[5] = v16;
  v0[6] = sub_1D164CC40;
  v0[7] = v19;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D1618700;
  v0[5] = &block_descriptor_75;
  v20 = _Block_copy(v0 + 2);

  v21 = v10;

  sub_1D166F804();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v22);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v15, v28, v20);

  _Block_release(v20);
  (*(v31 + 8))(v28, v29);
  (*(v33 + 8))(v15, v34);
  (*(v35 + 8))(v37, v36);

LABEL_18:

  v26 = v0[1];

  return v26(v14);
}

uint64_t sub_1D1645844()
{
  *(v0 + 80) = *(v0 + 312);
  sub_1D15F9218();
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D16458D8, 0, 0);
}

uint64_t sub_1D16458D8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D16459EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 64);
    v9 = result;
    os_unfair_lock_lock(v8 + 4);
    swift_beginAccess();

    v10 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + 40);
    *(v9 + 40) = 0x8000000000000000;
    sub_1D16088F0(v10, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v9 + 40) = v12;
    swift_endAccess();
    os_unfair_lock_unlock(v8 + 4);
  }

  return result;
}

uint64_t sub_1D1645ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1D166F7E4();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D166F814();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[9];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = v6;
  aBlock[4] = sub_1D164CBB8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = &block_descriptor_52;
  v15 = _Block_copy(aBlock);

  sub_1D166F804();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v16);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v12, v9, v15);
  _Block_release(v15);
  (*(v20 + 8))(v9, v7);
  (*(v10 + 8))(v12, v19);
}

void sub_1D1645E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = *(v8 + 56);

    v10 = sub_1D1646278(a2, a3, v9);

    if (v10)
    {
    }

    else
    {
      swift_beginAccess();

      sub_1D1648E60(v33, a2, a3);
      swift_endAccess();

      v11 = objc_opt_self();
      sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);
      v12 = [swift_getObjCClassFromMetadata() _typeIdentifier];
      v13 = [v11 predicateForUserDomainConceptsWithTypeIdentifier_];

      v14 = sub_1D166F9C4();
      v15 = [v11 predicateForUserDomainConceptsWithSemanticIdentifier_];

      sub_1D15F2860();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D1672930;
      *(v16 + 32) = v13;
      *(v16 + 40) = v15;
      sub_1D15EE5A8(0, &qword_1EDECB348, 0x1E696AE18);
      v31 = v13;
      v30 = v15;
      v17 = sub_1D166FC44();

      v18 = [objc_opt_self() andPredicateWithSubpredicates_];

      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D16721C0;
      sub_1D166FA04();
      v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v21 = v18;
      v22 = sub_1D166F9C4();

      v23 = [v20 initWithKey:v22 ascending:1];

      *(v19 + 32) = v23;
      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = a2;
      v25[4] = a3;
      v25[5] = a4;
      v26 = objc_allocWithZone(MEMORY[0x1E696C548]);
      sub_1D15EE5A8(0, &qword_1EDECB340, 0x1E696AEB0);

      v27 = sub_1D166FC44();

      aBlock[4] = sub_1D164CC04;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1647D58;
      aBlock[3] = &block_descriptor_59;
      v28 = _Block_copy(aBlock);
      v29 = [v26 initWithPredicate:v21 anchor:0 limit:1 sortDescriptors:v27 resultsHandler:v28];

      _Block_release(v28);

      [*(v8 + 16) executeQuery_];
    }
  }
}

uint64_t sub_1D1646278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D16706A4();
  sub_1D166FAE4();
  v6 = sub_1D16706E4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D16705D4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D1646370(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a7;
  v12 = sub_1D166F7E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D166F814();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = v16;
    v32 = v17;
    v30 = *(result + 72);

    v21 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v22 = swift_allocObject();
    v23 = v33;
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = a8;
    v22[5] = a2;
    v22[6] = a5;
    v22[7] = a9;
    aBlock[4] = sub_1D164CC30;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1618700;
    aBlock[3] = &block_descriptor_66;
    v24 = _Block_copy(aBlock);

    v25 = a2;
    v26 = a5;
    sub_1D166F804();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v27 = MEMORY[0x1E69E7F60];
    sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v27);
    sub_1D1670194();
    v28 = v30;
    MEMORY[0x1D388D1B0](0, v19, v15, v24);
    _Block_release(v24);

    (*(v13 + 8))(v15, v12);
    (*(v32 + 8))(v19, v31);
  }

  return result;
}

void sub_1D1646714(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_1D164A5D0(a2, a3);
    swift_endAccess();

    if (a4 && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
    {
      v13 = v12;
      v14 = *(v11 + 64);
      v15 = a4;
      os_unfair_lock_lock(v14 + 4);
      swift_beginAccess();
      v16 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v11 + 40);
      *(v11 + 40) = 0x8000000000000000;
      sub_1D16088F0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

      *(v11 + 40) = v36;
      swift_endAccess();
      os_unfair_lock_unlock(v14 + 4);
      sub_1D164484C(a2, a3);
    }

    else
    {
      if (qword_1EDECB358 != -1)
      {
        swift_once();
      }

      v18 = sub_1D166F4E4();
      __swift_project_value_buffer(v18, qword_1EDECB360);

      v19 = a5;
      v20 = sub_1D166F4D4();
      v21 = sub_1D166FF44();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v36 = v23;
        *v22 = 136315650;
        v24 = sub_1D1670754();
        v26 = sub_1D15F7A30(v24, v25, &v36);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2080;
        v27 = sub_1D166F9C4();
        v28 = HKSensitiveLogItem();

        sub_1D1670164();
        swift_unknownObjectRelease();
        v29 = sub_1D166FA84();
        v31 = sub_1D15F7A30(v29, v30, &v36);

        *(v22 + 14) = v31;
        *(v22 + 22) = 2080;
        v32 = a5;
        sub_1D164CD1C(0, &qword_1EC63DCE8, sub_1D15F9218, MEMORY[0x1E69E6720]);
        v33 = sub_1D166FA74();
        v35 = sub_1D15F7A30(v33, v34, &v36);

        *(v22 + 24) = v35;
        _os_log_impl(&dword_1D15E6000, v20, v21, "[%s] Could not fetch medication detail for identifier: %s error: %s", v22, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D388E250](v23, -1, -1);
        MEMORY[0x1D388E250](v22, -1, -1);
      }
    }
  }
}

uint64_t sub_1D1646AC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    if (!*(*(v8 + 48) + 16) || (, sub_1D16061DC(a2, a3), v10 = v9, , (v10 & 1) == 0))
    {
      sub_1D15EE5A8(0, &unk_1EDEC9D70, 0x1E69E9BF8);

      v11 = sub_1D16700D4();
      v12 = objc_allocWithZone(MEMORY[0x1E696C2F0]);
      v13 = sub_1D166F9C4();
      v14 = [v12 initWithName:v13 loggingCategory:v11];

      swift_beginAccess();
      sub_1D164424C(v14, a2, a3);
      swift_endAccess();
    }

    v15 = *(v8 + 48);
    if (*(v15 + 16))
    {

      v16 = sub_1D16061DC(a2, a3);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);

        [v18 registerObserver_];
      }

      else
      {
      }
    }

    v19 = sub_1D16447A4(a2, a3);
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D166F9C4();
      [a4 medicationDetailDidUpdate:v20 for:v21];
    }

    else
    {
      sub_1D1645ADC(a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D1646CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D166F7E4();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D166F814();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 72);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = sub_1D164C6F8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = &block_descriptor_10;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D166F804();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v17);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t sub_1D164701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    swift_beginAccess();
    v9 = *(v8 + 48);
    if (!*(v9 + 16))
    {
    }

    v10 = sub_1D16061DC(a2, a3);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      [v12 unregisterObserver_];
    }
  }

  return result;
}

uint64_t sub_1D164710C()
{
  sub_1D164CD1C(0, &qword_1EDEC9E68, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  sub_1D164C860(0);
  v18 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D164C9EC(0);
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D166F454();
  sub_1D15EE5A8(0, &qword_1EDEC9E58, 0x1E69E9610);
  v11 = sub_1D166FFC4();
  v21 = v11;
  v12 = sub_1D166FFA4();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_1D1609C44(0);
  sub_1D164C960(&qword_1EDECA078, sub_1D1609C44, MEMORY[0x1E695BFB0]);
  sub_1D164C9A8(&qword_1EDEC9E60, &qword_1EDEC9E58, 0x1E69E9610, MEMORY[0x1E69E8028]);
  sub_1D166F794();
  sub_1D164CB2C(v2);

  sub_1D164CAC4(0, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
  sub_1D164C960(&qword_1EDECA098, sub_1D164C860, MEMORY[0x1E695BE98]);
  v13 = v18;
  sub_1D166F784();
  (*(v4 + 8))(v6, v13);
  sub_1D164C960(&qword_1EDECA0A8, sub_1D164C9EC, MEMORY[0x1E695BD60]);
  v14 = v19;
  v15 = sub_1D166F754();
  (*(v20 + 8))(v10, v14);
  return v15;
}

uint64_t sub_1D16474F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D166F444();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x1E69DF028])
  {
    *a2 = MEMORY[0x1E69E7CC0];
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v8 = *v7;
  v17 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
LABEL_21:
    v9 = sub_1D1670224();
    if (v9)
    {
LABEL_4:
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        v12 = v10;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1D388D4D0](v12, v8);
          }

          else
          {
            if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v13 = *(v8 + 8 * v12 + 32);
          }

          v14 = v13;
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v12;
          if (v10 == v9)
          {
            goto LABEL_23;
          }
        }

        MEMORY[0x1D388CE10]();
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D166FC84();
        }

        sub_1D166FCC4();
        v11 = v17;
      }

      while (v10 != v9);
      goto LABEL_23;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_23:

  *a2 = v11;
  return result;
}

uint64_t sub_1D1647778(unint64_t *a1, uint64_t a2)
{
  v30 = a2;
  v28 = sub_1D166F7E4();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D166F814();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 >> 62)
  {
    result = sub_1D1670224();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = *(v30 + 72);
    v25 = v9 & 0xC000000000000001;
    v26 = v12;
    v23 = (v3 + 8);
    v24 = v33;
    v22 = (v6 + 8);
    v27 = v9;
    v21 = result;
    do
    {
      if (v25)
      {
        v13 = MEMORY[0x1D388D4D0](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      ++v11;
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      v33[2] = sub_1D164CE1C;
      v33[3] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v33[0] = sub_1D1618700;
      v33[1] = &block_descriptor_95;
      v17 = _Block_copy(aBlock);
      v18 = v14;

      sub_1D166F804();
      v31 = MEMORY[0x1E69E7CC0];
      sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v19 = MEMORY[0x1E69E7F60];
      sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v19);
      v20 = v28;
      sub_1D1670194();
      MEMORY[0x1D388D1B0](0, v8, v5, v17);
      _Block_release(v17);

      (*v23)(v5, v20);
      (*v22)(v8, v29);

      result = v21;
      v9 = v27;
    }

    while (v21 != v11);
  }

  return result;
}

uint64_t sub_1D1647B50(void *a1, uint64_t a2)
{
  v3 = [a1 semanticIdentifier];
  v4 = [v3 stringValue];

  v5 = sub_1D166FA04();
  v7 = v6;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 64);
    v10 = Strong;
    os_unfair_lock_lock(v9 + 4);
    swift_beginAccess();

    v11 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 40);
    *(v10 + 40) = 0x8000000000000000;
    sub_1D16088F0(v11, v5, v7, isUniquelyReferenced_nonNull_native);

    *(v10 + 40) = v14;
    swift_endAccess();
    os_unfair_lock_unlock(v9 + 4);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D164484C(v5, v7);
  }
}

id *MedicationDetailProvider.deinit()
{

  return v0;
}

uint64_t MedicationDetailProvider.__deallocating_deinit()
{
  MedicationDetailProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1D1647D58(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v15 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v15, a3, a4, a5, a6);
}

uint64_t sub_1D1647E28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D16701B4() + 1) & ~v5;
    do
    {
      sub_1D16706A4();

      sub_1D166FAE4();
      v10 = sub_1D16706E4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D1647FD8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D16701B4() + 1) & ~v5;
    do
    {
      sub_1D16706A4();

      sub_1D166FAE4();
      v9 = sub_1D16706E4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

id sub_1D16481C0()
{
  v1 = v0;
  sub_1D16099DC(0);
  v2 = *v0;
  v3 = sub_1D1670464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
        result = *(&v23 + 1);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1D1648340()
{
  v1 = v0;
  sub_1D1609778(0, &qword_1EC63DB38, MEMORY[0x1E69E6530]);
  v2 = *v0;
  v3 = sub_1D1670464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1D16484C8()
{
  v1 = v0;
  sub_1D1609778(0, &qword_1EC63DAF8, MEMORY[0x1E69E7CA0] + 8);
  v2 = *v0;
  v3 = sub_1D1670464();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D15F928C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D15FA184(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1D1648690(unint64_t *a1, unint64_t *a2, void *a3)
{
  v4 = v3;
  sub_1D16091FC(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1D1670464();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1D16487FC()
{
  v1 = v0;
  sub_1D1609304(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1609388(0);
  v4 = *v0;
  v5 = sub_1D1670464();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v31, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 32 * v19;
        v21 = (*(v4 + 48) + 32 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_1D1609448(*(v4 + 56) + v27, v32);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v24;
        v29[3] = v25;
        sub_1D15F323C(v26, *(v28 + 56) + v27);

        result = sub_1D15F301C(v24, v25);
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    v6 = v34;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        goto LABEL_21;
      }

      v18 = *(v31 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_1D1648A40()
{
  v1 = v0;
  sub_1D1609264(0);
  v2 = *v0;
  v3 = sub_1D1670464();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

uint64_t sub_1D1648B80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D166F1A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1D166F974();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D164C960(&qword_1EC63DAD0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D166F9B4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D164BB04(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D1648E60(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D16706A4();
  sub_1D166FAE4();
  v8 = sub_1D16706E4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D16705D4() & 1) != 0)
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

    sub_1D164BDD0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D1648FF8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1D1670234();

    if (v17)
    {

      sub_1D15EE5A8(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_1D1670224();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_1D1649554(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_1D1649D10(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_1D164A27C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1D15EE5A8(0, a3, a4);
    v19 = sub_1D1670094();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1D16700A4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_1D164BF50(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D1649274(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D166F2C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  v33 = a2;
  v11 = sub_1D166F974();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D164C960(&qword_1EC63DA80, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
      v21 = sub_1D166F9B4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D164C0F8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D1649554(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_1D164CE24(0, a3, a4, a5, a6);
    v10 = sub_1D1670294();
    v23 = v10;
    sub_1D16701E4();
    if (sub_1D1670254())
    {
      sub_1D15EE5A8(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1D1649D10(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_1D1670094();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_1D1670254());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D164976C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D166F1A4();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1D164CEC4(0);
  result = sub_1D1670284();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D166F974();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D1649ABC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D15FA0E8();
  result = sub_1D1670284();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D16706A4();
      sub_1D166FAE4();
      result = sub_1D16706E4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D1649D10(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1D164CE24(0, a2, a3, a4, a5);
  result = sub_1D1670284();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_1D1670094();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_1D1649F2C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D166F2C4();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1D15FA1E4(0);
  result = sub_1D1670284();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      result = sub_1D166F974();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_1D164A27C(uint64_t a1, uint64_t a2)
{
  sub_1D1670094();
  result = sub_1D16701C4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D164A300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D166F1A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1D166F974();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1D164C960(&qword_1EC63DAD0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1D166F9B4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D164A9B0(MEMORY[0x1E69695A8], sub_1D164CEC4);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D164B638(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D164A5D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D16706A4();
  sub_1D166FAE4();
  v6 = sub_1D16706E4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D16705D4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D164A70C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D164B940(v8);
  *v2 = v16;
  return v12;
}

void *sub_1D164A70C()
{
  v1 = v0;
  sub_1D15FA0E8();
  v2 = *v0;
  v3 = sub_1D1670274();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_1D164A85C(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_1D164CE24(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1D1670274();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_1D164A9B0(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_1D1670274();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_1D164ABE4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1D166F1A4();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1D164CEC4(0);
  v7 = sub_1D1670284();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D166F974();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1D164AEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D15FA0E8();
  result = sub_1D1670284();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D16706A4();

      sub_1D166FAE4();
      result = sub_1D16706E4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_1D164B120(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1D164CE24(0, a2, a3, a4, a5);
  result = sub_1D1670284();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_1D1670094();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v6 = v9;
  }

  return result;
}

uint64_t sub_1D164B328(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1D166F2C4();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1D15FA1E4(0);
  v7 = sub_1D1670284();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      result = sub_1D166F974();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1D164B638(int64_t a1)
{
  v3 = sub_1D166F1A4();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1D16701B4();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = sub_1D166F974();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1D164B940(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D16701B4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D16706A4();

        sub_1D166FAE4();
        v10 = sub_1D16706E4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D164BB04(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D166F1A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D164976C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D164A9B0(MEMORY[0x1E69695A8], sub_1D164CEC4);
      goto LABEL_12;
    }

    sub_1D164ABE4(v10 + 1);
  }

  v12 = *v3;
  sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = sub_1D166F974();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D164C960(&qword_1EC63DAD0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D166F9B4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1670624();
  __break(1u);
  return result;
}

uint64_t sub_1D164BDD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D1649ABC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D164A70C();
      goto LABEL_16;
    }

    sub_1D164AEF4(v8 + 1);
  }

  v10 = *v4;
  sub_1D16706A4();
  sub_1D166FAE4();
  result = sub_1D16706E4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D16705D4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D1670624();
  __break(1u);
  return result;
}

void sub_1D164BF50(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_1D1649D10(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D164A85C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_1D164B120(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_1D1670094();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1D15EE5A8(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1D16700A4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D1670624();
  __break(1u);
}

uint64_t sub_1D164C0F8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D166F2C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1649F2C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D164A9B0(MEMORY[0x1E6969AD0], sub_1D15FA1E4);
      goto LABEL_12;
    }

    sub_1D164B328(v10 + 1);
  }

  v12 = *v3;
  sub_1D164C960(&qword_1EC63DA78, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  v13 = sub_1D166F974();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D164C960(&qword_1EC63DA80, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
      v21 = sub_1D166F9B4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D1670624();
  __break(1u);
  return result;
}

uint64_t sub_1D164C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D166F7E4();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D166F814();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 + 72);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = sub_1D1615D04;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1618700;
  aBlock[3] = &block_descriptor_88;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D166F804();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D164C960(&qword_1EDECA030, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1D164CD1C(0, &qword_1EDECA000, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D164C71C(&qword_1EDEC9FF0, &qword_1EDECA000, v17);
  sub_1D1670194();
  MEMORY[0x1D388D1B0](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D164C71C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D164CD1C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D164C860(uint64_t a1)
{
  if (!qword_1EDECA090)
  {
    sub_1D1609C44(255);
    sub_1D15EE5A8(255, &qword_1EDEC9E58, 0x1E69E9610);
    sub_1D164C960(&qword_1EDECA078, sub_1D1609C44, MEMORY[0x1E695BFB0]);
    sub_1D164C9A8(&qword_1EDEC9E60, &qword_1EDEC9E58, 0x1E69E9610, MEMORY[0x1E69E8028]);
    v1 = sub_1D166F5A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECA090);
    }
  }
}

uint64_t sub_1D164C960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D164C9A8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D15EE5A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D164C9EC(uint64_t a1)
{
  if (!qword_1EDECA0A0)
  {
    sub_1D164C860(255);
    sub_1D164CAC4(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    sub_1D164C960(&qword_1EDECA098, sub_1D164C860, MEMORY[0x1E695BE98]);
    v1 = sub_1D166F594();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECA0A0);
    }
  }
}

void sub_1D164CAC4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D164CB2C(uint64_t a1)
{
  sub_1D164CD1C(0, &qword_1EDEC9E68, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_48Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D164CC4C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1D166F9C4();
  [a1 medicationDetailDidUpdate:v3 for:v4];
}

void sub_1D164CCB8(uint64_t a1)
{
  if (!qword_1EDEC9D68)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D1670344();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEC9D68);
    }
  }
}

void sub_1D164CD1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D164CD88(uint64_t a1)
{
  if (!qword_1EDECA080)
  {
    sub_1D164CAC4(255, &qword_1EDECADE8, &qword_1EDECACB0, 0x1E69A3B10, MEMORY[0x1E69E62F8]);
    v1 = sub_1D166F5B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDECA080);
    }
  }
}

void sub_1D164CE24(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D15EE5A8(255, a3, a4);
    sub_1D164C9A8(a5, a3, a4, MEMORY[0x1E69E81B8]);
    v9 = sub_1D16702B4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D164CEC4(uint64_t a1)
{
  if (!qword_1EC63E028)
  {
    sub_1D166F1A4();
    sub_1D164C960(&qword_1EC63DBC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D16702B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E028);
    }
  }
}

uint64_t MedicationDose.__allocating_init(_:medicationDetailProvider:medication:)(char **a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  MedicationDose.init(_:medicationDetailProvider:medication:)(a1, a2, a3);
  return v6;
}

uint64_t MedicationDose.medication.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  return v1;
}

uint64_t sub_1D164D068@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  *a2 = v4;
  return result;
}

uint64_t sub_1D164D0E8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D166F744();
}

uint64_t MedicationDose.$medication.getter()
{
  swift_beginAccess();
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D164D1E4(void *a1)
{
  swift_beginAccess();
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  sub_1D166F714();
  return swift_endAccess();
}

uint64_t sub_1D164D26C(char *a1, uint64_t *a2)
{
  sub_1D164E3E8(0, &qword_1EC63E030, MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = *(v5 + 16);
  v11(&v13 - v9, a1, v4);
  v11(v8, v10, v4);
  swift_beginAccess();
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  sub_1D166F724();
  swift_endAccess();
  return (*(v5 + 8))(v10, v4);
}

uint64_t MedicationDose.init(_:medicationDetailProvider:medication:)(char **a1, uint64_t a2, void *a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider) = 0;
  *(v3 + 16) = v7;
  *(v3 + 24) = v6;
  *(v3 + 32) = v8;
  *(v3 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose_medicationDetailProvider) = a2;
  swift_beginAccess();
  v16 = a3;
  v9 = a3;
  sub_1D164DFDC(v7, v6, v8);
  sub_1D15EE5A8(0, &qword_1EDECACB0, 0x1E69A3B10);

  sub_1D166F704();
  swift_endAccess();
  if (a2)
  {
    if (v8)
    {
      v11 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier];
      v10 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8];

      sub_1D164E028(v7, v6, 1);
    }

    else
    {

      v12 = [v7 medicationIdentifier];
      v11 = sub_1D166FA04();
      v10 = v13;
      sub_1D164E028(v7, v6, 0);
    }

    sub_1D1615648(v14, v11, v10, a2);
  }

  else
  {
    sub_1D164E028(v7, v6, v8);
  }

  return v3;
}

uint64_t MedicationDose.medicationDetailDidUpdate(_:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  if (*(v3 + 32))
  {
    v9 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier];
    v8 = *&v7[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8];
  }

  else
  {
    v10 = [v7 medicationIdentifier];
    v9 = sub_1D166FA04();
    v8 = v11;
  }

  if (v9 == a2 && v8 == a3)
  {

    goto LABEL_11;
  }

  v13 = sub_1D16705D4();

  if (v13)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();

    v15 = a1;
    return sub_1D166F744();
  }

  return result;
}

unint64_t MedicationDose.description.getter()
{
  sub_1D16702D4();

  v7 = *(v0 + 16);
  sub_1D164DFDC(v7, *(v0 + 24), *(v0 + 32));
  v1 = sub_1D166FA74();
  MEMORY[0x1D388CCF0](v1);

  MEMORY[0x1D388CCF0](0x7461636964656D20, 0xED0000203A6E6F69);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D166F734();

  v2 = [v7 description];
  v3 = sub_1D166FA04();
  v5 = v4;

  MEMORY[0x1D388CCF0](v3, v5);

  return 0xD000000000000014;
}

void *MedicationDose.medicationDoseEvent.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      return v1;
    }
  }

  else
  {
    v1 = *(v0 + 16);
  }

  v2 = v1;
  return v1;
}

uint64_t MedicationDose.scheduleItem.getter()
{
  if (*(v0 + 32) == 1)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t MedicationDose.scheduleIdentifier.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = v1[2];
  }

  else
  {
    v3 = [v1 scheduleItemIdentifier];
    if (v3)
    {
      v4 = v3;
      v2 = sub_1D166FA04();
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void MedicationDose.date.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v1 + 32))
  {
    v4 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
    v5 = sub_1D166F174();
    v6 = *(*(v5 - 8) + 16);

    v6(a1, v3 + v4, v5);
  }

  else
  {
    v7 = [*(v1 + 16) startDate];
    sub_1D166F144();
  }
}

uint64_t MedicationDose.status.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    if (!v1)
    {
      return 1;
    }
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return [v1 logStatus];
}

uint64_t MedicationDose.doseAmount.getter()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if ((*(v1 + 32) & 1) == 0)
  {
    return sub_1D1670014();
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
    return *(v2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount);
  }

  v4 = v3;
  v5 = sub_1D1670014();

  return v5;
}

uint64_t MedicationDose.medicationIdentifier.getter()
{
  v1 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v2 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier];
  }

  else
  {
    v3 = [v1 medicationIdentifier];
    v2 = sub_1D166FA04();
  }

  return v2;
}

uint64_t MedicationDose.deinit()
{
  sub_1D164E028(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose__medication;
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MedicationDose.__deallocating_deinit()
{
  sub_1D164E028(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationDose__medication;
  sub_1D164E3E8(0, &qword_1EDECA040, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D164DD58@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D166F604();
  *a2 = result;
  return result;
}

uint64_t _s27HealthMedicationsExperience18MedicationDoseTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
      sub_1D164DFDC(v5, v6, 0);
      sub_1D164DFDC(v2, v3, 0);
      v15 = sub_1D16700A4();
      sub_1D164E028(v2, v3, 0);
      sub_1D164E028(v5, v6, 0);
      return v15 & 1;
    }

    goto LABEL_9;
  }

  if ((a2[2] & 1) == 0)
  {
LABEL_9:
    sub_1D164DFDC(*a2, a2[1], v7);
    sub_1D164DFDC(v2, v3, v4);
    sub_1D164E028(v2, v3, v4);
    v12 = v5;
    v13 = v6;
    v14 = v7;
LABEL_10:
    sub_1D164E028(v12, v13, v14);
    return 0;
  }

  sub_1D164DFDC(*a2, a2[1], 1);
  sub_1D164DFDC(v2, v3, 1);
  if ((_s27HealthMedicationsExperience12ScheduleItemC2eeoiySbAC_ACtFZ_0(v2, v5) & 1) == 0)
  {
    sub_1D164E028(v2, v3, 1);
    v12 = v5;
    v13 = v6;
    v14 = 1;
    goto LABEL_10;
  }

  if (!v3)
  {
    v16 = v6;
    sub_1D164E028(v2, 0, 1);
    sub_1D164E028(v5, v6, 1);
    if (!v6)
    {
      return 1;
    }

    return 0;
  }

  if (!v6)
  {
    sub_1D164E028(v2, v3, 1);
    v12 = v5;
    v13 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
  v8 = v6;
  v9 = v3;
  v10 = sub_1D16700A4();
  sub_1D164E028(v2, v3, 1);
  sub_1D164E028(v5, v6, 1);

  result = 1;
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  return result;
}

id sub_1D164DFDC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {

    return a1;
  }
}

void sub_1D164E028(void *a1, void *a2, char a3)
{
  if (a3)
  {

    a1 = a2;
    v3 = vars8;
  }
}

uint64_t _s27HealthMedicationsExperience14MedicationDoseC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15 = *(a1 + 16);
  v16 = v3;
  v17 = v4;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v12 = *(a2 + 16);
  v13 = v5;
  v14 = v6;
  sub_1D164DFDC(v15, v3, v4);
  sub_1D164DFDC(v12, v5, v6);
  v7 = _s27HealthMedicationsExperience18MedicationDoseTypeO2eeoiySbAC_ACtFZ_0(&v15, &v12);
  sub_1D164E028(v12, v13, v14);
  sub_1D164E028(v15, v16, v17);
  if (v7)
  {
    sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    v8 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D166F734();

    v9 = v15;
    v10 = sub_1D16700A4();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D164E200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D164E248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t type metadata accessor for MedicationDose(uint64_t a1)
{
  result = qword_1EDECA8E0;
  if (!qword_1EDECA8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D164E2FC(uint64_t a1)
{
  sub_1D164E3E8(319, &qword_1EDECA040, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D164E3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D15EE5A8(255, &qword_1EDECACB0, 0x1E69A3B10);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t MedicationOntologyContentProviderError.hashValue.getter()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](0);
  return sub_1D16706E4();
}

uint64_t sub_1D164E4CC()
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](0);
  return sub_1D16706E4();
}

uint64_t sub_1D164E538(uint64_t a1)
{
  sub_1D16706A4();
  MEMORY[0x1D388D890](0);
  return sub_1D16706E4();
}

uint64_t MedicationOntologyContentProvider.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D164E5C0(void *a1)
{
  v2 = v1;
  sub_1D164E76C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v2;
  sub_1D164E800(0);
  sub_1D164E97C(&qword_1EC63E050, sub_1D164E800, MEMORY[0x1E695C038]);
  v10 = a1;

  sub_1D166F6E4();
  sub_1D164E97C(&qword_1EC63E058, sub_1D164E76C, MEMORY[0x1E695C058]);
  v11 = sub_1D166F754();
  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_1D164E76C(uint64_t a1)
{
  if (!qword_1EC63E038)
  {
    sub_1D164E800(255);
    sub_1D164E97C(&qword_1EC63E050, sub_1D164E800, MEMORY[0x1E695C038]);
    v1 = sub_1D166F6F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E038);
    }
  }
}

void sub_1D164E800(uint64_t a1)
{
  if (!qword_1EC63E040)
  {
    sub_1D164E870(255);
    sub_1D15F9218();
    v1 = sub_1D166F6B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E040);
    }
  }
}

void sub_1D164E870(uint64_t a1)
{
  if (!qword_1EC63E048)
  {
    sub_1D15EE5A8(255, &qword_1EC63DA98, 0x1E696C010);
    v1 = sub_1D16700E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E048);
    }
  }
}

uint64_t sub_1D164E8D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D164E800(0);
  swift_allocObject();
  v7 = a1;

  result = sub_1D166F6C4();
  *a3 = result;
  return result;
}

uint64_t sub_1D164E97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D164E9C4(void (*a1)(uint64_t *), uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = [a3 firstOntologyCoding];
  if (!v9)
  {
    goto LABEL_66;
  }

  v10 = v9;
  v11 = [v9 code];

  if (!v11)
  {
    goto LABEL_66;
  }

  v12 = sub_1D166FA04();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  v16 = v12 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_66;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v57 = 0;
    v20 = sub_1D164F920(v12, v14, 10);
    v38 = v50;
    goto LABEL_65;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    aBlock = v12;
    v52 = v14 & 0xFFFFFFFFFFFFFFLL;
    if (v12 == 43)
    {
      if (v15)
      {
        if (--v15)
        {
          v20 = 0;
          v30 = &aBlock + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v15)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_74:
      __break(1u);
      return;
    }

    if (v12 != 45)
    {
      if (v15)
      {
        v20 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v36 = *p_aBlock - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v15)
    {
      if (--v15)
      {
        v20 = 0;
        v24 = &aBlock + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v18 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v18 = sub_1D1670354();
  }

  v19 = *v18;
  if (v19 == 43)
  {
    if (v16 < 1)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v15 = v16 - 1;
    if (v16 != 1)
    {
      v20 = 0;
      if (v18)
      {
        v27 = v18 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_63;
          }

          v29 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            goto LABEL_63;
          }

          v20 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_63;
          }

          ++v27;
          if (!--v15)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    v20 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_64;
  }

  if (v19 != 45)
  {
    if (v16)
    {
      v20 = 0;
      if (v18)
      {
        while (1)
        {
          v33 = *v18 - 48;
          if (v33 > 9)
          {
            goto LABEL_63;
          }

          v34 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            goto LABEL_63;
          }

          v20 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_63;
          }

          ++v18;
          if (!--v16)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v16 < 1)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v15 = v16 - 1;
  if (v16 == 1)
  {
    goto LABEL_63;
  }

  v20 = 0;
  if (v18)
  {
    v21 = v18 + 1;
    while (1)
    {
      v22 = *v21 - 48;
      if (v22 > 9)
      {
        goto LABEL_63;
      }

      v23 = 10 * v20;
      if ((v20 * 10) >> 64 != (10 * v20) >> 63)
      {
        goto LABEL_63;
      }

      v20 = v23 - v22;
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_63;
      }

      ++v21;
      if (!--v15)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v15) = 0;
LABEL_64:
  v57 = v15;
  v38 = v15;
LABEL_65:

  if (v38)
  {
LABEL_66:

    aBlock = 0;
    LOBYTE(v52) = 0;
    a1(&aBlock);
    return;
  }

  v39 = objc_opt_self();
  sub_1D164FED0(0, &qword_1EDECB330, MEMORY[0x1E69E7C98] + 8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D16721C0;
  v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v42 = [objc_opt_self() identifierWithNumber_];

  v43 = [v39 selectionForNodeWithIdentifier_];
  *(v40 + 32) = v43;
  sub_1D15EE5A8(0, &qword_1EC63E068, 0x1E696C030);
  v44 = sub_1D166FC44();

  v45 = [v39 andSelectionWithSubselections_];

  v46 = swift_allocObject();
  v46[2] = sub_1D162EF90;
  v46[3] = v8;
  v46[4] = a4;
  v47 = objc_allocWithZone(MEMORY[0x1E69A30C0]);
  v55 = sub_1D164FEAC;
  v56 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1D164F384;
  v54 = &block_descriptor_11;
  v48 = _Block_copy(&aBlock);

  v49 = [v47 initWithConceptSelection:v45 resultsHandler:v48];
  _Block_release(v48);

  [*(a4 + 16) executeQuery_];
}

void sub_1D164EF74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v12 = sub_1D166F4E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v16 = a4;
    sub_1D166F4C4();
    v17 = a4;
    v18 = sub_1D166F4D4();
    v19 = sub_1D166FF44();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = a4;
      v33 = v31;
      *v20 = 136446210;
      v21 = a4;
      sub_1D15F9218();
      v22 = sub_1D166FA74();
      v24 = sub_1D15F7A30(v22, v23, &v33);
      v30 = v12;
      v25 = a5;
      v26 = v24;

      *(v20 + 4) = v26;
      a5 = v25;
      _os_log_impl(&dword_1D15E6000, v18, v19, "Failed to query for hk concept using user domain concept: %{public}s", v20, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1D388E250](v27, -1, -1);
      MEMORY[0x1D388E250](v20, -1, -1);

      (*(v13 + 8))(v15, v30);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    v29 = a4;
    a5(a4, 1);
  }

  else
  {
    a5(a2, 0);
    v28 = *(a7 + 16);

    [v28 stopQuery_];
  }
}

uint64_t MedicationOntologyContentProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D164F264()
{
  result = qword_1EC63E060;
  if (!qword_1EC63E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E060);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D164F384(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);

  v12 = a2;
  v10 = a3;
  v11 = a5;
  v9(v12, a3, a4, a5);
}

void *sub_1D164F434(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D164FED0(0, &qword_1EC63DA68, MEMORY[0x1E69E7508]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}