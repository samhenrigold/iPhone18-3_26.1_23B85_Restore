void *sub_1DAADC81C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1DAA6A9E0(0, a5, a6, MEMORY[0x1E69E6F90]);
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

char *sub_1DAADCA10(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F498, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
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

unint64_t sub_1DAADCB1C()
{
  result = qword_1ECBE69D8;
  if (!qword_1ECBE69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69D8);
  }

  return result;
}

unint64_t sub_1DAADCB74()
{
  result = qword_1ECBE69E0;
  if (!qword_1ECBE69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69E0);
  }

  return result;
}

unint64_t sub_1DAADCBD4()
{
  result = qword_1ECBE69E8;
  if (!qword_1ECBE69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69E8);
  }

  return result;
}

unint64_t sub_1DAADCC2C()
{
  result = qword_1ECBE69F0;
  if (!qword_1ECBE69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69F0);
  }

  return result;
}

unint64_t sub_1DAADCCC8()
{
  result = qword_1ECBE69F8;
  if (!qword_1ECBE69F8)
  {
    sub_1DAADD1F4(255, &qword_1ECBE6A00, sub_1DAAD98EC, &type metadata for DeleteWatchlistsIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE69F8);
  }

  return result;
}

void sub_1DAADCD58(uint64_t a1)
{
  if (!qword_1ECBE6A10)
  {
    sub_1DAADCDD0();
    sub_1DAADCE24();
    v1 = sub_1DACB71B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6A10);
    }
  }
}

unint64_t sub_1DAADCDD0()
{
  result = qword_1ECBE6A18;
  if (!qword_1ECBE6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A18);
  }

  return result;
}

unint64_t sub_1DAADCE24()
{
  result = qword_1ECBE6A20;
  if (!qword_1ECBE6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A20);
  }

  return result;
}

void sub_1DAADCE90(uint64_t a1)
{
  if (!qword_1EE11CEA8)
  {
    sub_1DAADCF98(255, &qword_1EE11D0E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11CEA8);
    }
  }
}

void sub_1DAADCF14(uint64_t a1)
{
  if (!qword_1EE11F4C0)
  {
    sub_1DAADCF98(255, &qword_1EE11FFE0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6C20], MEMORY[0x1E69D65A0]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F4C0);
    }
  }
}

void sub_1DAADCF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1DAADCFEC(uint64_t a1)
{
  if (!qword_1EE11F4C8)
  {
    sub_1DAADD1F4(255, &qword_1EE11FFF0, sub_1DAADD07C, &type metadata for Stock, MEMORY[0x1E69D65A0]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F4C8);
    }
  }
}

unint64_t sub_1DAADD07C()
{
  result = qword_1EE1201C8;
  if (!qword_1EE1201C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201C8);
  }

  return result;
}

void sub_1DAADD0D0(uint64_t a1)
{
  if (!qword_1ECBE6A38)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DAAA14B8(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    v1 = sub_1DACB70A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6A38);
    }
  }
}

void sub_1DAADD164(uint64_t a1)
{
  if (!qword_1ECBE6A48)
  {
    sub_1DAADD1F4(255, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6A48);
    }
  }
}

void sub_1DAADD1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAADD25C()
{
  result = qword_1EE11E710;
  if (!qword_1EE11E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E710);
  }

  return result;
}

uint64_t sub_1DAADD2B4()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1ECBE6A58);
  __swift_project_value_buffer(v0, qword_1ECBE6A58);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAADD39C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6A58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAADD444()
{
  v1 = *v0;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAADD48C(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  MEMORY[0x1E1277D70](v2);
  return sub_1DACBA2C4();
}

void sub_1DAADD4D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (*(v3 + 16) <= 2u)
  {
    sub_1DACB9324();
  }

  v4 = sub_1DACB92F4();
  v5 = sub_1DACB92F4();
  v6 = FCPermanentURLForRecordID();

  if (v6)
  {

    sub_1DACB7A44();
  }

  else
  {
    __break(1u);
  }
}

uint64_t getEnumTagSinglePayload for PermanentURLFactory.Container(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PermanentURLFactory.Container(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAADD7A0()
{
  result = qword_1ECBE6A70;
  if (!qword_1ECBE6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A70);
  }

  return result;
}

uint64_t type metadata accessor for YahooNewsOperation(uint64_t a1)
{
  result = qword_1ECBE6AB0;
  if (!qword_1ECBE6AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAADD840(uint64_t a1)
{
  result = sub_1DACB8204();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DAADD8F0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v66 = a1;
  v68 = 0x73752D6E65;
  v73 = sub_1DACB8204();
  v64 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DACB7AB4();
  v65 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1DACB7CC4();
  v62 = *(v63 - 8);
  v5 = MEMORY[0x1EEE9AC00](v63);
  v69 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  v9 = *(v2 + qword_1ECBE6AA0 + 24);
  v10 = __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE6AA0), v9);
  sub_1DAADF8F0(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x7372656B636974;
  *(inited + 40) = 0xE700000000000000;
  v61 = v2;
  v75[0] = *(v2 + qword_1ECBE6A98);
  sub_1DAA613E8();
  sub_1DAADF844(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
  sub_1DACB71E4();
  v12 = sub_1DACB9214();
  v14 = v13;

  *(inited + 48) = v12;
  *(inited + 56) = v14;
  v60 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAADF594(inited + 32);
  v15 = qword_1ECBE6AA8;
  sub_1DAADF5F0();
  v16 = v8;
  sub_1DABDF744(v9);
  v17 = *v10;
  v18 = objc_opt_self();
  v19 = [v18 sharedPreferences];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 stocksLanguageCode];
    if (v21)
    {
      v22 = v21;
      v68 = sub_1DACB9324();
      v24 = v23;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = [v20 stocksCountryCode];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1DACB9324();
      v29 = v28;

      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v29 = 0xE200000000000000;
  v27 = 21333;
LABEL_9:
  v30 = [v18 sharedPreferences];
  if (v30)
  {
    v31 = v30;
    v57 = v27;
    v58 = v29;
    v59 = v24;
    v32 = [v30 stocksYQLBaseURL];

    if (v32)
    {
      v33 = v70;
      sub_1DACB7A44();

      sub_1DAA4D678(v17 + 16, v75);
      v34 = v62;
      v54 = *(v62 + 16);
      v56 = v16;
      v35 = v63;
      v54(v69, v16, v63);
      v36 = v64;
      v55 = *(v64 + 16);
      v55(v71, v61 + v15, v73);
      sub_1DAADF644(0);
      v61 = v37;
      v38 = objc_allocWithZone(v37);
      v39 = MEMORY[0x1E69E7D40];
      *(v38 + *((*MEMORY[0x1E69E7D40] & *v38) + qword_1EE13E4B0 + 16)) = 3;
      v40 = v65;
      (*(v65 + 16))(v38 + *((*v39 & *v38) + qword_1EE13E4B0 + 24), v33, v72);
      v41 = v38 + *((*v39 & *v38) + qword_1EE13E4B0 + 32);
      strcpy(v41, "/applewf/news");
      *(v41 + 7) = -4864;
      *(v38 + *((*v39 & *v38) + qword_1EE13E4B0 + 40)) = v60;
      v42 = (v38 + *((*v39 & *v38) + qword_1EE13E4B0 + 48));
      v43 = v59;
      *v42 = v68;
      v42[1] = v43;
      v44 = v58;
      v42[2] = v57;
      v42[3] = v44;
      sub_1DAA4D678(v75, v38 + *((*v39 & *v38) + qword_1EE13E4B0 + 56));
      v45 = v69;
      v54(v38 + *((*v39 & *v38) + qword_1EE13E4B0 + 64), v69, v35);
      v46 = *v39 & *v38;
      v47 = v71;
      v48 = v73;
      v55(v38 + *(v46 + qword_1EE13E4B0 + 72), v71, v73);
      v74.receiver = v38;
      v74.super_class = v61;
      v49 = objc_msgSendSuper2(&v74, sel_init);
      (*(v36 + 8))(v47, v48);
      v50 = *(v34 + 8);
      v50(v45, v35);
      __swift_destroy_boxed_opaque_existential_1(v75);
      (*(v40 + 8))(v70, v72);
      v50(v56, v35);
      v51 = swift_allocObject();
      v52 = v67;
      *(v51 + 16) = v66;
      *(v51 + 24) = v52;
      v53 = v49;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v53 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DAADE1D0(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  sub_1DAADF8F0(0, &qword_1ECBE6AD0, type metadata accessor for YahooHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v34 - v7;
  v9 = type metadata accessor for YahooHeadline(0);
  v39 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v40 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = v34 - v12;
  if (*(a1 + 32))
  {
    return (a2)(*a1, 1);
  }

  v34[1] = a3;
  v35 = a2;
  v14 = *(a1 + 8);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 32);
    v18 = (v39 + 48);
    v41 = MEMORY[0x1E69E7CC0];
    v36 = (v39 + 48);
    v37 = v9;
    while (v16 < *(v14 + 16))
    {
      v19 = v17[1];
      v54[0] = *v17;
      v54[1] = v19;
      v20 = v17[2];
      v21 = v17[3];
      v22 = v17[5];
      v54[4] = v17[4];
      v54[5] = v22;
      v54[2] = v20;
      v54[3] = v21;
      v23 = v17[3];
      v50 = v17[2];
      v51 = v23;
      v24 = v17[5];
      v52 = v17[4];
      v53 = v24;
      v25 = v17[1];
      v48 = *v17;
      v49 = v25;
      sub_1DAADF6A8(v54, &v42);
      sub_1DAADE648(&v48, v8);
      v44 = v50;
      v45 = v51;
      v46 = v52;
      v47 = v53;
      v42 = v48;
      v43 = v49;
      sub_1DAADF704(&v42);
      if ((*v18)(v8, 1, v9) == 1)
      {
        sub_1DAA927D4(v8, &qword_1ECBE6AD0, type metadata accessor for YahooHeadline);
      }

      else
      {
        v26 = v15;
        v27 = v14;
        v28 = v38;
        sub_1DAADF758(v8, v38);
        sub_1DAADF758(v28, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1DAADB7E4(0, v41[2] + 1, 1, v41);
        }

        v30 = v41[2];
        v29 = v41[3];
        if (v30 >= v29 >> 1)
        {
          v41 = sub_1DAADB7E4((v29 > 1), v30 + 1, 1, v41);
        }

        v31 = v40;
        v32 = v41;
        v41[2] = v30 + 1;
        sub_1DAADF758(v31, v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v30);
        v14 = v27;
        v15 = v26;
        v18 = v36;
        v9 = v37;
      }

      ++v16;
      v17 += 6;
      if (v15 == v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);

    v44 = v50;
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v42 = v48;
    v43 = v49;
    sub_1DAADF704(&v42);

    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_15:
    *&v54[0] = v41;
    sub_1DAADF8F0(0, &qword_1ECBE6AD8, type metadata accessor for YahooHeadline, MEMORY[0x1E69E62F8]);
    sub_1DACB7AB4();
    sub_1DAADF7BC();
    sub_1DAADF844(&qword_1EE1263D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v33 = sub_1DACB94F4();

    v35(v33, 0);
  }

  return result;
}

uint64_t sub_1DAADE648@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v74 = sub_1DACB7CC4();
  v72 = *(v74 - 8);
  v3 = MEMORY[0x1EEE9AC00](v74);
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v59 - v5;
  sub_1DAADF8F0(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v59 - v7;
  v9 = sub_1DACB7AB4();
  v76 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v59 - v12;
  v13 = *a1;
  v67 = a1[1];
  v68 = v13;
  v15 = a1[2];
  v14 = a1[3];
  v16 = a1[4];
  v65 = a1[5];
  v66 = v16;
  v17 = a1[7];
  v63 = a1[6];
  v64 = v17;
  v18 = a1[9];
  v69 = a1[8];
  v71 = v18;
  v19 = a1[10];
  v20 = a1[11];
  v78 = v15;
  v79 = v14;
  v21 = qword_1ECBE59D8;
  sub_1DACB71E4();
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1DACB7664();
  __swift_project_value_buffer(v22, qword_1ECBE6A80);
  sub_1DAA642D8();
  v23 = MEMORY[0x1E69E6158];
  sub_1DACB9B44();
  v25 = v24;

  if (!v25)
  {
    sub_1DAADF8F0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DACC1D20;
    *(v30 + 56) = v23;
    *(v30 + 64) = sub_1DAA443C8();
    *(v30 + 32) = v15;
    *(v30 + 40) = v14;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v28 = sub_1DACB9AD4();
    v31 = sub_1DACB9914();
    sub_1DACB8C64("dropping Yahoo news headline because we couldn't escape the URL (url=%{public}@)", 80, 2, &dword_1DAA3F000, v28, v31, v30);
    goto LABEL_7;
  }

  sub_1DACB7A94();

  v26 = v76;
  if ((*(v76 + 48))(v8, 1, v9) == 1)
  {
    sub_1DAA927D4(v8, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    sub_1DAADF8F0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1DACC1D20;
    *(v27 + 56) = v23;
    *(v27 + 64) = sub_1DAA443C8();
    *(v27 + 32) = v15;
    *(v27 + 40) = v14;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v28 = sub_1DACB9AD4();
    v29 = sub_1DACB9914();
    sub_1DACB8C64("dropping Yahoo news headline because we couldn't parse the URL (url=%{public}@)", 79, 2, &dword_1DAA3F000, v28, v29, v27);
LABEL_7:

LABEL_8:
    v32 = type metadata accessor for YahooHeadline(0);
    return (*(*(v32 - 8) + 56))(v77, 1, 1, v32);
  }

  v61 = *(v26 + 32);
  v61(v75, v8, v9);
  if (qword_1ECBE59D0 != -1)
  {
    swift_once();
  }

  v34 = qword_1ECBE6A78;
  v35 = v19;
  v36 = sub_1DACB92F4();
  v37 = [v34 dateFromString_];

  if (!v37)
  {
    sub_1DAADF8F0(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1DACC1D20;
    *(v56 + 56) = v23;
    *(v56 + 64) = sub_1DAA443C8();
    *(v56 + 32) = v35;
    *(v56 + 40) = v20;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v57 = sub_1DACB9AD4();
    v58 = sub_1DACB9914();
    sub_1DACB8C64("dropping Yahoo news headline because we couldn't parse the publish date (publishTime=%{public}@)", 96, 2, &dword_1DAA3F000, v57, v58, v56);

    (*(v76 + 8))(v75, v9);
    goto LABEL_8;
  }

  v38 = v70;
  sub_1DACB7C74();

  v60 = *(v72 + 32);
  v60(v73, v38, v74);
  v39 = v75;
  v40 = v76;
  v41 = v62;
  (*(v76 + 16))(v62, v75, v9);
  v42 = v63;
  if (!v64)
  {
    v42 = 0;
  }

  v72 = v42;
  v43 = 0xE000000000000000;
  if (v64)
  {
    v43 = v64;
  }

  v70 = v43;
  v44 = *(v40 + 8);
  v45 = v67;
  sub_1DACB71E4();
  v46 = v65;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v44(v39, v9);
  v47 = type metadata accessor for YahooHeadline(0);
  v48 = v77;
  v60(&v77[v47[8]], v73, v74);
  v61(v48, v41, v9);
  v49 = &v48[v47[5]];
  *v49 = v68;
  *(v49 + 1) = v45;
  v50 = &v48[v47[6]];
  *v50 = v66;
  v50[1] = v46;
  v51 = &v48[v47[7]];
  v52 = v71;
  v53 = v69;
  v54 = v70;
  *v51 = v72;
  *(v51 + 1) = v54;
  v55 = &v48[v47[9]];
  *v55 = v53;
  v55[1] = v52;
  (*(*(v47 - 1) + 56))(v48, 0, 1, v47);
  return sub_1DACB71E4();
}

id sub_1DAADEE58()
{
  result = sub_1DAADEE78();
  qword_1ECBE6A78 = result;
  return result;
}

id sub_1DAADEE78()
{
  v0 = sub_1DACB7E44();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAADF8F0(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v8 = sub_1DACB92F4();
  [v7 setDateFormat_];

  sub_1DACB7F24();
  v9 = sub_1DACB7F54();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    v11 = sub_1DACB7F34();
    (*(v10 + 8))(v6, v9);
  }

  [v7 setTimeZone_];

  sub_1DACB7D14();
  v12 = sub_1DACB7D74();
  (*(v1 + 8))(v3, v0);
  [v7 setLocale_];

  return v7;
}

uint64_t sub_1DAADF0F4()
{
  v0 = sub_1DACB7664();
  __swift_allocate_value_buffer(v0, qword_1ECBE6A80);
  __swift_project_value_buffer(v0, qword_1ECBE6A80);
  return sub_1DAADF140();
}

uint64_t sub_1DAADF140()
{
  v0 = sub_1DACB7664();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1DACB7654();
  sub_1DACB75D4();
  sub_1DACB7634();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v9, v0);
  v11 = *(v1 + 32);
  v11(v9, v7, v0);
  sub_1DACB75E4();
  sub_1DACB7634();
  v10(v4, v0);
  v10(v9, v0);
  v11(v9, v7, v0);
  sub_1DACB75F4();
  sub_1DACB7634();
  v10(v4, v0);
  v10(v9, v0);
  v11(v9, v7, v0);
  sub_1DACB7604();
  sub_1DACB7634();
  v10(v7, v0);
  return (v10)(v9, v0);
}

uint64_t sub_1DAADF3B8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE6AA0));
  v1 = qword_1ECBE6AA8;
  v2 = sub_1DACB8204();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1DAADF440(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE6AA0));
  v2 = qword_1ECBE6AA8;
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1DAADF4CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAADD8F0(sub_1DAADF554, v4);
}

uint64_t sub_1DAADF554(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1DAADF594(uint64_t a1)
{
  sub_1DAA4BD7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAADF5F0()
{
  result = qword_1ECBE6AC0;
  if (!qword_1ECBE6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6AC0);
  }

  return result;
}

void sub_1DAADF644(uint64_t a1)
{
  if (!qword_1ECBE6AC8)
  {
    v2 = sub_1DAADF5F0();
    v4 = type metadata accessor for YahooBaseOperation(a1, &type metadata for YahooNewsResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECBE6AC8);
    }
  }
}

uint64_t sub_1DAADF758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooHeadline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAADF7BC()
{
  result = qword_1ECBE6AE0;
  if (!qword_1ECBE6AE0)
  {
    sub_1DAADF8F0(255, &qword_1ECBE6AD8, type metadata accessor for YahooHeadline, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6AE0);
  }

  return result;
}

uint64_t sub_1DAADF844(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DAADF88C()
{
  result = qword_1EE123B00;
  if (!qword_1EE123B00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123B00);
  }

  return result;
}

void sub_1DAADF8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAADF954()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAADFA60(uint64_t a1)
{
  sub_1DAADFABC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAADFABC()
{
  if (!qword_1EE11F460)
  {
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F460);
    }
  }
}

uint64_t QuoteDetail.currencyCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail(0) + 68));
  sub_1DACB71E4();
  return v1;
}

