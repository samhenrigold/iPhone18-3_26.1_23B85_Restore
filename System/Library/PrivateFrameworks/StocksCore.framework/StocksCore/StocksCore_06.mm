void sub_1DAAF41C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA4436C(255, a3, a4);
    v5 = sub_1DACB6D64();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAAF4218()
{
  result = qword_1ECBE6CC0;
  if (!qword_1ECBE6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CC0);
  }

  return result;
}

void sub_1DAAF426C(uint64_t a1)
{
  if (!qword_1ECBE6CC8)
  {
    sub_1DAAA1440(255, qword_1EE11EF28, type metadata accessor for SymbolEntity);
    sub_1DAAA11C4();
    v1 = sub_1DACB7044();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6CC8);
    }
  }
}

uint64_t sub_1DAAF42EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a2;
  v74 = a3;
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = v49 - v7;
  v73 = sub_1DACB7274();
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAAA1440(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v49 - v12;
  sub_1DAAA1440(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = v49 - v14;
  v15 = sub_1DACB78E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v69 = sub_1DACB7904();
  v21 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v49[2] = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  sub_1DAAF5D74(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v60 = v23;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v24 = *(v16 + 104);
  v25 = *MEMORY[0x1E6968DF0];
  v61 = "Symbol to Watchlist' intent";
  v63 = *(a1 + 1);
  v26 = v25;
  v50 = v25;
  v51 = v15;
  v24(v18);
  v53 = v24;
  v52 = v16 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  (v24)(v18, v26, v15);
  v27 = v68;
  sub_1DACB7914();
  v28 = *(v21 + 56);
  v58 = v21 + 56;
  v59 = v28;
  v28(v27, 0, 1, v69);
  v29 = sub_1DACB6E84();
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v57 = v31;
  v56 = v30 + 56;
  v31(v70, 1, 1, v29);
  v31(v71, 1, 1, v29);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  v62 = sub_1DACB6D94();
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  sub_1DACB6D84();
  *&v76[0] = sub_1DACB6D54();
  v54 = *MEMORY[0x1E695A500];
  v32 = *(v75 + 104);
  v75 += 104;
  v55 = v32;
  v32(v72);
  sub_1DAAF4218();
  sub_1DAADA468();
  v33 = v68;
  v60 = sub_1DACB6FF4();
  *v74 = v60;
  sub_1DAAF426C(0);
  v49[1] = v34;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v35 = v50;
  v36 = v51;
  v37 = v53;
  (v53)(v18, v50, v51);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v37(v18, v35, v36);
  sub_1DACB7914();
  v59(v33, 0, 1, v69);
  v38 = type metadata accessor for SymbolEntity(0);
  v39 = v65;
  (*(*(v38 - 8) + 56))(v65, 1, 1, v38);
  v40 = v57;
  v57(v70, 1, 1, v29);
  v40(v71, 1, 1, v29);
  *&v76[0] = sub_1DAB1CC4C();
  *(&v76[0] + 1) = v41;
  *&v76[1] = v42;
  *(&v76[1] + 1) = v43;
  v55(v72, v54, v73);
  sub_1DAAF59D0();
  v44 = v39;
  v45 = sub_1DACB7004();
  v46 = v74;
  v74[1] = v45;
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948, &protocol descriptor for StocksIntentHandlerType);
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  sub_1DACB6D84();
  v46[2] = sub_1DACB6D54();
  *&v76[0] = v64;
  *(v76 + 8) = v63;
  sub_1DACB6FC4();
  v47 = v67;
  sub_1DAAF35B8(v67, v44);
  sub_1DAAF35B8(v44, v66);
  sub_1DACB6FC4();
  sub_1DAAF3638(v47);
  return sub_1DAAF3638(v44);
}

uint64_t sub_1DAAF4CC8(uint64_t a1)
{
  *(v2 + 160) = a1;
  sub_1DAAA1440(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  *(v2 + 168) = swift_task_alloc();
  v3 = type metadata accessor for SymbolEntity(0);
  *(v2 + 176) = v3;
  *(v2 + 184) = *(v3 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *v1;
  *(v2 + 224) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAAF4DEC, 0, 0);
}

uint64_t sub_1DAAF4DEC(uint64_t a1)
{
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  sub_1DACB6D24();
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v1[12] = v4;
  v1[13] = v3;
  v1[14] = v2 | 0x6000000000000000;
  v7 = *(v6 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v1[29] = v8;
  *v8 = v1;
  v8[1] = sub_1DAAF4F6C;

  return (v10)(v1 + 12, v5, v6);
}

uint64_t sub_1DAAF4F6C()
{
  v2 = *v1;
  v2[30] = v0;

  sub_1DAAF5A24(v2[12], v2[13], v2[14]);
  if (v0)
  {
    v3 = sub_1DAAF5490;
  }

  else
  {
    v3 = sub_1DAAF508C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAAF508C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DACB6FB4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DAAF3638(*(v0 + 168));
    sub_1DACB6EB4();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    sub_1DAAF5AA4(*(v0 + 168), v6);
    sub_1DACB6D24();
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
    sub_1DAAA2C80(v6, v7);
    sub_1DAC45D08(v7, (v0 + 144));
    *(v0 + 120) = *(v0 + 144);
    *(v0 + 136) = 0x4000000000000000;
    v11 = (*(v9 + 8) + **(v9 + 8));
    v10 = swift_task_alloc();
    *(v0 + 248) = v10;
    *v10 = v0;
    v10[1] = sub_1DAAF52AC;

    return v11(v0 + 120, v8, v9);
  }
}

uint64_t sub_1DAAF52AC()
{
  v2 = *v1;
  v2[32] = v0;

  sub_1DAAF5A24(v2[15], v2[16], v2[17]);
  if (v0)
  {
    v3 = sub_1DAAF5518;
  }

  else
  {
    v3 = sub_1DAAF53F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAAF53F8()
{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_1DACB6EB4();
  sub_1DAAD5434(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DAAF5490()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAAF5518()
{
  sub_1DAAD5434(v0[25]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t (*sub_1DAAF560C(uint64_t *a1))()
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

uint64_t sub_1DAAF5680@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1DAAF5728(uint64_t a1, uint64_t a2)
{
  sub_1DAAF5D74(0, &qword_1ECBE6CA8, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAF5D74(0, &qword_1ECBE6CB0, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAAF31FC(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAAF58F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAAF4CC8(a1);
}

uint64_t sub_1DAAF5994(uint64_t a1)
{
  v2 = sub_1DAAF3184();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DAAF59D0()
{
  result = qword_1ECBE6CD0;
  if (!qword_1ECBE6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CD0);
  }

  return result;
}

uint64_t sub_1DAAF5A24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v3 >= 2)
    {
      return v4;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      return v4;
    }

    goto LABEL_6;
  }

LABEL_7:
}

uint64_t sub_1DAAF5AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAAF5B0C()
{
  result = qword_1ECBE6CD8;
  if (!qword_1ECBE6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CD8);
  }

  return result;
}

unint64_t sub_1DAAF5B68()
{
  result = qword_1EE11E6B0;
  if (!qword_1EE11E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6B0);
  }

  return result;
}

unint64_t sub_1DAAF5BC0()
{
  result = qword_1EE11E6C0;
  if (!qword_1EE11E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E6C0);
  }

  return result;
}

uint64_t sub_1DAAF5C4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1DAAF5C94(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1DAAF5CE4()
{
  result = qword_1ECBE6CE0;
  if (!qword_1ECBE6CE0)
  {
    sub_1DAAF5D74(255, &qword_1ECBE6CE8, sub_1DAAF3184, &type metadata for OpenWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CE0);
  }

  return result;
}

void sub_1DAAF5D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

StocksCore::AdConfiguration __swiftcall AdConfiguration.init(segmentsEnabled:feedNumberofViewportsBetweenAds:articleNumberofViewportsBetweenAds:)(Swift::Bool_optional segmentsEnabled, Swift::Double_optional feedNumberofViewportsBetweenAds, Swift::Double_optional articleNumberofViewportsBetweenAds)
{
  v6 = *&feedNumberofViewportsBetweenAds.is_nil;
  v7 = 1.0;
  if (articleNumberofViewportsBetweenAds.is_nil)
  {
    v6 = 1.0;
  }

  *v5 = segmentsEnabled.value;
  if ((v4 & 1) == 0)
  {
    v7 = v3;
  }

  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  result.articleNumberofViewportsBetweenAds = v7;
  result.feedNumberofViewportsBetweenAds = v6;
  result.segmentsEnabled = segmentsEnabled.value;
  return result;
}

uint64_t AdConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAAF6974(0, &qword_1EE123CE0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF6424();
  sub_1DACBA2F4();
  if (!v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    LOBYTE(v31) = 0;
    sub_1DACB9F84();
    v30 = v35;
    if (v35 == 2)
    {
      swift_beginAccess();
      v10 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        v10 = sub_1DAA9A3B0((v11 > 1), v12 + 1, 1, v10);
      }

      *(v10 + 2) = v12 + 1;
      v13 = &v10[16 * v12];
      *(v13 + 4) = 0x73746E656D676573;
      *(v13 + 5) = 0xEF64656C62616E45;
      v36 = v10;
      swift_endAccess();
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v35 = 1;
    sub_1DACB9F84();
    v14 = v31;
    v29 = v32;
    if (v32)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1DAA9A3B0(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_1DAA9A3B0((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v16 + 1;
      v17 = &v10[16 * v16];
      *(v17 + 4) = 0xD00000000000001FLL;
      *(v17 + 5) = 0x80000001DACE3FD0;
      v36 = v10;
      swift_endAccess();
    }

    LOBYTE(v31) = 2;
    sub_1DACB9F84();
    if (v34)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1DAA9A3B0(0, *(v10 + 2) + 1, 1, v10);
      }

      v20 = *(v10 + 2);
      v19 = *(v10 + 3);
      if (v20 >= v19 >> 1)
      {
        v10 = sub_1DAA9A3B0((v19 > 1), v20 + 1, 1, v10);
      }

      *(v10 + 2) = v20 + 1;
      v21 = &v10[16 * v20];
      *(v21 + 4) = 0xD000000000000022;
      *(v21 + 5) = 0x80000001DACE3FF0;
      v22 = 1.0;
      if (v29)
      {
        v14 = 1.0;
      }
    }

    else
    {
      v22 = v33;
      if (v29)
      {
        v14 = 1.0;
      }

      if (!*(v10 + 2))
      {
        sub_1DAA41DCC();
        v25 = sub_1DACB9AD4();
        v27 = sub_1DACB9914();
        sub_1DACB8C64("loaded iAd configuration with no need for fallback values", 57, 2, &dword_1DAA3F000, v25, v27, MEMORY[0x1E69E7CC0]);
        goto LABEL_27;
      }
    }

    sub_1DAA4DCBC(0, &qword_1EE123B20, sub_1DAADF88C);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v23 + 56) = v24;
    *(v23 + 64) = sub_1DAAF691C();
    *(v23 + 32) = v10;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v25 = sub_1DACB9AD4();
    v26 = sub_1DACB9914();
    sub_1DACB8C64("loaded iAd configuration with fallback values for keys: %@", 58, 2, &dword_1DAA3F000, v25, v26, v23);

LABEL_27:

    (*(v7 + 8))(v9, v6);

    *a2 = v30 & 1;
    *(a2 + 8) = v14;
    *(a2 + 16) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAAF63B8()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E656D676573;
  }
}

unint64_t sub_1DAAF6424()
{
  result = qword_1EE124ED0;
  if (!qword_1EE124ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124ED0);
  }

  return result;
}

uint64_t sub_1DAAF6478@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAAF6B98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAAF64A0(uint64_t a1)
{
  v2 = sub_1DAAF6424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF64DC(uint64_t a1)
{
  v2 = sub_1DAAF6424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AdConfiguration.encode(to:)(void *a1)
{
  sub_1DAAF6974(0, &qword_1EE123C20, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF6424();
  sub_1DACBA304();
  v12 = 0;
  sub_1DACBA0A4();
  if (!v1)
  {
    v11 = 1;
    sub_1DACBA0B4();
    v10 = 2;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1DAAF671C(char *a1)
{
  v1 = *a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1DAA4DCBC(0, &qword_1EE11F4A0, sub_1DAAF6CC4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC2610;
  sub_1DACB9C14();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = v1;
  sub_1DACB9C14();
  v6 = MEMORY[0x1E69E63B0];
  *(inited + 168) = MEMORY[0x1E69E63B0];
  *(inited + 144) = v3;
  sub_1DACB9C14();
  *(inited + 240) = v6;
  *(inited + 216) = v2;
  sub_1DAB68448(inited);
  swift_setDeallocating();
  sub_1DAAF6CC4();
  swift_arrayDestroy();
  v7 = sub_1DACB9114();

  v8 = [v4 initWithConfigDictionary_];

  if (!v8)
  {
    __break(1u);
  }
}

uint64_t sub_1DAAF690C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_1DAAF691C()
{
  result = qword_1EE123E80;
  if (!qword_1EE123E80)
  {
    sub_1DAA613E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E80);
  }

  return result;
}

void sub_1DAAF6974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAAF6424();
    v7 = a3(a1, &type metadata for AdConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AdConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AdConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DAAF6A94()
{
  result = qword_1ECBE6CF0;
  if (!qword_1ECBE6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CF0);
  }

  return result;
}

unint64_t sub_1DAAF6AEC()
{
  result = qword_1EE124EC0;
  if (!qword_1EE124EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EC0);
  }

  return result;
}

unint64_t sub_1DAAF6B44()
{
  result = qword_1EE124EC8;
  if (!qword_1EE124EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124EC8);
  }

  return result;
}

uint64_t sub_1DAAF6B98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E656D676573 && a2 == 0xEF64656C62616E45;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001DACE3FD0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001DACE3FF0 == a2)
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

void sub_1DAAF6CC4()
{
  if (!qword_1EE11F770)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F770);
    }
  }
}

void *PaywallConfig.init(paywallType:title:descriptionTrial:descriptionNonTrial:learnMoreTitle:learnMoreURL:subscriptionButton:visualSpecification:compactPortraitTopOffsetRatio:compactLandscapeTopOffsetRatio:regularPortraitTopOffsetRatio:regularLandscapeTopOffsetRatio:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, const void *a15, double a16, char a17, double a18, char a19, double a20, char a21, double a22, char a23)
{
  v23 = a2;
  v26 = a13;
  v28 = a11;
  if (!a2)
  {
    a1 = 0;
    v23 = 0xE000000000000000;
  }

  if (!a4)
  {
    a3 = 0;
    a4 = 0xE000000000000000;
  }

  if (!a6)
  {
    a5 = 0;
    a6 = 0xE000000000000000;
  }

  if (!a8)
  {
    a7 = 0;
    a8 = 0xE000000000000000;
  }

  if (!a11)
  {
    a10 = 0;
    v28 = 0xE000000000000000;
  }

  if (!a13)
  {
    a12 = 0;
    v26 = 0xE000000000000000;
  }

  if (a17)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = a16;
  }

  *a9 = a1;
  *(a9 + 8) = v23;
  if (a19)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = a18;
  }

  if (a21)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = a20;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  if (a23)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = a22;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = v28;
  *(a9 + 80) = a12;
  *(a9 + 88) = v26;
  v33 = *(a14 + 112);
  *(a9 + 192) = *(a14 + 96);
  *(a9 + 208) = v33;
  *(a9 + 224) = *(a14 + 128);
  *(a9 + 240) = *(a14 + 144);
  v34 = *(a14 + 48);
  *(a9 + 128) = *(a14 + 32);
  *(a9 + 144) = v34;
  v35 = *(a14 + 80);
  *(a9 + 160) = *(a14 + 64);
  *(a9 + 176) = v35;
  v36 = *(a14 + 16);
  *(a9 + 96) = *a14;
  *(a9 + 112) = v36;
  result = memcpy((a9 + 248), a15, 0x170uLL);
  *(a9 + 616) = v29;
  *(a9 + 624) = v30;
  *(a9 + 632) = v31;
  *(a9 + 640) = v32;
  return result;
}

uint64_t sub_1DAAF6E5C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD00000000000001DLL;
      if (a1 != 10)
      {
        v6 = 0xD00000000000001ELL;
      }

      if (a1 == 9)
      {
        return 0xD00000000000001ELL;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      v5 = 0xD000000000000013;
      if (a1 != 7)
      {
        v5 = 0xD00000000000001DLL;
      }

      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x546C6C6177796170;
    v2 = 0x726F4D6E7261656CLL;
    if (a1 != 4)
    {
      v2 = 0x726F4D6E7261656CLL;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
    if (a1 == 1)
    {
      v3 = 0x656C746974;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAAF7004(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAAF6E5C(*a1);
  v5 = v4;
  if (v3 == sub_1DAAF6E5C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAAF708C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAAF6E5C(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAAF70F0(uint64_t a1)
{
  sub_1DAAF6E5C(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAAF7144(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAAF6E5C(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAAF71A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAAF9B60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DAAF71D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAAF6E5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAAF721C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAAF9B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAAF7250(uint64_t a1)
{
  v2 = sub_1DAAF84B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAAF728C(uint64_t a1)
{
  v2 = sub_1DAAF84B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PaywallConfig.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAAF9670(0, &qword_1EE123CF8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v87 - v8;
  v10 = a1[3];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1DAAF84B8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v11 = v7;
    v102 = a2;
    v141 = MEMORY[0x1E69E7CC0];
    v115[0] = 0;
    sub_1DACB9F84();
    v101 = v116[0];
    v12 = v116[1];
    if (v116[1])
    {
      v13 = v11;
      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_beginAccess();
      v14 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1DAA9A3B0((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[16 * v16];
      *(v17 + 4) = 0x546C6C6177796170;
      *(v17 + 5) = 0xEB00000000657079;
      v141 = v14;
      swift_endAccess();
      v13 = v11;
    }

    v115[0] = 1;
    sub_1DACB9F84();
    v99 = v116[0];
    v100 = v116[1];
    if (!v116[1])
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v14);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = 0x656C746974;
      *(v20 + 5) = 0xE500000000000000;
      v141 = v14;
      swift_endAccess();
      v13 = v11;
    }

    v115[0] = 2;
    sub_1DACB9F84();
    v96 = v116[0];
    v98 = v116[1];
    if (!v116[1])
    {
      v97 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_1DAA9A3B0((v21 > 1), v22 + 1, 1, v14);
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = 0xD000000000000010;
      *(v23 + 5) = 0x80000001DACE0D90;
      v141 = v14;
      swift_endAccess();
      v2 = v97;
    }

    v115[0] = 3;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v13 + 8))(v9, v6);
LABEL_42:

      return __swift_destroy_boxed_opaque_existential_1(v142);
    }

    v94 = v116[0];
    v95 = v116[1];
    if (!v116[1])
    {
      v97 = 0;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v25 = *(v14 + 2);
      v24 = *(v14 + 3);
      if (v25 >= v24 >> 1)
      {
        v14 = sub_1DAA9A3B0((v24 > 1), v25 + 1, 1, v14);
      }

      *(v14 + 2) = v25 + 1;
      v26 = &v14[16 * v25];
      *(v26 + 4) = 0xD000000000000013;
      *(v26 + 5) = 0x80000001DACE0DB0;
      v141 = v14;
      swift_endAccess();
      v2 = v97;
    }

    v115[0] = 4;
    sub_1DACB9F84();
    if (v2)
    {
      (*(v13 + 8))(v9, v6);

      goto LABEL_42;
    }

    v93 = v116[0];
    v97 = v116[1];
    if (!v116[1])
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v28 = *(v14 + 2);
      v27 = *(v14 + 3);
      if (v28 >= v27 >> 1)
      {
        v14 = sub_1DAA9A3B0((v27 > 1), v28 + 1, 1, v14);
      }

      *(v14 + 2) = v28 + 1;
      v29 = &v14[16 * v28];
      strcpy(v29 + 32, "learnMoreTitle");
      v29[47] = -18;
      v141 = v14;
      swift_endAccess();
    }

    v115[0] = 5;
    sub_1DACB9F84();
    v91 = v116[0];
    v92 = v116[1];
    if (!v116[1])
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v31 = *(v14 + 2);
      v30 = *(v14 + 3);
      if (v31 >= v30 >> 1)
      {
        v14 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v14);
      }

      *(v14 + 2) = v31 + 1;
      v32 = &v14[16 * v31];
      strcpy(v32 + 32, "learnMoreURL");
      v32[45] = 0;
      *(v32 + 23) = -5120;
      v141 = v14;
      swift_endAccess();
    }

    v140 = 6;
    sub_1DAAF8A6C();
    sub_1DACB9F84();
    v128[6] = v136;
    v128[7] = v137;
    v128[8] = v138;
    v129 = v139;
    v128[2] = v132;
    v128[3] = v133;
    v128[4] = v134;
    v128[5] = v135;
    v128[0] = v130;
    v128[1] = v131;
    if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v128) == 1)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v35 = *(v14 + 2);
      v34 = *(v14 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v90 = v35 + 1;
        v84 = v14;
        v85 = v35;
        v86 = sub_1DAA9A3B0((v34 > 1), v35 + 1, 1, v84);
        v36 = v90;
        v35 = v85;
        v14 = v86;
      }

      *(v14 + 2) = v36;
      v37 = &v14[16 * v35];
      *(v37 + 4) = 0xD000000000000012;
      *(v37 + 5) = 0x80000001DACE0DE0;
      v141 = v14;
      swift_endAccess();
    }

    v124 = v136;
    v125 = v137;
    v126 = v138;
    v127 = v139;
    v120 = v132;
    v121 = v133;
    v122 = v134;
    v123 = v135;
    v118 = v130;
    v119 = v131;
    v117[375] = 7;
    sub_1DAAF8AC0();
    sub_1DACB9F84();
    memcpy(v116, v117, sizeof(v116));
    if (sub_1DAAF8B14(v116) == 1)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v39 = *(v14 + 2);
      v38 = *(v14 + 3);
      if (v39 >= v38 >> 1)
      {
        v14 = sub_1DAA9A3B0((v38 > 1), v39 + 1, 1, v14);
      }

      *(v14 + 2) = v39 + 1;
      v40 = &v14[16 * v39];
      *(v40 + 4) = 0xD000000000000013;
      *(v40 + 5) = 0x80000001DACE0E00;
      v141 = v14;
      swift_endAccess();
    }

    memcpy(v115, v117, sizeof(v115));
    v114 = 8;
    sub_1DACB9F84();
    v41 = *&v104;
    v42 = BYTE8(v104);
    if (BYTE8(v104))
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v44 = *(v14 + 2);
      v43 = *(v14 + 3);
      v90 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v14 = sub_1DAA9A3B0((v43 > 1), v90, 1, v14);
      }

      *(v14 + 2) = v90;
      v45 = &v14[16 * v44];
      *(v45 + 4) = 0xD00000000000001DLL;
      *(v45 + 5) = 0x80000001DACE0E20;
      v141 = v14;
      swift_endAccess();
    }

    v114 = 9;
    sub_1DACB9F84();
    v46 = *&v104;
    LODWORD(v90) = BYTE8(v104);
    if (BYTE8(v104))
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v48 = *(v14 + 2);
      v47 = *(v14 + 3);
      v89 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v14 = sub_1DAA9A3B0((v47 > 1), v89, 1, v14);
      }

      *(v14 + 2) = v89;
      v49 = &v14[16 * v48];
      *(v49 + 4) = 0xD00000000000001ELL;
      *(v49 + 5) = 0x80000001DACE0E40;
      v141 = v14;
      swift_endAccess();
    }

    v114 = 10;
    sub_1DACB9F84();
    v50 = *&v104;
    LODWORD(v89) = BYTE8(v104);
    if (BYTE8(v104))
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v52 = *(v14 + 2);
      v51 = *(v14 + 3);
      v88 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v14 = sub_1DAA9A3B0((v51 > 1), v88, 1, v14);
      }

      *(v14 + 2) = v88;
      v53 = &v14[16 * v52];
      *(v53 + 4) = 0xD00000000000001DLL;
      *(v53 + 5) = 0x80000001DACE0E60;
      v141 = v14;
      swift_endAccess();
    }

    LOBYTE(v104) = 11;
    sub_1DACB9F84();
    if (v103[1])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DAA9A3B0(0, *(v14 + 2) + 1, 1, v14);
      }

      v55 = *(v14 + 2);
      v54 = *(v14 + 3);
      v88 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v14 = sub_1DAA9A3B0((v54 > 1), v88, 1, v14);
      }

      *(v14 + 2) = v88;
      v56 = &v14[16 * v55];
      *(v56 + 4) = 0xD00000000000001ELL;
      *(v56 + 5) = 0x80000001DACE0E80;
      v57 = 0;
    }

    else
    {
      v57 = v103[0];
    }

    if (v12)
    {
      v58 = v101;
    }

    else
    {
      v58 = 0;
    }

    v113 = v127;
    v59 = 0xE000000000000000;
    if (!v12)
    {
      v12 = 0xE000000000000000;
    }

    v61 = v99;
    v60 = v100;
    if (!v100)
    {
      v61 = 0;
    }

    v99 = v61;
    if (!v100)
    {
      v60 = 0xE000000000000000;
    }

    v100 = v60;
    v101 = v58;
    v62 = v98;
    if (v98)
    {
      v63 = v96;
    }

    else
    {
      v63 = 0;
    }

    if (!v98)
    {
      v62 = 0xE000000000000000;
    }

    v98 = v62;
    v65 = v94;
    v64 = v95;
    v110 = v124;
    v111 = v125;
    if (!v95)
    {
      v65 = 0;
    }

    v94 = v65;
    if (!v95)
    {
      v64 = 0xE000000000000000;
    }

    v95 = v64;
    v96 = v63;
    v66 = v97;
    if (v97)
    {
      v67 = v93;
    }

    else
    {
      v67 = 0;
    }

    v112 = v126;
    if (!v97)
    {
      v66 = 0xE000000000000000;
    }

    v97 = v66;
    v68 = v91;
    if (!v92)
    {
      v68 = 0;
    }

    v91 = v68;
    if (v92)
    {
      v59 = v92;
    }

    v92 = v59;
    v93 = v67;
    v106 = v120;
    v107 = v121;
    v108 = v122;
    v109 = v123;
    v104 = v118;
    v105 = v119;
    memcpy(v103, v115, sizeof(v103));
    if (v42)
    {
      v41 = 0.0;
    }

    if (v90)
    {
      v46 = 0.0;
    }

    if (v89)
    {
      v50 = 0.0;
    }

    if (*(v14 + 2))
    {
      sub_1DAA41D64(0);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1DACC1D20;
      sub_1DAAF8B9C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      *(v69 + 56) = v70;
      *(v69 + 64) = sub_1DAAF691C();
      *(v69 + 32) = v14;
      sub_1DAA41DCC();
      sub_1DACB71E4();
      v71 = sub_1DACB9AD4();
      v72 = sub_1DACB9914();
      sub_1DACB8C64("loaded Paywall Configuration with fallback values for keys: %@", 62, 2, &dword_1DAA3F000, v71, v72, v69);
    }

    else
    {
      sub_1DAA41DCC();
      v71 = sub_1DACB9AD4();
      v73 = sub_1DACB9914();
      sub_1DACB8C64("loaded Paywall Configuration with no need for fallback values", 61, 2, &dword_1DAA3F000, v71, v73, MEMORY[0x1E69E7CC0]);
    }

    (*(v11 + 8))(v9, v6);

    v74 = v102;
    *v102 = v101;
    v74[1] = v12;
    v75 = v100;
    v74[2] = v99;
    v74[3] = v75;
    v76 = v98;
    v74[4] = v96;
    v74[5] = v76;
    v77 = v95;
    v74[6] = v94;
    v74[7] = v77;
    v78 = v97;
    v74[8] = v93;
    v74[9] = v78;
    v79 = v92;
    v74[10] = v91;
    v74[11] = v79;
    v80 = v111;
    *(v74 + 12) = v110;
    *(v74 + 13) = v80;
    *(v74 + 14) = v112;
    v74[30] = v113;
    v81 = v107;
    *(v74 + 8) = v106;
    *(v74 + 9) = v81;
    v82 = v109;
    *(v74 + 10) = v108;
    *(v74 + 11) = v82;
    v83 = v105;
    *(v74 + 6) = v104;
    *(v74 + 7) = v83;
    memcpy(v74 + 31, v103, 0x170uLL);
    *(v74 + 77) = v41;
    *(v74 + 78) = v46;
    *(v74 + 79) = v50;
    v74[80] = v57;
  }

  return __swift_destroy_boxed_opaque_existential_1(v142);
}