uint64_t QuoteDetail.fundAssetClass.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail(0) + 84));
  sub_1DACB71E4();
  return v1;
}

uint64_t QuoteDetail.fundCategory.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail(0) + 88));
  sub_1DACB71E4();
  return v1;
}

uint64_t QuoteDetail.fundFocus.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail(0) + 92));
  sub_1DACB71E4();
  return v1;
}

uint64_t QuoteDetail.fundNiche.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail(0) + 96));
  sub_1DACB71E4();
  return v1;
}

uint64_t QuoteDetail.fundRegion.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuoteDetail(0) + 100));
  sub_1DACB71E4();
  return v1;
}

uint64_t QuoteDetail.fundTopHoldings.getter()
{
  type metadata accessor for QuoteDetail(0);

  return sub_1DACB71E4();
}

uint64_t QuoteDetail.fundSectors.getter()
{
  type metadata accessor for QuoteDetail(0);

  return sub_1DACB71E4();
}

uint64_t QuoteDetail.dateLastRefreshed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QuoteDetail(0) + 112);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t QuoteDetail.init(dayOpenPrice:dayLowPrice:dayHighPrice:yearLowPrice:yearHighPrice:dividendYield:volume:averageVolume:priceEarningsRatio:beta:earningsPerShare:earningsStartDate:earningsEndDate:currencyCode:detailsURL:keyStatisticsURL:marketTimeZone:fundAssetClass:fundCategory:fundFocus:fundNiche:fundRegion:fundTopHoldings:fundSectors:dateLastRefreshed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  *(a9 + 112) = a16;
  *(a9 + 120) = a17 & 1;
  *(a9 + 128) = a18;
  *(a9 + 136) = a19 & 1;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21 & 1;
  *(a9 + 160) = a22;
  *(a9 + 168) = a23 & 1;
  v44 = type metadata accessor for QuoteDetail(0);
  v45 = MEMORY[0x1E6969530];
  sub_1DAAE02A4(a24, a9 + v44[15], &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAAE02A4(a25, a9 + v44[16], &qword_1EE125280, v45);
  v46 = (a9 + v44[17]);
  *v46 = a26;
  v46[1] = a27;
  v47 = MEMORY[0x1E6968FB0];
  sub_1DAAE02A4(a28, a9 + v44[18], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAAE02A4(a29, a9 + v44[19], &qword_1EE1263D0, v47);
  sub_1DAAE02A4(a30, a9 + v44[20], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v48 = (a9 + v44[21]);
  *v48 = a31;
  v48[1] = a32;
  v49 = (a9 + v44[22]);
  *v49 = a33;
  v49[1] = a34;
  v50 = (a9 + v44[23]);
  *v50 = a35;
  v50[1] = a36;
  v51 = (a9 + v44[24]);
  *v51 = a37;
  v51[1] = a38;
  v52 = (a9 + v44[25]);
  *v52 = a39;
  v52[1] = a40;
  *(a9 + v44[26]) = a41;
  *(a9 + v44[27]) = a42;
  v53 = v44[28];
  v54 = sub_1DACB7CC4();
  v55 = *(*(v54 - 8) + 32);

  return v55(a9 + v53, a43, v54);
}

uint64_t sub_1DAAE02A4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA49A38(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DAAE0314(char a1)
{
  result = 0x506E65704F796164;
  switch(a1)
  {
    case 1:
      result = 0x7250776F4C796164;
      break;
    case 2:
      result = 0x5068676948796164;
      break;
    case 3:
      result = 0x50776F4C72616579;
      break;
    case 4:
      result = 0x6867694872616579;
      break;
    case 5:
      result = 0x646E656469766964;
      break;
    case 6:
      result = 0x656D756C6F76;
      break;
    case 7:
      result = 0x5665676172657661;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 1635018082;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
    case 24:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x73676E696E726165;
      break;
    case 13:
      result = 0x79636E6572727563;
      break;
    case 14:
      result = 0x55736C6961746564;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x695474656B72616DLL;
      break;
    case 17:
      result = 0x65737341646E7566;
      break;
    case 18:
      result = 0x65746143646E7566;
      break;
    case 19:
      result = 0x75636F46646E7566;
      break;
    case 20:
      result = 0x6863694E646E7566;
      break;
    case 21:
      result = 0x69676552646E7566;
      break;
    case 22:
      result = 0x48706F54646E7566;
      break;
    case 23:
      result = 0x74636553646E7566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAAE0618@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAAE4710(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAAE0658(uint64_t a1)
{
  v2 = sub_1DAAE3C38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE0694(uint64_t a1)
{
  v2 = sub_1DAAE3C38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QuoteDetail.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1DAAE40C0(0, &qword_1EE11F590, sub_1DAAE3C38, &type metadata for QuoteDetail.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE3C38();
  sub_1DACBA304();
  LOBYTE(v16) = 0;
  sub_1DACBA044();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1DACBA044();
    LOBYTE(v16) = 2;
    sub_1DACBA044();
    LOBYTE(v16) = 3;
    sub_1DACBA044();
    LOBYTE(v16) = 4;
    sub_1DACBA044();
    LOBYTE(v16) = 5;
    sub_1DACBA044();
    LOBYTE(v16) = 6;
    sub_1DACBA064();
    LOBYTE(v16) = 7;
    sub_1DACBA064();
    LOBYTE(v16) = 8;
    sub_1DACBA044();
    LOBYTE(v16) = 9;
    sub_1DACBA044();
    LOBYTE(v16) = 10;
    sub_1DACBA044();
    v11 = type metadata accessor for QuoteDetail(0);
    LOBYTE(v16) = 11;
    sub_1DACB7CC4();
    sub_1DAA5D490(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DACBA074();
    LOBYTE(v16) = 12;
    sub_1DACBA074();
    LOBYTE(v16) = 13;
    sub_1DACBA024();
    v14 = v11[18];
    LOBYTE(v16) = 14;
    v12 = sub_1DACB7AB4();
    v13[1] = sub_1DAA5D490(&qword_1EE1252B8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    v14 = v12;
    sub_1DACBA074();
    LOBYTE(v16) = 15;
    sub_1DACBA074();
    v14 = v11[20];
    LOBYTE(v16) = 16;
    sub_1DACB7F54();
    sub_1DAA5D490(&qword_1EE123A00, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1DACBA074();
    LOBYTE(v16) = 17;
    sub_1DACBA024();
    LOBYTE(v16) = 18;
    sub_1DACBA024();
    LOBYTE(v16) = 19;
    sub_1DACBA024();
    LOBYTE(v16) = 20;
    sub_1DACBA024();
    LOBYTE(v16) = 21;
    sub_1DACBA024();
    v16 = *(v3 + v11[26]);
    v15 = 22;
    sub_1DAA49984(0, &qword_1EE11FBA0, &type metadata for FundHolding, MEMORY[0x1E69E62F8]);
    sub_1DAAE3D90(&qword_1EE11FB98, sub_1DAAE3C8C, MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
    v16 = *(v3 + v11[27]);
    v15 = 23;
    sub_1DAA49984(0, &qword_1EE11FBB8, &type metadata for FundSector, MEMORY[0x1E69E62F8]);
    sub_1DAAE3E74(&qword_1EE11FBB0, sub_1DAAE3CE0, MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
    LOBYTE(v16) = 24;
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t QuoteDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v94 = sub_1DACB7CC4();
  v89 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v86 - v5;
  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v9;
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  sub_1DAAE40C0(0, &qword_1EE11F678, sub_1DAAE3C38, &type metadata for QuoteDetail.CodingKeys, MEMORY[0x1E69E6F48]);
  v98 = v16;
  v96 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v19 = type metadata accessor for QuoteDetail(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1DAAE3C38();
  v97 = v18;
  v23 = v100;
  sub_1DACBA2F4();
  if (v23)
  {
    v100 = v23;
    return __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v24 = v95;
  v86 = v13;
  v87 = v15;
  v88 = v19;
  v25 = v21;
  LOBYTE(v102) = 0;
  *v21 = sub_1DACB9F54();
  v21[8] = v26 & 1;
  LOBYTE(v102) = 1;
  *(v21 + 2) = sub_1DACB9F54();
  v21[24] = v27 & 1;
  LOBYTE(v102) = 2;
  *(v21 + 4) = sub_1DACB9F54();
  v21[40] = v28 & 1;
  LOBYTE(v102) = 3;
  *(v21 + 6) = sub_1DACB9F54();
  v21[56] = v29 & 1;
  LOBYTE(v102) = 4;
  *(v21 + 8) = sub_1DACB9F54();
  v21[72] = v30 & 1;
  LOBYTE(v102) = 5;
  *(v21 + 10) = sub_1DACB9F54();
  v21[88] = v31 & 1;
  LOBYTE(v102) = 6;
  *(v21 + 12) = sub_1DACB9F74();
  v21[104] = v32 & 1;
  LOBYTE(v102) = 7;
  *(v21 + 14) = sub_1DACB9F74();
  v21[120] = v34 & 1;
  LOBYTE(v102) = 8;
  v35 = sub_1DACB9F54();
  v100 = 0;
  *(v21 + 16) = v35;
  v21[136] = v36 & 1;
  LOBYTE(v102) = 9;
  v37 = v100;
  v38 = sub_1DACB9F54();
  v100 = v37;
  if (v37 || (*(v21 + 18) = v38, v21[152] = v39 & 1, LOBYTE(v102) = 10, v40 = v100, v41 = sub_1DACB9F54(), (v100 = v40) != 0) || (*(v21 + 20) = v41, v21[168] = v42 & 1, LOBYTE(v102) = 11, sub_1DAA5D490(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]), v43 = v100, sub_1DACB9F84(), (v100 = v43) != 0))
  {
    (*(v96 + 8))(v97, v98);
    return __swift_destroy_boxed_opaque_existential_1(v99);
  }

  sub_1DAAE02A4(v87, &v21[v88[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
  LOBYTE(v102) = 12;
  v44 = v100;
  sub_1DACB9F84();
  v87 = v44;
  if (v44)
  {
    (*(v96 + 8))(v97, v98);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    LODWORD(v97) = 0;
    LODWORD(v98) = 0;
    v52 = 0;
    v100 = v87;
  }

  else
  {
    sub_1DAAE02A4(v86, &v21[v88[16]], &qword_1EE125280, MEMORY[0x1E6969530]);
    LOBYTE(v102) = 13;
    v53 = v87;
    v54 = sub_1DACB9F34();
    v100 = v53;
    if (v53)
    {
      (*(v96 + 8))(v97, v98);
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      LODWORD(v97) = 0;
      LODWORD(v98) = 0;
      v52 = 0;
    }

    else
    {
      v56 = &v21[v88[17]];
      *v56 = v54;
      v56[1] = v55;
      sub_1DACB7AB4();
      LOBYTE(v102) = 14;
      sub_1DAA5D490(&qword_1EE1252A8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
      v57 = v100;
      sub_1DACB9F84();
      v100 = v57;
      if (v57)
      {
        (*(v96 + 8))(v97, v98);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        LODWORD(v97) = 0;
        LODWORD(v98) = 0;
        v52 = 0;
        v45 = 1;
      }

      else
      {
        sub_1DAAE02A4(v93, &v21[v88[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
        LOBYTE(v102) = 15;
        v58 = v100;
        sub_1DACB9F84();
        v100 = v58;
        if (v58)
        {
          (*(v96 + 8))(v97, v98);
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          LODWORD(v97) = 0;
          LODWORD(v98) = 0;
          v52 = 0;
          v45 = 1;
          v46 = 1;
        }

        else
        {
          sub_1DAAE02A4(v92, &v21[v88[19]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
          sub_1DACB7F54();
          LOBYTE(v102) = 16;
          sub_1DAA5D490(&qword_1EE1239F8, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
          v59 = v100;
          sub_1DACB9F84();
          v100 = v59;
          if (v59)
          {
            (*(v96 + 8))(v97, v98);
            v48 = 0;
            v49 = 0;
            v50 = 0;
            v51 = 0;
            LODWORD(v97) = 0;
            LODWORD(v98) = 0;
            v52 = 0;
            v45 = 1;
            v46 = 1;
            v47 = 1;
          }

          else
          {
            sub_1DAAE02A4(v24, &v21[v88[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
            LOBYTE(v102) = 17;
            v60 = v100;
            v61 = sub_1DACB9F34();
            v100 = v60;
            if (v60)
            {
              (*(v96 + 8))(v97, v98);
              v49 = 0;
              v50 = 0;
              v51 = 0;
              LODWORD(v97) = 0;
              LODWORD(v98) = 0;
              v52 = 0;
              v45 = 1;
              v46 = 1;
              v47 = 1;
              v48 = 1;
            }

            else
            {
              v63 = &v21[v88[21]];
              *v63 = v61;
              v63[1] = v62;
              LOBYTE(v102) = 18;
              v64 = v100;
              v65 = sub_1DACB9F34();
              v100 = v64;
              if (v64)
              {
                (*(v96 + 8))(v97, v98);
                v50 = 0;
                v51 = 0;
                LODWORD(v97) = 0;
                LODWORD(v98) = 0;
                v52 = 0;
                v45 = 1;
                v46 = 1;
                v47 = 1;
                v48 = 1;
                v49 = 1;
              }

              else
              {
                v67 = &v21[v88[22]];
                *v67 = v65;
                v67[1] = v66;
                LOBYTE(v102) = 19;
                v68 = v100;
                v69 = sub_1DACB9F34();
                v100 = v68;
                if (v68)
                {
                  (*(v96 + 8))(v97, v98);
                  v51 = 0;
                  LODWORD(v97) = 0;
                  LODWORD(v98) = 0;
                  v52 = 0;
                  v45 = 1;
                  v46 = 1;
                  v47 = 1;
                  v48 = 1;
                  v49 = 1;
                  v50 = 1;
                }

                else
                {
                  v71 = &v21[v88[23]];
                  *v71 = v69;
                  v71[1] = v70;
                  LOBYTE(v102) = 20;
                  v72 = v100;
                  v73 = sub_1DACB9F34();
                  v100 = v72;
                  if (v72)
                  {
                    (*(v96 + 8))(v97, v98);
                    LODWORD(v97) = 0;
                    LODWORD(v98) = 0;
                    v52 = 0;
                    v45 = 1;
                    v46 = 1;
                    v47 = 1;
                    v48 = 1;
                    v49 = 1;
                    v50 = 1;
                    v51 = 1;
                  }

                  else
                  {
                    v75 = &v21[v88[24]];
                    *v75 = v73;
                    v75[1] = v74;
                    LOBYTE(v102) = 21;
                    v76 = v100;
                    v77 = sub_1DACB9F34();
                    v100 = v76;
                    if (v76)
                    {
                      (*(v96 + 8))(v97, v98);
                      LODWORD(v98) = 0;
                      v52 = 0;
                      v45 = 1;
                      v46 = 1;
                      v47 = 1;
                      v48 = 1;
                      v49 = 1;
                      v50 = 1;
                      v51 = 1;
                      LODWORD(v97) = 1;
                    }

                    else
                    {
                      v79 = &v21[v88[25]];
                      *v79 = v77;
                      v79[1] = v78;
                      sub_1DAA49984(0, &qword_1EE11FBA0, &type metadata for FundHolding, MEMORY[0x1E69E62F8]);
                      v101 = 22;
                      sub_1DAAE3D90(&qword_1EE11FB90, sub_1DAAE3E20, MEMORY[0x1E69E6330]);
                      v80 = v100;
                      sub_1DACB9FE4();
                      v100 = v80;
                      if (v80)
                      {
                        (*(v96 + 8))(v97, v98);
                        v52 = 0;
                        v45 = 1;
                        v46 = 1;
                        v47 = 1;
                        v48 = 1;
                        v49 = 1;
                        v50 = 1;
                        v51 = 1;
                        LODWORD(v97) = 1;
                        LODWORD(v98) = 1;
                      }

                      else
                      {
                        *&v21[v88[26]] = v102;
                        sub_1DAA49984(0, &qword_1EE11FBB8, &type metadata for FundSector, MEMORY[0x1E69E62F8]);
                        v101 = 23;
                        sub_1DAAE3E74(&qword_1EE11FBA8, sub_1DAAE3F04, MEMORY[0x1E69E6330]);
                        v81 = v100;
                        sub_1DACB9FE4();
                        v100 = v81;
                        if (!v81)
                        {
                          *&v21[v88[27]] = v102;
                          LOBYTE(v102) = 24;
                          v82 = v100;
                          sub_1DACB9FE4();
                          v100 = v82;
                          if (!v82)
                          {
                            (*(v96 + 8))(v97, v98);
                            (*(v89 + 32))(&v21[v88[28]], v90, v94);
                            sub_1DAAE3F58(v21, v91);
                            __swift_destroy_boxed_opaque_existential_1(v99);
                            return sub_1DAAE3FBC(v21);
                          }

                          (*(v96 + 8))(v97, v98);
                          __swift_destroy_boxed_opaque_existential_1(v99);
                          v83 = v88;
                          v84 = MEMORY[0x1E6969530];
                          sub_1DAAE3D34(&v25[v88[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
                          sub_1DAAE3D34(&v25[v83[16]], &qword_1EE125280, v84);

                          v85 = MEMORY[0x1E6968FB0];
                          sub_1DAAE3D34(&v25[v83[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
                          sub_1DAAE3D34(&v25[v83[19]], &qword_1EE1263D0, v85);
                          sub_1DAAE3D34(&v25[v83[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
                        }

                        (*(v96 + 8))(v97, v98);
                        v45 = 1;
                        v46 = 1;
                        v47 = 1;
                        v48 = 1;
                        v49 = 1;
                        v50 = 1;
                        v51 = 1;
                        LODWORD(v97) = 1;
                        LODWORD(v98) = 1;
                        v52 = 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v99);
  result = sub_1DAAE3D34(&v25[v88[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
  if (v87)
  {
    if (v45)
    {
      goto LABEL_36;
    }
  }

  else
  {
    result = sub_1DAAE3D34(&v25[v88[16]], &qword_1EE125280, MEMORY[0x1E6969530]);
    if (v45)
    {
LABEL_36:

      if ((v46 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_48;
    }
  }

  if (!v46)
  {
LABEL_37:
    if (v47)
    {
      goto LABEL_38;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = sub_1DAAE3D34(&v25[v88[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v47)
  {
LABEL_38:
    result = sub_1DAAE3D34(&v25[v88[19]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    if ((v48 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_50;
  }

LABEL_49:
  if (!v48)
  {
LABEL_39:
    if (v49)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_1DAAE3D34(&v25[v88[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  if (v49)
  {
LABEL_40:

    if ((v50 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_52;
  }

LABEL_51:
  if (!v50)
  {
LABEL_41:
    if (v51)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

LABEL_52:

  if (v51)
  {
LABEL_42:

    if ((v97 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v97)
  {
LABEL_43:
    if (v98)
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

LABEL_54:

  if ((v98 & 1) == 0)
  {
LABEL_55:
    if (!v52)
    {
      return result;
    }
  }

LABEL_44:

  if (v52)
  {
  }

  return result;
}

uint64_t sub_1DAAE1FF0()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_1DAAE202C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACE3B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAAE210C(uint64_t a1)
{
  v2 = sub_1DAAE4018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE2148(uint64_t a1)
{
  v2 = sub_1DAAE4018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FundSector.sector.getter()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

BOOL sub_1DAAE2290(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DACBA174();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DAAE22F0()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x726F74636573;
  }
}

uint64_t sub_1DAAE232C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F74636573 && a2 == 0xE600000000000000;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACE3B10 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAAE240C(uint64_t a1)
{
  v2 = sub_1DAAE406C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE2448(uint64_t a1)
{
  v2 = sub_1DAAE406C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAE24D4(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  v15 = a5;
  sub_1DAAE40C0(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v14 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1DACBA304();
  v18 = 0;
  v12 = v16;
  sub_1DACBA094();
  if (!v12)
  {
    v17 = 1;
    sub_1DACBA0B4();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DAAE26AC@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v24 = a6;
  sub_1DAAE40C0(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1DACBA2F4();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v23;
  v13 = v24;
  v26 = 0;
  v15 = sub_1DACB9FA4();
  v17 = v16;
  v18 = v15;
  v25 = 1;
  sub_1DACB9FC4();
  v20 = v19;
  (*(v14 + 8))(v12, v10);
  *v13 = v18;
  v13[1] = v17;
  v13[2] = v20;
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s10StocksCore11QuoteDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v145 = sub_1DACB7F54();
  v143 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v140 = &v133[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1E6969BC0];
  sub_1DAA49A38(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v133[-v7];
  sub_1DAAE4F1C(0, &qword_1EE11F0C8, &qword_1EE1239E8, v5);
  v141 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v133[-v9];
  v152 = sub_1DACB7AB4();
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v144 = &v133[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1E6968FB0];
  sub_1DAA49A38(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v146 = &v133[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v133[-v15];
  sub_1DAAE4F1C(0, &qword_1EE1252A0, &qword_1EE1263D0, v11);
  v149 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v148 = &v133[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v133[-v20];
  v21 = sub_1DACB7CC4();
  v153 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v133[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1E6969530];
  sub_1DAA49A38(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v133[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v133[-v29];
  sub_1DAAE4F1C(0, &qword_1EE123A28, &qword_1EE125280, v24);
  v32 = v31;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v133[-v36];
  v38 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_81;
    }
  }

  v39 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v39 = 1;
    }

    if (v39)
    {
      goto LABEL_81;
    }
  }

  v40 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v40 = 1;
    }

    if (v40)
    {
      goto LABEL_81;
    }
  }

  v41 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_81;
    }
  }

  v42 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v42 = 1;
    }

    if (v42)
    {
      goto LABEL_81;
    }
  }

  v43 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 80) != *(a2 + 80))
    {
      v43 = 1;
    }

    if (v43)
    {
      goto LABEL_81;
    }
  }

  v44 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 96) != *(a2 + 96))
    {
      v44 = 1;
    }

    if (v44)
    {
      goto LABEL_81;
    }
  }

  v45 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (!*(a2 + 120))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 112) != *(a2 + 112))
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_81;
    }
  }

  v46 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (!*(a2 + 136))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 128) != *(a2 + 128))
    {
      v46 = 1;
    }

    if (v46)
    {
      goto LABEL_81;
    }
  }

  v47 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!*(a2 + 152))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 144) != *(a2 + 144))
    {
      v47 = 1;
    }

    if (v47)
    {
      goto LABEL_81;
    }
  }

  v48 = *(a2 + 168);
  if (*(a1 + 168))
  {
    if (!*(a2 + 168))
    {
      goto LABEL_81;
    }
  }

  else
  {
    if (*(a1 + 160) != *(a2 + 160))
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_81;
    }
  }

  v49 = type metadata accessor for QuoteDetail(0);
  v50 = *(v32 + 48);
  v138 = *(v49 + 60);
  v139 = v50;
  v136 = v49;
  v137 = MEMORY[0x1E6969530];
  sub_1DAA89AC0(a1 + v138, v37, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAA89AC0(a2 + v138, &v139[v37], &qword_1EE125280, v137);
  v137 = *(v153 + 48);
  v138 = v153 + 48;
  if ((v137)(v37, 1, v21) == 1)
  {
    if ((v137)(&v139[v37], 1, v21) == 1)
    {
      sub_1DAAE3D34(v37, &qword_1EE125280, MEMORY[0x1E6969530]);
      goto LABEL_74;
    }

LABEL_72:
    v51 = &qword_1EE123A28;
    v52 = &qword_1EE125280;
    v53 = MEMORY[0x1E6969530];
    v54 = v37;
LABEL_80:
    sub_1DAAE4F80(v54, v51, v52, v53);
    goto LABEL_81;
  }

  sub_1DAA89AC0(v37, v30, &qword_1EE125280, MEMORY[0x1E6969530]);
  if ((v137)(&v139[v37], 1, v21) == 1)
  {
    (*(v153 + 8))(v30, v21);
    goto LABEL_72;
  }

  (*(v153 + 32))(v23, &v139[v37], v21);
  sub_1DAA5D490(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v134 = sub_1DACB9264();
  v55 = *(v153 + 8);
  v135 = v153 + 8;
  v139 = v55;
  (v55)(v23, v21);
  (v139)(v30, v21);
  sub_1DAAE3D34(v37, &qword_1EE125280, MEMORY[0x1E6969530]);
  if ((v134 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_74:
  v56 = v136[16];
  v57 = *(v32 + 48);
  v58 = MEMORY[0x1E6969530];
  sub_1DAA89AC0(a1 + v56, v35, &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAA89AC0(a2 + v56, &v57[v35], &qword_1EE125280, v58);
  v59 = v137;
  if ((v137)(v35, 1, v21) == 1)
  {
    if ((v59)(&v57[v35], 1, v21) == 1)
    {
      sub_1DAAE3D34(v35, &qword_1EE125280, MEMORY[0x1E6969530]);
      goto LABEL_84;
    }

    goto LABEL_79;
  }

  sub_1DAA89AC0(v35, v28, &qword_1EE125280, MEMORY[0x1E6969530]);
  v139 = v57;
  if ((v59)(&v57[v35], 1, v21) == 1)
  {
    (*(v153 + 8))(v28, v21);
LABEL_79:
    v51 = &qword_1EE123A28;
    v52 = &qword_1EE125280;
    v53 = MEMORY[0x1E6969530];
    v54 = v35;
    goto LABEL_80;
  }

  v62 = v153;
  (*(v153 + 32))(v23, &v139[v35], v21);
  sub_1DAA5D490(&qword_1EE123A40, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v63 = sub_1DACB9264();
  v64 = *(v62 + 8);
  v64(v23, v21);
  v64(v28, v21);
  sub_1DAAE3D34(v35, &qword_1EE125280, MEMORY[0x1E6969530]);
  if ((v63 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_84:
  v65 = v136[17];
  v66 = (a1 + v65);
  v67 = *(a1 + v65 + 8);
  v68 = (a2 + v65);
  v69 = v68[1];
  if (v67)
  {
    if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v69)
  {
    goto LABEL_81;
  }

  v70 = v136[18];
  v71 = *(v149 + 48);
  v72 = MEMORY[0x1E6968FB0];
  v73 = v151;
  sub_1DAA89AC0(a1 + v70, v151, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAA89AC0(a2 + v70, &v73[v71], &qword_1EE1263D0, v72);
  v74 = *(v150 + 48);
  if (v74(v73, 1, v152) == 1)
  {
    if (v74(&v151[v71], 1, v152) == 1)
    {
      sub_1DAAE3D34(v151, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v75 = v151;
  sub_1DAA89AC0(v151, v16, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v74(&v75[v71], 1, v152) == 1)
  {
    (*(v150 + 8))(v16, v152);
LABEL_96:
    v51 = &qword_1EE1252A0;
    v52 = &qword_1EE1263D0;
    v53 = MEMORY[0x1E6968FB0];
    v54 = v151;
    goto LABEL_80;
  }

  v76 = v150;
  v77 = v144;
  v78 = v152;
  (*(v150 + 32))(v144, &v151[v71], v152);
  sub_1DAA5D490(&qword_1EE1252B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v79 = sub_1DACB9264();
  v80 = *(v76 + 8);
  v80(v77, v78);
  v80(v16, v78);
  sub_1DAAE3D34(v151, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if ((v79 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_98:
  v81 = v136[19];
  v82 = v148;
  v83 = *(v149 + 48);
  v84 = MEMORY[0x1E6968FB0];
  sub_1DAA89AC0(a1 + v81, v148, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAA89AC0(a2 + v81, &v82[v83], &qword_1EE1263D0, v84);
  if (v74(v82, 1, v152) == 1)
  {
    if (v74(&v148[v83], 1, v152) == 1)
    {
      sub_1DAAE3D34(v148, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      goto LABEL_105;
    }

    goto LABEL_103;
  }

  v85 = v148;
  sub_1DAA89AC0(v148, v146, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v74(&v85[v83], 1, v152) == 1)
  {
    (*(v150 + 8))(v146, v152);
LABEL_103:
    v51 = &qword_1EE1252A0;
    v52 = &qword_1EE1263D0;
    v53 = MEMORY[0x1E6968FB0];
    v54 = v148;
    goto LABEL_80;
  }

  v86 = v150;
  v87 = v148;
  v88 = &v148[v83];
  v89 = v144;
  v90 = v152;
  (*(v150 + 32))(v144, v88, v152);
  sub_1DAA5D490(&qword_1EE1252B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v91 = v146;
  v92 = sub_1DACB9264();
  v93 = *(v86 + 8);
  v93(v89, v90);
  v93(v91, v90);
  sub_1DAAE3D34(v87, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if ((v92 & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_105:
  v94 = v136[20];
  v95 = *(v141 + 48);
  v96 = MEMORY[0x1E6969BC0];
  v97 = v147;
  sub_1DAA89AC0(a1 + v94, v147, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  sub_1DAA89AC0(a2 + v94, &v97[v95], &qword_1EE1239E8, v96);
  v98 = *(v143 + 48);
  if (v98(v97, 1, v145) != 1)
  {
    v99 = v147;
    sub_1DAA89AC0(v147, v142, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    if (v98(&v99[v95], 1, v145) != 1)
    {
      v100 = v143;
      v101 = v147;
      v102 = &v147[v95];
      v103 = v140;
      v104 = v145;
      (*(v143 + 32))(v140, v102, v145);
      sub_1DAA5D490(&qword_1ECBE6B50, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
      v105 = v142;
      v106 = sub_1DACB9264();
      v107 = *(v100 + 8);
      v107(v103, v104);
      v107(v105, v104);
      sub_1DAAE3D34(v101, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
      if ((v106 & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_112;
    }

    (*(v143 + 8))(v142, v145);
    goto LABEL_110;
  }

  if (v98(&v147[v95], 1, v145) != 1)
  {
LABEL_110:
    v51 = &qword_1EE11F0C8;
    v52 = &qword_1EE1239E8;
    v53 = MEMORY[0x1E6969BC0];
    v54 = v147;
    goto LABEL_80;
  }

  sub_1DAAE3D34(v147, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
LABEL_112:
  v108 = v136[21];
  v109 = (a1 + v108);
  v110 = *(a1 + v108 + 8);
  v111 = (a2 + v108);
  v112 = v111[1];
  if (v110)
  {
    if (!v112 || (*v109 != *v111 || v110 != v112) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v112)
  {
    goto LABEL_81;
  }

  v113 = v136[22];
  v114 = (a1 + v113);
  v115 = *(a1 + v113 + 8);
  v116 = (a2 + v113);
  v117 = v116[1];
  if (v115)
  {
    if (!v117 || (*v114 != *v116 || v115 != v117) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v117)
  {
    goto LABEL_81;
  }

  v118 = v136[23];
  v119 = (a1 + v118);
  v120 = *(a1 + v118 + 8);
  v121 = (a2 + v118);
  v122 = v121[1];
  if (v120)
  {
    if (!v122 || (*v119 != *v121 || v120 != v122) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v122)
  {
    goto LABEL_81;
  }

  v123 = v136[24];
  v124 = (a1 + v123);
  v125 = *(a1 + v123 + 8);
  v126 = (a2 + v123);
  v127 = v126[1];
  if (v125)
  {
    if (!v127 || (*v124 != *v126 || v125 != v127) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v127)
  {
    goto LABEL_81;
  }

  v128 = v136[25];
  v129 = (a1 + v128);
  v130 = *(a1 + v128 + 8);
  v131 = (a2 + v128);
  v132 = v131[1];
  if (v130)
  {
    if (!v132 || (*v129 != *v131 || v130 != v132) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (v132)
  {
    goto LABEL_81;
  }

  if (sub_1DAC3D734() & 1) != 0 && (sub_1DAC3D734())
  {
    v60 = sub_1DACB7C64();
    return v60 & 1;
  }

LABEL_81:
  v60 = 0;
  return v60 & 1;
}

unint64_t sub_1DAAE3C38()
{
  result = qword_1EE123900;
  if (!qword_1EE123900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123900);
  }

  return result;
}

unint64_t sub_1DAAE3C8C()
{
  result = qword_1EE123910;
  if (!qword_1EE123910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123910);
  }

  return result;
}

unint64_t sub_1DAAE3CE0()
{
  result = qword_1EE123920;
  if (!qword_1EE123920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123920);
  }

  return result;
}

uint64_t sub_1DAAE3D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA49A38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAAE3D90(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49984(255, &qword_1EE11FBA0, &type metadata for FundHolding, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAE3E20()
{
  result = qword_1EE123908;
  if (!qword_1EE123908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123908);
  }

  return result;
}

uint64_t sub_1DAAE3E74(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA49984(255, &qword_1EE11FBB8, &type metadata for FundSector, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAE3F04()
{
  result = qword_1EE123918;
  if (!qword_1EE123918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123918);
  }

  return result;
}

uint64_t sub_1DAAE3F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteDetail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE3FBC(uint64_t a1)
{
  v2 = type metadata accessor for QuoteDetail(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAAE4018()
{
  result = qword_1ECBE6AF0;
  if (!qword_1ECBE6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6AF0);
  }

  return result;
}

unint64_t sub_1DAAE406C()
{
  result = qword_1ECBE6B08;
  if (!qword_1ECBE6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B08);
  }

  return result;
}

void sub_1DAAE40C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for SDSNewsResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SDSNewsResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for QuoteDetail.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuoteDetail.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAAE43FC()
{
  result = qword_1ECBE6B18;
  if (!qword_1ECBE6B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B18);
  }

  return result;
}

unint64_t sub_1DAAE4454()
{
  result = qword_1ECBE6B20;
  if (!qword_1ECBE6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B20);
  }

  return result;
}

unint64_t sub_1DAAE44AC()
{
  result = qword_1ECBE6B28;
  if (!qword_1ECBE6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B28);
  }

  return result;
}

unint64_t sub_1DAAE4504()
{
  result = qword_1ECBE6B30;
  if (!qword_1ECBE6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B30);
  }

  return result;
}

unint64_t sub_1DAAE455C()
{
  result = qword_1ECBE6B38;
  if (!qword_1ECBE6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B38);
  }

  return result;
}

unint64_t sub_1DAAE45B4()
{
  result = qword_1ECBE6B40;
  if (!qword_1ECBE6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B40);
  }

  return result;
}

unint64_t sub_1DAAE460C()
{
  result = qword_1ECBE6B48;
  if (!qword_1ECBE6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B48);
  }

  return result;
}

unint64_t sub_1DAAE4664()
{
  result = qword_1EE1238F0;
  if (!qword_1EE1238F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1238F0);
  }

  return result;
}

unint64_t sub_1DAAE46BC()
{
  result = qword_1EE1238F8;
  if (!qword_1EE1238F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1238F8);
  }

  return result;
}

uint64_t sub_1DAAE4710(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506E65704F796164 && a2 == 0xEC00000065636972;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250776F4C796164 && a2 == 0xEB00000000656369 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5068676948796164 && a2 == 0xEC00000065636972 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x50776F4C72616579 && a2 == 0xEC00000065636972 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6867694872616579 && a2 == 0xED00006563697250 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E656469766964 && a2 == 0xED0000646C656959 || (sub_1DACBA174() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5665676172657661 && a2 == 0xED0000656D756C6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DACE1B20 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1635018082 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1A60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE1B60 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73676E696E726165 && a2 == 0xEF65746144646E45 || (sub_1DACBA174() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_1DACBA174() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52 || (sub_1DACBA174() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DACE1AD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL || (sub_1DACBA174() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x65737341646E7566 && a2 == 0xEE007373616C4374 || (sub_1DACBA174() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65746143646E7566 && a2 == 0xEC00000079726F67 || (sub_1DACBA174() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x75636F46646E7566 && a2 == 0xE900000000000073 || (sub_1DACBA174() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6863694E646E7566 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x69676552646E7566 && a2 == 0xEA00000000006E6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x48706F54646E7566 && a2 == 0xEF73676E69646C6FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x74636553646E7566 && a2 == 0xEB0000000073726FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE3AF0 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

void sub_1DAAE4F1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1DAA49A38(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAAE4F80(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAAE4F1C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t type metadata accessor for YahooChartOperation(uint64_t a1)
{
  result = qword_1EE126408;
  if (!qword_1EE126408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAE5060(uint64_t a1)
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

uint64_t sub_1DAAE5154()
{
  sub_1DACBA284();
  MEMORY[0x1E1277D70](0);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAAE5198(uint64_t a1)
{
  sub_1DACBA284();
  MEMORY[0x1E1277D70](0);
  return sub_1DACBA2C4();
}

void sub_1DAAE51D8(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v4 = sub_1DACB8204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7AB4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAE6300(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC2610;
  *(inited + 32) = 0x72656B636974;
  *(inited + 40) = 0xE600000000000000;
  v15 = *&v2[qword_1EE1263E0 + 8];
  *(inited + 48) = *&v2[qword_1EE1263E0];
  *(inited + 56) = v15;
  *(inited + 64) = 0x65676E6172;
  *(inited + 72) = 0xE500000000000000;
  v16 = v2[qword_1EE1263E8];
  v69 = a1;
  v76 = v4;
  v68 = v5;
  v75 = v7;
  v74 = v8;
  v73 = v11;
  v67 = v12;
  v66 = qword_1EE1263E8;
  if (v16 <= 4)
  {
    if (v16 <= 1)
    {
      if (v16)
      {
        v17 = 0xE200000000000000;
        v18 = 25653;
      }

      else
      {
        v17 = 0xE200000000000000;
        v18 = 25649;
      }
    }

    else if (v16 == 2)
    {
      v17 = 0xE200000000000000;
      v18 = 27953;
    }

    else if (v16 == 3)
    {
      v17 = 0xE200000000000000;
      v18 = 27955;
    }

    else
    {
      v17 = 0xE200000000000000;
      v18 = 27958;
    }
  }

  else if (v16 > 7)
  {
    if (v16 == 8)
    {
      v17 = 0xE200000000000000;
      v18 = 31029;
    }

    else if (v16 == 9)
    {
      v17 = 0xE300000000000000;
      v18 = 7942193;
    }

    else
    {
      v17 = 0xE300000000000000;
      v18 = 7889261;
    }
  }

  else if (v16 == 5)
  {
    v17 = 0xE300000000000000;
    v18 = 6583417;
  }

  else if (v16 == 6)
  {
    v17 = 0xE200000000000000;
    v18 = 31025;
  }

  else
  {
    v17 = 0xE200000000000000;
    v18 = 31026;
  }

  v19 = 0x73752D6E65;
  *(inited + 80) = v18;
  *(inited + 88) = v17;
  *(inited + 96) = 1701869940;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = 0x65746F7571;
  *(inited + 120) = 0xE500000000000000;
  v20 = inited;
  sub_1DACB71E4();
  v64 = sub_1DAA4BDD8(v20);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v21 = __swift_project_boxed_opaque_existential_1(&v2[qword_1EE1263F8], *&v2[qword_1EE1263F8 + 24]);
  v22 = objc_opt_self();
  v23 = [v22 sharedPreferences];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 stocksLanguageCode];
    if (v25)
    {
      v26 = v25;
      v19 = sub_1DACB9324();
      v65 = v27;
    }

    else
    {
      v65 = 0xE500000000000000;
    }

    v28 = [v24 stocksCountryCode];
    if (v28)
    {
      v29 = v28;
      v62 = sub_1DACB9324();
      v63 = v30;

      goto LABEL_30;
    }
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  v63 = 0xE200000000000000;
  v62 = 21333;
LABEL_30:
  v31 = qword_1ECBE6B58;
  v32 = qword_1EE126400;
  v33 = *v21;
  v34 = [v22 sharedPreferences];
  if (v34)
  {
    v35 = v34;
    v61 = v19;
    v36 = [v34 stocksYQLBaseURL];

    if (v36)
    {
      v37 = v71;
      sub_1DACB7A44();

      sub_1DAA4D678(v33 + 16, v78);
      v57 = *(v9 + 16);
      v57(v72, &v2[v31], v74);
      v38 = v68;
      v60 = v2;
      v59 = *(v68 + 16);
      v59(v75, &v2[v32], v76);
      sub_1DAAE6240(0);
      v58 = v39;
      v40 = objc_allocWithZone(v39);
      v41 = MEMORY[0x1E69E7D40];
      *(v40 + *((*MEMORY[0x1E69E7D40] & *v40) + qword_1EE13E4B0 + 16)) = 1;
      v42 = v67;
      (*(v67 + 16))(v40 + *((*v41 & *v40) + qword_1EE13E4B0 + 24), v37, v73);
      v43 = v40 + *((*v41 & *v40) + qword_1EE13E4B0 + 32);
      strcpy(v43, "/applewf/chart");
      v43[15] = -18;
      *(v40 + *((*v41 & *v40) + qword_1EE13E4B0 + 40)) = v64;
      v44 = (v40 + *((*v41 & *v40) + qword_1EE13E4B0 + 48));
      v45 = v65;
      *v44 = v61;
      v44[1] = v45;
      v46 = v63;
      v44[2] = v62;
      v44[3] = v46;
      sub_1DAA4D678(v78, v40 + *((*v41 & *v40) + qword_1EE13E4B0 + 56));
      v47 = v72;
      v48 = v74;
      v57(v40 + *((*v41 & *v40) + qword_1EE13E4B0 + 64), v72, v74);
      v49 = v75;
      v50 = v76;
      v59(v40 + *((*v41 & *v40) + qword_1EE13E4B0 + 72), v75, v76);
      v77.receiver = v40;
      v77.super_class = v58;
      v51 = objc_msgSendSuper2(&v77, sel_init);
      (*(v38 + 8))(v49, v50);
      (*(v9 + 8))(v47, v48);
      __swift_destroy_boxed_opaque_existential_1(v78);
      (*(v42 + 8))(v71, v73);
      v52 = v60;
      LOBYTE(v40) = *(v60 + v66);
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v40;
      v54 = v70;
      *(v53 + 32) = v69;
      *(v53 + 40) = v54;
      v55 = v51;
      v56 = v52;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v55 start];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DAAE5BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v34 = a4;
  sub_1DAAE6300(0, &qword_1EE11D458, type metadata accessor for Chart, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - v10);
  sub_1DAAE6300(0, qword_1EE120360, type metadata accessor for Chart, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for Chart(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 32))
  {
    v19 = *a1;
    v20 = sub_1DACB9904();
    sub_1DAAE6300(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DACC1D20;
    swift_getErrorValue();
    v22 = sub_1DACBA224();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1DAA443C8();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_1DAA41DCC();
    v25 = sub_1DACB9AD4();
    sub_1DACB8C64("failed to retrieve chart with error: %{public}@", 47, 2, &dword_1DAA3F000, v25, v20, v21);

    *v11 = v19;
    swift_storeEnumTagMultiPayload();
    v26 = v19;
    v27 = v11;
LABEL_5:
    v34(v27);
    return sub_1DAAE6364(v11, &qword_1EE11D458, MEMORY[0x1E69D6AF8]);
  }

  v33 = a5;
  v28 = *(a1 + 8);
  __swift_project_boxed_opaque_existential_1((a2 + qword_1EE1263F0), *(a2 + qword_1EE1263F0 + 24));
  v35 = sub_1DAB681FC(MEMORY[0x1E69E7CC0]);
  sub_1DACB71F4();
  sub_1DABD0578(v28, a3, &v35);

  v29 = sub_1DACB71E4();
  sub_1DAB859D4(v29, v14);
  swift_bridgeObjectRelease_n();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1DAAE6364(v14, qword_1EE120360, MEMORY[0x1E69E6720]);
    v30 = sub_1DACB9904();
    sub_1DAA41DCC();
    v31 = sub_1DACB9AD4();
    sub_1DACB8C64("failed to generate chart model from yahoo response", 50, 2, &dword_1DAA3F000, v31, v30, MEMORY[0x1E69E7CC0]);

    sub_1DAAE63D8();
    *v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v27 = v11;
    goto LABEL_5;
  }

  sub_1DAA86044(v14, v18);
  sub_1DAAE642C(v18, v11);
  swift_storeEnumTagMultiPayload();
  v34(v11);
  sub_1DAAE6364(v11, &qword_1EE11D458, MEMORY[0x1E69D6AF8]);
  return sub_1DAAE6490(v18);
}

uint64_t sub_1DAAE6078()
{

  v1 = qword_1ECBE6B58;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1263F0));
  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE1263F8));
  v3 = qword_1EE126400;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1DAAE6154(uint64_t a1)
{

  v2 = qword_1ECBE6B58;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE1263F0));
  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE1263F8));
  v4 = qword_1EE126400;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

void sub_1DAAE6240(uint64_t a1)
{
  if (!qword_1EE126440)
  {
    v2 = sub_1DAAE629C();
    v4 = type metadata accessor for YahooBaseOperation(a1, &type metadata for YahooChartResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE126440);
    }
  }
}

unint64_t sub_1DAAE629C()
{
  result = qword_1EE121B10;
  if (!qword_1EE121B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B10);
  }

  return result;
}

void sub_1DAAE6300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAAE6364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1DAAE6300(0, a2, type metadata accessor for Chart, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAAE63D8()
{
  result = qword_1ECBE6B60;
  if (!qword_1ECBE6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B60);
  }

  return result;
}

uint64_t sub_1DAAE642C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE6490(uint64_t a1)
{
  v2 = type metadata accessor for Chart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAAE6500()
{
  result = qword_1ECBE6B68;
  if (!qword_1ECBE6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B68);
  }

  return result;
}

uint64_t type metadata accessor for SDSQuoteDetailOperation(uint64_t a1)
{
  result = qword_1EE1210F8;
  if (!qword_1EE1210F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAE65A0(uint64_t a1)
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

void sub_1DAAE668C(uint64_t a1, uint64_t a2)
{
  v14 = *(v2 + qword_1EE121108);
  sub_1DACB71E4();
  sub_1DACA8764(&v14);
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE11FA38, MEMORY[0x1E69E6340]);
  v5 = sub_1DACB9864();

  v6 = *(v5 + 16);
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    sub_1DAAE85F8(0, &qword_1EE11FE78, sub_1DAAE8134, MEMORY[0x1E69D6B18]);
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
  sub_1DAAE8134(0);
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

uint64_t *sub_1DAAE69BC(uint64_t *result, void (*a2)(uint64_t, void))
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
      type metadata accessor for QuoteDetail(0);
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

void sub_1DAAE6ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(&a5[qword_1EE121120], *&a5[qword_1EE121120 + 24]);
  sub_1DAAE85F8(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74655361746164;
  *(inited + 16) = xmmword_1DACC1D40;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0x65746F7571;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x6C6F626D7973;
  *(inited + 72) = 0xE600000000000000;
  sub_1DAA6144C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAAE81E4(&qword_1EE123E90, MEMORY[0x1E69E6310]);
  sub_1DACB71F4();
  *(inited + 80) = sub_1DACB9214();
  *(inited + 88) = v13;
  v14 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v15 = sub_1DABF30CC(2, v14, &a5[qword_1EE121110], &a5[qword_1EE121118]);

  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = (v15 + *((*MEMORY[0x1E69E7D40] & *v15) + qword_1EE13E480 + 16));
  v18 = *v17;
  v19 = v17[1];
  *v17 = sub_1DAAE824C;
  v17[1] = v16;
  sub_1DACB71E4();
  sub_1DAA4F910(v18, v19);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = sub_1DAA7390C;
  v20[6] = v11;
  v21 = v15;
  sub_1DACB71F4();
  v22 = a5;
  sub_1DACB8304();

  [v21 start];
}

uint64_t sub_1DAAE6DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  sub_1DAAD8184(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69D6AF8];
  sub_1DAAE85F8(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  sub_1DAAE86D4(a2, &v28 - v12, &qword_1EE11FEE0, sub_1DAAD8184, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAAE87C4(v13, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
    sub_1DAA8C2EC(0);
    v15 = (a4 + *(v14 + 48));
    v16 = sub_1DACB8754();
    (*(*(v16 - 8) + 16))(a4, a1, v16);
    *v15 = *(v29 + 16);
    v15[1] = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v15[2] = MEMORY[0x1E69E7CC0];
    v15[3] = v17;
    type metadata accessor for NetworkEvent(0);
    v15[4] = 0;
    v15[5] = 0;
  }

  else
  {
    sub_1DAAE82AC(v13, v9);
    v18 = sub_1DACB8754();
    (*(*(v18 - 8) + 16))(a4, a1, v18);
    v19 = *(v29 + 16);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v20 = v30;
    sub_1DAA75E60(v31, v32, v33, v34, v35);
    v21 = *(v20 + 16);

    sub_1DACB8794();

    v22 = v32;
    if (v32)
    {
      v23 = v31;
    }

    else
    {
      v23 = 0;
    }

    sub_1DAA8C2EC(0);
    v25 = (a4 + *(v24 + 48));
    sub_1DAAE84EC(v9);
    *v25 = v19;
    v25[1] = v21;
    v26 = MEMORY[0x1E69E7CC0];
    v25[2] = MEMORY[0x1E69E7CC0];
    v25[3] = v26;
    v25[4] = v23;
    v25[5] = v22;
    type metadata accessor for NetworkEvent(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1DAAE70F4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v23[3] = a6;
  v24 = a5;
  sub_1DAAD8184(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69D6AF8];
  sub_1DAAE85F8(0, &qword_1EE11FEE0, sub_1DAAD8184, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v23 - v14);
  sub_1DAAE86D4(a1, v23 - v14, &qword_1EE11FEE0, sub_1DAAD8184, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    a2(*v15);
  }

  else
  {
    v23[1] = a3;
    v23[2] = a2;
    sub_1DAAE82AC(v15, v11);
    sub_1DAA6144C(0, &qword_1EE11FF88, &type metadata for SDSQuoteResponse, MEMORY[0x1E69D68E0]);
    sub_1DACB8794();
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = sub_1DAAE8414(v25);

    sub_1DAA75E60(v17, v18, v19, v20, v21);
    v24(v22);

    sub_1DAAE84EC(v11);
  }
}

uint64_t sub_1DAAE7328(uint64_t a1, void *a2)
{
  v107 = a1;
  v3 = MEMORY[0x1E69E6720];
  sub_1DAAE85F8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v70[-v5];
  sub_1DAAE85F8(0, &qword_1EE125280, MEMORY[0x1E6969530], v3);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v111 = &v70[-v11];
  sub_1DAAE85F8(0, qword_1EE123840, type metadata accessor for QuoteDetail, v3);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v70[-v13];
  sub_1DAAE85F8(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v3);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v109 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v108 = &v70[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v70[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v70[-v23];
  memcpy(v110, a2 + 13, 0x248uLL);
  v25 = a2[90];
  v26 = a2[91];
  if (sub_1DAAE865C(v110) == 1)
  {
    sub_1DAAE8680();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    return swift_willThrow();
  }

  sub_1DAAE7B74(v110[20], v110[21], v24);
  result = sub_1DAAE7B74(v110[35], v110[36], v22);
  if (v110[46])
  {
    v29 = 0;
  }

  else
  {
    v29 = v110[45];
    if ((v110[45] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  if ((v110[9] & 1) == 0)
  {
    v30 = v110[8];
    if ((v110[8] & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  v30 = 0;
LABEL_9:
  v97 = v30;
  v98 = LOBYTE(v110[9]);
  v99 = v29;
  v100 = LOBYTE(v110[46]);
  v106 = v26;
  v101 = v25;
  v31 = sub_1DACB7CC4();
  v32 = v24;
  v33 = *(*(v31 - 8) + 56);
  v33(v111, 1, 1, v31);
  v102 = v10;
  v33(v10, 1, 1, v31);
  v34 = MEMORY[0x1E6968FB0];
  v35 = MEMORY[0x1E69E6720];
  v103 = v32;
  sub_1DAAE86D4(v32, v108, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v104 = v22;
  sub_1DAAE86D4(v22, v109, &qword_1EE1263D0, v34, v35);
  v36 = sub_1DACB7F54();
  v37 = *(*(v36 - 8) + 56);
  v105 = v6;
  v37(v6, 1, 1, v36);
  v38 = v110[67];
  v39 = v110[68];
  if (v110[67])
  {
    sub_1DACB71E4();
  }

  v40 = v110[13];
  v84 = v110[12];
  v87 = v110[57];
  v41 = v110[58];
  v89 = v110[59];
  v42 = v110[60];
  v91 = v110[61];
  v43 = v110[62];
  v93 = v110[63];
  v44 = v110[64];
  v95 = v110[65];
  v45 = v110[66];
  sub_1DACB71E4();
  sub_1DACB71E4();
  v85 = v40;
  sub_1DACB71E4();
  v88 = v41;
  sub_1DACB71E4();
  v90 = v42;
  sub_1DACB71E4();
  v92 = v43;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v46 = sub_1DAAE8310(v38, sub_1DAB25C08);

  v96 = v45;
  v94 = v44;
  v86 = v46;
  if (v38)
  {
    sub_1DACB71E4();
  }

  else
  {
    v39 = 0;
  }

  v47 = v110[18];
  v48 = v110[19];
  v49 = v110[16];
  v50 = v110[17];
  v51 = v110[15];
  v75 = v110[49];
  v76 = v110[14];
  v73 = LOBYTE(v110[48]);
  v74 = LOBYTE(v110[50]);
  v72 = v110[22];
  v71 = LOBYTE(v110[23]);
  v52 = v110[47];
  v82 = v110[43];
  v81 = LOBYTE(v110[44]);
  v80 = v110[10];
  v79 = LOBYTE(v110[11]);
  v78 = v110[24];
  v77 = LOBYTE(v110[25]);
  v83 = sub_1DAAE8310(v39, sub_1DAB25C38);

  v53 = type metadata accessor for QuoteDetail(0);
  sub_1DACB7CB4();
  *v14 = v47;
  v14[8] = v48;
  *(v14 + 2) = v49;
  v14[24] = v50;
  v54 = v75;
  *(v14 + 4) = v76;
  v14[40] = v51;
  *(v14 + 6) = v54;
  LOBYTE(v54) = v73;
  v14[56] = v74;
  *(v14 + 8) = v52;
  v14[72] = v54;
  *(v14 + 10) = v72;
  v14[88] = v71;
  *(v14 + 12) = v99;
  v14[104] = v100;
  *(v14 + 14) = v97;
  v14[120] = v98;
  *(v14 + 16) = v82;
  v14[136] = v81;
  *(v14 + 18) = v80;
  v14[152] = v79;
  *(v14 + 20) = v78;
  v14[168] = v77;
  v55 = MEMORY[0x1E6969530];
  sub_1DAAE8744(v111, &v14[v53[15]], &qword_1EE125280, MEMORY[0x1E6969530]);
  sub_1DAAE8744(v102, &v14[v53[16]], &qword_1EE125280, v55);
  v56 = &v14[v53[17]];
  v57 = v85;
  *v56 = v84;
  v56[1] = v57;
  v58 = MEMORY[0x1E6968FB0];
  sub_1DAAE8744(v108, &v14[v53[18]], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAAE8744(v109, &v14[v53[19]], &qword_1EE1263D0, v58);
  sub_1DAAE8744(v105, &v14[v53[20]], &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v59 = &v14[v53[21]];
  v60 = v88;
  *v59 = v87;
  v59[1] = v60;
  v61 = &v14[v53[22]];
  v62 = v90;
  *v61 = v89;
  v61[1] = v62;
  v63 = &v14[v53[23]];
  v64 = v92;
  *v63 = v91;
  v63[1] = v64;
  v65 = &v14[v53[24]];
  v66 = v94;
  *v65 = v93;
  v65[1] = v66;
  v67 = &v14[v53[25]];
  v68 = v96;
  *v67 = v95;
  v67[1] = v68;
  *&v14[v53[26]] = v86;
  *&v14[v53[27]] = v83;
  (*(*(v53 - 1) + 56))(v14, 0, 1, v53);
  sub_1DAB594A8(v14, v101, v106);
  v69 = MEMORY[0x1E69E6720];
  sub_1DAAE87C4(v104, &qword_1EE1263D0, v58, MEMORY[0x1E69E6720]);
  return sub_1DAAE87C4(v103, &qword_1EE1263D0, v58, v69);
}

uint64_t sub_1DAAE7B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAAE85F8(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = sub_1DACB7664();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21[0] = a1;
    v21[1] = a2;
    sub_1DACB7604();
    sub_1DAA642D8();
    sub_1DACB9B44();
    v14 = v13;
    (*(v10 + 8))(v12, v9);
    if (v14)
    {
      sub_1DACB7A94();

      v15 = sub_1DACB7AB4();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v8, 1, v15) == 1)
      {
        sub_1DAAE87C4(v8, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        return (*(v16 + 56))(a3, 1, 1, v15);
      }

      else
      {
        (*(v16 + 32))(a3, v8, v15);
        return (*(v16 + 56))(a3, 0, 1, v15);
      }
    }

    else
    {
      v20 = sub_1DACB7AB4();
      return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
    }
  }

  else
  {
    v18 = sub_1DACB7AB4();
    v19 = *(*(v18 - 8) + 56);

    return v19(a3, 1, 1, v18);
  }
}

uint64_t sub_1DAAE7ECC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1EE121120));
  v1 = qword_1EE121110;
  v2 = sub_1DACB7CC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EE121118;
  v4 = sub_1DACB8204();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1DAAE7F94(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1EE121120));
  v2 = qword_1EE121110;
  v3 = sub_1DACB7CC4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_1EE121118;
  v5 = sub_1DACB8204();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_1DAAE8060(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAAE668C(sub_1DAADF554, v4);
}

uint64_t sub_1DAAE80E8(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1DACBA174();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

void sub_1DAAE8134(uint64_t a1)
{
  if (!qword_1EE11FCE0)
  {
    type metadata accessor for QuoteDetail(255);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FCE0);
    }
  }
}

uint64_t sub_1DAAE81E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA6144C(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAAE824C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v5[3] = v3;
  return sub_1DAC95478(sub_1DAAE8820, v5, a2);
}

uint64_t sub_1DAAE82AC(uint64_t a1, uint64_t a2)
{
  sub_1DAAD8184(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE8310(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    a2(0, v3, 0);
    v4 = v14;
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v14 + 16);
      v11 = *(v14 + 24);
      sub_1DACB71E4();
      if (v10 >= v11 >> 1)
      {
        a2(v11 > 1, v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      v12 = (v14 + 24 * v10);
      v12[4] = v8;
      v12[5] = v7;
      v12[6] = v9;
      v6 += 3;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1DAAE8414(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v9 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; i += 776)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_1DAAE8548(__dst, v6);
      sub_1DAAE7328(&v9, __src);
      if (v1)
      {
        break;
      }

      memcpy(v6, __src, sizeof(v6));
      sub_1DAAE85A4(v6);
      if (!--v4)
      {
        return v9;
      }
    }

    memcpy(v6, __src, sizeof(v6));
    sub_1DAAE85A4(v6);
  }

  return result;
}

uint64_t sub_1DAAE84EC(uint64_t a1)
{
  sub_1DAAD8184(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAAE85F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAAE865C(uint64_t a1)
{
  v1 = *(a1 + 104);
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

unint64_t sub_1DAAE8680()
{
  result = qword_1ECBE6B70;
  if (!qword_1ECBE6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B70);
  }

  return result;
}

uint64_t sub_1DAAE86D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1DAAE85F8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1DAAE8744(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAAE85F8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAAE87C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1DAAE85F8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1DAAE8840(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAAE8890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

void *sub_1DAAE88E4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DAAE891C(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1DAAE8968@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyResponse(0) + 20);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CurrencyResponse(uint64_t a1)
{
  result = qword_1EE11EBC8;
  if (!qword_1EE11EBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAAE8A30(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrencyResponse(0) + 20);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1DAAE8AF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CurrencyResponse(0) + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAAE8B70(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrencyResponse(0) + 24);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1DAAE8C80(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CurrencyResponse(0) + 28);

  return sub_1DAAE8CC4(a1, v3);
}

uint64_t sub_1DAAE8CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE8D70()
{
  v1 = 0x69737265766E6F63;
  v2 = 0x7441656C617473;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0x4164657461657263;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAAE8DF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAAEA684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAAE8E1C(uint64_t a1)
{
  v2 = sub_1DAAE9180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE8E58(uint64_t a1)
{
  v2 = sub_1DAAE9180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAE8E94(void *a1)
{
  v3 = v1;
  sub_1DAAEA0A8(0, &qword_1EE11CF58, sub_1DAAE9180, &type metadata for CurrencyResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9180();
  sub_1DACBA304();
  v12 = *v3;
  v11[15] = 0;
  sub_1DAAE91D4();
  sub_1DAAE9838(&qword_1EE11D170, sub_1DAAE9224, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  if (!v2)
  {
    type metadata accessor for CurrencyResponse(0);
    v11[14] = 1;
    sub_1DACB7CC4();
    sub_1DAA5D4D8(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DACBA0E4();
    v11[13] = 2;
    sub_1DACBA0E4();
    v11[12] = 3;
    type metadata accessor for RawAttributionSource(0);
    sub_1DAA5D4D8(&qword_1EE11E5F0, type metadata accessor for RawAttributionSource, &unk_1DACC82B8);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1DAAE9180()
{
  result = qword_1EE11EBF8;
  if (!qword_1EE11EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EBF8);
  }

  return result;
}

void sub_1DAAE91D4()
{
  if (!qword_1EE11D178)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D178);
    }
  }
}

unint64_t sub_1DAAE9224()
{
  result = qword_1EE11E8C0;
  if (!qword_1EE11E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8C0);
  }

  return result;
}

uint64_t sub_1DAAE9278@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for RawAttributionSource(0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7CC4();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  sub_1DAAEA0A8(0, &qword_1ECBE6B78, sub_1DAAE9180, &type metadata for CurrencyResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for CurrencyResponse(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9180();
  v36 = v11;
  v15 = v37;
  sub_1DACBA2F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v33;
  sub_1DAAE91D4();
  v41 = 0;
  sub_1DAAE9838(&qword_1ECBE6B80, sub_1DAAE98A4, MEMORY[0x1E69E6330]);
  sub_1DACB9FE4();
  v37 = v42;
  *v16 = v42;
  v40 = 1;
  v27 = sub_1DAA5D4D8(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DACB9FE4();
  v18 = &v16[*(v12 + 20)];
  v25 = *(v32 + 32);
  v26 = v12;
  v25(v18, v8, v17);
  v39 = 2;
  v19 = v31;
  v27 = 0;
  sub_1DACB9FE4();
  v20 = a1;
  v21 = v16;
  v25(&v16[*(v26 + 24)], v19, v17);
  v38 = 3;
  sub_1DAA5D4D8(&qword_1ECBE6B90, type metadata accessor for RawAttributionSource, &unk_1DACC8290);
  v22 = v30;
  sub_1DACB9FE4();
  v23 = v26;
  (*(v34 + 8))(v36, v35);
  sub_1DAAE98F8(v22, v21 + *(v23 + 28));
  sub_1DAA91E74(v21, v28, type metadata accessor for CurrencyResponse);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1DAAE995C(v21);
}

uint64_t sub_1DAAE9838(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAAE91D4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAE98A4()
{
  result = qword_1ECBE6B88;
  if (!qword_1ECBE6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6B88);
  }

  return result;
}

uint64_t sub_1DAAE98F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAE995C(uint64_t a1)
{
  v2 = type metadata accessor for CurrencyResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAAE99E8()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAAE9A18()
{
  v1 = *(v0 + 16);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAAE9A50()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E1276F20](*v0, v0[1]);
  MEMORY[0x1E1276F20](540945696, 0xE400000000000000);
  MEMORY[0x1E1276F20](v1, v2);
  MEMORY[0x1E1276F20](8250, 0xE200000000000000);
  sub_1DACB97D4();
  return 0;
}

uint64_t sub_1DAAE9AF4()
{
  v1 = 0x6563697270;
  if (*v0 == 1)
  {
    v1 = 0x79636E6572727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79636E6572727563;
  }
}

uint64_t sub_1DAAE9B48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAAEA7F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAAE9B70(uint64_t a1)
{
  v2 = sub_1DAAE9DB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAE9BAC(uint64_t a1)
{
  v2 = sub_1DAAE9DB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAE9BE8(void *a1)
{
  sub_1DAAEA0A8(0, &qword_1EE11CF50, sub_1DAAE9DB0, &type metadata for CurrencyConversion.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[0] = *(v1 + 24);
  v11[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9DB0();
  sub_1DACBA304();
  v14 = 0;
  v9 = v11[2];
  sub_1DACBA094();
  if (!v9)
  {
    v13 = 1;
    sub_1DACBA094();
    v12 = 2;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DAAE9DB0()
{
  result = qword_1EE11E8D8[0];
  if (!qword_1EE11E8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11E8D8);
  }

  return result;
}

uint64_t sub_1DAAE9E04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  sub_1DAAEA0A8(0, &qword_1ECBE6B98, sub_1DAAE9DB0, &type metadata for CurrencyConversion.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAE9DB0();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v23;
  v26 = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v22 = v11;
  v25 = 1;
  v20 = sub_1DACB9FA4();
  v21 = v14;
  v24 = 2;
  sub_1DACB9FC4();
  v16 = v15;
  (*(v9 + 8))(v8, v5);
  v17 = v21;
  *v10 = v22;
  v10[1] = v13;
  v10[2] = v20;
  v10[3] = v17;
  v10[4] = v16;
  sub_1DACB71E4();
  sub_1DACB71E4();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1DAAEA0A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAAEA140()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E1276F20](*v0, v0[1]);
  MEMORY[0x1E1276F20](540945696, 0xE400000000000000);
  MEMORY[0x1E1276F20](v1, v2);
  MEMORY[0x1E1276F20](8250, 0xE200000000000000);
  sub_1DACB97D4();
  return 0;
}

void sub_1DAAEA20C(uint64_t a1)
{
  sub_1DAAE91D4();
  if (v1 <= 0x3F)
  {
    sub_1DACB7CC4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RawAttributionSource(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAAEA2BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t getEnumTagSinglePayload for CurrencyResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CurrencyResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAAEA478()
{
  result = qword_1ECBE6BA0;
  if (!qword_1ECBE6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BA0);
  }

  return result;
}

unint64_t sub_1DAAEA4D0()
{
  result = qword_1ECBE6BA8;
  if (!qword_1ECBE6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BA8);
  }

  return result;
}

unint64_t sub_1DAAEA528()
{
  result = qword_1EE11E8C8;
  if (!qword_1EE11E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8C8);
  }

  return result;
}

unint64_t sub_1DAAEA580()
{
  result = qword_1EE11E8D0;
  if (!qword_1EE11E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8D0);
  }

  return result;
}

unint64_t sub_1DAAEA5D8()
{
  result = qword_1EE11EBE8;
  if (!qword_1EE11EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EBE8);
  }

  return result;
}

unint64_t sub_1DAAEA630()
{
  result = qword_1EE11EBF0;
  if (!qword_1EE11EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EBF0);
  }

  return result;
}

uint64_t sub_1DAAEA684(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737265766E6F63 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7441656C617473 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DAAEA7F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x79636E6572727563 && a2 == 0xEC0000006D6F7246;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEA00000000006F54 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DAAEA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DACB8204();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x1E69D6490], v8);
  v12 = (*(a4 + 8))(a1, a2, v11, a3, a4);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1DAAEAA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAAEAA70, 0, 0);
}

uint64_t sub_1DAAEAA70()
{
  v0[9] = (*(v0[7] + 8))(v0[3], v0[4], v0[5], v0[6]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1DAAEAB30;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAAEAB30()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DAAEAC68;
  }

  else
  {

    v2 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAEAC68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAAEACF0(void *a1, uint64_t a2)
{
  sub_1DAAEB1EC(0, &qword_1ECBE6BB0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAEB198();
  sub_1DACBA304();
  v10[1] = a2;
  sub_1DAA613E8();
  sub_1DAA962D8(&qword_1EE123E98, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAAEAE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73444964656566 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAAEAF14(uint64_t a1)
{
  v2 = sub_1DAAEB198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAEAF50(uint64_t a1)
{
  v2 = sub_1DAAEB198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAAEAF8C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAAEAFD4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1DAAEAFD4(void *a1)
{
  sub_1DAAEB1EC(0, &unk_1EE11CFD0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAEB198();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAA613E8();
    sub_1DAA962D8(&qword_1EE123E88, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DAAEB198()
{
  result = qword_1EE11F0C0;
  if (!qword_1EE11F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0C0);
  }

  return result;
}

void sub_1DAAEB1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAAEB198();
    v7 = a3(a1, &type metadata for TagStocksFeedConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAAEB264()
{
  result = qword_1ECBE6BB8;
  if (!qword_1ECBE6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BB8);
  }

  return result;
}

unint64_t sub_1DAAEB2BC()
{
  result = qword_1EE11F0B0;
  if (!qword_1EE11F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0B0);
  }

  return result;
}

unint64_t sub_1DAAEB314()
{
  result = qword_1EE11F0B8;
  if (!qword_1EE11F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F0B8);
  }

  return result;
}

uint64_t sub_1DAAEB368()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE6BC0);
  __swift_project_value_buffer(v6, qword_1ECBE6BC0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAAEB580()
{
  sub_1DAAEC3B0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE6BD8);
  __swift_project_value_buffer(v10, qword_1ECBE6BD8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DAAEB8EC(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4D678(a1, v4);
  sub_1DAA4D678(v4, &v3);
  sub_1DACB71F4();
  sub_1DACB6D34();
  __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1DAAEB94C(void *a1)
{
  sub_1DAA4D678(a1, v3);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1DAAEB990(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D78;
}

uint64_t sub_1DAAEBA28@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAEC3B0(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

unint64_t sub_1DAAEBAC4()
{
  result = qword_1EE123948;
  if (!qword_1EE123948)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123948);
  }

  return result;
}

uint64_t sub_1DAAEBB28(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 80) = a1;
  *(v2 + 88) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAAEBB4C, 0, 0);
}

uint64_t sub_1DAAEBB4C(uint64_t a1)
{
  sub_1DACB6D24();
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v1[7] = 0;
  v1[8] = 0;
  v1[9] = 0x8000000000000000;
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_1DAAEBC98;

  return v6(v1 + 7, v2, v3);
}

uint64_t sub_1DAAEBC98()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1DAAEBE1C;
  }

  else
  {
    v2 = sub_1DAAEBDAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAEBDAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DACB6EB4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAAEBE1C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DAAEBE84()
{
  result = qword_1EE11E1F8;
  if (!qword_1EE11E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E1F8);
  }

  return result;
}

unint64_t sub_1DAAEBEDC()
{
  result = qword_1EE11E208[0];
  if (!qword_1EE11E208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11E208);
  }

  return result;
}

unint64_t sub_1DAAEBF9C()
{
  result = qword_1EE11E200;
  if (!qword_1EE11E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E200);
  }

  return result;
}

uint64_t sub_1DAAEBFF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6BC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAAEC0A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAAEBB28(a1);
}

uint64_t sub_1DAAEC138@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAEC3B0(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAEC1D4(uint64_t a1)
{
  v2 = sub_1DAAEBF9C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_1DACB71F4();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_1DACB71F4();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for OpenBusinessNewsIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OpenBusinessNewsIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAAEC358()
{
  result = qword_1ECBE6A08;
  if (!qword_1ECBE6A08)
  {
    sub_1DAADCD58(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6A08);
  }

  return result;
}

void sub_1DAAEC3B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAAEC414(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAA94754;

  return v7(a1, a2);
}

uint64_t sub_1DAAEC52C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAAEC5B8()
{
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE13E2D0);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Will check for deprecated stocks...", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  v0[11] = (*(v7 + 136))(v6, v7);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1DAAEC74C;

  return MEMORY[0x1EEE44EE0](v0 + 8);
}

uint64_t sub_1DAAEC74C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1DAAECD34;
  }

  else
  {

    v2 = sub_1DAAEC868;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAEC868()
{
  v19 = v0;
  v1 = *(v0 + 64);
  *(v0 + 112) = v1;
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v6 = MEMORY[0x1E1277130](v1, &type metadata for Watchlist);
    v8 = sub_1DAA7ABE4(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Deprecating stocks from watchlists %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E1278C00](v5, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  if (*(v1 + 16))
  {
    *(v0 + 120) = 0;
    v9 = *(v0 + 112);
    v10 = *(v9 + 40);
    *(v0 + 128) = v10;
    v11 = *(v9 + 48);
    *(v0 + 136) = v11;
    v12 = *(v9 + 64);
    *(v0 + 144) = v12;
    v13 = *(v9 + 72);
    v14 = *(v9 + 56);
    *(v0 + 16) = *(v9 + 32);
    *(v0 + 24) = v10;
    *(v0 + 32) = v11;
    *(v0 + 40) = v14;
    *(v0 + 48) = v12;
    *(v0 + 56) = v13;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1DAAECAA4;

    return sub_1DAAECE10((v0 + 16));
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAAECAA4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1DAAECD98;
  }

  else
  {

    v2 = sub_1DAAECBE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAECBE4()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120) + 1;
  v3 = *(result + 16);
  if (v2 == v3)
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 120) = v2;
    if (v2 >= v3)
    {
      __break(1u);
    }

    else
    {
      v5 = result + 48 * v2;
      v6 = *(v5 + 40);
      *(v0 + 128) = v6;
      v7 = *(v5 + 48);
      *(v0 + 136) = v7;
      v8 = *(v5 + 64);
      *(v0 + 144) = v8;
      v9 = *(v5 + 72);
      v10 = *(v5 + 56);
      *(v0 + 16) = *(v5 + 32);
      *(v0 + 24) = v6;
      *(v0 + 32) = v7;
      *(v0 + 40) = v10;
      *(v0 + 48) = v8;
      *(v0 + 56) = v9;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v11 = swift_task_alloc();
      *(v0 + 152) = v11;
      *v11 = v0;
      v11[1] = sub_1DAAECAA4;

      return sub_1DAAECE10((v0 + 16));
    }
  }

  return result;
}

uint64_t sub_1DAAECD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAAECD98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAAECE10(uint64_t *a1)
{
  *(v2 + 264) = v1;
  type metadata accessor for AppConfiguration(0);
  *(v2 + 272) = swift_task_alloc();
  sub_1DAAF0D90(0, &qword_1EE120028, MEMORY[0x1E69D63E8]);
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 280) = v4;
  *(v2 + 288) = v5;
  *(v2 + 296) = *(a1 + 1);
  v6 = a1[4];
  *(v2 + 312) = a1[3];
  *(v2 + 320) = v6;
  *(v2 + 58) = *(a1 + 20);

  return MEMORY[0x1EEE6DFA0](sub_1DAAECF0C, 0, 0);
}

uint64_t sub_1DAAECF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2[38];
  v5 = v2[34];
  v4 = v2[35];
  v6 = v2[33];
  ObjectType = swift_getObjectType();
  v8 = v6[11];
  v9 = v6[12];
  __swift_project_boxed_opaque_existential_1(v6 + 8, v8);
  (*(v9 + 8))(v8, v9);
  v10 = *(v5 + 352);
  sub_1DAA640AC(v5);
  *v4 = v10;
  v11 = *MEMORY[0x1E69D63E0];
  v12 = sub_1DACB81B4();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  v2[41] = sub_1DAAA2240(v3, v4, ObjectType);
  sub_1DAAF0D34(v4, &qword_1EE120028, MEMORY[0x1E69D63E8]);
  v14 = swift_task_alloc();
  v2[42] = v14;
  *v14 = v2;
  v14[1] = sub_1DAAED0E4;

  return MEMORY[0x1EEE44EE0](v2 + 32);
}

uint64_t sub_1DAAED0E4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1DAAEFF94;
  }

  else
  {

    v2 = sub_1DAAED200;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAED200()
{
  v97 = v0;
  v2 = *(v0 + 256);
  *(v0 + 352) = v2;
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 320);
  v4 = sub_1DACB8C94();
  *(v0 + 360) = __swift_project_value_buffer(v4, qword_1EE13E2D0);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 304);
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v96[0] = v8;
    *v3 = 136315138;
    v9 = MEMORY[0x1E1277130](v7, MEMORY[0x1E69E6158]);
    v11 = sub_1DAA7ABE4(v9, v10, v96);

    *(v3 + 4) = v11;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Checking records for deprecated stocks, symbols=%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v3, -1, -1);
  }

  v13 = 0;
  v14 = v0 + 296;
  v15 = *(v2 + 32);
  *(v0 + 60) = v15;
  v16 = 1 << v15;
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v2 + 64);
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v12 = *(v0 + 352);
LABEL_14:
    *(v0 + 368) = v18;
    *(v0 + 376) = v13;
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v22 = v21 | (v13 << 6);
    v23 = *(v12 + 56) + 104 * v22;
    if (*(v23 + 80))
    {
      v24 = (*(v12 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v87 = *(v23 + 88);
      v89 = *(v23 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v27 = sub_1DACB8C74();
      v28 = sub_1DACB9914();

      v94 = v26;
      v95 = v25;
      v90 = (v0 + 296);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v96[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_1DAA7ABE4(v25, v26, v96);
        _os_log_impl(&dword_1DAA3F000, v27, v28, "Will deprecated stock, symbol=%s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1E1278C00](v30, -1, -1);
        MEMORY[0x1E1278C00](v29, -1, -1);
      }

      if (!v89)
      {
        goto LABEL_21;
      }

      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v31 = qword_1EE13E3B8;
      v32 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v87, v89);
      if (v33 & 1) == 0 && ((*(v0 + 176) = 0, *(v0 + 184) = 0xE000000000000000, MEMORY[0x1E1276F20](v31, v32), sub_1DACB9204(), v50 = sub_1DACB94A4(), , (v50) || (*(v0 + 192) = 0, *(v0 + 200) = 0xE000000000000000, MEMORY[0x1E1276F20](v31, v32), sub_1DACB9204(), v51 = sub_1DACB94A4(), , (v51)))
      {
        v52 = *(v0 + 304);
        sub_1DACB71E4();
        v53 = sub_1DACB9424();
        v54 = sub_1DAAF0E30(v53, v87, v89);
        v56 = v55;
        v58 = v57;
        v60 = v59;

        v14 = MEMORY[0x1E1276EB0](v54, v56, v58, v60);
        v2 = v61;

        *(v0 + 208) = v14;
        *(v0 + 216) = v2;
        v62 = swift_task_alloc();
        *(v62 + 16) = v0 + 208;
        LOBYTE(v56) = sub_1DAC78448(sub_1DAA88710, v62, v52);

        v1 = v94;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v5 = sub_1DACB8C74();
        LOBYTE(v3) = sub_1DACB9914();

        LODWORD(v12) = os_log_type_enabled(v5, v3);
        if (v56)
        {
          if (v12)
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v96[0] = v64;
            *v63 = 136315394;
            v65 = v95;
            *(v63 + 4) = sub_1DAA7ABE4(v95, v94, v96);
            *(v63 + 12) = 2080;
            v66 = sub_1DAA7ABE4(v14, v2, v96);

            *(v63 + 14) = v66;
            _os_log_impl(&dword_1DAA3F000, v5, v3, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v63, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v64, -1, -1);
            MEMORY[0x1E1278C00](v63, -1, -1);
          }

          else
          {

            v65 = v95;
          }

          v79 = *(v0 + 58);
          v81 = *(v0 + 312);
          v80 = *(v0 + 320);
          v82 = *(v0 + 288);
          v83 = *(v0 + 264);
          v84 = v83[5];
          v85 = v83[6];
          v93 = *v90;
          __swift_project_boxed_opaque_existential_1(v83 + 2, v84);
          *(v0 + 112) = v82;
          *(v0 + 120) = v93;
          *(v0 + 136) = v81;
          *(v0 + 144) = v80;
          *(v0 + 152) = v79;
          *(v0 + 384) = (*(v85 + 168))(v65, v94, v0 + 112, v84, v85);

          v86 = swift_task_alloc();
          *(v0 + 392) = v86;
          *v86 = v0;
          v86[1] = sub_1DAAEDD8C;
          v49 = v0 + 240;
        }

        else
        {
LABEL_37:
          v88 = v14;
          if (v12)
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v96[0] = v68;
            *v67 = 136315394;
            *(v67 + 4) = sub_1DAA7ABE4(v95, v1, v96);
            *(v67 + 12) = 2080;
            *(v67 + 14) = sub_1DAA7ABE4(v14, v2, v96);
            _os_log_impl(&dword_1DAA3F000, v5, v3, "Deprecating %s and replacing it with %s", v67, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v68, -1, -1);
            MEMORY[0x1E1278C00](v67, -1, -1);
          }

          v69 = v1;
          v70 = v2;
          v71 = *(v0 + 58);
          v73 = *(v0 + 312);
          v72 = *(v0 + 320);
          v74 = *(v0 + 288);
          v75 = *(v0 + 264);
          v76 = v75[5];
          v77 = v75[6];
          v92 = *v90;
          __swift_project_boxed_opaque_existential_1(v75 + 2, v76);
          *(v0 + 64) = v74;
          *(v0 + 72) = v92;
          *(v0 + 88) = v73;
          *(v0 + 96) = v72;
          *(v0 + 104) = v71;
          *(v0 + 408) = (*(v77 + 192))(v95, v69, v88, v70, v0 + 64, v76, v77);

          v78 = swift_task_alloc();
          *(v0 + 416) = v78;
          *v78 = v0;
          v78[1] = sub_1DAAEE8E4;
          v49 = v0 + 224;
        }
      }

      else
      {
LABEL_21:

        sub_1DACB71E4();
        v34 = sub_1DACB8C74();
        v35 = sub_1DACB9914();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v96[0] = v37;
          *v36 = 136315138;
          v38 = v95;
          *(v36 + 4) = sub_1DAA7ABE4(v95, v26, v96);
          _os_log_impl(&dword_1DAA3F000, v34, v35, "Deprecating %s with no replacement", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x1E1278C00](v37, -1, -1);
          MEMORY[0x1E1278C00](v36, -1, -1);
        }

        else
        {

          v38 = v95;
        }

        v41 = *(v0 + 58);
        v43 = *(v0 + 312);
        v42 = *(v0 + 320);
        v44 = *(v0 + 288);
        v45 = *(v0 + 264);
        v46 = v45[5];
        v47 = v45[6];
        v91 = *v90;
        __swift_project_boxed_opaque_existential_1(v45 + 2, v46);
        *(v0 + 16) = v44;
        *(v0 + 24) = v91;
        *(v0 + 40) = v43;
        *(v0 + 48) = v42;
        *(v0 + 56) = v41;
        *(v0 + 432) = (*(v47 + 168))(v38, v94, v0 + 16, v46, v47);

        v48 = swift_task_alloc();
        *(v0 + 440) = v48;
        *v48 = v0;
        v48[1] = sub_1DAAEF43C;
        v49 = v0 + 160;
      }

      return MEMORY[0x1EEE44EE0](v49);
    }
  }

  while (1)
  {
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v12 = *(v0 + 352);
    if (v20 >= v19)
    {
      break;
    }

    v18 = *(v12 + 8 * v20 + 64);
    ++v13;
    if (v18)
    {
      v13 = v20;
      goto LABEL_14;
    }
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1DAAEDD8C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {

    v2 = sub_1DAAF0150;
  }

  else
  {

    v2 = sub_1DAAEDED4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAEDED4(uint64_t a1)
{
  v82 = v3;
  v6 = v3 + 208;
  v7 = *(v3 + 376);
  v8 = (*(v3 + 368) - 1) & *(v3 + 368);
  while (v8)
  {
    a1 = *(v3 + 352);
LABEL_8:
    *(v3 + 368) = v8;
    *(v3 + 376) = v7;
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(a1 + 56) + 104 * v11;
    if (*(v12 + 80))
    {
      v13 = (*(a1 + 48) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v74 = *(v12 + 88);
      v76 = *(v12 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v16 = sub_1DACB8C74();
      v17 = sub_1DACB9914();

      v80 = v14;
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v81[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1DAA7ABE4(v14, v15, v81);
        _os_log_impl(&dword_1DAA3F000, v16, v17, "Will deprecated stock, symbol=%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E1278C00](v19, -1, -1);
        MEMORY[0x1E1278C00](v18, -1, -1);
      }

      if (!v76)
      {
        goto LABEL_19;
      }

      v73 = v15;
      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v20 = qword_1EE13E3B8;
      v21 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v74, v76);
      if (v22 & 1) == 0 && ((*(v3 + 176) = 0, *(v3 + 184) = 0xE000000000000000, MEMORY[0x1E1276F20](v20, v21), sub_1DACB9204(), v38 = sub_1DACB94A4(), , (v38) || (*(v3 + 192) = 0, *(v3 + 200) = 0xE000000000000000, MEMORY[0x1E1276F20](v20, v21), sub_1DACB9204(), v39 = sub_1DACB94A4(), , (v39)))
      {
        v40 = *(v3 + 304);
        sub_1DACB71E4();
        v41 = sub_1DACB9424();
        v42 = sub_1DAAF0E30(v41, v74, v76);
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v4 = MEMORY[0x1E1276EB0](v42, v44, v46, v48);
        v1 = v49;

        *(v3 + 208) = v4;
        *(v3 + 216) = v1;
        v50 = swift_task_alloc();
        *(v50 + 16) = v6;
        LOBYTE(v44) = sub_1DAC78448(sub_1DAA88710, v50, v40);

        v5 = v73;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v2 = sub_1DACB8C74();
        LOBYTE(v6) = sub_1DACB9914();

        LODWORD(a1) = os_log_type_enabled(v2, v6);
        if (v44)
        {
          if (a1)
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v81[0] = v52;
            *v51 = 136315394;
            *(v51 + 4) = sub_1DAA7ABE4(v80, v73, v81);
            *(v51 + 12) = 2080;
            v53 = sub_1DAA7ABE4(v4, v1, v81);

            *(v51 + 14) = v53;
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v51, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v52, -1, -1);
            MEMORY[0x1E1278C00](v51, -1, -1);
          }

          else
          {
          }

          v65 = *(v3 + 58);
          v67 = *(v3 + 312);
          v66 = *(v3 + 320);
          v68 = *(v3 + 288);
          v69 = *(v3 + 264);
          v70 = v69[5];
          v71 = v69[6];
          v79 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v69 + 2, v70);
          *(v3 + 112) = v68;
          *(v3 + 120) = v79;
          *(v3 + 136) = v67;
          *(v3 + 144) = v66;
          *(v3 + 152) = v65;
          *(v3 + 384) = (*(v71 + 168))(v80, v73, v3 + 112, v70, v71);

          v72 = swift_task_alloc();
          *(v3 + 392) = v72;
          *v72 = v3;
          v72[1] = sub_1DAAEDD8C;
          v37 = v3 + 240;
        }

        else
        {
LABEL_31:
          v75 = v4;
          if (a1)
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v81[0] = v55;
            *v54 = 136315394;
            *(v54 + 4) = sub_1DAA7ABE4(v80, v5, v81);
            *(v54 + 12) = 2080;
            *(v54 + 14) = sub_1DAA7ABE4(v4, v1, v81);
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and replacing it with %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v55, -1, -1);
            MEMORY[0x1E1278C00](v54, -1, -1);
          }

          v56 = v5;
          v57 = *(v3 + 58);
          v59 = *(v3 + 312);
          v58 = *(v3 + 320);
          v60 = *(v3 + 288);
          v61 = *(v3 + 264);
          v62 = v61[5];
          v63 = v61[6];
          v78 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v61 + 2, v62);
          *(v3 + 64) = v60;
          *(v3 + 72) = v78;
          *(v3 + 88) = v59;
          *(v3 + 96) = v58;
          *(v3 + 104) = v57;
          *(v3 + 408) = (*(v63 + 192))(v80, v56, v75, v1, v3 + 64, v62, v63);

          v64 = swift_task_alloc();
          *(v3 + 416) = v64;
          *v64 = v3;
          v64[1] = sub_1DAAEE8E4;
          v37 = v3 + 224;
        }
      }

      else
      {
LABEL_19:

        sub_1DACB71E4();
        v25 = sub_1DACB8C74();
        v26 = sub_1DACB9914();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v81[0] = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_1DAA7ABE4(v80, v15, v81);
          _os_log_impl(&dword_1DAA3F000, v25, v26, "Deprecating %s with no replacement", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x1E1278C00](v28, -1, -1);
          MEMORY[0x1E1278C00](v27, -1, -1);
        }

        v29 = *(v3 + 58);
        v31 = *(v3 + 312);
        v30 = *(v3 + 320);
        v32 = *(v3 + 288);
        v33 = *(v3 + 264);
        v34 = v33[5];
        v35 = v33[6];
        v77 = *(v3 + 296);
        __swift_project_boxed_opaque_existential_1(v33 + 2, v34);
        *(v3 + 16) = v32;
        *(v3 + 24) = v77;
        *(v3 + 40) = v31;
        *(v3 + 48) = v30;
        *(v3 + 56) = v29;
        *(v3 + 432) = (*(v35 + 168))(v80, v15, v3 + 16, v34, v35);

        v36 = swift_task_alloc();
        *(v3 + 440) = v36;
        *v36 = v3;
        v36[1] = sub_1DAAEF43C;
        v37 = v3 + 160;
      }

      return MEMORY[0x1EEE44EE0](v37);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    a1 = *(v3 + 352);
    if (v9 >= (((1 << *(v3 + 60)) + 63) >> 6))
    {
      break;
    }

    v8 = *(a1 + 8 * v9 + 64);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_8;
    }
  }

  v23 = *(v3 + 8);

  return v23();
}

uint64_t sub_1DAAEE8E4()
{
  *(*v1 + 424) = v0;

  if (v0)
  {

    v2 = sub_1DAAF030C;
  }

  else
  {

    v2 = sub_1DAAEEA2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAEEA2C(uint64_t a1)
{
  v82 = v3;
  v6 = v3 + 208;
  v7 = *(v3 + 376);
  v8 = (*(v3 + 368) - 1) & *(v3 + 368);
  while (v8)
  {
    a1 = *(v3 + 352);
LABEL_8:
    *(v3 + 368) = v8;
    *(v3 + 376) = v7;
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(a1 + 56) + 104 * v11;
    if (*(v12 + 80))
    {
      v13 = (*(a1 + 48) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v74 = *(v12 + 88);
      v76 = *(v12 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v16 = sub_1DACB8C74();
      v17 = sub_1DACB9914();

      v80 = v14;
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v81[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1DAA7ABE4(v14, v15, v81);
        _os_log_impl(&dword_1DAA3F000, v16, v17, "Will deprecated stock, symbol=%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E1278C00](v19, -1, -1);
        MEMORY[0x1E1278C00](v18, -1, -1);
      }

      if (!v76)
      {
        goto LABEL_19;
      }

      v73 = v15;
      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v20 = qword_1EE13E3B8;
      v21 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v74, v76);
      if (v22 & 1) == 0 && ((*(v3 + 176) = 0, *(v3 + 184) = 0xE000000000000000, MEMORY[0x1E1276F20](v20, v21), sub_1DACB9204(), v38 = sub_1DACB94A4(), , (v38) || (*(v3 + 192) = 0, *(v3 + 200) = 0xE000000000000000, MEMORY[0x1E1276F20](v20, v21), sub_1DACB9204(), v39 = sub_1DACB94A4(), , (v39)))
      {
        v40 = *(v3 + 304);
        sub_1DACB71E4();
        v41 = sub_1DACB9424();
        v42 = sub_1DAAF0E30(v41, v74, v76);
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v4 = MEMORY[0x1E1276EB0](v42, v44, v46, v48);
        v1 = v49;

        *(v3 + 208) = v4;
        *(v3 + 216) = v1;
        v50 = swift_task_alloc();
        *(v50 + 16) = v6;
        LOBYTE(v44) = sub_1DAC78448(sub_1DAA88710, v50, v40);

        v5 = v73;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v2 = sub_1DACB8C74();
        LOBYTE(v6) = sub_1DACB9914();

        LODWORD(a1) = os_log_type_enabled(v2, v6);
        if (v44)
        {
          if (a1)
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v81[0] = v52;
            *v51 = 136315394;
            *(v51 + 4) = sub_1DAA7ABE4(v80, v73, v81);
            *(v51 + 12) = 2080;
            v53 = sub_1DAA7ABE4(v4, v1, v81);

            *(v51 + 14) = v53;
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v51, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v52, -1, -1);
            MEMORY[0x1E1278C00](v51, -1, -1);
          }

          else
          {
          }

          v65 = *(v3 + 58);
          v67 = *(v3 + 312);
          v66 = *(v3 + 320);
          v68 = *(v3 + 288);
          v69 = *(v3 + 264);
          v70 = v69[5];
          v71 = v69[6];
          v79 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v69 + 2, v70);
          *(v3 + 112) = v68;
          *(v3 + 120) = v79;
          *(v3 + 136) = v67;
          *(v3 + 144) = v66;
          *(v3 + 152) = v65;
          *(v3 + 384) = (*(v71 + 168))(v80, v73, v3 + 112, v70, v71);

          v72 = swift_task_alloc();
          *(v3 + 392) = v72;
          *v72 = v3;
          v72[1] = sub_1DAAEDD8C;
          v37 = v3 + 240;
        }

        else
        {
LABEL_31:
          v75 = v4;
          if (a1)
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v81[0] = v55;
            *v54 = 136315394;
            *(v54 + 4) = sub_1DAA7ABE4(v80, v5, v81);
            *(v54 + 12) = 2080;
            *(v54 + 14) = sub_1DAA7ABE4(v4, v1, v81);
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and replacing it with %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v55, -1, -1);
            MEMORY[0x1E1278C00](v54, -1, -1);
          }

          v56 = v5;
          v57 = *(v3 + 58);
          v59 = *(v3 + 312);
          v58 = *(v3 + 320);
          v60 = *(v3 + 288);
          v61 = *(v3 + 264);
          v62 = v61[5];
          v63 = v61[6];
          v78 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v61 + 2, v62);
          *(v3 + 64) = v60;
          *(v3 + 72) = v78;
          *(v3 + 88) = v59;
          *(v3 + 96) = v58;
          *(v3 + 104) = v57;
          *(v3 + 408) = (*(v63 + 192))(v80, v56, v75, v1, v3 + 64, v62, v63);

          v64 = swift_task_alloc();
          *(v3 + 416) = v64;
          *v64 = v3;
          v64[1] = sub_1DAAEE8E4;
          v37 = v3 + 224;
        }
      }

      else
      {
LABEL_19:

        sub_1DACB71E4();
        v25 = sub_1DACB8C74();
        v26 = sub_1DACB9914();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v81[0] = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_1DAA7ABE4(v80, v15, v81);
          _os_log_impl(&dword_1DAA3F000, v25, v26, "Deprecating %s with no replacement", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x1E1278C00](v28, -1, -1);
          MEMORY[0x1E1278C00](v27, -1, -1);
        }

        v29 = *(v3 + 58);
        v31 = *(v3 + 312);
        v30 = *(v3 + 320);
        v32 = *(v3 + 288);
        v33 = *(v3 + 264);
        v34 = v33[5];
        v35 = v33[6];
        v77 = *(v3 + 296);
        __swift_project_boxed_opaque_existential_1(v33 + 2, v34);
        *(v3 + 16) = v32;
        *(v3 + 24) = v77;
        *(v3 + 40) = v31;
        *(v3 + 48) = v30;
        *(v3 + 56) = v29;
        *(v3 + 432) = (*(v35 + 168))(v80, v15, v3 + 16, v34, v35);

        v36 = swift_task_alloc();
        *(v3 + 440) = v36;
        *v36 = v3;
        v36[1] = sub_1DAAEF43C;
        v37 = v3 + 160;
      }

      return MEMORY[0x1EEE44EE0](v37);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    a1 = *(v3 + 352);
    if (v9 >= (((1 << *(v3 + 60)) + 63) >> 6))
    {
      break;
    }

    v8 = *(a1 + 8 * v9 + 64);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_8;
    }
  }

  v23 = *(v3 + 8);

  return v23();
}

uint64_t sub_1DAAEF43C()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_1DAAF04C8;
  }

  else
  {

    v2 = sub_1DAAEF584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAAEF584(uint64_t a1)
{
  v82 = v3;
  v6 = v3 + 208;
  v7 = *(v3 + 376);
  v8 = (*(v3 + 368) - 1) & *(v3 + 368);
  while (v8)
  {
    a1 = *(v3 + 352);
LABEL_8:
    *(v3 + 368) = v8;
    *(v3 + 376) = v7;
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(a1 + 56) + 104 * v11;
    if (*(v12 + 80))
    {
      v13 = (*(a1 + 48) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v74 = *(v12 + 88);
      v76 = *(v12 + 96);
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v16 = sub_1DACB8C74();
      v17 = sub_1DACB9914();

      v80 = v14;
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v81[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1DAA7ABE4(v14, v15, v81);
        _os_log_impl(&dword_1DAA3F000, v16, v17, "Will deprecated stock, symbol=%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E1278C00](v19, -1, -1);
        MEMORY[0x1E1278C00](v18, -1, -1);
      }

      if (!v76)
      {
        goto LABEL_19;
      }

      v73 = v15;
      if (qword_1EE123758 != -1)
      {
        swift_once();
      }

      v20 = qword_1EE13E3B8;
      v21 = unk_1EE13E3C0;
      sub_1DAAF0714(xmmword_1EE13E3C8, *(&xmmword_1EE13E3C8 + 1), v74, v76);
      if (v22 & 1) == 0 && ((*(v3 + 176) = 0, *(v3 + 184) = 0xE000000000000000, MEMORY[0x1E1276F20](v20, v21), sub_1DACB9204(), v38 = sub_1DACB94A4(), , (v38) || (*(v3 + 192) = 0, *(v3 + 200) = 0xE000000000000000, MEMORY[0x1E1276F20](v20, v21), sub_1DACB9204(), v39 = sub_1DACB94A4(), , (v39)))
      {
        v40 = *(v3 + 304);
        sub_1DACB71E4();
        v41 = sub_1DACB9424();
        v42 = sub_1DAAF0E30(v41, v74, v76);
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v4 = MEMORY[0x1E1276EB0](v42, v44, v46, v48);
        v1 = v49;

        *(v3 + 208) = v4;
        *(v3 + 216) = v1;
        v50 = swift_task_alloc();
        *(v50 + 16) = v6;
        LOBYTE(v44) = sub_1DAC78448(sub_1DAA88710, v50, v40);

        v5 = v73;
        sub_1DACB71E4();
        sub_1DACB71E4();
        v2 = sub_1DACB8C74();
        LOBYTE(v6) = sub_1DACB9914();

        LODWORD(a1) = os_log_type_enabled(v2, v6);
        if (v44)
        {
          if (a1)
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v81[0] = v52;
            *v51 = 136315394;
            *(v51 + 4) = sub_1DAA7ABE4(v80, v73, v81);
            *(v51 + 12) = 2080;
            v53 = sub_1DAA7ABE4(v4, v1, v81);

            *(v51 + 14) = v53;
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and ignoring its replacement %s because it's already in the watchlist", v51, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v52, -1, -1);
            MEMORY[0x1E1278C00](v51, -1, -1);
          }

          else
          {
          }

          v65 = *(v3 + 58);
          v67 = *(v3 + 312);
          v66 = *(v3 + 320);
          v68 = *(v3 + 288);
          v69 = *(v3 + 264);
          v70 = v69[5];
          v71 = v69[6];
          v79 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v69 + 2, v70);
          *(v3 + 112) = v68;
          *(v3 + 120) = v79;
          *(v3 + 136) = v67;
          *(v3 + 144) = v66;
          *(v3 + 152) = v65;
          *(v3 + 384) = (*(v71 + 168))(v80, v73, v3 + 112, v70, v71);

          v72 = swift_task_alloc();
          *(v3 + 392) = v72;
          *v72 = v3;
          v72[1] = sub_1DAAEDD8C;
          v37 = v3 + 240;
        }

        else
        {
LABEL_31:
          v75 = v4;
          if (a1)
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v81[0] = v55;
            *v54 = 136315394;
            *(v54 + 4) = sub_1DAA7ABE4(v80, v5, v81);
            *(v54 + 12) = 2080;
            *(v54 + 14) = sub_1DAA7ABE4(v4, v1, v81);
            _os_log_impl(&dword_1DAA3F000, v2, v6, "Deprecating %s and replacing it with %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E1278C00](v55, -1, -1);
            MEMORY[0x1E1278C00](v54, -1, -1);
          }

          v56 = v5;
          v57 = *(v3 + 58);
          v59 = *(v3 + 312);
          v58 = *(v3 + 320);
          v60 = *(v3 + 288);
          v61 = *(v3 + 264);
          v62 = v61[5];
          v63 = v61[6];
          v78 = *(v3 + 296);
          __swift_project_boxed_opaque_existential_1(v61 + 2, v62);
          *(v3 + 64) = v60;
          *(v3 + 72) = v78;
          *(v3 + 88) = v59;
          *(v3 + 96) = v58;
          *(v3 + 104) = v57;
          *(v3 + 408) = (*(v63 + 192))(v80, v56, v75, v1, v3 + 64, v62, v63);

          v64 = swift_task_alloc();
          *(v3 + 416) = v64;
          *v64 = v3;
          v64[1] = sub_1DAAEE8E4;
          v37 = v3 + 224;
        }
      }

      else
      {
LABEL_19:

        sub_1DACB71E4();
        v25 = sub_1DACB8C74();
        v26 = sub_1DACB9914();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v81[0] = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_1DAA7ABE4(v80, v15, v81);
          _os_log_impl(&dword_1DAA3F000, v25, v26, "Deprecating %s with no replacement", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x1E1278C00](v28, -1, -1);
          MEMORY[0x1E1278C00](v27, -1, -1);
        }

        v29 = *(v3 + 58);
        v31 = *(v3 + 312);
        v30 = *(v3 + 320);
        v32 = *(v3 + 288);
        v33 = *(v3 + 264);
        v34 = v33[5];
        v35 = v33[6];
        v77 = *(v3 + 296);
        __swift_project_boxed_opaque_existential_1(v33 + 2, v34);
        *(v3 + 16) = v32;
        *(v3 + 24) = v77;
        *(v3 + 40) = v31;
        *(v3 + 48) = v30;
        *(v3 + 56) = v29;
        *(v3 + 432) = (*(v35 + 168))(v80, v15, v3 + 16, v34, v35);

        v36 = swift_task_alloc();
        *(v3 + 440) = v36;
        *v36 = v3;
        v36[1] = sub_1DAAEF43C;
        v37 = v3 + 160;
      }

      return MEMORY[0x1EEE44EE0](v37);
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    a1 = *(v3 + 352);
    if (v9 >= (((1 << *(v3 + 60)) + 63) >> 6))
    {
      break;
    }

    v8 = *(a1 + 8 * v9 + 64);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_8;
    }
  }

  v23 = *(v3 + 8);

  return v23();
}

uint64_t sub_1DAAEFF94()
{

  v1 = *(v0 + 344);
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE13E2D0);
  v3 = v1;
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Failed to deprecate stock in watchlist. Error=%@", v6, 0xCu);
    sub_1DAAF0D34(v7, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAAF0150()
{

  v1 = *(v0 + 400);
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE13E2D0);
  v3 = v1;
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Failed to deprecate stock in watchlist. Error=%@", v6, 0xCu);
    sub_1DAAF0D34(v7, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAAF030C()
{

  v1 = *(v0 + 424);
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE13E2D0);
  v3 = v1;
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Failed to deprecate stock in watchlist. Error=%@", v6, 0xCu);
    sub_1DAAF0D34(v7, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAAF04C8()
{

  v1 = *(v0 + 448);
  if (qword_1EE11FD98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB8C94();
  __swift_project_value_buffer(v2, qword_1EE13E2D0);
  v3 = v1;
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9904();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Failed to deprecate stock in watchlist. Error=%@", v6, 0xCu);
    sub_1DAAF0D34(v7, &qword_1EE11F790, sub_1DAAF0DE4);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAAF0684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAA94754;

  return sub_1DAAEC598();
}

unint64_t sub_1DAAF0714(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1DACB94C4() != a1 || v9 != a2)
  {
    v10 = sub_1DACBA174();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1DACB9424();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1DAAF0804(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 64);
    v5 = *a1;
    v6 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[4];
    v42 = a1[6];
    v43 = a1[5];
    v41 = a1[7];
    v39 = v8;
    v40 = a1[9];
    v36 = a1[11];
    v37 = a1[10];
    v10 = (a2 + 32);
    v44 = v2 - 1;
    v34 = a1[14];
    v35 = a1[12];
    v31 = a1[15];
    v32 = a1[13];
    v33 = a1[16];
    v38 = v9;
    while (1)
    {
      v11 = v10[7];
      v52 = v10[6];
      v53 = v11;
      v54 = *(v10 + 16);
      v12 = v10[3];
      v48 = v10[2];
      v49 = v12;
      v13 = v10[5];
      v50 = v10[4];
      v51 = v13;
      v14 = v10[1];
      v46 = *v10;
      v47 = v14;
      if ((v46 != v5 || *(&v46 + 1) != v6) && (sub_1DACBA174() & 1) == 0 || (v47 != v7 || *(&v47 + 1) != v8) && (sub_1DACBA174() & 1) == 0 || (v48 != v9 || *(&v48 + 1) != v43) && (sub_1DACBA174() & 1) == 0 || (v49 != v42 || *(&v49 + 1) != v41) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_97;
      }

      if (v50 > 3u)
      {
        if (v50 > 5u)
        {
          if (v50 == 6)
          {
            v20 = 0xE500000000000000;
            v19 = 0x7865646E69;
            if (v4 <= 3)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v19 = 0x75466C617574756DLL;
            v20 = 0xEA0000000000646ELL;
            if (v4 <= 3)
            {
              goto LABEL_60;
            }
          }
        }

        else
        {
          if (v50 == 4)
          {
            v19 = 6714469;
          }

          else
          {
            v19 = 0x73657275747566;
          }

          if (v50 == 4)
          {
            v20 = 0xE300000000000000;
          }

          else
          {
            v20 = 0xE700000000000000;
          }

          if (v4 <= 3)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v15 = 0x75636F7470797263;
        if (v50 != 2)
        {
          v15 = 0x797469757165;
        }

        v16 = 0xEE0079636E657272;
        if (v50 != 2)
        {
          v16 = 0xE600000000000000;
        }

        v17 = 0x79636E6572727563;
        if (!v50)
        {
          v17 = 0x6E776F6E6B6E75;
        }

        v18 = 0xE700000000000000;
        if (v50)
        {
          v18 = 0xE800000000000000;
        }

        if (v50 <= 1u)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        if (v50 <= 1u)
        {
          v20 = v18;
        }

        else
        {
          v20 = v16;
        }

        if (v4 <= 3)
        {
LABEL_60:
          if (v4 > 1)
          {
            if (v4 == 2)
            {
              v27 = 0x75636F7470797263;
            }

            else
            {
              v27 = 0x797469757165;
            }

            if (v4 == 2)
            {
              v26 = 0xEE0079636E657272;
            }

            else
            {
              v26 = 0xE600000000000000;
            }

            if (v19 != v27)
            {
              goto LABEL_75;
            }
          }

          else if (v4)
          {
            v26 = 0xE800000000000000;
            if (v19 != 0x79636E6572727563)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v26 = 0xE700000000000000;
            if (v19 != 0x6E776F6E6B6E75)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_73;
        }
      }

      v21 = 0x75466C617574756DLL;
      if (v4 == 6)
      {
        v21 = 0x7865646E69;
      }

      v22 = 0xEA0000000000646ELL;
      if (v4 == 6)
      {
        v22 = 0xE500000000000000;
      }

      v23 = 0x73657275747566;
      if (v4 == 4)
      {
        v23 = 6714469;
      }

      v24 = 0xE700000000000000;
      if (v4 == 4)
      {
        v24 = 0xE300000000000000;
      }

      if (v4 <= 5)
      {
        v25 = v23;
      }

      else
      {
        v25 = v21;
      }

      if (v4 <= 5)
      {
        v26 = v24;
      }

      else
      {
        v26 = v22;
      }

      if (v19 != v25)
      {
LABEL_75:
        v28 = sub_1DACBA174();
        sub_1DAA806E4(&v46, v45);

        v9 = v38;
        v8 = v39;
        if ((v28 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_76;
      }

LABEL_73:
      if (v20 != v26)
      {
        goto LABEL_75;
      }

      sub_1DAA806E4(&v46, v45);

      v9 = v38;
      v8 = v39;
LABEL_76:
      if ((*(&v50 + 1) != v40 || v51 != v37) && (sub_1DACBA174() & 1) == 0 || (*(&v51 + 1) != v36 || v52 != v35) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_96;
      }

      if (v53)
      {
        if (!v34 || (*(&v52 + 1) != v32 || v53 != v34) && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else if (v34)
      {
        goto LABEL_96;
      }

      if (!v54)
      {
        if (!v33)
        {
          goto LABEL_101;
        }

LABEL_96:
        sub_1DAA9B1C8(&v46);
        goto LABEL_97;
      }

      if (!v33)
      {
        goto LABEL_96;
      }

      if (*(&v53 + 1) == v31 && v54 == v33)
      {
LABEL_101:
        sub_1DAA9B1C8(&v46);
        return v3;
      }

      v29 = sub_1DACBA174();
      sub_1DAA9B1C8(&v46);
      if (v29)
      {
        return v3;
      }

LABEL_97:
      if (v44 == v3)
      {
        return 0;
      }

      v10 = (v10 + 136);
      ++v3;
    }
  }

  return 0;
}

uint64_t sub_1DAAF0D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAAF0D90(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1DAAF0D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAAF0DE4()
{
  result = qword_1EE11F798;
  if (!qword_1EE11F798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F798);
  }

  return result;
}

unint64_t sub_1DAAF0E30(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1DACB94E4();
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DAAF0E98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DAAF0EE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore11SDSMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DAAF0F70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAAF0FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAAF1014(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646174654D736473;
  }

  else
  {
    v3 = 0x6D6574497377656ELL;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xEB00000000617461;
  }

  if (*a2)
  {
    v5 = 0x646174654D736473;
  }

  else
  {
    v5 = 0x6D6574497377656ELL;
  }

  if (*a2)
  {
    v6 = 0xEB00000000617461;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAAF10C8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF1158(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAAF11D4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF1260@<X0>(char *a2@<X8>)
{
  v3 = sub_1DACB9F04();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DAAF12C0(uint64_t *a1@<X8>)
{
  v2 = 0x6D6574497377656ELL;
  if (*v1)
  {
    v2 = 0x646174654D736473;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xEB00000000617461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAAF130C()
{
  if (*v0)
  {
    return 0x646174654D736473;
  }

  else
  {
    return 0x6D6574497377656ELL;
  }
}

uint64_t sub_1DAAF1354@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAAF13B8(uint64_t a1)
{
  v2 = sub_1DAAF2370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF13F4(uint64_t a1)
{
  v2 = sub_1DAAF2370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAF1430(void *a1)
{
  v3 = v1;
  sub_1DAAF282C(0, &qword_1ECBE6C30, sub_1DAAF2370, &type metadata for SDSNewsResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF2370();
  sub_1DACBA304();
  *&v12[0] = *v3;
  v14 = 0;
  sub_1DAAF23C4();
  sub_1DAAF2894(&qword_1ECBE6C38, sub_1DAAF2900, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v12[0] = *(v3 + 8);
    v12[1] = v10;
    v13 = *(v3 + 40);
    v14 = 1;
    sub_1DAA6EF04();
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAAF1648()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF1728(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAAF17F4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAAF18D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAAF2468(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAAF1900(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x72656469766F7270;
  v5 = 0xE700000000000000;
  v6 = 0x7972616D6D7573;
  v7 = 0xE500000000000000;
  v8 = 0x656C746974;
  if (v2 != 3)
  {
    v8 = 7107189;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x446873696C627570;
    v3 = 0xEB00000000657461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAAF199C()
{
  v1 = *v0;
  v2 = 0x72656469766F7270;
  v3 = 0x7972616D6D7573;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x446873696C627570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DAAF1A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAAF2468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAAF1A68(uint64_t a1)
{
  v2 = sub_1DAAF27D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF1AA4(uint64_t a1)
{
  v2 = sub_1DAAF27D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAAF1AE0(void *a1)
{
  sub_1DAAF282C(0, &qword_1ECBE6C28, sub_1DAAF27D8, &type metadata for SDSNewsResponse.SDSNewsResponseItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF27D8();
  sub_1DACBA304();
  v14 = 0;
  sub_1DACBA094();
  if (!v1)
  {
    v13 = 1;
    sub_1DACBA094();
    v12 = 2;
    sub_1DACBA024();
    v11 = 3;
    sub_1DACBA094();
    v10 = 4;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

__n128 sub_1DAAF1CCC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DAAF24B4(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1DAAF1D30(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = a1[6];
  v18 = a1[7];
  v15 = a1[9];
  v16 = a1[8];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v13 = a2[9];
  v14 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v17 != v10 || v18 != v11) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1DACBA174();
}

double sub_1DAAF1EB8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DAAF20D4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

BOOL sub_1DAAF1F14(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1DAAF1F5C(v7, v8);
}

BOOL sub_1DAAF1F5C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1DAC37DEC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1];
  v4 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v10 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  if (!v4)
  {
    if (!v9)
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (!v9)
  {
LABEL_6:
    sub_1DAAF2954(v10, v9, v11, v12, v13);
    sub_1DAAF2954(v5, v4, v7, v6, v8);
    sub_1DAA75E60(v5, v4, v7, v6, v8);
    sub_1DAA75E60(v10, v9, v11, v12, v13);
    return 0;
  }

  v16[0] = v5;
  v16[1] = v4;
  v16[2] = v7;
  v16[3] = v6;
  v16[4] = v8;
  v17[0] = v10;
  v17[1] = v9;
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  sub_1DAAF2954(v10, v9, v11, v12, v13);
  sub_1DAAF2954(v5, v4, v7, v6, v8);
  v14 = sub_1DAC3C194(v16, v17);

  sub_1DAA75E60(v5, v4, v7, v6, v8);
  return v14;
}

uint64_t sub_1DAAF20D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1DAAF282C(0, &qword_1ECBE6BF0, sub_1DAAF2370, &type metadata for SDSNewsResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF2370();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v17;
  sub_1DAAF23C4();
  v21 = 0;
  sub_1DAAF2894(&qword_1ECBE6C08, sub_1DAAF2414, MEMORY[0x1E69E6330]);
  sub_1DACB9F84();
  if (v18)
  {
    v11 = v18;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v21 = 1;
  sub_1DAA6EEB0();
  sub_1DACB9F84();
  (*(v9 + 8))(v8, v5);
  v12 = v20;
  v15 = v19;
  v16 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v14 = v16;
  *(v10 + 24) = v15;
  *(v10 + 8) = v14;
  *(v10 + 40) = v12;
  return result;
}

unint64_t sub_1DAAF2370()
{
  result = qword_1ECBE6BF8;
  if (!qword_1ECBE6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6BF8);
  }

  return result;
}

void sub_1DAAF23C4()
{
  if (!qword_1ECBE6C00)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6C00);
    }
  }
}

unint64_t sub_1DAAF2414()
{
  result = qword_1ECBE6C10;
  if (!qword_1ECBE6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C10);
  }

  return result;
}

unint64_t sub_1DAAF2468(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DAAF24B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  sub_1DAAF282C(0, &qword_1ECBE6C18, sub_1DAAF27D8, &type metadata for SDSNewsResponse.SDSNewsResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF27D8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v38 = 0;
  v10 = v5;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v37 = 1;
  v14 = sub_1DACB9FA4();
  v16 = v15;
  v32 = v14;
  v36 = 2;
  v30 = sub_1DACB9F34();
  v31 = v17;
  v35 = 3;
  v28 = sub_1DACB9FA4();
  v29 = v18;
  v34 = 4;
  v19 = sub_1DACB9FA4();
  v20 = v8;
  v22 = v21;
  (*(v9 + 8))(v20, v10);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v24 = v32;
  v25 = v33;
  *v33 = v11;
  v25[1] = v13;
  v25[2] = v24;
  v25[3] = v16;
  v26 = v31;
  v25[4] = v30;
  v25[5] = v26;
  v27 = v29;
  v25[6] = v28;
  v25[7] = v27;
  v25[8] = v19;
  v25[9] = v22;
  return result;
}

unint64_t sub_1DAAF27D8()
{
  result = qword_1ECBE6C20;
  if (!qword_1ECBE6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C20);
  }

  return result;
}

void sub_1DAAF282C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAAF2894(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAAF23C4();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAAF2900()
{
  result = qword_1ECBE6C40;
  if (!qword_1ECBE6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C40);
  }

  return result;
}

void sub_1DAAF2954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    sub_1DACB71E4();
    sub_1DACB71E4();

    sub_1DACB71E4();
  }
}

unint64_t sub_1DAAF29C8()
{
  result = qword_1ECBE6C48;
  if (!qword_1ECBE6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C48);
  }

  return result;
}

unint64_t sub_1DAAF2A20()
{
  result = qword_1ECBE6C50;
  if (!qword_1ECBE6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C50);
  }

  return result;
}

unint64_t sub_1DAAF2A78()
{
  result = qword_1ECBE6C58;
  if (!qword_1ECBE6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C58);
  }

  return result;
}

unint64_t sub_1DAAF2AD0()
{
  result = qword_1ECBE6C60;
  if (!qword_1ECBE6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C60);
  }

  return result;
}

unint64_t sub_1DAAF2B28()
{
  result = qword_1ECBE6C68;
  if (!qword_1ECBE6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C68);
  }

  return result;
}

unint64_t sub_1DAAF2B80()
{
  result = qword_1ECBE6C70;
  if (!qword_1ECBE6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C70);
  }

  return result;
}

unint64_t sub_1DAAF2BE8()
{
  result = qword_1ECBE6C78;
  if (!qword_1ECBE6C78)
  {
    sub_1DAAF2C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C78);
  }

  return result;
}

void sub_1DAAF2C40()
{
  if (!qword_1ECBE6C80)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE6C80);
    }
  }
}

unint64_t sub_1DAAF2CA4()
{
  result = qword_1ECBE6C88;
  if (!qword_1ECBE6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6C88);
  }

  return result;
}

uint64_t sub_1DAAF2D1C()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE6C90);
  __swift_project_value_buffer(v6, qword_1ECBE6C90);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAAF2F04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE6C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAAF2FB4()
{
  sub_1DAAF5D74(0, &qword_1ECBE6CA8, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAAF5D74(0, &qword_1ECBE6CB0, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DAAF3184();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAF31FC(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DAAF3184()
{
  result = qword_1EE11E6B8;
  if (!qword_1EE11E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6B8);
  }

  return result;
}

void sub_1DAAF31FC(uint64_t a1)
{
  if (!qword_1ECBE6CB8)
  {
    sub_1DAAF5D74(255, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6CB8);
    }
  }
}

uint64_t sub_1DAAF3294(void *a1, uint64_t *a2)
{
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t (*sub_1DAAF3360(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAAF33F8(uint64_t a1, uint64_t *a2)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1DAAF35B8(a1, &v10 - v7);
  sub_1DAAF35B8(v8, v6);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAF3638(v8);
}

uint64_t sub_1DAAF3510(uint64_t a1)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAF35B8(a1, &v5 - v3);
  sub_1DACB6FC4();
  return sub_1DAAF3638(a1);
}

uint64_t sub_1DAAF35B8(uint64_t a1, uint64_t a2)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAF3638(uint64_t a1)
{
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1DAAF36B0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAAF376C(uint64_t a1, uint64_t *a2)
{
  sub_1DAA4D678(a1, v4);
  sub_1DAA4D678(v4, &v3);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6D34();
  __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1DAAF37F8(void *a1)
{
  sub_1DAA4D678(a1, v3);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAAF383C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAAF38D4@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v55 = v40 - v2;
  v59 = sub_1DACB7274();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA1440(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v40 - v7;
  sub_1DAAA1440(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = v40 - v9;
  v10 = sub_1DACB78E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1DACB7904();
  v51 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v40[1] = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAF5D74(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v53 = v19;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v21 = *(v11 + 104);
  v41 = *MEMORY[0x1E6968DF0];
  v20 = v41;
  v42 = v10;
  v21(v13, v41, v10);
  v43 = v21;
  v44 = v11 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v21(v13, v20, v10);
  v22 = v47;
  sub_1DACB7914();
  v23 = *(v17 + 56);
  v50 = v17 + 56;
  v52 = v23;
  v23(v22, 0, 1, v16);
  v24 = sub_1DACB6E84();
  v66 = 0;
  v67 = 0;
  v65 = 0;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v49 = v26;
  v48 = v25 + 56;
  v26(v56, 1, 1, v24);
  v26(v57, 1, 1, v24);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  v54 = sub_1DACB6D94();
  v62 = 0u;
  v63 = 0u;
  v64 = 0;
  sub_1DACB6D84();
  *&v62 = sub_1DACB6D54();
  v45 = *MEMORY[0x1E695A500];
  v27 = *(v61 + 104);
  v61 += 104;
  v46 = v27;
  v27(v58);
  sub_1DAAF4218();
  sub_1DAADA468();
  *v60 = sub_1DACB6FF4();
  sub_1DAAF426C(0);
  v53 = v28;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v43(v13, v41, v42);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v31(v13, v29, v30);
  sub_1DACB7914();
  v52(v22, 0, 1, v51);
  v32 = type metadata accessor for SymbolEntity(0);
  (*(*(v32 - 8) + 56))(v55, 1, 1, v32);
  v33 = v49;
  v49(v56, 1, 1, v24);
  v33(v57, 1, 1, v24);
  *&v62 = sub_1DAB1CC4C();
  *(&v62 + 1) = v34;
  *&v63 = v35;
  *(&v63 + 1) = v36;
  v46(v58, v45, v59);
  sub_1DAAF59D0();
  v37 = sub_1DACB7004();
  v38 = v60;
  v60[1] = v37;
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948, &protocol descriptor for StocksIntentHandlerType);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v38[2] = result;
  return result;
}