unint64_t sub_1DAAF84B8()
{
  result = qword_1EE124FF8[0];
  if (!qword_1EE124FF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124FF8);
  }

  return result;
}

uint64_t PaywallConfig.encode(to:)(void *a1)
{
  sub_1DAAF9670(0, &qword_1EE123C30, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v20[10] = *(v1 + 16);
  v20[11] = v8;
  v10 = *(v1 + 40);
  v20[8] = *(v1 + 32);
  v20[9] = v9;
  v11 = *(v1 + 56);
  v20[6] = *(v1 + 48);
  v20[7] = v10;
  v12 = *(v1 + 72);
  v20[4] = *(v1 + 64);
  v20[5] = v11;
  v13 = *(v1 + 88);
  v20[1] = *(v1 + 80);
  v20[2] = v13;
  v20[3] = v12;
  v14 = *(v1 + 208);
  v43 = *(v1 + 192);
  v44 = v14;
  v45 = *(v1 + 224);
  v46 = *(v1 + 240);
  v15 = *(v1 + 144);
  v39 = *(v1 + 128);
  v40 = v15;
  v16 = *(v1 + 176);
  v41 = *(v1 + 160);
  v42 = v16;
  v17 = *(v1 + 112);
  v37 = *(v1 + 96);
  v38 = v17;
  memcpy(v47, (v1 + 248), 0x170uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAAF84B8();
  sub_1DACBA304();
  v23[0] = 0;
  v18 = v48;
  sub_1DACBA094();
  if (!v18)
  {
    v23[0] = 1;
    sub_1DACBA094();
    v23[0] = 2;
    sub_1DACBA094();
    v48 = v5;
    v23[0] = 3;
    sub_1DACBA094();
    v23[0] = 4;
    sub_1DACBA094();
    v23[0] = 5;
    sub_1DACBA094();
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v27 = v37;
    v28 = v38;
    v26 = 6;
    sub_1DAAF96D4(&v37, v23, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAA96AB4();
    sub_1DACBA074();
    v24[6] = v33;
    v24[7] = v34;
    v24[8] = v35;
    v25 = v36;
    v24[2] = v29;
    v24[3] = v30;
    v24[4] = v31;
    v24[5] = v32;
    v24[0] = v27;
    v24[1] = v28;
    sub_1DAAF8B2C(v24, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    memcpy(v23, v47, sizeof(v23));
    v22[375] = 7;
    sub_1DAAF96D4(v47, v22, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF9754();
    sub_1DACBA074();
    memcpy(v22, v23, 0x170uLL);
    sub_1DAAF8B2C(v22, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    v21 = 8;
    sub_1DACBA0B4();
    v21 = 9;
    sub_1DACBA0B4();
    v21 = 10;
    sub_1DACBA0B4();
    v21 = 11;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DAAF8A6C()
{
  result = qword_1EE124578;
  if (!qword_1EE124578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124578);
  }

  return result;
}

unint64_t sub_1DAAF8AC0()
{
  result = qword_1EE124CD0;
  if (!qword_1EE124CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CD0);
  }

  return result;
}

uint64_t sub_1DAAF8B14(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAAF8B2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAAF8B9C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1DAAF8B9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL _s10StocksCore13PaywallConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v96 = *(v1 + 32);
  v97 = *(v1 + 24);
  v95 = *(v1 + 40);
  v92 = *(v1 + 56);
  v93 = *(v1 + 48);
  v88 = *(v1 + 72);
  v89 = *(v1 + 64);
  v84 = *(v1 + 88);
  v85 = *(v1 + 80);
  v8 = *(v1 + 208);
  v108[6] = *(v1 + 192);
  v108[7] = v8;
  v108[8] = *(v1 + 224);
  v109 = *(v1 + 240);
  v9 = *(v1 + 144);
  v108[2] = *(v1 + 128);
  v108[3] = v9;
  v10 = *(v1 + 176);
  v108[4] = *(v1 + 160);
  v108[5] = v10;
  v11 = *(v1 + 112);
  v108[0] = *(v1 + 96);
  v108[1] = v11;
  memcpy(v110, (v1 + 248), sizeof(v110));
  v12 = *(v4 + 616);
  v13 = *(v4 + 624);
  v14 = *(v4 + 632);
  v15 = *(v4 + 640);
  v16 = *v3;
  v17 = v3[1];
  v18 = v3[2];
  v19 = v3[3];
  v20 = v3[4];
  v94 = v3[5];
  v90 = v3[7];
  v91 = v3[6];
  v86 = v3[9];
  v87 = v3[8];
  v82 = v3[11];
  v83 = v3[10];
  v21 = *(v3 + 6);
  v111[1] = *(v3 + 7);
  v111[0] = v21;
  v22 = *(v3 + 10);
  v111[5] = *(v3 + 11);
  v111[4] = v22;
  v23 = *(v3 + 8);
  v111[3] = *(v3 + 9);
  v111[2] = v23;
  v112 = v3[30];
  v24 = *(v3 + 13);
  v111[8] = *(v3 + 14);
  v25 = *(v3 + 12);
  v111[7] = v24;
  v111[6] = v25;
  memcpy(v113, v3 + 31, 0x170uLL);
  v26 = *(v3 + 77);
  v27 = *(v3 + 78);
  v28 = *(v3 + 79);
  v29 = *(v3 + 80);
  if ((v6 != v16 || v5 != v17) && (sub_1DACBA174() & 1) == 0 || (v7 != v18 || v97 != v19) && (sub_1DACBA174() & 1) == 0 || (v96 != v20 || v95 != v94) && (sub_1DACBA174() & 1) == 0 || (v93 != v91 || v92 != v90) && (sub_1DACBA174() & 1) == 0 || (v89 != v87 || v88 != v86) && (sub_1DACBA174() & 1) == 0 || (v85 != v83 || v84 != v82) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v30 = *(v4 + 208);
  v31 = *(v4 + 176);
  __src[6] = *(v4 + 192);
  __src[7] = v30;
  v32 = *(v4 + 208);
  __src[8] = *(v4 + 224);
  v33 = *(v4 + 144);
  v34 = *(v4 + 112);
  __src[2] = *(v4 + 128);
  __src[3] = v33;
  v35 = *(v4 + 144);
  v36 = *(v4 + 176);
  __src[4] = *(v4 + 160);
  __src[5] = v36;
  v37 = *(v4 + 112);
  __src[0] = *(v4 + 96);
  __src[1] = v37;
  v38 = *(v3 + 14);
  v39 = *(v3 + 12);
  *(&__src[16] + 8) = *(v3 + 13);
  *(&__src[17] + 8) = v38;
  *(&__src[15] + 8) = v39;
  v40 = *(v3 + 9);
  *(&__src[11] + 8) = *(v3 + 8);
  *(&__src[12] + 8) = v40;
  v41 = *(v3 + 11);
  *(&__src[13] + 8) = *(v3 + 10);
  *(&__src[14] + 8) = v41;
  v42 = *(v3 + 7);
  *(&__src[9] + 8) = *(v3 + 6);
  *(&__src[10] + 8) = v42;
  v106[6] = __src[6];
  v106[7] = v32;
  v106[8] = *(v4 + 224);
  v106[2] = __src[2];
  v106[3] = v35;
  v106[4] = __src[4];
  v106[5] = v31;
  v43 = v3[30];
  *&__src[9] = *(v4 + 240);
  *(&__src[18] + 1) = v43;
  v107 = *(v4 + 240);
  v106[0] = __src[0];
  v106[1] = v34;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v106) == 1)
  {
    v44 = *(v3 + 13);
    __dst[6] = *(v3 + 12);
    __dst[7] = v44;
    __dst[8] = *(v3 + 14);
    *&__dst[9] = v3[30];
    v45 = *(v3 + 9);
    __dst[2] = *(v3 + 8);
    __dst[3] = v45;
    v46 = *(v3 + 11);
    __dst[4] = *(v3 + 10);
    __dst[5] = v46;
    v47 = *(v3 + 7);
    __dst[0] = *(v3 + 6);
    __dst[1] = v47;
    if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(__dst) == 1)
    {
      v48 = *(v4 + 208);
      v105[6] = *(v4 + 192);
      v105[7] = v48;
      v105[8] = *(v4 + 224);
      *&v105[9] = *(v4 + 240);
      v49 = *(v4 + 144);
      v105[2] = *(v4 + 128);
      v105[3] = v49;
      v50 = *(v4 + 176);
      v105[4] = *(v4 + 160);
      v105[5] = v50;
      v51 = *(v4 + 112);
      v105[0] = *(v4 + 96);
      v105[1] = v51;
      sub_1DAAF96D4(v108, v103, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
      sub_1DAAF96D4(v111, v103, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
      sub_1DAAF8B2C(v105, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
      goto LABEL_27;
    }

    sub_1DAAF96D4(v108, v105, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF96D4(v111, v105, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
LABEL_25:
    memcpy(__dst, __src, 0x130uLL);
    v68 = &unk_1ECBE6D00;
    v69 = &qword_1EE124570;
    v70 = &type metadata for SubscriptionButtonConfig;
LABEL_34:
    sub_1DAAF9BAC(__dst, v68, v69, v70);
    return 0;
  }

  v52 = *(v4 + 208);
  v53 = *(v4 + 176);
  v105[6] = *(v4 + 192);
  v105[7] = v52;
  v54 = *(v4 + 208);
  v105[8] = *(v4 + 224);
  v55 = *(v4 + 144);
  v56 = *(v4 + 112);
  v105[2] = *(v4 + 128);
  v105[3] = v55;
  v57 = *(v4 + 144);
  v58 = *(v4 + 176);
  v105[4] = *(v4 + 160);
  v105[5] = v58;
  v59 = *(v4 + 112);
  v105[0] = *(v4 + 96);
  v105[1] = v59;
  v103[6] = v105[6];
  v103[7] = v54;
  v103[8] = *(v4 + 224);
  v103[2] = v105[2];
  v103[3] = v57;
  v103[4] = v105[4];
  v103[5] = v53;
  *&v105[9] = *(v4 + 240);
  *&v103[9] = *(v4 + 240);
  v103[0] = v105[0];
  v103[1] = v56;
  v60 = *(v3 + 13);
  __dst[6] = *(v3 + 12);
  __dst[7] = v60;
  __dst[8] = *(v3 + 14);
  *&__dst[9] = v3[30];
  v61 = *(v3 + 9);
  __dst[2] = *(v3 + 8);
  __dst[3] = v61;
  v62 = *(v3 + 11);
  __dst[4] = *(v3 + 10);
  __dst[5] = v62;
  v63 = *(v3 + 7);
  __dst[0] = *(v3 + 6);
  __dst[1] = v63;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(__dst) == 1)
  {
    v64 = *(v4 + 208);
    v101[6] = *(v4 + 192);
    v101[7] = v64;
    v101[8] = *(v4 + 224);
    *&v101[9] = *(v4 + 240);
    v65 = *(v4 + 144);
    v101[2] = *(v4 + 128);
    v101[3] = v65;
    v66 = *(v4 + 176);
    v101[4] = *(v4 + 160);
    v101[5] = v66;
    v67 = *(v4 + 112);
    v101[0] = *(v4 + 96);
    v101[1] = v67;
    sub_1DAAF96D4(v108, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF96D4(v111, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF96D4(v105, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
    sub_1DAAF9CD4(v101);
    goto LABEL_25;
  }

  v71 = *(v3 + 13);
  v101[6] = *(v3 + 12);
  v101[7] = v71;
  v101[8] = *(v3 + 14);
  *&v101[9] = v3[30];
  v72 = *(v3 + 9);
  v101[2] = *(v3 + 8);
  v101[3] = v72;
  v73 = *(v3 + 11);
  v101[4] = *(v3 + 10);
  v101[5] = v73;
  v74 = *(v3 + 7);
  v101[0] = *(v3 + 6);
  v101[1] = v74;
  v75 = sub_1DAC74B58(v103, v101);
  v99[6] = v101[6];
  v99[7] = v101[7];
  v99[8] = v101[8];
  *&v99[9] = *&v101[9];
  v99[2] = v101[2];
  v99[3] = v101[3];
  v99[4] = v101[4];
  v99[5] = v101[5];
  v99[0] = v101[0];
  v99[1] = v101[1];
  sub_1DAAF96D4(v108, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  sub_1DAAF96D4(v111, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  sub_1DAAF96D4(v105, v100, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  sub_1DAAF9CD4(v99);
  v100[6] = v103[6];
  v100[7] = v103[7];
  v100[8] = v103[8];
  *&v100[9] = *&v103[9];
  v100[2] = v103[2];
  v100[3] = v103[3];
  v100[4] = v103[4];
  v100[5] = v103[5];
  v100[0] = v103[0];
  v100[1] = v103[1];
  sub_1DAAF9CD4(v100);
  v76 = *(v4 + 208);
  v101[6] = *(v4 + 192);
  v101[7] = v76;
  v101[8] = *(v4 + 224);
  *&v101[9] = *(v4 + 240);
  v77 = *(v4 + 144);
  v101[2] = *(v4 + 128);
  v101[3] = v77;
  v78 = *(v4 + 176);
  v101[4] = *(v4 + 160);
  v101[5] = v78;
  v79 = *(v4 + 112);
  v101[0] = *(v4 + 96);
  v101[1] = v79;
  sub_1DAAF8B2C(v101, &qword_1EE124570, &type metadata for SubscriptionButtonConfig);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  memcpy(__src, v110, 0x170uLL);
  memcpy(&__src[23], v113, 0x170uLL);
  memcpy(v105, v110, sizeof(v105));
  if (sub_1DAAF8B14(v105) != 1)
  {
    memcpy(v103, __src, sizeof(v103));
    memcpy(v101, __src, sizeof(v101));
    memcpy(__dst, &__src[23], 0x170uLL);
    if (sub_1DAAF8B14(__dst) == 1)
    {
      memcpy(v100, __src, sizeof(v100));
      sub_1DAAF96D4(v110, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
      sub_1DAAF96D4(v113, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
      sub_1DAAF96D4(v103, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
      sub_1DAAF9C80(v100);
LABEL_33:
      memcpy(__dst, __src, sizeof(__dst));
      v68 = &unk_1ECBE6D08;
      v69 = &qword_1EE124CC8;
      v70 = &type metadata for PaywallVisualSpec;
      goto LABEL_34;
    }

    memcpy(v100, &__src[23], sizeof(v100));
    sub_1DAAF96D4(v110, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF96D4(v113, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF96D4(v103, v99, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    v81 = sub_1DAB9082C(v101, v100);
    memcpy(v98, v100, sizeof(v98));
    sub_1DAAF9C80(v98);
    memcpy(v99, v101, sizeof(v99));
    sub_1DAAF9C80(v99);
    memcpy(v100, __src, sizeof(v100));
    sub_1DAAF8B2C(v100, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    if (v81)
    {
      goto LABEL_37;
    }

    return 0;
  }

  memcpy(__dst, &__src[23], 0x170uLL);
  if (sub_1DAAF8B14(__dst) != 1)
  {
    sub_1DAAF96D4(v110, v103, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    sub_1DAAF96D4(v113, v103, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
    goto LABEL_33;
  }

  memcpy(v103, __src, sizeof(v103));
  sub_1DAAF96D4(v110, v101, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
  sub_1DAAF96D4(v113, v101, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
  sub_1DAAF8B2C(v103, &qword_1EE124CC8, &type metadata for PaywallVisualSpec);
LABEL_37:
  if (v12 != v26 || v13 != v27 || v14 != v28)
  {
    return 0;
  }

  return v15 == v29;
}

void sub_1DAAF9670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAAF84B8();
    v7 = a3(a1, &type metadata for PaywallConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAAF96D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1DAAF8B9C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1DAAF9754()
{
  result = qword_1EE124CD8;
  if (!qword_1EE124CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124CD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore17PaywallVisualSpecVSg(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAAF97C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 648))
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

uint64_t sub_1DAAF9810(uint64_t result, int a2, int a3)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 648) = 1;
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

    *(result + 648) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaywallConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaywallConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAAF9A5C()
{
  result = qword_1ECBE6CF8;
  if (!qword_1ECBE6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6CF8);
  }

  return result;
}

unint64_t sub_1DAAF9AB4()
{
  result = qword_1EE124FE8;
  if (!qword_1EE124FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FE8);
  }

  return result;
}

unint64_t sub_1DAAF9B0C()
{
  result = qword_1EE124FF0;
  if (!qword_1EE124FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FF0);
  }

  return result;
}

unint64_t sub_1DAAF9B60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAAF9BAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1DAAF9C08(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1DAAF9C08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAAF8B9C(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAAF9D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAAF9E14();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  sub_1DACB71E4();
  sub_1DAA78E98(v10, a3, a4, a5);

  v11 = sub_1DACB89D4();
  type metadata accessor for Quote(0);
  v12 = sub_1DACB8A54();

  return v12;
}

void sub_1DAAF9E14()
{
  if (!qword_1EE123B50)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123B50);
    }
  }
}

uint64_t sub_1DAAF9E64(uint64_t *a1)
{
  sub_1DAA887D8(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Quote(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  sub_1DAB85A14(*a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1DAA88D78(v4, sub_1DAA887D8);
    sub_1DAAFBF48();
    swift_allocError();
    sub_1DAA5EDC0(0, &qword_1ECBE6D38, type metadata accessor for Quote, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAA7BD70(v4, v11);
    sub_1DAA88924(v11, v9, type metadata accessor for Quote);
    sub_1DAA5EDC0(0, &qword_1ECBE6D38, type metadata accessor for Quote, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v13 = sub_1DACB8AE4();
    sub_1DAA88D78(v11, type metadata accessor for Quote);
    return v13;
  }
}

uint64_t sub_1DAAFA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAA5EDC0(0, &qword_1ECBE6D10, sub_1DAA887D8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAAFA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DAAF9D34(a6, a7, a8, a9, a10);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8A64();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAAFA2E8(uint64_t a1, void (*a2)(char *))
{
  sub_1DAA887D8(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA88924(a1, v6, type metadata accessor for Quote);
  v7 = type metadata accessor for Quote(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_1DAA88D78(v6, sub_1DAA887D8);
}

uint64_t sub_1DAAFA3F8(uint64_t a1, void (*a2)(char *))
{
  sub_1DAA887D8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Quote(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  a2(v5);
  return sub_1DAA88D78(v5, sub_1DAA887D8);
}

uint64_t sub_1DAAFA4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DAA7A458(0);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAAFA538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAA78E98(a6, a7, a8, a9);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DAA7390C;
  *(v15 + 24) = v14;
  sub_1DACB71F4();
  v16 = sub_1DACB89D4();
  sub_1DACB8A64();

  v17 = swift_allocObject();
  *(v17 + 16) = sub_1DAA7390C;
  *(v17 + 24) = v14;
  v18 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAAFA71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = a3;
    v19 = a2;
    v17 = a4;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v6, 0);
    v7 = v20;
    v9 = (a1 + 56);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      sub_1DACB71E4();
      if (v13 >= v12 >> 1)
      {
        sub_1DAA5859C((v12 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 17;
      --v6;
    }

    while (v6);
    a4 = v17;
    a3 = v18;
    a2 = v19;
  }

  v15 = a5(v7, a2, a3, a4);

  return v15;
}

uint64_t sub_1DAAFA828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DAA886DC(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA88924(a3, v11, sub_1DAA886DC);
  v12 = sub_1DACB97B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1DACB71F4();
  if (v14 == 1)
  {
    sub_1DAA88D78(v11, sub_1DAA886DC);
  }

  else
  {
    sub_1DACB97A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DACB9744();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DACB93C4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1DACB71F4();
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

      sub_1DAA88D78(a3, sub_1DAA886DC);

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

  sub_1DAA88D78(a3, sub_1DAA886DC);
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

uint64_t sub_1DAAFAB30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1DAA88D78(v0 + 88, sub_1DAAFB6A0);

  return swift_deallocClassInstance();
}

void sub_1DAAFABA4(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), const char *a5)
{
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v10 = sub_1DACB8C94();
  __swift_project_value_buffer(v10, qword_1EE124090);
  sub_1DACB71E4();
  v11 = a1;
  oslog = sub_1DACB8C74();
  v12 = a4();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1DAA7ABE4(a2, a3, &v19);
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_1DACBA224();
    v17 = sub_1DAA7ABE4(v15, v16, &v19);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1DAA3F000, oslog, v12, a5, v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v14, -1, -1);
    MEMORY[0x1E1278C00](v13, -1, -1);
  }

  else
  {
  }
}

void sub_1DAAFAD94(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  os_unfair_lock_lock(*v2 + 20);
  swift_unknownObjectRetain();
  v5 = sub_1DAAFB9C8(&v4[22]._os_unfair_lock_opaque, a1);
  swift_unknownObjectRelease();
  v6 = *&v4[22]._os_unfair_lock_opaque;
  if (v6 >> 62)
  {
    v7 = sub_1DACB9E14();
    if (v7 >= v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 < v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1DAA8D0E4(v5, v7);

  os_unfair_lock_unlock(v4 + 20);
}

uint64_t sub_1DAAFAE74@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  v3 = *MEMORY[0x1E69D63E0];
  v4 = sub_1DACB81B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

void sub_1DAAFAF10(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = sub_1DACB8FC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA57C58();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
  v12 = sub_1DACB9984();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  sub_1DAA5EC5C(0, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
  sub_1DACB71E4();
  sub_1DACB8BA4();

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v4;
  sub_1DACB71E4();
  sub_1DACB71F4();
  v15 = sub_1DACB89D4();
  sub_1DACB8A64();
}

uint64_t sub_1DAAFB160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAAF9E14();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D20;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  sub_1DACB71E4();
  v6 = sub_1DAA7A4CC(v5, 1.79769313e308);

  return v6;
}

unint64_t sub_1DAAFB1F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_1DAA886DC(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Quote(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v35 - v19);
  v21 = *a1;
  if (*(v21 + 16))
  {
    result = sub_1DAA4BF3C(a2, a3);
    if (v22)
    {
      sub_1DAA88924(*(v21 + 56) + *(v14 + 72) * result, v17, type metadata accessor for Quote);
      sub_1DAA7BD70(v17, v20);
      if ((v20[1] & 1) == 0 && (v20[3] & 1) == 0)
      {
        v23 = v20[2] + a5 - *v20;
        *v20 = a5;
        *(v20 + 8) = 0;
        v20[2] = v23;
        *(v20 + 24) = 0;
        sub_1DAA5EDC0(0, &qword_1ECBE6D28, sub_1DAAFB724, MEMORY[0x1E69E6F90]);
        sub_1DAAFB724(0);
        v25 = v24 - 8;
        v26 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1DACC1D20;
        v28 = (v27 + v26);
        v29 = *(v25 + 56);
        *v28 = a2;
        v28[1] = a3;
        sub_1DAA88924(v20, v28 + v29, type metadata accessor for Quote);
        sub_1DACB71E4();
        v30 = sub_1DAB68788(v27);
        swift_setDeallocating();
        sub_1DAA88D78(v28, sub_1DAAFB724);
        swift_deallocClassInstance();
        v31 = sub_1DACB97B4();
        (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
        sub_1DACB9794();
        sub_1DACB71F4();
        v32 = sub_1DACB9784();
        v33 = swift_allocObject();
        v34 = MEMORY[0x1E69E85E0];
        v33[2] = v32;
        v33[3] = v34;
        v33[4] = a4;
        v33[5] = v30;
        sub_1DAAFA828(0, 0, v12, &unk_1DACC4918, v33);
      }

      return sub_1DAA88D78(v20, type metadata accessor for Quote);
    }
  }

  return result;
}

uint64_t sub_1DAAFB59C()
{
  sub_1DAAFBEA8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAAFB5D4(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DAAFB78C(v6, a2, v2, v4, v5);
}

void sub_1DAAFB724(uint64_t a1)
{
  if (!qword_1EE11D198)
  {
    type metadata accessor for Quote(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11D198);
    }
  }
}

uint64_t sub_1DAAFB78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v13, a2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1DAAFB850(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAA9A3AC;

  return sub_1DAA944B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1DAAFB910(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAA94754;

  return sub_1DAA94374(a1, v4);
}

uint64_t sub_1DAAFB9C8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v11 == sub_1DACB9E14())
            {
              return v7;
            }
          }

          else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E12777A0](v11, v3);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            sub_1DACB71F4();
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
          {
            if (v7 != v11)
            {
              if (v5)
              {
                v13 = MEMORY[0x1E12777A0](v7, v3);
                v14 = MEMORY[0x1E12777A0](v11, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v15)
                {
                  goto LABEL_60;
                }

                if (v11 >= v15)
                {
                  goto LABEL_61;
                }

                v13 = *(v3 + 32 + 8 * v7);
                v14 = *(v3 + 32 + 8 * v11);
                sub_1DACB71F4();
                sub_1DACB71F4();
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_1DACA83E4();
                v16 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

              if ((v3 & 0x8000000000000000) != 0 || v16)
              {
                v3 = sub_1DACA83E4();
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_1DACB9E14();
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v11 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              *(v5 + 8 * v11 + 32) = v13;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v11++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_1DACB9E14();
  }

  return v4[2];
}

uint64_t sub_1DAAFBCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAAFBD4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAA94754;

  return sub_1DAA944B8(a1, v4, v5, v7, v6);
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

uint64_t sub_1DAAFBED0()
{
  v1 = *(v0 + 16);
  sub_1DAB68788(MEMORY[0x1E69E7CC0]);
  v1();
}

unint64_t sub_1DAAFBF48()
{
  result = qword_1ECBE6D30;
  if (!qword_1ECBE6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6D30);
  }

  return result;
}

unint64_t sub_1DAAFBFB0()
{
  result = qword_1ECBE6D40;
  if (!qword_1ECBE6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE6D40);
  }

  return result;
}

uint64_t sub_1DAAFC004(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1DACB9BC4();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 48 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);
    result = sub_1DACB71E4();
    if (v12 >= v13 >> 1)
    {
      result = sub_1DAA5859C((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DAAA2C74(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
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

uint64_t WatchlistQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB02E58(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t WatchlistQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 128) = a1;
  *(v2 + 136) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAAFC2F0, 0, 0);
}

uint64_t sub_1DAAFC2F0()
{
  v15 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[18] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[15] = v4;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v7 = sub_1DACB9214();
    v9 = sub_1DAA7ABE4(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for entities with identifiers=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  sub_1DACB6D24();
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[19] = (*(v11 + 40))(1, v10, v11);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1DAAFC558;

  return MEMORY[0x1EEE44EE0](v0 + 9);
}

uint64_t sub_1DAAFC558()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DAAFCED0;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAAFC67C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DAAFC67C()
{
  v94 = v0;
  v1 = v0[9];
  sub_1DACB71E4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  v75 = v1;
  v77 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v89 = v86;
    *v5 = 136315394;
    v0[13] = v4;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v6 = sub_1DACB9214();
    v8 = sub_1DAA7ABE4(v6, v7, &v89);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = *(v1 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v80 = v3;
      v83 = v2;
      v91[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v9, 0);
      v10 = v91[0];
      v11 = *(v91[0] + 16);
      v12 = 16 * v11;
      v13 = (v1 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v91[0] = v10;
        v16 = v11 + 1;
        v17 = *(v10 + 24);
        sub_1DACB71E4();
        if (v11 >= v17 >> 1)
        {
          sub_1DAA5859C((v17 > 1), v16, 1);
          v10 = v91[0];
        }

        *(v10 + 16) = v16;
        v18 = v10 + v12;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        v12 += 16;
        v13 += 6;
        ++v11;
        --v9;
      }

      while (v9);
      v1 = v75;
      v0 = v77;
      v2 = v83;
      v3 = v80;
    }

    v0[14] = v10;
    v19 = sub_1DACB9214();
    v21 = v20;

    v22 = sub_1DAA7ABE4(v19, v21, &v89);

    *(v5 + 14) = v22;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for entities with identifiers=[%s], watchlists=[%s]", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v86, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v23 = v0[16];
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    v72 = (v1 + 73);
    v73 = v23 + 32;
    v26 = MEMORY[0x1E69E7CC0];
    v74 = *(v23 + 16);
    while (2)
    {
      v78 = v26;
LABEL_12:
      if (v25 >= v24)
      {
        __break(1u);
      }

      else if (!__OFADD__(v25, 1))
      {
        v27 = v72;
        v28 = (v73 + 16 * v25);
        v29 = v28[1];
        v84 = v25 + 1;
        v87 = *v28;
        v81 = v25 + 1;
        v30 = *(v1 + 16) + 1;
        while (1)
        {
          if (!--v30)
          {
            v24 = v74;
            v1 = v75;
            v26 = v78;
            v0 = v77;
            v25 = v84;
            if (v81 != v74)
            {
              goto LABEL_12;
            }

            goto LABEL_32;
          }

          v31 = *(v27 - 41);
          v32 = *(v27 - 33);
          v33 = *(v27 - 25);
          v34 = *(v27 - 17);
          v35 = *(v27 - 9);
          v36 = *(v27 - 1);
          v37 = *v27;
          if (v34 == v87 && v35 == v29)
          {
            break;
          }

          v27 += 48;
          if (sub_1DACBA174())
          {
            goto LABEL_25;
          }
        }

        v34 = v87;
LABEL_25:
        v91[0] = v31;
        v91[1] = v32;
        v91[2] = v33;
        v91[3] = v34;
        v91[4] = v35;
        v92 = v36;
        v93 = v37;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        WatchlistEntity.init(from:)(v91, &v89);
        v39 = v89;
        v88 = v90;
        v26 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1DAADB910(0, *(v78 + 2) + 1, 1, v78);
        }

        v0 = v77;
        v41 = *(v26 + 2);
        v40 = *(v26 + 3);
        if (v41 >= v40 >> 1)
        {
          v26 = sub_1DAADB910((v40 > 1), v41 + 1, 1, v26);
        }

        *(v26 + 2) = v41 + 1;
        v42 = &v26[24 * v41];
        *(v42 + 4) = v39;
        *(v42 + 40) = v88;
        v24 = v74;
        v1 = v75;
        v25 = v84;
        if (v81 != v74)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    __break(1u);
    return;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_32:

  if (*(v26 + 2))
  {
    sub_1DACB71E4();
    sub_1DACB71E4();
    v43 = sub_1DACB8C74();
    v44 = sub_1DACB9914();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = v0[16];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v89 = v47;
      *v46 = 136315394;
      v0[10] = v45;
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v48 = sub_1DACB9214();
      v50 = sub_1DAA7ABE4(v48, v49, &v89);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = *(v26 + 2);
      v52 = MEMORY[0x1E69E7CC0];
      if (v51)
      {
        v76 = v47;
        v82 = v44;
        v85 = v43;
        v91[0] = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v51, 0);
        v52 = v91[0];
        v79 = v26;
        v53 = v26 + 48;
        do
        {
          sub_1DACB71E4();
          sub_1DACB71F4();
          sub_1DACB6ED4();

          v54 = v0[7];
          v55 = v0[8];
          v91[0] = v52;
          v57 = *(v52 + 16);
          v56 = *(v52 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_1DAA5859C((v56 > 1), v57 + 1, 1);
            v52 = v91[0];
          }

          *(v52 + 16) = v57 + 1;
          v58 = v52 + 16 * v57;
          *(v58 + 32) = v54;
          *(v58 + 40) = v55;
          v53 += 24;
          --v51;
          v0 = v77;
        }

        while (v51);
        v26 = v79;
        v43 = v85;
        v44 = v82;
        v47 = v76;
      }

      v0[11] = v52;
      v67 = sub_1DACB9214();
      v69 = v68;

      v70 = sub_1DAA7ABE4(v67, v69, &v89);

      *(v46 + 14) = v70;
      _os_log_impl(&dword_1DAA3F000, v43, v44, "Matched watchlist entities to identifiers=[%s], watchlistEntities=[%s]", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E1278C00](v47, -1, -1);
      MEMORY[0x1E1278C00](v46, -1, -1);
    }
  }

  else
  {

    sub_1DACB71E4();
    v59 = sub_1DACB8C74();
    v60 = sub_1DACB9904();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[16];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v91[0] = v63;
      *v62 = 136315138;
      v0[12] = v61;
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v64 = sub_1DACB9214();
      v66 = sub_1DAA7ABE4(v64, v65, v91);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1DAA3F000, v59, v60, "No matching watchlists found for identifiers=[%s]", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1E1278C00](v63, -1, -1);
      MEMORY[0x1E1278C00](v62, -1, -1);
    }

    v26 = MEMORY[0x1E69E7CC0];
  }

  v71 = v0[1];

  v71(v26);
}

uint64_t sub_1DAAFCED0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t WatchlistQuery.suggestedEntities()()
{
  v2 = sub_1DACB78E4();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  sub_1DACB7E44();
  v1[14] = swift_task_alloc();
  v3 = sub_1DACB92E4();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  sub_1DACB7904();
  v4 = swift_task_alloc();
  v5 = *v0;
  v1[19] = v4;
  v1[20] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1DAAFD0BC, 0, 0);
}

uint64_t sub_1DAAFD0BC()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[21] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watchlists for suggested entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB6D24();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[22] = (*(v6 + 40))(1, v5, v6);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_1DAAFD25C;

  return MEMORY[0x1EEE44EE0](v0 + 9);
}

uint64_t sub_1DAAFD25C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1DAAFD9B8;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAAFD380;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAAFD380()
{
  v64 = v0;
  v1 = v0[9];
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  v49 = v1;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    v62 = v5;
    *v4 = 136315138;
    v7 = v1[2];
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v55 = v5;
      v58 = v4;
      v59 = v3;
      v61 = v2;
      v63 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v7, 0);
      v8 = v63;
      v9 = *(v63 + 16);
      v10 = 16 * v9;
      v11 = v1 + 5;
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v63 = v8;
        v14 = v9 + 1;
        v15 = *(v8 + 24);
        sub_1DACB71E4();
        if (v9 >= v15 >> 1)
        {
          sub_1DAA5859C((v15 > 1), v14, 1);
          v8 = v63;
        }

        *(v8 + 16) = v14;
        v16 = v8 + v10;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v10 += 16;
        v11 += 6;
        ++v9;
        --v7;
      }

      while (v7);
      v1 = v49;
      v2 = v61;
      v3 = v59;
      v6 = v55;
      v4 = v58;
    }

    v0[10] = v8;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, &v62);

    *(v4 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched watchlists for suggested entities, watchlists=[%s]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v21 = v1[2];
  if (v21)
  {
    v22 = v0[16];
    v23 = v0[12];
    v63 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v21, 0);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v24 = v63;
    v53 = (v23 + 104);
    v50 = (v22 + 8);
    v51 = (v22 + 16);
    v25 = v1 + 8;
    v52 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v60 = v21;
      v26 = v0[13];
      v27 = v0[11];
      v54 = *(v25 - 4);
      v56 = *(v25 - 3);
      v28 = *(v25 - 1);
      v29 = *v25;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v53)(v26, v52, v27);
      v30 = v28;
      sub_1DACB7914();
      v31 = sub_1DACB6F34();
      if (v28 == sub_1DACB9324() && v29 == v32)
      {
        break;
      }

      v33 = sub_1DACBA174();
      sub_1DACB71E4();

      v34 = v54;
      v35 = v56;
      if (v33)
      {
        goto LABEL_15;
      }

LABEL_18:

      v0[7] = v34;
      v0[8] = v35;
      sub_1DACB6EE4();

      v63 = v24;
      v45 = *(v24 + 16);
      v44 = *(v24 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1DAB25C68((v44 > 1), v45 + 1, 1);
        v24 = v63;
      }

      *(v24 + 16) = v45 + 1;
      v46 = (v24 + 24 * v45);
      v46[4] = v30;
      v46[5] = v29;
      v46[6] = v31;
      v25 += 6;
      --v21;
      if (v60 == 1)
      {

        goto LABEL_23;
      }
    }

    sub_1DACB71E4();

LABEL_15:
    v57 = v31;
    v36 = v30;
    v38 = v0[17];
    v37 = v0[18];
    v39 = v0[15];
    sub_1DACB9284();
    (*v51)(v38, v37, v39);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v40 = v0[18];
    v41 = v0[15];
    v42 = qword_1EE13E470;
    sub_1DACB7DF4();
    v34 = sub_1DACB9384();
    v35 = v43;
    (*v50)(v40, v41);

    v30 = v36;
    v31 = v57;
    goto LABEL_18;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v47 = v0[1];

  return v47(v24);
}

uint64_t sub_1DAAFD9B8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAAFDA88()
{
  v15 = v0;
  if (qword_1ECBE5A08 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECBE7088;
  v1 = unk_1ECBE7090;
  v3 = qword_1ECBE7098;
  v4 = qword_1EE11D388;
  sub_1DACB71E4();
  sub_1DACB71F4();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_1DACB8C94();
  __swift_project_value_buffer(v5, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DACB71F4();
  v6 = sub_1DACB8C74();
  v7 = sub_1DACB9914();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    sub_1DACB6ED4();
    v10 = sub_1DAA7ABE4(v0[2], v0[3], &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v6, v7, "Default watchlist entity requested, returning '%s' watchlist", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v11 = v0[4];
  *v11 = v2;
  v11[1] = v1;
  v11[2] = v3;
  v12 = v0[1];

  return v12();
}

uint64_t sub_1DAAFDC90@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAB02E58(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  *a1 = result;
  return result;
}

uint64_t sub_1DAAFDD2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return WatchlistQuery.entities(for:)(a1);
}

uint64_t sub_1DAAFDDC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DAB07890;

  return WatchlistQuery.suggestedEntities()();
}

uint64_t sub_1DAAFDE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAAFDF10;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1DAAFDF10(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1DAAFE010(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DAB06FCC();
  *v5 = v2;
  v5[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1DAAFE0C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return WatchlistQuery.defaultResult()(a1);
}

uint64_t WatchlistQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a1;
  v3[17] = a2;
  v4 = sub_1DACB78E4();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  sub_1DACB7E44();
  v3[21] = swift_task_alloc();
  v5 = sub_1DACB92E4();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  sub_1DACB7904();
  v6 = swift_task_alloc();
  v7 = *v2;
  v3[26] = v6;
  v3[27] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1DAAFE2E4, 0, 0);
}

uint64_t sub_1DAAFE2E4()
{
  v13 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[28] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DAA7ABE4(v5, v4, &v12);
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Querying watchlists matching string=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  sub_1DACB6D24();
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v0[29] = (*(v9 + 40))(1, v8, v9);
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1DAAFE4F4;

  return MEMORY[0x1EEE44EE0](v0 + 13);
}

uint64_t sub_1DAAFE4F4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DAAFF09C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAAFE618;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DAAFE618()
{
  v114 = v0;
  v1 = v0[13];
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  v105 = v1;
  v108 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    v112 = v5;
    *v4 = 136315138;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v98 = v5;
      v102 = v4;
      v109 = v3;
      v113 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v7, 0);
      v8 = v113;
      v9 = *(v113 + 16);
      v10 = 16 * v9;
      v11 = (v1 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v113 = v8;
        v14 = v9 + 1;
        v15 = *(v8 + 24);
        sub_1DACB71E4();
        if (v9 >= v15 >> 1)
        {
          sub_1DAA5859C((v15 > 1), v14, 1);
          v8 = v113;
        }

        *(v8 + 16) = v14;
        v16 = v8 + v10;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v10 += 16;
        v11 += 6;
        ++v9;
        --v7;
      }

      while (v7);
      v1 = v105;
      v0 = v108;
      v3 = v109;
      v6 = v98;
      v4 = v102;
    }

    v0[15] = v8;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, &v112);

    *(v4 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched all watchlists for string query, watchlists=[%s]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  v21 = *(v1 + 16);
  if (!v21)
  {
    v89 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v22 = 0;
  v103 = -v21;
  v23 = v1 + 73;
  v89 = MEMORY[0x1E69E7CC0];
  v94 = v1 + 73;
  do
  {
    v24 = (v23 + 48 * v22);
    v25 = v22 + 1;
    while (1)
    {
      if ((v25 - 1) >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v110 = v25;
      v26 = *(v24 - 41);
      v27 = *(v24 - 33);
      v28 = *(v24 - 25);
      v96 = *(v24 - 17);
      v29 = *(v24 - 9);
      v95 = *(v24 - 1);
      v99 = *v24;
      v108[7] = sub_1DACB93A4();
      v108[8] = v30;
      v108[9] = sub_1DACB93A4();
      v108[10] = v31;
      sub_1DAA642D8();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v32 = sub_1DACB9B64();

      if (v32)
      {
        break;
      }

      v25 = v110 + 1;
      v1 = v105;
      v24 += 48;
      if (v103 + v110 + 1 == 1)
      {
        goto LABEL_23;
      }
    }

    v33 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v89;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DAB25C88(0, *(v89 + 16) + 1, 1);
      v33 = v113;
    }

    v1 = v105;
    v35 = v99;
    v37 = *(v33 + 16);
    v36 = *(v33 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1DAB25C88((v36 > 1), v37 + 1, 1);
      v35 = v99;
      v33 = v113;
    }

    *(v33 + 16) = v37 + 1;
    v89 = v33;
    v38 = v33 + 48 * v37;
    *(v38 + 32) = v26;
    *(v38 + 40) = v27;
    *(v38 + 48) = v28;
    *(v38 + 56) = v96;
    *(v38 + 64) = v29;
    *(v38 + 72) = v95;
    *(v38 + 73) = v35;
    v22 = v110;
    v23 = v94;
  }

  while (v103 + v110);
LABEL_23:
  v39 = v108;

  sub_1DACB71E4();
  sub_1DACB71F4();
  v40 = v89;
  v41 = sub_1DACB8C74();
  v42 = sub_1DACB9914();

  if (os_log_type_enabled(v41, v42))
  {
    v44 = v108[16];
    v43 = v108[17];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v112 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_1DAA7ABE4(v44, v43, &v112);
    *(v45 + 12) = 2080;
    v47 = *(v89 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v104 = v46;
      v106 = v42;
      v111 = v41;
      v113 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v47, 0);
      v48 = v113;
      v49 = *(v113 + 16);
      v50 = 16 * v49;
      v51 = (v89 + 40);
      do
      {
        v52 = *(v51 - 1);
        v53 = *v51;
        v113 = v48;
        v54 = v49 + 1;
        v55 = *(v48 + 24);
        sub_1DACB71E4();
        if (v49 >= v55 >> 1)
        {
          sub_1DAA5859C((v55 > 1), v54, 1);
          v48 = v113;
        }

        *(v48 + 16) = v54;
        v56 = v48 + v50;
        *(v56 + 32) = v52;
        *(v56 + 40) = v53;
        v50 += 16;
        v51 += 6;
        ++v49;
        --v47;
      }

      while (v47);
      v39 = v108;
      v41 = v111;
      v42 = v106;
      v46 = v104;
    }

    v39[14] = v48;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v84 = sub_1DACB9214();
    v86 = v85;

    v87 = sub_1DAA7ABE4(v84, v86, &v112);

    *(v45 + 14) = v87;
    _os_log_impl(&dword_1DAA3F000, v41, v42, "Filtered down watchlists matching string=%s, watchlists=[%s]", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v46, -1, -1);
    MEMORY[0x1E1278C00](v45, -1, -1);

    v40 = v89;
    v57 = *(v89 + 16);
    if (!v57)
    {
      goto LABEL_44;
    }

LABEL_31:
    v58 = v39;
    v59 = v39[23];
    v60 = v58[19];
    v113 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v57, 0);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v61 = v113;
    v93 = (v60 + 104);
    v90 = (v59 + 8);
    v91 = (v59 + 16);
    v62 = (v40 + 64);
    v92 = *MEMORY[0x1E6968DF0];
    while (2)
    {
      v107 = v57;
      v63 = v108[20];
      v64 = v108[18];
      v97 = *(v62 - 4);
      v100 = *(v62 - 3);
      v65 = *(v62 - 1);
      v66 = *v62;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v93)(v63, v92, v64);
      v67 = v65;
      sub_1DACB7914();
      v68 = sub_1DACB6F34();
      if (v65 == sub_1DACB9324() && v66 == v69)
      {
        sub_1DACB71E4();

        goto LABEL_36;
      }

      v70 = sub_1DACBA174();
      sub_1DACB71E4();

      v71 = v97;
      v72 = v100;
      if (v70)
      {
LABEL_36:
        v101 = v68;
        v73 = v67;
        v75 = v108[24];
        v74 = v108[25];
        v76 = v108[22];
        sub_1DACB9284();
        (*v91)(v75, v74, v76);
        if (qword_1EE123DD8 != -1)
        {
          swift_once();
        }

        v77 = v108[25];
        v78 = v108[22];
        v79 = qword_1EE13E470;
        sub_1DACB7DF4();
        v71 = sub_1DACB9384();
        v72 = v80;
        (*v90)(v77, v78);

        v67 = v73;
        v68 = v101;
      }

      v108[11] = v71;
      v108[12] = v72;
      sub_1DACB6EE4();

      v113 = v61;
      v82 = *(v61 + 16);
      v81 = *(v61 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1DAB25C68((v81 > 1), v82 + 1, 1);
        v61 = v113;
      }

      *(v61 + 16) = v82 + 1;
      v83 = (v61 + 24 * v82);
      v83[4] = v67;
      v83[5] = v66;
      v83[6] = v68;
      v62 += 6;
      v57 = v107 - 1;
      if (v107 == 1)
      {

        v39 = v108;
        goto LABEL_45;
      }

      continue;
    }
  }

  v57 = *(v89 + 16);
  if (v57)
  {
    goto LABEL_31;
  }

LABEL_44:

  v61 = MEMORY[0x1E69E7CC0];
LABEL_45:

  v88 = v39[1];

  v88(v61);
}

uint64_t sub_1DAAFF09C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAAFF14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1DAAFF1F4;

  return WatchlistQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1DAAFF1F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t static WatchlistQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v18 = MEMORY[0x1E6968E10];
  sub_1DAB02E58(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v21 = &v17 - v2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DACB7904();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v19 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v12 = *MEMORY[0x1E6968DF0];
  v13 = *(v4 + 104);
  v13(v6, v12, v3);
  sub_1DACB7914();
  (*(v10 + 56))(v21, 1, 1, v9);
  sub_1DAB02E58(0, &qword_1ECBE6D78, v18, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 1) = xmmword_1DACC4A00;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  v14 = v20;
  sub_1DACB7094();
  v15 = sub_1DACB7084();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

uint64_t sub_1DAAFF940()
{
  sub_1DAB02EBC(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE6D48);
  __swift_project_value_buffer(v1, qword_1ECBE6D48);
  sub_1DAB02F28();
  sub_1DAADA468();
  return sub_1DACB7194();
}

uint64_t sub_1DAAFF9C8()
{
  sub_1DAB07544(0);
  swift_getKeyPath();
  sub_1DACB7114();
  sub_1DAADA468();
  v0 = sub_1DACB71F4();

  sub_1DAA6149C(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC4A10;
  *(v1 + 32) = v0;
  sub_1DAB02F28();
  sub_1DACB71F4();
  v2 = sub_1DACB7394();

  return v2;
}

uint64_t sub_1DAAFFAD8()
{
  sub_1DAB07624(0);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = v2;
  v4 = MEMORY[0x1EEE9AC00](v0);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  sub_1DAB076F0(0);
  swift_allocObject();
  sub_1DACB70C4();
  sub_1DAADA468();
  sub_1DACB73E4();

  sub_1DAB077B4(0);
  swift_allocObject();
  sub_1DACB7064();
  sub_1DACB73E4();

  sub_1DAB02E58(0, &unk_1ECBE6E30, sub_1DAB07624, MEMORY[0x1E69E6F90]);
  v9 = *(v2 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DACC1D40;
  v12 = v11 + v10;
  v13 = *(v3 + 16);
  v13(v12, v8, v1);
  v13(v12 + v9, v6, v1);
  sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DAB02F28();
  sub_1DAA8D9E8();
  v14 = sub_1DACB73D4();

  v15 = *(v3 + 8);
  v15(v6, v1);
  v15(v8, v1);
  return v14;
}

uint64_t sub_1DAAFFDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1DAB07888;
  a3[1] = v6;

  return sub_1DACB71E4();
}

uint64_t sub_1DAAFFE58@<X0>(_BYTE *a4@<X8>)
{
  sub_1DACB93A4();
  sub_1DACB93A4();
  sub_1DAA642D8();
  v5 = sub_1DACB9B64();

  *a4 = v5 & 1;
  return result;
}

uint64_t sub_1DAAFFEF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1DAB07880;
  a2[1] = v5;

  return sub_1DACB71E4();
}

uint64_t sub_1DAAFFF64@<X0>(_BYTE *a4@<X8>)
{
  v5 = sub_1DACB93A4();
  v7 = v6;
  if (v5 == sub_1DACB93A4() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DACBA174();
  }

  *a4 = v10 & 1;
  return result;
}

uint64_t static WatchlistQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59F8 != -1)
  {
    swift_once();
  }

  sub_1DAB02EBC(0);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D48);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB000B0()
{
  sub_1DAA8D834(0, &qword_1ECBE6D90, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A540]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE6D60);
  __swift_project_value_buffer(v1, qword_1ECBE6D60);
  sub_1DAADA468();
  return sub_1DACB72F4();
}

uint64_t sub_1DAB00168()
{
  sub_1DAA8D834(0, &qword_1ECBE6DF8, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A630]);
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  swift_getKeyPath();
  sub_1DAADA468();
  sub_1DAB07424();
  sub_1DACB73F4();
  sub_1DACB7444();
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_1DAB074B4(0);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  (*(v2 + 16))(v10 + v9, v7, v1);
  v11 = sub_1DACB7434();

  v8(v7, v1);
  return v11;
}

uint64_t static WatchlistQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A00 != -1)
  {
    swift_once();
  }

  sub_1DAA8D834(0, &qword_1ECBE6D90, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D60);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t WatchlistQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 257) = a5;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 256) = a2;
  *(v6 + 120) = a1;
  v7 = sub_1DACB78E4();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();
  sub_1DACB7E44();
  *(v6 + 168) = swift_task_alloc();
  v8 = sub_1DACB92E4();
  *(v6 + 176) = v8;
  *(v6 + 184) = *(v8 - 8);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  sub_1DACB7904();
  v9 = swift_task_alloc();
  v10 = *v5;
  *(v6 + 208) = v9;
  *(v6 + 216) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1DAB005E0, 0, 0);
}

uint64_t sub_1DAB005E0()
{
  v22 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  *(v0 + 224) = __swift_project_value_buffer(v1, qword_1EE11D390);
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = *(v0 + 128);
    v6 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 134218754;
    *(v8 + 4) = *(v7 + 16);

    *(v8 + 12) = 2080;
    v10 = sub_1DACB72E4();
    v11 = (v10 & 1) == 0;
    if (v10)
    {
      v12 = 6581857;
    }

    else
    {
      v12 = 29295;
    }

    if (v11)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_1DAA7ABE4(v12, v13, &v21);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2048;
    v15 = *(v5 + 16);

    *(v8 + 24) = v15;

    *(v8 + 32) = 2048;
    if (v4)
    {
      v16 = 0;
    }

    else
    {
      v16 = v6;
    }

    *(v8 + 34) = v16;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Querying watchlists matching property queryCount=%ld, comparatorMode=%s, sortCount=%ld, limit=%ld", v8, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_1DACB6D24();
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
  *(v0 + 232) = (*(v18 + 40))(1, v17, v18);
  v19 = swift_task_alloc();
  *(v0 + 240) = v19;
  *v19 = v0;
  v19[1] = sub_1DAB008A0;

  return MEMORY[0x1EEE44EE0](v0 + 72);
}

uint64_t sub_1DAB008A0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DAAFF09C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAB009C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB009C4()
{
  v172 = v0;
  v1 = v0;
  v2 = *(v0 + 224);
  v3 = *(v0 + 72);
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB9914();

  v148 = v0;
  v149 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    v171[0] = v7;
    *v6 = 136315138;
    v9 = *(v3 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v154 = v7;
      v158 = v6;
      v162 = v5;
      v165 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v9, 0);
      v10 = v165;
      v11 = *(v165 + 2);
      v12 = 16 * v11;
      v13 = (v3 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v165 = v10;
        v16 = v11 + 1;
        v17 = *(v10 + 3);
        sub_1DACB71E4();
        if (v11 >= v17 >> 1)
        {
          sub_1DAA5859C((v17 > 1), v16, 1);
          v10 = v165;
        }

        *(v10 + 2) = v16;
        v18 = &v10[v12];
        *(v18 + 4) = v14;
        *(v18 + 5) = v15;
        v12 += 16;
        v13 += 6;
        ++v11;
        --v9;
      }

      while (v9);
      v3 = v149;
      v5 = v162;
      v8 = v154;
      v6 = v158;
    }

    v1 = v148;
    *(v148 + 112) = v10;
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v19 = sub_1DACB9214();
    v21 = v20;

    v2 = sub_1DAA7ABE4(v19, v21, v171);

    *(v6 + 4) = v2;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetched all watchlists for property query, watchlists=[%s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v22 = *(v1 + 120);
  v141 = *(v22 + 16);
  if (!v141)
  {

    sub_1DAA8E020();
    v84 = sub_1DACB9624();
    goto LABEL_92;
  }

  v23 = 0;
  v24 = 0;
  v138 = v3 + 73;
  v139 = v22 + 32;
  v143 = *(v1 + 248);
  do
  {
    v145 = v23;
    v147 = v24;
    v25 = v139 + 16 * v24;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v3 + 16);
    sub_1DACB71E4();
    sub_1DACB71F4();
    v159 = v26;
    if (v28)
    {
      v29 = 0;
      v1 = v138;
      v30 = MEMORY[0x1E69E7CC0];
      v151 = v28;
      v155 = v27;
      while (v29 < *(v3 + 16))
      {
        v31 = *(v1 - 1);
        v32 = *(v1 - 9);
        v33 = *(v1 - 17);
        v34 = *(v1 - 25);
        v35 = *(v1 - 33);
        v165 = *(v1 - 41);
        *&v166 = v35;
        *(&v166 + 1) = v34;
        v167 = v33;
        v168 = v32;
        v169 = v31;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        (v27)(&v170, &v165);
        if (v170 == 1)
        {
          v2 = v165;
          v163 = v166;
          v37 = v167;
          v36 = v168;
          v38 = v169;
          v39 = HIBYTE(v169);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v171[0] = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAB25C88(0, *(v30 + 16) + 1, 1);
            v30 = v171[0];
          }

          v42 = *(v30 + 16);
          v41 = *(v30 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1DAB25C88((v41 > 1), v42 + 1, 1);
            v30 = v171[0];
          }

          *(v30 + 16) = v42 + 1;
          v43 = v30 + 48 * v42;
          *(v43 + 32) = v2;
          *(v43 + 40) = v163;
          *(v43 + 56) = v37;
          *(v43 + 64) = v36;
          *(v43 + 72) = v38;
          *(v43 + 73) = v39;
          v3 = v149;
          v28 = v151;
          v27 = v155;
          v26 = v159;
        }

        else
        {
          v2 = *(&v166 + 1);
        }

        ++v29;
        v1 += 48;
        if (v28 == v29)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_60;
    }

    v30 = MEMORY[0x1E69E7CC0];
LABEL_25:

    v44 = sub_1DAB0604C(v30);

    sub_1DACB71E4();
    v45 = sub_1DACB8C74();
    v46 = sub_1DACB98F4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v165 = v48;
      *v47 = 136315138;
      *(v148 + 104) = sub_1DAAFC004(v44);
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v49 = sub_1DACB9214();
      v51 = v50;

      v52 = sub_1DAA7ABE4(v49, v51, &v165);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1DAA3F000, v45, v46, "Filtered watchlists down to watchlists=[%s]", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1E1278C00](v48, -1, -1);
      MEMORY[0x1E1278C00](v47, -1, -1);
    }

    if (v145)
    {
      v1 = v148;
      if (*(v148 + 256))
      {
        v44 = sub_1DAB01C18(v44, v145);
        sub_1DACB71E4();
      }

      else
      {
        v55 = sub_1DAB038EC(v44, v145, sub_1DAB03B60, sub_1DAB03B60);

        sub_1DACB71F4();
        v44 = v55;
      }

      v2 = *(v148 + 224);
      sub_1DACB71E4();
      v56 = sub_1DACB8C74();
      v57 = sub_1DACB98F4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v165 = v59;
        *v58 = 136315394;
        v60 = sub_1DAAFC004(v44);

        *(v148 + 96) = v60;
        sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1DAA587CC();
        v61 = sub_1DACB9214();
        v63 = v62;

        v64 = sub_1DAA7ABE4(v61, v63, &v165);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2080;
        v65 = sub_1DACB72E4();
        v66 = (v65 & 1) == 0;
        if (v65)
        {
          v67 = 6581857;
        }

        else
        {
          v67 = 29295;
        }

        if (v66)
        {
          v2 = 0xE200000000000000;
        }

        else
        {
          v2 = 0xE300000000000000;
        }

        v68 = sub_1DAA7ABE4(v67, v2, &v165);

        *(v58 + 14) = v68;
        _os_log_impl(&dword_1DAA3F000, v56, v57, "Combined watchlist filter results into accumulated results=[%s], comparatorMode=%s", v58, 0x16u);
        swift_arrayDestroy();
        v69 = v59;
        v1 = v148;
        MEMORY[0x1E1278C00](v69, -1, -1);
        MEMORY[0x1E1278C00](v58, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v1 = v148;
      v2 = sub_1DACB8C74();
      v53 = sub_1DACB98F4();
      if (os_log_type_enabled(v2, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1DAA3F000, v2, v53, "No existing result for watchlist filters, so storing first results", v54, 2u);
        MEMORY[0x1E1278C00](v54, -1, -1);
      }
    }

    v24 = v147 + 1;
    v23 = v44;
  }

  while (v147 + 1 != v141);
  sub_1DACB71E4();
  v70 = sub_1DACB8C74();
  v71 = sub_1DACB9914();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v165 = v73;
    *v72 = 136315138;
    *(v148 + 88) = sub_1DAAFC004(v44);
    sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v74 = sub_1DACB9214();
    v76 = v75;

    v77 = sub_1DAA7ABE4(v74, v76, &v165);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_1DAA3F000, v70, v71, "Successfully applied all filters, found watchlists=[%s]", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    v78 = v73;
    v1 = v148;
    MEMORY[0x1E1278C00](v78, -1, -1);
    MEMORY[0x1E1278C00](v72, -1, -1);
  }

  v79 = *(v44 + 16);
  v80 = MEMORY[0x1E69E7CC0];
  if (!v79)
  {
LABEL_47:
    v82 = *(v1 + 128);
    v165 = v80;
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAB06D80(&v165, v82);
    if (v143)
    {
    }

    v2 = *(v1 + 224);

    v26 = v165;
    sub_1DACB71F4();
    v27 = sub_1DACB8C74();
    v85 = sub_1DACB9914();

    if (os_log_type_enabled(v27, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = v87;
      v171[0] = v87;
      *v86 = 136315138;
      v89 = *(v26 + 2);
      v90 = MEMORY[0x1E69E7CC0];
      if (v89)
      {
        v150 = v87;
        v152 = v86;
        v156 = v85;
        v160 = v27;
        v165 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v89, 0);
        v90 = v165;
        v91 = *(v165 + 2);
        v92 = 16 * v91;
        v93 = (v26 + 40);
        do
        {
          v94 = *(v93 - 1);
          v95 = *v93;
          v165 = v90;
          v96 = v91 + 1;
          v97 = *(v90 + 3);
          sub_1DACB71E4();
          if (v91 >= v97 >> 1)
          {
            sub_1DAA5859C((v97 > 1), v96, 1);
            v90 = v165;
          }

          *(v90 + 2) = v96;
          v98 = &v90[v92];
          *(v98 + 4) = v94;
          *(v98 + 5) = v95;
          v92 += 16;
          v93 += 6;
          ++v91;
          --v89;
        }

        while (v89);
        v27 = v160;
        v85 = v156;
        v88 = v150;
        v86 = v152;
      }

      *(v148 + 80) = v90;
      sub_1DAA6149C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v109 = sub_1DACB9214();
      v111 = v110;
      v1 = v148;

      v2 = sub_1DAA7ABE4(v109, v111, v171);

      *(v86 + 4) = v2;
      _os_log_impl(&dword_1DAA3F000, v27, v85, "Applied sorts to sortedWatchlists=[%s]", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x1E1278C00](v88, -1, -1);
      MEMORY[0x1E1278C00](v86, -1, -1);

      if ((*(v148 + 257) & 1) == 0)
      {
LABEL_61:
        v99 = *(v1 + 136);
        if ((v99 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        v100 = *(v26 + 2);
        if (v100 >= v99)
        {
          v100 = *(v1 + 136);
        }

        v101 = 2 * v100;
        if (v99)
        {
          v2 = v101 + 1;
        }

        else
        {
          v2 = 1;
        }

        sub_1DACBA194();
        swift_unknownObjectRetain_n();
        v102 = swift_dynamicCastClass();
        if (!v102)
        {
          swift_unknownObjectRelease();
          v102 = MEMORY[0x1E69E7CC0];
        }

        v103 = *(v102 + 16);

        if (v103 != v2 >> 1)
        {
          goto LABEL_97;
        }

        v104 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v104)
        {
          v104 = MEMORY[0x1E69E7CC0];
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_76;
    }

LABEL_60:

    if ((*(v1 + 257) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_76:

    v104 = v26;
    v112 = *(v26 + 2);
    if (!v112)
    {
      goto LABEL_91;
    }

    goto LABEL_77;
  }

  v80 = sub_1DAB02B38(*(v44 + 16), 0);
  v81 = sub_1DAB058F4(&v165, (v80 + 32), v79, v44);
  v2 = v165;
  v1 = v167;
  v26 = v44;
  sub_1DACB71E4();
  sub_1DAA54B38(v2);
  if (v81 == v79)
  {
    v1 = v148;
    goto LABEL_47;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  swift_unknownObjectRelease();
  sub_1DAB0300C(v26, (v26 + 32), 0, v2);
  v104 = v137;
LABEL_72:
  swift_unknownObjectRelease();
LABEL_73:
  v105 = sub_1DACB8C74();
  v106 = sub_1DACB9914();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = *(v1 + 136);
    v108 = swift_slowAlloc();
    *v108 = 134217984;
    *(v108 + 4) = v107;

    _os_log_impl(&dword_1DAA3F000, v105, v106, "Limited results down to limit=%ld", v108, 0xCu);
    MEMORY[0x1E1278C00](v108, -1, -1);
  }

  else
  {
  }

  v112 = *(v104 + 16);
  if (v112)
  {
LABEL_77:
    v113 = *(v1 + 184);
    v114 = *(v1 + 152);
    v165 = MEMORY[0x1E69E7CC0];
    sub_1DAB25C68(0, v112, 0);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v84 = v165;
    v146 = (v114 + 104);
    v140 = (v113 + 8);
    v142 = (v113 + 16);
    v115 = (v104 + 64);
    v144 = *MEMORY[0x1E6968DF0];
    while (1)
    {
      v161 = v84;
      v164 = v112;
      v116 = *(v1 + 160);
      v117 = *(v1 + 144);
      v118 = *(v115 - 3);
      v153 = *(v115 - 4);
      v119 = *(v115 - 1);
      v120 = *v115;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DACB9284();
      sub_1DACB7DF4();
      (*v146)(v116, v144, v117);
      sub_1DACB7914();
      v121 = sub_1DACB6F34();
      v157 = v119;
      if (v119 == sub_1DACB9324() && v120 == v122)
      {
        break;
      }

      v123 = sub_1DACBA174();
      sub_1DACB71E4();

      v124 = v118;
      v1 = v148;
      v125 = v153;
      if (v123)
      {
        goto LABEL_82;
      }

LABEL_85:

      *(v1 + 56) = v125;
      *(v1 + 64) = v124;
      sub_1DACB6EE4();

      v84 = v161;
      v165 = v161;
      v134 = *(v161 + 2);
      v133 = *(v161 + 3);
      if (v134 >= v133 >> 1)
      {
        sub_1DAB25C68((v133 > 1), v134 + 1, 1);
        v84 = v165;
      }

      *(v84 + 2) = v134 + 1;
      v135 = &v84[24 * v134];
      *(v135 + 4) = v157;
      *(v135 + 5) = v120;
      *(v135 + 6) = v121;
      v115 += 6;
      v112 = v164 - 1;
      if (v164 == 1)
      {

        goto LABEL_92;
      }
    }

    sub_1DACB71E4();

    v1 = v148;
LABEL_82:
    v127 = *(v1 + 192);
    v126 = *(v1 + 200);
    v128 = *(v1 + 176);
    sub_1DACB9284();
    (*v142)(v127, v126, v128);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v129 = *(v1 + 200);
    v130 = *(v1 + 176);
    v131 = qword_1EE13E470;
    sub_1DACB7DF4();
    v125 = sub_1DACB9384();
    v124 = v132;
    (*v140)(v129, v130);

    goto LABEL_85;
  }

LABEL_91:

  v84 = MEMORY[0x1E69E7CC0];
LABEL_92:

  v136 = *(v1 + 8);

  return v136(v84);
}

uint64_t sub_1DAB01C18(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v16 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 48 * (v11 | (v10 << 6)));
      v13 = *(v12 + 26);
      v14 = v12[1];
      v17 = *v12;
      v18[0] = v14;
      *(v18 + 10) = v13;
      sub_1DAA8DB84(&v17, v15);
      sub_1DAB88B38(v15, &v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v16;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB01D3C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v22 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1DAA9B1C8(v20))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + 136 * (v10 | (v9 << 6));
    v23[0] = *v11;
    v12 = *(v11 + 64);
    v14 = *(v11 + 16);
    v13 = *(v11 + 32);
    v23[3] = *(v11 + 48);
    v23[4] = v12;
    v23[1] = v14;
    v23[2] = v13;
    v16 = *(v11 + 96);
    v15 = *(v11 + 112);
    v17 = *(v11 + 80);
    v24 = *(v11 + 128);
    v23[6] = v16;
    v23[7] = v15;
    v23[5] = v17;
    sub_1DAA806E4(v23, v20);
    sub_1DAB88E84(v18, v23);
    v20[6] = v18[6];
    v20[7] = v18[7];
    v21 = v19;
    v20[2] = v18[2];
    v20[3] = v18[3];
    v20[4] = v18[4];
    v20[5] = v18[5];
    v20[0] = v18[0];
    v20[1] = v18[1];
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v22;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB01EB0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB01EE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE59F8 != -1)
  {
    swift_once();
  }

  sub_1DAB02EBC(0);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D48);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB01F90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A00 != -1)
  {
    swift_once();
  }

  sub_1DAA8D834(0, &qword_1ECBE6D90, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE6D60);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB02074(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1DAB07890;

  return WatchlistQuery.entities(matching:mode:sortedBy:limit:)(a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_1DAB0213C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_1DACB78E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB7904();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA8D834(0, &qword_1ECBE6DF0, sub_1DAADA468, &type metadata for WatchlistEntity, MEMORY[0x1E695A128]);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v67 - v20;
  v68 = a3;
  v21 = *(a3 + 2);
  if (!v21)
  {
    return 1;
  }

  v22 = *(a1 + 8);
  v85 = *a1;
  v95 = v22;
  v23 = *(a1 + 24);
  v84 = *(a1 + 16);
  v83 = v23;
  v82 = *(a1 + 32);
  v81 = *(a1 + 40);
  v80 = *(a1 + 41);
  v24 = *(a2 + 8);
  v77 = *a2;
  v76 = v24;
  v25 = *(a2 + 24);
  v75 = *(a2 + 16);
  v74 = v25;
  v73 = *(a2 + 32);
  v72 = *(a2 + 40);
  v27 = *(v19 + 16);
  v26 = v19 + 16;
  v79 = v27;
  v28 = (v7 + 104);
  v78 = (v26 - 8);
  v71 = *(a2 + 41);
  v29 = &v68[(*(v26 + 64) + 32) & ~*(v26 + 64)];
  v111 = *MEMORY[0x1E6968DF0];
  v30 = 1 - v21;
  v86 = v26;
  v69 = *(v26 + 56);
  v98 = v18;
  v70 = v6;
  v93 = v16;
  v94 = v13;
  v92 = (v7 + 104);
  while (1)
  {
    v33 = v96;
    v90 = v30;
    v88 = v29;
    v79(v99);
    sub_1DAA8D834(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    v97 = v34;
    sub_1DACB71E4();
    v35 = v84;
    sub_1DACB71E4();
    v36 = v82;
    sub_1DACB71E4();
    sub_1DACB9284();
    sub_1DACB7DF4();
    v91 = *v28;
    v91(v33, v111, v6);
    sub_1DACB7914();
    v37 = sub_1DACB6F34();
    v104 = v85;
    v105 = v95;
    v38 = v83;
    v106 = v35;
    v107 = v83;
    v108 = v36;
    v109 = v81;
    v110 = v80;
    sub_1DACB71E4();
    v39 = sub_1DAA6BA64();
    v41 = v40;

    v31 = v98;

    v101 = v39;
    v102 = v41;
    v42 = v99;
    sub_1DACB6EE4();
    sub_1DACB6F74();
    v101 = v38;
    v102 = v36;
    v103 = v37;
    swift_getAtPartialKeyPath();

    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v89 = v100;
    v43 = v76;
    sub_1DACB71E4();
    v44 = v75;
    sub_1DACB71E4();
    v45 = v73;
    sub_1DACB71E4();
    sub_1DACB9284();
    sub_1DACB7DF4();
    v91(v96, v111, v6);
    sub_1DACB7914();
    v46 = sub_1DACB6F34();
    v104 = v77;
    v105 = v43;
    v47 = v74;
    v106 = v44;
    v107 = v74;
    v108 = v45;
    v109 = v72;
    v110 = v71;
    sub_1DACB71E4();
    v48 = sub_1DAA6BA64();
    v49 = v42;
    v51 = v50;

    v101 = v48;
    v102 = v51;
    v42 = v49;
    sub_1DACB6EE4();
    v31 = v98;
    sub_1DACB6F74();
    v101 = v47;
    v102 = v45;
    v103 = v46;
    swift_getAtPartialKeyPath();

    if ((swift_dynamicCast() & 1) == 0)
    {

      break;
    }

    sub_1DACB6ED4();
    v52 = v104;
    v53 = v105;
    sub_1DACB6ED4();
    v54 = v104;
    v42 = v105;
    if (sub_1DACB6F84())
    {
      if (v52 != v54 || v53 != v42)
      {
        goto LABEL_13;
      }
    }

    else if (v54 != v52 || v42 != v53)
    {
LABEL_13:
      v55 = sub_1DACBA174();

      v31 = v98;
      (*v78)(v99, v98);
      v6 = v70;
      v32 = v90;
      if ((v55 & 1) != 0 || !v90)
      {
        return 1;
      }

      goto LABEL_4;
    }

    v31 = v98;
    (*v78)(v99, v98);
    v6 = v70;
    v32 = v90;
    if (!v90)
    {
      return 1;
    }

LABEL_4:
    v29 = &v88[v69];
    v30 = v32 + 1;
    v28 = v92;
    if (v30 == 1)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  v53 = v68;
  if (qword_1EE11D388 == -1)
  {
    goto LABEL_18;
  }

LABEL_23:
  swift_once();
LABEL_18:
  v56 = sub_1DACB8C94();
  __swift_project_value_buffer(v56, qword_1EE11D390);
  sub_1DACB71E4();
  v57 = sub_1DACB8C74();
  v58 = sub_1DACB9904();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v104 = v60;
    *v59 = 136315138;
    v61 = MEMORY[0x1E1277130](v53, v31);
    v63 = sub_1DAA7ABE4(v61, v62, &v104);

    *(v59 + 4) = v63;
    v64 = v99;
    _os_log_impl(&dword_1DAA3F000, v57, v58, "Watchlist sorts unexpectedly contained a parameter which is not a String. sorts=%s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    v65 = v60;
    v42 = v64;
    MEMORY[0x1E1278C00](v65, -1, -1);
    MEMORY[0x1E1278C00](v59, -1, -1);
  }

  MEMORY[0x1E1275DD0]("Encountered a WatchlistEntity value in WatchlistQuery which is not a String. We need to add explicit support for this in the property queries.", 142, 2, MEMORY[0x1E69E7CC0]);
  (*v78)(v42, v31);
  return 1;
}

void *sub_1DAB02B38(uint64_t a1, uint64_t a2)
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

  sub_1DAA6149C(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1DAB02BE0(uint64_t a1, uint64_t a2)
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

  sub_1DAA6149C(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1DAB02C90(uint64_t a1, uint64_t a2)
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

  sub_1DAA6149C(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x7878787878787879) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *sub_1DAB02D38(uint64_t a1, uint64_t a2)
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

  sub_1DAB02E58(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6F90]);
  v4 = *(sub_1DACB7AB4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAB02E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAB02EBC(uint64_t a1)
{
  if (!qword_1ECBE6D80)
  {
    sub_1DAB02F28();
    sub_1DAADA468();
    v1 = sub_1DACB71A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE6D80);
    }
  }
}

unint64_t sub_1DAB02F28()
{
  result = qword_1ECBE6D88;
  if (!qword_1ECBE6D88)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1ECBE6D88);
  }

  return result;
}

void *sub_1DAB02F80(uint64_t a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DAB02BE0(*(*a1 + 16), 0);
  sub_1DAB07228(a1, v6);
  v4 = sub_1DAB05768(v6, v3 + 2, v1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1DAB0300C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1DAA6149C(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1DAB0310C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1DAA6149C(0, &qword_1EE11F4E8, &type metadata for Headline, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 144);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1DAB03214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1DAA6149C(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 136);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1DAB03314(char *__src, char *a2, char *a3, char *a4, char *a5)
{
  v6 = v5;
  v7 = a3;
  v8 = a2;
  v10 = a2 - __src;
  v11 = (a2 - __src) / 48;
  v12 = a3 - a2;
  v13 = (a3 - a2) / 48;
  v82 = a4;
  if (v11 < v13)
  {
    v14 = 48 * v11;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, v14);
      a4 = v82;
    }

    v15 = &a4[v14];
    if (v10 < 48)
    {
      v37 = __src;
      goto LABEL_44;
    }

    v16 = __src;
    if (v8 < v7)
    {
      while (1)
      {
        v17 = *(v8 + 1);
        v19 = *(v8 + 2);
        v18 = *(v8 + 3);
        v20 = *(v8 + 4);
        v21 = v8[40];
        v22 = v8[41];
        v76 = *v8;
        v77 = v17;
        v78 = v19;
        v79 = v18;
        v80 = v20;
        LOBYTE(v81) = v21;
        HIBYTE(v81) = v22;
        v23 = *a4;
        v24 = *(a4 + 1);
        v25 = v6;
        v27 = *(a4 + 2);
        v26 = *(a4 + 3);
        v28 = *(a4 + 4);
        v29 = a4[40];
        v82 = a4;
        v30 = a4[41];
        v70 = v23;
        v71 = v24;
        v72 = v27;
        v73 = v26;
        v74 = v28;
        LOBYTE(v75) = v29;
        HIBYTE(v75) = v30;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        v31 = sub_1DAB0213C(&v76, &v70, a5);
        v6 = v25;
        if (v25)
        {

          v62 = v82;
          v63 = 48 * ((v15 - v82) / 48);
          if (v16 < v82 || v16 >= &v82[v63] || v16 != v82)
          {
            v37 = v16;
            goto LABEL_48;
          }

          goto LABEL_49;
        }

        v32 = v31;

        if ((v32 & 1) == 0)
        {
          break;
        }

        v33 = v8;
        v34 = v16 == v8;
        v8 += 48;
        a4 = v82;
        if (!v34)
        {
          goto LABEL_13;
        }

LABEL_14:
        v16 += 48;
        if (a4 >= v15 || v8 >= v7)
        {
          goto LABEL_16;
        }
      }

      v33 = v82;
      a4 = v82 + 48;
      if (v16 == v82)
      {
        goto LABEL_14;
      }

LABEL_13:
      v35 = *v33;
      v36 = *(v33 + 2);
      *(v16 + 1) = *(v33 + 1);
      *(v16 + 2) = v36;
      *v16 = v35;
      goto LABEL_14;
    }

LABEL_16:
    v37 = v16;
LABEL_44:
    v63 = 48 * ((v15 - a4) / 48);
    if (v37 >= a4 && v37 < &a4[v63] && v37 == a4)
    {
      goto LABEL_49;
    }

    v62 = a4;
LABEL_48:
    memmove(v37, v62, v63);
    goto LABEL_49;
  }

  v38 = 48 * v13;
  if (a4 != a2 || &a2[v38] <= a4)
  {
    memmove(a4, a2, 48 * v13);
    a4 = v82;
  }

  v15 = &a4[v38];
  if (v12 < 48 || v8 <= __src)
  {
    v37 = v8;
    goto LABEL_44;
  }

LABEL_22:
  v67 = v7;
  v68 = v6;
  v39 = 0;
  v40 = v15;
  v65 = v8 - 48;
  while (1)
  {
    v41 = v40;
    v42 = &v40[v39];
    v43 = &v40[v39 - 48];
    v44 = *&v40[v39 - 40];
    v45 = *&v40[v39 - 32];
    v46 = *&v40[v39 - 24];
    v47 = *(v42 - 2);
    v48 = *(v42 - 4);
    v76 = *v43;
    v77 = v44;
    v78 = v45;
    v79 = v46;
    v80 = v47;
    v81 = v48;
    v49 = *(v8 - 5);
    v51 = *(v8 - 4);
    v50 = *(v8 - 3);
    v52 = *(v8 - 2);
    v53 = *(v8 - 4);
    v70 = *(v8 - 6);
    v71 = v49;
    v72 = v51;
    v73 = v50;
    v74 = v52;
    v75 = v53;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v54 = sub_1DAB0213C(&v76, &v70, a5);
    if (v68)
    {
      break;
    }

    v55 = v54;

    if (v55)
    {
      v7 = &v67[v39 - 48];
      a4 = v82;
      v37 = v8 - 48;
      v59 = v41;
      if (&v67[v39] != v8)
      {
        v60 = *v65;
        v61 = *(v8 - 1);
        *&v67[v39 - 32] = *(v8 - 2);
        *&v67[v39 - 16] = v61;
        *v7 = v60;
      }

      v15 = &v41[v39];
      v6 = 0;
      if (&v59[v39] <= a4 || (v8 -= 48, v65 <= __src))
      {
        v15 = &v59[v39];
        goto LABEL_44;
      }

      goto LABEL_22;
    }

    a4 = v82;
    v40 = v41;
    if (&v67[v39] != v42)
    {
      v56 = &v67[v39 - 48];
      v57 = *v43;
      v58 = *(v43 + 32);
      *(v56 + 1) = *(v43 + 16);
      *(v56 + 2) = v58;
      *v56 = v57;
    }

    v39 -= 48;
    v15 = &v41[v39];
    if (&v40[v39] <= a4)
    {
      v37 = v8;
      goto LABEL_44;
    }
  }

  v62 = v82;
  v63 = 48 * ((v41 - v82 + v39) / 48);
  if (v8 < v82 || v8 >= &v82[v63])
  {
    memmove(v8, v82, v63);
    goto LABEL_49;
  }

  if (v8 != v82)
  {
    v37 = v8;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

void *sub_1DAB0387C(uint64_t a1, uint64_t a2)
{

  return sub_1DAB038EC(a1, a2, sub_1DAB04318, sub_1DAB04318);
}

void *sub_1DAB038EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  sub_1DACB71F4();
  isStackAllocationSafe = sub_1DACB71F4();
  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();
    sub_1DACB71F4();
    v13 = sub_1DAB03AC8(v15, v10, a2, a1, a4);

    MEMORY[0x1E1278C00](v15, -1, -1);
  }

  return v13;
}

void *sub_1DAB03AC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1DAB03B60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v72 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_59;
  }

  v6 = 0;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 56);
  v70 = (v8 + 63) >> 6;
  v98 = a3 + 56;
  v73 = a4 + 56;
  v75 = 0;
  while (1)
  {
LABEL_7:
    if (v10)
    {
      v11 = __clz(__rbit64(v10));
      v76 = (v10 - 1) & v10;
    }

    else
    {
      v12 = v6;
      do
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_119;
        }

        if (v6 >= v70)
        {
          goto LABEL_116;
        }

        v13 = *(v7 + 8 * v6);
        ++v12;
      }

      while (!v13);
      v11 = __clz(__rbit64(v13));
      v76 = (v13 - 1) & v13;
    }

    v78 = v6;
    v14 = *(v4 + 48) + 48 * (v11 | (v6 << 6));
    v15 = *v14;
    v16 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    LODWORD(v14) = *(v14 + 41);
    v104 = v15;
    v107 = v15;
    v108 = v16;
    v109 = v18;
    v110 = v17;
    v92 = v17;
    v111 = v19;
    v80 = v20;
    v112 = v20;
    v84 = v14;
    v113 = v14;
    sub_1DACBA284();
    v114 = v16;
    sub_1DACB71E4();
    v102 = v18;
    sub_1DACB71E4();
    v90 = v19;
    sub_1DACB71E4();
    sub_1DABE6B08(v106);
    v21 = sub_1DACBA2C4();
    v22 = -1 << *(v5 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & *(v98 + 8 * (v23 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v4 = a4;
    v5 = a3;
    v7 = v73;
    v10 = v76;
    v6 = v78;
  }

  v94 = ~v22;
  v96 = *(a3 + 48);
  v88 = v80 & 0xE0;
  v82 = (v18 + 40);
  while (1)
  {
    v26 = v96 + 48 * v23;
    result = *v26;
    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    v29 = *(v26 + 32);
    v30 = *(v26 + 40);
    v100 = *(v26 + 41);
    if (*v26 != v104 || *(v26 + 8) != v114)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v32 = *(v28 + 16);
    if (v32 != *(v102 + 16))
    {
      goto LABEL_18;
    }

    if (v32)
    {
      v33 = v28 == v102;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      v35 = (v28 + 40);
      v36 = v82;
      while (v32)
      {
        result = *(v35 - 1);
        if (result != *(v36 - 1) || *v35 != *v36)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v35 += 2;
        v36 += 2;
        if (!--v32)
        {
          goto LABEL_30;
        }
      }

LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      return result;
    }

LABEL_30:
    if ((v27 != v92 || v29 != v90) && (sub_1DACBA174() & 1) == 0)
    {
      goto LABEL_18;
    }

    v34 = v30 >> 5;
    if (v30 >> 5 > 2)
    {
      if (v34 == 3)
      {
        if (v88 != 96)
        {
          goto LABEL_18;
        }
      }

      else if (v34 == 4)
      {
        if (v88 != 128)
        {
          goto LABEL_18;
        }
      }

      else if (v80 != 160)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v34)
    {
      break;
    }

    if (v80 <= 0x1F)
    {
      goto LABEL_17;
    }

LABEL_18:
    v23 = (v23 + 1) & v94;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if ((*(v98 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v34 == 1)
  {
    if (v88 != 32)
    {
      goto LABEL_18;
    }
  }

  else if (v88 != 64)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (v100 != v84)
  {
    goto LABEL_18;
  }

  v7 = v73;
  v72[v24] |= v25;
  v10 = v76;
  v38 = __OFADD__(v75++, 1);
  v4 = a4;
  v5 = a3;
  v6 = v78;
  if (!v38)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_59:
  v39 = 0;
  v40 = v5 + 56;
  v41 = 1 << *(v5 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v5 + 56);
  v74 = (v41 + 63) >> 6;
  v75 = 0;
  v101 = v4 + 56;
  v79 = v5 + 56;
  while (1)
  {
LABEL_64:
    if (v43)
    {
      v44 = __clz(__rbit64(v43));
      v81 = (v43 - 1) & v43;
    }

    else
    {
      v45 = v39;
      do
      {
        v39 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_120;
        }

        if (v39 >= v74)
        {
          goto LABEL_116;
        }

        v46 = *(v40 + 8 * v39);
        ++v45;
      }

      while (!v46);
      v44 = __clz(__rbit64(v46));
      v81 = (v46 - 1) & v46;
    }

    v77 = v44 | (v39 << 6);
    v47 = *(v5 + 48) + 48 * v77;
    v48 = *v47;
    v49 = *(v47 + 8);
    v51 = *(v47 + 16);
    v50 = *(v47 + 24);
    v52 = *(v47 + 32);
    v53 = *(v47 + 40);
    LODWORD(v47) = *(v47 + 41);
    v105 = v48;
    v107 = v48;
    v108 = v49;
    v109 = v51;
    v110 = v50;
    v95 = v50;
    v111 = v52;
    v83 = v53;
    v112 = v53;
    v89 = v47;
    v113 = v47;
    sub_1DACBA284();
    v114 = v49;
    sub_1DACB71E4();
    v103 = v51;
    sub_1DACB71E4();
    v93 = v52;
    sub_1DACB71E4();
    sub_1DABE6B08(v106);
    v54 = sub_1DACBA2C4();
    v55 = -1 << *(v4 + 32);
    v56 = v54 & ~v55;
    if ((*(v101 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
    {
      break;
    }

LABEL_63:

    v4 = a4;
    v5 = a3;
    v40 = v79;
    v43 = v81;
  }

  v97 = ~v55;
  v99 = *(a4 + 48);
  v91 = v83 & 0xE0;
  v85 = (v51 + 40);
  while (2)
  {
    v57 = v99 + 48 * v56;
    result = *v57;
    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    v60 = *(v57 + 32);
    v61 = *(v57 + 40);
    v62 = *(v57 + 41);
    if (*v57 != v105 || *(v57 + 8) != v114)
    {
      result = sub_1DACBA174();
      if ((result & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v64 = *(v59 + 16);
    if (v64 != *(v103 + 16))
    {
      goto LABEL_75;
    }

    if (v64)
    {
      v65 = v59 == v103;
    }

    else
    {
      v65 = 1;
    }

    if (!v65)
    {
      v67 = (v59 + 40);
      v68 = v85;
      while (v64)
      {
        result = *(v67 - 1);
        if (result != *(v68 - 1) || *v67 != *v68)
        {
          result = sub_1DACBA174();
          if ((result & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        v67 += 2;
        v68 += 2;
        if (!--v64)
        {
          goto LABEL_87;
        }
      }

      __break(1u);
      goto LABEL_118;
    }

LABEL_87:
    if ((v58 != v95 || v60 != v93) && (sub_1DACBA174() & 1) == 0)
    {
LABEL_75:
      v56 = (v56 + 1) & v97;
      if (((*(v101 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  v66 = v61 >> 5;
  if (v61 >> 5 > 2)
  {
    if (v66 == 3)
    {
      if (v91 == 96)
      {
        goto LABEL_74;
      }
    }

    else if (v66 == 4)
    {
      if (v91 == 128)
      {
        goto LABEL_74;
      }
    }

    else if (v83 == 160)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (!v66)
  {
    if (v83 > 0x1F)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v66 != 1)
  {
    if (v91 == 64)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if (v91 != 32)
  {
    goto LABEL_75;
  }

LABEL_74:
  if (v62 != v89)
  {
    goto LABEL_75;
  }

  *(v72 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
  v38 = __OFADD__(v75++, 1);
  v4 = a4;
  v5 = a3;
  v40 = v79;
  v43 = v81;
  if (!v38)
  {
    goto LABEL_64;
  }

  __break(1u);
LABEL_116:
  sub_1DACB71F4();
  return sub_1DAB0517C(v72, a2, v75, v5);
}

unint64_t sub_1DAB04318(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v92 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v47 = 0;
    v93 = 0;
    v95 = a3 + 56;
    v48 = 1 << *(a3 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(a3 + 56);
    v51 = (v48 + 63) >> 6;
    v52 = a4 + 56;
    v112 = a4 + 56;
    v97 = v51;
    while (1)
    {
LABEL_111:
      if (v50)
      {
        v53 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
      }

      else
      {
        v54 = v47;
        do
        {
          v47 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_213;
          }

          if (v47 >= v51)
          {
            goto LABEL_211;
          }

          v55 = *(v95 + 8 * v47);
          ++v54;
        }

        while (!v55);
        v53 = __clz(__rbit64(v55));
        v50 = (v55 - 1) & v55;
      }

      v56 = v53 | (v47 << 6);
      v57 = *(v5 + 48) + 136 * v56;
      v132 = *v57;
      v58 = *(v57 + 64);
      v60 = *(v57 + 16);
      v59 = *(v57 + 32);
      v135 = *(v57 + 48);
      v136 = v58;
      v133 = v60;
      v134 = v59;
      v62 = *(v57 + 96);
      v61 = *(v57 + 112);
      v63 = *(v57 + 80);
      v140 = *(v57 + 128);
      v138 = v62;
      v139 = v61;
      v137 = v63;
      *&v129[16] = *(v57 + 80);
      *v130 = *(v57 + 96);
      *&v130[16] = *(v57 + 112);
      v131 = *(v57 + 128);
      v126 = *(v57 + 16);
      v127 = *(v57 + 32);
      v128 = *(v57 + 48);
      *v129 = *(v57 + 64);
      v125 = *v57;
      sub_1DACBA284();
      sub_1DAA806E4(&v132, v123);
      sub_1DAB08BD4(v124);
      v64 = sub_1DACBA2C4();
      v65 = -1 << *(v4 + 32);
      v66 = v64 & ~v65;
      if (((*(v52 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
      {
        result = sub_1DAA9B1C8(&v132);
        v5 = a3;
        continue;
      }

      v90 = v56;
      v99 = v50;
      v141 = ~v65;
      v67 = v136;
      v68 = v132;
      v69 = v133;
      *(&v119 + 1) = v134;
      v122 = *(&v133 + 1);
      *(&v117 + 1) = v135;
      *&v119 = *(&v134 + 1);
      *(&v115 + 1) = *(&v136 + 1);
      *&v117 = *(&v135 + 1);
      *&v115 = v137;
      *&v108 = v138;
      *(&v108 + 1) = *(&v137 + 1);
      v101 = *(&v139 + 1);
      v103 = *(&v138 + 1);
      v105 = v140;
      v106 = v139;
      while (1)
      {
        v70 = *(v4 + 48) + 136 * v66;
        v125 = *v70;
        v71 = *(v70 + 64);
        v73 = *(v70 + 16);
        v72 = *(v70 + 32);
        v128 = *(v70 + 48);
        *v129 = v71;
        v126 = v73;
        v127 = v72;
        v75 = *(v70 + 96);
        v74 = *(v70 + 112);
        v76 = *(v70 + 80);
        v131 = *(v70 + 128);
        *v130 = v75;
        *&v130[16] = v74;
        *&v129[16] = v76;
        if (v125 != v68 && (sub_1DACBA174() & 1) == 0 || v126 != __PAIR128__(v122, v69) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v127, *(&v127 + 1)) != v119 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v128, *(&v128 + 1)) != v117 && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_122;
        }

        if (v129[0] > 3u)
        {
          if (v129[0] > 5u)
          {
            if (v129[0] == 6)
            {
              v78 = 0xE500000000000000;
              v77 = 0x7865646E69;
              if (v67 > 3)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v77 = 0x75466C617574756DLL;
              v78 = 0xEA0000000000646ELL;
              if (v67 > 3)
              {
                goto LABEL_157;
              }
            }
          }

          else
          {
            if (v129[0] == 4)
            {
              v77 = 6714469;
            }

            else
            {
              v77 = 0x73657275747566;
            }

            if (v129[0] == 4)
            {
              v78 = 0xE300000000000000;
            }

            else
            {
              v78 = 0xE700000000000000;
            }

            if (v67 > 3)
            {
LABEL_157:
              v79 = 0x75466C617574756DLL;
              if (v67 == 6)
              {
                v79 = 0x7865646E69;
              }

              v80 = 0xEA0000000000646ELL;
              if (v67 == 6)
              {
                v80 = 0xE500000000000000;
              }

              v81 = 0x73657275747566;
              if (v67 == 4)
              {
                v81 = 6714469;
              }

              v82 = 0xE700000000000000;
              if (v67 == 4)
              {
                v82 = 0xE300000000000000;
              }

              if (v67 <= 5)
              {
                v83 = v81;
              }

              else
              {
                v83 = v79;
              }

              if (v67 <= 5)
              {
                v84 = v82;
              }

              else
              {
                v84 = v80;
              }

              if (v77 != v83)
              {
                goto LABEL_189;
              }

              goto LABEL_187;
            }
          }
        }

        else if (v129[0] > 1u)
        {
          if (v129[0] == 2)
          {
            v77 = 0x75636F7470797263;
            v78 = 0xEE0079636E657272;
            if (v67 > 3)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v78 = 0xE600000000000000;
            v77 = 0x797469757165;
            if (v67 > 3)
            {
              goto LABEL_157;
            }
          }
        }

        else
        {
          if (v129[0])
          {
            v77 = 0x79636E6572727563;
          }

          else
          {
            v77 = 0x6E776F6E6B6E75;
          }

          if (v129[0])
          {
            v78 = 0xE800000000000000;
          }

          else
          {
            v78 = 0xE700000000000000;
          }

          if (v67 > 3)
          {
            goto LABEL_157;
          }
        }

        if (v67 > 1)
        {
          if (v67 == 2)
          {
            v85 = 0x75636F7470797263;
          }

          else
          {
            v85 = 0x797469757165;
          }

          if (v67 == 2)
          {
            v84 = 0xEE0079636E657272;
          }

          else
          {
            v84 = 0xE600000000000000;
          }

          if (v77 != v85)
          {
            goto LABEL_189;
          }
        }

        else if (v67)
        {
          v84 = 0xE800000000000000;
          if (v77 != 0x79636E6572727563)
          {
            goto LABEL_189;
          }
        }

        else
        {
          v84 = 0xE700000000000000;
          if (v77 != 0x6E776F6E6B6E75)
          {
            goto LABEL_189;
          }
        }

LABEL_187:
        if (v78 == v84)
        {
          sub_1DAA806E4(&v125, v123);

          v52 = v112;
          goto LABEL_190;
        }

LABEL_189:
        v86 = sub_1DACBA174();
        sub_1DAA806E4(&v125, v123);

        v52 = v112;
        if ((v86 & 1) == 0)
        {
          goto LABEL_121;
        }

LABEL_190:
        if (__PAIR128__(*&v129[8], *&v129[16]) != v115 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(*&v129[24], *v130) != v108 && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_121;
        }

        if (*&v130[16])
        {
          if (!v106 || *&v130[8] != __PAIR128__(v106, v103) && (sub_1DACBA174() & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        else if (v106)
        {
          goto LABEL_121;
        }

        if (!v131)
        {
          if (!v105)
          {
            goto LABEL_207;
          }

          goto LABEL_121;
        }

        if (v105)
        {
          break;
        }

LABEL_121:
        sub_1DAA9B1C8(&v125);
        v4 = a4;
LABEL_122:
        v66 = (v66 + 1) & v141;
        if (((*(v52 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
        {
          result = sub_1DAA9B1C8(&v132);
          v5 = a3;
          v51 = v97;
          v50 = v99;
          goto LABEL_111;
        }
      }

      if (*&v130[24] != v101 || v131 != v105)
      {
        v87 = sub_1DACBA174();
        sub_1DAA9B1C8(&v125);
        v4 = a4;
        if (v87)
        {
          goto LABEL_208;
        }

        goto LABEL_122;
      }

LABEL_207:
      sub_1DAA9B1C8(&v125);
      v4 = a4;
LABEL_208:
      v50 = v99;
      result = sub_1DAA9B1C8(&v132);
      *(v92 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
      v46 = __OFADD__(v93++, 1);
      v5 = a3;
      v51 = v97;
      if (v46)
      {
        __break(1u);
LABEL_211:
        sub_1DACB71F4();
        return sub_1DAB05504(v92, a2, v93, v5);
      }
    }
  }

  v93 = 0;
  v6 = 0;
  v88 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v121 = a3 + 56;
  v89 = v10;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        if (v9)
        {
          v11 = __clz(__rbit64(v9));
          v96 = (v9 - 1) & v9;
          goto LABEL_14;
        }

        v12 = v6;
        do
        {
          v6 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_213:
            __break(1u);
            goto LABEL_214;
          }

          if (v6 >= v10)
          {
            goto LABEL_211;
          }

          v13 = *(v88 + 8 * v6);
          ++v12;
        }

        while (!v13);
        v11 = __clz(__rbit64(v13));
        v96 = (v13 - 1) & v13;
LABEL_14:
        v14 = *(v4 + 48) + 136 * (v11 | (v6 << 6));
        v132 = *v14;
        v15 = *(v14 + 64);
        v17 = *(v14 + 16);
        v16 = *(v14 + 32);
        v135 = *(v14 + 48);
        v136 = v15;
        v133 = v17;
        v134 = v16;
        v19 = *(v14 + 96);
        v18 = *(v14 + 112);
        v20 = *(v14 + 80);
        v140 = *(v14 + 128);
        v138 = v19;
        v139 = v18;
        v137 = v20;
        *&v129[16] = *(v14 + 80);
        *v130 = *(v14 + 96);
        *&v130[16] = *(v14 + 112);
        v131 = *(v14 + 128);
        v126 = *(v14 + 16);
        v127 = *(v14 + 32);
        v128 = *(v14 + 48);
        *v129 = *(v14 + 64);
        v125 = *v14;
        sub_1DACBA284();
        sub_1DAA806E4(&v132, v123);
        sub_1DAB08BD4(v124);
        v21 = sub_1DACBA2C4();
        v22 = -1 << *(v5 + 32);
        v23 = v21 & ~v22;
        v24 = v23 >> 6;
        v25 = 1 << v23;
        if (((1 << v23) & *(v121 + 8 * (v23 >> 6))) == 0)
        {
          result = sub_1DAA9B1C8(&v132);
          v9 = v96;
          continue;
        }

        break;
      }

      v120 = ~v22;
      v109 = v136;
      v26 = v132;
      v141 = v133;
      *(&v116 + 1) = v134;
      v118 = *(&v133 + 1);
      *(&v114 + 1) = v135;
      *&v116 = *(&v134 + 1);
      *&v114 = *(&v135 + 1);
      v111 = *(&v136 + 1);
      *(&v104 + 1) = *(&v137 + 1);
      v107 = v137;
      v102 = v139;
      *&v104 = v138;
      v94 = *(&v139 + 1);
      v98 = *(&v138 + 1);
      v100 = v140;
LABEL_19:
      v27 = *(v5 + 48) + 136 * v23;
      v125 = *v27;
      v28 = *(v27 + 64);
      v30 = *(v27 + 16);
      v29 = *(v27 + 32);
      v128 = *(v27 + 48);
      *v129 = v28;
      v126 = v30;
      v127 = v29;
      v32 = *(v27 + 96);
      v31 = *(v27 + 112);
      v33 = *(v27 + 80);
      v131 = *(v27 + 128);
      *v130 = v32;
      *&v130[16] = v31;
      *&v129[16] = v33;
      if (v125 != v26 && (sub_1DACBA174() & 1) == 0 || v126 != __PAIR128__(v118, v141) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v127, *(&v127 + 1)) != v116 && (sub_1DACBA174() & 1) == 0 || __PAIR128__(v128, *(&v128 + 1)) != v114 && (sub_1DACBA174() & 1) == 0)
      {
LABEL_18:
        v23 = (v23 + 1) & v120;
        v24 = v23 >> 6;
        v25 = 1 << v23;
        if ((*(v121 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
        {
          result = sub_1DAA9B1C8(&v132);
          v4 = a4;
          v10 = v89;
          v9 = v96;
          continue;
        }

        goto LABEL_19;
      }

      break;
    }

    if (v129[0] > 3u)
    {
      v34 = v109;
      if (v129[0] > 5u)
      {
        if (v129[0] == 6)
        {
          v36 = 0xE500000000000000;
          v35 = 0x7865646E69;
          if (v109 <= 3)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v35 = 0x75466C617574756DLL;
          v36 = 0xEA0000000000646ELL;
          if (v109 <= 3)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_53;
      }

      if (v129[0] == 4)
      {
        v35 = 6714469;
      }

      else
      {
        v35 = 0x73657275747566;
      }

      if (v129[0] == 4)
      {
        v36 = 0xE300000000000000;
      }

      else
      {
        v36 = 0xE700000000000000;
      }

      if (v109 > 3)
      {
        goto LABEL_53;
      }

LABEL_70:
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v43 = 0x75636F7470797263;
        }

        else
        {
          v43 = 0x797469757165;
        }

        if (v34 == 2)
        {
          v42 = 0xEE0079636E657272;
        }

        else
        {
          v42 = 0xE600000000000000;
        }

        if (v35 != v43)
        {
          goto LABEL_85;
        }
      }

      else if (v34)
      {
        v42 = 0xE800000000000000;
        if (v35 != 0x79636E6572727563)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v42 = 0xE700000000000000;
        if (v35 != 0x6E776F6E6B6E75)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      v34 = v109;
      if (v129[0] > 1u)
      {
        if (v129[0] == 2)
        {
          v35 = 0x75636F7470797263;
          v36 = 0xEE0079636E657272;
          if (v109 <= 3)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v36 = 0xE600000000000000;
          v35 = 0x797469757165;
          if (v109 <= 3)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (v129[0])
        {
          v35 = 0x79636E6572727563;
        }

        else
        {
          v35 = 0x6E776F6E6B6E75;
        }

        if (v129[0])
        {
          v36 = 0xE800000000000000;
        }

        else
        {
          v36 = 0xE700000000000000;
        }

        if (v109 <= 3)
        {
          goto LABEL_70;
        }
      }

LABEL_53:
      v37 = 0x75466C617574756DLL;
      if (v34 == 6)
      {
        v37 = 0x7865646E69;
      }

      v38 = 0xEA0000000000646ELL;
      if (v34 == 6)
      {
        v38 = 0xE500000000000000;
      }

      v39 = 0x73657275747566;
      if (v34 == 4)
      {
        v39 = 6714469;
      }

      v40 = 0xE700000000000000;
      if (v34 == 4)
      {
        v40 = 0xE300000000000000;
      }

      if (v34 <= 5)
      {
        v41 = v39;
      }

      else
      {
        v41 = v37;
      }

      if (v34 <= 5)
      {
        v42 = v40;
      }

      else
      {
        v42 = v38;
      }

      if (v35 != v41)
      {
LABEL_85:
        v44 = sub_1DACBA174();
        sub_1DAA806E4(&v125, v123);

        if (v44)
        {
          goto LABEL_86;
        }

        goto LABEL_17;
      }
    }

    if (v36 != v42)
    {
      goto LABEL_85;
    }

    sub_1DAA806E4(&v125, v123);

LABEL_86:
    if (*&v129[8] != __PAIR128__(v107, v111) && (sub_1DACBA174() & 1) == 0 || __PAIR128__(*&v129[24], *v130) != v104 && (sub_1DACBA174() & 1) == 0)
    {
LABEL_17:
      sub_1DAA9B1C8(&v125);
      v5 = a3;
      goto LABEL_18;
    }

    if (*&v130[16])
    {
      if (!v102 || *&v130[8] != __PAIR128__(v102, v98) && (sub_1DACBA174() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v102)
    {
      goto LABEL_17;
    }

    if (!v131)
    {
      if (!v100)
      {
        goto LABEL_103;
      }

      goto LABEL_17;
    }

    if (!v100)
    {
      goto LABEL_17;
    }

    if (*&v130[24] != v94 || v131 != v100)
    {
      v45 = sub_1DACBA174();
      sub_1DAA9B1C8(&v125);
      v5 = a3;
      if (v45)
      {
        goto LABEL_104;
      }

      goto LABEL_18;
    }

LABEL_103:
    sub_1DAA9B1C8(&v125);
    v5 = a3;
LABEL_104:
    v10 = v89;
    result = sub_1DAA9B1C8(&v132);
    v92[v24] |= v25;
    v46 = __OFADD__(v93++, 1);
    v4 = a4;
    if (!v46)
    {
      v9 = v96;
      continue;
    }

    break;
  }

LABEL_214:
  __break(1u);
  return result;
}

uint64_t sub_1DAB0517C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1DAA8D834(0, &qword_1ECBE6DE0, sub_1DAB073D0, &type metadata for Watchlist, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v38 = v4;
  v39 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 48 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v45 = *(v16 + 24);
    v20 = *(v16 + 32);
    v42 = *(v16 + 41);
    v43 = *(v16 + 40);
    sub_1DACBA284();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v44 = v20;
    sub_1DACB71E4();
    v41 = v18;
    sub_1DACB9404();
    MEMORY[0x1E1277D70](*(v19 + 16));
    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = v19 + 40;
      do
      {
        sub_1DACB71E4();
        sub_1DACB9404();

        v22 += 16;
        --v21;
      }

      while (v21);
    }

    sub_1DACB9404();
    v23 = v43 >> 5;
    if (v43 >> 5 <= 2)
    {
      v24 = 2;
      if (v23 != 1)
      {
        v24 = 3;
      }

      if (v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 1;
      }

      v9 = v39;
      v26 = v42;
      goto LABEL_31;
    }

    v26 = v42;
    if (v23 == 3)
    {
      v25 = 4;
      v9 = v39;
      goto LABEL_31;
    }

    v9 = v39;
    if (v23 == 4)
    {
      v25 = 5;
LABEL_31:
      MEMORY[0x1E1277D70](v25);
      v27 = v43 & 1;
      goto LABEL_32;
    }

    v27 = 0;
LABEL_32:
    MEMORY[0x1E1277D70](v27);
    MEMORY[0x1E1277D70](v26);
    result = sub_1DACBA2C4();
    v28 = -1 << *(v9 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v12 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_42;
        }
      }

      goto LABEL_47;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_42:
    *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = *(v9 + 48) + 48 * v31;
    *v36 = v17;
    *(v36 + 8) = v41;
    *(v36 + 16) = v19;
    *(v36 + 24) = v45;
    *(v36 + 32) = v44;
    *(v36 + 40) = v43;
    *(v36 + 41) = v26;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_48;
    }

    v4 = v38;
    v10 = v40;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

unint64_t sub_1DAB05504(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1DAA8D834(0, &qword_1ECBE6DD8, sub_1DAB07284, &type metadata for Stock, MEMORY[0x1E69E6A10]);
  result = sub_1DACB9C44();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 136 * (v13 | (v11 << 6));
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 64);
    v49 = *(v16 + 48);
    v50 = v19;
    v48 = v18;
    v21 = *(v16 + 96);
    v20 = *(v16 + 112);
    v22 = *(v16 + 80);
    v54 = *(v16 + 128);
    v52 = v21;
    v53 = v20;
    v51 = v22;
    v46 = *v16;
    v47 = v17;
    v23 = *(v16 + 112);
    v43 = *(v16 + 96);
    v44 = v23;
    v45 = *(v16 + 128);
    v24 = *(v16 + 48);
    v39 = *(v16 + 32);
    v40 = v24;
    v25 = *(v16 + 80);
    v41 = *(v16 + 64);
    v42 = v25;
    v26 = *(v16 + 16);
    v37 = *v16;
    v38 = v26;
    sub_1DACBA284();
    sub_1DAA806E4(&v46, &v35);
    sub_1DAB08BD4(v36);
    sub_1DACBA2C4();
    result = sub_1DACB9BE4();
    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v27 = *(v6 + 48) + 136 * result;
    *v27 = v46;
    v28 = v50;
    v30 = v47;
    v29 = v48;
    *(v27 + 48) = v49;
    *(v27 + 64) = v28;
    *(v27 + 16) = v30;
    *(v27 + 32) = v29;
    v31 = v51;
    v32 = v52;
    v33 = v53;
    *(v27 + 128) = v54;
    *(v27 + 96) = v32;
    *(v27 + 112) = v33;
    *(v27 + 80) = v31;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DAB05768(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DACB71E4();
  sub_1DAB07030(v3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  sub_1DAB0708C(0);
  result = swift_allocObject();
  v10 = result;
  *(result + 16) = sub_1DAB07084;
  *(result + 24) = v8;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = v10;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = 1;
    while (1)
    {
      (*(v10 + 16))(&v18);
      v27[6] = v24;
      v27[7] = v25;
      v27[8] = v26;
      v27[2] = v20;
      v27[3] = v21;
      v27[4] = v22;
      v27[5] = v23;
      v27[0] = v18;
      v27[1] = v19;
      if (sub_1DAB07190(v27) == 1)
      {
        break;
      }

      v12 = v25;
      a2[6] = v24;
      a2[7] = v12;
      a2[8] = v26;
      v13 = v21;
      a2[2] = v20;
      a2[3] = v13;
      v14 = v23;
      a2[4] = v22;
      a2[5] = v14;
      v15 = v19;
      *a2 = v18;
      a2[1] = v15;
      if (a3 == v11)
      {
        goto LABEL_11;
      }

      a2 += 9;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v17[6] = v24;
    v17[7] = v25;
    v17[8] = v26;
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[5] = v23;
    v17[0] = v18;
    v17[1] = v19;
    sub_1DAB071A8(v17);
    *a1 = v10;
    return v11 - 1;
  }

  __break(1u);
  return result;
}

void *sub_1DAB058F4(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    a3 = 0;
LABEL_24:
    *v4 = a4;
    v4[1] = v5;
    v4[2] = ~v6;
    v4[3] = v10;
    v4[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = a3;
    result = 0;
    v10 = 0;
    v11 = (63 - v6) >> 6;
    v12 = 1;
    while (v8)
    {
LABEL_14:
      v15 = a4;
      v16 = *(a4 + 48) + 48 * (__clz(__rbit64(v8)) | (v10 << 6));
      v18 = *v16;
      v17 = *(v16 + 8);
      v8 &= v8 - 1;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = *(v16 + 32);
      LOWORD(v16) = *(v16 + 40);
      *v9 = v18;
      *(v9 + 8) = v17;
      *(v9 + 16) = v20;
      *(v9 + 24) = v19;
      *(v9 + 32) = v21;
      *(v9 + 40) = v16;
      if (v12 == v25)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        a4 = v15;
        v6 = v24;
        a3 = v25;
        goto LABEL_24;
      }

      v9 += 48;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      result = v12;
      v22 = __OFADD__(v12++, 1);
      a4 = v15;
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v14 >= v11)
      {
        break;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
      if (v8)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v8 = 0;
    if (v11 <= v10 + 1)
    {
      v23 = v10 + 1;
    }

    else
    {
      v23 = v11;
    }

    v10 = v23 - 1;
    a3 = result;
    v6 = v24;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1DAB05AA0(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 136 * (v17 | (v12 << 6)));
      v29[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v29[3] = v18[3];
      v29[4] = v19;
      v29[1] = v21;
      v29[2] = v20;
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[5];
      v30 = *(v18 + 16);
      v29[6] = v23;
      v29[7] = v22;
      v29[5] = v24;
      memmove(v11, v18, 0x88uLL);
      if (v14 == v10)
      {
        sub_1DAA806E4(v29, v28);
        goto LABEL_23;
      }

      v11 += 136;
      sub_1DAA806E4(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1DAB05C50(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_1DACB71E4();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1DACB71E4();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DAB05DA8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1DACB7AB4();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1DAB0604C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DAB073D0();
  result = MEMORY[0x1E1277300](v2, &type metadata for Watchlist, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9 = *v5;
      v10[0] = v6;
      *(v10 + 10) = *(v5 + 26);
      sub_1DAA8DB84(&v9, v7);
      sub_1DAB88B38(v7, &v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DAB060FC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v150 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_92;
    }

    goto LABEL_131;
  }

  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 + 1 >= v7)
    {
      v28 = (v8 + 1);
    }

    else
    {
      v150 = v7;
      v10 = *a3;
      v11 = *a3 + 48 * (v8 + 1);
      v13 = *v11;
      v12 = *(v11 + 8);
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = *(v11 + 32);
      LOWORD(v11) = *(v11 + 40);
      v159 = v13;
      v160 = v12;
      v161 = v15;
      v162 = v14;
      v163 = v16;
      v164 = v11;
      v17 = (v10 + 48 * v8);
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v22 = v17[4];
      LOWORD(v17) = *(v17 + 20);
      v153 = v18;
      v154 = v19;
      v155 = v21;
      v156 = v20;
      v157 = v22;
      v158 = v17;
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v23 = sub_1DAB0213C(&v159, &v153, a5);
      if (v6)
      {
LABEL_101:

        swift_bridgeObjectRelease_n();
      }

      v24 = v23;

      v25 = v8;
      v26 = (v8 + 2);
      v143 = v25;
      v148 = 48 * v25;
      v27 = v10 + 48 * v25 + 137;
      while (1)
      {
        v28 = v150;
        if (v150 == v26)
        {
          break;
        }

        v29 = *(v27 - 33);
        v30 = *(v27 - 25);
        v31 = *(v27 - 17);
        v32 = *(v27 - 9);
        v33 = *(v27 - 1);
        v159 = *(v27 - 41);
        v160 = v29;
        v161 = v30;
        v162 = v31;
        v163 = v32;
        v164 = v33;
        v34 = *(v27 - 81);
        v35 = *(v27 - 73);
        v36 = *(v27 - 65);
        v37 = *(v27 - 57);
        v38 = *(v27 - 49);
        v153 = *(v27 - 89);
        v154 = v34;
        v155 = v35;
        v156 = v36;
        v157 = v37;
        v158 = v38;
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        LODWORD(v34) = sub_1DAB0213C(&v159, &v153, a5);

        ++v26;
        v27 += 48;
        if ((v24 ^ v34))
        {
          v28 = v26 - 1;
          break;
        }
      }

      v8 = v143;
      if (v24)
      {
        if (v28 < v143)
        {
          goto LABEL_125;
        }

        if (v143 < v28)
        {
          v39 = 48 * v28 - 24;
          v40 = v148 + 41;
          v41 = v28;
          v42 = v143;
          do
          {
            if (v42 != --v41)
            {
              v52 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v43 = v52 + v40;
              v44 = *(v52 + v40 - 41);
              v45 = v52 + v39;
              v46 = *(v43 - 17);
              v47 = *(v43 - 9);
              v48 = *(v43 - 1);
              v49 = *(v43 - 33);
              v50 = *(v45 + 8);
              v51 = *(v45 - 8);
              *(v43 - 41) = *(v45 - 24);
              *(v43 - 25) = v51;
              *(v43 - 9) = v50;
              *(v45 - 24) = v44;
              *(v45 - 16) = v49;
              *v45 = v46;
              *(v45 + 8) = v47;
              *(v45 + 16) = v48;
            }

            ++v42;
            v39 -= 48;
            v40 += 48;
          }

          while (v42 < v41);
        }
      }
    }

    v53 = a3[1];
    if (v28 >= v53)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v28, v8))
    {
      goto LABEL_121;
    }

    if (&v28[-v8] >= a4)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_127:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_128;
    }

    if (v8 + a4 >= v53)
    {
      v54 = a3[1];
    }

    else
    {
      v54 = v8 + a4;
    }

    if (v54 < v8)
    {
      goto LABEL_124;
    }

    if (v28 == v54)
    {
LABEL_29:
      v55 = v28;
      if (v28 < v8)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v147 = v54;
      v149 = *a3;
      v107 = *a3 + 48 * v28 - 48;
      v144 = v8;
      v108 = v8 - v28;
      do
      {
        v150 = v28;
        v140 = v108;
        v141 = v107;
        v109 = v107;
        do
        {
          v110 = (v109 + 48);
          v111 = *(v109 + 56);
          v112 = *(v109 + 64);
          v113 = *(v109 + 72);
          v114 = *(v109 + 80);
          v115 = *(v109 + 88);
          v159 = *(v109 + 48);
          v160 = v111;
          v161 = v112;
          v162 = v113;
          v163 = v114;
          v164 = v115;
          v116 = *(v109 + 8);
          v118 = *(v109 + 16);
          v117 = *(v109 + 24);
          v119 = *(v109 + 32);
          v120 = *(v109 + 40);
          v153 = *v109;
          v154 = v116;
          v155 = v118;
          v156 = v117;
          v157 = v119;
          v158 = v120;
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          sub_1DACB71E4();
          v121 = sub_1DAB0213C(&v159, &v153, a5);
          if (v6)
          {
            goto LABEL_101;
          }

          v122 = v121;

          if ((v122 & 1) == 0)
          {
            break;
          }

          if (!v149)
          {
            goto LABEL_127;
          }

          v123 = *(v109 + 48);
          v124 = *(v109 + 72);
          v125 = *(v109 + 80);
          v126 = *(v109 + 88);
          v127 = *(v109 + 56);
          v128 = *(v109 + 16);
          *v110 = *v109;
          *(v109 + 64) = v128;
          v129 = *(v109 + 32);
          *v109 = v123;
          *(v109 + 8) = v127;
          *(v109 + 24) = v124;
          *(v109 + 32) = v125;
          *(v109 + 40) = v126;
          v109 -= 48;
          v110[2] = v129;
        }

        while (!__CFADD__(v108++, 1));
        v28 = v150 + 1;
        v107 = v141 + 48;
        v108 = v140 - 1;
        v55 = v147;
      }

      while (v150 + 1 != v147);
      v8 = v144;
      if (v147 < v144)
      {
        goto LABEL_120;
      }
    }

    v146 = v55;
    v56 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAADB818(0, *(v9 + 2) + 1, 1, v9);
    }

    v58 = *(v9 + 2);
    v57 = *(v9 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v9 = sub_1DAADB818((v57 > 1), v58 + 1, 1, v9);
    }

    *(v9 + 2) = v59;
    v60 = &v9[16 * v58];
    *(v60 + 4) = v56;
    *(v60 + 5) = v146;
    v150 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v58)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v146;
    if (v146 >= v7)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v61 = v59 - 1;
    if (v59 >= 4)
    {
      v66 = &v9[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_107;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_108;
      }

      v73 = &v9[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_110;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_113;
      }

      if (v77 >= v69)
      {
        v95 = &v9[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_119;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v59 == 3)
    {
      v62 = *(v9 + 4);
      v63 = *(v9 + 5);
      v72 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      v65 = v72;
LABEL_49:
      if (v65)
      {
        goto LABEL_109;
      }

      v78 = &v9[16 * v59];
      v80 = *v78;
      v79 = *(v78 + 1);
      v81 = __OFSUB__(v79, v80);
      v82 = v79 - v80;
      v83 = v81;
      if (v81)
      {
        goto LABEL_112;
      }

      v84 = &v9[16 * v61 + 32];
      v86 = *v84;
      v85 = *(v84 + 1);
      v72 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v72)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v82, v87))
      {
        goto LABEL_116;
      }

      if (v82 + v87 >= v64)
      {
        if (v64 < v87)
        {
          v61 = v59 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v88 = &v9[16 * v59];
    v90 = *v88;
    v89 = *(v88 + 1);
    v72 = __OFSUB__(v89, v90);
    v82 = v89 - v90;
    v83 = v72;
LABEL_63:
    if (v83)
    {
      goto LABEL_111;
    }

    v91 = &v9[16 * v61];
    v93 = *(v91 + 4);
    v92 = *(v91 + 5);
    v72 = __OFSUB__(v92, v93);
    v94 = v92 - v93;
    if (v72)
    {
      goto LABEL_114;
    }

    if (v94 < v82)
    {
      goto LABEL_3;
    }

LABEL_70:
    v99 = v61 - 1;
    if (v61 - 1 >= v59)
    {
      break;
    }

    v100 = *a3;
    if (!*a3)
    {
      goto LABEL_126;
    }

    v101 = *&v9[16 * v99 + 32];
    v102 = *&v9[16 * v61 + 40];
    v103 = (v100 + 48 * v101);
    v104 = (v100 + 48 * *&v9[16 * v61 + 32]);
    v105 = (v100 + 48 * v102);
    sub_1DACB71E4();
    sub_1DAB03314(v103, v104, v105, v150, a5);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    if (v102 < v101)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAC0694C(v9);
    }

    if (v99 >= *(v9 + 2))
    {
      goto LABEL_106;
    }

    v106 = &v9[16 * v99];
    *(v106 + 4) = v101;
    *(v106 + 5) = v102;
    v165 = v9;
    sub_1DAC068C0(v61);
    v9 = v165;
    v59 = *(v165 + 2);
    if (v59 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  v9 = sub_1DAC0694C(v9);
LABEL_92:
  v165 = v9;
  v131 = *(v9 + 2);
  if (v131 < 2)
  {
LABEL_100:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v132 = *a3;
      if (!*a3)
      {
        break;
      }

      v133 = *&v9[16 * v131];
      v134 = *&v9[16 * v131 + 24];
      v135 = (v132 + 48 * v133);
      v136 = (v132 + 48 * *&v9[16 * v131 + 16]);
      v137 = (v132 + 48 * v134);
      sub_1DACB71E4();
      sub_1DAB03314(v135, v136, v137, v150, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v134 < v133)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DAC0694C(v9);
      }

      if (v131 - 2 >= *(v9 + 2))
      {
        goto LABEL_118;
      }

      v138 = &v9[16 * v131];
      *v138 = v133;
      *(v138 + 1) = v134;
      v165 = v9;
      sub_1DAC068C0(v131 - 1);
      v9 = v165;
      v131 = *(v165 + 2);
      if (v131 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_128:

    __break(1u);
LABEL_129:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_130:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_131:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}